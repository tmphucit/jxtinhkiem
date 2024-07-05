/*******************************************************************************
// FileName			:	KLEFileEnumerate.cpp
// FileAuthor		:	LaiLai
// FileCreateDate	:	01-3-13 11:25:57
// FileDescription	:	:
����ָ���ĸ�Ŀ¼,���ļ���չ����,������ص�ѡ��
//					:   (�����Ƿ�ݹ������Ŀ¼�� Exclude
һЩĿ¼)
//					:
�������������ҵ����ļ�,ִ��һ���ص�����,���һ������.
//					:
�����ļ���ʽ�ı��,һ����������е��滻.

//					:
��ý��������еĳ�Ա�����ŵ�һ���ṹ��(FileEnumOption)
//					:	m_szRootFolderû���ô����ȥ��
//					:	�����ļ�����û�����(Filter)

//	���õĲ���		:	��д�ض��Ļص�����
//					:	���� File Enumerate Option
//					:	���� EnumFileInFolder
// Revision Count	:
*******************************************************************************/

#include "KLEFileEnumerate.h"
#include "KLEFilePathMgr.h"
#include "StdAfx.h"
#include <string>

using namespace std;

KLEFileEnumerate::KLEFileEnumerate()
    : m_blIncludeSubFolder(true), m_szIncludeExt(NULL), m_szExcludeDir(NULL),
      m_szRootFolder(NULL), m_pFileEnumCallback(NULL), m_pParam(NULL) {}

KLEFileEnumerate::KLEFileEnumerate(bool blIncludeSubFolder,
                                   const char *szIncludeExt,
                                   const char *szExcludeDir, const char *szRoot)
    : m_blIncludeSubFolder(blIncludeSubFolder), m_szIncludeExt(NULL),
      m_szExcludeDir(NULL), m_szRootFolder(NULL), m_pFileEnumCallback(NULL),
      m_pParam(NULL)

{
  int nLen;

  if (szRoot) {
    nLen = strlen(szRoot);
    m_szRootFolder = new char[nLen + 1];
    strcpy(m_szRootFolder, szRoot);
  }

  if (szIncludeExt) {
    nLen = strlen(szIncludeExt);
    m_szIncludeExt = new char[nLen + 1];
    strcpy(m_szIncludeExt, szIncludeExt);
  }

  if (szExcludeDir) {
    nLen = strlen(szExcludeDir);
    m_szExcludeDir = new char[nLen + 1];
    strcpy(m_szExcludeDir, szExcludeDir);
  }
}

KLEFileEnumerate::~KLEFileEnumerate() {
  SAFE_DELGRP(m_szRootFolder);
  SAFE_DELGRP(m_szIncludeExt);
  SAFE_DELGRP(m_szExcludeDir);
}

/*!*****************************************************************************
// Function		: KLEFileEnumerate::SetRootFolder
// Purpose		: ����Ҫ��Ѱ����ʼ·��
// Return		: void
// Argumant		: const char* szRoot
// Comments		:
// Author		: LaiLai
*****************************************************************************/
void KLEFileEnumerate::SetRootFolder(const char *szRoot) {
  int nLen;

  if (szRoot) {
    nLen = strlen(szRoot);
    m_szRootFolder = new char[nLen + 1];
    strcpy(m_szRootFolder, szRoot);
  }
}

/*!*****************************************************************************
// Function		: KLEFileEnumerate::EnableSubFolder
// Purpose		: ָ���Ƿ���Ѱ��Ŀ¼
// Return		: void
// Argumant		: bool blIncludeSubFolder
// Comments		:
// Author		: LaiLai
*****************************************************************************/
void KLEFileEnumerate::EnableSubFolder(bool blIncludeSubFolder) {
  m_blIncludeSubFolder = blIncludeSubFolder;
}

