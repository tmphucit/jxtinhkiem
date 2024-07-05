//////////////////////////////////////////////////////////////////////////////////////
//	�ļ���			:	EventHandler.h
//	������			:	������
//	����ʱ��		:	2003-6-4 14:55:22
//	�ļ�˵��		:	ͬ jxgm ģ��ҽӵ��¼���Ӧģ�鶨��
//////////////////////////////////////////////////////////////////////////////////////

#ifndef __EVENTHANDLER_H__
#define __EVENTHANDLER_H__

#ifndef __JXGM_I_H__
#include "../JXGM/Headers/jxgm_i.h"
#endif

typedef struct tagSystemExchangeData EXCHANGEDATA_SYS;
typedef struct tagGameWorldExchangeData EXCHANGEDATA_GW;

class KSystemEventHandler : public ISystemEvent
{
public:
	KSystemEventHandler(EXCHANGEDATA_SYS*);
	virtual ~KSystemEventHandler();
protected:
	EXCHANGEDATA_SYS* m_pExgSys;
public:
	void STDMETHODCALLTYPE GWLogin(char* szGWName, DWORD nIP);
	void STDMETHODCALLTYPE GWLogout(char* szGWName, DWORD nIP);
	void STDMETHODCALLTYPE GWSubLogout(DWORD nGWIP, DWORD nSubIP);
	void STDMETHODCALLTYPE OnlinePlayerCount(char* szGWName, DWORD nCount);
	void STDMETHODCALLTYPE RegisterUserCount(DWORD nCount);
	void STDMETHODCALLTYPE PlayerAccountAtGW(char* szAccount, DWORD nIP,
											 int nX, int nY, int nSubWorld,
											 char* szCurRole);
	void STDMETHODCALLTYPE GameWorldRelayID(char* szGWName, DWORD nRelayID);
	void STDMETHODCALLTYPE PlayerAccountAtGWID(char* szAccount, DWORD nRelayID);
	void STDMETHODCALLTYPE Ping(DWORD nTick);
	void STDMETHODCALLTYPE ConnectClosed();

	void STDMETHODCALLTYPE PlayerTrackingData(char* szAccount,void* pData, size_t dataLength);
	void STDMETHODCALLTYPE PlayerInfo(char* szAccount, WORD ninfo, void* pData, size_t dataLength);
	void STDMETHODCALLTYPE PlayerRoleList(char* szAccount, WORD wRoleCount, void* pRoleList);
	void STDMETHODCALLTYPE PlayerMessage(char* szAccountFrom, char* szRole, char* szMessage, int nMsgLen, DWORD dwGWIP);
};

#endif //__EVENTHANDLER_H__
