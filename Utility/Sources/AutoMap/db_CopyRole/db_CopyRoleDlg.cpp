// db_CopyRoleDlg.cpp : implementation file
//

#include "db_CopyRoleDlg.h"
#include "RoleStruct.h"
#include "db_CopyRole.h"
#include "stdafx.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CDb_CopyRoleDlg dialog

CDb_CopyRoleDlg::CDb_CopyRoleDlg(CWnd *pParent /*=NULL*/)
    : CDialog(CDb_CopyRoleDlg::IDD, pParent) {
  //{{AFX_DATA_INIT(CDb_CopyRoleDlg)
  m_DBDescPath = _T("");
  m_DBSourcePath = _T("");
  m_RoleName = _T("");
  m_RoleData = _T("");
  DBSource = NULL;
  DBDesc = NULL;
  //}}AFX_DATA_INIT
  // Note that LoadIcon does not require a subsequent DestroyIcon in Win32
  m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CDb_CopyRoleDlg::DoDataExchange(CDataExchange *pDX) {
  CDialog::DoDataExchange(pDX);
  //{{AFX_DATA_MAP(CDb_CopyRoleDlg)
  DDX_Text(pDX, IDC_TXT_DB_DESC, m_DBDescPath);
  DDX_Text(pDX, IDC_TXT_DB_SOURCE, m_DBSourcePath);
  DDX_Text(pDX, IDC_TXT_ROLENAME, m_RoleName);
  DDX_Text(pDX, IDC_MEMO_ROLEDATA, m_RoleData);
  //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CDb_CopyRoleDlg, CDialog)
//{{AFX_MSG_MAP(CDb_CopyRoleDlg)
ON_WM_PAINT()
ON_WM_QUERYDRAGICON()
ON_BN_CLICKED(IDC_BTN_DB_SOURCE, OnBtnDbSource)
ON_BN_CLICKED(IDC_BTN_DB_DESC, OnBtnDbDesc)
ON_BN_CLICKED(IDC_BTN_ROLE_FIND, OnBtnRoleFind)
ON_BN_CLICKED(IDC_BTN_ROLE_COPY, OnBtnRoleCopy)
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDb_CopyRoleDlg message handlers

BOOL CDb_CopyRoleDlg::OnInitDialog() {
  CDialog::OnInitDialog();

  // Set the icon for this dialog.  The framework does this automatically
  //  when the application's main window is not a dialog
  SetIcon(m_hIcon, TRUE);  // Set big icon
  SetIcon(m_hIcon, FALSE); // Set small icon

  // TODO: Add extra initialization here

  return TRUE; // return TRUE  unless you set the focus to a control
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CDb_CopyRoleDlg::OnPaint() {
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

// The system calls this to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CDb_CopyRoleDlg::OnQueryDragIcon() { return (HCURSOR)m_hIcon; }

BOOL CDb_CopyRoleDlg::DestroyWindow() {
  // TODO: Add your specialized code here and/or call the base class
  if (DBDesc) {
    delete DBDesc;
    DBDesc = NULL;
  }
  if (DBSource) {
    delete DBSource;
    DBSource = NULL;
  }
  return CDialog::DestroyWindow();
}

void CDb_CopyRoleDlg::OnBtnDbSource() {
  UpdateData();
  if (DBSource)
    return;
  if (m_DBSourcePath == "") {
    AfxMessageBox("������Դ���ݿ�·����");
    return;
  }
  DBSource = new CDBTableReadOnly(m_DBSourcePath.GetBuffer(1), "roledb");
  if (DBSource->open()) {
    ::EnableWindow(::GetDlgItem(this->m_hWnd, IDC_BTN_DB_SOURCE), FALSE);
    ::EnableWindow(::GetDlgItem(this->m_hWnd, IDC_TXT_DB_SOURCE), FALSE);
  } else {
    AfxMessageBox("Դ���ݿ�򿪴���");
    delete DBSource;
    DBSource = NULL;
  }
}

void CDb_CopyRoleDlg::OnBtnDbDesc() {
  UpdateData();
  if (DBDesc)
    return;
  if (m_DBDescPath == "") {
    AfxMessageBox("������Ŀ�����ݿ�·����");
    return;
  }
  DBDesc = new ZDBTable(m_DBDescPath.GetBuffer(1), "roledb");
  if (DBDesc->open()) {
    ::EnableWindow(::GetDlgItem(this->m_hWnd, IDC_BTN_DB_DESC), FALSE);
    ::EnableWindow(::GetDlgItem(this->m_hWnd, IDC_TXT_DB_DESC), FALSE);
  } else {
    AfxMessageBox("Ŀ�����ݿ�򿪴���");
    delete DBDesc;
    DBDesc = NULL;
  }
}

void CDb_CopyRoleDlg::OnBtnRoleFind() {
  UpdateData();
  if (!DBSource) {
    AfxMessageBox("Դ���ݿ�δ�򿪣�");
    return;
  }
  if (m_DBSourcePath == "") {
    AfxMessageBox("�������ɫ����");
    return;
  }
  int size;
  char *aBuffer = DBSource->search(m_RoleName.GetBuffer(1),
                                   strlen(m_RoleName.GetBuffer(1)) + 1, size);

  if (!aBuffer) {
    m_RoleData = "δ�ҵ����" + m_RoleName;
    UpdateData(false);
    return;
  }
  TRoleData *pRoleData = (TRoleData *)aBuffer;
  char aStr[32];

  m_RoleData = "";

  m_RoleData += "�˺�����";
  m_RoleData += pRoleData->BaseInfo.caccname;
  m_RoleData += "\r\n";

  m_RoleData += "��ɫ����";
  m_RoleData += pRoleData->BaseInfo.szName;
  m_RoleData += "\r\n";

  if (!pRoleData->BaseInfo.bSex)
    strcpy(aStr, "��");
  else
    strcpy(aStr, "Ů");
  m_RoleData += "�Ա�";
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  switch (pRoleData->BaseInfo.ifiveprop) {
  case 0:
    strcpy(aStr, "��");
    break;
  case 1:
    strcpy(aStr, "ľ");
    break;
  case 2:
    strcpy(aStr, "ˮ");
    break;
  case 3:
    strcpy(aStr, "��");
    break;
  case 4:
    strcpy(aStr, "��");
    break;
  default:
    strcpy(aStr, "����");
    break;
  }
  m_RoleData += "�������ԣ�";
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  switch (pRoleData->BaseInfo.nSect) {
  case 0:
    strcpy(aStr, "������");
    break;
  case 1:
    strcpy(aStr, "������");
    break;
  case 2:
    strcpy(aStr, "����");
    break;
  case 3:
    strcpy(aStr, "�嶾��");
    break;
  case 4:
    strcpy(aStr, "������");
    break;
  case 5:
    strcpy(aStr, "������");
    break;
  case 6:
    strcpy(aStr, "ؤ��");
    break;
  case 7:
    strcpy(aStr, "���̽�");
    break;
  case 8:
    strcpy(aStr, "�䵱��");
    break;
  case 9:
    strcpy(aStr, "������");
    break;
  default:
    strcpy(aStr, "������");
    break;
  }
  m_RoleData += "���ɣ�";
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  itoa(pRoleData->BaseInfo.ifightlevel, aStr, 10);
  m_RoleData += "�ȼ���";
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  itoa(pRoleData->BaseInfo.imoney + pRoleData->BaseInfo.isavemoney, aStr, 10);
  m_RoleData += "��Ǯ��";
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  itoa(pRoleData->BaseInfo.ientergameid, aStr, 10);
  m_RoleData += "������ڵ�ͼ��";
  m_RoleData += aStr;
  m_RoleData += "(";
  itoa(pRoleData->BaseInfo.ientergamex, aStr, 10);
  m_RoleData += aStr;
  m_RoleData += ",";
  itoa(pRoleData->BaseInfo.ientergamey, aStr, 10);
  m_RoleData += aStr;
  m_RoleData += ")";
  m_RoleData += "\r\n";

  itoa(pRoleData->BaseInfo.ileadlevel, aStr, 10);
  m_RoleData += "ͳ˧���ȼ���";
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  m_RoleData += "-----------------------------\r\n";

  itoa(pRoleData->BaseInfo.ipower, aStr, 10);
  m_RoleData += "������";
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  itoa(pRoleData->BaseInfo.iagility, aStr, 10);
  m_RoleData += "����";
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  itoa(pRoleData->BaseInfo.iouter, aStr, 10);
  m_RoleData += "�⹦��";
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  itoa(pRoleData->BaseInfo.iinside, aStr, 10);
  m_RoleData += "�ڹ���";
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  itoa(pRoleData->BaseInfo.iluck, aStr, 10);
  m_RoleData += "���ˣ�";
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  itoa(pRoleData->BaseInfo.icurlife, aStr, 10);
  m_RoleData += "����ֵ��";
  m_RoleData += aStr;
  m_RoleData += "/";
  itoa(pRoleData->BaseInfo.imaxlife, aStr, 10);
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  itoa(pRoleData->BaseInfo.icurinner, aStr, 10);
  m_RoleData += "������";
  m_RoleData += aStr;
  m_RoleData += "/";
  itoa(pRoleData->BaseInfo.imaxinner, aStr, 10);
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  itoa(pRoleData->BaseInfo.icurstamina, aStr, 10);
  m_RoleData += "������";
  m_RoleData += aStr;
  m_RoleData += "/";
  itoa(pRoleData->BaseInfo.imaxstamina, aStr, 10);
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  itoa(pRoleData->BaseInfo.ileftprop, aStr, 10);
  m_RoleData += "ʣ�����Ե㣺";
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  itoa(pRoleData->BaseInfo.ileftfight, aStr, 10);
  m_RoleData += "ʣ�༼�ܵ㣺";
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  m_RoleData += "-----------------------------\r\n";

  itoa((int)pRoleData->nItemCount, aStr, 10);
  m_RoleData += "��Ʒ����";
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  itoa((int)pRoleData->nFightSkillCount, aStr, 10);
  m_RoleData += "ս����������";
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  itoa((int)pRoleData->nTaskCount, aStr, 10);
  m_RoleData += "��������";
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  itoa((int)pRoleData->nFriendCount, aStr, 10);
  m_RoleData += "��������";
  m_RoleData += aStr;
  m_RoleData += "\r\n";

  UpdateData(false);

  delete[] aBuffer;
}

void CDb_CopyRoleDlg::OnBtnRoleCopy() {
  UpdateData();
  if (!DBSource) {
    AfxMessageBox("Դ���ݿ�δ�򿪣�");
    return;
  }

  if (!DBDesc) {
    AfxMessageBox("Ŀ�����ݿ�δ�򿪣�");
    return;
  }

  if (m_DBSourcePath == "") {
    AfxMessageBox("�������ɫ����");
    return;
  }
  int size;
  char *aBuffer = DBSource->search(m_RoleName.GetBuffer(1),
                                   strlen(m_RoleName.GetBuffer(1)) + 1, size);

  if (!aBuffer) {
    m_RoleData = "δ�ҵ����" + m_RoleName;
    UpdateData(false);
    return;
  }

  bool aAddResult =
      DBDesc->add(m_RoleName.GetBuffer(1), strlen(m_RoleName.GetBuffer(1)) + 1,
                  aBuffer, size);

  m_RoleData = "�������� " + m_RoleName;
  if (aAddResult)
    m_RoleData += " �ɹ���";
  else
    m_RoleData += " ʧ�ܣ�";

  UpdateData(false);

  delete[] aBuffer;
}