/*!*****************************************************************************
// Function		: KLEFileEnumerate::SetIncludeFileExt
// Purpose		:
������Ҫö�ٵĵ��ļ���չ��(������'.'),�����չ��֮���ö��Ÿ���
// Return		: void
// Argumant		: const char* szIncludeExt
// Comments		:
// Author		: LaiLai
*****************************************************************************/
void KLEFileEnumerate::SetIncludeFileExt(const char *szIncludeExt) {
  int nLen;

  if (szIncludeExt) {
    nLen = strlen(szIncludeExt);
    m_szIncludeExt = new char[nLen + 1];
    strcpy(m_szIncludeExt, szIncludeExt);
  }
}

/*!*****************************************************************************
// Function		: KLEFileEnumerate::SetExcludeDir
// Purpose		: ���ò���Ҫ��Ѱ��·��(����·��),���·��֮���ö��Ÿ���
// Return		: void
// Argumant		: const char* szExcludeDir
// Comments		:
// Author		: LaiLai
*****************************************************************************/
void KLEFileEnumerate::SetExcludeDir(const char *szExcludeDir) {
  int nLen;

  if (szExcludeDir) {
    nLen = strlen(szExcludeDir);
    m_szExcludeDir = new char[nLen + 1];
    strcpy(m_szExcludeDir, szExcludeDir);
  }
}

/*!*****************************************************************************
// Function		: KLEFileEnumerate::SetCallBack
// Purpose		: ���ûص�����
// Return		: void
// Argumant		: LPFILEENUMCALLBACK pFileEnumCallBack
// Comments		:
// Author		: LaiLai
*****************************************************************************/
void KLEFileEnumerate::SetCallBack(LPFILEENUMCALLBACK pFileEnumCallBack) {
  if (NULL == pFileEnumCallBack)
    return;
  m_pFileEnumCallback = pFileEnumCallBack;
}

void KLEFileEnumerate::SetParam(void *pParam) { m_pParam = pParam; }

/*!*****************************************************************************
// Function		: KLEFileEnumerate::EnumFileInFolder
// Purpose		:
����ѡ��Enumerate���ú��ʵ��ļ�,���ûص���������ض��Ĺ���
// Return		: void
// Argumant		: const char* szRoot
// Comments		: ���ڶ��Ŀ¼��һ���ݹ���õĹ���
// Author		: LaiLai
*****************************************************************************/
void KLEFileEnumerate::EnumFileInFolder(const char *szRoot) {
  HANDLE hFindFile;
  WIN32_FIND_DATA Win32FindData;
  char szPathName[KLEFMGR_MAXPATH];

  if (NULL == szRoot)
    return;

  KLEFilePathMgr::ComposePath(szPathName, szRoot, "\\*");
  hFindFile = FindFirstFile(szPathName, &Win32FindData);
  if (INVALID_HANDLE_VALUE == hFindFile)
    return;

  AnalysisFile(szRoot, Win32FindData);

  while (FindNextFile(hFindFile, &Win32FindData)) {
    AnalysisFile(szRoot, Win32FindData);
  }

  return;
}

/*!*****************************************************************************
// Function		: KLEFileEnumerate::AnalysisFile
// Purpose		:
// Return		: void
// Argumant		: const char*				szRoot
// Argumant		: const WIN32_FIND_DATA&	Win32FindData
// Comments		:
// Author		: LaiLai
*****************************************************************************/
void KLEFileEnumerate::AnalysisFile(const char *szRoot,
                                    const WIN32_FIND_DATA &Win32FindData) {
  char szPathName[KLEFMGR_MAXPATH];

  KLEFilePathMgr::ComposePath(szPathName, szRoot, Win32FindData.cFileName);
  if (FILE_ATTRIBUTE_DIRECTORY & Win32FindData.dwFileAttributes) {
    if ((0 != strcmp(Win32FindData.cFileName, ".")) &&
        (0 != strcmp(Win32FindData.cFileName, "..")))
      EnumFileInFolder(szPathName);
  } else {
    (*m_pFileEnumCallback)(szPathName, m_pParam);
  }
}
