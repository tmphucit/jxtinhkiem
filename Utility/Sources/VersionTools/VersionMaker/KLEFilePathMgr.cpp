/*******************************************************************************
// FileName			:	KLEFilePathMgr.cpp
// FileAuthor		:	LaiLai
// FileCreateDate	:	00-11-14 16:35:04
// FileDescription	:	����ļ�·��ϵͳ����ز���,·��
//					:	��Ҫ�������󲻶�����
// Revision Count	:
*******************************************************************************/

#include "KLEFilePathMgr.h"
#include "stdafx.h"

/*****************************************************************************
// FUNCTION		: KLEFilePathMgr::KLEFilePathMgr
// PURPOSE		: ���캯��
// RETURN		:
// COMMENTS		: ��ʼ����ǰ·��,Ӧ�ô�ע����ж�
// AUTHOR		: LaiLai
*****************************************************************************/
KLEFilePathMgr::KLEFilePathMgr() {
  memset(m_szRootPath, 0, sizeof(m_szRootPath));
  memset(m_szCurPath, 0, sizeof(m_szCurPath));

  GetCurrentDirectory(KLEFMGR_MAXPATH, m_szRootPath);
  strcpy(m_szCurPath, m_szRootPath);
}

KLEFilePathMgr::~KLEFilePathMgr() {}

/*!*****************************************************************************
// Function		: KLEFilePathMgr::SetCurPath
// Purpose		: ���õ�ǰ�ļ�·��
// Return		: void
// Argumant		: char* szPathName[in]	�����������ڸ�Ŀ¼�����·��
// Comments		: ���������� NULL ָ��,��ԭʼ�ĸ�Ŀ¼��Ϊ��ǰĿ¼
//				: ȷ�����һ���ַ��� '\\'
// Author		: LaiLai
*****************************************************************************/
void KLEFilePathMgr::SetCurPath(const char *szPathName) {
  if (NULL == szPathName) {
    strcpy(m_szCurPath, m_szRootPath);
  } else {
    // ���������·��ͷ���Ƿ���'\\',����ͬ�Ĵ���
    if ('\\' == szPathName[0])
      sprintf(m_szCurPath, "%s%s", m_szRootPath, szPathName);
    else
      sprintf(m_szCurPath, "%s%s%s", m_szRootPath, "\\", szPathName);
  }
  // ȷ��·����β������'\\'
  int nlen = strlen(m_szCurPath) - 1;
  if (m_szCurPath[nlen] != '\\')
    lstrcat(m_szCurPath, "\\");

  // ����Ϊ��ǰ����Ŀ¼
  SetCurrentDirectory(m_szCurPath);
}

/*!*****************************************************************************
// Function		: KLEFilePathMgr::AddFileNameToPath
// Purpose		:
��һ���ļ���ȥ����׺��,�ӵ�һ��·���ĺ��棬�γ�һ���µ�·��
// Return		: void
// Argumant		: char* szPathName[in][out] ԭʼ·��/����·��
// Argumant		: const char* szFileName[in]	����չ�����ļ���
// Comments		:
// Author		: LaiLai
*****************************************************************************/
void KLEFilePathMgr::AddFileNameToPath(char *szPathName,
                                       const char *szFileName) {
  char szFileNoExt[KLEFMGR_MAXFILE];
  char *szExt = NULL;

  if (NULL == szFileName)
    return;
  if (NULL == szPathName)
    return;

  strcpy(szFileNoExt, szFileName);
  szExt = strrchr(szFileNoExt, '.');
  if (NULL == szExt)
    return;
  szExt[0] = 0;

  int nlen = strlen(szPathName);
  if ('\\' != szPathName[nlen - 1])
    strcat(szPathName, "\\");

  strcat(szPathName, szFileNoExt);
  strcat(szPathName, "\\");
}

/*!*****************************************************************************
// Function		: KLEFilePathMgr::GetCDDriver
// Purpose		: �õ�CDROM��Ӧ��Driver
// Return		: void
// Argument		: char* szDriver[in][out]	����CDDOM���������̷�
// Comments		: ϵͳ�߱����CRROMʱ�����ص�һ���ҵ���
// Author		: LaiLai
*****************************************************************************/
void KLEFilePathMgr::GetCDDriver(char *szDriver) {
  lstrcpy(szDriver, "C:");
  for (int i = 0; i < 24; szDriver[0]++, i++) {
    if (GetDriveType(szDriver) == DRIVE_CDROM)
      return;
  }
}

