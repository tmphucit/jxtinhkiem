
#ifndef _KLE_BASEDEF_H_
#define _KLE_BASEDEF_H_

#define SAFE_DELETE(p)		{ if(p) { delete (p);     (p)=NULL; } }
#define SAFE_DELGRP(p)		{ if(p) { delete []p;     (p)=NULL; } }
#define SAFE_RELEASE(p)		{ if(p) { (p)->Release(); (p)=NULL; } }

//! KLE���õ���Short Name�ĳ���
#define	KLESNAMELEN		32
//! KLE���õ���Middle Name�ĳ���
#define KLEMNAMELEN		64
//! KLE���õ���Long Name�ĳ���
#define KLELNAMELEN		256


//! ��stdlib.h �е� _MAX_FNAME����
#define KLEFMGR_MAXPATH   260			//!< ���ȫ·������
#define KLEFMGR_MAXDIR    256			//!< ���Ŀ¼����
#define KLEFMGR_MAXFILE   256			//!< ����ļ�������
#define KLEFMGR_MAXEXT    256			//!< �����չ������
#define KLEFMGR_MAXDRIVE    3			//!< ������������� 

// �������õ��Ļ���Ŀ¼
#define KLEP_DATA			     "\\UpdateData"
#define KLEP_DATABK			     "\\UpdateDataBackUp"
#define KLEP_FILELIST		     "\\UpdateFileList"
#define KLEP_VERSIONDATA	     "\\VersionData"
#define KLEP_VERSIONFILE	     "\\Version.ini"
#define KLEP_TOOLS               "\\tools"
#define KLEP_INFO                "\\info"
#define KLEP_INDEX               "\\VersionData"
#define KLEP_UpdateRelativeFile  "\\UpdateRelativeFile.ini" 


#endif