// -------------------------------------------------------------------------
//	�ļ���		��	����ȷ�Ͽ�
//	������		��	Wooy(Wu yue)
//	����ʱ��	��	2003-5-28
// -------------------------------------------------------------------------
#include "KWin32.h"
#include "KIniFile.h"
#include "../Elem/AutoLocateWnd.h"
#include "../Elem/WndMessage.h"
#include "../Elem/Wnds.h"
#include "../UiBase.h"
#include "BuySlectItemShop.h"
#include "../UiSoundSetting.h"
#include "../../../core/src/coreshell.h"
extern iCoreShell*		g_pCoreShell;

#define	SCHEME_INI 	"buyslectshop.ini"

KBuySlectItemShop* KBuySlectItemShop::m_pSelf = NULL;

//--------------------------------------------------------------------------
//	���ܣ��򿪴��ڣ�����Ψһ��һ�������ʵ��
//--------------------------------------------------------------------------
KBuySlectItemShop* KBuySlectItemShop::OpenWindow(KUiObjAtContRegion* pObj,
			KUiItemBuySelInfo* pPriceInfo)
{
	if (pObj == NULL || pPriceInfo == NULL)
		return NULL;
	if (m_pSelf == NULL)
	{
		m_pSelf = new KBuySlectItemShop;
		if (m_pSelf)
			m_pSelf->Initialize();
	}
	if (m_pSelf)
	{

	

			int nHoldMoney = g_pCoreShell->GetGameData(GDI_PLAYER_HOLD_MONEY, 0, 0);
			m_pSelf->m_OkBtn.Enable(nHoldMoney >= pPriceInfo->nPrice);
			m_pSelf->m_Money.SetTextColor((nHoldMoney >= pPriceInfo->nPrice) ?
				m_pSelf->m_uNormalPriceColor : m_pSelf->m_uNotEnoughMoneyPriceColor);
	
		m_pSelf->m_ItemInfo = *pObj;
		m_pSelf->m_PriceInfo = *pPriceInfo;
		UiSoundPlay(UI_SI_WND_OPENCLOSE);
		m_pSelf->BringToTop();
		m_pSelf->Show();
	}
	return m_pSelf;
}

KBuySlectItemShop::KBuySlectItemShop()
{
	m_PriceInfo.szItemName[0] = 0;
	m_PriceInfo.nPrice = 0;
	m_ItemInfo.Obj.uGenre = CGOG_NOTHING;
}

//�������������ʾ���򷵻�ʵ��ָ��
KBuySlectItemShop* KBuySlectItemShop::GetIfVisible()
{
	if (m_pSelf && m_pSelf->IsVisible())
		return m_pSelf;
	return NULL;
}

//--------------------------------------------------------------------------
//	���ܣ��ر����ٴ���
//--------------------------------------------------------------------------
void KBuySlectItemShop::CloseWindow(bool bDestroy)
{
	if (m_pSelf)
	{
		if (bDestroy == false)
			m_pSelf->Hide();
		else
		{
			m_pSelf->Destroy();
			m_pSelf = NULL;
		}
	}
}


//��ʾ����
void KBuySlectItemShop::Show()
{
	m_ItemName.SetText(m_PriceInfo.szItemName);
	int van = m_PriceInfo.nPrice/10000;
	int luong = m_PriceInfo.nPrice%10000;

	char ngan_luong[32] = "";
	if (van > 0)
	sprintf(ngan_luong,"%d %s ",van,"v�n");

	sprintf(ngan_luong,"%s%d %s",ngan_luong,luong,"l��ng");
	m_Money.SetText(ngan_luong);

	int Left, Top;
	ALW_GetWndPosition(Left, Top, m_Width, m_Height);
	SetPosition(Left, Top);
	KWndImage::Show();
	Wnd_SetExclusive((KWndWindow*)this);
}

//���ش���
void KBuySlectItemShop::Hide()
{
	Wnd_ReleaseExclusive((KWndWindow*)this);
	KWndImage::Hide();
}

//--------------------------------------------------------------------------
//	���ܣ���ʼ��
//--------------------------------------------------------------------------
int KBuySlectItemShop::Initialize()
{
	AddChild(&m_Image);
	AddChild(&m_ItemName);
	AddChild(&m_Money);
	
	AddChild(&m_OkBtn);
	AddChild(&m_CancelBtn);

	Wnd_AddWindow(this);

	char Scheme[256];
	g_UiBase.GetCurSchemePath(Scheme, 256);
	LoadScheme(Scheme);
	
	return true;
}

//--------------------------------------------------------------------------
//	���ܣ����봰�ڵĽ��淽��
//--------------------------------------------------------------------------
void KBuySlectItemShop::LoadScheme(const char* pScheme)
{
	char		Buff[128];
	KIniFile	Ini;
	sprintf(Buff, "%s\\%s", pScheme, SCHEME_INI);
	if (Ini.Load(Buff))
	{
		Init(&Ini, "Main");

		m_Image.Init(&Ini, "Image");
		m_ItemName.Init(&Ini, "ItemName");

		m_Money.Init(&Ini, "Price");			
		Ini.GetString("Price", "Color", "", Buff, sizeof(Buff));
		m_uNormalPriceColor = GetColor(Buff);
		Ini.GetString("Price", "CantBuyColor", "", Buff, sizeof(Buff));
		m_uNotEnoughMoneyPriceColor = GetColor(Buff);

	
		m_OkBtn.Init(&Ini, "OkBtn");
		m_CancelBtn.Init(&Ini, "CancelBtn");

	
	}
}

//--------------------------------------------------------------------------
//	���ܣ�������Ϣ����
//--------------------------------------------------------------------------
int KBuySlectItemShop::WndProc(unsigned int uMsg, unsigned int uParam, int nParam)
{
	int nRet = 0;
	switch(uMsg)
	{
	case WND_N_BUTTON_CLICK:
		if (uParam == (unsigned int)(KWndWindow*)&m_OkBtn)
		{
			

			g_pCoreShell->OperationRequest(GOI_SHOP_BUY_ITEM,
			(unsigned int)(&m_ItemInfo),0);



			OnCancel();
		}
		else if (uParam == (unsigned int)(KWndWindow*)&m_CancelBtn)
			OnCancel();
	

		break;

	case WM_KEYDOWN:
		if (uParam == VK_RETURN)
		{
		
			g_pCoreShell->OperationRequest(GOI_SHOP_BUY_ITEM,
			(unsigned int)(&m_ItemInfo),0);

			OnCancel();
		
			nRet = 1;
		}
		else if (uParam == VK_ESCAPE)
		{
			OnCancel();
			nRet = 1;
		}
		break;
	default:
		nRet = KWndImage::WndProc(uMsg, uParam, nParam);
	}
	return nRet;
}




void KBuySlectItemShop::OnCancel()
{
	CloseWindow(false);
}
