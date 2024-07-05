/*****************************************************************************************
//	����--���������
//	Copyright : Kingsoft 2003
//	Author	:   Wooy(Wu yue)
//	CreateTime:	2003-4-21
*****************************************************************************************/
#include "KWin32.h"
#include "KIniFile.h"
#include "../elem/wnds.h"
#include "UiSlectBoxCheck.h"
#include "UiItem.h"
#include "../../../core/src/coreshell.h"
#include "../../../core/src/GameDataDef.h"
#include "../UiSoundSetting.h"
#include "../UiBase.h"
#include <crtdbg.h>


extern iCoreShell*		g_pCoreShell;

#define SCHEME_INI_ITEM	"slectboxcheck.ini"

KUiSlectBoxCheck* KUiSlectBoxCheck::m_pSelf = NULL;

enum WAIT_OTHER_WND_OPER_PARAM
{
	UISTOREBOX_WAIT_GETMONEY,
};

//--------------------------------------------------------------------------
//	���ܣ��������������ʾ���򷵻�ʵ��ָ��
//--------------------------------------------------------------------------
KUiSlectBoxCheck* KUiSlectBoxCheck::GetIfVisible()
{
	if (m_pSelf && m_pSelf->IsVisible())
		return m_pSelf;
	return NULL;
}

//--------------------------------------------------------------------------
//	���ܣ��򿪴��ڣ�����Ψһ��һ�������ʵ��
//--------------------------------------------------------------------------
KUiSlectBoxCheck* KUiSlectBoxCheck::OpenWindow(int nId1,int nId2,int nId3)
{
	if (m_pSelf == NULL)
	{
		m_pSelf = new KUiSlectBoxCheck;
		if (m_pSelf)
			m_pSelf->Initialize();
	}
	if (m_pSelf)
	{
		if (KUiItem::GetIfVisible() == NULL)
			KUiItem::OpenWindow();
		else
			UiSoundPlay(UI_SI_WND_OPENCLOSE);


		m_pSelf->m_Button1Btn.SetImage(ISI_T_SPR, m_pSelf->m_szImage[nId1-1]);
		m_pSelf->m_Button1Btn.SetFrame(0);

		m_pSelf->m_Button2Btn.SetImage(ISI_T_SPR, m_pSelf->m_szImage[nId2-1]);
		m_pSelf->m_Button2Btn.SetFrame(0);

		m_pSelf->m_Button3Btn.SetImage(ISI_T_SPR, m_pSelf->m_szImage[nId3-1]);
		m_pSelf->m_Button3Btn.SetFrame(0);

		m_pSelf->BringToTop();
		m_pSelf->Show();

		Wnd_SetExclusive((KWndWindow*)m_pSelf);

		Wnd_GameSpaceHandleInput(false);

	}
	return m_pSelf;
}

//--------------------------------------------------------------------------
//	���ܣ��رմ���
//--------------------------------------------------------------------------
void KUiSlectBoxCheck::CloseWindow()
{
	if (m_pSelf)
	{
		Wnd_GameSpaceHandleInput(true);
		m_pSelf->Destroy();
		m_pSelf = NULL;
	}
}

// -------------------------------------------------------------------------
// ����	: ��ʼ��
// -------------------------------------------------------------------------
void KUiSlectBoxCheck::Initialize()
{

	AddChild(&m_Button1Btn);
	AddChild(&m_Button2Btn);
	AddChild(&m_Button3Btn);

	char Scheme[256];
	g_UiBase.GetCurSchemePath(Scheme, 256);
	LoadScheme(Scheme);

	Wnd_AddWindow(this, WL_TOPMOST);
}

//--------------------------------------------------------------------------
//	���ܣ����캯��
//--------------------------------------------------------------------------



// -------------------------------------------------------------------------
// ����	: ������淽��
// -------------------------------------------------------------------------
void KUiSlectBoxCheck::LoadScheme(const char* pScheme)
{
	char		Buff[128];
	KIniFile	Ini;
	sprintf(Buff, "%s\\%s", pScheme, SCHEME_INI_ITEM);
	if (m_pSelf && Ini.Load(Buff))
	{
		m_pSelf->Init(&Ini, "Main");
		m_pSelf->m_Button1Btn.Init(&Ini, "Button1");
		m_pSelf->m_Button2Btn.Init(&Ini, "Button2");
		m_pSelf->m_Button3Btn.Init(&Ini, "Button3");

		Ini.GetString("Main", "Button1Image", "" , m_pSelf->m_szImage[0], sizeof(m_pSelf->m_szImage[0]));
		Ini.GetString("Main", "Button2Image", "" , m_pSelf->m_szImage[1], sizeof(m_pSelf->m_szImage[1]));
		Ini.GetString("Main", "Button3Image", "" , m_pSelf->m_szImage[2], sizeof(m_pSelf->m_szImage[2]));
		Ini.GetString("Main", "Button4Image", "" , m_pSelf->m_szImage[3], sizeof(m_pSelf->m_szImage[3]));
		Ini.GetString("Main", "Button5Image", "" , m_pSelf->m_szImage[4], sizeof(m_pSelf->m_szImage[4]));
		Ini.GetString("Main", "Button6Image", "" , m_pSelf->m_szImage[5], sizeof(m_pSelf->m_szImage[5]));

	}
}

// -------------------------------------------------------------------------
// ����	: ���ں���
// -------------------------------------------------------------------------
int KUiSlectBoxCheck::WndProc(unsigned int uMsg, unsigned int uParam, int nParam)
{
	switch(uMsg)
	{
	case WND_N_ITEM_PICKDROP:
		break;
	case WND_N_LEFT_CLICK_SHIFT_ITEM:
		break;
	case WND_N_BUTTON_CLICK:


		if (uParam == (unsigned int)(KWndWindow*)&m_Button1Btn)
		{

		if (g_pCoreShell)
		 {
		    g_pCoreShell->OperationRequest(GOI_SLECT_CHECK_BOX,1, 0);
		 }

			CloseWindow();
		}

		else if (uParam == (unsigned int)(KWndWindow*)&m_Button2Btn)
		{

		if (g_pCoreShell)
		 {
		    g_pCoreShell->OperationRequest(GOI_SLECT_CHECK_BOX,2, 0);
		 }

			CloseWindow();
		}

		else if (uParam == (unsigned int)(KWndWindow*)&m_Button3Btn)
		{

		if (g_pCoreShell)
		 {
		    g_pCoreShell->OperationRequest(GOI_SLECT_CHECK_BOX,3, 0);
		 }

			CloseWindow();
		}


		break;
	case WND_M_OTHER_WORK_RESULT:
		break;





	default:
		return KWndShowAnimate::WndProc(uMsg, uParam, nParam);
	}
	return 0;
}


