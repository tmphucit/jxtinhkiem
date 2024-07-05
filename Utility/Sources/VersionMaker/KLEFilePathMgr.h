//******************************************************************************
/*! \file       KLEFilePathMgr.h
*   \brief      ����ļ�·��ϵͳ����ز���,·��
*				
*   \author		lailai
*   \version	1.0
*   \date		00-11-14 16:25:51
*   \sa			�ο�C RunTime Lib ����  *_fullpath, _splitpath
*   \todo		
*******************************************************************************/


#ifndef _KLE_FILEPATH_MGR_
#define _KLE_FILEPATH_MGR_

class KLEFilePathMgr  
{
public:
	KLEFilePathMgr();
	virtual ~KLEFilePathMgr();

	//! ����ļ��Ƿ����
	static bool	IsFileExist(const char* szPathName);
	//! ���·���Ƿ����
	static bool	IsPathExist(const char* szPathName);
	//! �õ�CDROM��Ӧ��Driver
	static void GetCDDriver(char* szDriver);
	//! ��һ���ļ���ȥ����׺��,�ӵ�һ��·���ĺ��棬�γ�һ���µ�·��
	static void AddFileNameToPath(char* szPathName, const char* szFileName);
	//! ������·���ϳɽ�����ڵ�һ��·����,�����ʹ��
	static void ComposePath( char* szFirstPath, const char* szSecondPath);
	//! ������·���ϳɽ��������һ����ͬ��Buf��,�����ʹ��
	static void ComposePath( char* szResult, const char* szFirstPath, const char* szSecondPath);
	//!  �� Driver, Dir, �ļ���, �ļ���չ������һ��ȫ·��, �ɴ����ָ��
	static void MakeFullPath(char* szFullPath, const char* szDriver, const char* szDir, const char* szFile, char* szExt);
	//!  �� һ��ȫ·���ֽ�Ϊ Driver, Dir, �ļ���, �ļ���չ��, �ɴ����ָ��
	static void SpilitFullPath(const char* szFullPath, char* szDriver, char* szDir, char* szFile, char* szExt);


	//! ȡ�ñ�����ĸ�·��
	inline bool	GetRootPath(char* szPathName) const;

	//! �õ���ǰ·��
	inline bool	GetCurPath(char* szPathName) const;

	//! ���õ�ǰ·��,�����������ڸ�Ŀ¼�����·��
	void	SetCurPath(const char* szPathName);
	
	//!
	void	GetFullPath(char* szPathName, const char* szFileName) const;

protected:
	// ��Ŀ¼,Ӧ�ó������ڵ�·��, Ϊ����·��,��β��û��'\\'.
	char	m_szRootPath[KLEFMGR_MAXPATH];
	// ��ǰ·��, Ϊ����·��,
	char	m_szCurPath[KLEFMGR_MAXPATH];		
};

/*****************************************************************************
// FUNCTION		: KLEFileSys::GetRootPath
// PURPOSE		: ȡ�ñ�����ĸ�·��
// RETURN		: bool 
// ARGUMENT		: char* szPathName[in][out]
// COMMENTS		: 
// AUTHOR		: LaiLai
*****************************************************************************/
inline bool KLEFilePathMgr::GetRootPath(char* szPathName) const
{
	if( NULL == szPathName )	return false;
	strcpy(szPathName, m_szRootPath);

	return true;
}

/*****************************************************************************
// FUNCTION		: KLEFileSys::GetCurPath
// PURPOSE		: ȡ�õ�ǰ�ļ�·��
// RETURN		: void 
// ARGUMENT		: char* szPathName[in][out]
// COMMENTS		:
// AUTHOR		: LaiLai
*****************************************************************************/
inline bool KLEFilePathMgr::GetCurPath(char* szPathName) const
{
	if( NULL == szPathName ) return false;
	strcpy(szPathName, m_szCurPath);
	return true;
}

#endif 
