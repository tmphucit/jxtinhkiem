/*****************************************************************************************
//	����--��Ϣ����
//	Copyright : Kingsoft 2002
//	Author	:   Wooy(Wu yue)
//	CreateTime:	2002-8-14
------------------------------------------------------------------------------------------
*****************************************************************************************/
#include "UiInformation1.h"
#include "../Elem/WndMessage.h"
#include "../Elem/Wnds.h"
#include "../UiSoundSetting.h"
#include "CoreShell.h"
#include "KIniFile.h"
#include "KWin32.h"
#include "Text.h"
#define SCHEME_INI "��ʾ1.ini"
#define DEFAULT_MSGIMAGE "\\Spr\\Ui\\ϵͳ��Ϣͼ��\\ϵͳ.spr"
#include "../../../Represent/iRepresent/iRepresentShell.h"
extern iCoreShell *g_pCoreShell;
extern iRepresentShell *g_pRepresentShell;
KUiInformation1 g_UiInformation1;

void UIMessageBox1(const char *pMsg, int nMsgLen /*= -1*/,
                   KWndWindow *pCaller /*= 0*/,
                   const char *pszFirstBtnText /*= "ȷ��"*/,
                   const char *pszSecondBtnText /*= 0*/,
                   unsigned int uParam /*= 0*/, const char *pszImage /*= 0*/,
                   int nLeftTime /*= -1*/) {
  g_UiInformation1.Show(pMsg, nMsgLen, pszFirstBtnText, pszSecondBtnText,
                        pCaller, uParam, pszImage, nLeftTime);
}

void UiCloseMessageBox1() { g_UiInformation1.Close(); }

//--------------------------------------------------------------------------
//	���ܣ����캯��
//--------------------------------------------------------------------------
KUiInformation1::KUiInformation1() {
  m_pWordDataList = NULL;
  m_pCallerWnd = NULL;
  m_nMsgIconFrame = 0;
}

// ��ʾ�Ի�����
void KUiInformation1::SpeakWords(KUiInformationParam *pWordDataList, int nCount,
                                 int nLeftTime /*= -1*/) {
  if (pWordDataList == NULL || nCount <= 0)
    return;
  KUiInformationParam *pNewList =
      (KUiInformationParam *)malloc(sizeof(KUiInformationParam) * nCount);
  if (pNewList == NULL)
    return;

  memcpy(&pNewList[0], pWordDataList, sizeof(KUiInformationParam) * nCount);

  if (m_pWordDataList)
    free(m_pWordDataList);
  m_pWordDataList = pNewList;

  KWndWindow *pCaller = ((KWndWindow *)WND_GAMESPACE);
  Show(m_pWordDataList->sInformation, m_pWordDataList->nInforLen,
       m_pWordDataList[1].sInformation, m_pWordDataList[2].sInformation,
       pCaller, 0, "", nLeftTime);
  free(m_pWordDataList);
  m_pWordDataList = NULL;
}
//--------------------------------------------------------------------------
//	���ܣ���ʼ��
//--------------------------------------------------------------------------
void KUiInformation1::Initialize() {
  m_pCallerWnd = NULL;
  AddChild(&m_Information);
  AddChild(&m_FirstBtn);
  AddChild(&m_SecondBtn);
  AddChild(&m_MsgIcon);

  m_Style &= ~WND_S_VISIBLE;
  Wnd_AddWindow(this, WL_TOPMOST);
}

//--------------------------------------------------------------------------
//	���ܣ����봰�ڵĽ��淽��
//--------------------------------------------------------------------------
void KUiInformation1::LoadScheme(const char *pScheme) {
  char Buff[128];
  KIniFile Ini;
  sprintf(Buff, "%s\\%s", pScheme, SCHEME_INI);
  if (Ini.Load(Buff)) {
    KWndShowAnimate::Init(&Ini, "Main");
    m_Information.Init(&Ini, "Info");
    m_FirstBtn.Init(&Ini, "FirstBtn");
    m_SecondBtn.Init(&Ini, "SecondBtn");
    m_MsgIcon.Init(&Ini, "MsgIcon");
  }
}

