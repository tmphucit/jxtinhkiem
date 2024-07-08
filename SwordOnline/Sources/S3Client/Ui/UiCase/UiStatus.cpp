/*****************************************************************************************
//	����--״̬����
//	Copyright : Kingsoft 2002
//	Author	:   Wooy(Wu yue)
//	CreateTime:	2002-9-2
*****************************************************************************************/
#include "UiStatus.h"
#include "../../../Engine/Src/KDebug.h"
#include "../../../Engine/src/Kdebug.h"
#include "../../../Represent/iRepresent/iRepresentShell.h"
#include "../../../core/src/coreshell.h"
#include "../../../core/src/gamedatadef.h"
#include "../Elem/WndMessage.h"
#include "../ShortcutKey.h"
#include "../UiBase.h"
#include "../UiSoundSetting.h"
#include "../elem/wnds.h"
#include "KIniFile.h"
#include "KWin32.h"
#include "UiChooseFace.h"
#include "UiGetString3.h"
#include "UiItem.h"
#include "UiLoginPWStoreBox.h"
#include "UiPlayerBar.h"
#include "UiSysMsgCentre.h"
#include "UiTradeConfirmWnd.h"

extern iRepresentShell *g_pRepresentShell;
extern iCoreShell *g_pCoreShell;

#define SCHEME_INI "���װ��������״̬.ini"
#define IMAGE_PLAYER "\\Ui\\Ui3\\AvatarPlayer.ini"

KUiStatus *KUiStatus::m_pSelf = NULL;

// -------------------------------------------------------------------------
// ---> �����ؼ���UIEP_*�Լ��ɽ�����Ʒ�����͵Ķ�Ӧ��ϵ
static struct UE_CTRL_MAP {
  int nPosition;
  const char *pIniSection;
} CtrlItemMap[_ITEM_COUNT] = {{UIEP_HEAD, "Cap"},            // װ��-ñ��
                              {UIEP_HAND, "Weapon"},         // װ��-����
                              {UIEP_NECK, "Necklace"},       // װ��-����
                              {UIEP_FINESSE, "Bangle"},      // װ��-����
                              {UIEP_BODY, "Cloth"},          // װ��-�·�
                              {UIEP_WAIST, "Sash"},          // װ��-����
                              {UIEP_FINGER1, "Ring1"},       // װ��-��ָ
                              {UIEP_FINGER2, "Ring2"},       // װ��-��ָ
                              {UIEP_WAIST_DECOR, "Pendant"}, // װ��-��׺
                              {UIEP_FOOT, "Shoes"},          // װ��-Ь��
                              {UIEP_HORSE, "Horse"},         // װ��-��
                              {UIEP_MASK, "Mask"},           // װ��-��
                              {UIEP_PHIPHONG, "FiFong"}};

//--------------------------------------------------------------------------
//	���ܣ��������������ʾ���򷵻�ʵ��ָ��
//--------------------------------------------------------------------------
KUiStatus *KUiStatus::GetIfVisible() {
  if (m_pSelf && m_pSelf->IsVisible())
    return m_pSelf;
  return NULL;
}

//--------------------------------------------------------------------------
//	���ܣ��򿪴��ڣ�����Ψһ��һ�������ʵ��
//--------------------------------------------------------------------------
KUiStatus *KUiStatus::OpenWindow() {
  if (m_pSelf == NULL) {
    m_pSelf = new KUiStatus;
    if (m_pSelf)
      m_pSelf->Initialize();
  }
  if (m_pSelf) {
    UiSoundPlay(UI_SI_WND_OPENCLOSE);
    m_pSelf->UpdateData();
    m_pSelf->BringToTop();
    m_pSelf->Show();
  }
  return m_pSelf;
}

