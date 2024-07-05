// -------------------------------------------------------------------------
//	�ļ���		��	����ȷ�Ͽ�
//	������		��	Wooy(Wu yue)
//	����ʱ��	��	2003-5-28
// -------------------------------------------------------------------------
#include "UiShopName.h"
#include "../../../core/src/coreshell.h"
#include "../Elem/AutoLocateWnd.h"
#include "../Elem/WndMessage.h"
#include "../Elem/Wnds.h"
#include "../UiBase.h"
#include "../UiSoundSetting.h"
#include "KIniFile.h"
#include "KWin32.h"
extern iCoreShell *g_pCoreShell;

#define SHOP_NAME_SCHEME "ten_cua_hang.ini"

KUiShopName *KUiShopName::m_pSelf = NULL;

//--------------------------------------------------------------------------
//	���ܣ��򿪴��ڣ�����Ψһ��һ�������ʵ��
//--------------------------------------------------------------------------
KUiShopName *KUiShopName::OpenWindow() {

  if (m_pSelf == NULL) {
    m_pSelf = new KUiShopName;
    if (m_pSelf)
      m_pSelf->Initialize();
  }
  if (m_pSelf) {

    UiSoundPlay(UI_SI_WND_OPENCLOSE);
    m_pSelf->BringToTop();
    m_pSelf->Show();
  }
  return m_pSelf;
}

KUiShopName::KUiShopName() {}

// �������������ʾ���򷵻�ʵ��ָ��
KUiShopName *KUiShopName::GetIfVisible() {
  if (m_pSelf && m_pSelf->IsVisible())
    return m_pSelf;
  return NULL;
}

//--------------------------------------------------------------------------
//	���ܣ��ر����ٴ���
//--------------------------------------------------------------------------
void KUiShopName::CloseWindow(bool bDestroy) {
  if (m_pSelf) {
    if (bDestroy == false)
      m_pSelf->Hide();
    else {
      m_pSelf->Destroy();
      m_pSelf = NULL;
    }
  }
}

// ��ʾ����
void KUiShopName::Show() {
  m_StringEdit.SetText("T�n c�a h�ng");
  KWndImage::Show();
  Wnd_SetExclusive((KWndWindow *)this);
}

// ���ش���
void KUiShopName::Hide() {
  Wnd_ReleaseExclusive((KWndWindow *)this);
  KWndImage::Hide();
}

//--------------------------------------------------------------------------
//	���ܣ���ʼ��
//--------------------------------------------------------------------------
void KUiShopName::Initialize() {

  AddChild(&m_StringEdit);

  AddChild(&m_BtnDone);
  AddChild(&m_BtnCancel);

  char Scheme[256];
  g_UiBase.GetCurSchemePath(Scheme, 256);
  LoadScheme(Scheme);

  Wnd_AddWindow(this);
}

/*********************************************************************
 * ���ܣ�������淽��
 **********************************************************************/
void KUiShopName::LoadScheme(const char *pScheme) {
  if (m_pSelf) {
    char Buff[128];
    KIniFile Ini;
    sprintf(Buff, "%s\\%s", pScheme, SHOP_NAME_SCHEME);
    if (Ini.Load(Buff)) {
      m_pSelf->Init(&Ini, "Main");
      m_pSelf->m_StringEdit.Init(&Ini, "Input");
      m_pSelf->m_BtnDone.Init(&Ini, "BtnDone");
      m_pSelf->m_BtnCancel.Init(&Ini, "BtnCancel");
    }
    /*--------------------*/
  }
  /*--------------------*/
}

//--------------------------------------------------------------------------
//	���ܣ�������Ϣ����
//--------------------------------------------------------------------------
int KUiShopName::WndProc(unsigned int uMsg, unsigned int uParam, int nParam) {
  int nRet = 0;
  switch (uMsg) {
  case WND_N_BUTTON_CLICK:
    if (uParam == (unsigned int)(KWndWindow *)&m_BtnDone) {
      OnOk();
    } else if (uParam == (unsigned int)(KWndWindow *)&m_BtnCancel) {
      OnCancel();
    }

    break;
  case WND_N_EDIT_CHANGE:
    break;
  case WM_KEYDOWN:
    if (uParam == VK_RETURN) {

      OnOk();

      nRet = 1;
    } else if (uParam == VK_ESCAPE) {
      OnCancel();
      nRet = 1;
    }
    break;
  default:
    nRet = KWndImage::WndProc(uMsg, uParam, nParam);
  }
  return nRet;
}

//--------------------------------------------------------------------------
//	���ܣ���Ӧ�����ť
//--------------------------------------------------------------------------
void KUiShopName::OnOk() {
  char Buff[32];

  m_StringEdit.GetText(Buff, sizeof(Buff), TRUE);

  if (Buff[0] && g_pCoreShell) {
    g_pCoreShell->OperationRequest(GOI_SHOP_NAME, (unsigned int)(&Buff), 0);
  }
  CloseWindow(false);
}

void KUiShopName::OnCancel() { CloseWindow(false); }
