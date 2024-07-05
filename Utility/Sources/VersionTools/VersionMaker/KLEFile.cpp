//******************************************************************************
/*! \file       KLEFile.cpp
*   \brief      ��װ���ļ���صĲ���
*
*   \author		LaiLai
*   \version	1.0
*   \date		01-4-18 17:06:18
*   \sa			KLEFilePathMgr, KLEFileEnumerate
*******************************************************************************/


#include "stdafx.h"
#include "KLEFile.h"

KLEFile::KLEFile()
{
	m_stream = NULL;
} 

KLEFile::~KLEFile()
{
	Close(); 
}

/*!*****************************************************************************
// Function		: KLEFile::KLEFile
// Purpose		: 
// Return		: 
// Argumant		: const char* szName	�ļ���,���(����ڵ�ǰ·��)����·������,
// Argumant		: const char* szMode	�ļ���ģʽ
// Comments		:
// Author		: LaiLai
*****************************************************************************/
KLEFile::KLEFile(const char* szName, const char* szMode)
{ 
	Open(szName, szMode);	
}


/*!*****************************************************************************
// Function		: KLEFile::Close
// Purpose		: �ر��ļ���
// Return		: void 
// Comments		:
// Author		: LaiLai
*****************************************************************************/
void KLEFile::Close() 
{ 
	if(m_stream) 
	{
		fclose(m_stream); 
		m_stream = NULL; 
	}	
}

//******************************************************************************
/*! \fn     bool KLEFile::Open(const char* szName, const char* szMode)
*   \brief  ��һ���ļ�
*
*           
*   \param  const char* szName �ļ���,���(����ڵ�ǰ·��)����·������,
*   \param  const char* szMode �ļ���ģʽ
*   \return bool               true �ɹ�, false ʧ��
*   \sa     Close()
*******************************************************************************/
bool KLEFile::Open(const char* szName, const char* szMode)
{
	Close();
	m_stream = fopen(szName, szMode);
	if( NULL == m_stream)
		return false;
	else
		return true;
}

/*!*****************************************************************************
// Function		: KLEFile::Read
// Purpose		: ���ļ�����ǰλ���ж�ȡһ�����ȵ��ַ�
// Return		: bool			true �ɹ�, false ʧ��
// Argumant		: void*			buffer
// Argumant		: unsigned int	count	whole size in bytes
// Comments		:
// Author		: LaiLai
*****************************************************************************/
bool KLEFile::Read(void* buffer, unsigned int count)
{
	if (NULL == m_stream)
		return false;
	if (NULL == buffer)
		return false;

	unsigned int readed = fread(buffer, 1, count, m_stream);
	if( readed != count)
		return false;
	else
		return true;
}

int KLEFile::ReadLine(void *buffer, unsigned int count)
{
	if (NULL == m_stream)
		return 0;
	if (NULL == buffer)
		return 0;
	
	if( NULL == fgets( (char*)buffer, count, m_stream ))
	{
		if ( ferror(m_stream))
			return KLEFS_ERROR;
		else
			return KLEFS_EOF;
	}
	else
	{
		return KLEFS_SUCCESS;
	}
}

/*!*****************************************************************************
// Function		: KLEFile::Write
// Purpose		: ���ļ�����ǰλ��д��һ�����ȵ��ַ�
// Return		: bool			true �ɹ�, false ʧ��
// Argumant		: const void*	buffer
// Argumant		: unsigned int	count	whole size in bytes to be written
// Comments		:
// Author		: LaiLai
*****************************************************************************/
bool KLEFile::Write(const void* buffer, unsigned int count)
{
	if( NULL == m_stream )
		return false;
	if (NULL == buffer)
		return false;

	unsigned int writed = fwrite(buffer, 1, count, m_stream);
	if( writed != count )
		return false;
	else
		return true;
}

//******************************************************************************
/*! \fn     bool KLFile::WriteString(const char* szBuf)
*   \brief  ���ļ���д���ַ���
*   \param  const char* szBuf ����������
*   \return bool ����ֵ������
*******************************************************************************/
bool KLEFile::WriteString(const char* szBuf)
{
	if( NULL == m_stream )
		return false;
	if (NULL == szBuf)
		return false;

	unsigned int nRet = fputs(szBuf, m_stream);
	if( nRet == EOF )
		return false;
	else
		return true;	
}

/*!*****************************************************************************
// Function		: KLEFile::GetCurPos
// Purpose		: �õ��ļ��ĵ�ǰ�Ĳ���λ��
// Return		: long	������ļ�ͷ��λ��
// Comments		:
// Author		: LaiLai
*****************************************************************************/
long KLEFile::GetCurPos()
{
	if( NULL == m_stream )
		return 0;

	return ftell(m_stream);
}

/*!*****************************************************************************
// Function		: KLEFile::Seek
// Purpose		: �����ļ�����λ��
// Return		: bool			true �ɹ�, false ʧ��
// Argumant		: long offset	ƫ��λ��
// Argumant		: int origin	��Ե����
//				:				SEEK_CUR Current position of file pointer
//				:				SEEK_END End of file
//				:				SEEK_SET Beginning of file
// Comments		:
// Author		: LaiLai
*****************************************************************************/
bool KLEFile::Seek(long offset, int origin)
{
	if( NULL == m_stream )
		return false;

	int res = fseek(m_stream, offset, origin);
	if(0 == res)
		return true;
	else
		return false;
}

long KLEFile::GetEndPos()
{
	if (!Seek(0, SEEK_END))
		return GetCurPos();
	else
		return 0;
}