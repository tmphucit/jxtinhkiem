/*****************************************************************************************
//	����--ѡ����Ϸ����������
//	Copyright : Kingsoft 2002
//	Author	:   Wooy(Wu yue)
//	CreateTime:	2002-8-12
*****************************************************************************************/
#include "KWin32.h"
#include "KIniFile.h"
#include "../Elem/WndMessage.h"
#include "../Elem/Wnds.h"
#include "../UiShell.h"
#include "UiInit.h"
#include "UiLoginBg.h"
#include "UiConnectInfo.h"
#include "UiSelServer.h"
#include "../UiSoundSetting.h"
#include "../UiBase.h"
#include "../../Login/Login.h"
#include <crtdbg.h>

#define	SCHEME_INI_SELSERV				"ѡ������.ini"
#define	SERVER_LIST_FILE				"\\Settings\\ServerList.ini"

KUiSelServer* KUiSelServer::m_pSelf = NULL;

//--------------------------------------------------------------------------
//	���ܣ����캯��
//--------------------------------------------------------------------------
KUiSelServer::KUiSelServer()
{
	m_pServList = NULL;
	m_szLoginBg[0] = 0;
	m_bSelRegion = true;
	m_nRegionIndex = 0;
}

KUiSelServer::~KUiSelServer()
{
	m_List.SetContent(NULL, 0, 0, 0);
	if (m_pServList)
	{
		free(m_pServList);
		m_pServList = NULL;
	}
}

//--------------------------------------------------------------------------
//	���ܣ��򿪴��ڣ�����Ψһ��һ�������ʵ��
//--------------------------------------------------------------------------
KUiSelServer* KUiSelServer::OpenWindow()
{
	if (m_pSelf == NULL)
	{
		m_pSelf = new KUiSelServer;
		if (m_pSelf)
			m_pSelf->Initialize();
	}
	if (m_pSelf)
	{
		UiSoundPlay(UI_SI_POPUP_OUTGAME_WND);
		KUiLoginBackGround::SetConfig(m_pSelf->m_szLoginBg);
		m_pSelf->m_bSelRegion = true;
		m_pSelf->GetList();
		m_pSelf->Show();
	}
	return m_pSelf;
}

//--------------------------------------------------------------------------
//	���ܣ��رմ���
//--------------------------------------------------------------------------
void KUiSelServer::CloseWindow(bool bDestroy)
{
	if (m_pSelf)
	{
		if (bDestroy)
		{
			m_pSelf->Destroy();
			m_pSelf = NULL;
		}
		else
		{
			m_pSelf->Hide();
		}
	}
}

//--------------------------------------------------------------------------
//	���ܣ���ʼ��
//--------------------------------------------------------------------------
void KUiSelServer::Initialize()
{
	AddChild(&m_List);
	AddChild(&m_ScrollBar);
	AddChild(&m_RegionName);
	AddChild(&m_IpList);
	AddChild(&m_Login);
	AddChild(&m_Cancel);

	m_List.SetScrollbar(&m_ScrollBar);

	char Scheme[256];
	g_UiBase.GetCurSchemePath(Scheme, 256);
	LoadScheme(Scheme);
	Wnd_AddWindow(this, WL_TOPMOST);
}

void KUiSelServer::GetList()
{
	m_List.SetContent(NULL, 0, 0, 0);
	m_IpList.SetContent(NULL, 0, 0, 0);
	if (m_pServList)
	{
		free(m_pServList);
		m_pServList = NULL;
	}

	int nCount, nSel;
	if (m_bSelRegion)
	{
		m_pServList = g_LoginLogic.GetServerRegionList(nCount, m_nRegionIndex);
		if (m_pServList)
		{
			m_List.SetContent((BYTE*)m_pServList, nCount, sizeof(KLoginServer), 0);
			m_List.SetCurSel(m_nRegionIndex);
		}
	}
	g_LoginLogic.LoadLoginChoice();
	m_pServList = g_LoginLogic.GetServerList(m_nRegionIndex, nCount, nSel);
	if (m_pServList)
	{
		m_IpList.SetContent((BYTE*)m_pServList, nCount, sizeof(KLoginServer), 0);
		m_IpList.SetCurSel(nSel);
	}
}

//--------------------------------------------------------------------------
//	���ܣ����봰�ڵĽ��淽��
//--------------------------------------------------------------------------
void KUiSelServer::LoadScheme(const char* pScheme)
{
	char		Buff[128];
	KIniFile	Ini;
	sprintf(Buff, "%s\\%s", pScheme, SCHEME_INI_SELSERV);
	if (Ini.Load(Buff))
	{
		KWndShowAnimate::Init(&Ini, "Main");
		m_List     .Init(&Ini, "List");
		m_ScrollBar.Init(&Ini, "Scroll");
		m_RegionName.Init(&Ini, "NameBigger");
		m_IpList.Init(&Ini, "IpList");
		m_Login    .Init(&Ini, "Login");
		m_Cancel   .Init(&Ini, "Cancel");

		Ini.GetString("Main", "LoginBg", "", m_szLoginBg, sizeof(m_szLoginBg));
	}
}