//--------------------------------------------------------------------------
//	���ܣ��رմ��ڣ�ͬʱ����ѡ���Ƿ�ɾ������ʵ��
//--------------------------------------------------------------------------
void KUiStatus::CloseWindow(bool bDestroy) {
  if (m_pSelf) {

    if (g_UiBase.GetStatus() == UIS_S_BLOCK_ITEM ||
        g_UiBase.GetStatus() == UIS_S_UNBLOCK_ITEM ||
        g_UiBase.GetStatus() == UIS_S_IDLE) {
      m_pSelf->m_BtnUnBind.CheckButton(0);
      m_pSelf->m_BtnBind.CheckButton(0);
      //		m_pSelf->m_BLockBox.CheckButton(0);
      g_UiBase.SetStatus(UIS_S_IDLE);
    }

    if (bDestroy == false)
      m_pSelf->Hide();
    else {
      m_pSelf->Destroy();
      m_pSelf = NULL;
    }
  }
}

//--------------------------------------------------------------------------
//	���ܣ���ʼ��
//--------------------------------------------------------------------------
void KUiStatus::Initialize() {
  AddChild(&m_Agname);
  AddChild(&m_Name);
  AddChild(&m_Title);

  AddChild(&m_Money);

  AddChild(&m_Life);
  AddChild(&m_Mana);
  AddChild(&m_Stamina);
  AddChild(&m_Angry);
  AddChild(&m_Experience);

  AddChild(&m_RemainPoint);
  AddChild(&m_Strength);
  AddChild(&m_Dexterity);
  AddChild(&m_Vitality);
  AddChild(&m_Energy);

  AddChild(&m_AddStrength);
  AddChild(&m_AddDexterity);
  AddChild(&m_AddVitality);
  AddChild(&m_AddEnergy);

  AddChild(&m_LeftDamage);
  AddChild(&m_RightDamage);
  AddChild(&m_Attack);
  AddChild(&m_Defence);
  AddChild(&m_MoveSpeed);
  AddChild(&m_AttackSpeed);

  AddChild(&m_PhyDef);
  AddChild(&m_CoolDef);
  AddChild(&m_LightDef);
  AddChild(&m_FireDef);
  AddChild(&m_PoisonDef);
  AddChild(&m_Level);
  AddChild(&m_StatusDesc);

  AddChild(&m_PKValue);
  AddChild(&m_Repute);
  AddChild(&m_FuYuan);
  AddChild(&m_WorldRank);
  AddChild(&m_ClickHere1);
  AddChild(&m_ClickHere);
  AddChild(&m_Avatar);
  for (int i = 0; i < _ITEM_COUNT; i++) {
    m_EquipBox[i].SetObjectGenre(CGOG_ITEM);
    AddChild(&m_EquipBox[i]);
    m_EquipBox[i].SetContainerId((int)UOC_EQUIPTMENT);
  }

  AddChild(&m_OpenItemPad);
  AddChild(&m_Close);

  AddChild(&m_BLockBox1);
  AddChild(&m_BLockBox2);
  // AddChild(&m_BLockBox);

  AddChild(&m_BtnBind);
  AddChild(&m_BtnUnBind);
  AddChild(&m_TransLife);

  Wnd_AddWindow(this);

  char Scheme[256];
  g_UiBase.GetCurSchemePath(Scheme, 256);
  LoadScheme(Scheme);
}

//--------------------------------------------------------------------------
//	���ܣ����봰�ڵĽ��淽��
//--------------------------------------------------------------------------
void KUiStatus::LoadScheme(const char *pScheme) {
  if (m_pSelf) {
    char Buff[128];
    KIniFile Ini;
    sprintf(Buff, "%s\\%s", pScheme, SCHEME_INI);
    if (Ini.Load(Buff))
      m_pSelf->LoadScheme(&Ini);
  }
}