/*!*****************************************************************************
// Function		: IsFileExist
// Purpose		: ���ָ�����ļ��Ƿ����
// Return		: bool
// Argumant		: char szPathName	�ļ���ȫ·����
// Comments		: ��ҪתΪ�� C RunTime ʵ��
// Author		: LaiLai
*****************************************************************************/
bool KLEFilePathMgr::IsFileExist(const char *szPathName) {
  WIN32_FIND_DATA FindData;
  HANDLE hFindHandle;

  hFindHandle = FindFirstFile(szPathName, &FindData);
  if (hFindHandle == INVALID_HANDLE_VALUE)
    return false;
  FindClose(hFindHandle);
  return true;
}

//******************************************************************************
/*! \fn     bool KLEFilePathMgr::IsPathExist()
 *   \brief  ���·���Ƿ����
 *   \return bool ����ֵ������
 *******************************************************************************/
bool KLEFilePathMgr::IsPathExist(const char *szPathName) {
  WIN32_FIND_DATA FindData;
  HANDLE hFindHandle;
  char szBuf[KLELNAMELEN];

  KLEFilePathMgr::ComposePath(szBuf, szPathName, "\\*");
  hFindHandle = FindFirstFile(szBuf, &FindData);
  if (hFindHandle == INVALID_HANDLE_VALUE)
    return false;
  FindClose(hFindHandle);
  return true;
}

/*!*****************************************************************************
// Function		: KLEFilePathMgr::ComposePath
// Purpose		: ������·���ϳɽ�����ڵ�һ��·����
// Return		: void
// Argumant		: char*			szFirstPath	[in][out]
// Argumant		: const char*	szSecondPath[in]
// Comments		: szFirstPath��β��,szSecondPath��ͷ���Ƿ����'\\'������
//				:
���ݵ�һ��·����β���͵�һ��·����ʼ���Ƿ���"\\"����ͬ�Ĵ���
// Author		: LaiLai
*****************************************************************************/
void KLEFilePathMgr::ComposePath(char *szFirstPath, const char *szSecondPath) {
  if (NULL == szFirstPath)
    return;
  if (NULL == szSecondPath)
    return;

  int nLen = strlen(szFirstPath);
  if ('\\' == szFirstPath[nLen - 1]) {
    if ('\\' == szSecondPath[0]) {
      szFirstPath[nLen - 1] = 0;
    }
    strcat(szFirstPath, szSecondPath);
  } else if ('\\' == szSecondPath[0]) {
    strcat(szFirstPath, szSecondPath);
  } else {
    strcat(szFirstPath, "\\");
    strcat(szFirstPath, szSecondPath);
  }

  return;
}

/*!*****************************************************************************
// Function		: KLEFilePathMgr::ComposePath
// Purpose		: ������·���ϳɽ��������һ����ͬ��Buf��
// Return		: void
// Argumant		: char*			szResult	[out]
���·��,�ⲿ����
// Argumant		: const char*	szFirstPath	[in]		��һ·��
// Argumant		: const char*	szSecondPath[in]		�ڶ�·��
// Comments		: szFirstPath��β��,szSecondPath��ͷ���Ƿ����'\\'������
//				:
���ݵ�һ��·����β���͵�һ��·����ʼ���Ƿ���"\\"����ͬ�Ĵ���
// Author		: LaiLai
*****************************************************************************/
void KLEFilePathMgr::ComposePath(char *szResult, const char *szFirstPath,
                                 const char *szSecondPath) {
  if (NULL == szResult)
    return;
  if (NULL == szFirstPath)
    return;
  if (NULL == szSecondPath)
    return;

  int nLen = strlen(szFirstPath);
  if ('\\' == szFirstPath[nLen - 1]) {
    strcpy(szResult, szFirstPath);
    if ('\\' == szSecondPath[0]) {
      szResult[nLen - 1] = 0;
    }
    strcat(szResult, szSecondPath);
  } else if ('\\' == szSecondPath[0]) {
    sprintf(szResult, "%s%s", szFirstPath, szSecondPath);
  } else {
    sprintf(szResult, "%s%s%s", szFirstPath, "\\", szSecondPath);
  }

  return;
}

