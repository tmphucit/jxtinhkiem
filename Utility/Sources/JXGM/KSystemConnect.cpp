// -------------------------------------------------------------------------
//	�ļ���		��	KSystemConnect.cpp
//	������		��	����
//	����ʱ��	��	2003-6-2 20:25:53
//	��������	��	
//
// -------------------------------------------------------------------------

#include "stdafx.h"

#include "KSystemConnect.h"

#include "KProtocolDef.h"
#include "../../Sword3PaySys/S3AccServer/AccountLoginDef.h"
#include "KProtocol.h"

#include <nb30.h>

typedef struct _ASTAT_
{
	ADAPTER_STATUS adapt;
	NAME_BUFFER    NameBuff [30];
}ASTAT, * PASTAT;

// ���������lana_numΪ������ţ�һ��أ���0��ʼ������Windows 2000�в���һ������������� 
void getmac_one(int lana_num, ASTAT& Adapter)
{
    NCB ncb;
    UCHAR uRetCode;

    memset( &ncb, 0, sizeof(ncb) );
    ncb.ncb_command = NCBRESET;
    ncb.ncb_lana_num = lana_num;   
    // ָ��������

	// ���ȶ�ѡ������������һ��NCBRESET����Ա���г�ʼ�� 
    uRetCode = Netbios( &ncb );

    memset( &ncb, 0, sizeof(ncb) );
    ncb.ncb_command = NCBASTAT;
    ncb.ncb_lana_num = lana_num;     // ָ��������

    strcpy( (char *)ncb.ncb_callname, "*               ");
    ncb.ncb_buffer = (unsigned char *) &Adapter;

	// ָ�����ص���Ϣ��ŵı��� 
    ncb.ncb_length = sizeof(Adapter);

	// ���ţ����Է���NCBASTAT�����Ի�ȡ��������Ϣ 
    uRetCode = Netbios( &ncb );

    if ( uRetCode == 0 )
    {
		// ������MAC��ַ��ʽ���ɳ��õ�16������ʽ����0010-A4E4-5802 
//		lana_num
//		  Adapter.adapt.adapter_address[0],
//		  Adapter.adapt.adapter_address[1],
//		  Adapter.adapt.adapter_address[2],
//		  Adapter.adapt.adapter_address[3],
//		  Adapter.adapt.adapter_address[4],
//		  Adapter.adapt.adapter_address[5];
	}
}

int getmac_all(ASTAT** ppBuffer)
{
	NCB ncb;
    UCHAR uRetCode;
    LANA_ENUM lana_enum;

	lana_enum.length = 0;

    memset( &ncb, 0, sizeof(ncb) );
    ncb.ncb_command = NCBENUM;

    ncb.ncb_buffer = (unsigned char *) &lana_enum;
    ncb.ncb_length = sizeof(lana_enum);

	// ����������NCBENUM����Ի�ȡ��ǰ������������Ϣ�����ж��ٸ�������ÿ�������ı�ŵ� 
	uRetCode = Netbios( &ncb );
	if ( uRetCode == 0 && lana_enum.length > 0)
	{
		*ppBuffer = new ASTAT[lana_enum.length];
		// ��ÿһ�������������������Ϊ�����ţ���ȡ��MAC��ַ 
		for ( int i = 0; i < lana_enum.length; ++i)
		{
			getmac_one(lana_enum.lana[i], (*ppBuffer)[i]);
		}
	}

	return lana_enum.length;
}

static int _GetCpuID(BYTE byaryCpuID[12])
{
	DWORD dwaryCPUID[3];

	dwaryCPUID[0] = 0;
	dwaryCPUID[1] = 0;
	dwaryCPUID[2] = 0;
	memcpy(byaryCpuID, dwaryCPUID, 12);

	__try
	{
		__asm mov eax, 0x01
		__asm cpuid
		__asm test edx, (0x01 << 18)
		__asm jz NoSerial
		__asm mov dwaryCPUID[2], eax
		__asm mov eax, 0x03
		__asm cpuid
		__asm mov dwaryCPUID[1], edx
		__asm mov dwaryCPUID[0], ecx
		__asm jmp HaveSerial

	}
	__except (EXCEPTION_EXECUTE_HANDLER)
	{
	}

	NoSerial:
	return FALSE;

	HaveSerial:
	memcpy(byaryCpuID, dwaryCPUID, 12);

	return true;
}