// ������淽��
void KUiStatus::LoadScheme(class KIniFile *pIni) {
  if (g_pCoreShell->GetGameData(GDI_PLAYER_IS_MALE, 0, 0))
    Init(pIni, "Male");
  else
    Init(pIni, "Female");

  m_Face.Init(pIni, "Face");
  m_Agname.Init(pIni, "Agname");
  m_Name.Init(pIni, "Name");
  m_Title.Init(pIni, "Title");

  m_Money.Init(pIni, "Money");

  m_Life.Init(pIni, "Life");
  m_Mana.Init(pIni, "Mana");
  m_Stamina.Init(pIni, "Stamina");
  m_Angry.Init(pIni, "Angry");
  m_Experience.Init(pIni, "Exp");

  m_RemainPoint.Init(pIni, "RemainPoint");
  m_Strength.Init(pIni, "Strength");
  m_Dexterity.Init(pIni, "Dexterity");
  m_Vitality.Init(pIni, "Vitality");
  m_Energy.Init(pIni, "Energy");

  m_AddStrength.Init(pIni, "AddStrength");
  m_AddDexterity.Init(pIni, "AddDexterity");
  m_AddVitality.Init(pIni, "AddVitality");
  m_AddEnergy.Init(pIni, "AddEnergy");

  m_LeftDamage.Init(pIni, "LeftDamage");
  m_RightDamage.Init(pIni, "RightDamage");
  m_Attack.Init(pIni, "Attack");
  m_Defence.Init(pIni, "Defense");
  m_MoveSpeed.Init(pIni, "MoveSpeed");
  m_AttackSpeed.Init(pIni, "AttackSpeed");

  m_PKValue.Init(pIni, "PKValue");
  m_Repute.Init(pIni, "Prestige");
  m_FuYuan.Init(pIni, "FuYuan");
  m_WorldRank.Init(pIni, "WorldRank");

  m_PhyDef.Init(pIni, "ResistPhy");
  m_CoolDef.Init(pIni, "ResistCold");
  m_LightDef.Init(pIni, "ResistLighting");
  m_FireDef.Init(pIni, "ResistFire");
  m_PoisonDef.Init(pIni, "ResistPoison");

  m_Level.Init(pIni, "Level");
  m_StatusDesc.Init(pIni, "Status");
  m_Close.Init(pIni, "Close");

  m_OpenItemPad.Init(pIni, "Item");
  // m_BLockBox.Init(pIni, "BLockBox");

  m_BLockBox1.Init(pIni, "BLockBox1");
  m_BLockBox2.Init(pIni, "BLockBox2");

  m_BtnBind.Init(pIni, "BtnBind");
  m_BtnUnBind.Init(pIni, "BtnUnBind");
  m_TransLife.Init(pIni, "TransLife");
  m_Avatar.Init(pIni, "Avatar");
  m_ClickHere.Init(pIni, "ClickHere");
  m_ClickHere1.Init(pIni, "ClickHere");
  m_ClickHere1.Show();

  for (int i = 0; i < _ITEM_COUNT; i++) {
    m_EquipBox[i].Init(pIni, CtrlItemMap[i].pIniSection);
  }
}

