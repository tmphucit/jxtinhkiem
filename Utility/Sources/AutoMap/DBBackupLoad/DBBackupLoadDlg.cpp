// DBBackupLoadDlg.cpp : implementation file
//

#include "DBBackupLoadDlg.h"
#include "DBBackupLoad.h"
#include "DBDumpLoad.h"
#include "DBTable.h"
#include "S3DBInterface.h"
#include "stdafx.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

int get_account(DB *db, const DBT *pkey, const DBT *pdata, DBT *ikey) {
  // ����һ��������buffer���õ�account��Ϊ����
  memset(ikey, 0, sizeof(DBT));
  TRoleData *pRoleData = (TRoleData *)pdata->data;

  ikey->data = pRoleData->BaseInfo.caccname;
  ikey->size = strlen(pRoleData->BaseInfo.caccname) + 1;

  return 0;
}

/////////////////////////////////////////////////////////////////////////////
// CDBBackupLoadDlg dialog

CDBBackupLoadDlg::CDBBackupLoadDlg(CWnd *pParent /*=NULL*/)
    : CDialog(CDBBackupLoadDlg::IDD, pParent) {
  //{{AFX_DATA_INIT(CDBBackupLoadDlg)
  m_txtBackupFile = _T("");
  m_txtDBName = _T("");
  m_txtDBPath = _T("");
  m_DBSavePath = _T("");
  //}}AFX_DATA_INIT
  m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CDBBackupLoadDlg::DoDataExchange(CDataExchange *pDX) {
  CDialog::DoDataExchange(pDX);
  //{{AFX_DATA_MAP(CDBBackupLoadDlg)
  DDX_Control(pDX, IDC_LIST_STATUS, m_listStatus);
  DDX_Text(pDX, IDC_TXT_BACKUPFILE, m_txtBackupFile);
  DDX_Text(pDX, IDC_TXT_DBNAME, m_txtDBName);
  DDX_Text(pDX, IDC_TXT_DBPATH, m_txtDBPath);
  //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CDBBackupLoadDlg, CDialog)
//{{AFX_MSG_MAP(CDBBackupLoadDlg)
ON_WM_PAINT()
ON_WM_QUERYDRAGICON()
ON_BN_CLICKED(IDC_BTN_BACKUPFILE, OnBtnBackupfile)
ON_BN_CLICKED(IDC_BTN_DBLOAD, OnBtnDbload)
ON_BN_CLICKED(IDC_BTN_DBPATH, OnBtnDbpath)
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDBBackupLoadDlg message handlers

BOOL CDBBackupLoadDlg::OnInitDialog() {
  CDialog::OnInitDialog();

  SetIcon(m_hIcon, TRUE);  // Set big icon
  SetIcon(m_hIcon, FALSE); // Set small icon

  // TODO: Add extra initialization here

  return TRUE; // return TRUE  unless you set the focus to a control
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CDBBackupLoadDlg::OnPaint() {
  if (IsIconic()) {
    CPaintDC dc(this); // device context for painting

    SendMessage(WM_ICONERASEBKGND, (WPARAM)dc.GetSafeHdc(), 0);

    // Center icon in client rectangle
    int cxIcon = GetSystemMetrics(SM_CXICON);
    int cyIcon = GetSystemMetrics(SM_CYICON);
    CRect rect;
    GetClientRect(&rect);
    int x = (rect.Width() - cxIcon + 1) / 2;
    int y = (rect.Height() - cyIcon + 1) / 2;

    // Draw the icon
    dc.DrawIcon(x, y, m_hIcon);
  } else {
    CDialog::OnPaint();
  }
}

HCURSOR CDBBackupLoadDlg::OnQueryDragIcon() { return (HCURSOR)m_hIcon; }

void CDBBackupLoadDlg::OnBtnBackupfile() {
  CFileDialog DlgOpenFile(true, NULL, NULL, OFN_HIDEREADONLY,
                          "���ݿⱸ���ļ�(*.bak)|*.bak", NULL);
  if (DlgOpenFile.DoModal() != IDOK)
    return;
  m_txtBackupFile = DlgOpenFile.GetPathName();
  m_DBSavePath = DlgOpenFile.GetFileTitle();
  UpdateData(false);
}

void CDBBackupLoadDlg::OnBtnDbload() {
  UpdateData();
  if (m_txtBackupFile.IsEmpty() || m_txtDBPath.IsEmpty() ||
      m_txtDBName.IsEmpty()) {
    m_listStatus.AddString("������д��������");
    return;
  }

  // �������ݿ��
  chdir(m_txtDBPath);
  ZDBTable DBTable(m_DBSavePath, m_txtDBName);
  DBTable.addIndex(get_account);
  if (!DBTable.open()) {
    m_listStatus.AddString("�������ݿ�򿪴���");
    return;
  }
  // ���ݿⱸ���ļ���
  CDBLoad DBLoad;
  if (!DBLoad.Open(m_txtBackupFile.GetBuffer(1))) {
    m_listStatus.AddString("���ݿⱸ���ļ��򿪴���");
    return;
  }

  char aBuffer[64 * 1024] = {0};
  char aKeyBuffer[32] = {0};
  size_t size, keysize;
  int aCount = 0;
  int aErrCount = 0;
  // m_listStatus.AddString("��ʼ���ɹ�����ʼ�������ݿ�,���Ե�...");
  while (DBLoad.ReadData(aKeyBuffer, keysize, aBuffer, size)) {
    if (DBTable.add(aKeyBuffer, keysize, aBuffer, size)) {
      aCount++;
    } else { // ������ݳ���
      CString aMsg = "����[";
      aMsg += aKeyBuffer;
      aMsg += "]��������";
      m_listStatus.AddString(aMsg);
      aErrCount++;
    }
  }
  DBTable.removeLog();
  char aNumBuf[32] = {0};
  itoa(aCount, aNumBuf, 10);
  CString aMsg = "������ɣ����� ";
  aMsg += aNumBuf;
  aMsg += " ����¼������";
  m_listStatus.AddString(aMsg);
  itoa(aErrCount, aNumBuf, 10);
  aMsg = "�� ";
  aMsg += aNumBuf;
  aMsg += " ����¼����ʧ�ܡ�";
  m_listStatus.AddString(aMsg);
  DBLoad.Close();
  DBTable.close();
}

void CDBBackupLoadDlg::OnBtnDbpath() {
  UpdateData();
  LPITEMIDLIST pidlRoot = NULL;
  SHGetSpecialFolderLocation(m_hWnd, CSIDL_DESKTOP, &pidlRoot);

  BROWSEINFO bi; // ���봫��Ĳ���,�����������ṹ�Ĳ����ĳ�ʼ��
  // CString strDisplayName; //�����õ�,��ѡ��Ļ�ҳ��·��,�൱���ṩһ��������
  bi.hwndOwner = GetSafeHwnd(); // �õ�������Handleֵ
  bi.pidlRoot = pidlRoot;       // ���������������������õ���.
  bi.pszDisplayName =
      NULL; // strDisplayName.GetBuffer(MAX_PATH+1);   //�õ�������ָ��,
  bi.lpszTitle = "����ļ���"; // ���ñ���
  bi.ulFlags = 0;              // ���ñ�־
  bi.lpfn = NULL;
  bi.lParam = 0;
  bi.iImage = 0; // ���������һЩ�޹صĲ���������,�����������,
  LPITEMIDLIST pIIL = SHBrowseForFolder(&bi); // �򿪶Ի���

  if (pIIL == NULL)
    return;

  TCHAR szInitialDir[MAX_PATH];
  BOOL bRet = ::SHGetPathFromIDList(pIIL, (char *)&szInitialDir);

  m_txtDBPath = szInitialDir;
  UpdateData(false);
}