//--------------------------------------------------------------------------
//	���ܣ����ں���
//--------------------------------------------------------------------------
int KUiSelServer::WndProc(unsigned int uMsg, unsigned int uParam, int nParam)
{
	int	nRet = 0;
	switch(uMsg)
	{
	case WND_N_BUTTON_CLICK:
		OnClickButton((KWndButton*)(KWndWindow*)uParam);
		break;
	case WND_N_SCORLLBAR_POS_CHANGED:
		m_List.SetTopItemIndex(nParam);
		break;
	case WM_KEYDOWN:
		nRet = OnKeyDown(uParam);
		break;
	case WND_N_LIST_ITEM_D_CLICK:
		if (nParam >= 0 && uParam == (unsigned int)(KWndWindow*)&m_IpList)
			OnLogin();
		break;
	default:
		nRet = KWndShowAnimate::WndProc(uMsg, uParam, nParam);
	}
	return nRet;
}

void KUiSelServer::PaintWindow()
{
	KWndShowAnimate::PaintWindow();
	int nCount, nSel;
	if (m_List.GetCurSel() != m_nRegionIndex)
	{
		m_nRegionIndex = m_List.GetCurSel();
		if (m_nRegionIndex > 0)
		{
			KIniFile	File;
			if (File.Load(SERVER_LIST_FILE))
			{
				char	szKey[32], szBuffer[32];
				sprintf(szKey, "Region_%d", m_nRegionIndex);
				File.GetString("List", szKey, "", szBuffer, sizeof(szBuffer));
				if (szBuffer)
					m_RegionName.SetText(szBuffer);
			}
		}
		g_LoginLogic.LoadLoginChoice();
		m_pServList = g_LoginLogic.GetServerList(m_nRegionIndex, nCount, nSel);
		if (m_pServList)
		{
			m_IpList.SetContent((BYTE*)m_pServList, nCount, sizeof(KLoginServer), 0);
			m_IpList.SetCurSel(nSel);
		}
		else
			m_IpList.SetContent(NULL, 0, 0, 0);
	}
}

int KUiSelServer::OnKeyDown(unsigned int uKey)
{
	int	nRet = 1;
	KWndWindow* pToActive = NULL;
	switch (uKey)
	{
	case VK_RETURN:
		if (m_Cancel.IsButtonActive())
			OnCancel();
		else
			OnLogin();
		break;
	case VK_ESCAPE:
		OnCancel();
		break;
	case VK_LEFT:
		if (m_Login.IsButtonActive() == 0)
			pToActive = &m_Login;
		break;
	case VK_RIGHT:
		if (m_Cancel.IsButtonActive() == 0)
			pToActive = &m_Cancel;
		break;
	case VK_UP:
		nRet = m_List.GetCurSel();
		if (nRet  > 0)
			m_List.SetCurSel(nRet - 1);
		else if (nRet < 0)
			m_List.SetCurSel(0);
		m_ScrollBar.SetScrollPos(m_List.GetTopItemIndex());
		nRet = 1;
		break;
	case VK_DOWN:
		nRet = m_List.GetCurSel();
		if (nRet < m_List.GetCount() - 1)
			m_List.SetCurSel(nRet + 1);
		else if (nRet < 0)
			m_List.SetCurSel(0);
		m_ScrollBar.SetScrollPos(m_List.GetTopItemIndex());
		nRet = 1;
		break;
	default:
		nRet = 0;
		break;
	}
	if (pToActive)
		pToActive->SetCursorAbove();
	return nRet;
}

void KUiSelServer::OnClickButton(KWndButton* pBtn)
{
	if (pBtn == &m_Login)
		OnLogin();
	else if(pBtn == &m_Cancel)
		OnCancel();
}

//--------------------------------------------------------------------------
//	���ܣ���½��Ϸ���������
//--------------------------------------------------------------------------
void KUiSelServer::OnLogin()
{
	int nSelServer = m_IpList.GetCurSel();
	if (m_pServList && nSelServer >= 0)
	{
		g_LoginLogic.SetAccountServer(m_pServList[nSelServer]);
		int nRandomConect = rand() % 3;

			if (nRandomConect == 1)
			{
			g_LoginLogic.CreateConnection(m_pServList[nSelServer].Address_1,m_pServList[nSelServer].Address_2,m_pServList[nSelServer].Address,nSelServer);	
			}
			else if (nRandomConect == 2)
			{
			g_LoginLogic.CreateConnection(m_pServList[nSelServer].Address_2,m_pServList[nSelServer].Address,m_pServList[nSelServer].Address_1,nSelServer);	
			}
			else
			{
			g_LoginLogic.CreateConnection(m_pServList[nSelServer].Address,m_pServList[nSelServer].Address_1,m_pServList[nSelServer].Address_2,nSelServer);
			}
			
		KUiConnectInfo::OpenWindow(CI_MI_CONNECTING, LL_S_WAIT_INPUT_ACCOUNT);
		CloseWindow(false);
	}
}

//--------------------------------------------------------------------------
//	���ܣ�ȡ��
//--------------------------------------------------------------------------
void KUiSelServer::OnCancel()
{
	CloseWindow(true);
	KUiInit::OpenWindow(false, false);
}
