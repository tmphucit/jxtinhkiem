// -------------------------------------------------------------------------
//	�ļ���		��	UiTrade.h
//	������		��	Wooy(Wu yue)
//	����ʱ��	��	2002-12-21
//	��������	��	npc����ϵͳ����
// -------------------------------------------------------------------------
#include "KWin32.h"
#include "KIniFile.h"
#include "../Elem/WndMessage.h"
#include "../elem/wnds.h"
#include "UiShopGold.h"
#include "UiItem.h"
#include "UiStatus.h"
#include "UiTradeConfirmWnd.h"
#include "../../../core/src/CoreObjGenreDef.h"
#include "../../../core/src/coreshell.h"
#include "../UiSoundSetting.h"
#include "../UiBase.h"
#include "UiInformation.h"
#include <crtdbg.h>

extern iCoreShell*		g_pCoreShell;

#define SCHEME_INI		"ky_tran_cac.ini"

KUiShopGold* KUiShopGold::m_pSelf = NULL;

KUiShopGold::KUiShopGold()
{
	m_pObjsList = NULL;
	m_nObjCount = 0;
	m_nPageCount = 0;
}

//--------------------------------------------------------------------------
//	���ܣ��������������ʾ���򷵻�ʵ��ָ��
//--------------------------------------------------------------------------
KUiShopGold* KUiShopGold::GetIfVisible()
{
	return m_pSelf;
}

//--------------------------------------------------------------------------
//	���ܣ��򿪴��ڣ�����Ψһ��һ�������ʵ��
//--------------------------------------------------------------------------
KUiShopGold* KUiShopGold::OpenWindow()
{
	if (m_pSelf == NULL)
	{
		m_pSelf = new KUiShopGold;
		if (m_pSelf)
			m_pSelf->Initialize();
	}
	if (m_pSelf)
	{
		g_UiBase.SetStatus(UIS_S_TRADE_NPC);

		m_pSelf->UpdateData();
		m_pSelf->BringToTop();
		m_pSelf->Show();

	    

		if (KUiItem::GetIfVisible() == NULL)
			KUiItem::OpenWindow();
		else
			UiSoundPlay(UI_SI_WND_OPENCLOSE);
		KUiItem::OnNpcTradeMode(true);
	}
	return m_pSelf;
}

//--------------------------------------------------------------------------
//	���ܣ��رմ��ڣ�ͬʱ����ѡ���Ƿ�ɾ������ʵ��
//--------------------------------------------------------------------------
void KUiShopGold::CloseWindow()
{
	if (m_pSelf)
	{
		if (g_pCoreShell)
		{
		g_pCoreShell->OperationRequest(GOI_STOP_TRADE_BUY_NPC,0,0);
		}

		KUiItem::OnNpcTradeMode(false);
		KUiTradeConfirm::CloseWindow(true);
		g_UiBase.SetStatus(UIS_S_IDLE);
		m_pSelf->Destroy();
		m_pSelf = NULL;
	}
}

//��ʼ��
void KUiShopGold::Initialize()
{
	AddChild(&m_ItemsBox);
	AddChild(&m_BuyBtn);
	AddChild(&m_PreBtn);
	AddChild(&m_NextBtn);
	AddChild(&m_CloseBtn);
	
	m_ItemsBox.SetContainerId((int)UOC_NPC_SHOP);
	Wnd_AddWindow(this);
	char Scheme[256];
	g_UiBase.GetCurSchemePath(Scheme, 256);
	LoadScheme(Scheme);
}

//������淽��
void KUiShopGold::LoadScheme(const char* pScheme)
{
	if (m_pSelf)
	{		
		char		Buff[128];
		KIniFile	Ini;
		sprintf(Buff, "%s\\"SCHEME_INI, pScheme);
		if (Ini.Load(Buff))
		{
			m_pSelf->KWndShowAnimate::Init(&Ini, "Main");
			m_pSelf->m_ItemsBox.Init(&Ini, "ItemBox");
			m_pSelf->m_BuyBtn.Init(&Ini, "BuyBtn");
			m_pSelf->m_PreBtn.Init(&Ini, "LeftBtn");
			m_pSelf->m_NextBtn.Init(&Ini,"RightBtn");
			m_pSelf->m_CloseBtn.Init(&Ini, "CloseBtn");

			m_pSelf->m_ItemsBox.EnablePickPut(false);
		}
	}
}

void KUiShopGold::CancelTrade()
{
	CloseWindow();
}