KSystemConnect::KSystemConnect()
{
	m_hLogined = NULL;
	m_bLogined = FALSE;

	m_ProtocolTable[MAKEWORD(pf_normal,s2c_gatewayverify)] = P_Logined;
	m_ProtocolTable[MAKEWORD(pf_normal,s2c_gatewayinfo)] = P_ServerInfo;
	m_ProtocolTable[MAKEWORD(pf_normal,s2c_ping)] = P_Ping;
	m_ProtocolTable[MAKEWORD(pf_gamemaster,gm_s2c_tracking)] = P_PlayerTrackingData;
	m_ProtocolTable[MAKEWORD(pf_gamemaster,gm_s2c_getrole)] = P_PlayerInfo;

	memset(m_MacAddress, 0, 6);
	ASTAT* pBuffer = NULL;
	int n = getmac_all(&pBuffer);
	if (n > 0)
	{
		memcpy(m_MacAddress, pBuffer->adapt.adapter_address, 6);
		delete [] pBuffer;
	}

	//_GetCpuID(m_CPU);
}

KSystemConnect::~KSystemConnect()
{
	if (m_hLogined)
		CloseHandle(m_hLogined);
	m_hLogined = NULL;
}

void KSystemConnect::P_Logined(void* pThis, const void *pData, size_t dataLength)
{
	KSystemConnect* p = (KSystemConnect*)(KConnect*)pThis;
	KAccountUserReturn* pReturn = (KAccountUserReturn*)(((BYTE*)pData) + 2);
	if (pReturn && dataLength - 2 == sizeof(KAccountUserReturn))
	{
		if (pReturn->nReturn == ACTION_SUCCESS)
			p->m_bLogined = TRUE;
	}

	SetEvent(p->m_hLogined);
}

void KSystemConnect::P_ServerInfo(void* pThis, const void *pData, size_t dataLength)
{
	KSystemConnect* p = (KSystemConnect*)(KConnect*)pThis;

	if (!p->m_bLogined)
		return;
	if (!p->m_pEvent)
		return;
	KServerInfo* pReturn = (KServerInfo*)(((BYTE*)pData) + 2);
	if (pReturn && dataLength - 2 == sizeof(KServerInfo))
	{
		switch (pReturn->nServerType)
		{
		case server_Login:
			p->m_pEvent->GWLogin(pReturn->Account, pReturn->nValue);
			break;
		case server_Logout:
			p->m_pEvent->GWLogout(pReturn->Account, pReturn->nValue);
			break;
		case server_RegisterCount:
			p->m_pEvent->RegisterUserCount(pReturn->nValue);
			break;
		case server_OnlinePlayerCount:
			p->m_pEvent->OnlinePlayerCount(pReturn->Account, pReturn->nValue);
			break;
		case server_PlayerWhere:
			p->m_pEvent->PlayerAccountAtGW(pReturn->Account, pReturn->nValue);
			break;
		}
	}
}

void KSystemConnect::P_Ping(void* pThis, const void *pData, size_t dataLength)
{
	KSystemConnect* p = (KSystemConnect*)(KConnect*)pThis;
	if (!p->m_pEvent)
		return;
	PING_COMMAND* pReturn = (PING_COMMAND*)((char*)pData + 1);
	if (pReturn && dataLength - 1 == sizeof(PING_COMMAND))
	{
		p->m_pEvent->Ping(pReturn->m_dwTime);
	}
}

HRESULT STDMETHODCALLTYPE KSystemConnect::Login(char* szGMAccount, char* szPassword, ISystemEvent* pEvent)
{
	HRESULT hr = E_FAIL;
	m_pEvent = pEvent;
	if (NULL == m_hLogined)
	{
		m_hLogined = CreateEvent(NULL, TRUE, FALSE, NULL);

		KServerAccountUserLoginInfo acclogin;
		acclogin.Size = sizeof(KServerAccountUserLoginInfo);
		acclogin.Version = ACCOUNT_CURRENT_VERSION;
		acclogin.Type = ServerAccountUserLoginInfo;
		acclogin.Operate = 0;
		strncpy(acclogin.Account, szGMAccount, LOGIN_USER_ACCOUNT_MAX_LEN);
		strncpy(acclogin.Password, szPassword, LOGIN_USER_PASSWORD_MAX_LEN);
		memcpy(acclogin.MacAddress, m_MacAddress, sizeof(acclogin.MacAddress));
		SendProtocol(c2s_gatewayverify, &acclogin, acclogin.Size);
		
		if (WaitForSingleObject(m_hLogined, FUNC_TIMEOUT) == WAIT_OBJECT_0)
		{
			if (m_bLogined)
				hr = S_OK;
		}
	}
	return hr;
}