//--------------------------------------------------------------------------
//	���ܣ����ں���
//--------------------------------------------------------------------------
int KUiStatus::WndProc(unsigned int uMsg, unsigned int uParam, int nParam) {
  int nRet = 0;
  switch (uMsg) {
  case WND_N_BUTTON_CLICK:
    if (uParam == (unsigned int)(KWndWindow *)&m_Close) {
      if (g_UiBase.GetStatus() == UIS_S_BLOCK_ITEM ||
          g_UiBase.GetStatus() == UIS_S_UNBLOCK_ITEM ||
          g_UiBase.GetStatus() == UIS_S_IDLE) {
        m_BtnUnBind.CheckButton(0);
        m_BtnBind.CheckButton(0);
        //	m_BLockBox.CheckButton(0);
        g_UiBase.SetStatus(UIS_S_IDLE);
      }
      Hide();
    } else if (uParam == (unsigned int)(KWndWindow *)&m_OpenItemPad) {
      if (KUiItem::GetIfVisible())
        KUiItem::CloseWindow(false);
      else
        KUiItem::OpenWindow();
    } else if (uParam == (unsigned int)(KWndWindow *)&m_ClickHere ||
               uParam == (unsigned int)(KWndWindow *)&m_Avatar) {
      if (g_pCoreShell->GetGameData(GDI_PLAYER_IS_MALE, 0, 0)) {
        KUiChooseFace::OpenWindow(2);
      } else {
        KUiChooseFace::OpenWindow(1);
      }
    } else if (uParam == (unsigned int)(KWndWindow *)&m_BLockBox1 ||
               uParam == (unsigned int)(KWndWindow *)&m_BLockBox2) {
      if (g_pCoreShell->GetGameData(GDI_PLAYER_BLOCK_BOX, 0, 0)) {
        KUiLoginPWStoreBox::OpenWindow();
      } else {
        g_pCoreShell->OperationRequest(GOI_BLOCK_STORE_BOX, 0, 0);
      }
    } else if (uParam == (unsigned int)(KWndWindow *)&m_BtnBind) {
      if (g_UiBase.GetStatus() == UIS_S_BLOCK_ITEM ||
          g_UiBase.GetStatus() == UIS_S_UNBLOCK_ITEM ||
          g_UiBase.GetStatus() == UIS_S_IDLE) {
        if (m_BtnBind.IsButtonChecked()) {
          m_BtnUnBind.CheckButton(0);
          //	m_BLockBox.CheckButton(0);
          g_UiBase.SetStatus(UIS_S_BLOCK_ITEM);
        } else {
          m_BtnUnBind.CheckButton(0);
          //	m_BLockBox.CheckButton(0);
          g_UiBase.SetStatus(UIS_S_IDLE);
        }
      } else {
        m_BtnUnBind.CheckButton(0);
        m_BtnBind.CheckButton(0);
        //	m_BLockBox.CheckButton(0);
      }
    } else if (uParam == (unsigned int)(KWndWindow *)&m_BtnUnBind) {
      if (g_UiBase.GetStatus() == UIS_S_BLOCK_ITEM ||
          g_UiBase.GetStatus() == UIS_S_UNBLOCK_ITEM ||
          g_UiBase.GetStatus() == UIS_S_IDLE) {
        if (m_BtnUnBind.IsButtonChecked()) {
          m_BtnBind.CheckButton(0);
          //	m_BLockBox.CheckButton(0);
          g_UiBase.SetStatus(UIS_S_UNBLOCK_ITEM);
        } else {
          m_BtnBind.CheckButton(0);
          //	m_BLockBox.CheckButton(0);
          g_UiBase.SetStatus(UIS_S_IDLE);
        }
      } else {
        m_BtnUnBind.CheckButton(0);
        m_BtnBind.CheckButton(0);
        //	m_BLockBox.CheckButton(0);
      }
    } else if (m_nRemainPoint > 0) {
      if (uParam == (unsigned int)(KWndWindow *)&m_AddStrength)
        KUiGetString3::OpenWindow(0, 250, "S�c m�nh", this, UIPA_STRENGTH);
      else if (uParam == (unsigned int)(KWndWindow *)&m_AddDexterity)
        KUiGetString3::OpenWindow(0, 250, "Th�n ph�p", this, UIPA_DEXTERITY);
      else if (uParam == (unsigned int)(KWndWindow *)&m_AddVitality)
        KUiGetString3::OpenWindow(0, 250, "Sinh kh�", this, UIPA_VITALITY);
      else if (uParam == (unsigned int)(KWndWindow *)&m_AddEnergy)
        KUiGetString3::OpenWindow(0, 250, "N�i c�ng", this, UIPA_ENERGY);
    }
    break;
  case WND_N_ITEM_PICKDROP:
    if (g_UiBase.IsOperationEnable(UIS_O_MOVE_ITEM) ||
        g_UiBase.IsOperationEnable(UIS_O_TRADE_ITEM) ||
        g_UiBase.IsOperationEnable(UIS_O_BLOCK_UNBLOCK_ITEM) ||
        g_UiBase.GetStatus() == UIS_S_TRADE_REPAIR ||
        g_UiBase.IsOperationEnable(UIS_O_S_PRICE_ITEM))
      OnEquiptChanged((ITEM_PICKDROP_PLACE *)uParam,
                      (ITEM_PICKDROP_PLACE *)nParam);
    break;
  case WND_M_OTHER_WORK_RESULT:
    if (uParam == UIPA_STRENGTH)
      UseRemainPoint(UIPA_STRENGTH, nParam);
    else if (uParam == UIPA_DEXTERITY)
      UseRemainPoint(UIPA_DEXTERITY, nParam);
    else if (uParam == UIPA_VITALITY)
      UseRemainPoint(UIPA_VITALITY, nParam);
    else if (uParam == UIPA_ENERGY)
      UseRemainPoint(UIPA_ENERGY, nParam);
    break;
  default:
    nRet = KWndShowAnimate::WndProc(uMsg, uParam, nParam);
  }
  return nRet;
}

