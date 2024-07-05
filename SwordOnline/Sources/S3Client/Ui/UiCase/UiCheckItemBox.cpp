/*****************************************************************************************
//	����--���������
//	Copyright : Kingsoft 2003
//	Author	:   Wooy(Wu yue)
//	CreateTime:	2003-4-21
*****************************************************************************************/
#include "UiCheckItemBox.h"
#include "../../../core/src/GameDataDef.h"
#include "../../../core/src/coreshell.h"
#include "../UiBase.h"
#include "../UiSoundSetting.h"
#include "../elem/wnds.h"
#include "KIniFile.h"
#include "KWin32.h"
#include "UiItem.h"
#include <crtdbg.h>

extern iCoreShell *g_pCoreShell;

#define SCHEME_INI_ITEM "itemcheckbox.ini"

KUiCheckItemBox *KUiCheckItemBox::m_pSelf = NULL;

enum WAIT_OTHER_WND_OPER_PARAM {
  UISTOREBOX_WAIT_GETMONEY,
};

//--------------------------------------------------------------------------
//	���ܣ��������������ʾ���򷵻�ʵ��ָ��
//--------------------------------------------------------------------------
KUiCheckItemBox *KUiCheckItemBox::GetIfVisible() {
  if (m_pSelf && m_pSelf->IsVisible())
    return m_pSelf;
  return NULL;
}

//--------------------------------------------------------------------------
//	���ܣ��򿪴��ڣ�����Ψһ��һ�������ʵ��
//--------------------------------------------------------------------------
KUiCheckItemBox *KUiCheckItemBox::OpenWindow(char *szTitleBox,
                                             char *szTitleTex) {
  if (m_pSelf == NULL) {
    m_pSelf = new KUiCheckItemBox;
    if (m_pSelf)
      m_pSelf->Initialize();
  }
  if (m_pSelf) {
    if (KUiItem::GetIfVisible() == NULL)
      KUiItem::OpenWindow();
    else
      UiSoundPlay(UI_SI_WND_OPENCLOSE);

    m_pSelf->UpdateData();
    m_pSelf->BringToTop();
    m_pSelf->Show();
    m_pSelf->m_TitleBox.SetText(szTitleBox);
    m_pSelf->m_TitleTex.SetText(szTitleTex);
    Wnd_GameSpaceHandleInput(false);
  }
  return m_pSelf;
}

//--------------------------------------------------------------------------
//	���ܣ��رմ���
//--------------------------------------------------------------------------
void KUiCheckItemBox::CloseWindow() {
  if (m_pSelf) {
    Wnd_GameSpaceHandleInput(true);
    m_pSelf->Destroy();
    m_pSelf = NULL;
  }
}

// -------------------------------------------------------------------------
// ����	: ��ʼ��
// -------------------------------------------------------------------------
void KUiCheckItemBox::Initialize() {

  AddChild(&m_TitleBox);
  AddChild(&m_TitleTex);
  AddChild(&m_CloseBtn);
  AddChild(&m_OkBtn);
  AddChild(&m_ItemBox);

  m_ItemBox.SetContainerId((int)UOC_CHECK_BOX);
  char Scheme[256];
  g_UiBase.GetCurSchemePath(Scheme, 256);
  LoadScheme(Scheme);

  Wnd_AddWindow(this);
}

//--------------------------------------------------------------------------
//	���ܣ����캯��
//--------------------------------------------------------------------------
void KUiCheckItemBox::UpdateData() {

  KUiObjAtRegion *pObjs = NULL;

  int nCount = g_pCoreShell->GetGameData(GDI_ITEM_IN_CHECK_BOX, 0, 0);
  if (nCount == 0)
    return;

  if (pObjs = (KUiObjAtRegion *)malloc(sizeof(KUiObjAtRegion) * nCount)) {
    g_pCoreShell->GetGameData(GDI_ITEM_IN_CHECK_BOX, (unsigned int)pObjs,
                              nCount); // ���߳�ִ�У�nCountֵ����
    for (int i = 0; i < nCount; i++)
      UpdateItem(&pObjs[i], true);
    free(pObjs);
    pObjs = NULL;
  }
}