//--------------------------------------------------------------------------
//	���ܣ���ʾ����
//--------------------------------------------------------------------------
void KUiInformation1::Show(const char *pInformation, int nMsgLen /*= -1*/,
                           const char *pszFirstBtnText,
                           const char *pszSecondBtnText /*= 0*/,
                           KWndWindow *pCallerWnd /*= 0*/,
                           unsigned int uParam /*= 0*/,
                           const char *pszImage /*= 0*/,
                           int nLeftTime /* = -1*/) {
  if (pInformation) {
    m_uLastShowMessage = IR_GetCurrentTime();
    m_nLeftTime = nLeftTime;
    m_pCallerWnd = pCallerWnd;
    m_uCallerParam = uParam;

    m_MsgIcon.SetImage(ISI_T_SPR, DEFAULT_MSGIMAGE);
    if (pszImage[0])
      m_MsgIcon.SetImage(ISI_T_SPR, pszImage);

    m_Information.SetText(pInformation, nMsgLen);

    if (pszFirstBtnText == NULL || !pszFirstBtnText[0]) {
      m_FirstBtn.Hide();
    } else {
      m_FirstBtn.SetText(pszFirstBtnText);
      m_FirstBtn.Show();
      if (pszSecondBtnText == NULL || !pszSecondBtnText[0])
        m_FirstBtn.SetPosition(450, 0);
      else
        m_FirstBtn.SetPosition(375, 0);
    }

    if (pszSecondBtnText == NULL || !pszSecondBtnText[0]) {
      m_SecondBtn.Hide();
    } else {
      m_SecondBtn.SetText(pszSecondBtnText);
      m_SecondBtn.Show();
    }
    UiSoundPlay(UI_SI_WND_OPENCLOSE);
    BringToTop();
    KWndShowAnimate::Show();
  }
}

//--------------------------------------------------------------------------
//	���ܣ����ش���
//--------------------------------------------------------------------------
void KUiInformation1::Hide(int nBtnIndex) {
  if (m_pCallerWnd) {
    if ((unsigned int)m_pCallerWnd == WND_GAMESPACE)
      g_pCoreShell->OperationRequest(GOI_INFORMATION_CONFIRM_NOTIFY, 0,
                                     nBtnIndex == 0 ? 1 : 0);
    else
      m_pCallerWnd->WndProc(WND_M_OTHER_WORK_RESULT, m_uCallerParam,
                            WND_OPER_RESULT(nBtnIndex));
    m_pCallerWnd = NULL;
  }
  KWndShowAnimate::Hide();
}

// �رմ��ڣ���ͨ���ô���
void KUiInformation1::Close() { KWndShowAnimate::Hide(); }

void KUiInformation1::PaintWindow() {
  KWndImage::PaintWindow();
  if (g_pCoreShell) {
    m_MsgIcon.SetFrame(m_nMsgIconFrame > 0 ? --m_nMsgIconFrame
                                           : ++m_nMsgIconFrame);

    KRUShadow bg;
    GetAbsolutePos(&bg.oPosition.nX, &bg.oPosition.nY);
    bg.oPosition.nX;
    bg.oPosition.nY;
    bg.Color.Color_dw = 0x12000000;
    GetSize(&bg.oEndPos.nX, &bg.oEndPos.nY);
    bg.oEndPos.nX += bg.oPosition.nX;
    bg.oEndPos.nY += bg.oPosition.nY;
    g_pRepresentShell->DrawPrimitives(1, &bg, RU_T_SHADOW, true);
  }
}
//--------------------------------------------------------------------------
//	���ܣ����ں���
//--------------------------------------------------------------------------
int KUiInformation1::WndProc(unsigned int uMsg, unsigned int uParam,
                             int nParam) {
  int nRet = 0;
  switch (uMsg) {
  case WND_N_BUTTON_CLICK:
    if (uParam == (unsigned int)(KWndWindow *)&m_FirstBtn)
      Hide(0);
    else if (uParam == (unsigned int)(KWndWindow *)&m_SecondBtn)
      Hide(1);
    break;
  default:
    nRet = KWndShowAnimate::WndProc(uMsg, uParam, nParam);
    break;
  }
  return nRet;
}

void KUiInformation1::Breathe() {
  if (m_nLeftTime != -1) {
    if (IR_IsTimePassed(m_nLeftTime, m_uLastShowMessage))
      Hide(1);
  }
}