#if !defined(                                                                  \
    AFX_GAMEOPTIONPANEL_H__053869DE_B932_48D7_A310_842AF8B57B9B__INCLUDED_)
#define AFX_GAMEOPTIONPANEL_H__053869DE_B932_48D7_A310_842AF8B57B9B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// GameOptionPanel.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// GameOptionPanel dialog
#include "../Represent/iRepresent/iRepresentShell.h"
#include "DefaultProcess.h"
#include "RecordProcess.h"
#include "lientGameOptionProcess.h"
#include <fstream>
#include <iterator>
#include <memory>

using namespace std;

void DisplayErrorInfo(string &ErrorInfo);

; // ȷ���������ű��ַ�ʽ��������

class GameOptionPanel : public CDialog {
  // Construction
public:
  GameOptionPanel(CWnd *pParent = NULL); // standard constructor

  // Dialog Data
  //{{AFX_DATA(GameOptionPanel)
  enum { IDD = IDD_DIALOGBAR };
  CButton m_WindowOptionCtl;
  CButton m_3DOptionCtl;
  CButton m_FullScreenCtl;
  CButton m_2DOptionCtl;
  CButton m_DynaLightEnableCtl;
  int m_2DOptionValue;
  int m_FullScreenValue;
  BOOL m_DynaLightEnableValue;
  TextSet NewOptionS; // �����������µ�����ѡ��
  //}}AFX_DATA

  // Overrides
  // ClassWizard generated virtual function overrides
  //{{AFX_VIRTUAL(GameOptionPanel)
protected:
  virtual void DoDataExchange(CDataExchange *pDX); // DDX/DDV support
                                                   //}}AFX_VIRTUAL

  // Implementation
protected:
  // Generated message map functions
  //{{AFX_MSG(GameOptionPanel)
  afx_msg void OnOk();
  afx_msg void OnCancel();
  afx_msg void On3DOptionSelected();
  afx_msg void On2DOption();
  virtual BOOL OnInitDialog();
  //}}AFX_MSG
  DECLARE_MESSAGE_MAP()
private:
  void SetDynaLightOption();
  void SetRepresentOption();
  void SetIsFullScreenOption();
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before
// the previous line.

#endif // !defined(AFX_GAMEOPTIONPANEL_H__053869DE_B932_48D7_A310_842AF8B57B9B__INCLUDED_)