// -------------------------------------------------------------------------
// ����	: ��Ʒ�仯����
// -------------------------------------------------------------------------
void KUiCheckItemBox::UpdateItem(KUiObjAtRegion *pItem, int bAdd) {
  if (pItem) {
    UiSoundPlay(UI_SI_PICKPUT_ITEM);

    KUiDraggedObject Obj;
    Obj.uGenre = pItem->Obj.uGenre;
    Obj.uId = pItem->Obj.uId;
    Obj.DataX = pItem->Region.h;
    Obj.DataY = pItem->Region.v;
    Obj.DataW = pItem->Region.Width;
    Obj.DataH = pItem->Region.Height;
    if (bAdd)
      m_ItemBox.AddObject(&Obj, 1);
    else
      m_ItemBox.RemoveObject(&Obj);

  } else
    UpdateData();
}

// -------------------------------------------------------------------------
// ����	: ������淽��
// -------------------------------------------------------------------------
void KUiCheckItemBox::LoadScheme(const char *pScheme) {
  char Buff[128];
  KIniFile Ini;
  sprintf(Buff, "%s\\%s", pScheme, SCHEME_INI_ITEM);
  if (m_pSelf && Ini.Load(Buff)) {
    m_pSelf->Init(&Ini, "Main");
    m_pSelf->m_TitleBox.Init(&Ini, "TitleBox");
    m_pSelf->m_TitleTex.Init(&Ini, "TitleTex");
    m_pSelf->m_CloseBtn.Init(&Ini, "CloseBtn");
    m_pSelf->m_OkBtn.Init(&Ini, "OkBtn");
    m_pSelf->m_ItemBox.Init(&Ini, "ItemBox");
    m_pSelf->m_ItemBox.EnableTracePutPos(true);
  }
}

// -------------------------------------------------------------------------
// ����	: ���ں���
// -------------------------------------------------------------------------
int KUiCheckItemBox::WndProc(unsigned int uMsg, unsigned int uParam,
                             int nParam) {
  switch (uMsg) {
  case WND_N_ITEM_PICKDROP:
    OnItemPickDrop((ITEM_PICKDROP_PLACE *)uParam,
                   (ITEM_PICKDROP_PLACE *)nParam);
    break;
  case WND_N_LEFT_CLICK_SHIFT_ITEM:
    break;
  case WND_N_BUTTON_CLICK:

    if (uParam == (unsigned int)(KWndWindow *)&m_CloseBtn) {
      CloseWindow();
    }

    else if (uParam == (unsigned int)(KWndWindow *)&m_OkBtn)

    {

      if (g_pCoreShell) {
        g_pCoreShell->OperationRequest(GOI_CHECK_ITEM_BOX, 0, 0);
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

void KUiCheckItemBox::OnItemPickDrop(ITEM_PICKDROP_PLACE *pPickPos,
                                     ITEM_PICKDROP_PLACE *pDropPos) {
  if (g_UiBase.GetStatus() != UIS_S_IDLE)
    return;
  KUiObjAtContRegion Pick, Drop;
  KUiDraggedObject Obj;

  if (pPickPos) {
    _ASSERT(pPickPos->pWnd);
    ((KWndObjectMatrix *)(pPickPos->pWnd))
        ->GetObject(Obj, pPickPos->h, pPickPos->v);
    Pick.Obj.uGenre = Obj.uGenre;
    Pick.Obj.uId = Obj.uId;
    Pick.Region.Width = Obj.DataW;
    Pick.Region.Height = Obj.DataH;
    Pick.Region.h = Obj.DataX;
    Pick.Region.v = Obj.DataY;
    Pick.eContainer = UOC_CHECK_BOX;
  }

  if (pDropPos) {
    Wnd_GetDragObj(&Obj);
    Drop.Obj.uGenre = Obj.uGenre;
    Drop.Obj.uId = Obj.uId;
    Drop.Region.Width = Obj.DataW;
    Drop.Region.Height = Obj.DataH;
    Drop.Region.h = pDropPos->h;
    Drop.Region.v = pDropPos->v;
    Drop.eContainer = UOC_CHECK_BOX;
  }

  g_pCoreShell->OperationRequest(GOI_SWITCH_OBJECT,
                                 pPickPos ? (unsigned int)&Pick : 0,
                                 pDropPos ? (int)&Drop : 0);
}