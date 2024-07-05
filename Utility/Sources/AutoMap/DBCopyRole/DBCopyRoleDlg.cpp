// DBCopyRoleDlg.cpp : implementation file
//

#include "stdafx.h"
#include "DBCopyRole.h"
#include "DBCopyRoleDlg.h"
#include "DBDumpLoad.h"
#include "DBTable.h"
#include "S3DBInterface.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CDBCopyRoleDlg dialog

CDBCopyRoleDlg::CDBCopyRoleDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CDBCopyRoleDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDBCopyRoleDlg)
	m_txtBackupFile = _T("");
	m_txtDBPath = _T("");
	m_txtDBName = _T("");
	m_txtStatus = _T("");
	m_DescTable = NULL;
	m_txtRoleName = _T("");
	//}}AFX_DATA_INIT
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CDBCopyRoleDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDBCopyRoleDlg)
	DDX_Text(pDX, IDC_TXT_BACKUPFILE, m_txtBackupFile);
	DDX_Text(pDX, IDC_TXT_DBPATH, m_txtDBPath);
	DDX_Text(pDX, IDC_TXT_DBNAME, m_txtDBName);
	DDX_Text(pDX, IDC_TXT_STATUS, m_txtStatus);
	DDX_Text(pDX, IDC_TXT_ROLENAME, m_txtRoleName);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CDBCopyRoleDlg, CDialog)
	//{{AFX_MSG_MAP(CDBCopyRoleDlg)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_BTN_BACKUPFILE, OnBtnBackupfile)
	ON_BN_CLICKED(IDC_BTN_DBPATH, OnBtnDbpath)
	ON_BN_CLICKED(IDC_BTN_DBOPEN, OnBtnDbopen)
	ON_WM_CLOSE()
	ON_BN_CLICKED(IDC_BTN_ROLECOPY, OnBtnRolecopy)
	ON_BN_CLICKED(IDC_BTN_SEARCHROLE, OnBtnSearchrole)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDBCopyRoleDlg message handlers

BOOL CDBCopyRoleDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
	// TODO: Add extra initialization here
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CDBCopyRoleDlg::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting

		SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);

		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

HCURSOR CDBCopyRoleDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CDBCopyRoleDlg::OnBtnBackupfile() 
{
	CFileDialog DlgOpenFile(true,NULL,NULL,OFN_HIDEREADONLY,"���ݿⱸ���ļ�(*.bak)|*.bak",
							NULL);
	if(DlgOpenFile.DoModal() != IDOK)return;
	m_txtBackupFile = DlgOpenFile.GetPathName();
	UpdateData(false);
}

void CDBCopyRoleDlg::OnBtnDbpath() 
{
	CFileDialog DlgOpenFile(true,NULL,NULL,OFN_HIDEREADONLY,"���ݿ��ļ�(*)|*",
							NULL);
	if(DlgOpenFile.DoModal() != IDOK)return;
	char aPathName[MAX_PATH] = {0};
	char aFileName[MAX_PATH] = {0};
	strcpy(aPathName,DlgOpenFile.GetPathName());
	strcpy(aFileName,DlgOpenFile.GetFileName());
	aPathName[strlen(aPathName) - strlen(aFileName)] = '\0';
	m_txtDBPath = aPathName;
	m_txtDBName = aFileName;
	UpdateData(false);	
}

void CDBCopyRoleDlg::OnBtnDbopen() 
{
	UpdateData();
	if(m_txtDBPath.IsEmpty() || m_txtDBName.IsEmpty())
	{
		m_txtStatus = "������д��������";
		UpdateData(false);
		return;
	}
	
	//�ֽ������·�������ݿ⹤��·��
	char aDBPath[MAX_PATH] = {0};
	char aEvnPath[MAX_PATH] = {0};
	int aSet = 0;
	strcpy(aDBPath, m_txtDBPath);
	char* apt = aDBPath;
	while(*apt != '\0')
	{
		char tmpEvnPath[MAX_PATH] = {0};
		int tmpSet = 0;
		while((*apt != '\\')&&(*apt != '\0'))
		{
			tmpEvnPath[tmpSet] = *apt;
			tmpSet++;
			apt++;
		}
		tmpSet++;
		apt++;
		if(*apt == '\0')
		{
			strcpy(aEvnPath,tmpEvnPath);
			break;
		}
		if(tmpEvnPath[0] != '\0')
		{
			aSet += tmpSet;
			strcpy(aEvnPath,tmpEvnPath);		
		}
		
	}
	aDBPath[aSet] = '\0';
	//�������ݿ��
	chdir(aDBPath);
	m_DescTable = new ZDBTable(aEvnPath, m_txtDBName);
	m_DescTable->open();

	m_txtStatus = "���ݿ��Ѵ򿪣����Ը��ƽ�ɫ�������ݿ��С�";
	UpdateData(false);
}

