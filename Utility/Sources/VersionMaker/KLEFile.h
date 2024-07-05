//******************************************************************************
/*! \file       KLEFile.h
 *   \brief      ��װ���ļ���صĲ���
 *
 *   \author		LaiLai
 *   \version	1.0
 *   \date		01-4-18 17:06:18
 *   \sa			KLEFilePathMgr, KLEFileEnumerate
 *******************************************************************************/

#ifndef _KLE_FILE_H_
#define _KLE_FILE_H_

//! Opens for both reading and writing. (The file must exist.) Binary
#define KLEFSB_OPENMODE_EXIST "r+b"

//! Opens an empty file for both reading and writing. If the given file
//! exists, its contents are destroyed. Binary
#define KLEFSB_OPENMODE_CREATE "w+b"

//! Opens for reading and appending; the appending operation includes the
//! removal of the EOF marker before new data is written to the file and
//! the EOF marker is restored after writing is complete; creates the file
//! first if it doesn��t exist. Binary
#define KLEFSB_OPENMODE_APPEND "a+b"

//! Opens for both reading and writing. (The file must exist.) Text
#define KLEFST_OPENMODE_EXIST "r+t"

//! Opens an empty file for both reading and writing. If the given file
//! exists, its contents are destroyed. Text
#define KLEFST_OPENMODE_CREATE "w+t"

//! Opens for reading and appending; the appending operation includes the
//! removal of the EOF marker before new data is written to the file and
//! the EOF marker is restored after writing is complete; creates the file
//! first if it doesn��t exist. Text
#define KLEFST_OPENMODE_APPEND "a+t"

#define KLEFS_ERROR -1
#define KLEFS_EOF 0
#define KLEFS_SUCCESS 1

//************************************************************************************************************************
/*! \class    KLEFile
 *   \brief    ��װ���ļ���صĲ���
 *
 *   \author   LaiLai
 *   \version  1.0
 *   \sa       KLEFilePathMgr, KLEFileEnumerate
 *************************************************************************************************************************/
class KLEFile {
public:
  KLEFile();
  KLEFile(const char *szName, const char *szMode);
  virtual ~KLEFile();

  //! ����ļ���ǰ�Ƿ��
  bool IsOpened() { return m_stream ? true : false; }
  //! ���ļ�
  bool Open(const char *szName, const char *szMode);
  //! ���ļ�
  bool Read(void *buffer, unsigned int count);
  //! ��һ��
  int ReadLine(void *buffer, unsigned int count);
  //! д�ļ�
  bool Write(const void *buffer, unsigned int count);
  //! д�ַ������ļ�
  bool WriteString(const char *szBuf);
  //! �õ���ǰ��λ��
  long GetCurPos();
  //! �����ļ�����λ��,����ȱʡֵ��Ҫ���׸ı䣬���Ҫ�ı䣬һ��Ҫ֪ͨ����������Ա
  bool Seek(long offset, int origin = SEEK_SET);
  //! �ر��ļ�
  void Close();
  //! �õ�β����λ��
  long GetEndPos();

protected:
  //! �ļ���ָ��
  FILE *m_stream;
};

#endif