//--------------------------------------------------------------------------
//	���ܣ�����ĳ������
//--------------------------------------------------------------------------
void KUiStatus::UseRemainPoint(int type, int nNumber) {
  g_pCoreShell->OperationRequest(GOI_TONE_UP_ATTRIBUTE, type,
                                 nNumber); // cho nay
}

//--------------------------------------------------------------------------
//	���ܣ����»������ݣ������Ȳ��ױ����ݣ�
//--------------------------------------------------------------------------
void KUiStatus::UpdateBaseData() {
  KUiPlayerBaseInfo Info;
  memset(&Info, 0, sizeof(KUiPlayerBaseInfo));
  g_pCoreShell->GetGameData(GDI_PLAYER_BASE_INFO, (int)&Info, 0);
  m_Agname.SetText(Info.Agname);
  m_Name.SetText(Info.Name);
  m_Title.SetText(Info.Title);

  if (Info.bBlock) {
    m_BLockBox1.Show();
    m_BLockBox2.Hide();
  } else {
    m_BLockBox2.Show();
    m_BLockBox1.Hide();
  }
}

void KUiStatus::UpdateRuntimeInfo(KUiPlayerRuntimeInfo *pInfo) {
  if (pInfo) {
    m_Life.Set2IntText(pInfo->nLife, pInfo->nLifeFull, '/');
    m_Mana.Set2IntText(pInfo->nMana, pInfo->nManaFull, '/');
    m_Stamina.Set2IntText(pInfo->nStamina, pInfo->nStaminaFull, '/');
    m_Angry.Set2IntText(pInfo->nAngry, pInfo->nAngryFull, '/');
    m_Experience.Set2IntText(pInfo->nExperience, pInfo->nExperienceFull, '/');
    // Info.byAction & PA_RIDE
  }
}

//--------------------------------------------------------------------------
//	���ܣ���������
//--------------------------------------------------------------------------
void KUiStatus::UpdateClientDT() {
  if (m_pSelf) {
    m_pSelf->UpdateData();
  }
}

void KUiStatus::UpdateData() {
  UpdateAllEquips();
  UpdateBaseData();
}

void KUiStatus::UpdateAllEquips() {
  KUiObjAtRegion Equips[_ITEM_COUNT];
  int nCount =
      g_pCoreShell->GetGameData(GDI_EQUIPMENT, (unsigned int)&Equips, 0);
  int i;
  for (i = 0; i < _ITEM_COUNT; i++)
    m_EquipBox[i].Celar();
  for (i = 0; i < nCount; i++) {
    if (Equips[i].Obj.uGenre != CGOG_NOTHING)
      UpdateEquip(&Equips[i], true);
  }
}