void CDBCopyRoleDlg::OnClose() 
{
	if(m_DescTable)
	{
		m_DescTable->close();
		delete m_DescTable;
	}
	
	CDialog::OnClose();
}

void CDBCopyRoleDlg::OnBtnSearchrole() 
{
	UpdateData();
	if(m_txtRoleName.IsEmpty() || m_txtBackupFile.IsEmpty())
	{
		m_txtStatus = "������д��������";
		UpdateData(false);
		return;
	}
	
	CDBLoad DBLoad;
	if(!DBLoad.Open(m_txtBackupFile.GetBuffer(1)))
	{
		m_txtStatus = "�����ļ���ʧ�ܣ�";
		UpdateData(false);
		return;
	}

	char aBuffer[64 * 1024];
	size_t size;
	bool aSearchResult = DBLoad.SearchData(m_txtRoleName.GetBuffer(1), aBuffer, size);
	DBLoad.Close();
	if(!aSearchResult)
	{
		m_txtStatus = "�Ҳ����ý�ɫ��";
		UpdateData(false);
		return;
	}

	TRoleData* pRoleData = (TRoleData*)aBuffer;
	char aStr[32];

	m_txtStatus = "";

	m_txtStatus += "�˺�����";
	m_txtStatus += pRoleData->BaseInfo.caccname;
	m_txtStatus += "\r\n";

	m_txtStatus += "��ɫ����";
	m_txtStatus += pRoleData->BaseInfo.szName;
	m_txtStatus += "\r\n";

	if(!pRoleData->BaseInfo.bSex)
		strcpy(aStr,"��");
	else
		strcpy(aStr,"Ů");
	m_txtStatus += "�Ա�";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";
	
	switch(pRoleData->BaseInfo.ifiveprop)
	{
		case 0:strcpy(aStr,"��");break;
		case 1:strcpy(aStr,"ľ");break;
		case 2:strcpy(aStr,"ˮ");break;
		case 3:strcpy(aStr,"��");break;
		case 4:strcpy(aStr,"��");break;
		default:strcpy(aStr,"����");break;
	}
	m_txtStatus += "�������ԣ�";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	switch(pRoleData->BaseInfo.nSect)
	{
		case 0:strcpy(aStr,"������");break;
		case 1:strcpy(aStr,"������");break;
		case 2:strcpy(aStr,"����");break;
		case 3:strcpy(aStr,"�嶾��");break;
		case 4:strcpy(aStr,"������");break;
		case 5:strcpy(aStr,"������");break;
		case 6:strcpy(aStr,"ؤ��");break;
		case 7:strcpy(aStr,"���̽�");break;
		case 8:strcpy(aStr,"�䵱��");break;
		case 9:strcpy(aStr,"������");break;
		default:strcpy(aStr,"������");break;
	}
	m_txtStatus += "���ɣ�";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	
	itoa(pRoleData->BaseInfo.ifightlevel, aStr, 10);
	m_txtStatus += "�ȼ���";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.nWorldStat, aStr, 10);
	m_txtStatus += "����������";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.nSectStat, aStr, 10);
	m_txtStatus += "����������";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.nKillPeopleNumber, aStr, 10);
	m_txtStatus += "ɱ������";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";
	
	itoa(pRoleData->BaseInfo.imoney + pRoleData->BaseInfo.isavemoney, aStr, 10);
	m_txtStatus += "��Ǯ��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.irevivalid, aStr, 10);
	m_txtStatus += "�����㣺";
	m_txtStatus += aStr;
	m_txtStatus += "(";
	itoa(pRoleData->BaseInfo.irevivalx, aStr, 10);
	m_txtStatus += aStr;
	m_txtStatus += ",";
	itoa(pRoleData->BaseInfo.irevivaly, aStr, 10);
	m_txtStatus += aStr;
	m_txtStatus += ")";
	m_txtStatus += "\r\n";
	itoa(pRoleData->BaseInfo.cUseRevive, aStr, 10);
	m_txtStatus += "cUseRevive��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";
	
	itoa(pRoleData->BaseInfo.ientergameid, aStr, 10);
	m_txtStatus += "������ڵ�ͼ��";
	m_txtStatus += aStr;
	m_txtStatus += "(";
	itoa(pRoleData->BaseInfo.ientergamex, aStr, 10);
	m_txtStatus += aStr;
	m_txtStatus += ",";
	itoa(pRoleData->BaseInfo.ientergamey, aStr, 10);
	m_txtStatus += aStr;
	m_txtStatus += ")";
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.ileadlevel, aStr, 10);
	m_txtStatus += "ͳ˧���ȼ���";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	m_txtStatus += "-----------------------------\r\n";
	
	itoa(pRoleData->BaseInfo.ipower, aStr, 10);
	m_txtStatus += "������";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.iagility, aStr, 10);
	m_txtStatus += "����";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.iouter, aStr, 10);
	m_txtStatus += "�⹦��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.iinside, aStr, 10);
	m_txtStatus += "�ڹ���";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.iluck, aStr, 10);
	m_txtStatus += "���ˣ�";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.icurlife, aStr, 10);
	m_txtStatus += "����ֵ��";
	m_txtStatus += aStr;
	m_txtStatus += "/";
	itoa(pRoleData->BaseInfo.imaxlife, aStr, 10);
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.icurinner, aStr, 10);
	m_txtStatus += "������";
	m_txtStatus += aStr;
	m_txtStatus += "/";
	itoa(pRoleData->BaseInfo.imaxinner, aStr, 10);
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.icurstamina, aStr, 10);
	m_txtStatus += "������";
	m_txtStatus += aStr;
	m_txtStatus += "/";
	itoa(pRoleData->BaseInfo.imaxstamina, aStr, 10);
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.ileftprop, aStr, 10);
	m_txtStatus += "ʣ�����Ե㣺";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.ileftfight, aStr, 10);
	m_txtStatus += "ʣ�༼�ܵ㣺";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	m_txtStatus += "-----------------------------\r\n";

	itoa((int)pRoleData->nItemCount, aStr, 10);
	m_txtStatus += "��Ʒ����";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa((int)pRoleData->nFightSkillCount, aStr, 10);
	m_txtStatus += "ս����������";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa((int)pRoleData->nTaskCount, aStr, 10);
	m_txtStatus += "��������";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa((int)pRoleData->nFriendCount, aStr, 10);
	m_txtStatus += "��������";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	int i;
	{
		m_txtStatus += "===ս�������б�===-------------\r\n";
		TDBSkillData* pSkillData = (TDBSkillData*)(aBuffer + pRoleData->dwFSkillOffset);
		for(i=0;i<pRoleData->nFightSkillCount;++i)
		{
			itoa(pSkillData->m_nSkillId, aStr, 10);
			m_txtStatus += "����";
			m_txtStatus += aStr;
			itoa(pSkillData->m_nSkillLevel, aStr, 10);
			m_txtStatus += "��";
			m_txtStatus += aStr;
			m_txtStatus += "��\r\n";
			pSkillData++;
		}
	}

	{
		m_txtStatus += "===�����б�===-------------\r\n";
		TDBTaskData* pTaskData = (TDBTaskData*)(aBuffer + pRoleData->dwTaskOffset);
		for(i=0;i<pRoleData->nTaskCount;++i)
		{
			itoa(pTaskData->m_nTaskId, aStr, 10);
			m_txtStatus += "����";
			m_txtStatus += aStr;
			itoa(pTaskData->m_nTaskValue, aStr, 10);
			m_txtStatus += "��";
			m_txtStatus += aStr;
			m_txtStatus += "\r\n";
			pTaskData++;
		}
	}
	
	{
		m_txtStatus += "===��Ʒ�б�===-------------\r\n";
		TDBItemData* pItemData = (TDBItemData*)(aBuffer + pRoleData->dwItemOffset);
		for(i=0;i<pRoleData->nItemCount;++i)
		{
			itoa(pItemData->iequipclasscode, aStr, 10);
			m_txtStatus += "��Ʒ";
			m_txtStatus += aStr;
			itoa(pItemData->iequipcode, aStr, 10);
			m_txtStatus += "|";
			m_txtStatus += aStr;
			itoa(pItemData->iequipversion, aStr, 10);
			m_txtStatus += "|";
			m_txtStatus += aStr;
			itoa(pItemData->ilevel, aStr, 10);
			m_txtStatus += "|";
			m_txtStatus += aStr;
			itoa(pItemData->irandseed, aStr, 10);
			m_txtStatus += "|";
			m_txtStatus += aStr;
			itoa(pItemData->iparam1, aStr, 10);
			m_txtStatus += "|";
			m_txtStatus += aStr;
			itoa(pItemData->iparam2, aStr, 10);
			m_txtStatus += "|";
			m_txtStatus += aStr;
			itoa(pItemData->iparam3, aStr, 10);
			m_txtStatus += "|";
			m_txtStatus += aStr;
			itoa(pItemData->iparam4, aStr, 10);
			m_txtStatus += "|";
			m_txtStatus += aStr;
			itoa(pItemData->iparam5, aStr, 10);
			m_txtStatus += "|";
			m_txtStatus += aStr;
			itoa(pItemData->iparam6, aStr, 10);
			m_txtStatus += "|";
			m_txtStatus += aStr;
			itoa(pItemData->ix, aStr, 10);
			m_txtStatus += "(";
			m_txtStatus += aStr;
			itoa(pItemData->iy, aStr, 10);
			m_txtStatus += ",";
			m_txtStatus += aStr;
			m_txtStatus += ")";
			m_txtStatus += "\r\n";
			pItemData++;
		}
	}
	m_txtStatus += "----=====��������=====---------\r\n";
	itoa(pRoleData->BaseInfo.nFirstSect, aStr, 10);
	m_txtStatus += "nFirstSect��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.cFightMode, aStr, 10);
	m_txtStatus += "cFightMode��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.cIsExchange, aStr, 10);
	m_txtStatus += "cIsExchange��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.cPkStatus, aStr, 10);
	m_txtStatus += "cPkStatus��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.ijoincount, aStr, 10);
	m_txtStatus += "ijoincount��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.igroupcode, aStr, 10);
	m_txtStatus += "igroupcode��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.igrouprole, aStr, 10);
	m_txtStatus += "igrouprole��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.iteam, aStr, 10);
	m_txtStatus += "iteam��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.ifinishgame, aStr, 10);
	m_txtStatus += "ifinishgame��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.iarmorres, aStr, 10);
	m_txtStatus += "iarmorres��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.iweaponres, aStr, 10);
	m_txtStatus += "iweaponres��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.ihelmres, aStr, 10);
	m_txtStatus += "ihelmres��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.nForbiddenFlag, aStr, 10);
	m_txtStatus += "nForbiddenFlag��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->BaseInfo.dwTongID, aStr, 10);
	m_txtStatus += "dwTongID��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	m_txtStatus += "-----------------------------\r\n";

	itoa(pRoleData->dwVersion, aStr, 10);
	m_txtStatus += "dwVersion��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->bBaseNeedUpdate, aStr, 10);
	m_txtStatus += "bBaseNeedUpdate��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->nFightSkillCount, aStr, 10);
	m_txtStatus += "nFightSkillCount��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";
	itoa(pRoleData->dwFSkillOffset, aStr, 10);
	m_txtStatus += "dwFSkillOffset��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";
	
	itoa(pRoleData->nLiveSkillCount, aStr, 10);
	m_txtStatus += "dnLiveSkillCount��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";
	itoa(pRoleData->dwLSkillOffset, aStr, 10);
	m_txtStatus += "dwLSkillOffset��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->nTaskCount, aStr, 10);
	m_txtStatus += "nTaskCount��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";
	itoa(pRoleData->dwTaskOffset, aStr, 10);
	m_txtStatus += "dwTaskOffset��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";

	itoa(pRoleData->nItemCount, aStr, 10);
	m_txtStatus += "nItemCount��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";
	itoa(pRoleData->dwItemOffset, aStr, 10);
	m_txtStatus += "dwItemOffset��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";
	
	itoa(pRoleData->nFriendCount, aStr, 10);
	m_txtStatus += "nFriendCount��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";
	itoa(pRoleData->dwFriendOffset, aStr, 10);
	m_txtStatus += "dwFriendOffset��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";
	
	itoa(pRoleData->dwDataLen, aStr, 10);
	m_txtStatus += "dwDataLen��";
	m_txtStatus += aStr;
	m_txtStatus += "\r\n";
	

	UpdateData(false);

}

