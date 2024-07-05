#if !defined(AFX_ANNUNCEPANEL_H__015CFACE_A2CC_4388_BF44_CAF32D507A26__INCLUDED_)
#define AFX_ANNUNCEPANEL_H__015CFACE_A2CC_4388_BF44_CAF32D507A26__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// AnnuncePanel.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// AnnuncePanel dialog

class AnnuncePanel : public CDialog
{
// Construction
public:
	void SetNoticeInfoUrl(const CString& URL);
	
	AnnuncePanel(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(AnnuncePanel)
	enum { IDD = IDD_DIALOG1 };

	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(AnnuncePanel)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(AnnuncePanel)
	virtual void OnOK();
	afx_msg void OnCancel();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
private:
		CString	m_NoticeInfo;
		CString m_NoticeInfoUrl;
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ANNUNCEPANEL_H__015CFACE_A2CC_4388_BF44_CAF32D507A26__INCLUDED_)
