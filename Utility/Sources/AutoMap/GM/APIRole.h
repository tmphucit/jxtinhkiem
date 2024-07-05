//////////////////////////////////////////////////////////////////////////////////////
//	�ļ���			:	APIRole.h
//	������			:	������
//	����ʱ��		:	2003-7-7 19:15:43
//	�ļ�˵��		:	Role API ��ʵ�ֹ�����ͷ�ļ�
//////////////////////////////////////////////////////////////////////////////////////

#ifndef __APIROLE_H__
#define __APIROLE_H__

#include "GameMaster_i.h"

class KGameMasterCore;
class KRoleApiTool
    : public CComObjectRootEx<CComSingleThreadModel>,
      public IDispatchImpl<IKRole, &IID_IKRole, &LIBID_GameMasterLib>,
      public KAPIChild {
public:
  KRoleApiTool();
  void Init(KGameMasterCore *, LPCSTR strAccountName, LPCSTR strRoleName,
            LPCSTR strGameWorldName);
  virtual ~KRoleApiTool();
  LPCSTR GetChildName() {
    return (m_strRoleAndGWName = m_strRoleName + "\n" + m_strGameWorldName);
  }

protected:
  CString m_strRoleAndGWName;
  CString m_strRoleName;
  CString m_strAccountName;
  CString m_strGameWorldName;
  KGameMasterCore *m_pGMCoreRef;

public:
  STDMETHOD(FreeChat)();
  STDMETHOD(ShutUp)(long Minutes);
  STDMETHOD(FreeFromJail)();
  STDMETHOD(PutInJail)(/*[in]*/ long Minutes);
  STDMETHOD(SendMessageToThis)(/*[in]*/ BSTR strMessage);
  STDMETHOD(get_Name)(/*[out, retval]*/ BSTR *pVal);
  STDMETHOD(get_PlayerAccountName)(/*[out, retval]*/ BSTR *pVal);
  STDMETHOD(get_RoleInGameWorldName)(/*[out, retval]*/ BSTR *pVal);

  typedef CComCreator<CComObjectNoLock<KRoleApiTool>> _CreatorClass;

  DECLARE_PROTECT_FINAL_CONSTRUCT()

  BEGIN_COM_MAP(KRoleApiTool)
  COM_INTERFACE_ENTRY(IKRole)
  COM_INTERFACE_ENTRY(IDispatch)
  END_COM_MAP()
};

#endif //__APIROLE_H__
