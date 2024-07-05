// DBBackupLoad.cpp : Defines the class behaviors for the application.
//

#include "DBBackupLoad.h"
#include "DBBackupLoadDlg.h"
#include "stdafx.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CDBBackupLoadApp

BEGIN_MESSAGE_MAP(CDBBackupLoadApp, CWinApp)
//{{AFX_MSG_MAP(CDBBackupLoadApp)
//}}AFX_MSG
ON_COMMAND(ID_HELP, CWinApp::OnHelp)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDBBackupLoadApp construction

CDBBackupLoadApp::CDBBackupLoadApp() {}

/////////////////////////////////////////////////////////////////////////////
// The one and only CDBBackupLoadApp object

CDBBackupLoadApp theApp;

/////////////////////////////////////////////////////////////////////////////
// CDBBackupLoadApp initialization

BOOL CDBBackupLoadApp::InitInstance() {
  // Standard initialization

#ifdef _AFXDLL
  Enable3dControls(); // Call this when using MFC in a shared DLL
#else
  Enable3dControlsStatic(); // Call this when linking to MFC statically
#endif

  CDBBackupLoadDlg dlg;
  m_pMainWnd = &dlg;
  int nResponse = dlg.DoModal();
  if (nResponse == IDOK) {
  } else if (nResponse == IDCANCEL) {
  }

  // Since the dialog has been closed, return FALSE so that we exit the
  //  application, rather than start the application's message pump.
  return FALSE;
}