/*!*****************************************************************************
// Function		: KLEFilePathMgr::MakeFullPath
// Purpose		: �� Driver, Dir, �ļ���, �ļ���չ������һ��ȫ·��,
�ɴ����ָ��
// Return		: void
// Argumant		: char*			szFullPath[in][out]
Ҫ�ϳɵ�ȫ·��Buffer
// Argumant		: const char*	szDriver[in]
// Argumant		: const char*	szDir[in]
// Argumant		: const char*	szFile[in]
// Argumant		: char*			szExt[in]
// Comments		:	�ɹ�����ʵ��
//				:	_makepath( path_buffer, "c",
"\\sample\\crt\\", "makepath", "c" );
//				:	_makepath( path_buffer, "c:",
"\\sample\\crt\\", "makepath", ".c" );
//				:	_makepath( path_buffer, "c",
"\\sample\\crt\\", "makepath.c", NULL );
//				:	_makepath( path_buffer, NULL,
"c:\\sample\\crt\\", "makepath.c", NULL );
//				:	_makepath( path_buffer, "c",
"sample\\crt", "makepath", "c" );
// Author		: LaiLai
*****************************************************************************/
void KLEFilePathMgr::MakeFullPath(char *szFullPath, const char *szDriver,
                                  const char *szDir, const char *szFile,
                                  char *szExt) {
  _makepath(szFullPath, szDriver, szDir, szFile, szExt);
}

/*!*****************************************************************************
// Function		: KLEFilePathMgr::SpilitFullPath
// Purpose		: �� һ��ȫ·���ֽ�Ϊ Driver, Dir, �ļ���, �ļ���չ��,
�ɴ����ָ��
// Return		: void
// Argumant		: const char*	szFullPath[in]
// Argumant		: char*			szDriver[in][out]	��"c:"
// Argumant		: char*			szDir[in][out]
// Argumant		: char*			szFile[in][out]
// Argumant		: char*			szExt[in][out]		��".exe"
// Comments		: ���ĵ��ÿɵõ���ͬ�Ľ��
//				: path_buffer =  "c:\\sample\\crt\\makepath.c");
//				: _splitpath( path_buffer, drive, NULL, NULL,
ext ); // �����õ� Driver ��Ext
//				: path_buffer =  "\\sample\\crt\\makepath.c");
//				: _splitpath( path_buffer, drive, dir, fname,
ext ); // driver ����Ӱ��
//				: path_buffer = "sample\\crt\\makepath");
//				: _splitpath( path_buffer, drive, dir, fname,
ext ); // driver �� ext ����Ӱ��
// Author		: LaiLai
*****************************************************************************/
void KLEFilePathMgr::SpilitFullPath(const char *szFullPath, char *szDriver,
                                    char *szDir, char *szFile, char *szExt) {
  _splitpath(szFullPath, szDriver, szDir, szFile, szExt);
}

/*!*****************************************************************************
// Function		: KLEFilePathMgr::GetFullPath
// Purpose		: �����ļ���,���ݵ�ǰ·������ȫ·����
// Return		: void
// Argumant		: char*			szPathName[out]
Ҫ���ص���ʵ·����
// Argumant		: const char*	szFileName[in]	���������·����
// Comments		: ȡ����ʵ·����
// Author		: LaiLai
*****************************************************************************/
void KLEFilePathMgr::GetFullPath(char *szPathName,
                                 const char *szFileName) const {
  if (szFileName[0] == '\\') {
    lstrcpy(szPathName, m_szRootPath);
    lstrcat(szPathName, szFileName);
    return;
  }

  // ������������,�Ѿ���ȫ·����
  if (szFileName[1] == ':') {
    lstrcpy(szPathName, szFileName);
    return;
  }

  if (m_szCurPath[1] == ':') {
    lstrcpy(szPathName, m_szCurPath);
  } else {
    lstrcpy(szPathName, m_szRootPath);
    lstrcat(szPathName, m_szCurPath);
  }

  if (szPathName[lstrlen(szPathName) - 1] != '\\')
    lstrcat(szPathName, "\\");
  lstrcat(szPathName, szFileName);
}