void CDBCopyRoleDlg::OnBtnRolecopy() 
{
	UpdateData();
	if(!m_DescTable)
	{
		m_txtStatus = "���ݿ�û�д򿪣�";
		UpdateData(false);
		return;
	}
	if(m_txtRoleName.IsEmpty() || m_txtBackupFile.IsEmpty())
	{
		m_txtStatus = "������д��������";
		UpdateData(false);
		return;
	}
	
	CDBLoad DBLoad;
	if(!DBLoad.Open(m_txtBackupFile.GetBuffer(1)))
	{
		m_txtStatus = "�����ļ���ʧ�ܣ�";
		UpdateData(false);
		return;
	}

	char aBuffer[64 * 1024];
	size_t size;
	char aRoleName[32] = {0};
	strcpy(aRoleName, m_txtRoleName.GetBuffer(1));
	if(!DBLoad.SearchData(aRoleName, aBuffer, size))
	{
		m_txtStatus = "�Ҳ����ý�ɫ��";
		UpdateData(false);
		return;
	}

	if(m_DescTable->add(aRoleName,strlen(aRoleName) + 1, aBuffer, size))
		m_txtStatus = "��ɫ���Ƶ����ݿ�ɹ���";
	else
		m_txtStatus = "��ɫ���Ƶ����ݿ�ʧ�ܣ�";
	
	UpdateData(false);
}


