//////////////////////////////////////////////////////////////////////////////////////
//	�ļ���			:	GM.h
//	������			:	������
//	����ʱ��		:	2003-6-4 14:58:13
//	�ļ�˵��		:	Application ���壬Ҳ���ǳ�����
//////////////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_GM_H__150F0DA7_C254_400F_AA60_A7A767512D04__INCLUDED_)
#define AFX_GM_H__150F0DA7_C254_400F_AA60_A7A767512D04__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
#error include 'stdafx.h' before including this file for PCH
#endif

#include "GameMaster_i.h"
#include "resource.h" // main symbols

#ifndef __FIREEVENTS_H__
#include "FireEvents.h"
#endif

class KGameMasterCore;
interface ISystemOnline;
class CGMApp : public CWinApp,
               public CComObjectRootEx<CComSingleThreadModel>,
               public CComCoClass<CGMApp, &CLSID_GameMaster>,
               public IConnectionPointContainerImpl<CGMApp>,
               public IDispatchImpl<IKGameMaster, &IID_IKGameMaster,
                                    &LIBID_GameMasterLib>,
               public CProxy_IGameMasterEvents<CGMApp> {
public:
  STDMETHOD(get_OnlineCount)(/*[out, retval]*/ long *prop);
  STDMETHOD(Beep)();
  CGMApp();
  virtual ~CGMApp();

protected:
  HMODULE m_hDllJXGM;
  ISystemOnline *m_pISystemOnline;
  KGameMasterCore *m_pGameMaster;

public:
  DECLARE_CLASSFACTORY_SINGLETON(CGMApp)

  DECLARE_REGISTRY_RESOURCEID(IDR_GAMEMASTER)
  DECLARE_NOT_AGGREGATABLE(CGMApp)

  DECLARE_PROTECT_FINAL_CONSTRUCT()

  BEGIN_COM_MAP(CGMApp)
  COM_INTERFACE_ENTRY(IKGameMaster)
  COM_INTERFACE_ENTRY(IDispatch)
  COM_INTERFACE_ENTRY(IConnectionPointContainer)
  END_COM_MAP()

  BEGIN_CONNECTION_POINT_MAP(CGMApp)
  CONNECTION_POINT_ENTRY(DIID__IGameMasterEvents)
  END_CONNECTION_POINT_MAP()

  // Overrides
  // ClassWizard generated virtual function overrides
  //{{AFX_VIRTUAL(CGMApp)
public:
  virtual BOOL InitInstance();
  virtual BOOL PreTranslateMessage(MSG *pMsg);
  //}}AFX_VIRTUAL

  // Implementation

  //{{AFX_MSG(CGMApp)
  // NOTE - the ClassWizard will add and remove member functions here.
  //    DO NOT EDIT what you see in these blocks of generated code !
  //}}AFX_MSG
  DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before
// the previous line.

#endif // !defined(AFX_GM_H__150F0DA7_C254_400F_AA60_A7A767512D04__INCLUDED_)
