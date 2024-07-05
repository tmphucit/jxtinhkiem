// -------------------------------------------------------------------------
//	�ļ���		��	KSystemConnect.h
//	������		��	����
//	����ʱ��	��	2003-6-2 20:25:48
//	��������	��	
//
// -------------------------------------------------------------------------
#ifndef __KSYSTEMCONNECT_H__
#define __KSYSTEMCONNECT_H__

#include "Headers\jxgm_i.h"
#include "KConnect.h"
#include "KGmProtocol.h"

class KSystemConnect : public ISystemConnect, public KConnect
{
public:
	KSystemConnect();
	virtual ~KSystemConnect();

protected:
	ISystemEvent* m_pEvent;
	HANDLE m_hLogined;
	BOOL m_bLogined;
	BYTE m_MacAddress[6];

	static void P_PlayerTrackingData(void* pThis, const void *pData, size_t dataLength);
	static void P_PlayerInfo(void* pThis, const void *pData, size_t dataLength);
	static void P_PlayerMessage(void* pThis, const void *pData, size_t dataLength);
	static void P_Logined(void* pThis, const void *pData, size_t dataLength);
	static void P_ServerInfo(void* pThis, const void *pData, size_t dataLength);
	static void P_Ping(void* pThis, const void *pData, size_t dataLength);
	
	virtual HRESULT STDMETHODCALLTYPE Login(char* szGMAccount, char* szPassword, ISystemEvent* pEvent);
	virtual void STDMETHODCALLTYPE Close();
	virtual void STDMETHODCALLTYPE GetOnlinePlayerCount(char* szGWName);
	virtual void STDMETHODCALLTYPE GetRegisterUserCount();
	virtual void STDMETHODCALLTYPE GetPlayerAccountAtGW(char* szAccount);
	virtual void STDMETHODCALLTYPE UnlockPlayerAccount(char* szAccount, char* szPassword);
	virtual void STDMETHODCALLTYPE SendPing();

	virtual void STDMETHODCALLTYPE SetOption(bool bOnlinePlayer, bool bRegisterUser, DWORD nAutoTime);
	virtual void STDMETHODCALLTYPE ExecuteAction(char* szAccount, char* szScript);
	virtual void STDMETHODCALLTYPE EnableProtocol(char* szAccount, BYTE nProtocol, void* pData, size_t dataLength);
	virtual void STDMETHODCALLTYPE DisableProtocol(char* szAccount, BYTE nProtocol, void* pData, size_t dataLength);
	virtual void STDMETHODCALLTYPE TrackingPlayer(char* szAccount, bool bTrack);
	virtual void STDMETHODCALLTYPE GetPlayerInfo(char* szAccount, WORD ninfo);
	virtual void STDMETHODCALLTYPE SetPlayerInfo(char* szAccount, WORD ninfo, void* pData, size_t dataLength);
	virtual void STDMETHODCALLTYPE SendMessage(char* szAccount, char* szMessage);
	virtual void STDMETHODCALLTYPE ListenChat(bool bOpen);
};

#endif // __KSYSTEMCONNECT_H__