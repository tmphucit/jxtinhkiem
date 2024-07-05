/*******************************************************************************
// FileName			:	KLEFileEnumerate.h
// FileAuthor		:	LaiLai
// FileCreateDate	:	01-3-13 11:26:21
// FileDescription	:	����ָ���ĸ�Ŀ¼,���ļ���չ����,������ص�ѡ��
//					:   (�����Ƿ�ݹ������Ŀ¼�� Exclude
һЩĿ¼)
//					:
�������������ҵ����ļ�,ִ��һ���ص�����,���һ������.
//					:
�����ļ���ʽ�ı��,һ����������е��滻.
// Revision Count	:
*******************************************************************************/

#ifndef _KLE_FILEENUMARATE_H_
#define _KLE_FILEENUMARATE_H_

//! �������ȫ·����
typedef void (*LPFILEENUMCALLBACK)(const char *szFileName, void *pParam);

class KLEFileEnumerate {
public:
  KLEFileEnumerate();
  KLEFileEnumerate(bool blIncludeSubFolder, const char *szIncludeExt,
                   const char *szExcludeDir, const char *szRoot);
  virtual ~KLEFileEnumerate();

  void SetRootFolder(const char *szRoot);
  void EnableSubFolder(bool blIncludeSubFolder);
  void SetIncludeFileExt(const char *szIncludeExt);
  void SetExcludeDir(const char *szExcludeDir);
  void SetCallBack(LPFILEENUMCALLBACK pFileEnumCallBack);
  void SetParam(void *pParam);
  void EnumFileInFolder(const char *szRoot);

protected:
  //! �Ƿ�������Ŀ¼
  bool m_blIncludeSubFolder;
  //! ��Ŀ¼���ļ���
  char *m_szRootFolder;

  //! Ӧ��������ʹ���ַ����б�(KLEList, KLEString),���������ȫ
  //! ��ҪEnumerate���ļ���չ����,�����չ��֮���ö��Ÿ���
  char *m_szIncludeExt;
  //! ����Ҫ Enumerate���ļ�Ŀ¼��,���֮���ö��Ÿ���
  char *m_szExcludeDir;

  void *m_pParam;

  LPFILEENUMCALLBACK m_pFileEnumCallback;

  void AnalysisFile(const char *szRoot, const WIN32_FIND_DATA &Win32FindData);
};

#endif