void KUiStatus::UpdateRuntimeAttribute(KUiPlayerAttribute *pInfo) {
  if (pInfo) {
    char TextInfo[32];
    int van = pInfo->nMoney / 10000;
    int luong = pInfo->nMoney % 10000;
    char ngan_luong[32];
    sprintf(ngan_luong, "%d %s %d", van, "v�n", luong);
    m_Money.SetText(ngan_luong);

    m_nRemainPoint = pInfo->nBARemainPoint;
    m_AddStrength.Enable(m_nRemainPoint);
    m_AddDexterity.Enable(m_nRemainPoint);
    m_AddVitality.Enable(m_nRemainPoint);
    m_AddEnergy.Enable(m_nRemainPoint);
    m_RemainPoint.SetIntText(pInfo->nBARemainPoint);
    m_Strength.SetIntText(pInfo->nStrength);
    m_Dexterity.SetIntText(pInfo->nDexterity);
    m_Vitality.SetIntText(pInfo->nVitality);
    m_Energy.SetIntText(pInfo->nEnergy);

    sprintf(TextInfo, "%d/%d", pInfo->nKillMIN, pInfo->nKillMAX);
    m_LeftDamage.SetText(TextInfo);

    sprintf(TextInfo, "%d/%d", pInfo->nRightKillMin, pInfo->nRightKillMax);
    m_RightDamage.SetText(TextInfo);

    m_Attack.Set2IntText(pInfo->nAttack, pInfo->nAttackR, '/');

    m_Defence.SetIntText(pInfo->nDefence);
    m_MoveSpeed.SetIntText(pInfo->nMoveSpeed);
    m_AttackSpeed.Set2IntText(pInfo->nAttackSpeed, pInfo->nCastSpeed, '/');

    m_PKValue.SetIntText(pInfo->nPk);
    m_Repute.SetIntText(pInfo->nRepute);
    m_FuYuan.SetIntText(pInfo->nPd);
    m_WorldRank.SetIntText(pInfo->nXh);

    sprintf(TextInfo, "%d%%", pInfo->nPhyDef);
    m_PhyDef.SetText(TextInfo);

    sprintf(TextInfo, "%d%%", pInfo->nCoolDef);
    m_CoolDef.SetText(TextInfo);

    sprintf(TextInfo, "%d%%", pInfo->nLightDef);
    m_LightDef.SetText(TextInfo);

    sprintf(TextInfo, "%d%%", pInfo->nFireDef);
    m_FireDef.SetText(TextInfo);

    sprintf(TextInfo, "%d%%", pInfo->nPoisonDef);
    m_PoisonDef.SetText(TextInfo);

    m_Level.SetIntText(pInfo->nLevel); // �ȼ�
    m_StatusDesc.SetText(pInfo->StatusDesc);

    char szTransLife[32] = {0};
    sprintf(szTransLife, "Tr�ng sinh %d", pInfo->nCs);
    m_TransLife.SetText(szTransLife);
  }
}

//--------------------------------------------------------------------------
//	���ܣ���Ӧ�����������װ���ĸı�
//--------------------------------------------------------------------------
void KUiStatus::OnEquiptChanged(ITEM_PICKDROP_PLACE *pPickPos,
                                ITEM_PICKDROP_PLACE *pDropPos) {
  KUiObjAtContRegion Drop, Pick;
  KUiDraggedObject Obj;
  KWndWindow *pWnd = NULL;

  UISYS_STATUS eStatus = g_UiBase.GetStatus();
  if (pPickPos) // cam item len
  {
    //_ASSERT(pPickPos->pWnd);
    ((KWndObjectBox *)(pPickPos->pWnd))->GetObject(Obj);
    Pick.Obj.uGenre = Obj.uGenre;
    Pick.Obj.uId = Obj.uId;
    Pick.Region.Width = Obj.DataW;
    Pick.Region.Height = Obj.DataH;
    Pick.Region.h = 0;
    Pick.eContainer = UOC_EQUIPTMENT;
    pWnd = pPickPos->pWnd;

    if (eStatus == UIS_S_TRADE_REPAIR) {
      g_pCoreShell->OperationRequest(GOI_TRADE_NPC_REPAIR,
                                     (unsigned int)(&Pick), 0);
      return;
    } else if (eStatus == UIS_S_TRADE_SALE) {
      return;
    } else if (eStatus == UIS_S_BLOCK_ITEM) {
      g_pCoreShell->OperationRequest(GOI_BLOCK_ITEM, (unsigned int)(&Pick), 0);
      return;
    } else if (eStatus == UIS_S_UNBLOCK_ITEM) {
      g_pCoreShell->OperationRequest(GOI_UNBLOCK_ITEM, (unsigned int)(&Pick),
                                     0);
      return;
    }

    else if (eStatus == UIS_S_UNBLOCK_ITEM) {
      return;
    }

    else if (eStatus == UIS_S_TRADE_NPC) {

      return;
    } else if (eStatus == UIS_S_TRADE_BUY)
      return;
  } else if (pDropPos) // dat item xuong
  {
    pWnd = pDropPos->pWnd;
  } else
    return;

  if (pDropPos) {
    Wnd_GetDragObj(&Obj);
    Drop.Obj.uGenre = Obj.uGenre;
    Drop.Obj.uId = Obj.uId;
    Drop.Region.Width = Obj.DataW;
    Drop.Region.Height = Obj.DataH;
    Drop.Region.h = 0;
    Drop.eContainer = UOC_EQUIPTMENT;
    // if (g_pCoreShell->GetDurabilityItem(Obj.uId) <= 0 &&
    // g_pCoreShell->GetDetailItem2(Obj.uId) == 11)
    //{
    //	KSystemMessage	Msg;
    //	Msg.byConfirmType = SMCT_NONE;
    //	Msg.byParamSize = 0;
    //	Msg.byPriority = 0;
    //	Msg.eType = SMT_NORMAL;
    //	Msg.uReservedForUi = 0;
    //	strcpy(Msg.szMessage, "Trang b� �� h�ng, kh�ng th� mang v�o ng��i !");
    //	KUiSysMsgCentre::AMessageArrival(&Msg, NULL);
    //	return;
    // }
  }

  for (int i = 0; i < _ITEM_COUNT; i++) {
    if (pWnd == (KWndWindow *)&m_EquipBox[i]) {
      Drop.Region.v = Pick.Region.v = CtrlItemMap[i].nPosition;
      break;
    }
  }
  //_ASSERT(i < _ITEM_COUNT);

  g_pCoreShell->OperationRequest(GOI_SWITCH_OBJECT,
                                 pPickPos ? (unsigned int)&Pick : 0,
                                 pDropPos ? (int)&Drop : 0);
}

