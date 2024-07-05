
#include"stdafx.h"
#include "KWin32.h"
#include "ZPackFile.h"
#include "ucl/ucl.h"

ZMapFile::ZMapFile(const char *file_name) {
	m_Ptr = 0;
	old_offset = 0;
	m_hMap = 0;
	m_hFile = CreateFile(file_name, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
	if(m_hFile != INVALID_HANDLE_VALUE) {
		m_Size = GetFileSize(m_hFile, NULL);
		if(m_Size) {
			m_hMap = CreateFileMapping(m_hFile, NULL, PAGE_READONLY, 0, m_Size, NULL);
			if(m_hMap) return;
		}
	}
	CloseHandle(m_hFile);
}

char *ZMapFile::map(unsigned long offset, unsigned long size) {
	unsigned long align = offset % 0x10000;				//64K�߽�
	if(m_Ptr) {
		if(offset == old_offset) return m_Ptr + align;
		UnmapViewOfFile(m_Ptr);
	}
	if(size == 0) size = m_Size;
	else if(offset + size > m_Size) size = m_Size - offset;
	size += align;
	m_Ptr = (char *)MapViewOfFile(m_hMap, FILE_MAP_READ, 0, offset - align, size);		
	if(m_Ptr) {
		old_offset = offset;
		return m_Ptr + align;					//�ɹ��ˣ�
	}
	return NULL;
}

void ZMapFile::unmap() {
	if(!m_Ptr) return;
	UnmapViewOfFile(m_Ptr);
	m_Ptr = 0;
}

ZMapFile::~ZMapFile() {
	if(m_Ptr) UnmapViewOfFile(m_Ptr);
	if(m_hMap) CloseHandle(m_hMap);
	if(m_hFile != INVALID_HANDLE_VALUE) CloseHandle(m_hFile);
}

ZCache::ZCache(unsigned long size) {
	buffer = new char[size];
	cache_size = size;
	free_ptr = buffer;
//	temp_size = size / 4;											//�ķ�֮һ����ʱ�ڴ滺����
//	temp_buffer = new char[temp_size];
//	temp_ptr = temp_buffer;
}

ZCache::~ZCache() {
	if(buffer) delete[] buffer;
}

char *ZCache::getNode(unsigned char key_size, unsigned long size) {			//�õ�һ�����л��������ݿ�
	size += sizeof(unsigned long) + key_size;						//���Ͽ�ͷ�ĳ��Ⱥ������ĳ���
	unsigned long align = size % sizeof(unsigned long);
	if(align) size += sizeof(unsigned long) - align;
	if(size >= MAX_BLOCK_SIZE || size >= cache_size) return 0;
	char *result;
	if(cache_size - (free_ptr - buffer) < size) {
		free_ptr = buffer;	//������˾���ջ�����
	}
	result = free_ptr + sizeof(unsigned long);
	*(unsigned long *)free_ptr = size | (key_size << 24);
	free_ptr += size;
	return result;
}

char *ZCache::searchNode(const char *key, unsigned char key_size) {
	char *search_ptr = buffer;
	while(search_ptr < free_ptr) {
		if(key_size == *(search_ptr + 3)) {							//��Сһ��
			if(!memcmp(key, search_ptr + sizeof(unsigned long), key_size)) {
				return search_ptr + sizeof(unsigned long) + key_size;
			}
		}
		search_ptr += *(unsigned long *)search_ptr & 0x00FFFFFF;
	}
	return 0;
}

/*char *ZCache::getMemory(unsigned long size) {
	if(temp_ptr - temp_buffer + size > temp_size) freeMemory();
	char *result = temp_ptr;
	temp_ptr += size;
	return result;
}

void ZCache::freeMemory() {
	temp_ptr = temp_buffer;
}*/

int ZPackFile::getNodeIndex(unsigned long id) {								//���ַ��ҵ�ָ��������
	int nBegin, nEnd, nMid;
	nBegin = 0;
	nEnd = header.count;
	while (nBegin <= nEnd) {
		nMid = (nBegin + nEnd) / 2;
		if (id == index_list[nMid].id) break;
		if (id < index_list[nMid].id) nEnd = nMid - 1;
		else nBegin = nMid + 1;
	}
	if(id != index_list[nMid].id) return -1;								//�����ļ�����Ҳû��
	return nMid;
}

unsigned long ZPackFile::getSize(unsigned long index) {
	return index_list[index].size;
}

bool ZPackFile::_readData(int node_index, char *node) {
	m_Mutex.Lock();
	char *source = data_map->map(index_list[node_index].offset, MAX_BLOCK_SIZE);
	if(!source) return false;
	unsigned int dest_length;
	unsigned long compress_type = index_list[node_index].compress_size >> 24;
	int r;
	if((compress_type == TYPE_UCL) | (compress_type == TYPE_BZIP2)) {									//����ѹ��
		if(compress_type == TYPE_UCL) {
			Sleep(1);
			r = ucl_nrv2b_decompress_8((BYTE *)source, index_list[node_index].compress_size & 0x00FFFFFF, (BYTE *)node, &dest_length, NULL);
		}
		else if(compress_type == TYPE_BZIP2) {
//			dest_length = index_list[node_index].size;
//			r = BZ2_bzBuffToBuffDecompress(node + sizeof(id), &dest_length, source, index_list[node_index].compress_size & 0x00FFFFFF, 0, 0);
		}
	}
	m_Mutex.Unlock();
	if(!r) return true;
	return false;
}

unsigned long hash(const char *file_name) {
	unsigned long id = 0;
	const char *ptr = file_name;
	int index = 0;
	while(*ptr) {
		if(*ptr >= 'A' && *ptr <= 'Z') id = (id + (++index) * (*ptr + 'a' - 'A')) % 0x8000000b * 0xffffffef;
		else id = (id + (++index) * (*ptr)) % 0x8000000b * 0xffffffef;
		ptr++;
	}
	return (id ^ 0x12345678);
}

ZPackFile::ZPackFile(const char *file_name, ZCache *the_cache) {
	data_map = 0;
	index_list = 0;
	opened = false;
	cache = the_cache;
	data_map = new ZMapFile(file_name);
	char *header_ptr = data_map->map(0, sizeof(header));
	if(!header_ptr) return;
	memcpy(&header, header_ptr, sizeof(header));
	index_list = new index_info[header.count];
	char *index_ptr = data_map->map(header.index_offset, header.count * sizeof(index_info));
	memcpy(&index_list[0], index_ptr, header.count * sizeof(index_info));
//	index_map = new ZMapFile(file_name);
//	index_list = (index_info *)index_map->map(header.index_offset, header.count * sizeof(index_info));
//	if(!index_list) return;
	opened = true;
}

ZPackFile::~ZPackFile() {
//	if(index_map) delete index_map;
	if(index_list) delete[] index_list;
	if(data_map) delete data_map;
}

char *ZPackFile::getData(unsigned long id) {
	char * node = cache->searchNode((const char *)&id, sizeof(id));
	if(node) return node;
//����������ļ��ж�ȡ
	int node_index = getNodeIndex(id);
	if(node_index == -1) return 0;
	node = cache->getNode(sizeof(unsigned long), index_list[node_index].size);
	*(unsigned long *)node = id;
	if(_readData(node_index, node + sizeof(unsigned long))) return node + sizeof(unsigned long);
	else return 0;
}

char *ZPackFile::getData(const char *name) {											//��ȡָ�����ļ�����
	unsigned long id = hash(name);
	return getData(id);
}

extern "C" {
	void bz_internal_error(int errcode) {
	}
}