void STDMETHODCALLTYPE KSystemConnect::Close()
{
	Stop();
}

void STDMETHODCALLTYPE KSystemConnect::GetOnlinePlayerCount(char* szGWName)
{
	KServerInfo user;
	user.Size = sizeof(KServerInfo);
	user.Type = ServerInfo;
	user.Version = ACCOUNT_CURRENT_VERSION;
	user.Operate = 0;
	strncpy(user.Account, szGWName, LOGIN_USER_ACCOUNT_MAX_LEN);
	user.nServerType = server_OnlinePlayerCount;
	user.nValue = 0;
	SendProtocol(c2s_gatewayinfo, &user, user.Size);
}

void STDMETHODCALLTYPE KSystemConnect::GetRegisterUserCount()
{
	KServerInfo user;
	user.Size = sizeof(KServerInfo);
	user.Type = ServerInfo;
	user.Version = ACCOUNT_CURRENT_VERSION;
	user.Operate = 0;
	user.Account[0] = 0;
	user.nServerType = server_RegisterCount;
	user.nValue = 0;
	SendProtocol(c2s_gatewayinfo, &user, user.Size);
}

void STDMETHODCALLTYPE KSystemConnect::GetPlayerAccountAtGW(char* szAccount)
{
	KServerInfo user;
	user.Size = sizeof(KServerInfo);
	user.Type = ServerInfo;
	user.Version = ACCOUNT_CURRENT_VERSION;
	user.Operate = 0;
	strncpy(user.Account, szAccount, LOGIN_USER_ACCOUNT_MAX_LEN);
	user.nServerType = server_PlayerWhere;
	user.nValue = 0;
	SendProtocol(c2s_gatewayinfo, &user, user.Size);
}

void STDMETHODCALLTYPE KSystemConnect::UnlockPlayerAccount(char* szAccount, char* szPassword)
{
	KAccountUserLoginInfo userlogin;
	userlogin.Size = sizeof(KAccountUserLoginInfo);
	userlogin.Type = AccountUserLoginInfo;
	userlogin.Version = ACCOUNT_CURRENT_VERSION;
	strncpy(userlogin.Account, szAccount, LOGIN_USER_ACCOUNT_MAX_LEN);
	strncpy(userlogin.Password, szPassword, LOGIN_USER_PASSWORD_MAX_LEN);
	SendProtocol(c2s_accountlogin, &userlogin, userlogin.Size);
}

void STDMETHODCALLTYPE KSystemConnect::SendPing()
{
#pragma pack(1)
	typedef struct tagMyPing{
		BYTE byFamily;
		PING_COMMAND oldPing;
	}MYPING;
#pragma pack()
	MYPING PingCmd;
	PingCmd.byFamily = pf_normal;
	PingCmd.oldPing.ProtocolType = c2s_ping;
	PingCmd.oldPing.m_dwTime = GetTickCount();
	SendData(&PingCmd, sizeof(MYPING));
}

void STDMETHODCALLTYPE KSystemConnect::SetOption(bool bOnlinePlayer, bool bRegisterUser, DWORD nAutoTime)
{
	KServerOptionInfo user; 
	user.Size = sizeof(KServerOptionInfo);
	user.Type = ServerOptionInfo;
	user.Version = ACCOUNT_CURRENT_VERSION;
	user.Operate = 0;
	user.nAutoElpase = 0;
	if (bOnlinePlayer)
		user.nAutoElpase |= server_OnlinePlayerCount;
	if (bRegisterUser)
		user.nAutoElpase |= server_RegisterCount;
	user.nMinTime = nAutoTime;
	SendProtocol(c2s_gatewayoption, &user, user.Size);
}

void KSystemConnect::P_PlayerTrackingData(void* pThis, const void *pData, size_t dataLength)
{
	KSystemConnect* p = (KSystemConnect*)(KConnect*)pThis;
	if (!p->m_pEvent)
		return;
	GM_TRACK_SYNC *pNPL = (GM_TRACK_SYNC *)((char*)pData);
	dataLength++;
	if (pNPL && dataLength == sizeof(GM_TRACK_SYNC))
	{
		size_t nOffset = sizeof(pNPL->wLength) + sizeof(pNPL->AccountName) + 1;
		p->m_pEvent->PlayerTrackingData(pNPL->AccountName, ((char*)pData) + nOffset, dataLength - nOffset);
	}
}

