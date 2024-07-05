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
#include "UiShopPrice.h"
#include "../UiSoundSetting.h"
#include "../../../core/src/coreshell.h"
extern iCoreShell*		g_pCoreShell;

#define	SCHEME_INI 	"dinh_gia_item.ini"

KUiShopPrice* KUiShopPrice::m_pSelf = NULL;

//--------------------------------------------------------------------------
//	���ܣ��򿪴��ڣ�����Ψһ��һ�������ʵ��
//--------------------------------------------------------------------------
KUiShopPrice* KUiShopPrice::OpenWindow(KUiObjAtContRegion* pObj,
			KUiItemBuySelInfo* pPriceInfo)
{
	if (pObj == NULL || pPriceInfo == NULL)
		return NULL;
	if (m_pSelf == NULL)
	{
		m_pSelf = new KUiShopPrice;
		if (m_pSelf)
			m_pSelf->Initialize();
	}
	if (m_pSelf)
	{
		m_pSelf->m_ItemInfo = *pObj;
		m_pSelf->m_PriceInfo = *pPriceInfo;
		UiSoundPlay(UI_SI_WND_OPENCLOSE);
		m_pSelf->BringToTop();
		m_pSelf->Show();
	}
	return m_pSelf;
}

KUiShopPrice::KUiShopPrice()
{
	m_PriceInfo.szItemName[0] = 0;
	m_PriceInfo.nPrice = 0;
	m_ItemInfo.Obj.uGenre = CGOG_NOTHING;
}

//�������������ʾ���򷵻�ʵ��ָ��
KUiShopPrice* KUiShopPrice::GetIfVisible()
{
	if (m_pSelf && m_pSelf->IsVisible())
		return m_pSelf;
	return NULL;
}

//--------------------------------------------------------------------------
//	���ܣ��ر����ٴ���
//--------------------------------------------------------------------------
void KUiShopPrice::CloseWindow(bool bDestroy)
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
void KUiShopPrice::Show()
{
	m_ItemName.SetText(m_PriceInfo.szItemName);
	m_ItemPrice.SetText("0");
	m_ItemPrice.SetIntText(m_PriceInfo.nPrice);

	int Left, Top;
	ALW_GetWndPosition(Left, Top, m_Width, m_Height);
	SetPosition(Left, Top);
	KWndImage::Show();
	Wnd_SetExclusive((KWndWindow*)this);
}

//���ش���
void KUiShopPrice::Hide()
{
	Wnd_ReleaseExclusive((KWndWindow*)this);
	KWndImage::Hide();
}

//--------------------------------------------------------------------------
//	���ܣ���ʼ��
//--------------------------------------------------------------------------
int KUiShopPrice::Initialize()
{
	AddChild(&m_ItemName);
	AddChild(&m_ItemPrice);

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
void KUiShopPrice::LoadScheme(const char* pScheme)
{
	char		Buff[128];
	KIniFile	Ini;
	sprintf(Buff, "%s\\%s", pScheme, SCHEME_INI);
	if (Ini.Load(Buff))
	{
		Init(&Ini, "Main");
		m_ItemName.Init(&Ini, "ItemName");
		m_ItemPrice.Init(&Ini, "ItemPrice");

		m_OkBtn.Init(&Ini, "OkBtn");
		m_CancelBtn.Init(&Ini, "CancelBtn");
	
	
	}
}

//--------------------------------------------------------------------------
//	���ܣ�������Ϣ����
//--------------------------------------------------------------------------
int KUiShopPrice::WndProc(unsigned int uMsg, unsigned int uParam, int nParam)
{
	int nRet = 0;
	switch(uMsg)
	{
	case WND_N_BUTTON_CLICK:
		if (uParam == (unsigned int)(KWndWindow*)&m_OkBtn)
		{

		int nPrice = m_ItemPrice.GetIntNumber();
		if (nPrice < 0)
			nPrice = 0;
		if (nPrice > 999999999)
			nPrice = 999999999;

		g_pCoreShell->OperationRequest(GOI_SHOP_PRICE,
			(unsigned int)(&m_ItemInfo),nPrice);

		OnCancel();
			
		}
		else if (uParam == (unsigned int)(KWndWindow*)&m_CancelBtn)
		{

		int nPrice = m_ItemPrice.GetIntNumber();

			if (nPrice)
			{
			g_pCoreShell->OperationRequest(GOI_SHOP_PRICE,
			(unsigned int)(&m_ItemInfo),0);
			}


			OnCancel();
		}
		

		break;

	case WM_KEYDOWN:
		if (uParam == VK_RETURN)
		{
	
		int nPrice = m_ItemPrice.GetIntNumber();
		if (nPrice < 0)
			nPrice = 0;
		if (nPrice > 999999999)
			nPrice = 999999999;

		g_pCoreShell->OperationRequest(GOI_SHOP_PRICE,
			(unsigned int)(&m_ItemInfo),nPrice);

		OnCancel();
			
		}
		else if (uParam == VK_ESCAPE)
		{

		int nPrice = m_ItemPrice.GetIntNumber();

			if (nPrice)
			{
			g_pCoreShell->OperationRequest(GOI_SHOP_PRICE,
			(unsigned int)(&m_ItemInfo),0);
			}


			OnCancel();
		}
		break;
	default:
		nRet = KWndImage::WndProc(uMsg, uParam, nParam);
	}
	return nRet;
}





void KUiShopPrice::OnCancel()
{
	CloseWindow(false);
}
