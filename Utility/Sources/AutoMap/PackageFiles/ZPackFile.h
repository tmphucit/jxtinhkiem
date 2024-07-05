#ifndef ZPACKFILE_H
#define ZPACKFILE_H

#include "KMutex.h"
#include "KWin32.h"
#include <windows.h>

class ZMapFile {
  HANDLE m_hFile;
  HANDLE m_hMap;

public:
  char *m_Ptr;          // ����ֱ�ӷ��ʵĻ�����ָ��
  unsigned long m_Size; // �ļ��Ĵ�С
  unsigned long old_offset;
  ZMapFile(const char *file_name);
  char *map(unsigned long offset = 0, unsigned long size = 0);
  void unmap();
  ~ZMapFile();
};

class ZCache {
  char *buffer;   // ʵ�ʵĻ�����
  char *free_ptr; // ����ָ��
  unsigned long cache_size;
  //	char *temp_buffer;
  //	char *temp_ptr;
  //	unsigned long temp_size;
  ////��ʱ�������Ĵ�С
public:
  ZCache(unsigned long size);
  virtual ~ZCache();
  char *getNode(unsigned char key_size,
                unsigned long size); // ����ָ����С�Ľڵ�
  char *searchNode(const char *key, unsigned char key_size); // ����ָ���Ľڵ�
  //	char *getMemory(unsigned long size);
  ////��ȡһ����ʱʹ�õĻ����� 	void freeMemory();
  ////�ͷ����еĻ�����
};
#define MAX_BLOCK_SIZE 256 * 65536

//---------------------------------------------------------------------------------------------------------------------------------
typedef struct { // ������Ϣ
  unsigned long id;
  unsigned long offset;
  long size;
  long compress_size;
} index_info;

#define TYPE_NONE 0     // û��ѹ��
#define TYPE_UCL 1      // UCLѹ��
#define TYPE_BZIP2 2    // bzip2ѹ��
#define TYPE_FRAME 0x10 // ʹ���˶���֡ѹ��

unsigned long hash(const char *file_name); // ����ָ���ַ�����hashֵ

// һ��Pack�ļ���������Ľṹ:
// �������ĸ��ֽڵ��ļ���ͷ��־:�ַ���'PACK',Ȼ���������ĿȻ����������ʼ��ƫ����\���ݿ�ʼ��ƫ����,Ȼ����У���,Ȼ���Ǳ������ֽ�:
typedef struct {
  unsigned char signature[4]; //"PACK"
  unsigned long count;        // ���ݵ���Ŀ��
  unsigned long index_offset; // ������ƫ����
  unsigned long data_offset;  // ���ݵ�ƫ����
  unsigned long crc32;
  unsigned char reserved[12];
} z_pack_header;

class ZPackFile {
protected:
  ZCache *cache;
  ZMapFile *data_map;
  KMutex m_Mutex;
  //	ZMapFile	*index_map;
  index_info *index_list;
  z_pack_header header;
  bool _readData(
      int node_index,
      char *
          node); // ��ָ��node_index������ȫ������ָ���ڴ��У������Ҫ�Ļ���ɽ�ѹ��
public:
  bool opened;
  ZPackFile(const char *file_name, ZCache *the_cache); // ���ļ�
  virtual ~ZPackFile();
  int getNodeIndex(unsigned long id);
  char *getData(unsigned long index);
  unsigned long getSize(unsigned long index);
  char *getData(const char *name); // ��ȡָ���ڵ������
};

#endif