//���ں���
int	KUiShopGold::WndProc(unsigned int uMsg, unsigned int uParam, int nParam)
{
	switch (uMsg)
	{
	case WND_N_BUTTON_CLICK:
		OnClickButton((KWndButton*)(KWndWindow*)uParam, nParam);
		break;
	case WND_N_LEFT_CLICK_ITEM:
		OnBuyItem((KUiDraggedObject*)uParam,
			g_UiBase.GetStatus() == UIS_S_TRADE_BUY);
		break;
	case WND_N_RIGHT_CLICK_ITEM:
		if (nParam == (int)(KWndWindow*)&m_ItemsBox)
			OnBuyItem((KUiDraggedObject*)uParam, true);
		break;
	case WM_KEYDOWN:
		if (uParam == VK_ESCAPE)
		{
			if (g_UiBase.GetStatus() == UIS_S_TRADE_NPC)
			{
				CloseWindow();
			}
			else
			{
				m_BuyBtn.CheckButton(false);
				g_UiBase.SetStatus(UIS_S_TRADE_NPC);
			}
		}
		break;
	default:
		return KWndShowAnimate::WndProc(uMsg, uParam, nParam);
	}
	return 0;
}

void KUiShopGold::OnBuyItem(KUiDraggedObject* pItem, bool bDoImmed)
{
	if (pItem == NULL || g_pCoreShell == NULL)
		return;

	KUiObjAtContRegion	Obj;
	Obj.Obj.uGenre = pItem->uGenre;
	Obj.Obj.uId = pItem->uId;
	Obj.Region.h = pItem->DataX;
	Obj.Region.v = pItem->DataY;
	Obj.Region.Width  = pItem->DataW;
	Obj.Region.Height = pItem->DataH;
	Obj.eContainer = UOC_NPC_SHOP;

	if (bDoImmed == false)
	{
		KUiItemBuySelInfo	Price = { 0 };
		if (g_pCoreShell->GetGameData(GDI_SHOP_ITEM_PRICE_GOLD,
			(unsigned int)(&Obj), (int)(&Price)) == 1)
		{
			KUiTradeConfirm::OpenWindow(&Obj, &Price, TCA_BUY,1);
		}
	}
	else
	{
		g_pCoreShell->OperationRequest(GOI_TRADE_NPC_BUY,
			(unsigned int)(&Obj), 1);
	}
}

void KUiShopGold::OnClickButton(KWndButton* pWnd, int bCheck)
{
	if (Wnd_GetDragObj(NULL))
		return;
	if (pWnd == &m_BuyBtn)
	{
		if (bCheck)
		{
			g_UiBase.SetStatus(UIS_S_TRADE_BUY);
		}
		else
			g_UiBase.SetStatus(UIS_S_TRADE_NPC);
	}

	else if (pWnd == &m_PreBtn)
		SetPage(m_nCurrentPage - 1);
	else if(pWnd == &m_NextBtn)
		SetPage(m_nCurrentPage + 1);
	else if (pWnd == &m_CloseBtn)
		CloseWindow();
}

void KUiShopGold::SetPage(int nIndex)
{
	if (nIndex >= 0 && nIndex < m_nPageCount && m_pObjsList)
	{
		m_ItemsBox.Clear();
		for (int i = 0; i < m_nObjCount; i++)
		{
			if (m_pObjsList[i].nContainer == nIndex)
				m_ItemsBox.AddObject((KUiDraggedObject*)&m_pObjsList[i], 1);
		}
		m_nCurrentPage = nIndex;
	}
}

void KUiShopGold::UpdateData()
{
	timeGetTime();
	Clear();
	m_nObjCount = g_pCoreShell->GetGameData(GDI_TRADE_NPC_ITEM, 0, 0);
	if (m_nObjCount == 0)
		return;

	if (m_pObjsList = (KUiObjAtContRegion*)malloc(sizeof(KUiObjAtContRegion) * m_nObjCount))
	{
		g_pCoreShell->GetGameData(GDI_TRADE_NPC_ITEM, (unsigned int)m_pObjsList, m_nObjCount);//���߳�ִ�У�nCountֵ����
		m_nPageCount = m_pObjsList[m_nObjCount - 1].nContainer + 1;
		SetPage(0);
		m_PreBtn.Enable(m_nPageCount > 1);
		m_NextBtn.Enable(m_nPageCount > 1);
	}
	else
		m_nObjCount = 0;
}

void KUiShopGold::Clear()
{
	m_nObjCount  = 0;
	m_nPageCount = 0;
	if (m_pObjsList)
	{
		free(m_pObjsList);
		m_pObjsList = NULL;
	}
}