void KSystemConnect::P_PlayerInfo(void* pThis, const void *pData, size_t dataLength)
{
	KSystemConnect* p = (KSystemConnect*)(KConnect*)pThis;
	if (!p->m_pEvent)
		return;
	GM_GET_ROLE_DATA_SYNC *pNPL = (GM_GET_ROLE_DATA_SYNC *)((char*)pData);
	dataLength++;
	if (pNPL && dataLength == sizeof(GM_GET_ROLE_DATA_SYNC))
	{
		size_t nOffset = sizeof(pNPL->wLength) + sizeof(pNPL->AccountName) + sizeof(pNPL->wGetID) + 1;
		p->m_pEvent->PlayerInfo(pNPL->AccountName, pNPL->wGetID, ((char*)pData) + nOffset, dataLength - nOffset);
	}
}

void KSystemConnect::P_PlayerMessage(void* pThis, const void *pData, size_t dataLength)
{
}


void STDMETHODCALLTYPE KSystemConnect::ExecuteAction(char* szAccount, char* szScript)
{
	int nszLen = 0;
	if (szScript)
		nszLen = strlen(szScript);
	GM_EXECUTE_COMMAND exe;
	exe.ProtocolFamily = pf_gamemaster;
	exe.ProtocolType = gm_c2s_execute;
	exe.wLength = nszLen;
	exe.wExecuteID = 1;

	SendRelayData(szAccount, &exe, sizeof(GM_EXECUTE_COMMAND), szScript, nszLen);
}

void STDMETHODCALLTYPE KSystemConnect::EnableProtocol(char* szAccount, BYTE nProtocol, void* pData, size_t dataLength)
{
	GM_ENABLE_ACTION_COMMAND exe;
	exe.ProtocolFamily = pf_gamemaster;
	exe.ProtocolType = gm_c2s_enable;
	exe.btProtocol = nProtocol;
	exe.wLength = dataLength;

	SendRelayData(szAccount, &exe, sizeof(GM_ENABLE_ACTION_COMMAND), pData, dataLength);
}

void STDMETHODCALLTYPE KSystemConnect::DisableProtocol(char* szAccount, BYTE nProtocol, void* pData, size_t dataLength)
{
	GM_DISABLE_ACTION_COMMAND exe;
	exe.ProtocolFamily = pf_gamemaster;
	exe.ProtocolType = gm_c2s_disable;
	exe.btProtocol = nProtocol;
	exe.wLength = dataLength;

	SendRelayData(szAccount, &exe, sizeof(GM_DISABLE_ACTION_COMMAND), pData, dataLength);
}

void STDMETHODCALLTYPE KSystemConnect::TrackingPlayer(char* szAccount, bool bTrack)
{
	GM_TRACK_COMMAND exe;
	exe.ProtocolFamily = pf_gamemaster;
	exe.ProtocolType = gm_c2s_tracking;
	exe.btTrackFlag = bTrack;

	SendRelayData(szAccount, &exe, sizeof(GM_TRACK_COMMAND));
}

void STDMETHODCALLTYPE KSystemConnect::GetPlayerInfo(char* szAccount, WORD ninfo)
{
	GM_GET_ROLE_DATA_COMMAND exe;
	exe.ProtocolFamily = pf_gamemaster;
	exe.ProtocolType = gm_c2s_getrole;
	exe.wGetID = ninfo;
	exe.wLength = 0;

	SendRelayData(szAccount, &exe, sizeof(GM_GET_ROLE_DATA_COMMAND));
}

void STDMETHODCALLTYPE KSystemConnect::SetPlayerInfo(char* szAccount, WORD ninfo, void* pData, size_t dataLength)
{
	GM_SET_ROLE_DATA_COMMAND exe;
	exe.ProtocolFamily = pf_gamemaster;
	exe.ProtocolType = gm_c2s_setrole;
	exe.wSetID = ninfo;
	exe.wLength = dataLength;
		
	SendRelayData(szAccount, &exe, sizeof(GM_SET_ROLE_DATA_COMMAND), pData, dataLength);
}

void STDMETHODCALLTYPE KSystemConnect::SendMessage(char* szAccount, char* szMessage)
{
	assert(0);	//todo...
}

void STDMETHODCALLTYPE KSystemConnect::ListenChat(bool bOpen)
{
	assert(0);	//todo...
}