//--------------------------------------------------------------------------
//	���ܣ�װ���仯����
//--------------------------------------------------------------------------
void KUiStatus::UpdateEquip(KUiObjAtRegion *pEquip, int bAdd) {
  if (pEquip) {
    for (int i = 0; i < _ITEM_COUNT; i++) {
      if (CtrlItemMap[i].nPosition == pEquip->Region.v) {
        if (bAdd)
          m_EquipBox[i].HoldObject(pEquip->Obj.uGenre, pEquip->Obj.uId,
                                   pEquip->Region.Width, pEquip->Region.Height);
        else
          m_EquipBox[i].HoldObject(CGOG_NOTHING, 0, 0, 0);
        break;
      }
    }
  }
}

// chan dung
void KUiStatus::Breathe() {
  KIniFile Ini;
  int Left = 0, Top = 0;
  char sz_Temp[30];
  char ImageNpc[100];
  nNumIcon = g_pCoreShell->GetGameData(GDI_IS_CHECK_IMAGE, 0, 0);
  if (nNumIcon == 0) {
    m_ClickHere1.Show();
  } else {
    if (Ini.Load(IMAGE_PLAYER)) {
      if (g_pCoreShell->GetGameData(GDI_PLAYER_IS_MALE, 0, 0)) {
        // sprintf(sz_Temp, "%d_Position", nNumIcon);
        // Ini.GetInteger2("AvatarMale", sz_Temp, &Left, &Top);
        // m_Avatar.SetPosition(Left,Top);

        sprintf(sz_Temp, "%d_Image", nNumIcon);
        Ini.GetString("AvatarMale", sz_Temp, "", ImageNpc, sizeof(ImageNpc));
        m_Avatar.SetImage(ISI_T_SPR, ImageNpc);

        m_ClickHere1.Hide();
      } else {
        // sprintf(sz_Temp, "%d_Position", nNumIcon);
        // Ini.GetInteger2("AvatarFemale", sz_Temp, &Left, &Top);
        // m_Avatar.SetPosition(Left,Top);

        sprintf(sz_Temp, "%d_Image", nNumIcon);
        Ini.GetString("AvatarFemale", sz_Temp, "", ImageNpc, sizeof(ImageNpc));
        m_Avatar.SetImage(ISI_T_SPR, ImageNpc);

        m_ClickHere1.Hide();
      }
    }
  }
}
