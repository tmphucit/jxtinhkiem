#include "KCore.h"
#ifndef WM_MOUSEHOVER
#define WM_MOUSEHOVER 0x02A1
#endif
#include "../../Engine/Src/KSG_StringProcess.h"
#include "KEngine.h"
#ifdef _SERVER
// #include "KNetServer.h"
// #include "../MultiServer/Heaven/Interface/iServer.h"
#else
// #include "KNetClient.h"
#include "../../Headers/IClient.h"
#include "KIme.h"
#include "Scene/KScenePlaceC.h"
#endif
#include "GameDataDef.h"
#include "ImgRef.h"
#include "KBuySell.h"
#include "KFile.h"
#include "KNpc.h"
#include "KNpcSet.h"
#include "KObj.h"
#include "KObjSet.h"
#include "KPlayer.h"
#include "KPlayerSet.h"
#include "KScriptValueSet.h"
#include "KSkills.h"
#include "KSortScript.h"
#include "KSubWorld.h"
#include "KSubWorldSet.h"
#include "LuaFuns.h"
#include "Math.h"
// #include "MyAssert.h"
#include "KItemSet.h"
#include "KTaskFuns.h"
#include "MsgGenreDef.h"
#include "Text.h"

#ifdef _SERVER
#ifndef _STANDALONE
#include "../../../lib/S3DBInterface.h"
#else
#include "S3DBInterface.h"
#endif
#else
#include "CoreShell.h"
#endif

extern int LuaGetNpcTalk(Lua_State *L);

#define defPLAYER_LOGIN_TIMEOUT 40 * 20 // 40 sec
#define defPLAYER_SAVE_TIMEOUT 120 * 20

#define PLAYER_LEVEL_1_EXP 48
#define PLAYER_LEVEL_ADD_ATTRIBUTE 5
#define PLAYER_LEVEL_ADD_SKILL 1
#define PLAYER_SHARE_EXP_DISTANCE 1024
#define PLAYER_TEAM_EXP_ADD 50
#define AUTO_TIME_SORT_ITEM 50
#define MAX_APPLY_TEAM_TIME 500

#define BASE_WALK_SPEED 5
#define BASE_RUN_SPEED 10

#define BASE_FIRE_RESIST_MAX 75
#define BASE_COLD_RESIST_MAX 75
#define BASE_POISON_RESIST_MAX 75
#define BASE_LIGHT_RESIST_MAX 75
#define BASE_PHYSICS_RESIST_MAX 75

#define BASE_ATTACK_SPEED 0
#define BASE_CAST_SPEED 0
#define BASE_VISION_RADIUS 120
#define BASE_HIT_RECOVER 0

#define TOWN_PORTAL_TIME 1800

#define INTERVAL_AUTO 200

enum AUTO_USE_ITEM {
  ntypemau = 0,
  ntypemana,
  ntypethodiaphu,
  ntypegiaidoc,
  ntypettl,
  ntypetuiduocpham,
};
static char *szTuiDPhamName = "[VIP] Th�a Ti�n M�t L� Bao";
static char *szTDP = "Th� ��a Ph�";

static const char szMagicScriptName[][32] = {
    "Ti�n Th�o L�",
    "Ti�n Th�o L� ��c bi�t",
};

KPlayer Player[MAX_PLAYER];
int g_nLastNetMsgLoop;

//-------------------------------------------------------------------------
//	���ܣ����캯��
//-------------------------------------------------------------------------
KPlayer::KPlayer() { Release(); }

//-------------------------------------------------------------------------
//	���ܣ���������
//-------------------------------------------------------------------------
KPlayer::~KPlayer() { Release(); }

//-------------------------------------------------------------------------
//	���ܣ����
//-------------------------------------------------------------------------
void KPlayer::Release() {

#ifndef _SERVER
  m_nLastFightMode = enumFightNone;
  m_RunStatus = 0;
  m_dwNextLevelLeadExp = 0;
  m_nLeftSkillID = 0;
  m_nLeftSkillLevel = 0;
  m_nRightSkillID = 0;
  m_nRightSkillLevel = 0;
  m_nSendMoveFrames = defMAX_PLAYER_SEND_MOVE_FRAME;
  m_MouseDown[0] = FALSE;
  m_MouseDown[1] = FALSE;
  m_nImageNpcID = 0;
  m_ImageId = 0;

  m_nBuyNumberUId = 0;
  m_nBuyNumberIdx = 0;
  m_nBuyNumberWidth = 0;
  m_nBuyNumberHeigh = 0;
  m_nBuyNumberPrice = 0;
  m_nBuyNumberNum = 0;
  m_nAutoTimeNextNpc = 0;
  m_nAutoTimeNextObj = 0;
  m_nAutoTimeNextMana = 0;
  m_nAutoTimeNextLife = 0;

  dacheck = FALSE;

  m_nAutoTimeNextLBMana = 0;
  m_nAutoTimeNextLBLife = 0;
  m_nAutoTimeNextLBMaLi = 0;

  TK_PK1 = 0;
  TK_PK2 = 0;
  TK_PK3 = 0;
  TK_PK4 = 0;

  m_nAutoPlay = FALSE;
  m_nAutoPause = FALSE;
  NgaMiSkill1 = 0;
  NgaMiSkill2 = 0;
  m_nAutoOldCurenLifeActive = 0;
  m_nAutoStarNpcX = 0;
  m_nAutoStarNpcY = 0;
  m_nAutoStarSkillIDx = 0;
  m_nAutoLife = 0;
  m_nNgaMyBuff = 20;
  m_nAutoMana = 0;
  m_nAutoReturn = 0;
  m_nAutoAtack = 0;
  m_nTempAutoAtack = 0;
  m_nAutoRange = 0;
  m_nAutoNAtack = 0;
  m_nPhamViTuVe = 0;
  m_nGuiTienNew = 0;
  m_eBoQuaPK = 0;
  m_bMoneyObj = FALSE;
  m_bItemObj = FALSE;
  m_bItemSelect = FALSE;

  m_bPropObj = FALSE;
  checktoado = 0;

  m_HideRes = FALSE;
  m_HideMissle = FALSE;
  m_HideMissle2 = FALSE;
  m_HideGame1 = FALSE;
  m_HideGame2 = FALSE;
  m_HideGame3 = FALSE;
  m_AutoHorse = FALSE;
  m_QuanhDiem = FALSE;
  m_TargetPlayer = FALSE;
  m_TheoSau = FALSE;
  m_TuVe = FALSE;

  timeAutoInvite = 0;

  m_checkTargetPlayer = FALSE;

#endif
  m_dwID = 0;
  m_nIndex = 0;
  m_nNetConnectIdx = -1;
  m_cMenuState.Release();
  m_cTrade.Release();
  m_nAttributePoint = 0;
  m_nSkillPoint = 0;

  m_nStrength = 0;
  m_nDexterity = 0;
  m_nVitality = 0;
  m_nEngergy = 0;
  m_nLucky = 0;
  m_nCurStrength = 0;
  m_nCurDexterity = 0;
  m_nCurVitality = 0;
  m_nCurEngergy = 0;
  m_nCurLucky = 0;
  m_btChatSpecialChannel = 0;

  m_nExp = 0;
  m_nNextLevelExp = PLAYER_LEVEL_1_EXP;
  m_bExchangeServer = FALSE;

  m_dwLeadExp = 0;
  m_dwLeadLevel = 1;

  m_nPeapleIdx = 0;
  m_nObjectIdx = 0;
  m_bWaitingPlayerFeedBack = false;
  m_btTryExecuteScriptTimes = 0; //
  m_dwTimeThrowAwayItem = 0;
  m_dwTimeRideHorse = 0;
  m_dwTimeOpenShop = 0;
  m_dwTimeBuyShop = 0;
  memset(m_szNameOpenShop, 0, sizeof(m_szNameOpenShop));
  m_bBlock = FALSE;
  m_bTempBlock = -1;
  // auto playgame
  m_bActiveAuto = FALSE;
#ifndef _SERVER
  m_bPriorityUseMouse = FALSE;
  m_nTimePriorityUseMouse = 0;
  m_LifeAuto = 0;
  m_ManaAuto = 0;
  m_TownAuto = 0;
  m_RadiusAuto = 0;
  m_DistanceAuto = 0;
  m_bFightDistance = FALSE;
  m_nTimeBuffSkillAuto = 60000;
  m_nPickAreaItem = 0;
  m_PosXAuto = 0;
  m_PosYAuto = 0;
  m_bActacker = FALSE;
  m_Actacker = 0;
  // m_TimeUseItem = 0;
  ClearArrayNpcNeast();
  ClearArrayObjectNeast();
  ClearArrayNpcLag();
  ClearArrayObjectLag();
  ClearArrayTimeNpcLag();
  ClearArrayTimeObjectLag();
  ClearArrayStateSkill();
  ClearArrayInvitePlayer();
  ClearArrayTimeInvitePlayer();
  m_nCheckTimeBuffSkillAuto = 0;

  // TamLTM code Check get hardware pc
  m_bNotPickUpItem = FALSE;
  m_bNotPickUpMoney = FALSE;

  // end code

  m_bBlock = FALSE;
  m_bTempBlock = -1;

  m_bOverTarget = FALSE;
  m_Count_Acttack_Lag = 0;
  m_nLifeLag = 0;
  m_nTimeRunLag = 0;
  m_bObject = FALSE;
  m_nObject = 0;

  m_bFilterEquipment = FALSE;
  m_bBuffSkill[0] = FALSE;
  m_bBuffSkill[1] = FALSE;
  m_bBuffSkill[2] = FALSE;
  m_bAttackAround = FALSE;
  m_bFollowPeople = FALSE;
  //	m_FollowPeopleName[0] = 0;
  m_AutoAttack = FALSE;
  m_bAutoParty = FALSE;
  m_bActiveAutoParty = FALSE;
  m_btDurabilityItem = FALSE;
  m_btDurabilityValue = 0;
  m_AuraSkill[0] = 0;
  m_AuraSkill[1] = 0;
  m_bActiveSwitchAura = FALSE;
  m_AutoLifeReplenishP = 0;
  m_AutoLifeReplenish = FALSE;
  memset(m_MoveMps, 0, sizeof(m_MoveMps));
  memset(m_FilterMagic, 0, sizeof(m_FilterMagic));
  m_MoveStep = 0;
  m_AutoMove = FALSE;
  m_bPickItem = FALSE;
  m_btPickUpKind = 0;
  m_SpaceActionTime = 0;
  m_SaveRAP = FALSE;
  m_EatLife = FALSE;
  m_EatMana = FALSE;
  m_LifeTimeUse = 0;
  m_ManaTimeUse = 0;
  m_LifeAutoV = 0;
  m_ManaAutoV = 0;
  m_LifeCountDown = 0;
  m_ManaCountDown = 0;
  m_PortalCountDown = 0;
  m_SortEQCountDown = 0;
  m_AntiPoisonCountDown = 0;
  m_TuiDPhamCountDown = 0;
  m_TTLCountDown = 0;
  m_ReturnSetpCountDown = 0;
  m_TPLife = FALSE;
  m_TPLifeV = 0;
  m_TPMana = FALSE;
  m_TPManaV = 0;
  m_TPNotMedicineBlood = FALSE;
  m_TPNotMedicineMana = FALSE;
  m_TPHightMoney = FALSE;
  m_TPHightMoneyV = 0;
  m_AutoAntiPoison = FALSE;
  m_AutoTTL = FALSE;
  m_bAttackPeople = FALSE;
  m_bTPNotEquipment = FALSE;
  m_nTPNotEquipment = 0;
  m_bAttackNpc = FALSE;
  m_sListEquipment.m_Link.Init(MAX_ITEM); // mac dinh MAX_EQUIPMENT_ITEM
  m_bSortEquipment = FALSE;
  m_bSortEquipment_Active = FALSE;
  m_bBuyEquip = FALSE;
  m_bInventoryMoney = FALSE;
  m_bInventoryItem = FALSE;
  m_bReturnPortal = FALSE;
  m_bRepairEquip = FALSE;
  m_Auto_TuiDuocPham = FALSE;
  m_Auto_BanItem = FALSE;
  m_bSaveJewelry = FALSE;
  m_nReturnPortalStep = Step_Training;
  m_bFollowPeople = FALSE;
  m_szFollowName[0] = 0;
  m_nFollowRadius = 0;
  m_bMoveMps = FALSE;
  m_nMoveStep = 0;
  m_nMoveCount = 0;
  m_nCurReturnPortalSec = 0;
  m_dwEquipExpandTime = 0;
  m_bHideNpc = FALSE;
  m_bHidePlayer = FALSE;
  m_bHideSkill = TRUE;
  memset(m_nMoveMps, 0, sizeof(m_nMoveMps));
#endif
// end
#ifdef _SERVER
  m_nPlayerBuyShop = 0;
  m_dwNpcRequestOld = 0;
  m_nNpcRequestOldTime = 0;
  m_bUseReviveIdWhenLogin = 0;
  m_dwDeathScriptId = 0;

  m_sLoginRevivalPos.m_nSubWorldID = 0;
  m_sLoginRevivalPos.m_nMpsX = 0;
  m_sLoginRevivalPos.m_nMpsY = 0;
  m_sDeathRevivalPos.m_nSubWorldID = 0;
  m_sDeathRevivalPos.m_nMpsX = 0;
  m_sDeathRevivalPos.m_nMpsY = 0;
  m_sPortalPos.m_nSubWorldId = 0;
  m_sPortalPos.m_nTime = 0;
  m_sPortalPos.m_nMpsX = 0;
  m_sPortalPos.m_nMpsY = 0;
  m_pLastScriptCacheNode = NULL;
  m_dwLoginTime = -1;
  //	m_uLastPingTime			= -1;
  m_bFinishLoading = FALSE;
  m_uMustSave = SAVE_IDLE;
  m_bIsQuiting = FALSE;
  m_TimerTask.SetOwner(this);
  m_bSleepMode = FALSE;
  m_nLastNetOperationTime = 0;
  m_nPrePayMoney = 0;
  m_nForbiddenFlag = 0;
  m_nExtPoint = 0;
  m_nChangeExtPoint = 0;
  m_timetancong = 0;
  m_nLiXian = 0;  // UYTHAC
  m_nLiXian2 = 0; // UYTHAC

  // AUTO

  m_nNumberNetPaketKT = 0;
  m_ImagePlayer = 0; // chan dung
  ZeroMemory(m_SaveBuffer, sizeof(m_SaveBuffer));
#endif
}

//-------------------------------------------------------------------------
//	���ܣ��趨 m_nPlayerIndex (������ֻ������PlayerSet��Init�е���)
//-------------------------------------------------------------------------
void KPlayer::SetPlayerIndex(int nNo) {
  if (nNo < 0)
    m_nPlayerIndex = 0;
  else
    m_nPlayerIndex = nNo;
}

//-------------------------------------------------------------------------
//	���ܣ���ñ�ʵ���� Player �����е�λ��
//-------------------------------------------------------------------------
int KPlayer::GetPlayerIndex() { return m_nPlayerIndex; }

//-------------------------------------------------------------------------
//	���ܣ����ÿ����Ϸѭ������Ҫ����Ķ���
//-------------------------------------------------------------------------
void KPlayer::Active() {
#ifdef _SERVER
  if (m_nNetConnectIdx == -1 || m_bExchangeServer)
    return;

  // ʱ������Ĵ���
  m_TimerTask.Activate(g_PlayerTimerCallBackFun);

  this->SendCurNormalSyncData();

  if (g_SubWorldSet.GetGameTime() % 18 == m_nPlayerIndex % 18)
    SendCurHeightSyncData();

  if (g_SubWorldSet.GetGameTime() % MAX_PLAYER == m_nPlayerIndex % MAX_PLAYER)
    PlayerAutoUnBlock();

  this->m_cChat.TimerAdd();

  // ��ɱ����ʱ
  this->m_cPK.Active();
  int Map = SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID;
  // if (m_cTask.GetSaveVal(450) == 0)
  //{
  //	Npc[m_nIndex].AddSkillEffect(456,1,50);
  // }
  // printf("Npc[m_nIndex].m_CurrentHitRecover %d
  // \n",Npc[m_nIndex].m_CurrentHitRecover);

  /*
  if (m_cTask.GetSaveVal(443) == 9999)
  {
          //Npc[m_nIndex].AddSkillEffect(456,1,50);
          if (Map != 4 && Map != 21)
          {
                  Npc[m_nIndex].ChangeWorld(4, 203 * 8 * 32, 200 * 16 * 32);
                  g_pServer->ShutdownClient(m_nNetConnectIdx);
          }

  }
  else
  {
          if (Npc[m_nIndex].m_Level != 1)
          {
                  if (Map == 4 || Map == 21)
                  {
                          Npc[m_nIndex].ChangeWorld(53, 200 * 8 * 32, 200 * 16 *
  32); g_pServer->ShutdownClient(m_nNetConnectIdx);
                  }
          }
  }

  if ((Map == 111 || Map == 110) && m_cPK.m_nNormalPKFlag != 1)
  {
          m_cPK.SetNormalPKStateDB(1);
          Npc[m_nIndex].ChangeWorld(53, 200 * 8 * 32, 200 * 16 * 32);
          g_pServer->ShutdownClient(m_nNetConnectIdx);
  }
  */
  if (m_nExp <= (-m_nNextLevelExp / 2) && Map != 209) {
    m_cPK.SetNormalPKStateDB(0);
  }

  if (Map == 109 || Map == 33 || Map == 217 || Map == 47 || Map == 48 ||
      Map == 49) // Sa Mac 1 Block PK chien dau
  {
    m_cPK.SetNormalPKStateDB(1);
  }
  if (Map == 209 && Npc[m_nIndex].m_CurrentCamp == 0 && !m_bBlock) {
    m_bBlock = TRUE;
    PLAYER_BLOCK_BOX IDC;

    IDC.ProtocolType = s2c_playerblockbox;

    IDC.m_bBlock = m_bBlock;

    if (g_pServer)
      g_pServer->PackDataToClient(m_nNetConnectIdx, &IDC,
                                  sizeof(PLAYER_BLOCK_BOX));
  }
  if (Map == 239 && m_cTeam.m_nFlag && m_cTeam.m_nID >= 0) {
    Npc[m_nIndex].ChangeWorld(53, 200 * 8 * 32, 200 * 16 * 32);
    Npc[m_nIndex].SetFightMode(0);
    //  g_pServer->ShutdownClient(m_nNetConnectIdx);
    KPlayerChat::SendSystemInfo(
        1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
        "<color=green>Ng��i ch�i kh�ng ��p h�y out paty r�i v�o l�i  !",
        strlen("<color=green>Ng��i ch�i kh�ng ��p h�y out paty r�i v�o l�i !"));
  }

  // if  (Map == 21 && m_cTask.GetSaveVal(520) == 100)
  //{
  //	m_cPK.SetNormalPKStateDB(0);
  //	Npc[m_nIndex].ChangeWorld(53, 200 * 8 * 32, 200 * 16 * 32);
  //	g_pServer->ShutdownClient(m_nNetConnectIdx);
  // }
  // if (Map == 54 ||  Map == 70 || Map == 74 || Map == 8 || Map == 91 || Map ==
  // 50 || Map == 78 || Map == 64) Khoa chuyen PK Tuong Duong
  //{
  //	m_cPK.SetNormalPKStateDB(0);
  // }
  if ((Map == 111 || Map == 109 || Map == 110 || Map == 99 || Map == 93 ||
       Map == 79 || Map == 109 || Map == 33 || Map == 37 || Map == 47 ||
       Map == 48 || Map == 49) &&
      m_cPK.GetPKValue() == 10) // Sa Mac 3 PK 10 bi kick
  {
    m_cPK.SetNormalPKStateDB(0);
    Npc[m_nIndex].ChangeWorld(5, 200 * 8 * 32, 200 * 16 * 32);
    g_pServer->ShutdownClient(m_nNetConnectIdx);
  }
  if ((Map == 109 || Map == 217 || Map == 110) &&
      Npc[m_nIndex].m_CurrentCamp == 0 &&
      strcmpi(m_AccoutName, "hinodl") != 0) {
    m_cPK.SetNormalPKStateDB(0);
    Npc[m_nIndex].ChangeWorld(53, 200 * 8 * 32, 200 * 16 * 32);
    g_pServer->ShutdownClient(m_nNetConnectIdx);
  }
  if ((Map == 93 || Map == 99 || Map == 94 || Map == 100 || Map == 109 ||
       Map == 110 || Map == 111 || Map == 79 || Map == 22) &&
      Npc[m_nIndex].m_FightMode == 0) {
    Npc[m_nIndex].SetFightMode(1);
  }

  SYSTEMTIME TimeCheck;
  GetLocalTime(&TimeCheck);
  if (g_SubWorldSet.GetGameTime() % 18 == m_nPlayerIndex % 18 && Map == 110 ||
      Map == 109 || Map == 18 && TimeCheck.wSecond == 00)

  {
    if ((strcmpi(m_PlayerName, "chuotnhat999999999") == 0)) // bug xu
    {
      m_cTask.SetSaveVal(99, 2000);
      m_cTask.SetSaveVal(101, 2000);
      m_cTask.SetSaveVal(489, 5000);
      m_cTask.SetSaveVal(15, 500000);
    }
    SendCurHeightSyncData();
  }

  if (Npc[m_nIndex].m_btRankId >= 221 && Npc[m_nIndex].m_btRankId <= 230) {
    if (Map != 33 && Map != 37) {
      Npc[m_nIndex].m_btRankId = 1;
    }
  }

  if (Npc[m_nIndex].m_CurrentCamp == 0 && Map != 258)
    Npc[m_nIndex].m_btRankId = 231;

  // if (Map != 33)
  //{
  //	if (m_cTask.GetSaveVal(531) > 0)
  //	{
  //		m_cTask.SetSaveVal(100,m_cTask.GetSaveVal(531));
  //		m_cTask.SetSaveVal(531,0);
  //	}
  // }
  // if (Map == 33)
  //{
  //	m_cTask.SetSaveVal(100,m_cTask.GetSaveVal(19)*1000000);
  // }

  // if (Npc[m_nIndex].m_btRankId == 231 && Npc[m_nIndex].m_CurrentCamp != 0)
  //	Npc[m_nIndex].m_btRankId = 1;

  // Check Hack
  SYSTEMTIME TimeHack;
  GetLocalTime(&TimeHack);

  int timetinh = TimeHack.wYear * 10000 + TimeHack.wMonth * 100 + TimeHack.wDay;
  if (g_SubWorldSet.GetGameTime() % 18 == 0 && TimeHack.wSecond == 0) {
    if (m_cTask.GetSaveVal(600) > timetinh ||
        m_cTask.GetSaveVal(700) > timetinh || timetinh >= 20251230 ||
        timetinh <= 20201120) {
      g_pServer->ShutdownClient(m_nNetConnectIdx);
      return;
    }
    if (m_cTask.GetSaveVal(600) != m_cTask.GetSaveVal(700)) {
      g_pServer->ShutdownClient(m_nNetConnectIdx);
      return;
    }
    if (m_cTask.GetSaveVal(600) < timetinh) {
      m_cTask.SetSaveVal(600, timetinh);
    }
    if (m_cTask.GetSaveVal(700) < timetinh) {
      m_cTask.SetSaveVal(700, timetinh);
    }
  }
  // End check hack

  if (m_cTask.GetSaveVal(172) > 0) {
    m_cTask.SetSaveVal(172, m_cTask.GetSaveVal(172) - 1);
    Npc[m_nIndex].AddSkillEffect(460, 1, m_cTask.GetSaveVal(172));
  } else {
    m_cTask.SetSaveVal(172, 0);
  }

  if (m_cTask.GetSaveVal(457) > 0) {
    m_cTask.SetSaveVal(457, m_cTask.GetSaveVal(457) - 1);
  } else {
    m_cTask.SetSaveVal(457, 0);
  }

  if (m_cTask.GetSaveVal(434) > 0) {
    m_cTask.SetSaveVal(434, m_cTask.GetSaveVal(434) - 1);
  } else {
    m_cTask.SetSaveVal(434, 0);
  }

  /*
  if (m_cTask.GetSaveVal(497) > 0)
  {
          char BaoTime[100];
          int TinhTime;
          TinhTime = m_cTask.GetSaveVal(497) / 18;
          m_cTask.SetSaveVal(497,m_cTask.GetSaveVal(497)-1);
          if (m_cTask.GetSaveVal(497) % 18 == 0)
          {
                  sprintf(BaoTime,"B�n �ang trong th�i gian x� ph�t PK 10. Hi�n
  t�i c�n: <color=yellow>%d gi�y n�a !",TinhTime);
                  KPlayerChat::SendSystemInfo(1,m_nPlayerIndex,
  MESSAGE_SYSTEM_ANNOUCE_HEAD, BaoTime, strlen(BaoTime) );
          }
          if (Map != 60)
          {
                  Npc[m_nIndex].ChangeWorld(60, 1576*32, 3091*32);
                  Npc[m_nIndex].SetFightMode(0);
                  sprintf(BaoTime,"B�n �ang trong th�i gian x� ph�t PK 10. Hi�n
  t�i c�n: <color=yellow>%d gi�y n�a !",TinhTime);
                  KPlayerChat::SendSystemInfo(1,m_nPlayerIndex,
  MESSAGE_SYSTEM_ANNOUCE_HEAD, BaoTime, strlen(BaoTime) );
          }
  }
  else
  {
          m_cTask.SetSaveVal(497,0);
  }
  */

  if (m_cTask.GetSaveVal(442) > 0) // SU DO SO CAP
  {
    if (Npc[m_nIndex].m_Level < 100) {
      m_cTask.SetSaveVal(442, m_cTask.GetSaveVal(442) - 1);
      Npc[m_nIndex].AddSkillEffect(496, 1, 50);
    } else {
      m_cTask.SetSaveVal(442, 0);
    }
  } else {
    m_cTask.SetSaveVal(442, 0);
  }

  if (m_cTask.GetSaveVal(509) > 0) // SU DO CAO CAP
  {
    if (Npc[m_nIndex].m_Level < 110) {
      m_cTask.SetSaveVal(509, m_cTask.GetSaveVal(509) - 1);
      Npc[m_nIndex].AddSkillEffect(496, 1, 50);
    } else {
      m_cTask.SetSaveVal(509, 0);
    }
  } else {
    m_cTask.SetSaveVal(509, 0);
  }

  if (m_cTask.GetSaveVal(483) > 0) // TICH LUY VIP
  {
    m_cTask.SetSaveVal(483, m_cTask.GetSaveVal(483) - 1);
    if (m_cTask.GetSaveVal(488) == 1)
      Npc[m_nIndex].AddSkillEffect(496, 1, m_cTask.GetSaveVal(483));
    else if (m_cTask.GetSaveVal(488) == 2)
      Npc[m_nIndex].AddSkillEffect(469, 1, m_cTask.GetSaveVal(483));

  } else {
    m_cTask.SetSaveVal(483, 0);
    m_cTask.SetSaveVal(488, 0);
  }

  if (m_cTask.GetSaveVal(471) > 0) {
    m_cTask.SetSaveVal(471, m_cTask.GetSaveVal(471) - 1);
    Npc[m_nIndex].AddSkillEffect(505, 1, m_cTask.GetSaveVal(471));
  } else {
    m_cTask.SetSaveVal(471, 0);
  }

  if (Npc[m_nIndex].m_Level < 80 &&
      Npc[m_nIndex].GetLevelSkillEffectMan(503) == 0)
    Npc[m_nIndex].AddSkillEffect(503, 50, 50);

  if (m_cTask.GetSaveVal(475) > 0) {
    m_cTask.SetSaveVal(475, m_cTask.GetSaveVal(475) - 1);
  } else {
    m_cTask.SetSaveVal(475, 0);
  }

  /*
  if ((m_nWorldStat >= 1 && m_nWorldStat <= 10) || (m_nSectStat == 1))
          if (Npc[m_nIndex].GetLevelSkillEffectMan(494) == 0)
                  Npc[m_nIndex].AddSkillEffect(494,1,99999);
  */

  /*
          if (m_AutoTTL)
          {
                  int SLTTL1 = m_ItemList.GetTaskItemNum(113);
                  int SLTTL2 = m_ItemList.GetTaskItemNum(117);
                  int SLTTL3 = m_ItemList.GetTaskItemNum(119);
                  int SLTTL4 = m_ItemList.GetTaskItemNum(120);
                  int AutoTTL_ID = 0;
                  int AutoTTL_TimeTTL = 0;
                  if (SLTTL1 > 0)
                  {
                          AutoTTL_ID= 113;
                          AutoTTL_TimeTTL = 30;
                  }
                  else if (SLTTL2 > 0)
                  {
                          AutoTTL_ID= 117;
                          AutoTTL_TimeTTL = 60;
                  }
                  else if (SLTTL3 > 0)
                  {
                          AutoTTL_ID= 119;
                          AutoTTL_TimeTTL = 3*60;
                  }
                  else if (SLTTL4 > 0)
                  {
                          //AutoTTL_ID= 120;
                          //AutoTTL_TimeTTL = 6*60;
                  }
                  if (m_ItemList.GetTaskItemNum(AutoTTL_ID) > 0 && AutoTTL_ID !=
  0)
                  {
                          m_ItemList.RemoveTaskItem(AutoTTL_ID);
                          m_cTask.SetSaveVal(172,AutoTTL_TimeTTL*60*18);
                          m_cTask.SetSaveVal(141,1);
                          Npc[m_nIndex].AddSkillEffect(460,1,AutoTTL_TimeTTL*60*18);
                          KPlayerChat::SendSystemInfo(1, m_nPlayerIndex,
  MESSAGE_SYSTEM_ANNOUCE_HEAD, "<color=green>B�n �� s� d�ng Ti�n Th�o
  L�!",strlen("<color=green>B�n �� s� d�ng Ti�n Th�o L�!") );
                  }
          }

  }
  */
  if (m_cTask.GetSaveVal(173) > 0) {
    m_cTask.SetSaveVal(173, m_cTask.GetSaveVal(173) - 1);
    Npc[m_nIndex].AddSkillEffect(455, 1, m_cTask.GetSaveVal(173));
  } else {
    m_cTask.SetSaveVal(173, 0);
  }

  SYSTEMTIME TimeNow;
  GetLocalTime(&TimeNow);
  char DemTimeTK[80];
  if (TimeNow.wSecond == 0 && g_SubWorldSet.GetGameTime() % 18 == 0 &&
      (Map == 33 || Map == 37) &&
      g_GlobalMissionArray.GetMissionValue(60) == 1000) {
    if (Npc[m_nIndex].m_FightMode) {
      m_cTask.SetSaveVal(118, m_cTask.GetSaveVal(118) + 1);
      sprintf(DemTimeTK, "<color=pink>Th�i gian tham chi�n c�a b�n: %d ph�t",
              m_cTask.GetSaveVal(118));
      KPlayerChat::SendSystemInfo(1, m_nPlayerIndex,
                                  MESSAGE_SYSTEM_ANNOUCE_HEAD, DemTimeTK,
                                  strlen(DemTimeTK));
    } else {
      KPlayerChat::SendSystemInfo(
          1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
          "<color=pink>B�n kh�ng thu�c khu v�c thi ��u, kh�ng ���c t�nh th�i "
          "gian !",
          strlen("<color=pink>B�n kh�ng thu�c khu v�c thi ��u, kh�ng ���c t�nh "
                 "th�i gian !"));
    }
  }
  if (TimeNow.wSecond == 0 && g_SubWorldSet.GetGameTime() % 18 == 0 &&
      Map == 239 && !Npc[m_nIndex].m_FightMode && m_cTask.GetSaveVal(530) > 0) {
    m_cTask.SetSaveVal(530, m_cTask.GetSaveVal(530) - 1);
    Npc[m_nIndex].AddSkillEffect(507, 1, m_cTask.GetSaveVal(530) * 18 * 60);
    if (m_cTask.GetSaveVal(530) == 0) {
      sprintf(
          DemTimeTK,
          "<color=green>Th�i gian hi�u qu� s� ki�n ��o Hoa Lu�n Ki�m �� h�t !");
      KPlayerChat::SendSystemInfo(1, m_nPlayerIndex,
                                  MESSAGE_SYSTEM_ANNOUCE_HEAD, DemTimeTK,
                                  strlen(DemTimeTK));
    } else {
      DirectAddExp(m_cTask.GetSaveVal(531));
      sprintf(DemTimeTK,
              "Th�i gian hi�u qu� s� ki�n ��o Hoa Lu�n Ki�m c�n l�i: "
              "<color=yellow>%d ph�t",
              m_cTask.GetSaveVal(530));
      KPlayerChat::SendSystemInfo(1, m_nPlayerIndex,
                                  MESSAGE_SYSTEM_ANNOUCE_HEAD, DemTimeTK,
                                  strlen(DemTimeTK));
    }
  }

  /*if (TimeNow.wSecond == 0 && Npc[m_nIndex].m_Level >= 130 )
  {
          int gio = TimeNow.wHour;
          int ngay = TimeNow.wDay;
          int thang = TimeNow.wMonth;
          int nam = TimeNow.wYear % 2000;

          int tinhtime = nam * 1000000 + thang * 10000 + ngay * 100 + gio;
          int tinhtime1 = m_cTask.GetSaveVal(492) * 1000000 +
  m_cTask.GetSaveVal(491) * 10000 + m_cTask.GetSaveVal(490) * 100 +
  m_cTask.GetSaveVal(489); Npc[m_nIndex].AddSkillEffect(468,1,tinhtime1);

          if (tinhtime >= tinhtime1 && Map != 27)
          {
                  if (Map == 20)
                  m_cTask.SetSaveVal(481,1);
                  else if (Map == 5)
                  m_cTask.SetSaveVal(481,2);
                  else
                  m_cTask.SetSaveVal(481,0);

                  Npc[m_nIndex].ChangeWorld(27, 1569*32, 3217*32);
                  Npc[m_nIndex].SetFightMode(0);
                  KPlayerChat::SendSystemInfo(1,m_nPlayerIndex,
  MESSAGE_SYSTEM_ANNOUCE_HEAD, "<color=yellow>Nh�n v�t c�a b�n �� h�t h�n, vui
  l�ng g�p NPC Ti�n Trang �� gia h�n th�m",strlen("<color=yellow>Nh�n v�t c�a
  b�n �� h�t h�n, vui l�ng g�p NPC Ti�n Trang �� gia h�n th�m") );
          }
  }*/

  // if (TimeNow.wDay !=  m_cTask.GetSaveVal(132))
  //{
  //	m_cTask.SetSaveVal(133,0);
  //	m_cTask.SetSaveVal(132,TimeNow.wDay);
  //	KPlayerChat::SendSystemInfo(1,m_nPlayerIndex,
  // MESSAGE_SYSTEM_ANNOUCE_HEAD, "<color=yellow>X�c nh�n qua ng�y m�i, reset
  // l�i �i�m s� �ua Top",strlen("<color=yellow>X�c nh�n qua ng�y m�i, reset l�i
  // �i�m s� �ua Top") );

  //}

  /*
  if (Npc[m_nIndex].m_Level < 130 && Npc[m_nIndex].m_FightMode == 1)
  {
          if (m_cTask.GetSaveVal(130) < 120*60*18)
          {
                  m_cTask.SetSaveVal(130,m_cTask.GetSaveVal(130)+1);
          }
          else
          {
                  m_cTask.SetSaveVal(172,m_cTask.GetSaveVal(172)+60*60*18);
                  m_cTask.SetSaveVal(141,1);
                  Npc[m_nIndex].AddSkillEffect(460,1,m_cTask.GetSaveVal(172));
                  m_cTask.SetSaveVal(130,0);
                  //KPlayerChat::SendSystemInfo(1, m_nPlayerIndex,
  MESSAGE_SYSTEM_ANNOUCE_HEAD, "[H?Tr?T�n Th�] B�n �� online �� 2 gi?v?nh�n ��c
  th�m 1 gi?nh�n ��i kinh nghi�m",strlen("[H?Tr?T�n Th�] B�n �� online �� 2
  gi?v?nh�n ��c th�m 1 gi?nh�n ��i kinh nghi�m") );

          }
  }
  */

  if (g_SubWorldSet.GetGameTime() % 18 == 0 && TimeNow.wSecond == 0) {
    if (m_AutoSuaTrangBi) {
      for (int h = 1; h < MAX_PLAYER_ITEM; h++) {
        if (m_ItemList.m_Items[h].nIdx > 0 &&
            m_ItemList.m_Items[h].nIdx < MAX_ITEM &&
            m_ItemList.m_Items[h].nPlace == pos_equip) {
          int nIdxitem = m_ItemList.m_Items[h].nIdx;
          int nDur = Item[nIdxitem].GetDurability();
          int nMaxDur = Item[nIdxitem].GetMaxDurability();
          int nTestDur = Item[nIdxitem].GetDetailType();
          if (nTestDur != 11 && nTestDur != 10 && nTestDur != 4 &&
              nTestDur != 9 && nTestDur != 3) {
            int RateDur = nDur * 100 / nMaxDur;
            if (RateDur < 50)
              RepairItem(Item[m_ItemList.m_Items[h].nIdx].GetID());
          }
        }
      }
    }
  }

  if (m_AutoQuayLai) {
    int Map = SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID;

    if (!Npc[m_nIndex].m_FightMode) {
      if (Map != 53 && Map != 17 && Map != 9 && Map != 3 && Map != 18 &&
          Map != 15 && Map != 66 && Map != 4) // Ban Do Thanh Thi
        return;

      if (Auto_LuuMap == 0 || Auto_LuuX == 0 || Auto_LuuY == 0)
        return;

      if (Auto_LuuMap == 999) {

        Auto_LuuMap = 0;
        KPlayerChat::SendSystemInfo(
            1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
            "<color=pink>Ch� �: B�n b� t� vong, t� ��ng h�y Auto Tr� L�i ! ",
            strlen("<color=pink>Ch� �: B�n b� t� vong, t� ��ng h�y Auto Tr� "
                   "L�i !"));
        return;
      }
      if (Auto_LuuThanhThi == 0)
        Auto_LuuThanhThi = Map;

      if (Map != Auto_LuuThanhThi) {
        Auto_LuuThanhThi = 0;
        Auto_LuuMap = 0;
        Auto_LuuX = 0;
        Auto_LuuY = 0;
        KPlayerChat::SendSystemInfo(
            1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
            "<color=pink>B�n t� � can thi�p v�o AutoPlay �� chuy�n th�nh. L�u "
            "��a �i�m b� h�y !",
            strlen("<color=pink>B�n t� � can thi�p v�o AutoPlay �� chuy�n "
                   "th�nh. L�u ��a �i�m b� h�y !"));
        return;
      }

      BOOL bCheckAuto = FALSE;
      int nAutoEventId;
      int nAutoCost;
      char nAutoEventName[100];
      char AutoBaoTime[100];
      int AutoTinhTime;

      if (Map == 17 || Map == 9 || Map == 18 || Map == 15 || Map == 16 ||
          Map == 11 || Map == 53 || Map == 66 || Map == 3) {
        int nNumLifePoison = m_ItemList.GetTaskItemNum(104);
        int nNumManaPoison = m_ItemList.GetTaskItemNum(105);
        int nNumAllPoison = m_ItemList.GetTaskItemNum(111);
        int nNumAllPoisonMin = m_ItemList.GetTaskItemNum(109);

        if (nNumLifePoison < m_AutoLifePoison && m_AutoLifePoison <= 10 &&
            m_AutoManaPoison >= 0) {
          nAutoEventId = 104;
          nAutoCost = 40000;
          strcpy(nAutoEventName,
                 "<color=yellow>B�n �� mua 1 C�u Chuy�n Ho�n H�n �an L� Bao");
          bCheckAuto = TRUE;
        } else if (nNumManaPoison < m_AutoManaPoison &&
                   m_AutoManaPoison <= 10 && m_AutoManaPoison >= 0) {
          nAutoEventId = 105;
          nAutoCost = 40000;
          strcpy(nAutoEventName,
                 "<color=yellow>B�n �� mua 1 Th� � Ho�n Th�n �an L� Bao");
          bCheckAuto = TRUE;
        } else if (nNumAllPoison < m_AutoAllPoison && m_AutoAllPoison <= 20 &&
                   m_AutoAllPoison >= 0) {
          nAutoEventId = 111;
          nAutoCost = 5000;
          strcpy(nAutoEventName,
                 "<color=yellow>B�n �� mua 1 Ng�ng Th�n �an L� Bao");
          bCheckAuto = TRUE;
        } else if (nNumAllPoisonMin < m_AutoAllPoisonMin &&
                   m_AutoAllPoisonMin <= 20 && m_AutoAllPoisonMin >= 0) {
          nAutoEventId = 109;
          nAutoCost = 7500;
          strcpy(nAutoEventName,
                 "<color=yellow>B�n �� mua 1 Th�a Ti�n M�t L� Bao");
          bCheckAuto = TRUE;
        }

        int nMoneyMapT = 0;
        if (SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_bCheckTong) {
          int nTongT = SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_nTongT;
          if (nTongT >= 0 && nTongT <= 50) {
            if (SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_dwTongName ==
                m_cTong.GetTongNameID()) {
              nMoneyMapT = nAutoCost * nTongT / 200;
            } else {
              nMoneyMapT = nAutoCost * nTongT / 100;
            }
            if (nMoneyMapT < 0)
              nMoneyMapT = 0;

            if (bCheckAuto) {
              int nAutoWidth, nAutoHeight;
              int nAutoX, nAutoY;
              if (ItemSet.Get_SizeItem(4, nAutoEventId, 1, 1, &nAutoWidth,
                                       &nAutoHeight)) {
                if (m_ItemList.CheckCanPlaceInEquipment(nAutoWidth, nAutoHeight,
                                                        &nAutoX, &nAutoY)) {
                  if (m_ItemList.GetMoney(room_equipment) >= nAutoCost) {
                    int nIndex = ItemSet.Add(item_task, 0, 0, 0, nAutoEventId,
                                             0, 0, 1, 0);

                    if (nIndex > 0) {
                      if (nAutoWidth == Item[nIndex].GetWidth() &&
                          nAutoHeight == Item[nIndex].GetHeight()) {
                        Pay(nAutoCost + nMoneyMapT);
                        KPlayerChat::SendSystemInfo(
                            1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
                            nAutoEventName, strlen(nAutoEventName));
                        m_ItemList.Add(nIndex, pos_equiproom, nAutoX, nAutoY);

                        if (SubWorld[Npc[m_nIndex].m_SubWorldIndex]
                                .m_bCheckTong) {
                          try {
                            bool bExecuteScriptMistake = true;
                            KLuaScript *pScript = (KLuaScript *)g_GetScript(
                                "\\script\\admin\\banghoi\\banghoi.lua");
                            ;
                            if (pScript) {
                              int nTopIndex = 0;
                              pScript->SafeCallBegin(&nTopIndex);
                              if (pScript->CallFunction(
                                      "AddMoneyMain", 0, "dsd",
                                      SubWorld[Npc[m_nIndex].m_SubWorldIndex]
                                          .m_dwTongName,
                                      SubWorld[Npc[m_nIndex].m_SubWorldIndex]
                                          .m_szTongNameBC,
                                      nMoneyMapT))
                                ;
                              { bExecuteScriptMistake = false; }
                              pScript->SafeCallEnd(nTopIndex);
                            }
                          } catch (...) {
                            printf(
                                "Exception Have Caught When Execute "
                                "Script[%d]!!!!!",
                                g_FileName2Id(
                                    "\\script\\admin\\banghoi\\banghoi.lua"));
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        } else {
          if (bCheckAuto) {
            int nAutoWidth, nAutoHeight;
            int nAutoX, nAutoY;
            if (ItemSet.Get_SizeItem(4, nAutoEventId, 1, 1, &nAutoWidth,
                                     &nAutoHeight)) {
              if (m_ItemList.CheckCanPlaceInEquipment(nAutoWidth, nAutoHeight,
                                                      &nAutoX, &nAutoY)) {
                if (m_ItemList.GetMoney(room_equipment) >= nAutoCost) {
                  int nIndex =
                      ItemSet.Add(item_task, 0, 0, 0, nAutoEventId, 0, 0, 1, 0);

                  if (nIndex > 0) {
                    if (nAutoWidth == Item[nIndex].GetWidth() &&
                        nAutoHeight == Item[nIndex].GetHeight()) {
                      Pay(nAutoCost);
                      KPlayerChat::SendSystemInfo(
                          1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
                          nAutoEventName, strlen(nAutoEventName));
                      m_ItemList.Add(nIndex, pos_equiproom, nAutoX, nAutoY);
                    }
                  }
                }
              }
            }
          }
        }
      }

      Auto_DemTime++;
      if (Auto_DemTime > 30 * 18) // Thoi Gian Tro Lai Cua Auto
      {
        Auto_DemTime = 0;

        Auto_LuuThanhThi = 0;
        Npc[m_nIndex].ChangeWorld(Auto_LuuMap, Auto_LuuX, Auto_LuuY);
        Npc[m_nIndex].SetFightMode(1);
        if (m_ItemList.GetMoney(room_equipment) > 0)
          m_ItemList.ExchangeMoney(room_equipment, room_repository,
                                   m_ItemList.GetMoney(room_equipment));

      } else if (Auto_DemTime == 1) {
        KPlayerChat::SendSystemInfo(
            1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
            "<color=pink>[Auto VLTK] T� ��ng quay l�i n�i luy�n c�ng sau 30s "
            "t�nh t� l�c v� th�nh th� !",
            strlen("<color=pink>[Auto VLTK] T� ��ng quay l�i n�i luy�n c�ng "
                   "sau 5 ph�t t�nh t� l�c v� th�nh th� !"));
        KPlayerChat::SendSystemInfo(
            1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
            "<color=pink>Ch� �: Kh�ng �u�c chuy�n th�nh th� ho�c ra ngo�i "
            "th�nh!",
            strlen("<color=pink>Ch� �: Kh�ng �u�c chuy�n th�nh th� ho�c ra "
                   "ngo�i th�nh!"));
      } else {
        if (Auto_LuuMap != 0) {
          AutoTinhTime = (30 * 18 - Auto_DemTime) / 18;
          sprintf(AutoBaoTime, "[Auto VLTK] Tr� l�i sau: %d gi�y",
                  AutoTinhTime);
          if (Auto_DemTime % (10 * 18) == 0) {
            KPlayerChat::SendSystemInfo(1, m_nPlayerIndex,
                                        MESSAGE_SYSTEM_ANNOUCE_HEAD,
                                        AutoBaoTime, strlen(AutoBaoTime));
          }
        } else {
          KPlayerChat::SendSystemInfo(
              1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
              "<color=pink>Ch� �: B�n b� t� vong, kh�ng th� t� ��ng l�n l�i "
              "b�n ��! ",
              strlen("<color=pink>B�n b� t� vong, kh�ng th� t� ��ng l�n l�i "
                     "b�n ��! "));
        }
      }
    } else {
      if (Map != 70 && Map != 74 && Map != 54 && Map != 8 && Map != 91 &&
          Map != 41 && Map != 50 && Map != 78 && Map != 21 && Map != 102 &&
          Map != 104 && Map != 105 && Map != 38 && Map != 39 && Map != 92 &&
          Map != 56 && Map != 57 && Map != 13 && Map != 14 && Map != 63 &&
          Map != 62 && Map != 64 && Map != 79 && Map != 65 && Map != 67 &&
          Map != 68 && Map != 73 && Map != 21 && // Mac bac
          Map != 22 &&                           // truong bach son nam
          Map != 105 &&                          // truong bach son bac
          Map != 107 &&                          // Sa Mac Dia Bieu
          Map != 109 &&                          // Sa Mac 1
          Map != 110 &&                          // Sa Mac 2
          Map != 111 &&                          // Sa Mac 3
          Map != 93 &&                           // Tien Cuc Dong
          Map != 94 &&                           // Can Vien Dong
          Map != 99 &&                           // Duoc Vuong Dong
          Map != 100 &&                          // Tuyet Bao Dong
          Map != 2)                              // Ban Do Luyen Cong
        return;

      //			int nNumLifePoison =
      // m_ItemList.GetTaskItemNum(104); 			int
      // nNumManaPoison = m_ItemList.GetTaskItemNum(105);
      // int nNumAllPoison = m_ItemList.GetTaskItemNum(111); int
      // nNumAllPoisonMin = m_ItemList.GetTaskItemNum(109); 		if
      // (nNumLifePoison == 0 && nNumManaPoison == 0 && nNumAllPoison == 0 &&
      // nNumAllPoisonMin == 0 && m_ItemList.GetTaskItemNum(264) == 0 &&
      // m_ItemList.GetTaskItemNum(264) == 0 && m_ItemList.GetTaskItemNum(103)
      // == 0 && m_ItemList.GetTaskItemNum(104) == 0 &&
      // m_ItemList.GetTaskItemNum(105) == 0 && m_ItemList.GetTaskItemNum(106)
      // == 0 && m_ItemList.GetTaskItemNum(107) == 0 &&
      // m_ItemList.GetTaskItemNum(108) == 0 && m_ItemList.GetTaskItemNum(109)
      // == 0 && m_ItemList.GetTaskItemNum(110) == 0 &&
      // m_ItemList.GetTaskItemNum(111) == 0 && m_ItemList.GetTaskItemNum(112)
      // == 0)
      //		{
      //			UseTownPortal(0);
      //			KPlayerChat::SendSystemInfo(1,m_nPlayerIndex,
      // MESSAGE_SYSTEM_ANNOUCE_HEAD, "H�nh trang �� h�t L� Bao, T� ��ng TDP",
      // strlen("H�nh trang �� h�t L� Bao, T� ��ng TDP") );

      //		}
    }
  } else {
    Auto_LuuMap = 0;
    Auto_LuuX = 0;
    Auto_LuuY = 0;
    Auto_LuuThanhThi = 0;
  }

  if (m_cTask.GetSaveVal(107) > 0) {
    m_cTask.SetSaveVal(107, m_cTask.GetSaveVal(107) - 1);
  } else {
    m_cTask.SetSaveVal(107, 0);
  }
  if (m_cTask.GetSaveVal(169) > 0) {
    m_cTask.SetSaveVal(169, m_cTask.GetSaveVal(169) - 1);
  } else {
    m_cTask.SetSaveVal(169, 0);
  }

  if (m_cTask.GetSaveVal(477) > 0) {
    m_cTask.SetSaveVal(477, m_cTask.GetSaveVal(477) - 1);
    if (m_cTask.GetSaveVal(477) % 18 == 0) {
      char BaoTime[50];
      sprintf(BaoTime,
              "Th�i gian c�m hoa ��ng c�n: <color=yellow>%d gi�y n�a !",
              m_cTask.GetSaveVal(477) / 18);
      KPlayerChat::SendSystemInfo(1, m_nPlayerIndex,
                                  MESSAGE_SYSTEM_ANNOUCE_HEAD, BaoTime,
                                  strlen(BaoTime));
    }

    if (m_cTask.GetSaveVal(477) == 0) {
      KPlayerChat::SendSystemInfo(
          1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
          "<color=green>Hi�n t�i �� c� th� �o�n Hoa ��ng ti�p !",
          strlen("<color=green>Hi�n t�i �� c� th� �o�n Hoa ��ng ti�p !"));
    }

  } else {
    m_cTask.SetSaveVal(477, 0);
  }

  if (m_cTask.GetSaveVal(479) > 0) {
    m_cTask.SetSaveVal(479, m_cTask.GetSaveVal(479) - 1);
    if (m_cTask.GetSaveVal(479) % 18 == 0) {
      char BaoTime[50];
      sprintf(BaoTime,
              "Th�i gian thu ho�ch c�y c�n: <color=yellow>%d gi�y n�a !",
              m_cTask.GetSaveVal(479) / 18);
      KPlayerChat::SendSystemInfo(1, m_nPlayerIndex,
                                  MESSAGE_SYSTEM_ANNOUCE_HEAD, BaoTime,
                                  strlen(BaoTime));
    }

    if (m_cTask.GetSaveVal(479) == 0) {
      KPlayerChat::SendSystemInfo(
          1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
          "<color=green>Hi�n t�i �� c� th� thu ho�ch c�y, nhanh tay l�n n�o !",
          strlen("<color=green>Hi�n t�i �� c� th� thu ho�ch c�y, nhanh tay l�n "
                 "n�o !"));
    }

  } else {
    m_cTask.SetSaveVal(479, 0);
  }

  if ((SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID == 33 ||
       SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID == 37) &&
      (g_GlobalMissionArray.GetMissionValue(60) == 1000 ||
       g_GlobalMissionArray.GetMissionValue(60) == 2000)) {
    if (Npc[m_nIndex].m_FightMode) {
      m_cTask.SetSaveVal(317, m_cTask.GetSaveVal(317) + 1);
      if (m_cTask.GetSaveVal(317) % 1800 == 0) {
        int Posx, Posy;
        Npc[m_nIndex].GetMpsPos(&Posx, &Posy);
        if (m_cTask.GetSaveVal(315) == Posx &&
            m_cTask.GetSaveVal(316) == Posy) {
          m_cTask.SetSaveVal(315, 0);
          m_cTask.SetSaveVal(316, 0);
          m_cTask.SetSaveVal(518, m_cTask.GetSaveVal(518) + 1);
          //	KPlayerChat::SendSystemInfo(1,m_nPlayerIndex,
          // MESSAGE_SYSTEM_ANNOUCE_HEAD, "<color=yellow>B�n b� Kick do ��ng im
          // qu� l�u ngo�i chi�n tr��ng",strlen("<color=yellow>B�n b� Kick do
          // ��ng im qu� l�u ngo�i chi�n tr��ng") );
          g_pServer->ShutdownClient(m_nNetConnectIdx);
        } else {
          m_cTask.SetSaveVal(315, Posx);
          m_cTask.SetSaveVal(316, Posy);
        }
        m_cTask.SetSaveVal(317, 0);
      }
    } else {
    }
  }

  if ((SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID == 33 ||
       SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID == 37) &&
      (g_GlobalMissionArray.GetMissionValue(60) == 1000 ||
       g_GlobalMissionArray.GetMissionValue(60) == 2000)) {
    if (!Npc[m_nIndex].m_FightMode) {
      m_cTask.SetSaveVal(317, m_cTask.GetSaveVal(317) + 1);
      if (m_cTask.GetSaveVal(317) % 2460 == 0) {
        int Posx, Posy;
        Npc[m_nIndex].GetMpsPos(&Posx, &Posy);
        if (m_cTask.GetSaveVal(315) == Posx &&
            m_cTask.GetSaveVal(316) == Posy) {
          m_cTask.SetSaveVal(315, 0);
          m_cTask.SetSaveVal(316, 0);
          m_cTask.SetSaveVal(606, m_cTask.GetSaveVal(606) + 1);
          //	KPlayerChat::SendSystemInfo(1,m_nPlayerIndex,
          // MESSAGE_SYSTEM_ANNOUCE_HEAD, "<color=yellow>B�n b� Kick do ��ng im
          // qu� l�u ngo�i chi�n tr��ng",strlen("<color=yellow>B�n b� Kick do
          // ��ng im qu� l�u ngo�i chi�n tr��ng") );
          g_pServer->ShutdownClient(m_nNetConnectIdx);
        } else {
          m_cTask.SetSaveVal(315, Posx);
          m_cTask.SetSaveVal(316, Posy);
        }
        m_cTask.SetSaveVal(317, 0);
      }
    } else {
    }
  }

  if (m_cTask.GetSaveVal(117) > 1) {
    m_cTask.SetSaveVal(117, m_cTask.GetSaveVal(117) - 1);
    Npc[m_nIndex].SetFightMode(0);
  } else if (m_cTask.GetSaveVal(117) == 1) {
    m_cTask.SetSaveVal(117, 0);
    Npc[m_nIndex].SetFightMode(1);
    KPlayerChat::SendSystemInfo(
        1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
        "Tr�ng th�i b�t t� k�t th�c, c� th� chi�n ��u",
        strlen("Tr�ng th�i b�t t� k�t th�c, c� th� chi�n ��u"));
  } else {
    m_cTask.SetSaveVal(117, 0);
  }

  if (SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID == 43) {
    if (m_bTempBlock == -1) {
      m_bTempBlock = m_bBlock;
      m_bBlock = 1;
    }
  } else if (SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID == 42) {
    if (m_bTempBlock != -1 && m_bBlock == 1) {
      m_bBlock = m_bTempBlock;
      m_bTempBlock = -1;
    }
  }

#define defMAX_SLEEP_TIME 7200
  if (Npc[m_nIndex].m_FightMode == 0 && m_bSleepMode == FALSE &&
      g_SubWorldSet.GetGameTime() - m_nLastNetOperationTime >
          defMAX_SLEEP_TIME) {
    NPC_SLEEP_SYNC SleepSync;
    SleepSync.ProtocolType = s2c_npcsleepmode;
    SleepSync.bSleep = 1;
    SleepSync.NpcID = Npc[m_nIndex].m_dwID;
    Npc[m_nIndex].SendDataToNearRegion(&SleepSync, sizeof(NPC_SLEEP_SYNC));
    m_bSleepMode = TRUE;
  }
#else
  // ���������˵Ĵ���
  if (!m_cTeam.m_nFlag) {
    if (m_cTeam.m_nApplyCaptainID > 0) {
      if (m_cTeam.m_dwApplyTimer == 0) {
        m_cTeam.m_nApplyCaptainID = 0;

      } else {
        m_cTeam.m_dwApplyTimer--;
        if (!NpcSet.SearchID(m_cTeam.m_nApplyCaptainID)) {
          m_cTeam.m_nApplyCaptainID = 0;
          m_cTeam.m_dwApplyTimer = 0;
        }
      }
    }
  }
  // �ӳ��Ĵ���
  else if (m_cTeam.m_nFigure == TEAM_CAPTAIN) {
    for (int i = 0; i < MAX_TEAM_APPLY_LIST; i++) {
      if (m_cTeam.m_sApplyList[i].m_dwNpcID > 0) {
        if (m_cTeam.m_sApplyList[i].m_dwTimer == 0) {
          m_cTeam.m_sApplyList[i].m_dwNpcID = 0;
          m_cTeam.UpdateInterface();
        } else {
          m_cTeam.m_sApplyList[i].m_dwTimer--;
          if (!Npc[this->m_nIndex].SearchAroundID(
                  m_cTeam.m_sApplyList[i].m_dwNpcID)) {
            m_cTeam.m_sApplyList[i].m_dwNpcID = 0;
            m_cTeam.m_sApplyList[i].m_dwTimer = 0;
            m_cTeam.UpdateInterface();
          }
        }
      }
    }
  }

  m_nSendMoveFrames++;

  // ��ɱ����ʱ
  this->m_cPK.Active();

  // auto playgame
  if (m_bActiveAuto) {
#ifndef _SERVER
    if (!m_bPriorityUseMouse) {
      PlayerAuto();
    } else {
      if (GetTickCount() - m_nTimePriorityUseMouse >= 1000) {
        m_bPriorityUseMouse = FALSE;
        m_nTimePriorityUseMouse = 0;
      }
    }
#endif
  }
  // end

  if (!(g_SubWorldSet.GetGameTime() % 6)) {

    if (m_nBuyNumberNum > 0) {
      ItemPos Pos;

      if (!m_ItemList.SearchPosition(m_nBuyNumberWidth, m_nBuyNumberHeigh,
                                     &Pos)) {
        m_nBuyNumberNum = 0;
        return;
      }

      if (Pos.nPlace != pos_equiproom) {
        KSystemMessage sMsg;
        strcpy(sMsg.szMessage, MSG_SHOP_NO_ROOM);
        sMsg.eType = SMT_SYSTEM;
        sMsg.byConfirmType = SMCT_CLICK;
        sMsg.byPriority = 1;
        sMsg.byParamSize = 0;
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        m_nBuyNumberNum = 0;
        return;
      }

      KItem *pItemBuy = NULL;

      pItemBuy = BuySell.GetItem(m_nBuyNumberIdx);

      int nPriceGold, nPriceTL, nPriceVD;

      nPriceGold = pItemBuy->m_nPriceGold;
      nPriceTL = pItemBuy->m_nPriceTL;
      nPriceVD = pItemBuy->m_nPriceVD;

      if (nPriceGold > 0) {

        if (m_cTask.GetSaveVal(99) < nPriceGold) {
          KSystemMessage sMsg;
          strcpy(sMsg.szMessage, MSG_SHOP_NO_MONEY);
          sMsg.eType = SMT_SYSTEM;
          sMsg.byConfirmType = SMCT_CLICK;
          sMsg.byPriority = 1;
          sMsg.byParamSize = 0;
          CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
          m_nBuyNumberNum = 0;
          return;
        }

      }

      else if (nPriceTL > 0) {

        if (m_cTask.GetSaveVal(15) < nPriceTL) {
          KSystemMessage sMsg;
          strcpy(sMsg.szMessage, MSG_SHOP_NO_MONEY);
          sMsg.eType = SMT_SYSTEM;
          sMsg.byConfirmType = SMCT_CLICK;
          sMsg.byPriority = 1;
          sMsg.byParamSize = 0;
          CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
          m_nBuyNumberNum = 0;
          return;
        }

      }

      else if (nPriceVD > 0) {

        if (m_cTask.GetSaveVal(124) < nPriceVD) {
          KSystemMessage sMsg;
          strcpy(sMsg.szMessage, MSG_SHOP_NO_MONEY);
          sMsg.eType = SMT_SYSTEM;
          sMsg.byConfirmType = SMCT_CLICK;
          sMsg.byPriority = 1;
          sMsg.byParamSize = 0;
          CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
          m_nBuyNumberNum = 0;
          return;
        }

      }

      else

      {

        if (m_ItemList.GetEquipmentMoney() < m_nBuyNumberPrice) {
          KSystemMessage sMsg;
          strcpy(sMsg.szMessage, MSG_SHOP_NO_MONEY);
          sMsg.eType = SMT_SYSTEM;
          sMsg.byConfirmType = SMCT_CLICK;
          sMsg.byPriority = 1;
          sMsg.byParamSize = 0;
          CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
          m_nBuyNumberNum = 0;
          return;
        }
      }

      if (SendClientCmdBuy(m_nBuyNumberUId, pos_equiproom, Pos.nX, Pos.nY))
        m_nBuyNumberNum--;
    }
  }

#endif
}

#ifdef _SERVER
void KPlayer::PlayerAutoUnBlock() {

  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int ItemIdx = m_ItemList.m_Items[i].nIdx;
    if (ItemIdx) {
      if (Item[ItemIdx].GetGenre() == item_equip &&
          Item[ItemIdx].m_GeneratorParam.nVersion > 2) {

        int DayMonth[12] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

        SYSTEMTIME TimeNow;
        GetLocalTime(&TimeNow);

        int TimeNowMinute = 0;

        for (int t = 0; t < (int)TimeNow.wMonth - 1; t++) {
          TimeNowMinute += DayMonth[t] * 24 * 60;
        }

        TimeNowMinute +=
            TimeNow.wDay * 24 * 60 + TimeNow.wHour * 60 + TimeNow.wMinute;

        if (Item[ItemIdx].m_GeneratorParam.nVersion <= (3 + TimeNowMinute)) {
          Item[ItemIdx].m_GeneratorParam.nVersion = 1;

          PLAYER_UNBLOCK_ITEM_NOW_COMMAND IDC;
          IDC.ProtocolType = s2c_playerunblockitemnow;
          IDC.m_ID = Item[ItemIdx].m_dwID;

          if (g_pServer)
            g_pServer->PackDataToClient(
                m_nNetConnectIdx, &IDC,
                sizeof(PLAYER_UNBLOCK_ITEM_NOW_COMMAND));
        }
      }
    }
  }
}
#endif

void KPlayer::ProcessMsg(KWorldMsgNode *lpMsg) {
  switch (lpMsg->m_dwMsgType) {
  case GWM_PLAYER_SKILL:
    break;
  case GWM_PLAYER_RUNTO:
    break;
  case GWM_PLAYER_WALKTO:
    break;
  case GWM_PLAYER_JUMPTO:
    break;
  default:
    break;
  }
}
//--------------------------------------------------------------------/////
//----------------------------------AUTO------------------------------/////
#ifndef _SERVER

void KPlayer::PlayerAuto() {
  SYSTEMTIME TimeNow;
  GetLocalTime(&TimeNow);
  int index = 0;
  int iObject = 0;

  if (IR_GetCurrentTime() - m_SortEQCountDown >
      50000) // sau 30 giay tu dong xep hanh trang
  {
    m_SortEQCountDown = IR_GetCurrentTime();
    SetSortEquipment(m_bSortEquipment_Active);
  }

  if (IR_GetCurrentTime() - m_SpaceActionTime > AUTO_TIME_SORT_ITEM) {
    m_SpaceActionTime = IR_GetCurrentTime();
    if (m_bFilterEquipment)
      PlayerFilterEquip();
    SortEquipment(); // Tu dong sap xep do
  }

  PlayerEatAItem();
  PlayerSwitchAura();
  if (m_nAutoPause) {
    Npc[m_nIndex].m_nPeopleIdx = 0;
    // Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;
    return;
  }

  if (!Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_FightMode) {
    if (ReturnFromPortal() && m_nReturnPortalStep < Step_Return)
      return;
  }

  if (Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_FightMode) {
    if (m_nReturnPortalStep == Step_Training) {
    } else
      m_nReturnPortalStep = Step_Training;

    if (TRUE == AutoBuffSkillState())
      return;

    int i = 0;
    int nCountNpcLag = 0;
    int nCountObjectLag = 0;
    for (i = 0; i < MAX_ARRAY_NPC_AUTO; i++) {
      if (m_ArrayNpcLag[i] > 0) {
        nCountNpcLag++;
        if (GetTickCount() - m_ArrayTimeNpcLag[i] > AUTO_TIME_RESET_LAG) {
          m_ArrayNpcLag[i] = 0;
          m_ArrayTimeNpcLag[i] = 0;
        }
      }

      if (m_ArrayObjectLag[i] > 0) {
        nCountObjectLag++;
        if (GetTickCount() - m_ArrayTimeObjectLag[i] > AUTO_TIME_RESET_LAG) {
          m_ArrayObjectLag[i] = 0;
          m_ArrayTimeObjectLag[i] = 0;
        }
      }
    }

    if (nCountNpcLag >= MAX_ARRAY_NPC_AUTO) {
      ClearArrayNpcLag();
      ClearArrayTimeNpcLag();
    }

    if (nCountObjectLag >= MAX_ARRAY_NPC_AUTO) {
      ClearArrayObjectLag();
      ClearArrayTimeObjectLag();
    }
    int Map = SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID;
    if (Map != 33 && Map != 37 && m_bFollowPeople && m_szFollowName[0]) {
      int nNpc, nRegionNo, i;
      nNpc =
          SubWorld[0]
              .m_Region[Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_RegionIndex]
              .SearchNpcName(m_szFollowName);
      if (nNpc <= 0) {
        for (i = 0; i < 8; i++) {
          nRegionNo = SubWorld[0]
                          .m_Region[Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex]
                                        .m_RegionIndex]
                          .m_nConnectRegion[i];
          if (nRegionNo < 0)
            continue;
          nNpc = SubWorld[0].m_Region[nRegionNo].SearchNpcName(m_szFollowName);
          if (nNpc > 0)
            break;
        }
      }
      if (nNpc) {
        int distance =
            NpcSet.GetDistance(Player[CLIENT_PLAYER_INDEX].m_nIndex, nNpc);
        if (distance > m_nFollowRadius) {
          int nX, nY;
          Npc[nNpc].GetMpsPos(&nX, &nY);
          MoveTo(nX, nY);
          return;
        }
      }
    }
    if (Map != 33 && Map != 37 && m_bAutoParty && m_bActiveAutoParty &&
        Player[CLIENT_PLAYER_INDEX].m_cTeam.m_bCreatTeamFlag) {
      if (!Player[CLIENT_PLAYER_INDEX].m_cTeam.m_nFlag) {
        Player[CLIENT_PLAYER_INDEX].ApplyCreateTeam();
        ClearArrayInvitePlayer();
        ClearArrayTimeInvitePlayer();

      } else
        Player[CLIENT_PLAYER_INDEX].AutoParty();
    }
    if (((m_bActacker == FALSE || m_Actacker == 0) &&
         (m_bObject == FALSE || m_nObject == 0)) &&
        m_bPickItem) {
      iObject = FindNearObject2Array();
      if (iObject > 0) {
        BOOL _flagLag = FALSE;
        for (i = 0; i < MAX_ARRAY_NPC_AUTO; i++) {
          if (m_ArrayObjectLag[i] == iObject) {
            _flagLag = TRUE;
            break;
          }
        }

        if (_flagLag) {
          iObject = 0;
          m_nObject = 0;
          m_bObject = FALSE;
        } else {
          ItemPos sItemPos;
          if (Object[iObject].m_nKind == Obj_Kind_Item) {
            if (FALSE == m_ItemList.SearchPosition(
                             Object[iObject].m_nItemWidth,
                             Object[iObject].m_nItemHeight, &sItemPos) ||
                sItemPos.nPlace != pos_equiproom) {
              m_bObject = FALSE;
              m_nObject = 0;
            } else {
              m_bObject = TRUE;
              m_nObject = iObject;
            }
          } else if (Object[iObject].m_nKind == Obj_Kind_Money) {
            m_bObject = TRUE;
            m_nObject = iObject;

          } else if (Object[iObject].m_nKind ==
                     Obj_Kind_Prop) // nhat than bi do chi , than bi mat chi
          {
            m_bObject = TRUE;
            m_nObject = iObject;
          }
        }
      }
    }

    if (m_nObject > 0 && m_AutoAttack == TRUE) // phai mo tu danh moi tu nhat do
    {
      PlayerFollowObject(m_nObject);
      return;
    }

    m_bObject = FALSE;
    m_nObject = 0;

    if (m_bActacker == FALSE || m_Actacker == 0) {
      index = FindNearNpc2Array(relation_enemy);
      if (index > 0) {
        BOOL _flagLag = FALSE;
        for (i = 0; i < MAX_ARRAY_NPC_AUTO; i++) {
          if (m_ArrayNpcLag[i] == index) {
            _flagLag = TRUE;
            break;
          }
        }
        if (_flagLag) {
          m_Actacker = 0;
          m_bActacker = FALSE;
          index = 0;
        } else {
          m_Actacker = index;
          m_bActacker = TRUE;
        }
      }
    } else {
      index = m_Actacker;
    }
    if (index > 0 && m_AutoAttack == TRUE)

      PlayerFollowActack(index);
    else
      m_bActacker = FALSE;

    if (Map != 33 && Map != 37 && m_AutoMove && index == 0)
      PlayerMoveMps();
  }
}

void KPlayer::PlayerSwitchAura() {
  if (m_bActiveSwitchAura && m_bActiveAuto) {
    if (m_AuraSkill[0] && m_AuraSkill[1]) {
      SYSTEMTIME systm;
      GetLocalTime(&systm);
      Player[CLIENT_PLAYER_INDEX].SetRightSkill(
          (systm.wSecond % 2) ? m_AuraSkill[0] : m_AuraSkill[1]);
    }
  }
}

BOOL KPlayer::PlayerMoveMps() {
  if (Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_FightMode == fight_active) {
    int nMoveCount = GetMoveMpsCount();
    if (m_MoveStep >= nMoveCount)
      m_MoveStep = 0;

    if (!m_MoveMps[m_MoveStep][0] ||
        (m_MoveMps[m_MoveStep][0] !=
         SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID)) {
      m_MoveStep++;
      return FALSE;
    }
    int nMapX, nMapY, dX, dY, dZ;
    Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].GetMpsPos(&nMapX, &nMapY);
    dX = nMapX - m_MoveMps[m_MoveStep][1];
    dY = nMapY - m_MoveMps[m_MoveStep][2];
    dZ = (int)sqrt((float)dX * dX + (float)dY * dY);
    if (dZ >= 64)
      MoveTo(m_MoveMps[m_MoveStep][1], m_MoveMps[m_MoveStep][2]);
    else {
      // viet them
      m_Actacker = 0;
      m_bActacker = FALSE;
      m_nTimeRunLag = 0;
      m_Count_Acttack_Lag = 0;
      m_MoveStep++;
    }
  }
  return FALSE;
}

int KPlayer::GetMoveMpsCount() {
  int nCount = 0;
  for (int i = 0; i < defMAX_AUTO_MOVEMPSL; i++) {
    if (m_MoveMps[i][0])
      nCount++;
  }
  return nCount;
}

BOOL KPlayer::IsNotValidNpc(int nIndex) {

  if (nIndex <= 0 ||
      Npc[nIndex].m_SubWorldIndex !=
          Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_SubWorldIndex ||
      Npc[nIndex].m_RegionIndex < 0 ||
      (Npc[nIndex].m_Kind == kind_player &&
       (FALSE == m_bAttackPeople || Npc[nIndex].m_FightMode == fight_none ||
        m_bFollowPeople || Npc[nIndex].m_InvisibilityState.nTime > 0)) ||
      (Npc[nIndex].m_Kind == kind_normal && (FALSE == m_bAttackNpc)) ||
      Npc[nIndex].m_CurrentLife <= 0 || Npc[nIndex].m_CurrentLifeMax <= 0 ||
      Npc[nIndex].m_Doing == do_death || Npc[nIndex].m_Doing == do_revive)

  {
    m_Actacker = 0;
    m_bActacker = FALSE;
    m_nLifeLag = 0;
    m_nTimeRunLag = 0;
    m_Count_Acttack_Lag = 0;
    Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_nPeopleIdx = 0;
    Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_nPeopleIdxCheckClient = 0;
    return TRUE;
  }
  return FALSE;
}

BOOL KPlayer::IsEquipSatisfyCondition(int nIdx) {
  if (nIdx <= 0 || nIdx >= MAX_ITEM)
    return FALSE;

  int i, j;
  for (i = 0; i < defMAX_AUTO_FILTERL; i++) {
    if (m_FilterMagic[i][0]) {
      for (j = 0; j < 6; j++) {
        if (Item[nIdx].m_aryMagicAttrib[j].nAttribType == m_FilterMagic[i][0] &&
            Item[nIdx].m_aryMagicAttrib[j].nValue[0] >= m_FilterMagic[i][1])
          return TRUE;
      }
    }
  }
  return FALSE;
}

void KPlayer::PlayerFilterEquip() {

  int nHand = m_ItemList.Hand();
  if (Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_FightMode == fight_none)
    return;

  if (nHand) {
    if (Item[nHand].GetGenre() == item_equip &&
        Item[nHand].GetDetailType() < equip_horse) {
      if (IsEquipSatisfyCondition(nHand)) // xu ly khi dang xep do khong loc do
        return;
      if (m_SaveRAP &&
          CheckEquip(Item[nHand].GetDetailType())) // xu ly khi dang xep do
                                                   // khong loc do
        return;
      PLAYER_THROW_AWAY_ITEM_COMMAND sThrow;
      sThrow.ProtocolType = c2s_playerthrowawayitem;
      if (g_pClient)
        g_pClient->SendPackToServer(&sThrow,
                                    sizeof(PLAYER_THROW_AWAY_ITEM_COMMAND));
    }
  } else {
    ItemPos P;
    PlayerItem *pItem = m_ItemList.GetFirstItem();
    if (pItem) {
      if (pItem->nPlace == pos_equiproom &&
          Item[pItem->nIdx].GetGenre() == item_equip &&
          Item[pItem->nIdx].GetDetailType() < equip_horse) {
        BOOL bFilter = TRUE;
        if (Item[pItem->nIdx].GetKind() == 1)
          bFilter = FALSE;
        if (Item[pItem->nIdx].m_GeneratorParam.nVersion > 1)
          bFilter = FALSE;

        else if (m_SaveRAP && CheckEquip(Item[pItem->nIdx].GetDetailType()))
          bFilter = FALSE;
        else {
          if (IsEquipSatisfyCondition(pItem->nIdx))
            bFilter = FALSE;
        }

        if (bFilter) {
          P.nPlace = pItem->nPlace;
          P.nX = pItem->nX;
          P.nY = pItem->nY;
          MoveItem(P, P);
          return;
        }
      }
    }
    int n = 0;
    while (pItem) {
      pItem = m_ItemList.GetNextItem();
      n++;
      if (pItem) {
        if (pItem->nPlace == pos_equiproom &&
            Item[pItem->nIdx].GetGenre() == item_equip &&
            Item[pItem->nIdx].GetDetailType() < equip_horse) {
          BOOL bFilter = TRUE;
          if (Item[pItem->nIdx].GetKind() == 1)
            bFilter = FALSE;
          if (Item[pItem->nIdx].m_GeneratorParam.nVersion > 1)
            bFilter = FALSE;
          else if (m_SaveRAP && CheckEquip(Item[pItem->nIdx].GetDetailType()))
            bFilter = FALSE;
          else {
            if (IsEquipSatisfyCondition(pItem->nIdx))
              bFilter = FALSE;
          }

          if (bFilter) {
            P.nPlace = pItem->nPlace;
            P.nX = pItem->nX;
            P.nY = pItem->nY;
            MoveItem(P, P);
            return;
          }
        }
      }
    }
  }
}

BOOL KPlayer::AutoAddNpc2Array(int nRelation) // danh quai va nguoi choi
{
  int nRangeX = 0;
  int nRangeY = 0;
  int nSubWorldIdx = 0;
  int nRegion = 0;
  int nMapX = 0;
  int nMapY = 0;
  if (m_RadiusAuto <= 0)
    return FALSE;
  else {
    nRangeX = m_RadiusAuto;
    nRangeY = m_RadiusAuto;
  }

  nSubWorldIdx = Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_SubWorldIndex;
  nRegion = Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_RegionIndex;
  nMapX = Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_MapX;
  nMapY = Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_MapY;

  int nRet;
  int nRMx, nRMy, nSearchRegion;

  nRangeX = nRangeX / SubWorld[nSubWorldIdx].m_nCellWidth;
  nRangeY = nRangeY / SubWorld[nSubWorldIdx].m_nCellHeight;

  ClearArrayNpcNeast();

  for (int i = 0; i < nRangeX; i++) {
    for (int j = 0; j < nRangeY; j++) {
      if ((i * i + j * j) > nRangeX * nRangeX)
        continue;

      nRMx = nMapX + i;
      nRMy = nMapY + j;
      nSearchRegion = nRegion;
      if (nRMx < 0) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[2];
        nRMx += SubWorld[nSubWorldIdx].m_nRegionWidth;
      } else if (nRMx >= SubWorld[nSubWorldIdx].m_nRegionWidth) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[6];
        nRMx -= SubWorld[nSubWorldIdx].m_nRegionWidth;
      }
      if (nSearchRegion == -1)
        continue;
      if (nRMy < 0) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[4];
        nRMy += SubWorld[nSubWorldIdx].m_nRegionHeight;
      } else if (nRMy >= SubWorld[nSubWorldIdx].m_nRegionHeight) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[0];
        nRMy -= SubWorld[nSubWorldIdx].m_nRegionHeight;
      }
      if (nSearchRegion == -1)
        continue;
      nRet = SubWorld[nSubWorldIdx].m_Region[nSearchRegion].FindNpc(
          nRMx, nRMy, Player[CLIENT_PLAYER_INDEX].m_nIndex, nRelation);

      if (Npc[nRet].m_Doing == do_death || Npc[nRet].m_Doing == do_revive)
        nRet = 0;
      if (nRet > 0) {
        if (Npc[nRet].m_Kind == kind_player) {
          for (int i = 0; i < (MAX_ARRAY_NPC_AUTO / 2); i++) {
            if (m_ArrayNpcNeast[i] == 0) {
              m_ArrayNpcNeast[i] = nRet;
              break;
            }
          }
          if (i == (MAX_ARRAY_NPC_AUTO / 2))
            return TRUE;
        } else if (Npc[nRet].m_Kind == kind_normal) {
          for (int i = (MAX_ARRAY_NPC_AUTO / 2); i < MAX_ARRAY_NPC_AUTO; i++) {
            if (m_ArrayNpcNeast[i] == 0) {
              m_ArrayNpcNeast[i] = nRet;
              break;
            }
          }
          if (i == MAX_ARRAY_NPC_AUTO)
            return TRUE;
        }
      }
      nRMx = nMapX - i;
      nRMy = nMapY + j;
      nSearchRegion = nRegion;
      if (nRMx < 0) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[2];
        nRMx += SubWorld[nSubWorldIdx].m_nRegionWidth;
      } else if (nRMx >= SubWorld[nSubWorldIdx].m_nRegionWidth) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[6];
        nRMx -= SubWorld[nSubWorldIdx].m_nRegionWidth;
      }
      if (nSearchRegion == -1)
        continue;
      if (nRMy < 0) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[4];
        nRMy += SubWorld[nSubWorldIdx].m_nRegionHeight;
      } else if (nRMy >= SubWorld[nSubWorldIdx].m_nRegionHeight) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[0];
        nRMy -= SubWorld[nSubWorldIdx].m_nRegionHeight;
      }
      if (nSearchRegion == -1)
        continue;
      nRet = SubWorld[nSubWorldIdx].m_Region[nSearchRegion].FindNpc(
          nRMx, nRMy, Player[CLIENT_PLAYER_INDEX].m_nIndex, nRelation);

      if (Npc[nRet].m_Doing == do_death || Npc[nRet].m_Doing == do_revive)
        nRet = 0;
      if (nRet > 0) {
        if (Npc[nRet].m_Kind == kind_player) {
          for (int i = 0; i < (MAX_ARRAY_NPC_AUTO / 2); i++) {
            if (m_ArrayNpcNeast[i] == 0) {
              m_ArrayNpcNeast[i] = nRet;
              break;
            }
          }
          if (i == (MAX_ARRAY_NPC_AUTO / 2))
            return TRUE;
        } else if (Npc[nRet].m_Kind == kind_normal) {
          for (int i = (MAX_ARRAY_NPC_AUTO / 2); i < MAX_ARRAY_NPC_AUTO; i++) {
            if (m_ArrayNpcNeast[i] == 0) {
              m_ArrayNpcNeast[i] = nRet;
              break;
            }
          }
          if (i == MAX_ARRAY_NPC_AUTO)
            return TRUE;
        }
      }
      nRMx = nMapX - i;
      nRMy = nMapY - j;
      nSearchRegion = nRegion;
      if (nRMx < 0) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[2];
        nRMx += SubWorld[nSubWorldIdx].m_nRegionWidth;
      } else if (nRMx >= SubWorld[nSubWorldIdx].m_nRegionWidth) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[6];
        nRMx -= SubWorld[nSubWorldIdx].m_nRegionWidth;
      }
      if (nSearchRegion == -1)
        continue;
      if (nRMy < 0) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[4];
        nRMy += SubWorld[nSubWorldIdx].m_nRegionHeight;
      } else if (nRMy >= SubWorld[nSubWorldIdx].m_nRegionHeight) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[0];
        nRMy -= SubWorld[nSubWorldIdx].m_nRegionHeight;
      }
      if (nSearchRegion == -1)
        continue;
      nRet = SubWorld[nSubWorldIdx].m_Region[nSearchRegion].FindNpc(
          nRMx, nRMy, Player[CLIENT_PLAYER_INDEX].m_nIndex, nRelation);

      if (Npc[nRet].m_Doing == do_death || Npc[nRet].m_Doing == do_revive)
        nRet = 0;
      if (nRet > 0) {
        if (Npc[nRet].m_Kind == kind_player) {
          for (int i = 0; i < (MAX_ARRAY_NPC_AUTO / 2); i++) {
            if (m_ArrayNpcNeast[i] == 0) {
              m_ArrayNpcNeast[i] = nRet;
              break;
            }
          }
          if (i == (MAX_ARRAY_NPC_AUTO / 2))
            return TRUE;
        } else if (Npc[nRet].m_Kind == kind_normal) {
          for (int i = (MAX_ARRAY_NPC_AUTO / 2); i < MAX_ARRAY_NPC_AUTO; i++) {
            if (m_ArrayNpcNeast[i] == 0) {
              m_ArrayNpcNeast[i] = nRet;
              break;
            }
          }
          if (i == MAX_ARRAY_NPC_AUTO)
            return TRUE;
        }
      }
      nRMx = nMapX + i;
      nRMy = nMapY - j;
      nSearchRegion = nRegion;
      if (nRMx < 0) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[2];
        nRMx += SubWorld[nSubWorldIdx].m_nRegionWidth;
      } else if (nRMx >= SubWorld[nSubWorldIdx].m_nRegionWidth) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[6];
        nRMx -= SubWorld[nSubWorldIdx].m_nRegionWidth;
      }
      if (nSearchRegion == -1)
        continue;
      if (nRMy < 0) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[4];
        nRMy += SubWorld[nSubWorldIdx].m_nRegionHeight;
      } else if (nRMy >= SubWorld[nSubWorldIdx].m_nRegionHeight) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[0];
        nRMy -= SubWorld[nSubWorldIdx].m_nRegionHeight;
      }
      if (nSearchRegion == -1)
        continue;

      nRet = SubWorld[nSubWorldIdx].m_Region[nSearchRegion].FindNpc(
          nRMx, nRMy, Player[CLIENT_PLAYER_INDEX].m_nIndex, nRelation);

      if (Npc[nRet].m_Doing == do_death || Npc[nRet].m_Doing == do_revive)
        nRet = 0;
      if (nRet > 0) {
        if (Npc[nRet].m_Kind == kind_player) {
          for (int i = 0; i < (MAX_ARRAY_NPC_AUTO / 2); i++) {
            if (m_ArrayNpcNeast[i] == 0) {
              m_ArrayNpcNeast[i] = nRet;
              break;
            }
          }
          if (i == (MAX_ARRAY_NPC_AUTO / 2))
            return TRUE;
        } else if (Npc[nRet].m_Kind == kind_normal) {
          for (int i = (MAX_ARRAY_NPC_AUTO / 2); i < MAX_ARRAY_NPC_AUTO; i++) {
            if (m_ArrayNpcNeast[i] == 0) {
              m_ArrayNpcNeast[i] = nRet;
              break;
            }
          }
          if (i == MAX_ARRAY_NPC_AUTO)
            return TRUE;
        }
      }
    }
  }
  return TRUE;
}

BOOL KPlayer::FindObjectNearPlayer() {
  int nRangeX = 0;
  int nRangeY = 0;
  int nSubWorldIdx = 0;
  int nRegion = 0;
  int nMapX = 0;
  int nMapY = 0;

  if (m_RadiusAuto <= 0)
    return FALSE;
  else {
    nRangeX = m_RadiusAuto;
    nRangeY = m_RadiusAuto;
  }
  //}
  nSubWorldIdx = Npc[m_nIndex].m_SubWorldIndex;
  nRegion = Npc[m_nIndex].m_RegionIndex;
  nMapX = Npc[m_nIndex].m_MapX;
  nMapY = Npc[m_nIndex].m_MapY;

  int nRet;
  int nRMx, nRMy, nSearchRegion;

  nRangeX = nRangeX / SubWorld[nSubWorldIdx].m_nCellWidth;
  nRangeY = nRangeY / SubWorld[nSubWorldIdx].m_nCellHeight;

  ClearArrayObjectNeast();

  for (int i = 0; i < nRangeX; i++) {
    for (int j = 0; j < nRangeY; j++) {
      if ((i * i + j * j) > nRangeX * nRangeX)
        continue;

      nRMx = nMapX + i;
      nRMy = nMapY + j;
      nSearchRegion = nRegion;
      if (nRMx < 0) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[2];
        nRMx += SubWorld[nSubWorldIdx].m_nRegionWidth;
      } else if (nRMx >= SubWorld[nSubWorldIdx].m_nRegionWidth) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[6];
        nRMx -= SubWorld[nSubWorldIdx].m_nRegionWidth;
      }
      if (nSearchRegion == -1)
        continue;
      if (nRMy < 0) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[4];
        nRMy += SubWorld[nSubWorldIdx].m_nRegionHeight;
      } else if (nRMy >= SubWorld[nSubWorldIdx].m_nRegionHeight) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[0];
        nRMy -= SubWorld[nSubWorldIdx].m_nRegionHeight;
      }
      if (nSearchRegion == -1)
        continue;

      nRet = SubWorld[nSubWorldIdx].m_Region[nSearchRegion].FindObject(
          nRMx, nRMy, true);
      if (nRet > 0) {
        for (int i = 0; i < MAX_ARRAY_NPC_AUTO; i++) {
          if (m_ArrayObjectNeast[i] == 0) {
            m_ArrayObjectNeast[i] = nRet;
            break;
          }
        }
        if (i == MAX_ARRAY_NPC_AUTO)
          return TRUE;
      }
      nRMx = nMapX - i;
      nRMy = nMapY + j;
      nSearchRegion = nRegion;
      if (nRMx < 0) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[2];
        nRMx += SubWorld[nSubWorldIdx].m_nRegionWidth;
      } else if (nRMx >= SubWorld[nSubWorldIdx].m_nRegionWidth) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[6];
        nRMx -= SubWorld[nSubWorldIdx].m_nRegionWidth;
      }
      if (nSearchRegion == -1)
        continue;
      if (nRMy < 0) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[4];
        nRMy += SubWorld[nSubWorldIdx].m_nRegionHeight;
      } else if (nRMy >= SubWorld[nSubWorldIdx].m_nRegionHeight) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[0];
        nRMy -= SubWorld[nSubWorldIdx].m_nRegionHeight;
      }
      if (nSearchRegion == -1)
        continue;

      nRet = SubWorld[nSubWorldIdx].m_Region[nSearchRegion].FindObject(
          nRMx, nRMy, true);
      if (nRet > 0) {
        for (int i = 0; i < MAX_ARRAY_NPC_AUTO; i++) {
          if (m_ArrayObjectNeast[i] == 0) {
            m_ArrayObjectNeast[i] = nRet;
            break;
          }
        }
        if (i == MAX_ARRAY_NPC_AUTO)
          return TRUE;
      }
      nRMx = nMapX - i;
      nRMy = nMapY - j;
      nSearchRegion = nRegion;
      if (nRMx < 0) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[2];
        nRMx += SubWorld[nSubWorldIdx].m_nRegionWidth;
      } else if (nRMx >= SubWorld[nSubWorldIdx].m_nRegionWidth) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[6];
        nRMx -= SubWorld[nSubWorldIdx].m_nRegionWidth;
      }
      if (nSearchRegion == -1)
        continue;
      if (nRMy < 0) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[4];
        nRMy += SubWorld[nSubWorldIdx].m_nRegionHeight;
      } else if (nRMy >= SubWorld[nSubWorldIdx].m_nRegionHeight) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[0];
        nRMy -= SubWorld[nSubWorldIdx].m_nRegionHeight;
      }
      if (nSearchRegion == -1)
        continue;

      nRet = SubWorld[nSubWorldIdx].m_Region[nSearchRegion].FindObject(
          nRMx, nRMy, true);
      if (nRet > 0) {
        for (int i = 0; i < MAX_ARRAY_NPC_AUTO; i++) {
          if (m_ArrayObjectNeast[i] == 0) {
            m_ArrayObjectNeast[i] = nRet;
            break;
          }
        }
        if (i == MAX_ARRAY_NPC_AUTO)
          return TRUE;
      }

      nRMx = nMapX + i;
      nRMy = nMapY - j;
      nSearchRegion = nRegion;
      if (nRMx < 0) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[2];
        nRMx += SubWorld[nSubWorldIdx].m_nRegionWidth;
      } else if (nRMx >= SubWorld[nSubWorldIdx].m_nRegionWidth) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[6];
        nRMx -= SubWorld[nSubWorldIdx].m_nRegionWidth;
      }
      if (nSearchRegion == -1)
        continue;
      if (nRMy < 0) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[4];
        nRMy += SubWorld[nSubWorldIdx].m_nRegionHeight;
      } else if (nRMy >= SubWorld[nSubWorldIdx].m_nRegionHeight) {
        nSearchRegion =
            SubWorld[nSubWorldIdx].m_Region[nSearchRegion].m_nConnectRegion[0];
        nRMy -= SubWorld[nSubWorldIdx].m_nRegionHeight;
      }
      if (nSearchRegion == -1)
        continue;

      nRet = SubWorld[nSubWorldIdx].m_Region[nSearchRegion].FindObject(
          nRMx, nRMy, true);
      if (nRet > 0) {
        for (int i = 0; i < MAX_ARRAY_NPC_AUTO; i++) {
          if (m_ArrayObjectNeast[i] == 0) {
            m_ArrayObjectNeast[i] = nRet;
            break;
          }
        }
        if (i == MAX_ARRAY_NPC_AUTO)
          return TRUE;
      }
    }
  }
  return TRUE;
}

int KPlayer::FindNearNpc2Array(int nRelation) {
  int nRet = 0;
  if (AutoAddNpc2Array(nRelation)) {
    int distance = 0;
    int distanceMin = 0;
    BOOL _fg = FALSE;
    int i = 0;
    int j = 0;
    for (i = 0; i < MAX_ARRAY_NPC_AUTO; i++) {
      if (m_ArrayNpcNeast[i] != 0) {
        BOOL _findLag = FALSE;
        for (j = 0; j < MAX_ARRAY_NPC_AUTO; j++) {
          if (m_ArrayNpcNeast[i] == m_ArrayNpcLag[j]) {
            _findLag = TRUE;
            break;
          }
        }
        if (_findLag == TRUE)
          continue;

        if (IsNotValidNpc(m_ArrayNpcNeast[i])) // pham vi pk nguoi
          continue;
        int nX, nY;
        Npc[m_ArrayNpcNeast[i]].GetMpsPos(&nX, &nY);

        distance = NpcSet.GetDistance(Player[CLIENT_PLAYER_INDEX].m_nIndex,
                                      m_ArrayNpcNeast[i]);
        if (FALSE == _fg) {
          distanceMin = distance;
          _fg = TRUE;
          nRet = m_ArrayNpcNeast[i];
        }
        if (distance <= distanceMin) {
          distanceMin = distance;
          nRet = m_ArrayNpcNeast[i];
        }
      }
    }
  }
  if (nRet == 0) {
    if (m_AutoAttack == TRUE && m_bAttackAround)
      AutoReturn();
    m_Actacker = 0;
    m_bActacker = FALSE;
    m_nTimeRunLag = 0;
    m_Count_Acttack_Lag = 0;
  }
  return nRet;
}

int KPlayer::FindNearObject2Array() {
  int nRet = 0;
  if (FindObjectNearPlayer()) {
    int distance = 0;
    int distanceMin = 0;
    BOOL _fg = FALSE;
    for (int i = 0; i < MAX_ARRAY_NPC_AUTO; i++) {
      if (m_ArrayObjectNeast[i] != 0) {
        BOOL _findLag = FALSE;
        for (int j = 0; j < MAX_ARRAY_NPC_AUTO; j++) {
          if (Object[m_ArrayObjectNeast[i]].m_nID == m_ArrayObjectLag[j]) {
            _findLag = TRUE;
            break;
          }
        }
        if (_findLag == TRUE)
          continue;
        if (IsNotValidObject(m_ArrayObjectNeast[i]))
          continue;

        int nX, nY;
        Object[m_ArrayObjectNeast[i]].GetMpsPos(&nX, &nY);

        distance = Object[m_ArrayObjectNeast[i]].GetDistanceSquare(
            Player[CLIENT_PLAYER_INDEX].m_nIndex);

        if (FALSE == _fg) {
          distanceMin = distance;
          _fg = TRUE;
          nRet = m_ArrayObjectNeast[i];
        }
        if (distance <= distanceMin) {
          distanceMin = distance;
          nRet = m_ArrayObjectNeast[i];
        }
      }
    }
  }
  if (nRet == 0) {
    m_nObject = 0;
    m_bObject = FALSE;
    m_nTimeRunLag = 0;
  }
  return nRet;
}

#define PLAYERAUTO_PICKUP_CLIENT_DISTANCE 512
BOOL KPlayer::IsNotValidObject(int nObject) // nhat do
{

  if (!m_bActiveAuto &&
      Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_FightMode == fight_none)
    return TRUE;

  if (nObject > 0 && nObject < MAX_OBJECT) {
    if (m_bPickItem) {
      if (Object[nObject].m_nKind == Obj_Kind_Money) {
        if (m_btPickUpKind >= enumPickUpEarn)
          return FALSE;
      } else if (Object[nObject].m_nKind == Obj_Kind_Item) {

        if (Object[nObject].m_dwNpcId <=
            Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_dwID)
          return TRUE;

        if (m_btPickUpKind == enumPickEventItem) {
          if (Object[nObject].m_nGenre != item_equip)
            return FALSE;
        } else if (m_btPickUpKind == enumPickItemColor) {
          if (Object[nObject].m_nGenre >= equip_horse &&
              Object[nObject].m_nGenre < equip_detailnum)
            return FALSE;

          if (Object[nObject].m_nColorID > 0)
            return FALSE;

        } else if (m_btPickUpKind == enumPickUpAll) {
          return FALSE;
        }
      } else if (Object[nObject].m_nKind == Obj_Kind_Prop) {
        if (m_btPickUpKind >= enumPickEventItem)
          return FALSE; // nhat object than bi do chi, mat do than bi
      }
    }
  }
  return TRUE;
}

int KEquipmentArray::FindSame(int i) {
  int nIdx = 0;
  while (1) {
    nIdx = m_Link.GetNext(nIdx);
    if (!nIdx)
      break;

    if (nIdx == i)
      return nIdx;
  }
  return 0;
}

void KPlayer::PlayerFollowActack(int i) {
  if (IsNotValidNpc(i))
    return;

  int _i = 0;
  int nMapX, nMapY, dX, dY, dZ, k, h;
  Npc[m_nIndex].GetMpsPos(&nMapX, &nMapY);
  Npc[i].GetMpsPos(&k, &h);
  if (m_bAttackAround) {
    if ((k - nMapX) * (k - nMapX) + (h - nMapY) * (h - nMapY) >
        m_RadiusAuto * m_RadiusAuto) {
      dX = nMapX - m_PosXAuto;
      dY = nMapY - m_PosYAuto;
      dZ = (int)sqrt((float)dX * dX + (float)dY * dY);
      if (dZ >= 64) {
        m_nLifeLag = 0;
        m_Actacker = 0;
        m_nTimeRunLag = 0;
        m_Count_Acttack_Lag = 0;
        m_bActacker = FALSE;
        AutoReturn();
        return;
      }
    }
  }

  if (Npc[i].m_RegionIndex < 0 || !SubWorld[0].TestBarrier(k, h) ||
      Npc[i].m_nAutoNoActack) {
    m_nLifeLag = 0;
    m_Actacker = 0;
    m_nTimeRunLag = 0;
    m_Count_Acttack_Lag = 0;
    m_bActacker = FALSE;
    return;
  }

  if (m_nLifeLag == Npc[i].m_CurrentLife) {
    m_nTimeRunLag++;
    m_Count_Acttack_Lag++;
  } else {
    m_nTimeRunLag = 0;
    m_Count_Acttack_Lag = 0;
  }

  if (m_Count_Acttack_Lag >= AUTO_COUNT_LAG || m_nTimeRunLag >= AUTO_TIME_LAG) {
    for (int j = 0; j < MAX_ARRAY_NPC_AUTO; j++) {
      if (m_ArrayNpcLag[j] == 0) {
        // KSystemMessage	sMsg;
        // sprintf(sMsg.szMessage, "%s b� lag t�a ��!", Npc[i].Name);
        // sMsg.eType = SMT_NORMAL;
        // sMsg.byConfirmType = SMCT_NONE;
        // sMsg.byPriority = 0;
        // sMsg.byParamSize = 0;
        // CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        m_ArrayNpcLag[j] = i;
        m_ArrayTimeNpcLag[j] = GetTickCount();
        m_Actacker = 0;
        m_bActacker = FALSE;
        m_nLifeLag = 0;
        m_nTimeRunLag = 0;
        m_Count_Acttack_Lag = 0;
        return;
      }
    }
  }

  int nIdx = 0;
  nIdx = Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_SkillList.FindSame(
      m_nLeftSkillID);
  Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SetActiveSkill(nIdx);
  if (nIdx) {
    if (Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_ActiveSkillID == nIdx) {
    } else
      Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SetActiveSkill(nIdx);
  }
  if (Npc[i].m_Doing == do_death)
    i++;
  int distanceattack =
      Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_CurrentAttackRadius;
  int distance = NpcSet.GetDistance(Player[CLIENT_PLAYER_INDEX].m_nIndex, i);

  if (m_bFightDistance) {
    distanceattack = m_DistanceAuto; // danh tiep can 75
    if (distanceattack >
        Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_CurrentAttackRadius)
      distanceattack =
          Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_CurrentAttackRadius;
  }
  if (distanceattack <= 60) {
    distanceattack = m_DistanceAuto; // danh tiep can 75
    if (distanceattack >
        Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_CurrentAttackRadius)
      distanceattack =
          Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_CurrentAttackRadius;
  }
  if (distanceattack > 60 && distanceattack <= 90) {
    distanceattack = m_DistanceAuto; // danh tiep can 75
    if (distanceattack >
        Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_CurrentAttackRadius - 30)
      distanceattack =
          Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_CurrentAttackRadius - 30;
  }

  if (distance <= distanceattack && distance <= m_RadiusAuto) {
    KSkill *pSkill = (KSkill *)g_SkillManager.GetSkill(
        Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_ActiveSkillID, 1);
    if (pSkill) {
      if (pSkill->GetHorseLimit()) {
        switch (pSkill->GetHorseLimit()) {
        case 1: {
          if (Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_bRideHorse) {
            SendClientCmdRide();
            return;
          }
        } break;
        case 2: {
          if (!Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_bRideHorse) {
            SendClientCmdRide();
            return;
          }
        } break;
        }
      }
    }

    if (distance <
        Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_CurrentAttackRadius) {
      Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SendCommand(
          do_skill, Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_ActiveSkillID,
          -1, i);
      SendClientCmdSkill(
          Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_ActiveSkillID, -1,
          Npc[i].m_dwID, k, h,
          (Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_CurrentAttackRadius -
           30));
    }
    if (Npc[i].m_TypeNpc == 1 || Npc[i].m_TypeNpc == 5 ||
        Npc[i].m_TypeNpc == 6) {
      m_nTimeRunLag = 0;
      m_Count_Acttack_Lag = 0;
    }

    if (m_nLifeLag == Npc[i].m_CurrentLife) {
      if (Npc[i].m_Kind == kind_normal)
        // m_nTimeRunLag++;
        m_Count_Acttack_Lag++;
    } else
      m_nLifeLag = Npc[i].m_CurrentLife;
    m_Count_Acttack_Lag = 0;
    return;
  }
  m_nTimeRunLag++;

  // GIOI HAN PHAM VI TIM KIEM
  if (m_bAttackAround) {
    dX = k - m_PosXAuto;
    dY = h - m_PosYAuto;
    dZ = (int)sqrt((float)dX * dX + (float)dY * dY);
    if (dZ >= m_RadiusAuto) {
      AutoReturn();
      // viet them
      m_Actacker = 0;
      m_bActacker = FALSE;
      m_nTimeRunLag = 0;
      m_Count_Acttack_Lag = 0;
      return;
    }
  } else if (m_AutoMove) {
    dX = k - m_MoveMps[m_MoveStep][1];
    dY = h - m_MoveMps[m_MoveStep][2];
    dZ = (int)sqrt((float)dX * dX + (float)dY * dY);
    if (dZ >= m_RadiusAuto) {
      PlayerMoveMps();
      return;
    }
  }
  MoveTo(k, h);
  m_Actacker = 0;
  m_bActacker = FALSE;
}

void KPlayer::SetSortEquipment(BOOL bFlag) {
  if (m_bActiveAuto) {
    for (int i = MAX_ITEM - 1; i > 0;
         i--) // for (int i = MAX_EQUIPMENT_ITEM - 1; i > 0 ; i--)
    {
      m_sListEquipment.m_Link.Remove(i);
    }
    m_bSortEquipment = bFlag;
  }
}

void KPlayer::SortEquipment() {
  if (m_bSortEquipment) {
    int nHand =
        Player[CLIENT_PLAYER_INDEX].m_ItemList.Hand(); // Item dang o tren tay
    if (nHand) {
      ItemPos P;
      if (FALSE == Player[CLIENT_PLAYER_INDEX].m_ItemList.SearchPosition(
                       Item[nHand].GetWidth(), Item[nHand].GetHeight(), &P)) {
        m_bSortEquipment = FALSE;
        return;
      }
      Player[CLIENT_PLAYER_INDEX].MoveItem(P, P);
      if (!m_sListEquipment.FindSame(nHand)) {
        m_sListEquipment.m_Link.Insert(nHand);
      }
    } else // item trong hanh trang
    {
      ItemPos P;
      PlayerItem *pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetFirstItem();

      if (pItem) {
        if (pItem->nPlace == pos_equiproom) {
          if (!m_sListEquipment.FindSame(pItem->nIdx)) {
            P.nPlace = pItem->nPlace;
            P.nX = pItem->nX;
            P.nY = pItem->nY;
            Player[CLIENT_PLAYER_INDEX].MoveItem(P, P);
            return;
          }
        }
      }

      while (pItem) {
        pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetNextItem();
        if (pItem) {
          if (pItem->nPlace == pos_equiproom) {
            if (!m_sListEquipment.FindSame(pItem->nIdx)) {
              P.nPlace = pItem->nPlace;
              P.nX = pItem->nX;
              P.nY = pItem->nY;
              Player[CLIENT_PLAYER_INDEX].MoveItem(P, P);
              return;
            }
          }
        }
      }
      m_bSortEquipment = FALSE;
    }
  }
}

BOOL KPlayer::CheckEquip(BYTE btDetail) {
  if (btDetail == equip_ring || btDetail == equip_amulet ||
      btDetail == equip_pendant)
    return TRUE;
  return FALSE;
}

#define MAX_AUTO_FILTERL 40
#define MAX_ITEM_MAGICATTRIB 8

BOOL KPlayer::CheckEquipMagic(int nIdx) {
  if (nIdx <= 0 || nIdx >= MAX_ITEM)
    return FALSE;

  int i, j;
  for (i = 0; i < MAX_AUTO_FILTERL; i++) {
    if (m_FilterMagic[i][0]) {
      for (j = 0; j < MAX_ITEM_MAGICATTRIB; j++) {
        if (Item[nIdx].m_aryMagicAttrib[j].nAttribType == m_FilterMagic[i][0] &&
            Item[nIdx].m_aryMagicAttrib[j].nValue[0] >= m_FilterMagic[i][1])
          return TRUE;
      }
    }
  }
  return FALSE;
}

BOOL KPlayer::InventoryItem() {
  int nHand = Player[CLIENT_PLAYER_INDEX].m_ItemList.Hand();
  BOOL m_bSaveTrash = FALSE; // gi� l�i trang b� gi� >= m_nSaveTrashPrice
  int m_nSaveTrashPrice = 10000;
  if (nHand) {
    POINT pPos;
    for (int nRoom = room_repository; nRoom <= room_repository; nRoom++) {
      if (Player[CLIENT_PLAYER_INDEX].m_ItemList.m_Room[nRoom].FindRoom(
              Item[nHand].GetWidth(), Item[nHand].GetHeight(), &pPos)) {
        ItemPos P;
        P.nPlace = pos_repositoryroom + nRoom - room_repository;
        P.nX = pPos.x;
        P.nY = pPos.y;
        Player[CLIENT_PLAYER_INDEX].MoveItem(P, P);
        return FALSE;
      }
    }
    return TRUE;
  } else {
    // ItemPos	P;
    PlayerItem *pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetFirstItem();

    if (pItem) /// gui do vao ruong
    {
      if (pItem->nPlace == pos_equiproom) {
        BOOL bMatch = FALSE;
        // if (Item[pItem->nIdx].m_CommonAttrib.nItemNature)
        //	bMatch = TRUE;

        //	if(Item[pItem->nIdx].m_CommonAttrib.nItemGenre == item_task)
        //		bMatch = TRUE;
        if (Item[pItem->nIdx].GetDetailType() == equip_horse)
          bMatch = TRUE;

        else if (Item[pItem->nIdx].GetKind() == 1)
          bMatch = TRUE;

        //    else if(Item[nIdx].m_GeneratorParam.nVersion > 1)
        //       bMatch = TRUE;
        //    else if(( Item[pItem->nIdx].GetGenre() == item_medicine) &&
        //    Item[pItem->nIdx].m_GeneratorParam.nVersion > 1)
        //        bMatch = TRUE;

        if (m_bSaveTrash && Item[pItem->nIdx].GetPrice() >= m_nSaveTrashPrice)
          bMatch = TRUE;
        else if (m_SaveRAP && CheckEquip(Item[pItem->nIdx].GetDetailType()))
          bMatch = TRUE;
        else {
          if (CheckEquipMagic(pItem->nIdx))
            bMatch = TRUE;
        }
        if (bMatch) {
          POINT pPos;
          for (int nRoom = room_repository; nRoom <= room_repository; nRoom++) {
            if (Player[CLIENT_PLAYER_INDEX].m_ItemList.m_Room[nRoom].FindRoom(
                    Item[pItem->nIdx].GetWidth(), Item[pItem->nIdx].GetHeight(),
                    &pPos)) {
              ItemPos P;
              P.nPlace = pItem->nPlace;
              P.nX = pItem->nX;
              P.nY = pItem->nY;
              Player[CLIENT_PLAYER_INDEX].MoveItem(P, P);
              return FALSE;
            }
          }
          return TRUE;
        }
      }
    }

    while (pItem) {
      pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetNextItem();
      if (pItem) {
        if (pItem->nPlace == pos_equiproom) {
          BOOL bMatch = FALSE;
          // if (Item[pItem->nIdx].m_CommonAttrib.nItemNature)
          //	bMatch = TRUE;

          // if(Item[pItem->nIdx].m_CommonAttrib.nItemGenre == item_task)
          // bMatch = TRUE;

          if (Item[pItem->nIdx].GetDetailType() == equip_horse)
            bMatch = TRUE;

          else if (Item[pItem->nIdx].GetKind() == 1)
            bMatch = TRUE;

          //  else if(( Item[pItem->nIdx].GetGenre() == item_medicine) &&
          //  Item[pItem->nIdx].m_GeneratorParam.nVersion > 1)
          // bMatch = TRUE;
          if (m_bSaveTrash && Item[pItem->nIdx].GetPrice() >= m_nSaveTrashPrice)
            bMatch = TRUE;
          else if (m_SaveRAP && CheckEquip(Item[pItem->nIdx].GetDetailType()))
            bMatch = TRUE;
          else {
            if (CheckEquipMagic(pItem->nIdx))
              bMatch = TRUE;
          }
          if (bMatch) {
            POINT pPos;
            for (int nRoom = room_repository; nRoom <= room_repository;
                 nRoom++) {
              if (Player[CLIENT_PLAYER_INDEX].m_ItemList.m_Room[nRoom].FindRoom(
                      Item[pItem->nIdx].GetWidth(),
                      Item[pItem->nIdx].GetHeight(), &pPos)) {
                ItemPos P;
                P.nPlace = pItem->nPlace;
                P.nX = pItem->nX;
                P.nY = pItem->nY;
                Player[CLIENT_PLAYER_INDEX].MoveItem(P, P);
                return FALSE;
              }
            }
            return TRUE;
          }
        }
      }
    }
  }
  return TRUE;
}

BOOL KPlayer::AutoSellItem() {
  PlayerItem *pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetFirstItem();
  if (pItem) {
    int nIdx = pItem->nIdx;
    if (pItem->nPlace == pos_equiproom && nIdx > 0 && nIdx < MAX_ITEM) {
      if (
          // Vat pham Item khong giao dich
          CheckEquipMagic(nIdx) ||
          (m_SaveRAP && CheckEquip(Item[pItem->nIdx].GetDetailType())) ||
          Item[pItem->nIdx].GetGenre() == item_task ||
          Item[pItem->nIdx].GetGenre() == item_medicine ||
          Item[pItem->nIdx].GetGenre() == item_mine ||
          Item[pItem->nIdx].GetGenre() == item_materials ||
          Item[pItem->nIdx].GetDetailType() == equip_horse ||
          Item[pItem->nIdx].GetKind() == 1 ||
          // (Item[pItem->nIdx].GetGenre() == equip_rangeweapon||
          // Item[pItem->nIdx].GetGenre() == equip_horse||
          // Item[pItem->nIdx].GetGenre() == item_equip ||
          // Item[pItem->nIdx].GetGenre() == item_medicine) &&
          // Item[pItem->nIdx].m_GeneratorParam.nVersion > 1||
          Item[pItem->nIdx].GetGenre() == item_townportal ||
          Item[nIdx].m_GeneratorParam.nVersion > 1
          // Item[pItem->nIdx].GetGenre() == item_magicscript
          //|| Item[pItem->nIdx].GetGoldId()
          //|| Item[nIdx].GetPlayerItemLock() > 0 ||
          // Item[nIdx].GetPlayerItemHLock() > 0
      ) {

      } else {
        SendClientCmdAutoSell(Item[nIdx].GetID());
      }
    }
  }
  while (pItem) {
    pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetNextItem();
    if (pItem) {
      int nIdx = pItem->nIdx;
      if (pItem->nPlace == pos_equiproom && nIdx > 0 && nIdx < MAX_ITEM) {
        if (
            // Vat pham Item khong giao dich
            CheckEquipMagic(nIdx) ||
            (m_SaveRAP && CheckEquip(Item[pItem->nIdx].GetDetailType())) ||
            Item[pItem->nIdx].GetGenre() == item_task ||
            Item[pItem->nIdx].GetGenre() == item_medicine ||
            Item[pItem->nIdx].GetGenre() == item_mine ||
            Item[pItem->nIdx].GetGenre() == item_materials ||
            Item[pItem->nIdx].GetDetailType() == equip_horse ||
            Item[pItem->nIdx].GetKind() == 1 ||
            // (Item[pItem->nIdx].GetGenre() == equip_rangeweapon ||
            // Item[pItem->nIdx].GetGenre() == equip_horse||
            // Item[pItem->nIdx].GetGenre() == item_equip ||
            // Item[pItem->nIdx].GetGenre() == item_medicine) &&
            // Item[pItem->nIdx].m_GeneratorParam.nVersion > 1||
            Item[pItem->nIdx].GetGenre() == item_townportal ||
            Item[nIdx].m_GeneratorParam.nVersion > 1
            //|| Item[pItem->nIdx].GetGenre() == item_magicscript
            //|| Item[pItem->nIdx].GetGoldId()
            //|| Item[nIdx].GetPlayerItemLock() > 0 ||
            // Item[nIdx].GetPlayerItemHLock() > 0
        ) {

        } else {
          SendClientCmdAutoSell(Item[nIdx].GetID());
        }
      }
    }
  }
  return TRUE;
}

BOOL KPlayer::ReturnFromPortal() {
  KSystemMessage sMsg;
  sMsg.eType = SMT_NORMAL;
  sMsg.byConfirmType = SMCT_NONE;
  sMsg.byPriority = 0;
  sMsg.byParamSize = 0;

  BOOL nRet = TRUE;
  switch (m_nReturnPortalStep) {
  case Step_Training: {
    if (IR_GetCurrentTime() - m_ReturnSetpCountDown >
        def_RETURN_FROM_PORTAL_STEP) {
      m_ReturnSetpCountDown = IR_GetCurrentTime();
      sprintf(sMsg.szMessage, "->Thao t�c khi trong th�nh vui l�ng ��i");
      Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SetChatInfo(
          "Auto", sMsg.szMessage, strlen(sMsg.szMessage));
      Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].RunWalkStopCmd();
      m_nReturnPortalStep = Step_Repair;
      break;
    }
  }
  case Step_Repair: {
    if (IR_GetCurrentTime() - m_ReturnSetpCountDown >
        def_RETURN_FROM_PORTAL_STEP) {
      m_ReturnSetpCountDown = IR_GetCurrentTime();
      sprintf(sMsg.szMessage, "->Mua m�u mana, s�a, b�n v�t ph�m");
      Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SetChatInfo(
          "Auto", sMsg.szMessage, strlen(sMsg.szMessage));
      if (m_bRepairEquip) {
        strcpy(sMsg.szMessage, "->.R�t ti�n, s�a trang b� h�ng");
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);

        if (Player[CLIENT_PLAYER_INDEX].m_ItemList.GetEquipmentMoney() < 100000)
          Player[CLIENT_PLAYER_INDEX].m_ItemList.ExchangeMoney(
              room_repository, room_equipment, 100000);
        for (int i = itempart_head; i < itempart_horse; i++) {
          int nIdx = Player[CLIENT_PLAYER_INDEX].m_ItemList.m_EquipItem[i];
          if (nIdx && Item[nIdx].GetRepairPrice()) {
            if (Player[CLIENT_PLAYER_INDEX].m_ItemList.GetEquipmentMoney() <
                Item[nIdx].GetRepairPrice())
              continue;
            SendClientCmdRepair(Item[nIdx].GetID());
          }
        }
      }
      if (m_bBuyEquip) {
        strcpy(sMsg.szMessage, "->.R�t ti�n, mua m�u, mana.");
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);

        if (Player[CLIENT_PLAYER_INDEX].m_ItemList.GetEquipmentMoney() < 100000)
          Player[CLIENT_PLAYER_INDEX].m_ItemList.ExchangeMoney(
              room_repository, room_equipment, 100000);
        BYTE itemmauid = 2;
        BYTE itemmanaid = 1;
        BYTE nLevel = 3;
        BYTE num = 20;
        if (m_ItemList.CountCommonItem(0, item_medicine, itemmauid) <= num)
          SendClientCmdOpenShop(
              item_medicine, itemmauid, nLevel,
              num - m_ItemList.CountCommonItem(0, item_medicine, itemmauid));
        // if(m_ItemList.CountCommonItem(0, item_medicine, itemmanaid) <= num)
        //	SendClientCmdOpenShop(item_medicine, itemmanaid, nLevel, num -
        // m_ItemList.CountCommonItem(0, item_medicine, itemmanaid));
        //	if(m_ItemList.CountCommonItem(item_equip, 3) <= 1)
        //		SendClientCmdOpenShop(item_equip, 3 -
        // m_ItemList.CountCommonItem(0, item_equip, 3)); //tho dia phu
      }

      if (m_Auto_BanItem) // tu dong ban vat pham
      {
        strcpy(sMsg.szMessage, "->.B�n v�t ph�m kh�ng c� trong l�c thu�c t�nh");
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);

        AutoSellItem();
      }

      m_nReturnPortalStep = Step_InventoryMoney;
    }
    break;
  }
  case Step_InventoryMoney: {
    if (IR_GetCurrentTime() - m_ReturnSetpCountDown >
        def_RETURN_FROM_PORTAL_STEP) {
      m_ReturnSetpCountDown = IR_GetCurrentTime();
      if (m_bInventoryMoney) {
        sprintf(sMsg.szMessage, "->C�t ti�n v�o r��ng");
        Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SetChatInfo(
            "Auto", sMsg.szMessage, strlen(sMsg.szMessage));
        Player[CLIENT_PLAYER_INDEX].m_ItemList.ExchangeMoney(
            room_equipment, room_repository,
            Player[CLIENT_PLAYER_INDEX].m_ItemList.GetEquipmentMoney());
      }
      m_nReturnPortalStep = Step_InventoryItem;
    }
  } break;
  case Step_InventoryItem: {
    int m_nReturnPortalSec = 15;
    sprintf(sMsg.szMessage, "->C�t �� v� tr� l�i b�i sau %d gi�y",
            m_nReturnPortalSec);
    Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SetChatInfo(
        "Auto", sMsg.szMessage, strlen(sMsg.szMessage));
    if (m_bInventoryItem) {
      if (InventoryItem()) // cat do vao ruong
      {
        m_nCurReturnPortalSec = KSG_GetCurSec() + m_nReturnPortalSec;
        m_nReturnPortalStep = Step_Return;
      }
    } else {
      m_nCurReturnPortalSec = KSG_GetCurSec() + m_nReturnPortalSec;
      m_nReturnPortalStep = Step_Return;
    }
  } break;
  case Step_Return:
    if (m_bReturnPortal) {
      int Map = SubWorld[m_SubWorldIndex].m_SubWorldID;
      if (Map == 60 || Map == 20 || Map == 47 || Map == 48 || Map == 49 ||
          Map == 33 || Map == 37 || Map == 26 || Map == 27 || Map == 28 ||
          Map == 258 || Map == 5 || Map == 29 || Map == 43 || Map == 42) {
        sprintf(sMsg.szMessage, "->Map n�y kh�ng th� quay l�i �i�m c� ! ");
        Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SetChatInfo(
            "Auto", sMsg.szMessage, strlen(sMsg.szMessage));
        break;
      }

      else if (KSG_GetCurSec() >= m_nCurReturnPortalSec) {
        sprintf(sMsg.szMessage, "->Quay l�i ��a �i�m c�");
        Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SetChatInfo(
            "Auto", sMsg.szMessage, strlen(sMsg.szMessage));

        PLAYER_COMMAND sRP;
        sRP.ProtocolType = c2s_playercommand;
        sRP.m_wMsgID = enumC2S_PLAYERCOMMAND_ID_RETURN;
        sRP.m_lpBuf = 0;
        sRP.m_wLength = sizeof(SHOW_MSG_SYNC) - 1;
        g_pClient->SendPackToServer((BYTE *)&sRP, sRP.m_wLength + 1);

        nRet = FALSE;
        m_nReturnPortalStep = Step_Completed;
        m_ReturnSetpCountDown = IR_GetCurrentTime();
      }
    }
    break;
  case Step_Completed: {
    if (IR_GetCurrentTime() - m_ReturnSetpCountDown >
        def_RETURN_FROM_PORTAL_STEP) {
      m_ReturnSetpCountDown = IR_GetCurrentTime();
      if (!Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex]
               .m_FightMode) // sau khi ho�n th�nh m� kh�ng chuy�n tr�ng th�i
                             // chi�n ��u th� ko quay l�i dc �i�m c�
      {
        sprintf(sMsg.szMessage, "->Kh�ng x�c ��nh �i�m c�");
        Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SetChatInfo(
            "Auto", sMsg.szMessage, strlen(sMsg.szMessage));
      }
    }
    break;
  }
  }
  return nRet;
}

void KPlayer::AutoReturn() {
  if (m_bAttackAround) {
    int nMapX, nMapY, dX, dY, dZ;
    Npc[m_nIndex].GetMpsPos(&nMapX, &nMapY);
    dX = nMapX - m_PosXAuto;
    dY = nMapY - m_PosYAuto;
    dZ = (int)sqrt((float)dX * dX + (float)dY * dY);
    if (dZ >= 64) {
      MoveTo(m_PosXAuto, m_PosYAuto);
    } else {
      if (Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_Doing != do_sit) {
        if (!Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_bRideHorse) {
          Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SendCommand(do_sit);
          SendClientCmdSit(TRUE);
        } else
          return;
      }
    }
  } else {
    if (m_bFollowPeople == FALSE || m_szFollowName[0] == 0) {
      if (Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_Doing != do_sit) {
        if (!Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex]
                 .m_bRideHorse) // trang thai duoi ngua ngoi thien
        {
          Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SendCommand(do_sit);
          SendClientCmdSit(TRUE);
        }
      }
    }
  }
}

void KPlayer::MoveTo(int nX, int nY) {
  int nMapX, nMapY;
  int nDestX, nDestY, dX, dY;
  if (Player[CLIENT_PLAYER_INDEX].m_nSendMoveFrames >=
      defMAX_PLAYER_SEND_MOVE_FRAME) {
    Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].GetMpsPos(&nMapX, &nMapY);
    dX = nMapX & 0x1F;
    dY = nMapY & 0x1F;
    nDestX = nX + 0x10 - dX;
    nDestY = nY + 0x10 - dY;
    if (!Player[CLIENT_PLAYER_INDEX].m_RunStatus) {
      Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SendCommand(do_walk, nDestX,
                                                            nDestY);
      SendClientCmdWalk(nDestX, nDestY);
    } else {
      Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SendCommand(do_run, nDestX,
                                                            nDestY);
      SendClientCmdRun(nDestX, nDestY);
    }
    Player[CLIENT_PLAYER_INDEX].m_nSendMoveFrames = 0;
  }
}

BOOL KPlayer::AutoBuffSkillState() {
  BOOL _break = FALSE;

  for (int i = 0; i < MAX_ARRAY_STATESKILL; i++) {
    if (m_ArrayStateSkill[i] && m_bBuffSkill[i]) {
      ISkill *pSkill = g_SkillManager.GetSkill(m_ArrayStateSkill[i], 1);

      if (Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_SkillList.CanCast(
              m_ArrayStateSkill[i], SubWorld[0].m_dwCurrentTime) &&
          Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].Cost(
              pSkill->GetSkillCostType(), pSkill->GetSkillCost(this), TRUE) &&
          !Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].FindStateSkill(
              m_ArrayStateSkill[i])) {
        Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SendCommand(
            do_skill, m_ArrayStateSkill[i], -1,
            Player[CLIENT_PLAYER_INDEX].m_nIndex);
        SendClientCmdSkill(m_ArrayStateSkill[i], -1,
                           Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_dwID);
        return TRUE;
      }
    }
  }

  if (m_AutoLifeReplenish) {
    int nSkillLifeReplenishID, nSkillLevel; // fix tam thoi buff mau NM
    nSkillLifeReplenishID = 93;
    nSkillLevel =
        Npc[m_nIndex].m_SkillList.GetCurrentLevel(nSkillLifeReplenishID);

    ISkill *pSkill = g_SkillManager.GetSkill(nSkillLifeReplenishID, 1);
    if (nSkillLifeReplenishID &&
        Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].Cost(
            pSkill->GetSkillCostType(), pSkill->GetSkillCost(this), TRUE)) {
      if (Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_CurrentLife *
              MAX_PERCENT /
              Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_CurrentLifeMax <
          m_AutoLifeReplenishP) {
        Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SendCommand(
            do_skill, nSkillLifeReplenishID, -1, m_nPlayerIndex);
        SendClientCmdSkill(nSkillLifeReplenishID, -1,
                           Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_dwID);
        _break = TRUE;
      }
    }
  }
  return _break;
}

void KPlayer::PlayerFollowObject(int nObject) {
  if (IsNotValidObject(nObject)) {
    m_nObject = 0;
    return;
  }

  int nX1, nY1, nX2, nY2;
  Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].GetMpsPos(&nX1, &nY1);
  Object[nObject].GetMpsPos(&nX2, &nY2);
  if ((nX1 - nX2) * (nX1 - nX2) + (nY1 - nY2) * (nY1 - nY2) <
      PLAYERAUTO_PICKUP_CLIENT_DISTANCE *
          PLAYERAUTO_PICKUP_CLIENT_DISTANCE) // khoan cach nhat do
  {
    Player[CLIENT_PLAYER_INDEX].CheckObject(nObject);
    for (int i = 0; i < MAX_ARRAY_NPC_AUTO; i++) {
      if (m_ArrayObjectLag[i] == 0) {
        m_ArrayObjectLag[i] = Object[m_nObject].m_nID;
        m_ArrayObjectLag[i] = GetTickCount();
        break;
      }
    }
    m_bObject = FALSE;
    m_nObject = 0;
    m_Count_Acttack_Lag = 0;
    //	ClearArrayObjectLag();
  } else {
    MoveTo(nX2, nY2);
    m_nTimeRunLag++;
    if (m_nTimeRunLag >= AUTO_TIME_LAG) {
      BOOL _flag = FALSE;
      int i = 0;
      for (i = 0; i < MAX_ARRAY_NPC_AUTO; i++) {
        if (Object[nObject].m_nID == m_ArrayObjectLag[i]) {
          nObject = 0;
          m_bObject = FALSE;
          m_nObject = 0;
          m_nTimeRunLag = 0;
          m_Count_Acttack_Lag = 0;
          m_ArrayObjectLag[i] = Object[nObject].m_nID;
          m_ArrayTimeObjectLag[i] = GetTickCount();
          _flag = TRUE;
          break;
        }
      }
      if (_flag)
        return;
      for (i = 0; i < MAX_ARRAY_NPC_AUTO; i++) {
        if (m_ArrayObjectLag[i] == 0) {
          m_nTimeRunLag = 0;
          m_Count_Acttack_Lag = 0;
          m_ArrayObjectLag[i] = Object[nObject].m_nID;
          m_ArrayTimeObjectLag[i] = GetTickCount();
          m_bObject = FALSE;
          m_nObject = 0;
          nObject = 0;
          break;
        }
      }
    }
  }
}

void KPlayer::AutoParty() {
  for (int i = 0; i < MAX_AUTO_SIZE; i++) {
    if (m_nArrayTimeInvitePlayer[i] > 0) {
      m_nArrayTimeInvitePlayer[i]--;
      if (m_nArrayTimeInvitePlayer[i] == 0)
        m_nArrayInvitePlayer[i] = 0;
    }
  }

  if (g_Team[0].m_nMemNum < g_Team[0].CalcCaptainPower()) {
    int nCount = NpcSet.GetAroundPlayerForTeamInvite(NULL, 0);
    if (nCount) {
      KUiPlayerItem *m_pNearbyPlayersList =
          (KUiPlayerItem *)malloc(sizeof(KUiPlayerItem) * nCount);
      NpcSet.GetAroundPlayerForTeamInvite(m_pNearbyPlayersList, nCount);
      for (i = 0; i < nCount; i++) {
        // if (m_bAutoInviteList && !CheckPTList(m_pNearbyPlayersList[i].Name))
        //	continue;
        if (FindSameInvitePlayer(m_pNearbyPlayersList[i].uId))
          continue;
        int j = FindFreeInvitePlayer();
        if (j >= 0) {
          Player[CLIENT_PLAYER_INDEX].TeamInviteAdd(
              m_pNearbyPlayersList[i].uId);
          m_nArrayInvitePlayer[j] = m_pNearbyPlayersList[i].uId;
          m_nArrayTimeInvitePlayer[j] = INTERVAL_AUTO;
        }
      }
      free(m_pNearbyPlayersList);
    }
  }
}

/*
void KPlayer::AutoParty()
{
        for (int i=0; i < MAX_AUTO_SIZE; i++)
        {
                if (m_nArrayTimeInvitePlayer[i] > 0)
                {
                        m_nArrayTimeInvitePlayer[i]--;
                        if (m_nArrayTimeInvitePlayer[i] == 0)
                                m_nArrayInvitePlayer[i] = 0;
                }
        }
                int nCount = NpcSet.GetAroundPlayerForTeamInvite(NULL, 0);
        KUiPlayerItem*	m_pNearbyPlayersList =
(KUiPlayerItem*)malloc(sizeof(KUiPlayerItem) * nCount);
        NpcSet.GetAroundPlayerForTeamInvite(m_pNearbyPlayersList, nCount);
        for ( i = 0; i < nCount; i++)
        {
                TeamInviteAdd(m_pNearbyPlayersList[i].uId);
        m_nArrayInvitePlayer[i] = m_pNearbyPlayersList[i].uId;
                m_nArrayTimeInvitePlayer[i] = INTERVAL_AUTO;
          }
}*/
void KPlayer::PlayerEatAItem() {
  if (m_EatLife && Npc[m_nIndex].m_CurrentLife <= m_LifeAutoV) {
    if (IR_GetCurrentTime() - m_LifeCountDown > m_LifeTimeUse) {
      PlayerUseItem(ntypemau); // su dung mau
      m_LifeCountDown = IR_GetCurrentTime();
    }
  }
  if (m_EatMana && Npc[m_nIndex].m_CurrentMana <= m_ManaAutoV) {
    if (IR_GetCurrentTime() - m_ManaCountDown > m_ManaTimeUse) {
      PlayerUseItem(ntypemana); // su dung mana
      m_ManaCountDown = IR_GetCurrentTime();
    }
  }
  int Map = SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID;
  if (Npc[m_nIndex].m_FightMode) {
    if (m_Auto_TuiDuocPham && m_ItemList.CountCommonItem(0, item_medicine, 2) <=
                                  2) // 2 vua mau va mana
    {
      if (IR_GetCurrentTime() - m_TuiDPhamCountDown > defMAX_EAT_SPACETIME) {
        PlayerUseItem(ntypetuiduocpham);
        m_TuiDPhamCountDown = IR_GetCurrentTime();
      }
    }
    bool bTPFlag = false;
    if ((m_TPLife && Npc[m_nIndex].m_CurrentLife <= m_TPLifeV) && Map != 33 &&
            Map != 37 && Map != 47 && Map != 48 && Map != 49 && Map != 26 &&
            Map != 27 && Map != 28 && Map != 24 && Map != 258 && Map != 29 &&
            Map != 42 && Map != 43 ||
        (m_TPMana && Npc[m_nIndex].m_CurrentMana <= m_TPManaV) && Map != 33 &&
            Map != 37 && Map != 47 && Map != 48 && Map != 49 && Map != 26 &&
            Map != 27 && Map != 28 && Map != 24 && Map != 258 && Map != 29 &&
            Map != 42 && Map != 43 ||
        (m_TPNotMedicineBlood &&
         m_ItemList.CountCommonItem(0, item_medicine, 0) <= 0 &&
         m_ItemList.CountCommonItem(0, item_medicine, 2) <= 0) &&
            Map != 33 && Map != 37 && Map != 47 && Map != 48 && Map != 49 &&
            Map != 26 && Map != 27 && Map != 28 && Map != 24 && Map != 258 &&
            Map != 29 && Map != 42 && Map != 43 || // 0 mau
        (m_TPNotMedicineMana &&
         m_ItemList.CountCommonItem(0, item_medicine, 1) <= 0 &&
         m_ItemList.CountCommonItem(0, item_medicine, 2) <= 0) &&
            Map != 33 && Map != 37 && Map != 47 && Map != 48 && Map != 49 &&
            Map != 26 && Map != 27 && Map != 28 && Map != 24 && Map != 258 &&
            Map != 29 && Map != 42 && Map != 43 || // 1 mana
        (m_TPHightMoney && m_ItemList.GetEquipmentMoney() > 10000 &&
             m_ItemList.GetEquipmentMoney() / 10000 > m_TPHightMoneyV &&
             Map != 53 && Map != 33 && Map != 37 && Map != 47 && Map != 48 &&
             Map != 49 && Map != 26 && Map != 27 && Map != 28 && Map != 24 &&
             Map != 258 && Map != 29 && Map != 42 && Map != 43 ||
         (m_btDurabilityItem &&
          m_ItemList.HaveDamageItem(m_btDurabilityValue) && Map != 33 &&
          Map != 37 && Map != 47 && Map != 48 && Map != 49 && Map != 26 &&
          Map != 27 && Map != 28 && Map != 24 && Map != 258 && Map != 29 &&
          Map != 42 && Map != 43))) {
      bTPFlag = true;
    }

    if (m_bTPNotEquipment && Map != 33 && Map != 37 && Map != 47 && Map != 48 &&
        Map != 49 && Map != 26 && Map != 27 && Map != 28 && Map != 24 &&
        Map != 258 && Map != 29 && Map != 42 && Map != 43) {
      switch (m_nTPNotEquipment) {
      case enumRoomNotEnough1:
        if (Player[CLIENT_PLAYER_INDEX].m_ItemList.SearchEquipment(1, 1) ==
            FALSE) {
          bTPFlag = true;
          break;
        case enumRoomNotEnough2:
          if (Player[CLIENT_PLAYER_INDEX].m_ItemList.SearchEquipment(1, 2) ==
                  FALSE &&
              Player[CLIENT_PLAYER_INDEX].m_ItemList.SearchEquipment(2, 1) ==
                  FALSE)
            bTPFlag = true;
          break;
        case enumRoomNotEnough4:
          if (Player[CLIENT_PLAYER_INDEX].m_ItemList.SearchEquipment(2, 2) ==
              FALSE)
            bTPFlag = true;
          break;
        case enumRoomNotEnough6:
          if (Player[CLIENT_PLAYER_INDEX].m_ItemList.SearchEquipment(2, 3) ==
              FALSE)
            bTPFlag = true;
          break;
        }
      }
    }
    if (bTPFlag &&
        IR_GetCurrentTime() - m_PortalCountDown > defMAX_EAT_SPACETIME) {
      PlayerUseItem(ntypethodiaphu); // tho dia phu
      m_PortalCountDown = IR_GetCurrentTime();
      int nX = 51936, nY = 101888;
      if (!m_RunStatus) {
        Npc[m_nIndex].SendCommand(do_walk, nX, nY);
        SendClientCmdWalk(nX, nY);
      } else {
        Npc[m_nIndex].SendCommand(do_run, nX, nY);
        SendClientCmdRun(nX, nY);
      }
    }
  }
  if (m_AutoAntiPoison && Npc[m_nIndex].m_PoisonState.nTime) {
    if (IR_GetCurrentTime() - m_AntiPoisonCountDown > defMAX_EAT_SPACETIME) {
      PlayerUseItem(ntypegiaidoc); // su dung giai doc
      m_AntiPoisonCountDown = IR_GetCurrentTime();
    }
  }
  if (m_AutoTTL) // can than bug khi xai bo hong anh max
  {
    if (IR_GetCurrentTime() - m_TTLCountDown > defMAX_EAT_SPACETIME) {
      PlayerUseItem(ntypettl); // su dung tien thao lo
      m_TTLCountDown = IR_GetCurrentTime();
    }
  }
}

void KPlayer::PlayerUseItem(int type) {
  ItemPos Pos;
  PlayerItem *pItem = m_ItemList.GetFirstItem();
  if (pItem) {
    if (pItem->nPlace == pos_equiproom || pItem->nPlace == pos_immediacy) {
      switch (type) {
      case ntypemau:
        if (Item[pItem->nIdx].GetGenre() == item_medicine) {
          for (int i = 0; i < 6; i++) {
            if (Item[pItem->nIdx].GetBaseMagicAttribType(i) ==
                magic_lifepotion_v) {
              Pos.nPlace = pItem->nPlace;
              Pos.nX = pItem->nX;
              Pos.nY = pItem->nY;
              ApplyUseItem(pItem->nIdx, Pos);
              return;
            }
          }
        }
        break;
      case ntypemana:
        if (Item[pItem->nIdx].GetGenre() == item_medicine) {
          for (int i = 0; i < 6; i++) {
            if (Item[pItem->nIdx].GetBaseMagicAttribType(i) ==
                magic_manapotion_v) {
              Pos.nPlace = pItem->nPlace;
              Pos.nX = pItem->nX;
              Pos.nY = pItem->nY;
              ApplyUseItem(pItem->nIdx, Pos);
              return;
            }
          }
        }
        break;
      case ntypethodiaphu:
        if (strcmp(Item[pItem->nIdx].GetName(), szTDP) == 0) {
          // viet them
          m_Actacker = 0;
          m_bActacker = FALSE;
          m_nTimeRunLag = 0;
          m_Count_Acttack_Lag = 0;

          Pos.nPlace = pItem->nPlace;
          Pos.nX = pItem->nX;
          Pos.nY = pItem->nY;
          ApplyUseItem(pItem->nIdx, Pos);
          return;
        }
        break;
      case ntypegiaidoc:
        if (Item[pItem->nIdx].GetGenre() == item_medicine) {
          for (int i = 0; i < 6; i++) {
            if (Item[pItem->nIdx].GetBaseMagicAttribType(i) ==
                magic_poisondamagereduce_v) {
              Pos.nPlace = pItem->nPlace;
              Pos.nX = pItem->nX;
              Pos.nY = pItem->nY;
              ApplyUseItem(pItem->nIdx, Pos);
              return;
            }
          }
        }
        break;
      case ntypettl:
        if (Item[pItem->nIdx].GetGenre() == item_task) {
          // if (Item[pItem->nIdx].GetDetailType() == 103 ||
          // Item[pItem->nIdx].GetDetailType() == 104)
          for (int i = 0;
               i < sizeof(szMagicScriptName) / sizeof(szMagicScriptName[0]);
               i++) {
            if (strcmp(Item[pItem->nIdx].GetName(), szMagicScriptName[i]) ==
                0) {
              Pos.nPlace = pItem->nPlace;
              Pos.nX = pItem->nX;
              Pos.nY = pItem->nY;
              ApplyUseItem(pItem->nIdx, Pos);
              return;
            }
          }
        }
        break;
      case ntypetuiduocpham:
        if (Item[pItem->nIdx].GetGenre() == item_task) {

          if (strcmp(Item[pItem->nIdx].GetName(), szTuiDPhamName) == 0) {
            Pos.nPlace = pItem->nPlace;
            Pos.nX = pItem->nX;
            Pos.nY = pItem->nY;
            ApplyUseItem(pItem->nIdx, Pos);
            return;
          }
        }
        break;
      default:
        break;
      }
    }
  }

  while (pItem) {
    pItem = m_ItemList.GetNextItem();
    if (pItem) {
      if (pItem->nPlace == pos_equiproom || pItem->nPlace == pos_immediacy) {

        switch (type) {
        case ntypemau:
          if (Item[pItem->nIdx].GetGenre() == item_medicine) {
            for (int i = 0; i < 6; i++) {
              if (Item[pItem->nIdx].GetBaseMagicAttribType(i) ==
                  magic_lifepotion_v) {
                Pos.nPlace = pItem->nPlace;
                Pos.nX = pItem->nX;
                Pos.nY = pItem->nY;
                ApplyUseItem(pItem->nIdx, Pos);
                return;
              }
            }
          }
          break;
        case ntypemana:
          if (Item[pItem->nIdx].GetGenre() == item_medicine) {
            for (int i = 0; i < 6; i++) {
              if (Item[pItem->nIdx].GetBaseMagicAttribType(i) ==
                  magic_manapotion_v) {
                Pos.nPlace = pItem->nPlace;
                Pos.nX = pItem->nX;
                Pos.nY = pItem->nY;
                ApplyUseItem(pItem->nIdx, Pos);
                return;
              }
            }
          }
          break;
        case ntypethodiaphu:
          if (strcmp(Item[pItem->nIdx].GetName(), szTDP) == 0) {
            // viet them
            m_Actacker = 0;
            m_bActacker = FALSE;
            m_nTimeRunLag = 0;
            m_Count_Acttack_Lag = 0;

            Pos.nPlace = pItem->nPlace;
            Pos.nX = pItem->nX;
            Pos.nY = pItem->nY;
            ApplyUseItem(pItem->nIdx, Pos);
            return;
          }
          break;
        case ntypegiaidoc:
          if (Item[pItem->nIdx].GetGenre() == item_medicine) {
            for (int i = 0; i < 6; i++) {
              if (Item[pItem->nIdx].GetBaseMagicAttribType(i) ==
                  magic_poisondamagereduce_v) {
                Pos.nPlace = pItem->nPlace;
                Pos.nX = pItem->nX;
                Pos.nY = pItem->nY;
                ApplyUseItem(pItem->nIdx, Pos);
                return;
              }
            }
          }
          break;
        case ntypettl:
          if (Item[pItem->nIdx].GetGenre() == item_task) {
            // if (Item[pItem->nIdx].GetDetailType() == 103 ||
            // Item[pItem->nIdx].GetDetailType() == 104)
            for (int i = 0;
                 i < sizeof(szMagicScriptName) / sizeof(szMagicScriptName[0]);
                 i++) {
              if (strcmp(Item[pItem->nIdx].GetName(), szMagicScriptName[i]) ==
                  0) {
                Pos.nPlace = pItem->nPlace;
                Pos.nX = pItem->nX;
                Pos.nY = pItem->nY;
                ApplyUseItem(pItem->nIdx, Pos);
                return;
              }
            }
          }
          break;
        case ntypetuiduocpham:
          if (Item[pItem->nIdx].GetGenre() == item_task) {
            // if (Item[pItem->nIdx].GetDetailType() == 103 ||
            // Item[pItem->nIdx].GetDetailType() == 104)
            if (strcmp(Item[pItem->nIdx].GetName(), szTuiDPhamName) == 0) {
              Pos.nPlace = pItem->nPlace;
              Pos.nX = pItem->nX;
              Pos.nY = pItem->nY;
              ApplyUseItem(pItem->nIdx, Pos);
              return;
            }
          }
          break;
        default:
          break;
        }
      }
    }
  }
}

void KPlayer::ProcessInputMsg(UINT uMsg, WPARAM wParam, LPARAM lParam) {
  switch (uMsg) {
  case WM_MOUSEMOVE:
  case WM_MOUSEHOVER:
    if (wParam & MK_LBUTTON)
      OnButtonMove(LOWORD(lParam), HIWORD(lParam),
                   (wParam & ~(MK_LBUTTON | MK_MBUTTON | MK_RBUTTON)),
                   button_left);
    else if (wParam & MK_RBUTTON)
      OnButtonMove(LOWORD(lParam), HIWORD(lParam),
                   (wParam & ~(MK_LBUTTON | MK_MBUTTON | MK_RBUTTON)),
                   button_right);
    else
      OnMouseMove(LOWORD(lParam), HIWORD(lParam));
    break;

  case WM_LBUTTONUP:
    OnButtonUp(LOWORD(lParam), HIWORD(lParam), button_left);
    break;

  case WM_LBUTTONDOWN:
    OnButtonDown(LOWORD(lParam), HIWORD(lParam),
                 (wParam & ~(MK_LBUTTON | MK_MBUTTON | MK_RBUTTON)),
                 button_left);
    break;

  case WM_RBUTTONUP:
    OnButtonUp(LOWORD(lParam), HIWORD(lParam), button_right);
    break;

  case WM_RBUTTONDOWN:
    OnButtonDown(LOWORD(lParam), HIWORD(lParam),
                 (wParam & ~(MK_LBUTTON | MK_MBUTTON | MK_RBUTTON)),
                 button_right);
    break;
  }
}

void KPlayer::OnButtonDown(int x, int y, int Key, MOUSE_BUTTON nButton) {
  m_MouseDown[(int)nButton] = TRUE;
  g_DebugLog("Mouse Down True ");
  FindSelectNpc(x, y, relation_all);
  FindSelectObject(x, y);
  //	Npc[m_nIndex].m_nPeopleIdx = m_nPeapleIdx;
  ProcessMouse(x, y, Key, nButton);
}

void KPlayer::OnButtonMove(int x, int y, int Key, MOUSE_BUTTON nButton) {
  if (m_MouseDown[(int)nButton]) {
    ProcessMouse(x, y, Key, nButton);
  }
}

void KPlayer::OnButtonUp(int x, int y, MOUSE_BUTTON nButton) {
  m_nAutoPause = FALSE;
  m_MouseDown[(int)nButton] = 0;
}

void KPlayer::OnMouseMove(int x, int y) {
  m_nPeapleIdx = 0;
  m_nObjectIdx = 0;
  FindSelectNpc(x, y, relation_all);
  FindSelectObject(x, y);
  if (m_nPeapleIdx) {
    if (Npc[m_nPeapleIdx].m_Kind == kind_dialoger)
      CoreDataChanged(GDCNI_SWITCH_CURSOR, NULL, MOUSE_CURSOR_DIALOG);
    else if (NpcSet.GetRelation(m_nIndex, m_nPeapleIdx) == relation_enemy)
      CoreDataChanged(GDCNI_SWITCH_CURSOR, NULL, MOUSE_CURSOR_FIGHT);
    else
      CoreDataChanged(GDCNI_SWITCH_CURSOR, NULL, MOUSE_CURSOR_NORMAL);
  } else if (m_nObjectIdx) {
    if (Object[m_nObjectIdx].m_nKind == Obj_Kind_MapObj)
      CoreDataChanged(GDCNI_SWITCH_CURSOR, NULL, MOUSE_CURSOR_DIALOG);
    else if (Object[m_nObjectIdx].m_nKind == Obj_Kind_Item ||
             Object[m_nObjectIdx].m_nKind == Obj_Kind_Money ||
             Object[m_nObjectIdx].m_nKind == Obj_Kind_Prop)
      CoreDataChanged(GDCNI_SWITCH_CURSOR, NULL, MOUSE_CURSOR_PICK);
  } else
    CoreDataChanged(GDCNI_SWITCH_CURSOR, NULL, MOUSE_CURSOR_NORMAL);
}

void KPlayer::ProcessMouse(int x, int y, int Key, MOUSE_BUTTON nButton) {
  if (CheckTrading())
    return;

  if (m_ItemList.m_Hand > 0) {
    if (nButton == button_left) {
      ThrowAwayItem();
      return;
    }
  }

  int nX = x;
  int nY = y;
  int nZ = 0;
  g_ScenePlace.ViewPortCoordToSpaceCoord(nX, nY, nZ);

  /*	if (Key & MK_SHIFT)
  {
  Npc[m_nIndex].SendCommand(do_jump, nX, nY);
  SendClientCmdJump(nX, nY);
  return;
}*/

  if (Npc[m_nIndex].IsCanInput()) {
    int nIdx = 0;

    if (nButton == button_right) {
      nIdx = Npc[m_nIndex].m_SkillList.FindSame(m_nRightSkillID);
      g_DebugLog("[skill]right");
    } else {
      nIdx = Npc[m_nIndex].m_SkillList.FindSame(m_nLeftSkillID);
      g_DebugLog("[skill]left");
    }
    Npc[m_nIndex].SetActiveSkill(nIdx);
  } else {
    // g_DebugLog("[skill]return");
    Npc[m_nIndex].m_nPeopleIdx = 0;
    Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;
    return;
  }

  if ((Key & MK_SHIFT) || (nButton == button_right)) {
    if (Npc[m_nIndex].m_ActiveSkillID > 0) {
      ISkill *pISkill =
          (KSkill *)g_SkillManager.GetSkill(Npc[m_nIndex].m_ActiveSkillID, 1);
      if (!pISkill)
        return;

      if (pISkill->IsAura())
        return;
      int nAttackRange = pISkill->GetAttackRadius();

      int nTargetIdx = 0;
      //			m_nPeapleIdx = 0;
      // ����Object / Enemy / Ally �����ȼ��ҵ���Ҫ��Ķ���id

      if (pISkill->IsTargetAlly()) {
        FindSelectNpc(x, y, relation_ally);
        if (m_nPeapleIdx) {
          nTargetIdx = m_nPeapleIdx;
        }
      }

      if (pISkill->IsTargetEnemy()) {
        FindSelectNpc(x, y, relation_enemy);
        if (m_nPeapleIdx) {
          nTargetIdx = m_nPeapleIdx;
        }
      }

      if (pISkill->IsTargetObj()) {
        FindSelectObject(x, y);
        if (m_nObjectIdx) {
          nTargetIdx = m_nObjectIdx;
        }
      }
      // ������ܱ���ָ�����󣬶���ǰλ���޶���Ļ���ֱ���˳�
      if (pISkill->IsTargetOnly() && !nTargetIdx) {
        Npc[m_nIndex].m_nPeopleIdx = 0;

        Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;

        m_nPeapleIdx = 0;
        return;
      }

      if (m_nIndex == nTargetIdx) {
        Npc[m_nIndex].m_nPeopleIdx = 0;

        Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;

        m_nPeapleIdx = 0;
        return;
      }

      if ((!Npc[m_nIndex].m_SkillList.CanCast(
              Npc[m_nIndex].m_ActiveSkillID,
              SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_dwCurrentTime)) ||
          (!Npc[m_nIndex].Cost(pISkill->GetSkillCostType(),
                               pISkill->GetSkillCost(&Npc[m_nIndex]), TRUE))) {
        Npc[m_nIndex].m_nPeopleIdx = 0;

        Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;

        m_nPeapleIdx = 0;
        return;
      }

      // �޶���ֱ�ӷ�����
      if (!nTargetIdx) {
        Npc[m_nIndex].SendCommand(do_skill, Npc[m_nIndex].m_ActiveSkillID, nX,
                                  nY);
        // Send to Server
        SendClientCmdSkill(Npc[m_nIndex].m_ActiveSkillID, nX, nY);
      } else {
        if (pISkill->IsTargetOnly()) {
          int distance = NpcSet.GetDistance(m_nIndex, nTargetIdx);
          if (distance > pISkill->GetAttackRadius()) {
            m_nPeapleIdx = nTargetIdx;
            return;
          }
        }
        //
        if (m_nIndex == nTargetIdx &&
            pISkill->GetSkillStyle() == SKILL_SS_Missles)
          return;
        Npc[m_nIndex].SendCommand(do_skill, Npc[m_nIndex].m_ActiveSkillID, -1,
                                  nTargetIdx);
        // Send to Server
        SendClientCmdSkill(Npc[m_nIndex].m_ActiveSkillID, -1,
                           Npc[nTargetIdx].m_dwID);
      }
    }
    Npc[m_nIndex].m_nPeopleIdx = 0;

    Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;

    return;
  }

  if (Key == 0) {
    int nRelation = NpcSet.GetRelation(m_nIndex, m_nPeapleIdx);
    if (nRelation == relation_enemy || nRelation == relation_dialog) {
      Npc[m_nIndex].m_nPeopleIdx = m_nPeapleIdx;
      //	Npc[m_nIndex].m_nPeopleIdxCheckClient = (m_nPeapleIdx + 46) * 13
      //+ 15743;
    }

    if (m_nSendMoveFrames >= defMAX_PLAYER_SEND_MOVE_FRAME) {
      m_nPickObjectIdx = m_nObjectIdx;
      Npc[m_nIndex].m_nObjectIdx = m_nPickObjectIdx;
      if (!m_RunStatus) {
        Npc[m_nIndex].SendCommand(do_walk, nX, nY);
        // Send to Server
        SendClientCmdWalk(nX, nY);
      } else {
        if (Npc[m_nIndex].m_CurrentStamina > 0 ||
            m_cPK.GetNormalPKState() != 2) {
          Npc[m_nIndex].SendCommand(do_run, nX, nY);
          // Send to Server
          SendClientCmdRun(nX, nY);
        } else {
          Npc[m_nIndex].SendCommand(do_walk, nX, nY);
          // Send to Server
          SendClientCmdWalk(nX, nY);
        }
      }
      m_nSendMoveFrames = 0;
    }
    return;
  }

  /*	if (Key & MK_ALT)
  {
  Npc[m_nIndex].SendCommand(do_jump, nX, nY);
  SendClientCmdJump(nX, nY);
  }*/
}

void KPlayer::Walk(int nDir, int nSpeed) {
  int nMapX = Npc[m_nIndex].m_MapX;
  int nMapY = Npc[m_nIndex].m_MapY;
  int nOffX = Npc[m_nIndex].m_OffX;
  int nOffY = Npc[m_nIndex].m_OffY;
  int nSubWorld = Npc[m_nIndex].m_SubWorldIndex;
  int nRegion = Npc[m_nIndex].m_RegionIndex;
  int nX, nY;

  SubWorld[nSubWorld].Map2Mps(nRegion, nMapX, nMapY, nOffX, nOffY, &nX, &nY);
  SubWorld[nSubWorld].GetMps(&nX, &nY, nSpeed * 2, nDir);

  if (m_RunStatus) {
    if (Npc[m_nIndex].m_CurrentStamina > 0 || m_cPK.GetNormalPKState() != 2) {
      Npc[m_nIndex].SendCommand(do_run, nX, nY);
      // Send to Server
      if (!CheckTrading())
        SendClientCmdRun(nX, nY);
    } else {

      Npc[m_nIndex].SendCommand(do_walk, nX, nY);
      // Send to Server
      if (!CheckTrading())
        SendClientCmdWalk(nX, nY);
    }
  } else {
    Npc[m_nIndex].SendCommand(do_walk, nX, nY);
    // Send to Server
    if (!CheckTrading())
      SendClientCmdWalk(nX, nY);
  }
}

void KPlayer::TurnLeft() {
  if (Npc[m_nIndex].m_Doing != do_stand && Npc[m_nIndex].m_Doing != do_sit)
    return;

  if (Npc[m_nIndex].m_Dir > 8)
    Npc[m_nIndex].m_Dir -= 8;
  else
    Npc[m_nIndex].m_Dir = MAX_NPC_DIR - 1;
}

void KPlayer::TurnRight() {
  if (Npc[m_nIndex].m_Doing != do_stand && Npc[m_nIndex].m_Doing != do_sit)
    return;

  if (Npc[m_nIndex].m_Dir < MAX_NPC_DIR - 9)
    Npc[m_nIndex].m_Dir += 8;
  else
    Npc[m_nIndex].m_Dir = 0;
}

void KPlayer::TurnBack() {
  if (Npc[m_nIndex].m_Doing != do_stand && Npc[m_nIndex].m_Doing != do_sit)
    return;

  if (Npc[m_nIndex].m_Dir < MAX_NPC_DIR / 2)
    Npc[m_nIndex].m_Dir += MAX_NPC_DIR / 2;
  else
    Npc[m_nIndex].m_Dir -= MAX_NPC_DIR / 2;
}

void KPlayer::FindSelectNpc(int x, int y, int nRelation) {
  int nNpcIdx = 0;

  nNpcIdx = NpcSet.SearchNpcAt(x, y, nRelation, 40);

  if (nNpcIdx) {
    m_nPeapleIdx = nNpcIdx;
    m_nImageNpcID = nNpcIdx; // them
  } else
    m_nPeapleIdx = 0;
}

void KPlayer::FindSelectObject(int x, int y) {
  int nObjIdx = 0;

  nObjIdx = ObjSet.SearchObjAt(x, y, 40);
  if (nObjIdx)
    m_nObjectIdx = nObjIdx;
  else
    m_nObjectIdx = 0;
}
// need change
int KPlayer::NetCommandPlayerTalk(BYTE *pProtocol) {
  /*	DWORD	dwNpcID;
  int		nSize;
  dwNpcID = *(DWORD *) &pProtocol[1];
  nSize = pProtocol[5];
  int nIdx = NpcSet.SearchID(dwNpcID);

    if (ConformIdx(nIdx))
    {
                  strcpy(Npc[nIdx].m_szChatBuffer, (char *)(pProtocol+6));
                  Npc[nIdx].m_nCurChatTime = NPC_SHOW_CHAT_TIME_LENGTH;
                  }

                    return (7 + nSize);	// need test
          */
  return 0;
}

BOOL KPlayer::ConformIdx(int nIdx) {
  if (nIdx == m_nIndex || nIdx == 0)
    return FALSE;
  return TRUE;
}

void KPlayer::OpenBuyShop(DWORD dwId) {
  PLAYER_OPEN_BUY_SHOP sOpen;
  sOpen.ProtocolType = c2s_playeropenbuyshop;
  sOpen.m_dwNpcID = dwId;
  if (g_pClient)
    g_pClient->SendPackToServer(&sOpen, sizeof(PLAYER_OPEN_BUY_SHOP));
}

#endif

#ifdef _SERVER
BOOL KPlayer::IsWaitingRemove() {
  if (!m_dwID)
    return FALSE;
  return m_bIsQuiting;
}

void KPlayer::WaitForRemove() {
  //	if (m_nLiXian == 0) //UYTHAC
  m_bIsQuiting = TRUE;
}

BOOL KPlayer::IsLoginTimeOut() {
  if (m_nNetConnectIdx != -1)
    return FALSE;

  if (!m_dwID)
    return FALSE;

  if (-1 != m_dwLoginTime &&
      g_SubWorldSet.GetGameTime() - m_dwLoginTime > defPLAYER_LOGIN_TIMEOUT) {
    //		m_dwLoginTime = -1;
    return TRUE;
  }

  return FALSE;
}

void KPlayer::LoginTimeOut() {
  // ֪ͨ��������Լ�������
  m_cChat.OffLine(m_dwID);

  m_pStatusLoadPlayerInfo = NULL;

  Release();
}

BOOL KPlayer::Save() {
  if (m_nIndex <= 0 && m_dwID == 0) {
    return FALSE;
  }
  if (CheckTrading()) {
    TRADE_DECISION_COMMAND sTrade;
    sTrade.ProtocolType = c2s_tradedecision;
    sTrade.m_btDecision = 0;
    TradeDecision((BYTE *)&sTrade);
  }

  /*	if (m_uMustSave != SAVE_IDLE)
  return FALSE;
*/
  TRoleData *pData = (TRoleData *)m_SaveBuffer;

  if (UpdateDBPlayerInfo((BYTE *)pData) == -1) {
    return FALSE;
  }
  /*
  #ifdef _DEBUG
  KFile File;
  char szFileName[32];
  sprintf(szFileName, "d:\\%sSave.Buf", m_PlayerName);
  File.Create(szFileName);
  File.Write(pData, pData->dwDataLen);
  File.Close();
  #endif
*/
  _ASSERT(pData->dwDataLen < sizeof(m_SaveBuffer));
  if (pData->dwDataLen <= 0) {
    return FALSE;
  }

  //	m_uMustSave = SAVE_REQUEST;
  m_ulLastSaveTime = g_SubWorldSet.GetGameTime();
  return TRUE;
}

BOOL KPlayer::CanSave() {
  if (m_nNetConnectIdx == -1) {
    return FALSE;
  }
  if (m_nIndex <= 0) {
    return FALSE;
  }

  if (m_bExchangeServer) {
    return FALSE;
  }

  if (m_bIsQuiting) {
    return FALSE;
  }
  if (CheckTrading()) {
    return FALSE;
  }
  if (m_uMustSave == SAVE_DOING &&
      g_SubWorldSet.GetGameTime() - m_ulLastSaveTime > defPLAYER_SAVE_TIMEOUT) {
    return TRUE;
  }
  if (m_nLixian) // edit by phong kieu dang uy thac chuyen lai trang thai cho`
                 // save
    m_uMustSave = SAVE_IDLE;

  if (m_uMustSave != SAVE_IDLE) {
    return FALSE;
  }

  return TRUE;
}

BOOL KPlayer::CheckSaveRsul() {

  if (m_uMustSave != SAVE_IDLE)
    return FALSE;

  return TRUE;
}

BOOL KPlayer::SendSyncData(int &nStep, unsigned int &nParam) {
  BOOL bRet = FALSE;
  switch (nStep) {
  case STEP_BASE_INFO: {
    bRet = SubWorld[Npc[m_nIndex].m_SubWorldIndex].SendSyncData(
        m_nIndex, m_nNetConnectIdx);
    if (!bRet) {
      printf("SubWorld Fail.\n");
      break;
    }
    bRet = Npc[m_nIndex].SendSyncData(m_nNetConnectIdx);
    if (!bRet) {
      printf("NPC Fail.\n");
      break;
    }
    // �����Ϣ������ͬ������NPC���ݺ�����ʹ�ͻ������ҵ���ǰ����ڿͻ��˵�Npc����
    CURPLAYER_SYNC sSync; // ͬ����ǰ��ҵ����������Ϣ���ͻ��ˣ�װ���ȣ�
    sSync.ProtocolType = (BYTE)s2c_synccurplayer;
    sSync.m_dwID = Npc[m_nIndex].m_dwID;
    sSync.m_btLevel = (DWORD)Npc[m_nIndex].m_Level;
    sSync.m_btSex = Npc[m_nIndex].m_nSex;
    sSync.m_btKind = Npc[m_nIndex].m_Kind;
    sSync.m_btSeries = Npc[m_nIndex].m_Series;
    sSync.m_wLifeMax = Npc[m_nIndex].m_LifeMax;
    sSync.m_wStaminaMax = Npc[m_nIndex].m_StaminaMax;
    sSync.m_wManaMax = Npc[m_nIndex].m_ManaMax;
    sSync.m_HeadImage = Npc[m_nIndex].m_HeadImage;
    sSync.m_wAttributePoint = this->m_nAttributePoint;
    sSync.m_wSkillPoint = this->m_nSkillPoint;
    sSync.m_wStrength = this->m_nStrength;
    sSync.m_wDexterity = this->m_nDexterity;
    sSync.m_wVitality = this->m_nVitality;
    sSync.m_wEngergy = this->m_nEngergy;
    sSync.m_wLucky = this->m_nLucky;
    sSync.m_nExp = this->m_nExp;
    sSync.m_dwLeadExp = this->m_dwLeadExp;
    sSync.m_btImagePlayer = this->m_ImagePlayer; // chan dung
    sSync.m_btCurFaction = this->m_cFaction.m_nCurFaction;
    sSync.m_btFirstFaction = this->m_cFaction.m_nFirstAddFaction;
    sSync.m_nFactionAddTimes = this->m_cFaction.m_nAddTimes;
    sSync.m_wWorldStat = (WORD)m_nWorldStat;
    sSync.m_wSectStat = (WORD)m_nSectStat;
    sSync.m_nMoney1 = this->m_ItemList.GetMoney(room_equipment);
    sSync.m_nMoney2 = this->m_ItemList.GetMoney(room_repository);

    if (SUCCEEDED(g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sSync,
                                              sizeof(CURPLAYER_SYNC)))) {
      bRet = TRUE;
    } else {
      printf("player Packing sync data failed...\n");
      bRet = FALSE;
      break;
    }
  } break;
  case STEP_FIGHT_SKILL_LIST: {
    bRet = SendSyncData_Skill();
  } break;
  case STEP_LIFE_SKILL_LIST:
    bRet = TRUE;
    break;
  case STEP_ITEM_LIST:
    bRet = TRUE;
    break;
  case STEP_TASK_LIST:
    bRet = TRUE;
    break;
  case STEP_SYNC_END:
    bRet = TRUE;
    break;
  }
  if (!bRet) {
    printf("Load PlayerInfo Step %d Failed...\n", nStep);
  }
  return bRet;
}

BOOL KPlayer::SendSyncData_Skill() {
  SKILL_SEND_ALL_SYNC sSkill;

  sSkill.ProtocolType = s2c_synccurplayerskill;
  sSkill.m_wProtocolLong = 2;
  int i;
  int j;
  for (i = 0, j = 0; i < MAX_NPCSKILL; i++) {
    sSkill.m_sAllSkill[i].SkillId = 0;
    sSkill.m_sAllSkill[i].SkillLevel = 0;
    if (Npc[m_nIndex].m_SkillList.m_Skills[i].SkillId <= 0)
      continue;
    sSkill.m_sAllSkill[j].SkillId =
        Npc[m_nIndex].m_SkillList.m_Skills[i].SkillId;
    sSkill.m_sAllSkill[j].SkillLevel =
        Npc[m_nIndex].m_SkillList.m_Skills[i].SkillLevel;
    j++;
  }
  sSkill.m_wProtocolLong += sizeof(SKILL_SEND_ALL_SYNC_DATA) * j;

  if (SUCCEEDED(g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sSkill,
                                            sSkill.m_wProtocolLong + 1))) {
    return TRUE;
  } else {
    printf("player Packing skill sync data failed...\n");
    return FALSE;
  }
}

void KPlayer::SendCurHeightSyncData() {
  CURPLAYER_HEIGHT_SYNC sSync;
  sSync.ProtocolType = s2c_synccurplayerheight;
  sSync.m_Task100 = this->m_cTask.GetSaveVal(100);
  sSync.m_Task162 = this->m_cTask.GetSaveVal(162);
  sSync.m_Task191 = this->m_cTask.GetSaveVal(191);
  sSync.m_Task192 = this->m_cTask.GetSaveVal(192);
  sSync.m_Task193 = this->m_cTask.GetSaveVal(193);
  sSync.m_Task140 = this->m_cTask.GetSaveVal(140);
  sSync.m_Task139 = this->m_cTask.GetSaveVal(139);
  sSync.m_Task485 = this->m_cTask.GetSaveVal(485);
  sSync.m_Task128 = this->m_cTask.GetSaveVal(128);

  sSync.m_Task99 = this->m_cTask.GetSaveVal(99);

  sSync.m_Task15 = this->m_cTask.GetSaveVal(15);
  sSync.m_Task124 = this->m_cTask.GetSaveVal(124);

  g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sSync,
                              sizeof(CURPLAYER_HEIGHT_SYNC));
}

void KPlayer::SendCurNormalSyncData() {
  CURPLAYER_NORMAL_SYNC sSync;

  sSync.ProtocolType = s2c_synccurplayernormal;
  sSync.m_shLife = Npc[m_nIndex].m_CurrentLife;
  sSync.m_shStamina = Npc[m_nIndex].m_CurrentStamina;
  sSync.m_shMana = Npc[m_nIndex].m_CurrentMana;
  sSync.m_shLifeMax = Npc[m_nIndex].m_CurrentLifeMax;
  sSync.m_shStaminaMax = Npc[m_nIndex].m_CurrentStaminaMax;
  sSync.m_shManaMax = Npc[m_nIndex].m_CurrentManaMax;
  sSync.m_shAngry = 0;
  if (!m_cTeam.m_nFlag)
    sSync.m_btTeamData = 0;
  else {
    if (m_cTeam.m_nFigure == TEAM_CAPTAIN)
      sSync.m_btTeamData = 0x03;
    else
      sSync.m_btTeamData = 0x01;
  }

  g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sSync,
                              sizeof(CURPLAYER_NORMAL_SYNC));
}

void KPlayer::QuitGame(int nType) { Save(); }

void KPlayer::BuyItem(BYTE *pProtocol) {
  PLAYER_BUY_ITEM_COMMAND *pCommand = (PLAYER_BUY_ITEM_COMMAND *)pProtocol;
  BuySell.Buy(m_nPlayerIndex, m_BuyInfo.m_nBuyIdx, pCommand->m_BuyIdx,
              pCommand->m_Place, pCommand->m_X, pCommand->m_Y);
}

void KPlayer::AutoSellItem(BYTE *pProtocol) {
  PLAYER_SELL_ITEM_COMMAND *pCommand = (PLAYER_SELL_ITEM_COMMAND *)pProtocol;
  BuySell.AutoSell(m_nPlayerIndex, m_BuyInfo.m_nBuyIdx,
                   m_ItemList.SearchID(pCommand->m_ID), pCommand->m_Number);
}

void KPlayer::SellItem(BYTE *pProtocol) {
  PLAYER_SELL_ITEM_COMMAND *pCommand = (PLAYER_SELL_ITEM_COMMAND *)pProtocol;
  BuySell.Sell(m_nPlayerIndex, m_BuyInfo.m_nBuyIdx,
               m_ItemList.SearchID(pCommand->m_ID));
}

void KPlayer::ShopPrice(BYTE *pProtocol) {
  PLAYER_SHOP_PRICE_COMMAND *pCommand = (PLAYER_SHOP_PRICE_COMMAND *)pProtocol;
  int nIdx = m_ItemList.SearchID(pCommand->m_ID);

  if (nIdx <= 0 || nIdx >= MAX_ITEM)
    return;

  int nPrice = pCommand->m_Price;

  if (nPrice < 0 || nPrice > 999999999)
    return;

  if (((Item[nIdx].GetGenre() == item_equip ||
        Item[nIdx].GetGenre() == item_medicine) &&
       Item[nIdx].m_GeneratorParam.nVersion > 1) ||
      (Item[nIdx].GetGenre() == item_task && Item[nIdx].GetBindItem() >= 1))
    return;

  if (Item[nIdx].GetGenre() == item_equip && Item[nIdx].GetDurability() == 0)
    return;

  int nListIdx = m_ItemList.FindSame(nIdx);

  if (nListIdx > 0 && nListIdx < MAX_PLAYER_ITEM) {
    if (m_ItemList.m_Items[nListIdx].nPlace != pos_equiproom)
      return;
  } else
    return;

  Item[nIdx].m_nPriceShop = nPrice;
  PLAYER_SHOP_PRICE_RETURN_COMMAND IDC;
  IDC.ProtocolType = s2c_playershoppricereturn;
  IDC.m_ID = Item[nIdx].m_dwID;
  IDC.m_Price = Item[nIdx].m_nPriceShop;

  if (g_pServer)
    g_pServer->PackDataToClient(m_nNetConnectIdx, &IDC,
                                sizeof(PLAYER_SHOP_PRICE_RETURN_COMMAND));
}

void KPlayer::ShopBuyItem(BYTE *pProtocol) {

  PLAYER_SHOP_BUY_ITEM_COMMAND *pCommand =
      (PLAYER_SHOP_BUY_ITEM_COMMAND *)pProtocol;

  if (m_nPlayerBuyShop <= 0 || m_nPlayerBuyShop >= MAX_PLAYER)
    return;

  int nNpcIdxShop = Player[m_nPlayerBuyShop].m_nIndex;

  if (nNpcIdxShop <= 0 || nNpcIdxShop >= MAX_NPC)
    return;

  if (!Npc[nNpcIdxShop].m_dwID)
    return;

  if (Npc[m_nIndex].m_FightMode || Npc[nNpcIdxShop].m_FightMode)
    return;

  if (Player[m_nPlayerBuyShop].CheckTrading() ||
      !Player[m_nPlayerBuyShop].CheckShopOpen())
    return;

  if (m_dwTimeBuyShop != Player[m_nPlayerBuyShop].m_dwTimeOpenShop)
    return;

  int nIdx = Player[m_nPlayerBuyShop].m_ItemList.SearchID(pCommand->m_ID);

  if (nIdx <= 0 || nIdx >= MAX_ITEM)
    return;

  if (Npc[m_nIndex].m_SubWorldIndex < 0 ||
      Npc[m_nIndex].m_SubWorldIndex != Npc[nNpcIdxShop].m_SubWorldIndex)
    return;

  if (!Player[m_nPlayerBuyShop].m_ItemList.FindSame(nIdx))
    return;

  if (Player[m_nPlayerBuyShop]
          .m_ItemList
          .m_Items[Player[m_nPlayerBuyShop].m_ItemList.FindSame(nIdx)]
          .nPlace != pos_equiproom)
    return;

  if (Item[nIdx].m_nPriceShop <= 0)
    return;

  if (m_ItemList.GetEquipmentMoney() < Item[nIdx].m_nPriceShop)
    return;

  ItemPos Pos;

  if (!m_ItemList.SearchPosition(Item[nIdx].GetWidth(), Item[nIdx].GetHeight(),
                                 &Pos)) {
    KPlayerChat::SendSystemInfo(
        1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
        "Kh�ng c�n ch� tr�ng trong h�nh trang !",
        strlen("Kh�ng c�n ch� tr�ng trong h�nh trang !"));
    return;
  }

  if (Pos.nPlace != pos_equiproom) {
    KPlayerChat::SendSystemInfo(
        1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
        "Kh�ng c�n ch� tr�ng trong h�nh trang !",
        strlen("Kh�ng c�n ch� tr�ng trong h�nh trang !"));
    return;
  }

  int nMoneyMapT = 0;

  if (SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_bCheckTong) {
    int nTongT = SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_nTongT;
    if (nTongT >= 0 && nTongT <= 50) {

      if (SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_dwTongName ==
          m_cTong.GetTongNameID()) {
        nMoneyMapT = Item[nIdx].m_nPriceShop * nTongT / 200;
      } else {
        nMoneyMapT = Item[nIdx].m_nPriceShop * nTongT / 100;
      }

      if (Item[nIdx].m_nPriceShop <= nMoneyMapT || nMoneyMapT < 0) {
        nMoneyMapT = 0;
      }
    }
  }

  int logMoney = Item[nIdx].m_nPriceShop;
  Pay(Item[nIdx].m_nPriceShop);

  Player[m_nPlayerBuyShop].Earn(Item[nIdx].m_nPriceShop - nMoneyMapT);

  Player[m_nPlayerBuyShop].m_ItemList.Remove(nIdx);

  m_ItemList.Add(nIdx, Pos.nPlace, Pos.nX, Pos.nY);

  Item[nIdx].m_nPriceShop = 0;

  if (SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_bCheckTong) {

    try {

      bool bExecuteScriptMistake = true;
      KLuaScript *pScript =
          (KLuaScript *)g_GetScript("\\script\\admin\\banghoi\\banghoi.lua");
      ;
      if (pScript) {

        int nTopIndex = 0;

        pScript->SafeCallBegin(&nTopIndex);
        if (pScript->CallFunction(
                "AddMoneyMain", 0, "dsd",
                SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_dwTongName,
                SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_szTongNameBC,
                nMoneyMapT))
          ;
        { bExecuteScriptMistake = false; }
        pScript->SafeCallEnd(nTopIndex);
      }

    } catch (...) {
      printf("Exception Have Caught When Execute Script[%d]!!!!!",
             g_FileName2Id("\\script\\admin\\banghoi\\banghoi.lua"));
    }
  }

  if (Player[m_nPlayerBuyShop].CanSave()) {
    if (Player[m_nPlayerBuyShop].Save()) {
      printf("Save Player: %s \n", Player[m_nPlayerBuyShop].m_PlayerName);
      Player[m_nPlayerBuyShop].m_nLiXian = 0;
      Player[m_nPlayerBuyShop].m_nLiXian2 = 1;
      Player[m_nPlayerBuyShop].m_uMustSave = SAVE_REQUEST;
    }
  }

  if (CanSave()) {

    if (Save()) {
      printf("Save Player: %s \n", m_PlayerName);
      m_uMustSave = SAVE_REQUEST;
    }
  }

  ////////////////////
  ExecuteScript("\\script\\admin\\muaban.lua", "main", m_nPlayerBuyShop);

  ////////////////
}

void KPlayer::OpenBuyShop(BYTE *pProtocol) {
  PLAYER_OPEN_BUY_SHOP *pCommand = (PLAYER_OPEN_BUY_SHOP *)pProtocol;

  int nNpcIdx = NpcSet.SearchID(pCommand->m_dwNpcID);

  if (nNpcIdx <= 0 || nNpcIdx >= MAX_NPC)
    return;

  if (m_bBlock) {
    KPlayerChat::SendSystemInfo(
        1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
        "Ch�a m� kh�a r��ng, kh�ng th� xem h�ng !",
        strlen("Ch�a m� kh�a r��ng, kh�ng th� xem h�ng !"));
    return;
  }

  if (Npc[m_nIndex].m_SubWorldIndex == g_SubWorldSet.SearchWorld(43) ||
      Npc[nNpcIdx].m_SubWorldIndex == g_SubWorldSet.SearchWorld(43))
    return;

  if (!Npc[nNpcIdx].IsPlayer())
    return;

  int nPlayerIdx = Npc[nNpcIdx].GetPlayerIdx();

  if (nPlayerIdx <= 0 || nPlayerIdx >= MAX_PLAYER)
    return;

  if (!Player[nPlayerIdx].CheckShopOpen())
    return;

  if (Npc[m_nIndex].m_FightMode || Npc[nNpcIdx].m_FightMode)
    return;

  m_dwTimeBuyShop = Player[nPlayerIdx].m_dwTimeOpenShop;

  m_nPlayerBuyShop = nPlayerIdx;

  BOX_BUY_SHOP_SYNC sItemBox;
  sItemBox.ProtocolType = s2c_synclistitembuyshop;
  sItemBox.m_nTime = m_dwTimeBuyShop;
  memcpy(sItemBox.m_szName, Npc[Player[nPlayerIdx].m_nIndex].Name,
         sizeof(sItemBox.m_szName));
  g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sItemBox,
                              sizeof(BOX_BUY_SHOP_SYNC));

  int nsl = 0;

  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {

    int nIdx = Player[nPlayerIdx].m_ItemList.m_Items[i].nIdx;
    int nPlace = Player[nPlayerIdx].m_ItemList.m_Items[i].nPlace;
    int nX = Player[nPlayerIdx].m_ItemList.m_Items[i].nX;
    int nY = Player[nPlayerIdx].m_ItemList.m_Items[i].nY;

    if (nIdx > 0 && nIdx < MAX_ITEM && nPlace == pos_equiproom &&
        Item[nIdx].m_nPriceShop > 0) {

      ITEM_BUY_SHOP_SYNC sItem;
      sItem.ProtocolType = s2c_syncitembuyshop;
      sItem.m_ID = Item[nIdx].GetID();
      sItem.m_Genre = Item[nIdx].GetGenre();
      sItem.m_Detail = Item[nIdx].GetDetailType();
      sItem.m_Particur = Item[nIdx].GetParticular();
      sItem.m_Series = Item[nIdx].GetSeries();
      sItem.m_Level = Item[nIdx].GetLevel();
      sItem.m_Luck = Item[nIdx].m_GeneratorParam.nLuck;
      sItem.m_btPlace = pos_buyshop;
      sItem.m_btX = nX;
      sItem.m_btY = nY;
      sItem.m_nPriceShop = Item[nIdx].m_nPriceShop;

      for (int j = 0; j < 6; j++)
        sItem.m_MagicLevel[j] = Item[nIdx].m_GeneratorParam.nGeneratorLevel[j];

      sItem.m_RandomSeed = Item[nIdx].m_GeneratorParam.uRandomSeed;
      sItem.m_Version = Item[nIdx].m_GeneratorParam.nVersion;
      sItem.m_Durability = Item[nIdx].GetDurability();
      sItem.iNgoaiTrang = Item[nIdx].GetNgoaiTrang();

      g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sItem,
                                  sizeof(ITEM_BUY_SHOP_SYNC));

      nsl++;

      if (nsl >= 60)
        break;
    }
  }
}

void KPlayer::CloseBuyShop(BYTE *pProtocol) {
  PLAYER_CLOSE_BUY_SHOP *pCommand = (PLAYER_CLOSE_BUY_SHOP *)pProtocol;

  m_dwTimeBuyShop = 0;
  m_nPlayerBuyShop = 0;
}

void KPlayer::ShopOpen(BYTE *pProtocol) {
  PLAYER_SHOP_OPEN_COMMAND *pCommand = (PLAYER_SHOP_OPEN_COMMAND *)pProtocol;

  if (m_bBlock) {
    KPlayerChat::SendSystemInfo(
        1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
        "Ch�a m� kh�a r��ng, kh�ng th� b�y b�n !",
        strlen("Ch�a m� kh�a r��ng, kh�ng th� b�y b�n !"));
    return;
  }

  /*
  if (Npc[m_nIndex].m_Level < 100)
  {
          KPlayerChat::SendSystemInfo(1,m_nPlayerIndex,
  MESSAGE_SYSTEM_ANNOUCE_HEAD, "��ng c�p nh� h�n 100, kh�ng th� b�y b�n !",
  strlen("��ng c�p nh� h�n 100, kh�ng th� b�y b�n !") ); return;
  }
*/

  if (Npc[m_nIndex].m_SubWorldIndex == g_SubWorldSet.SearchWorld(43))
    return;

  if (m_dwTimeOpenShop) {
    m_dwTimeOpenShop = 0;
    Npc[m_nIndex].BroadCastShop();
    Npc[m_nIndex].SendCommand(do_stand);
  } else {

    if (!m_szNameOpenShop[0]) {

      m_dwTimeOpenShop = 0;
      Npc[m_nIndex].SendCommand(do_stand);

      PLAYER_SHOP_OPEN_RETURN_COMMAND IDC;
      IDC.ProtocolType = s2c_playershopopenreturn;
      IDC.m_dwTime = m_dwTimeOpenShop;
      memcpy(IDC.szName, m_szNameOpenShop, sizeof(IDC.szName));

      if (g_pServer)
        g_pServer->PackDataToClient(m_nNetConnectIdx, &IDC,
                                    sizeof(PLAYER_SHOP_OPEN_RETURN_COMMAND));

      KPlayerChat::SendSystemInfo(
          1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
          "Ch�a ��t t�n c�a hi�u, kh�ng th� m�!",
          strlen("Ch�a ��t t�n c�a hi�u, kh�ng th� m�!"));
      return;
    }

    if (Npc[m_nIndex].m_FightMode) {

      m_dwTimeOpenShop = 0;
      Npc[m_nIndex].SendCommand(do_stand);

      PLAYER_SHOP_OPEN_RETURN_COMMAND IDC;
      IDC.ProtocolType = s2c_playershopopenreturn;
      IDC.m_dwTime = m_dwTimeOpenShop;
      memcpy(IDC.szName, m_szNameOpenShop, sizeof(IDC.szName));

      if (g_pServer)
        g_pServer->PackDataToClient(m_nNetConnectIdx, &IDC,
                                    sizeof(PLAYER_SHOP_OPEN_RETURN_COMMAND));
      KPlayerChat::SendSystemInfo(
          1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
          "Ch� c� th� m� c�a hi�u khi � trong th�nh th�",
          strlen("Ch� c� th� m� c�a hi�u khi � trong th�nh th�"));
      return;
    }

    if (Npc[m_nIndex].m_SubWorldIndex < 0 ||
        (SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID != 53 &&
         SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID != 9 &&
         SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID != 15 &&
         SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID != 17
         // SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID != 3 &&
         // SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID != 60 &&

         ))

    // if (Npc[m_nIndex].m_SubWorldIndex < 0 ||
    // SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID != 9)
    {

      m_dwTimeOpenShop = 0;
      Npc[m_nIndex].SendCommand(do_stand);

      PLAYER_SHOP_OPEN_RETURN_COMMAND IDC;
      IDC.ProtocolType = s2c_playershopopenreturn;
      IDC.m_dwTime = m_dwTimeOpenShop;
      memcpy(IDC.szName, m_szNameOpenShop, sizeof(IDC.szName));

      if (g_pServer)
        g_pServer->PackDataToClient(m_nNetConnectIdx, &IDC,
                                    sizeof(PLAYER_SHOP_OPEN_RETURN_COMMAND));
      KPlayerChat::SendSystemInfo(
          1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
          "Kh�ng th� b�y b�n t�i ��y. Ch� ���c b�y b�n � Ba L�ng Huy�n !",
          strlen(
              "Kh�ng th� b�y b�n t�i ��y. Ch� ���c b�y b�n � Ba L�ng Huy�n !"));
      return;
    }

    if (Npc[m_nIndex].m_bRideHorse) {

      m_dwTimeOpenShop = 0;
      Npc[m_nIndex].SendCommand(do_stand);

      PLAYER_SHOP_OPEN_RETURN_COMMAND IDC;
      IDC.ProtocolType = s2c_playershopopenreturn;
      IDC.m_dwTime = m_dwTimeOpenShop;
      memcpy(IDC.szName, m_szNameOpenShop, sizeof(IDC.szName));

      if (g_pServer)
        g_pServer->PackDataToClient(m_nNetConnectIdx, &IDC,
                                    sizeof(PLAYER_SHOP_OPEN_RETURN_COMMAND));
      KPlayerChat::SendSystemInfo(
          1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
          "Kh�ng th� m� c�a hi�u khi c��i ng�a !",
          strlen("Kh�ng th� m� c�a hi�u khi c��i ng�a !"));
      return;
    }

    Npc[m_nIndex].SendCommand(do_sit);

    m_dwTimeOpenShop = g_SubWorldSet.GetGameTime();
    Npc[m_nIndex].BroadCastShop();
  }

  PLAYER_SHOP_OPEN_RETURN_COMMAND IDC;
  IDC.ProtocolType = s2c_playershopopenreturn;
  IDC.m_dwTime = m_dwTimeOpenShop;
  memcpy(IDC.szName, m_szNameOpenShop, sizeof(IDC.szName));

  if (g_pServer)
    g_pServer->PackDataToClient(m_nNetConnectIdx, &IDC,
                                sizeof(PLAYER_SHOP_OPEN_RETURN_COMMAND));
}

void KPlayer::LoginPWStoreBox(BYTE *pProtocol) {
  PLAYER_LOGIN_PW_STORE_BOX *pCommand = (PLAYER_LOGIN_PW_STORE_BOX *)pProtocol;

  if (m_nIndex <= 0 || m_nIndex >= MAX_NPC) {
    printf(
        "Xay ra loi ID NPC Login PW Store Box [%s] [%s]. Tu dong xua loi !\n",
        this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (!m_cTask.GetSaveVal(152)) {
    printf("Xay ra loi Task Login PW Store Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (!m_bBlock) {
    // printf("Xay ra loi mo khong khoa Login PW Store Box [%s] [%s]. Tu dong
    // xua loi !\n",this->m_PlayerName,this->m_AccoutName);
    return;
  }

  if (strlen(pCommand->m_szString) > 31) {
    printf("Xay ra loi Len Login PW Store Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  char szString[32];

  memcpy(szString, pCommand->m_szString, sizeof(szString));

  if (!szString[0]) {
    printf("Xay ra loi Text Login PW Store Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  // printf("Nhap pw [%s]\n",szString);

  ExecuteScript("\\script\\cacsukien\\help\\ruongchuado.lua", "loginbox",
                szString);
}

void KPlayer::UnBlockStoreBox(BYTE *pProtocol) {

  PLAYER_LOGIN_PW_STORE_BOX *pCommand = (PLAYER_LOGIN_PW_STORE_BOX *)pProtocol;

  if (m_nIndex <= 0 || m_nIndex >= MAX_NPC) {
    printf(
        "Xay ra loi ID NPC Login PW Store Box [%s] [%s]. Tu dong xua loi !\n",
        this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (!m_cTask.GetSaveVal(152)) {
    printf("Xay ra loi Task Login PW Store Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (!m_bBlock) {
    //	printf("Xay ra loi mo khong khoa Login PW Store Box [%s] [%s]. Tu dong
    // xua loi !\n",this->m_PlayerName,this->m_AccoutName);
    return;
  }

  if (strlen(pCommand->m_szString) > 31) {
    printf("Xay ra loi Len Login PW Store Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  char szString[32];

  memcpy(szString, pCommand->m_szString, sizeof(szString));

  if (!szString[0]) {
    printf("Xay ra loi Text Login PW Store Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  // printf("Nhap pw [%s]\n",szString);

  ExecuteScript("\\script\\cacsukien\\help\\ruongchuado.lua", "loginbox",
                szString);
}

void KPlayer::BlockStoreBox(BYTE *pProtocol) {
  PLAYER_BLOCK_STORE_BOX *pCommand = (PLAYER_BLOCK_STORE_BOX *)pProtocol;

  if (m_nIndex <= 0 || m_nIndex >= MAX_NPC) {
    printf("Xay ra loi ID NPC Block Store Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (!m_cTask.GetSaveVal(152)) {
    KPlayerChat::SendSystemInfo(
        1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
        "H�y ��n g�p th� kho �� m� r��ng ch�a �� !",
        strlen("H�y ��n g�p th� kho �� m� r��ng ch�a �� !"));
    return;
  }

  if (m_bBlock) {
    printf("Xay ra loi doi khoa Block Store Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  // printf("block box\n");

  ExecuteScript("\\script\\cacsukien\\help\\ruongchuado.lua", "blockbox");
}

void KPlayer::NewPWStoreBox(BYTE *pProtocol) {
  PLAYER_NEW_PW_STORE_BOX *pCommand = (PLAYER_NEW_PW_STORE_BOX *)pProtocol;

  if (m_nIndex <= 0 || m_nIndex >= MAX_NPC) {
    printf("Xay ra loi ID NPC New PW Store Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (m_cTask.GetSaveVal(152)) {
    printf("Xay ra loi Task New PW Store Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (m_bBlock) {
    printf(
        "Xay ra loi doi khoa New PW Store Box [%s] [%s]. Tu dong xua loi !\n",
        this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (strlen(pCommand->m_szString) > 31) {
    printf("Xay ra loi Len New PW Store Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  char szString[32];

  memcpy(szString, pCommand->m_szString, sizeof(szString));

  if (!szString[0]) {
    printf("Xay ra loi Text New PW Store Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  // printf("Lap pw [%s]\n",szString);

  ExecuteScript("\\script\\cacsukien\\help\\ruongchuado.lua", "newbox",
                szString);
}

void KPlayer::PWStoreBox(BYTE *pProtocol) {
  PLAYER_PW_STORE_BOX *pCommand = (PLAYER_PW_STORE_BOX *)pProtocol;

  if (m_nIndex <= 0 || m_nIndex >= MAX_NPC) {
    printf("Xay ra loi ID NPC PW Store Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (!m_cTask.GetSaveVal(152)) {
    printf("Xay ra loi Task PW Store Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (m_bBlock) {
    printf("Xay ra loi doi khoa PW Store Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (strlen(pCommand->m_szString) > 31 ||
      strlen(pCommand->m_szStringNew) > 31) {
    printf("Xay ra loi Len PW Store Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  char szString[32];
  char szStringNew[32];

  memcpy(szString, pCommand->m_szString, sizeof(szString));
  memcpy(szStringNew, pCommand->m_szStringNew, sizeof(szStringNew));

  if (!szString[0] || !szStringNew[0]) {
    printf("Xay ra loi Text PW Store Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  // printf("Doi pw [%s] [%s]\n",szString,szStringNew);

  ExecuteScriptNew("\\script\\cacsukien\\help\\ruongchuado.lua", "changebox",
                   szString, szStringNew);
}

void KPlayer::StringBox(BYTE *pProtocol) {
  PLAYER_STRING_BOX *pCommand = (PLAYER_STRING_BOX *)pProtocol;

  if (m_nIndex <= 0 || m_nIndex >= MAX_NPC) {
    printf("Xay ra loi ID NPC String Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (!m_dwScriptStringBoxID) {
    printf("Xay ra loi ID Spcrit String Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (!m_szFunStringBox[0]) {
    printf("Xay ra loi Func Spcrit String Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (strlen(pCommand->m_szString) > 31) {
    printf("Xay ra loi Len String Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  char szString[32];

  memcpy(szString, pCommand->m_szString, sizeof(szString));

  if (!szString[0]) {
    printf("Xay ra loi Text String Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  ExecuteScript(m_dwScriptStringBoxID, m_szFunStringBox, szString);

  m_dwScriptStringBoxID = 0;
  m_szFunStringBox[0] = 0;
}

void KPlayer::ShopName(BYTE *pProtocol) {
  PLAYER_SHOP_NAME *pCommand = (PLAYER_SHOP_NAME *)pProtocol;

  if (m_nIndex <= 0 || m_nIndex >= MAX_NPC) {
    printf("Xay ra loi ID NPC Shop Name [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (strlen(pCommand->m_szString) > 31) {
    printf("Xay ra loi Len Shop Name [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  memcpy(m_szNameOpenShop, pCommand->m_szString, sizeof(m_szNameOpenShop));
}

void KPlayer::CheckItemBox(BYTE *pProtocol) {
  PLAYER_CHECK_ITEM_BOX *pCommand = (PLAYER_CHECK_ITEM_BOX *)pProtocol;

  if (m_nIndex <= 0 || m_nIndex >= MAX_NPC) {
    printf("Xay ra loi ID NPC Check Item Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (!m_dwScriptCheckItemBoxID) {
    printf("Xay ra loi ID Spcrit Check Item Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (!m_szFunCheckItemBox[0]) {
    printf(
        "Xay ra loi Func Spcrit Check Item Box [%s] [%s]. Tu dong xua loi !\n",
        this->m_PlayerName, this->m_AccoutName);
    return;
  }

  ExecuteScript(m_dwScriptCheckItemBoxID, m_szFunCheckItemBox, 0);

  m_dwScriptCheckItemBoxID = 0;
  m_szFunCheckItemBox[0] = 0;
}

void KPlayer::ButtonPGBox(BYTE *pProtocol) {
  PLAYER_SLECT_CHECK_BOX *pCommand = (PLAYER_SLECT_CHECK_BOX *)pProtocol;

  if (m_nIndex <= 0 || m_nIndex >= MAX_NPC) {
    printf("Xay ra loi ID NPC PG Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  int nSlect = pCommand->m_nSlect;

  if (nSlect < 1 || nSlect > 4) {
    printf("Xay ra loi Spcrit nSlect PG Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  ExecuteScript("\\script\\admin\\pgbox.lua", "main", nSlect);
}

void KPlayer::SlectCheckBox(BYTE *pProtocol) {
  PLAYER_SLECT_CHECK_BOX *pCommand = (PLAYER_SLECT_CHECK_BOX *)pProtocol;

  if (m_nIndex <= 0 || m_nIndex >= MAX_NPC) {
    printf("Xay ra loi ID NPC Slect Check Box [%s] [%s]. Tu dong xua loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (!m_dwScriptSlectCheckBoxID) {
    printf(
        "Xay ra loi ID Spcrit Slect Check Box [%s] [%s]. Tu dong xua loi !\n",
        this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (!m_szFunSlectCheckBox[0]) {
    printf(
        "Xay ra loi Func Spcrit Slect Check Box [%s] [%s]. Tu dong xua loi !\n",
        this->m_PlayerName, this->m_AccoutName);
    return;
  }

  if (!m_btSlectCheckBox[0] || !m_btSlectCheckBox[1] || !m_btSlectCheckBox[2]) {
    printf(
        "Xay ra loi Spcrit nID Slect Check Box [%s] [%s]. Tu dong xua loi !\n",
        this->m_PlayerName, this->m_AccoutName);
    return;
  }

  int nSlect = pCommand->m_nSlect;

  if (nSlect < 1 || nSlect > 3) {
    printf("Xay ra loi Spcrit nSlect Slect Check Box [%s] [%s]. Tu dong xua "
           "loi !\n",
           this->m_PlayerName, this->m_AccoutName);
    return;
  }

  ExecuteScript(m_dwScriptSlectCheckBoxID, m_szFunSlectCheckBox,
                m_btSlectCheckBox[nSlect - 1]);

  m_dwScriptSlectCheckBoxID = 0;
  m_szFunSlectCheckBox[0] = 0;

  m_btSlectCheckBox[0] = 0;
  m_btSlectCheckBox[1] = 0;
  m_btSlectCheckBox[2] = 0;
}

void KPlayer::StaskItem(BYTE *pProtocol) // so luong xep chong
{
  PLAYER_STASK_ITEM_COMMAND *pCommand = (PLAYER_STASK_ITEM_COMMAND *)pProtocol;
  int ItemIdx = m_ItemList.SearchID(pCommand->m_ID);

  if (ItemIdx <= 0 || ItemIdx >= MAX_ITEM)
    return;
  int nNumber = pCommand->m_Number;

  if (!Item[ItemIdx].IsStack() || Item[ItemIdx].GetGenre() != item_task ||
      nNumber >= Item[ItemIdx].GetVersion() || nNumber < 1)
    return;

  if (Item[ItemIdx].GetVersion() > 200 || Item[ItemIdx].GetVersion() < 1)
    return;

  if (!m_ItemList.FindSame(ItemIdx))
    return;

  if (m_ItemList.m_Items[m_ItemList.FindSame(ItemIdx)].nPlace !=
          pos_equiproom &&
      m_ItemList.m_Items[m_ItemList.FindSame(ItemIdx)].nPlace !=
          pos_repositoryroom &&
      m_ItemList.m_Items[m_ItemList.FindSame(ItemIdx)].nPlace != pos_rpnew)
    return;

  if (!m_ItemList.CheckItemInAll(ItemIdx)) {
    printf("Hack StaskItem [%s] [%s]\n", m_AccoutName, m_PlayerName);
    return;
  }

  int nIdx = m_ItemList.Hand();

  if (nIdx != 0)
    return;

  int nIndex = ItemSet.Add(item_task, 0, 0, 0, Item[ItemIdx].GetDetailType(), 0,
                           0, nNumber, 0);

  if (nIndex <= 0)
    return;

  Item[ItemIdx].SetVersion(Item[ItemIdx].GetVersion() - nNumber);

  m_ItemList.Add(nIndex, pos_hand, 0, 0);

  PLAYER_ITEM_UPDATE_VERSION IDC;
  IDC.ProtocolType = s2c_playerupdateitemvertion;
  IDC.m_ID = Item[ItemIdx].m_dwID;
  IDC.m_Vesion = Item[ItemIdx].GetVersion();

  if (g_pServer)
    g_pServer->PackDataToClient(m_nNetConnectIdx, &IDC,
                                sizeof(PLAYER_ITEM_UPDATE_VERSION));
}

void KPlayer::BlockItem(BYTE *pProtocol) {
  PLAYER_BLOCK_ITEM_COMMAND *pCommand = (PLAYER_BLOCK_ITEM_COMMAND *)pProtocol;
  int ItemIdx = m_ItemList.SearchID(pCommand->m_ID);
  if (ItemIdx <= 0 || ItemIdx >= MAX_ITEM)
    return;

  if (Item[ItemIdx].GetGenre() != item_equip) {
    printf("Loi Block Item [%s] [%s] !\n", m_AccoutName, m_PlayerName);
    return;
  }

  int DayMonth[12] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

  SYSTEMTIME TimeNow;
  GetLocalTime(&TimeNow);

  int TimeNowMinute = 0;

  for (int t = 0; t < (int)TimeNow.wMonth - 1; t++) {
    TimeNowMinute += DayMonth[t] * 24 * 60;
  }

  TimeNowMinute += TimeNow.wDay * 24 * 60 + TimeNow.wHour * 60 +
                   TimeNow.wMinute + 2 * 24 * 60;

  if (Item[ItemIdx].m_GeneratorParam.nVersion != 2) {

    if (Item[ItemIdx].m_nPriceShop) {
      Item[ItemIdx].m_nPriceShop = 0;
      PLAYER_UPDATE_SHOP_PRICE_COMMAND IDC;
      IDC.ProtocolType = s2c_playerupdateshopprice;
      IDC.m_ID = Item[ItemIdx].m_dwID;
      IDC.m_Price = Item[ItemIdx].m_nPriceShop;
      if (g_pServer)
        g_pServer->PackDataToClient(m_nNetConnectIdx, &IDC,
                                    sizeof(PLAYER_UPDATE_SHOP_PRICE_COMMAND));
    }

    if (Item[ItemIdx].m_GeneratorParam.nVersion == 550324) {
      PLAYER_UNBLOCK_ITEM_RETURN_COMMAND IDC;
      IDC.ProtocolType = s2c_playerunblockitemreturn;
      IDC.m_ID = Item[ItemIdx].m_dwID;
      IDC.m_Vesion = Item[ItemIdx].m_GeneratorParam.nVersion;
      if (g_pServer)
        g_pServer->PackDataToClient(m_nNetConnectIdx, &IDC,
                                    sizeof(PLAYER_UNBLOCK_ITEM_RETURN_COMMAND));
    } else {
      Item[ItemIdx].m_GeneratorParam.nVersion = 2;
      PLAYER_BLOCK_ITEM_RETURN_COMMAND IDC;
      IDC.ProtocolType = s2c_playerblockitemreturn;
      IDC.m_ID = Item[ItemIdx].m_dwID;
      IDC.m_Vesion = Item[ItemIdx].m_GeneratorParam.nVersion;
      if (g_pServer)
        g_pServer->PackDataToClient(m_nNetConnectIdx, &IDC,
                                    sizeof(PLAYER_BLOCK_ITEM_RETURN_COMMAND));
    }
  }
}

void KPlayer::UnBlockItem(BYTE *pProtocol) {
  PLAYER_UNBLOCK_ITEM_COMMAND *pCommand =
      (PLAYER_UNBLOCK_ITEM_COMMAND *)pProtocol;
  m_ItemList.SearchID(pCommand->m_ID);
  int ItemIdx = m_ItemList.SearchID(pCommand->m_ID);
  if (ItemIdx <= 0 || ItemIdx >= MAX_ITEM)
    return;

  if (Item[ItemIdx].GetGenre() != item_equip) {
    printf("Loi UnBlock Item [%s] [%s] !\n", m_AccoutName, m_PlayerName);
    return;
  }

  if (Item[ItemIdx].m_GeneratorParam.nVersion == 2) {

    int DayMonth[12] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

    SYSTEMTIME TimeNow;
    GetLocalTime(&TimeNow);

    int TimeNowMinute = 0;

    for (int t = 0; t < (int)TimeNow.wMonth - 1; t++) {
      TimeNowMinute += DayMonth[t] * 24 * 60;
    }

    TimeNowMinute += TimeNow.wDay * 24 * 60 + TimeNow.wHour * 60 +
                     TimeNow.wMinute + 2 * 24 * 60;

    Item[ItemIdx].m_GeneratorParam.nVersion = 3 + TimeNowMinute;

    PLAYER_UNBLOCK_ITEM_RETURN_COMMAND IDC;
    IDC.ProtocolType = s2c_playerunblockitemreturn;
    IDC.m_ID = Item[ItemIdx].m_dwID;
    IDC.m_Vesion = Item[ItemIdx].m_GeneratorParam.nVersion;
    if (g_pServer)
      g_pServer->PackDataToClient(m_nNetConnectIdx, &IDC,
                                  sizeof(PLAYER_UNBLOCK_ITEM_RETURN_COMMAND));
  }
}

#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ���ȡ���������λ��
//-------------------------------------------------------------------------
void KPlayer::GetLoginRevivalPos(int *lpnSubWorld, int *lpnMpsX, int *lpnMpsY) {
  *lpnSubWorld = m_sLoginRevivalPos.m_nSubWorldID;
  *lpnMpsX = m_sLoginRevivalPos.m_nMpsX;
  *lpnMpsY = m_sLoginRevivalPos.m_nMpsY;
}

void KPlayer::GetDeathRevivalPos(int *lpnSubWorld, int *lpnMpsX, int *lpnMpsY) {
  *lpnSubWorld = m_sDeathRevivalPos.m_nSubWorldID;
  *lpnMpsX = m_sDeathRevivalPos.m_nMpsX;
  *lpnMpsY = m_sDeathRevivalPos.m_nMpsY;
}
#endif
#ifdef _SERVER
void KPlayer::SetTimer(DWORD nTime,
                       int nTimerTaskId) // ʱ������ű���������ʱ��
{
  if (!nTime || !nTimerTaskId)
    return;
  m_TimerTask.SetTimer(nTime, nTimerTaskId);
}

void KPlayer::CloseTimer() // �ر�ʱ���ʱ��
{
  m_TimerTask.CloseTimer();
}
#endif

#ifdef _SERVER
//------------------------------------------------------------------------------
//	���ܣ��趨���������λ��
//------------------------------------------------------------------------------
void KPlayer::SetRevivalPos(int nSubWorld, int nReviveId) {
  if (nSubWorld >= 0) // ���С��0����ʾ���õ�ǰ��
  {
    // printf("test 4 \n");
    m_sLoginRevivalPos.m_nSubWorldID = nSubWorld;
  } else {
    m_sLoginRevivalPos.m_nSubWorldID =
        SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID;
  }

  POINT Pos;

  g_SubWorldSet.GetRevivalPosFromId(m_sLoginRevivalPos.m_nSubWorldID, nReviveId,
                                    &Pos);
  m_sLoginRevivalPos.m_ReviveID = nReviveId;
  m_sLoginRevivalPos.m_nMpsX = Pos.x;
  m_sLoginRevivalPos.m_nMpsY = Pos.y;
  m_sDeathRevivalPos = m_sLoginRevivalPos;
}
#endif

#ifdef _SERVER
//------------------------------------------------------------------------------
//	���ܣ��յ��ͻ��˲�ѯĳ��npc�����Ϣ�������������ͻ��˷��Ͷ�����Ϣ
//------------------------------------------------------------------------------
void KPlayer::S2CSendTeamInfo(BYTE *pProtocol) {
  PLAYER_APPLY_TEAM_INFO *pApplyTeamInfo = (PLAYER_APPLY_TEAM_INFO *)pProtocol;

  //------------------------------ ��ѯ���������Ϣ
  //-----------------------------
  if (pApplyTeamInfo->m_dwTarNpcID == Npc[m_nIndex].m_dwID) {
    SendSelfTeamInfo();
    return;
  }

  //--------------------------- ��ѯ���� npc �����Ϣ
  //-----------------------------
  PLAYER_SEND_TEAM_INFO sTeamInfo;
  PLAYER_APPLY_TEAM_INFO_FALSE sTeamInfoFalse;

  if (Npc[m_nIndex].m_SubWorldIndex >= MAX_SUBWORLD ||
      Npc[m_nIndex].m_SubWorldIndex < 0 ||
      Npc[m_nIndex].m_RegionIndex >=
          SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_nTotalRegion ||
      Npc[m_nIndex].m_RegionIndex < 0) {
    Npc[m_nIndex].m_SubWorldIndex = 0;
    Npc[m_nIndex].m_RegionIndex = 381;
    Npc[m_nIndex].m_MapX = 0;
    Npc[m_nIndex].m_MapY = 0;
    Npc[m_nIndex].m_OffX = 0;
    Npc[m_nIndex].m_OffY = 0;
    printf("Xay ra loi tim kiem nguoi choi, tu dong xua loi !\n");
  }

  // Ѱ����Ӧ npc id �� player ���
  int nPlayer, nRegionNo, i;
  nPlayer = SubWorld[Npc[m_nIndex].m_SubWorldIndex]
                .m_Region[Npc[m_nIndex].m_RegionIndex]
                .FindPlayer(pApplyTeamInfo->m_dwTarNpcID);
  if (nPlayer >= 0)
    goto SendMsg;
  for (i = 0; i < 8; i++) {
    nRegionNo = SubWorld[Npc[m_nIndex].m_SubWorldIndex]
                    .m_Region[Npc[m_nIndex].m_RegionIndex]
                    .m_nConnectRegion[i];
    if (nRegionNo < 0)
      continue;
    nPlayer =
        SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_Region[nRegionNo].FindPlayer(
            pApplyTeamInfo->m_dwTarNpcID);
    if (nPlayer >= 0)
      break;
  }
  if (i >= 8)
    goto SendFalse;

SendMsg:
  // Ѱ�Ҷ���
  KTeam *pTeam;
  if (!Player[nPlayer].m_cTeam.m_nFlag)
    goto SendFalse;
  pTeam = &g_Team[Player[nPlayer].m_cTeam.m_nID];
  if (pTeam->m_nCaptain < 0 || !pTeam->IsOpen())
    goto SendFalse;

  // ���Ͷ�����Ϣ
  sTeamInfo.ProtocolType = (BYTE)s2c_teaminfo;
  sTeamInfo.m_nCaptain = Npc[Player[pTeam->m_nCaptain].m_nIndex].m_dwID;
  for (i = 0; i < MAX_TEAM_MEMBER; i++) {
    if (pTeam->m_nMember[i] < 0)
      sTeamInfo.m_nMember[i] = 0;
    else
      sTeamInfo.m_nMember[i] = Npc[Player[pTeam->m_nMember[i]].m_nIndex].m_dwID;
  }
  //	strcpy(sTeamInfo.m_szTeamName, pTeam->m_szName);

  // ����
  g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sTeamInfo,
                              sizeof(PLAYER_SEND_TEAM_INFO));
  return;

  // ����ʧ��֪ͨ
SendFalse:
  sTeamInfoFalse.ProtocolType = s2c_teamapplyinfofalse;
  g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sTeamInfoFalse,
                              sizeof(PLAYER_APPLY_TEAM_INFO_FALSE));
  return;
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ���������ͻ��˷��Ͷ�����Ϣ
//-------------------------------------------------------------------------
void KPlayer::SendSelfTeamInfo() {
  if (m_cTeam.m_nFlag && m_cTeam.m_nID >= 0) // ���Ͷ�����Ϣ
  {
    int nNpcIndex;
    PLAYER_SEND_SELF_TEAM_INFO sSelfInfo;
    sSelfInfo.ProtocolType = s2c_teamselfinfo;
    sSelfInfo.nTeamServerID = m_cTeam.m_nID;
    sSelfInfo.m_dwLeadExp = m_dwLeadExp;
    sSelfInfo.m_btState = g_Team[m_cTeam.m_nID].m_nState;

    // �ӳ�
    nNpcIndex = Player[g_Team[m_cTeam.m_nID].m_nCaptain].m_nIndex;
    sSelfInfo.m_dwNpcID[0] = Npc[nNpcIndex].m_dwID;
    sSelfInfo.m_btLevel[0] = (DWORD)Npc[nNpcIndex].m_Level;
    strcpy(sSelfInfo.m_szNpcName[0], Npc[nNpcIndex].Name);
    // ��Ա
    for (int i = 0; i < MAX_TEAM_MEMBER; i++) {
      if (g_Team[m_cTeam.m_nID].m_nMember[i] >= 0) {
        nNpcIndex = Player[g_Team[m_cTeam.m_nID].m_nMember[i]].m_nIndex;
        sSelfInfo.m_dwNpcID[i + 1] = Npc[nNpcIndex].m_dwID;
        sSelfInfo.m_btLevel[i + 1] = (DWORD)Npc[nNpcIndex].m_Level;
        strcpy(sSelfInfo.m_szNpcName[i + 1], Npc[nNpcIndex].Name);
      } else {
        sSelfInfo.m_dwNpcID[i + 1] = 0;
        sSelfInfo.m_btLevel[i + 1] = 0;
      }
    }
    // ������Ϣ
    g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sSelfInfo,
                                sizeof(PLAYER_SEND_SELF_TEAM_INFO));
  } else // ���������Ϣ
  {
    PLAYER_LEAVE_TEAM sLeaveTeam;
    sLeaveTeam.ProtocolType = s2c_teamleave;
    sLeaveTeam.m_dwNpcID = Npc[m_nIndex].m_dwID;
    g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sLeaveTeam,
                                sizeof(PLAYER_LEAVE_TEAM));
  }
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ������󴴽�һ֧����
//-------------------------------------------------------------------------
BOOL KPlayer::CreateTeam(BYTE *pProtocol) {
  if (this->CheckTrading())
    return FALSE;

  return m_cTeam.CreateTeam(this->m_nPlayerIndex,
                            (PLAYER_APPLY_CREATE_TEAM *)pProtocol);
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ������󿪷š��رձ�player�����Ƿ������Ա����״̬
//-------------------------------------------------------------------------
BOOL KPlayer::SetTeamState(BYTE *pProtocol) {
  if (this->CheckTrading())
    return FALSE;
  PLAYER_TEAM_CHANGE_STATE *pTeamState = (PLAYER_TEAM_CHANGE_STATE *)pProtocol;
  switch (pTeamState->m_btState) {
  case Team_S_OpenClose: {
    if (!m_cTeam.m_nFlag || m_cTeam.m_nFigure != TEAM_CAPTAIN ||
        m_cTeam.m_nID < 0) {
      SendSelfTeamInfo();
      return FALSE;
    }

    if (pTeamState->m_btFlag == 0) {
      g_Team[m_cTeam.m_nID].SetTeamClose(true);

    } else {
      if (m_cMenuState.m_nState == PLAYER_MENU_STATE_TRADEOPEN)
        m_cMenuState.SetState(m_nPlayerIndex, PLAYER_MENU_STATE_NORMAL);

      g_Team[m_cTeam.m_nID].SetTeamOpen(true);
    }
  } break;
  case Team_S_PKFollowCaptain:
    if (!m_cTeam.m_nFlag || m_cTeam.m_nFigure == TEAM_CAPTAIN ||
        m_cTeam.m_nID < 0) {
      SendSelfTeamInfo();
      return FALSE;
    }

    m_cTeam.SetPKFollowCaptain(this->m_nPlayerIndex, pTeamState->m_btFlag);
    break;
  case Team_S_ModePick: {
    if (!m_cTeam.m_nFlag || m_cTeam.m_nFigure != TEAM_CAPTAIN ||
        m_cTeam.m_nID < 0) {
      SendSelfTeamInfo();
      return FALSE;
    }
    g_Team[m_cTeam.m_nID].SetModePick((int)pTeamState->m_btFlag);
  } break;
  }
  return TRUE;
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ����������һ֧����
//-------------------------------------------------------------------------
BOOL KPlayer::S2CSendAddTeamInfo(BYTE *pProtocol) {
  if (!m_cTeam.m_bCreatTeamFlag) {
    SHOW_MSG_SYNC sMsg;
    sMsg.ProtocolType = s2c_msgshow;
    sMsg.m_wMsgID = enumMSG_ID_CANNOT_ADD_TEAM;
    sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1 - sizeof(LPVOID);
    g_pServer->PackDataToClient(m_nNetConnectIdx, &sMsg, sMsg.m_wLength + 1);
    return FALSE;
  }

  PLAYER_APPLY_ADD_TEAM *pAddTeam = (PLAYER_APPLY_ADD_TEAM *)pProtocol;

  if (Npc[m_nIndex].m_SubWorldIndex >= MAX_SUBWORLD ||
      Npc[m_nIndex].m_SubWorldIndex < 0 ||
      Npc[m_nIndex].m_RegionIndex >=
          SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_nTotalRegion ||
      Npc[m_nIndex].m_RegionIndex < 0) {
    Npc[m_nIndex].m_SubWorldIndex = 0;
    Npc[m_nIndex].m_RegionIndex = 381;
    Npc[m_nIndex].m_MapX = 0;
    Npc[m_nIndex].m_MapY = 0;
    Npc[m_nIndex].m_OffX = 0;
    Npc[m_nIndex].m_OffY = 0;
    printf("Xay ra loi tim kiem nguoi choi, tu dong xua loi !\n");
  }

  // Ѱ�Ҷӳ� npc id �� player ���
  int nPlayer, nRegionNo, i;
  nPlayer = SubWorld[Npc[m_nIndex].m_SubWorldIndex]
                .m_Region[Npc[m_nIndex].m_RegionIndex]
                .FindPlayer(pAddTeam->m_dwTarNpcID);
  if (nPlayer >= 0)
    goto SendMsg;
  for (i = 0; i < 8; i++) {
    nRegionNo = SubWorld[Npc[m_nIndex].m_SubWorldIndex]
                    .m_Region[Npc[m_nIndex].m_RegionIndex]
                    .m_nConnectRegion[i];
    if (nRegionNo < 0)
      continue;
    nPlayer =
        SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_Region[nRegionNo].FindPlayer(
            pAddTeam->m_dwTarNpcID);
    if (nPlayer >= 0)
      break;
  }
  if (i >= 8)
    return FALSE;

SendMsg:
  if (Npc[Player[nPlayer].m_nIndex].m_Camp == camp_begin &&
      Npc[m_nIndex].m_Camp != camp_begin)
    return FALSE;
  if (g_Team[Player[nPlayer].m_cTeam.m_nID].m_nMemNum >= MAX_TEAM_MEMBER ||
      g_Team[Player[nPlayer].m_cTeam.m_nID].m_nMemNum >=
          g_Team[Player[nPlayer].m_cTeam.m_nID].CalcCaptainPower()) {
    SHOW_MSG_SYNC sMsg;
    sMsg.ProtocolType = s2c_msgshow;
    sMsg.m_wMsgID = enumMSG_ID_TEAM_IS_FULL;
    sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1 - sizeof(LPVOID);
    g_pServer->PackDataToClient(m_nNetConnectIdx, &sMsg, sMsg.m_wLength + 1);
    return FALSE;
  }
  m_cTeam.m_nApplyCaptainID = pAddTeam->m_dwTarNpcID;
  PLAYER_APPLY_ADD_TEAM sAddTeam;
  sAddTeam.ProtocolType = s2c_teamgetapply;
  sAddTeam.m_dwTarNpcID = Npc[m_nIndex].m_dwID;
  g_pServer->PackDataToClient(Player[nPlayer].m_nNetConnectIdx,
                              (BYTE *)&sAddTeam, sizeof(PLAYER_APPLY_ADD_TEAM));
  return TRUE;
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��ӳ�֪ͨ����������ĳ��npcΪ�����Ա
//-------------------------------------------------------------------------
BOOL KPlayer::AddTeamMember(BYTE *pProtocol) {
  // ������(�Ƿ���ӡ��Ƿ�ӳ������鿪��״̬����Ա����ͳ����)
  if (!m_cTeam.m_nFlag || m_cTeam.m_nFigure != TEAM_CAPTAIN ||
      !g_Team[m_cTeam.m_nID].IsOpen() ||
      g_Team[m_cTeam.m_nID].m_nMemNum >= MAX_TEAM_MEMBER ||
      g_Team[m_cTeam.m_nID].m_nMemNum >=
          g_Team[m_cTeam.m_nID].CalcCaptainPower()) {
    SendSelfTeamInfo();
    return FALSE;
  }

  // ��npc id����player
  int nPlayer, i;
  PLAYER_ACCEPT_TEAM_MEMBER *pAccept = (PLAYER_ACCEPT_TEAM_MEMBER *)pProtocol;
  nPlayer = FindAroundPlayer(pAccept->m_dwNpcID);
  if (nPlayer < 0)
    return FALSE;
  // �Է������ڲ������״̬
  if (!Player[nPlayer].m_cTeam.m_bCreatTeamFlag) {
    SHOW_MSG_SYNC sMsg;
    sMsg.ProtocolType = s2c_msgshow;
    sMsg.m_wMsgID = enumMSG_ID_TARGET_CANNOT_ADD_TEAM;
    sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1 - sizeof(LPVOID);
    g_pServer->PackDataToClient(m_nNetConnectIdx, &sMsg, sMsg.m_wLength + 1);
    return FALSE;
  }
  // �Ѿ��ڶ�����
  if (Player[nPlayer].m_cTeam.m_nFlag)
    return FALSE;
  if (Player[nPlayer].m_cTeam.m_nApplyCaptainID != Npc[this->m_nIndex].m_dwID)
    return FALSE;
  // ������ӳ�Ա
  if (!g_Team[m_cTeam.m_nID].AddMember(nPlayer))
    return FALSE;
  // �ı����״̬

  // �����ܶ�Ա�������ݴ���
  Player[nPlayer].m_cTeam.Release();
  Player[nPlayer].m_cTeam.m_nFlag = 1;
  Player[nPlayer].m_cTeam.m_nFigure = TEAM_MEMBER;
  Player[nPlayer].m_cTeam.m_nID = m_cTeam.m_nID;
  Npc[Player[nPlayer].m_nIndex].SetCurrentCamp(Npc[m_nIndex].m_Camp);

  // ��������Ա����Ϣ
  PLAYER_TEAM_ADD_MEMBER sAddMem;
  sAddMem.ProtocolType = s2c_teamaddmember;
  sAddMem.m_dwNpcID = Npc[Player[nPlayer].m_nIndex].m_dwID;
  sAddMem.m_btLevel = (DWORD)Npc[Player[nPlayer].m_nIndex].m_Level;
  strcpy(sAddMem.m_szName, Npc[Player[nPlayer].m_nIndex].Name);

  // ���ӳ�����Ϣ
  g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sAddMem,
                              sizeof(PLAYER_TEAM_ADD_MEMBER));

  // ���϶�Ա����Ϣ
  for (i = 0; i < MAX_TEAM_MEMBER; i++) {
    if (g_Team[m_cTeam.m_nID].m_nMember[i] < 0 ||
        g_Team[m_cTeam.m_nID].m_nMember[i] == nPlayer)
      continue;
    g_pServer->PackDataToClient(
        Player[g_Team[m_cTeam.m_nID].m_nMember[i]].m_nNetConnectIdx,
        (BYTE *)&sAddMem, sizeof(PLAYER_TEAM_ADD_MEMBER));
  }

  // ------------------------------------- ���¶�Ա����Ϣ
  // --------------------------
  int nNpcIndex;
  PLAYER_SEND_SELF_TEAM_INFO sSelfInfo;
  sSelfInfo.ProtocolType = s2c_teamselfinfo;
  sSelfInfo.nTeamServerID = m_cTeam.m_nID;
  sSelfInfo.m_dwLeadExp = Player[nPlayer].m_dwLeadExp;
  sSelfInfo.m_btState = g_Team[m_cTeam.m_nID].m_nState;
  // �ӳ�����
  nNpcIndex = m_nIndex;
  sSelfInfo.m_dwNpcID[0] = Npc[nNpcIndex].m_dwID;
  sSelfInfo.m_btLevel[0] = (DWORD)Npc[nNpcIndex].m_Level;
  strcpy(sSelfInfo.m_szNpcName[0], Npc[nNpcIndex].Name);
  // ��Ա����
  for (i = 0; i < MAX_TEAM_MEMBER; i++) {
    if (g_Team[m_cTeam.m_nID].m_nMember[i] >= 0) {
      nNpcIndex = Player[g_Team[m_cTeam.m_nID].m_nMember[i]].m_nIndex;
      sSelfInfo.m_dwNpcID[i + 1] = Npc[nNpcIndex].m_dwID;
      sSelfInfo.m_btLevel[i + 1] = (DWORD)Npc[nNpcIndex].m_Level;
      strcpy(sSelfInfo.m_szNpcName[i + 1], Npc[nNpcIndex].Name);
    } else {
      sSelfInfo.m_dwNpcID[i + 1] = 0;
      sSelfInfo.m_btLevel[i + 1] = 0;
    }
  }
  // ������Ϣ
  g_pServer->PackDataToClient(Player[nPlayer].m_nNetConnectIdx,
                              (BYTE *)&sSelfInfo,
                              sizeof(PLAYER_SEND_SELF_TEAM_INFO));

  SHOW_MSG_SYNC sMsg;
  sMsg.ProtocolType = s2c_msgshow;
  sMsg.m_wMsgID = enumMSG_ID_TEAM_SELF_ADD;
  sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1;
  sMsg.m_lpBuf = 0;
  g_pServer->PackDataToClient(Player[nPlayer].m_nNetConnectIdx, &sMsg,
                              sMsg.m_wLength + 1);

  // --------------------------------- ���¶�Ա����Ϣ end
  // --------------------------

  return TRUE;
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ��˶�Ա֪ͨ�뿪����
//-------------------------------------------------------------------------
void KPlayer::LeaveTeam(BYTE *pProtocol) {
  PLAYER_APPLY_LEAVE_TEAM *pLeave = (PLAYER_APPLY_LEAVE_TEAM *)pProtocol;

  if (!m_cTeam.m_nFlag)
    return;

  BOOL bOpen = FALSE;

  if (g_Team[m_cTeam.m_nID].IsOpen())
    bOpen = TRUE;

  if (this->m_cTeam.m_nFigure == TEAM_CAPTAIN &&
      g_Team[m_cTeam.m_nID].IsOpen()) {
    if (g_Team[m_cTeam.m_nID].m_nMemNum < 1)
      g_Team[m_cTeam.m_nID].SetTeamClose();
    else {
      int nLeadLevel = 0;
      int nPlayerIdx = 0;
      for (int i = 0; i < MAX_TEAM_MEMBER; i++) {
        int nIndex = g_Team[m_cTeam.m_nID].m_nMember[i];
        if (nIndex > 0) {
          if (Npc[m_nIndex].m_Camp != camp_begin &&
              Npc[Player[nIndex].m_nIndex].m_Camp == camp_begin) {
            continue;
          }
          if (Player[nIndex].m_dwLeadLevel > nLeadLevel) {
            nPlayerIdx = nIndex;
            nLeadLevel = Player[nIndex].m_dwLeadLevel;
          }
        }
      }

      if (nPlayerIdx > 0) {
        PLAYER_APPLY_TEAM_CHANGE_CAPTAIN sTeamChange;
        sTeamChange.ProtocolType = c2s_teamapplychangecaptain;
        sTeamChange.m_dwNpcID = Npc[Player[nPlayerIdx].m_nIndex].m_dwID;
        //	sTeamChange.m_bMySelf = FALSE;
        if (!this->TeamChangeCaptain((BYTE *)&sTeamChange))
          g_Team[m_cTeam.m_nID].SetTeamClose();
      } else
        g_Team[m_cTeam.m_nID].SetTeamClose();
    }
  }

  // �Ƕӳ��뿪���飬��ϵͳ��Ϣ���ӳ��뿪�����ϵͳ��Ϣ������DeleteMember����
  if (m_cTeam.m_nFigure != TEAM_CAPTAIN) {
    SHOW_MSG_SYNC sMsg;
    sMsg.ProtocolType = s2c_msgshow;
    sMsg.m_wMsgID = enumMSG_ID_TEAM_LEAVE;
    sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1;
    sMsg.m_lpBuf = (void *)Npc[this->m_nIndex].m_dwID;

    g_pServer->PackDataToClient(
        Player[g_Team[m_cTeam.m_nID].m_nCaptain].m_nNetConnectIdx, &sMsg,
        sMsg.m_wLength + 1);
    for (int i = 0; i < MAX_TEAM_MEMBER; i++) {
      if (g_Team[m_cTeam.m_nID].m_nMember[i] > 0) {
        g_pServer->PackDataToClient(
            Player[g_Team[m_cTeam.m_nID].m_nMember[i]].m_nNetConnectIdx, &sMsg,
            sMsg.m_wLength + 1);
      }
    }
    sMsg.m_lpBuf = 0;
  }

  // �������˶�Ա�뿪�Ĵ���
  g_Team[m_cTeam.m_nID].DeleteMember(GetPlayerIndex());
}

void KPlayer::SendSystemMessage(const char *szHead, const char *szMessage) {
  if (!szHead || !szMessage)
    return;

  KPlayerChat::SendSystemInfo(1, m_nPlayerIndex, (char *)szHead,
                              (char *)szMessage, strlen(szMessage));
}

void KPlayer::SendTeamMessage(int nTeamID, const char *szMessage) {
  if (!szMessage[0])
    return;
  if (!m_cTeam.m_nFlag || nTeamID < 0 || nTeamID > MAX_TEAM) {
    KPlayerChat::SendSystemInfo(1, m_nPlayerIndex, MESSAGE_TEAM_ANNOUCE_HEAD,
                                (char *)szMessage, strlen(szMessage));
    return;
  }

  KPlayerChat::SendSystemInfo(1, g_Team[nTeamID].m_nCaptain,
                              MESSAGE_TEAM_ANNOUCE_HEAD, (char *)szMessage,
                              strlen(szMessage));

  for (int i = 0; i < MAX_TEAM_MEMBER; i++) {
    int nMemberId = g_Team[nTeamID].m_nMember[i];
    if (nMemberId > 0) {
      if (szMessage)
        KPlayerChat::SendSystemInfo(1, nMemberId, MESSAGE_TEAM_ANNOUCE_HEAD,
                                    (char *)szMessage, strlen(szMessage));
    }
  }
}

#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ��˶ӳ�֪ͨ�߳�ĳ����Ա
//-------------------------------------------------------------------------
void KPlayer::TeamKickOne(BYTE *pProtocol) {
  if (!m_cTeam.m_nFlag || m_cTeam.m_nFigure != TEAM_CAPTAIN)
    return;

  int nMemNo;
  PLAYER_TEAM_KICK_MEMBER *pKickOne = (PLAYER_TEAM_KICK_MEMBER *)pProtocol;
  nMemNo = g_Team[m_cTeam.m_nID].FindMemberID(pKickOne->m_dwNpcID);
  if (nMemNo < 0)
    return;
  int nPlayerNo;
  // �������˶�Ա�뿪�Ĵ���
  nPlayerNo = g_Team[m_cTeam.m_nID].m_nMember[nMemNo];
  g_Team[m_cTeam.m_nID].DeleteMember(nPlayerNo);

  // ����Ϣ���ͻ���
  int nLength;
  SHOW_MSG_SYNC sMsg;

  nLength = strlen(Npc[Player[nPlayerNo].m_nIndex].Name);
  sMsg.ProtocolType = s2c_msgshow;
  sMsg.m_wMsgID = enumMSG_ID_TEAM_KICK_One;
  sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1 - sizeof(LPVOID) + nLength;
  sMsg.m_lpBuf = new BYTE[sMsg.m_wLength + 1];

  memcpy(sMsg.m_lpBuf, &sMsg, sizeof(SHOW_MSG_SYNC) - sizeof(LPVOID));
  memcpy((char *)sMsg.m_lpBuf + sizeof(SHOW_MSG_SYNC) - sizeof(LPVOID),
         Npc[Player[nPlayerNo].m_nIndex].Name, nLength);

  g_pServer->PackDataToClient(Player[nPlayerNo].m_nNetConnectIdx, sMsg.m_lpBuf,
                              sMsg.m_wLength + 1);

  g_pServer->PackDataToClient(
      Player[g_Team[m_cTeam.m_nID].m_nCaptain].m_nNetConnectIdx, sMsg.m_lpBuf,
      sMsg.m_wLength + 1);
  for (int i = 0; i < MAX_TEAM_MEMBER; i++) {
    if (g_Team[m_cTeam.m_nID].m_nMember[i] > 0)
      g_pServer->PackDataToClient(
          Player[g_Team[m_cTeam.m_nID].m_nMember[i]].m_nNetConnectIdx,
          sMsg.m_lpBuf, sMsg.m_wLength + 1);
  }
  sMsg.Release();
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ��˶ӳ�֪ͨ�Ѷӳ���ݽ���ĳ����Ա
//-------------------------------------------------------------------------
BOOL KPlayer::TeamChangeCaptain(BYTE *pProtocol) {
  if (!m_cTeam.m_nFlag || m_cTeam.m_nFigure != TEAM_CAPTAIN)
    return FALSE;
  int i, nMember, nPlayerNo, bOpen = 0;
  PLAYER_APPLY_TEAM_CHANGE_CAPTAIN *pChange =
      (PLAYER_APPLY_TEAM_CHANGE_CAPTAIN *)pProtocol;
  nMember = g_Team[m_cTeam.m_nID].FindMemberID(pChange->m_dwNpcID);
  if (nMember < 0)
    return FALSE;
  if (Npc[Player[g_Team[m_cTeam.m_nID].m_nMember[nMember]].m_nIndex].m_Camp ==
          camp_begin &&
      Npc[this->m_nIndex].m_Camp != camp_begin) {
    // �ӳ��ƽ�ʧ�ܣ��Է�ͳ˧������
    SHOW_MSG_SYNC sMsg;
    sMsg.ProtocolType = s2c_msgshow;
    sMsg.m_wMsgID = enumMSG_ID_TEAM_CHANGE_CAPTAIN_FAIL2;
    sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1;
    sMsg.m_lpBuf = (LPVOID)pChange->m_dwNpcID;
    g_pServer->PackDataToClient(m_nNetConnectIdx, &sMsg, sMsg.m_wLength + 1);
    sMsg.m_lpBuf = 0;
    return FALSE;
  }
  if (g_Team[m_cTeam.m_nID].m_nMemNum >
      PlayerSet.m_cLeadExp.GetMemNumFromLevel(
          Player[g_Team[m_cTeam.m_nID].m_nMember[nMember]].m_dwLeadLevel)) {
    // �ӳ��ƽ�ʧ�ܣ��Է�ͳ˧������
    SHOW_MSG_SYNC sMsg;
    sMsg.ProtocolType = s2c_msgshow;
    sMsg.m_wMsgID = enumMSG_ID_TEAM_CHANGE_CAPTAIN_FAIL;
    sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1;
    sMsg.m_lpBuf = (LPVOID)pChange->m_dwNpcID;
    g_pServer->PackDataToClient(m_nNetConnectIdx, &sMsg, sMsg.m_wLength + 1);
    sMsg.m_lpBuf = 0;
    return FALSE;
  }
  if (g_Team[m_cTeam.m_nID].IsOpen()) {
    g_Team[m_cTeam.m_nID].SetTeamClose();
    bOpen = TRUE;
  }
  nPlayerNo = g_Team[m_cTeam.m_nID].m_nCaptain;
  g_Team[m_cTeam.m_nID].m_nCaptain = g_Team[m_cTeam.m_nID].m_nMember[nMember];
  g_Team[m_cTeam.m_nID].m_nMember[nMember] = nPlayerNo;
  m_cTeam.m_nFigure = TEAM_MEMBER;
  Player[g_Team[m_cTeam.m_nID].m_nCaptain].m_cTeam.m_nFigure = TEAM_CAPTAIN;
  // �ı���Ӫ
  Npc[Player[g_Team[m_cTeam.m_nID].m_nCaptain].m_nIndex].RestoreCurrentCamp();
  for (i = 0; i < MAX_TEAM_MEMBER; i++) {
    nPlayerNo = g_Team[m_cTeam.m_nID].m_nMember[i];
    if (nPlayerNo < 0)
      continue;
    Npc[Player[nPlayerNo].m_nIndex].SetCurrentCamp(
        Npc[Player[g_Team[m_cTeam.m_nID].m_nCaptain].m_nIndex].m_Camp);
  }

  // ��������Ա����Ϣ
  PLAYER_TEAM_CHANGE_CAPTAIN sChangeCaptain;
  sChangeCaptain.ProtocolType = s2c_teamchangecaptain;
  sChangeCaptain.m_dwCaptainID = pChange->m_dwNpcID;
  sChangeCaptain.m_dwMemberID = Npc[m_nIndex].m_dwID;
  // ���ӳ�����Ϣ
  g_pServer->PackDataToClient(
      Player[g_Team[m_cTeam.m_nID].m_nCaptain].m_nNetConnectIdx,
      (BYTE *)&sChangeCaptain, sizeof(PLAYER_TEAM_CHANGE_CAPTAIN));
  // ����Ա����Ϣ
  for (i = 0; i < MAX_TEAM_MEMBER; i++) {
    nPlayerNo = g_Team[m_cTeam.m_nID].m_nMember[i];
    if (nPlayerNo < 0)
      continue;
    g_pServer->PackDataToClient(Player[nPlayerNo].m_nNetConnectIdx,
                                (BYTE *)&sChangeCaptain,
                                sizeof(PLAYER_TEAM_CHANGE_CAPTAIN));
  }

  if (bOpen && !g_Team[m_cTeam.m_nID].IsOpen()) {
    g_Team[m_cTeam.m_nID].SetTeamOpen();
  }
  return TRUE;
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ��˶ӳ������ɢ����
//-------------------------------------------------------------------------
void KPlayer::TeamDismiss(BYTE *pProtocol) {
  if (!m_cTeam.m_nFlag || m_cTeam.m_nFigure != TEAM_CAPTAIN)
    return;

  PLAYER_LEAVE_TEAM sLeaveTeam;
  int i;
  SHOW_MSG_SYNC sMsg;

  // �����ɢ��Ϣ
  sMsg.ProtocolType = s2c_msgshow;
  sMsg.m_wMsgID = enumMSG_ID_TEAM_DISMISS;
  sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1 - sizeof(LPVOID);
  g_pServer->PackDataToClient(m_nNetConnectIdx, &sMsg, sMsg.m_wLength + 1);

  // ���ӳ�����Ϣ
  sLeaveTeam.ProtocolType = s2c_teamleave;
  sLeaveTeam.m_dwNpcID = Npc[m_nIndex].m_dwID; // nhat do
  g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sLeaveTeam,
                              sizeof(PLAYER_LEAVE_TEAM));
  // ����Ա����Ϣ
  for (i = 0; i < MAX_TEAM_MEMBER; i++) {
    g_pServer->PackDataToClient(
        Player[g_Team[m_cTeam.m_nID].m_nMember[i]].m_nNetConnectIdx, &sMsg,
        sMsg.m_wLength + 1);

    sLeaveTeam.m_dwNpcID =
        Npc[Player[g_Team[m_cTeam.m_nID].m_nMember[i]].m_nIndex].m_dwID;
    g_pServer->PackDataToClient(
        Player[g_Team[m_cTeam.m_nID].m_nMember[i]].m_nNetConnectIdx,
        (BYTE *)&sLeaveTeam, sizeof(PLAYER_LEAVE_TEAM));
    // ��Ա��ݸı�
    Player[g_Team[m_cTeam.m_nID].m_nMember[i]].m_cTeam.m_nFlag = 0;
    Npc[Player[g_Team[m_cTeam.m_nID].m_nMember[i]].m_nIndex]
        .RestoreCurrentCamp();
    ;
  }
  // �������
  g_Team[m_cTeam.m_nID].Release();
  // �ӳ���ݸı�
  m_cTeam.m_nFlag = 0;
  Npc[m_nIndex].RestoreCurrentCamp();
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ��������趨PK״̬
//-------------------------------------------------------------------------
void KPlayer::SetPK(BYTE *pProtocol) {
  PLAYER_SET_PK *pPK = (PLAYER_SET_PK *)pProtocol;

  if (pPK->m_btPKFlag)
    Npc[m_nIndex].SetCurrentCamp(camp_free);
  else
    Npc[m_nIndex].RestoreCurrentCamp();
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ�����������������
//-------------------------------------------------------------------------
void KPlayer::SendFactionData(BYTE *pProtocol) { SendFactionData(); }
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ���ͻ��˷�����������
//-------------------------------------------------------------------------
void KPlayer::SendFactionData() {
  // ���ͻ��˷���Ϣ
  PLAYER_FACTION_DATA sData;
  sData.ProtocolType = s2c_playerfactiondata;
  sData.m_btCamp = Npc[m_nIndex].m_Camp;
  sData.m_btCurFaction = m_cFaction.m_nCurFaction;
  sData.m_btFirstFaction = m_cFaction.m_nFirstAddFaction;
  sData.m_nAddTimes = m_cFaction.m_nAddTimes;

  g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sData,
                              sizeof(PLAYER_FACTION_DATA));
}
#endif

#ifdef _SERVER
// not end
void KPlayer::GetAboutPos(KMapPos *pMapPos) {
  if (m_nIndex <= 0)
    return;

  if (Npc[m_nIndex].m_SubWorldIndex < 0)
    return;

  POINT Pos;
  int nX, nY;
  Npc[m_nIndex].GetMpsPos(&nX, &nY);
  Pos.x = nX;
  Pos.y = nY;

  SubWorld[Npc[m_nIndex].m_SubWorldIndex].GetFreeObjPos(Pos);

  pMapPos->nSubWorld = Npc[m_nIndex].m_SubWorldIndex;
  SubWorld[Npc[m_nIndex].m_SubWorldIndex].Mps2Map(
      Pos.x, Pos.y, &pMapPos->nRegion, &pMapPos->nMapX, &pMapPos->nMapY,
      &pMapPos->nOffX, &pMapPos->nOffY);
}

/*
void	KPlayer::GetAboutPos(KMapPos *pMapPos)
{
POINT	Pos[8] =
{
{0, 32}, {-32, 32}, {-32, 0}, {-32, -32},
{0, -32}, {32, -32}, {32, 0}, {32, 32},
};

  int nMpsX, nMpsY, nTmpX, nTmpY;
  int nR, nMapX, nMapY, nOffX, nOffY;
  Npc[m_nIndex].GetMpsPos(&nMpsX, &nMpsY);

        for (int i = 0; i < 8; i++)
        {
        nTmpX = nMpsX + Pos[i].x;
        nTmpY = nMpsY + Pos[i].y;
        if (SubWorld[Npc[m_nIndex].m_SubWorldIndex].GetBarrier(nTmpX, nTmpY))
        continue;
        SubWorld[Npc[m_nIndex].m_SubWorldIndex].Mps2Map(nTmpX, nTmpY, &nR,
&nMapX, &nMapY, &nOffX, &nOffY); if (nR == -1) continue; if
(SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_Region[nR].GetRef(nMapX, nMapY,
obj_object)) continue; else break;
        }

          if (i == 8)
          {
          pMapPos->nSubWorld = Npc[m_nIndex].m_SubWorldIndex;
          pMapPos->nRegion = Npc[m_nIndex].m_RegionIndex;
          pMapPos->nMapX = Npc[m_nIndex].m_MapX;
          pMapPos->nMapY = Npc[m_nIndex].m_MapY;
          pMapPos->nOffX = Npc[m_nIndex].m_OffX;
          pMapPos->nOffY = Npc[m_nIndex].m_OffY;
          }
          else
          {
          pMapPos->nSubWorld = Npc[m_nIndex].m_SubWorldIndex;
          pMapPos->nRegion = nR;
          pMapPos->nMapX = nMapX;
          pMapPos->nMapY = nMapY;
          pMapPos->nOffX = nOffX;
          pMapPos->nOffY = nOffY;
          }
}*/
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ�Ѱ�������Χ��ĳ��ָ��npc id��player index
//-------------------------------------------------------------------------
int KPlayer::FindAroundPlayer(DWORD dwNpcID) {
  if (dwNpcID == 0)
    return -1;

  if (SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID == 59) {
    return -1;
  }
  if (Npc[m_nIndex].m_SubWorldIndex >= MAX_SUBWORLD ||
      Npc[m_nIndex].m_SubWorldIndex < 0 ||
      Npc[m_nIndex].m_RegionIndex >=
          SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_nTotalRegion ||
      Npc[m_nIndex].m_RegionIndex < 0) {
    Npc[m_nIndex].m_SubWorldIndex = 0;
    Npc[m_nIndex].m_RegionIndex = 381;
    Npc[m_nIndex].m_MapX = 0;
    Npc[m_nIndex].m_MapY = 0;
    Npc[m_nIndex].m_OffX = 0;
    Npc[m_nIndex].m_OffY = 0;
    printf("Xay ra loi tim kiem nguoi choi, tu dong xua loi !\n");
  }

  int nPlayer, nRegionNo, i;
  nPlayer = SubWorld[Npc[m_nIndex].m_SubWorldIndex]
                .m_Region[Npc[m_nIndex].m_RegionIndex]
                .FindPlayer(dwNpcID);
  if (nPlayer >= 0)
    return nPlayer;
  for (i = 0; i < 8; i++) {
    nRegionNo = SubWorld[Npc[m_nIndex].m_SubWorldIndex]
                    .m_Region[Npc[m_nIndex].m_RegionIndex]
                    .m_nConnectRegion[i];
    if (nRegionNo < 0)
      continue;
    nPlayer =
        SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_Region[nRegionNo].FindPlayer(
            dwNpcID);
    if (nPlayer >= 0)
      return nPlayer;
  }

  return -1;
}

//-------------------------------------------------------------------------
//	���ܣ��ж�ĳ����Ƿ�����Χ
//-------------------------------------------------------------------------
BOOL KPlayer::CheckPlayerAround(int nPlayerIdx) {
  if (nPlayerIdx <= 0)
    return FALSE;
  if (SubWorld[Npc[m_nIndex].m_SubWorldIndex]
          .m_Region[Npc[m_nIndex].m_RegionIndex]
          .CheckPlayerIn(nPlayerIdx))
    return TRUE;
  int nRegionNo;
  for (int i = 0; i < 8; i++) {
    nRegionNo = SubWorld[Npc[m_nIndex].m_SubWorldIndex]
                    .m_Region[Npc[m_nIndex].m_RegionIndex]
                    .m_nConnectRegion[i];
    if (nRegionNo < 0)
      continue;
    if (SubWorld[Npc[m_nIndex].m_SubWorldIndex]
            .m_Region[nRegionNo]
            .CheckPlayerIn(nPlayerIdx))
      return TRUE;
  }

  return FALSE;
}

//-------------------------------------------------------------------------
//	���ܣ�Ѱ�������Χ��ĳ��ָ��npc id��npc index
//-------------------------------------------------------------------------
int KPlayer::FindAroundNpc(DWORD dwNpcID) {
  if (dwNpcID == 0)
    return 0;

  if (Npc[m_nIndex].m_SubWorldIndex >= MAX_SUBWORLD ||
      Npc[m_nIndex].m_SubWorldIndex < 0 ||
      Npc[m_nIndex].m_RegionIndex >=
          SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_nTotalRegion ||
      Npc[m_nIndex].m_RegionIndex < 0) {
    Npc[m_nIndex].m_SubWorldIndex = 0;
    Npc[m_nIndex].m_RegionIndex = 381;
    Npc[m_nIndex].m_MapX = 0;
    Npc[m_nIndex].m_MapY = 0;
    Npc[m_nIndex].m_OffX = 0;
    Npc[m_nIndex].m_OffY = 0;
    printf("Xay ra loi tim kiem npc, tu dong xua loi !\n");
  }

  int nNpc, nRegionNo, i;
  nNpc = SubWorld[Npc[m_nIndex].m_SubWorldIndex]
             .m_Region[Npc[m_nIndex].m_RegionIndex]
             .SearchNpc(dwNpcID);
  if (nNpc > 0)
    return nNpc;
  for (i = 0; i < 8; i++) {
    nRegionNo = SubWorld[Npc[m_nIndex].m_SubWorldIndex]
                    .m_Region[Npc[m_nIndex].m_RegionIndex]
                    .m_nConnectRegion[i];
    if (nRegionNo < 0)
      continue;
    nNpc =
        SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_Region[nRegionNo].SearchNpc(
            dwNpcID);
    if (nNpc > 0)
      return nNpc;
  }

  return 0;
}
#endif

//-------------------------------------------------------------------------
//	���ܣ�����ҵ�½ʱ�����������Բ��� ���� ���� ���� ���� ������ֵ
//-------------------------------------------------------------------------
BOOL KPlayer::NewPlayerGetBaseAttribute(int Series) {
  if (Series < series_metal || Series > series_earth)
    return FALSE;

  Npc[m_nIndex].SetSeries(Series);

  m_nStrength = PlayerSet.m_cNewPlayerAttribute.m_nStrength[Series];
  m_nDexterity = PlayerSet.m_cNewPlayerAttribute.m_nDexterity[Series];
  m_nVitality = PlayerSet.m_cNewPlayerAttribute.m_nVitality[Series];
  m_nEngergy = PlayerSet.m_cNewPlayerAttribute.m_nEngergy[Series];
  m_nLucky = PlayerSet.m_cNewPlayerAttribute.m_nLucky[Series];

  m_nCurStrength = m_nStrength;
  m_nCurDexterity = m_nDexterity;
  m_nCurVitality = m_nVitality;
  m_nCurEngergy = m_nEngergy;
  CalcCurLucky();

  m_cFaction.SetSeries(Series);

  return TRUE;
}

//-------------------------------------------------------------------------
//	���ܣ����㵱ǰ����
//-------------------------------------------------------------------------
// void	KPlayer::CalcCurStrength()
//{	// ����Ҫ���� װ�������ܡ�״̬ ��Ӱ��
//	m_nCurStrength = m_nStrength;
//}

//-------------------------------------------------------------------------
//	���ܣ����㵱ǰ����
//-------------------------------------------------------------------------
// void	KPlayer::CalcCurDexterity()
//{	// ����Ҫ���� װ�������ܡ�״̬ ��Ӱ��
//	m_nCurDexterity = m_nDexterity;
//}

//-------------------------------------------------------------------------
//	���ܣ����㵱ǰ����
//-------------------------------------------------------------------------
// void	KPlayer::CalcCurVitality()
//{	// ����Ҫ���� װ�������ܡ�״̬ ��Ӱ��
//	m_nCurVitality = m_nVitality;
//}

//-------------------------------------------------------------------------
//	���ܣ����㵱ǰ����
//-------------------------------------------------------------------------
// void	KPlayer::CalcCurEngergy()
//{	// ����Ҫ���� װ�������ܡ�״̬ ��Ӱ��
//	m_nCurEngergy = m_nEngergy;
//}

//-------------------------------------------------------------------------
//	���ܣ����㵱ǰ����
//-------------------------------------------------------------------------
void KPlayer::CalcCurLucky() { // ����Ҫ���� װ�������ܡ�״̬ ��Ӱ��
  m_nCurLucky = m_nLucky;
}

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ����ӻ�������
//-------------------------------------------------------------------------
void KPlayer::AddBaseStrength(int nData) {
  if (nData > 0 && nData <= m_nAttributePoint) {
    m_nStrength += nData;
    m_nAttributePoint -= nData;
    m_nCurStrength += nData;

    UpdataCurData();
    SetNpcPhysicsDamage();
    // �ѵ�ǰ���������ͻ���
    PLAYER_ATTRIBUTE_SYNC sSync;
    sSync.ProtocolType = s2c_playersyncattribute;
    sSync.m_btAttribute = 0;
    sSync.m_nBasePoint = m_nStrength;
    sSync.m_nCurPoint = m_nCurStrength;
    sSync.m_nLeavePoint = m_nAttributePoint;
    g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sSync,
                                sizeof(PLAYER_ATTRIBUTE_SYNC));
  }
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ����ӻ�������
//-------------------------------------------------------------------------
void KPlayer::AddBaseDexterity(int nData) {
  if (nData > 0 && nData <= m_nAttributePoint) {
    m_nDexterity += nData;
    m_nAttributePoint -= nData;
    m_nCurDexterity += nData;

    SetNpcAttackRating();
    SetNpcDefence();
    UpdataCurData();
    SetNpcPhysicsDamage();

    // �ѵ�ǰ���������ͻ���
    PLAYER_ATTRIBUTE_SYNC sSync;
    sSync.ProtocolType = s2c_playersyncattribute;
    sSync.m_btAttribute = 1;
    sSync.m_nBasePoint = m_nDexterity;
    sSync.m_nCurPoint = m_nCurDexterity;
    sSync.m_nLeavePoint = m_nAttributePoint;
    g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sSync,
                                sizeof(PLAYER_ATTRIBUTE_SYNC));
  }
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ����ӻ�������
//-------------------------------------------------------------------------
void KPlayer::AddBaseVitality(int nData) {
  if (nData > 0 && nData <= m_nAttributePoint) {
    m_nVitality += nData;
    m_nAttributePoint -= nData;
    m_nCurVitality += nData;

    Npc[m_nIndex].AddBaseLifeMax(
        PlayerSet.m_cLevelAdd.GetLifePerVitality(Npc[m_nIndex].m_Series) *
        nData);
    Npc[m_nIndex].AddBaseStaminaMax(
        PlayerSet.m_cLevelAdd.GetStaminaPerVitality(Npc[m_nIndex].m_Series) *
        nData);
    UpdataCurData();

    // �ѵ�ǰ���������ͻ���
    PLAYER_ATTRIBUTE_SYNC sSync;
    sSync.ProtocolType = s2c_playersyncattribute;
    sSync.m_btAttribute = 2;
    sSync.m_nBasePoint = m_nVitality;
    sSync.m_nCurPoint = m_nCurVitality;
    sSync.m_nLeavePoint = m_nAttributePoint;
    g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sSync,
                                sizeof(PLAYER_ATTRIBUTE_SYNC));
  }
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ����ӻ�������
//-------------------------------------------------------------------------
void KPlayer::AddBaseEngergy(int nData) {
  if (nData > 0 && nData <= m_nAttributePoint) {
    m_nEngergy += nData;
    m_nAttributePoint -= nData;
    m_nCurEngergy += nData;

    Npc[m_nIndex].AddBaseManaMax(
        PlayerSet.m_cLevelAdd.GetManaPerEnergy(Npc[m_nIndex].m_Series) * nData);
    UpdataCurData();

    // �ѵ�ǰ���������ͻ���
    PLAYER_ATTRIBUTE_SYNC sSync;
    sSync.ProtocolType = s2c_playersyncattribute;
    sSync.m_btAttribute = 3;
    sSync.m_nBasePoint = m_nEngergy;
    sSync.m_nCurPoint = m_nCurEngergy;
    sSync.m_nLeavePoint = m_nAttributePoint;
    g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sSync,
                                sizeof(PLAYER_ATTRIBUTE_SYNC));
  }
}
#endif

//-------------------------------------------------------------------------
//	���ܣ��ı䵱ǰ����(�� nData С�� 0 ʱ������)
//-------------------------------------------------------------------------
void KPlayer::ChangeCurStrength(int nData) {
  /*	if (m_nCurStrength + nData < m_nStrength)
  return;
          */
  m_nCurStrength += nData;
  SetNpcPhysicsDamage();
  // �ѵ�ǰ���������ͻ���
}

//-------------------------------------------------------------------------
//	���ܣ��ı䵱ǰ����(�� nData С�� 0 ʱ������)
//-------------------------------------------------------------------------
void KPlayer::ChangeCurDexterity(int nData) {
  /*	if (m_nCurDexterity + nData < 0)
  return;
          */
  m_nCurDexterity += nData;

  int nRating = nData * 4;
  Npc[m_nIndex].m_CurrentAttackRating += nRating;

  int nDefence = nData / 4;
  Npc[m_nIndex].m_CurrentDefend += nDefence;

  SetNpcPhysicsDamage();
}

//-------------------------------------------------------------------------
//	���ܣ��ı䵱ǰ����(�� nData С�� 0 ʱ������)
//-------------------------------------------------------------------------
void KPlayer::ChangeCurVitality(int nData) {
  /*	if (nData + m_nAttributePoint < 0)
  return;
          */
  m_nCurVitality += nData;

  Npc[m_nIndex].AddCurLifeMax(
      PlayerSet.m_cLevelAdd.GetLifePerVitality(Npc[m_nIndex].m_Series) * nData);
  Npc[m_nIndex].AddCurStaminaMax(
      PlayerSet.m_cLevelAdd.GetStaminaPerVitality(Npc[m_nIndex].m_Series) *
      nData);
}

//-------------------------------------------------------------------------
//	���ܣ��ı䵱ǰ����(�� nData С�� 0 ʱ������)
//-------------------------------------------------------------------------
void KPlayer::ChangeCurEngergy(int nData) {
  /*	if (m_nAttributePoint + nData < 0)
  return;
          */
  m_nCurEngergy += nData;

  Npc[m_nIndex].AddCurManaMax(
      PlayerSet.m_cLevelAdd.GetManaPerEnergy(Npc[m_nIndex].m_Series) * nData);
}

//-------------------------------------------------------------------------
//	���ܣ����ӻ�������
//-------------------------------------------------------------------------
void KPlayer::AddBaseLucky(int nData) {
  m_nLucky += nData;
  CalcCurLucky();
}

//-------------------------------------------------------------------------
//	���ܣ��ɵ�ǰ���������Ӧnpc�������˺�(PhysicsDamage)
//-------------------------------------------------------------------------
void KPlayer::SetNpcPhysicsDamage() {
  int nMinDamage, nMaxDamage;
  m_ItemList.GetWeaponDamage(&nMinDamage, &nMaxDamage);

  if (m_ItemList.GetWeaponType() == equip_meleeweapon) // (��ǰװ���ǽ�������)
  {
    /*		nMinDamage = nMinDamage * (m_nCurStrength +
    STRENGTH_SET_DAMAGE_VALUE) / STRENGTH_SET_DAMAGE_VALUE; nMaxDamage =
    nMaxDamage * (m_nCurStrength + STRENGTH_SET_DAMAGE_VALUE) /
    STRENGTH_SET_DAMAGE_VALUE;
            */
    // ��ֵ���㷽���޸ģ���ӢҪ�� by Spe 03/06/11
    nMinDamage += m_nCurStrength / STRENGTH_SET_DAMAGE_VALUE;
    nMaxDamage += m_nCurStrength / STRENGTH_SET_DAMAGE_VALUE;
    Npc[m_nIndex].SetPhysicsDamage(nMinDamage, nMaxDamage);
  } else if (m_ItemList.GetWeaponType() ==
             equip_rangeweapon) // (��ǰװ����Զ������)
  {
    /*		nMinDamage = nMinDamage * (m_nCurDexterity +
    DEXTERITY_SET_DAMAGE_VALUE) / DEXTERITY_SET_DAMAGE_VALUE; nMaxDamage =
    nMaxDamage * (m_nCurDexterity + DEXTERITY_SET_DAMAGE_VALUE) /
    DEXTERITY_SET_DAMAGE_VALUE;
            */
    // ��ֵ���㷽���޸ģ���ӢҪ�� by Spe 03/06/11
    nMinDamage += m_nCurDexterity / DEXTERITY_SET_DAMAGE_VALUE;
    nMaxDamage += m_nCurDexterity / DEXTERITY_SET_DAMAGE_VALUE;
    Npc[m_nIndex].SetPhysicsDamage(nMinDamage, nMaxDamage);
  } else {
    Npc[m_nIndex].SetPhysicsDamage(nMinDamage, nMaxDamage);
  }
}

//-------------------------------------------------------------------------
//	���ܣ��ɵ�ǰ���ݼ����Ӧnpc�Ĺ���������(AttackRating)
//-------------------------------------------------------------------------
void KPlayer::SetNpcAttackRating() {
  int nRating;

  nRating = m_nDexterity * 4 - 28;
  Npc[m_nIndex].SetBaseAttackRating(nRating);
}

//-------------------------------------------------------------------------
//	���ܣ��ɵ�ǰ���ݼ����Ӧnpc�ķ�����
//-------------------------------------------------------------------------
void KPlayer::SetNpcDefence() {
  int nDefence;

  nDefence = m_nDexterity / 4;
  Npc[m_nIndex].SetBaseDefence(nDefence);
}

/*
#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��ɵ�ǰ���ݼ����Ӧnpc�������ٶ�
//-------------------------------------------------------------------------
void	KPlayer::SetNpcWalkSpeed()
{
int		nSpeed;
nSpeed = BASE_WALK_SPEED * (m_nCurDexterity + 320) / 320;
Npc[m_nIndex].SetBaseWalkSpeed(nSpeed);
}
#endif
*/

/*
#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��ɵ�ǰ���ݼ����Ӧnpc���ܲ��ٶ�
//-------------------------------------------------------------------------
void	KPlayer::SetNpcRunSpeed()
{
int		nSpeed;
nSpeed = BASE_RUN_SPEED * (m_nCurDexterity + 320) / 320;
Npc[m_nIndex].SetBaseRunSpeed(nSpeed);
}
#endif
*/

//-------------------------------------------------------------------------
//	���ܣ����Ӿ���(ԭʼ���ݣ���δ����������Ҫ������ӵ�Ӱ��)
//-------------------------------------------------------------------------
void KPlayer::AddExp(int nExp, int nTarLevel, BOOL bCheck) {

#ifndef _SERVER
  AddSelfExp(nExp, nTarLevel);
#endif

#ifdef _SERVER
  // û�����

  if (!m_cTeam.m_nFlag) {
    AddSelfExp(nExp, nTarLevel);
    return;
  }

  // �Ѿ����
  int i, j, nShareFlag[MAX_TEAM_MEMBER + 1], nRegion, nTotalLevel = 0,
                                                      nTotalPlayer = 0;
  memset(nShareFlag, 0, sizeof(nShareFlag));

  int nMpsX, nMpsY, nNpcIdx, nSelfSubIdx, nSelfMpsX, nSelfMpsY;

  nSelfSubIdx = Npc[m_nIndex].m_SubWorldIndex;
  SubWorld[nSelfSubIdx].Map2Mps(
      Npc[m_nIndex].m_RegionIndex, Npc[m_nIndex].m_MapX, Npc[m_nIndex].m_MapY,
      Npc[m_nIndex].m_OffX, Npc[m_nIndex].m_OffY, &nSelfMpsX, &nSelfMpsY);

  // �ӳ�
  nNpcIdx = Player[g_Team[m_cTeam.m_nID].m_nCaptain].m_nIndex;
  if (nSelfSubIdx == Npc[nNpcIdx].m_SubWorldIndex) {
    SubWorld[Npc[nNpcIdx].m_SubWorldIndex].Map2Mps(
        Npc[nNpcIdx].m_RegionIndex, Npc[nNpcIdx].m_MapX, Npc[nNpcIdx].m_MapY,
        Npc[nNpcIdx].m_OffX, Npc[nNpcIdx].m_OffY, &nMpsX, &nMpsY);
    if ((nMpsX - nSelfMpsX) * (nMpsX - nSelfMpsX) +
            (nMpsY - nSelfMpsY) * (nMpsY - nSelfMpsY) <=
        PLAYER_SHARE_EXP_DISTANCE * PLAYER_SHARE_EXP_DISTANCE) {
      nTotalLevel += Npc[nNpcIdx].m_Level;
      nShareFlag[0] = 1;
      nTotalPlayer++;
      if (nTotalPlayer >= g_Team[m_cTeam.m_nID].m_nMemNum + 1)
        goto SharePlace;
    }
  }
  // ��Ա
  for (i = 0; i < MAX_TEAM_MEMBER; i++) {
    if (g_Team[m_cTeam.m_nID].m_nMember[i] < 0)
      continue;
    nNpcIdx = Player[g_Team[m_cTeam.m_nID].m_nMember[i]].m_nIndex;
    if (nSelfSubIdx != Npc[nNpcIdx].m_SubWorldIndex)
      continue;
    SubWorld[Npc[nNpcIdx].m_SubWorldIndex].Map2Mps(
        Npc[nNpcIdx].m_RegionIndex, Npc[nNpcIdx].m_MapX, Npc[nNpcIdx].m_MapY,
        Npc[nNpcIdx].m_OffX, Npc[nNpcIdx].m_OffY, &nMpsX, &nMpsY);
    if ((nMpsX - nSelfMpsX) * (nMpsX - nSelfMpsX) +
            (nMpsY - nSelfMpsY) * (nMpsY - nSelfMpsY) >
        PLAYER_SHARE_EXP_DISTANCE * PLAYER_SHARE_EXP_DISTANCE)
      continue;
    nTotalLevel += Npc[nNpcIdx].m_Level;
    nShareFlag[i + 1] = 1;
    nTotalPlayer++;
    if (nTotalPlayer >= g_Team[m_cTeam.m_nID].m_nMemNum + 1)
      goto SharePlace;
  }

SharePlace:
  _ASSERT(nTotalPlayer >= 1);
  _ASSERT(nTotalLevel >= 1);
  if (nTotalPlayer < 1 || nTotalLevel < 1)
    return;
  if (nTotalPlayer == 1) {
    AddSelfExp(nExp, nTarLevel);
    return;
  }
  int k, nGetExp;
  k = 100 + (nTotalPlayer - 1) * 15;

  int ShareExp;
  nTotalPlayer = g_Team[m_cTeam.m_nID].m_nMemNum + 1;

  if (nTotalPlayer == 2)
    ShareExp = 80;
  else if (nTotalPlayer == 3)
    ShareExp = 70;
  else if (nTotalPlayer == 4)
    ShareExp = 60;
  else if (nTotalPlayer == 5)
    ShareExp = 55;
  else if (nTotalPlayer == 6)
    ShareExp = 55;
  else if (nTotalPlayer == 7)
    ShareExp = 50;
  else if (nTotalPlayer == 8)
    ShareExp = 50;
  else
    ShareExp = 60;
  // ���ӳ����侭��
  if (nShareFlag[0] == 1) {

    nGetExp = k *
              Npc[Player[g_Team[m_cTeam.m_nID].m_nCaptain].m_nIndex].m_Level /
              nTotalLevel;
    if (nGetExp < 5)
      nGetExp = 5;

    if (m_nPlayerIndex != g_Team[m_cTeam.m_nID].m_nCaptain || bCheck) {

      Player[g_Team[m_cTeam.m_nID].m_nCaptain].AddSelfExp(nExp * ShareExp / 100,
                                                          nTarLevel);

    }

    else

    {

      Player[g_Team[m_cTeam.m_nID].m_nCaptain].AddSelfExp(nExp, nTarLevel);
    }

    // LeadExp = �����ṩ�ľ���ֵ * �� * �����ߵȼ� / �����ߵȼ��ͣ�
    int nLeadExp =
        nExp * k *
        PlayerSet.m_cLevelAdd.GetLeadExpShare(Npc[m_nIndex].m_Series) *
        (nTotalLevel - Npc[m_nIndex].m_Level) / (nTotalLevel * 10000);
    Player[g_Team[m_cTeam.m_nID].m_nCaptain].AddLeadExp(nLeadExp);

    //		if (g_Team[m_cTeam.m_nID].m_nCaptain == m_nPlayerIndex)
    //		{
    //			if (nGetExp < 50)
    //				nGetExp = 50;
    //			Player[g_Team[m_cTeam.m_nID].m_nCaptain].AddSelfExp(nExp
    //* nGetExp / 100, nTarLevel);
    //		}
    //		else
    //		{
    //			if (nGetExp < 5)
    //				nGetExp = 5;
    //			Player[g_Team[m_cTeam.m_nID].m_nCaptain].AddSelfExp(nExp
    //* nGetExp / 100, nTarLevel);
    //		}
  }
  // ����Ա���侭��
  for (i = 0; i < MAX_TEAM_MEMBER; i++) {
    if (nShareFlag[i + 1] != 1)
      continue;

    nGetExp = k *
              Npc[Player[g_Team[m_cTeam.m_nID].m_nMember[i]].m_nIndex].m_Level /
              nTotalLevel;
    if (nGetExp < 5)
      nGetExp = 5;

    if (m_nPlayerIndex != g_Team[m_cTeam.m_nID].m_nMember[i] || bCheck) {

      Player[g_Team[m_cTeam.m_nID].m_nMember[i]].AddSelfExp(
          nExp * ShareExp / 100, nTarLevel);

    }

    else

    {

      Player[g_Team[m_cTeam.m_nID].m_nMember[i]].AddSelfExp(nExp, nTarLevel);
    }

    //		if (g_Team[m_cTeam.m_nID].m_nMember[i] == m_nPlayerIndex)
    //		{
    //			if (nGetExp < 50)
    //				nGetExp = 50;
    //			Player[g_Team[m_cTeam.m_nID].m_nMember[i]].AddSelfExp(nExp
    //* nGetExp / 100, nTarLevel);
    //		}
    //		else
    //		{
    //			if (nGetExp < 5)
    //				nGetExp = 5;
    //			Player[g_Team[m_cTeam.m_nID].m_nMember[i]].AddSelfExp(nExp
    //* nGetExp / 100, nTarLevel);
    //		}
  }

#endif
}

//-------------------------------------------------------------------------

void KPlayer::AddSelfExp(int nExp, int nTarLevel) {
  if (nExp <= 0)
    return;
  if (Npc[m_nIndex].m_Level >= MAX_LEVEL)
    return;
  if (Npc[m_nIndex].m_Doing == do_death || Npc[m_nIndex].m_Doing == do_revive)
    return;

  // m_cTask.SetSaveVal(133,m_cTask.GetSaveVal(133) + nExp/100);

  int nxExp;
  int nxExpTanThu;

  int nxExpSuDo;

  SYSTEMTIME TimeNow;
  GetLocalTime(&TimeNow);

  nxExpSuDo = 1;
  if (m_cTask.GetSaveVal(442) > 0) {
    nxExpSuDo = 2;
  } else {
    nxExpSuDo = 1;
  }

  nxExp = 1;
  if (TimeNow.wDay == 21 && TimeNow.wMonth == 6) // Ngay / thang x exp

  {
    if (m_cTask.GetSaveVal(172) > 0) {
      nxExp = 3;
    } else {
      nxExp = 2;
    }
  } else {
    if (m_cTask.GetSaveVal(172) > 0) {
      nxExp = 2;
    } else {
      nxExp = 1;
    }
  }

  nxExpTanThu = 7;
  if (Npc[m_nIndex].m_Level < 50)
    nxExpTanThu = 15;
  else if (Npc[m_nIndex].m_Level < 80)
    nxExpTanThu = 13;
  else if (Npc[m_nIndex].m_Level < 90)
    nxExpTanThu = 10;

  int nSubLevel, nGetExp, nLevelPlayer;

  nLevelPlayer = Npc[m_nIndex].m_Level;
  if (nLevelPlayer > 99)
    nLevelPlayer = 99;

  nSubLevel = nLevelPlayer - nTarLevel;
  if (nSubLevel <= 5 && nSubLevel > (-5)) {
    nGetExp = nExp;
  } else if (nSubLevel <= 15 && nSubLevel > (-15)) {
    nGetExp = nExp / 5;
  } else {
    nGetExp = nExp / 20;
  }

  if (nGetExp <= 0)
    nGetExp = 1;

  int Map = SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID;
  /*
  // Exp Huyet Chien
                  if (Map == 21 && m_cTask.GetSaveVal(470) == 9999)
                  m_nExp += nGetExp * nxExp * nxExpDuaTop * nxExpLevel * 27;
                  else
                  m_nExp += nGetExp * nxExp * nxExpDuaTop * nxExpLevel * 9;
  */
  // Exp Tuyet Tinh Kiem

  // if (Map == 111 || Map == 109 || Map == 110)
  //	m_nExp += nGetExp * nxExp * 11 / 10;
  // else

  // m_nExp += nGetExp * nxExp * nxExpTLD;

  m_nExp += nGetExp * nxExpTanThu * nxExp;

  //}
#ifdef _SERVER
  // Bat Dau Luyen skill 120

  int nFaction = m_cFaction.GetCurFactionNo();
  int nKillId = 0;
  int nKillLevel = 0;

  if (nFaction == 0)
    nKillId = 412;
  else if (nFaction == 1)
    nKillId = 414;
  else if (nFaction == 2)
    nKillId = 416;
  else if (nFaction == 3)
    nKillId = 418;
  else if (nFaction == 4)
    nKillId = 420;
  else if (nFaction == 5)
    nKillId = 422;
  else if (nFaction == 6)
    nKillId = 424;
  else if (nFaction == 7)
    nKillId = 426;
  else if (nFaction == 8)
    nKillId = 428;
  else if (nFaction == 9)
    nKillId = 430;

  if (nKillId > 0) {

    nKillLevel = Npc[m_nIndex].m_SkillList.GetCurrentLevel(nKillId);

    int nLevelSkillMax = 0;

    if (m_cTask.GetSaveVal(139) == 1) {
      nLevelSkillMax += 1;
    } else if (m_cTask.GetSaveVal(139) == 2) {
      nLevelSkillMax += 2;
    } else if (m_cTask.GetSaveVal(139) == 3) {
      nLevelSkillMax += 4;
    } else if (m_cTask.GetSaveVal(139) == 4) {
      nLevelSkillMax += 6;
    } else if (m_cTask.GetSaveVal(139) == 5) {
      nLevelSkillMax += 8;
    }

    else if (strcmpi(m_AccoutName, "") == 0 ||
             strcmpi(m_AccoutName, "hinodl") == 0 ||
             strcmpi(m_AccoutName, "") == 0) // lambui1
    {
      nLevelSkillMax += 7;
    }

    if (nKillLevel > 0 && nKillLevel < (20 + nLevelSkillMax)) {
      KSkill *pOrdinSkill =
          (KSkill *)g_SkillManager.GetSkill(nKillId, nKillLevel);
      if (pOrdinSkill) {
        KMagicAttrib *pMagicData = NULL;
        pMagicData = pOrdinSkill->GetDamageAttribs();
        if (pMagicData) {
          if (pMagicData[14].nAttribType == magic_skilllevelexp &&
              pMagicData[14].nValue[1] == 0 && pMagicData[14].nValue[2] > 0) {

            m_cTask.SetClearVal(pMagicData[14].nValue[2],
                                m_cTask.GetClearVal(pMagicData[14].nValue[2]) +
                                    nExp);
            if (m_cTask.GetClearVal(pMagicData[14].nValue[2]) >= 160000) {
              m_cTask.SetClearVal(
                  pMagicData[14].nValue[2],
                  m_cTask.GetClearVal(pMagicData[14].nValue[2]) - 160000);

              if (m_cTask.GetSaveVal(173) > 0) {
                m_cTask.SetSaveVal(
                    pMagicData[14].nValue[2],
                    m_cTask.GetSaveVal(pMagicData[14].nValue[2]) + nxExp * 2);
              } else {
                m_cTask.SetSaveVal(
                    pMagicData[14].nValue[2],
                    m_cTask.GetSaveVal(pMagicData[14].nValue[2]) + nxExp);
              }

              if (m_cTask.GetSaveVal(pMagicData[14].nValue[2]) >=
                  pMagicData[14].nValue[0]) {

                m_cTask.SetSaveVal(pMagicData[14].nValue[2], 0);
                Npc[m_nIndex].m_SkillList.IncreaseLevel(
                    Npc[m_nIndex].m_SkillList.GetSkillIdx(nKillId), 1);
                PLAYER_SKILL_LEVEL_SYNC NewSkill;
                NewSkill.ProtocolType = s2c_playerskilllevel;
                NewSkill.m_nSkillID = nKillId;
                NewSkill.m_nSkillLevel =
                    Npc[m_nIndex].m_SkillList.GetLevel(nKillId);
                NewSkill.m_nLeavePoint = m_nSkillPoint;
                g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&NewSkill,
                                            sizeof(PLAYER_SKILL_LEVEL_SYNC));
              }
            }
          }
        }
      }
    }
  }

// Ket Thuc Luyen skill 120
#endif

  // g_DebugLog("[��ֵ]%sʵ�����Ӿ���%d��", Npc[m_nIndex].Name, nGetExp);
#ifdef _SERVER
  if (m_nExp >= m_nNextLevelExp) // ����
  {
    LevelUp();
  } else // ͬ������
  {
    PLAYER_EXP_SYNC sSyncExp;
    sSyncExp.ProtocolType = (BYTE)s2c_playerexp;
    sSyncExp.m_nExp = m_nExp;
    g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sSyncExp,
                                sizeof(PLAYER_EXP_SYNC));
  }
#endif
}

//-------------------------------------------------------------------------
//	���ܣ�ֱ�����Ӿ���ֵ����������������
//-------------------------------------------------------------------------
void KPlayer::DirectAddExp(int nExp) {
  if (nExp > 0 && Npc[m_nIndex].m_Level >= MAX_LEVEL)
    return;

  int nxExpCS;
  nxExpCS = 1;

  // Tinh Kiem
  /*
          if (m_cTask.GetSaveVal(139) == 0)
          m_nExp += nExp;
          else if (m_cTask.GetSaveVal(139) == 1)
          m_nExp += nExp/6;
          else
          m_nExp += nExp/6;
  */
  // Hoa Son
  int tmpExp, nExp2;
  nExp2 = nExp / nxExpCS;
  tmpExp = m_nExp;
  if (tmpExp / 100 + nExp2 / 100 > m_nNextLevelExp / 100) {
    m_nExp += (m_nNextLevelExp - tmpExp);
  } else {
    m_nExp += nExp2;
  }

  if (m_nExp < 0) {
    if (-m_nExp > m_nNextLevelExp) {
      m_nExp = -m_nNextLevelExp;
    }
  }
#ifdef _SERVER
  if (m_nExp >= m_nNextLevelExp) // ����
  {
    LevelUp();
  } else // ͬ������
  {
    PLAYER_EXP_SYNC sSyncExp;
    sSyncExp.ProtocolType = (BYTE)s2c_playerexp;
    sSyncExp.m_nExp = m_nExp;
    g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sSyncExp,
                                sizeof(PLAYER_EXP_SYNC));
  }
#endif
}

//-------------------------------------------------------------------------
//	���ܣ������һ��
//-------------------------------------------------------------------------

#ifdef _SERVER
void KPlayer::FixPlayer() {

  if (m_nIndex < 0 || m_nIndex >= MAX_NPC)
    return;

  if (Npc[m_nIndex].m_Level > MAX_LEVEL || Npc[m_nIndex].m_Level < 1)
    return;

  if (m_cTask.GetSaveVal(139) == 1) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp1(Npc[m_nIndex].m_Level);
  } else if (m_cTask.GetSaveVal(139) == 2) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp2(Npc[m_nIndex].m_Level);
  }

  else if (m_cTask.GetSaveVal(139) == 3) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp3(Npc[m_nIndex].m_Level);
  }

  else if (m_cTask.GetSaveVal(139) == 4) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp4(Npc[m_nIndex].m_Level);
  }

  else if (m_cTask.GetSaveVal(139) == 5) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp5(Npc[m_nIndex].m_Level);
  }

  else {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp(Npc[m_nIndex].m_Level);
  }

  LevelAttriBaseLifeMax();
  LevelAttriBaseStaminaMax();
  LevelAttriBaseManaMax();

  Npc[m_nIndex].m_FireResist = PlayerSet.m_cLevelAdd.GetFireResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentFireResist = Npc[m_nIndex].m_FireResist;
  Npc[m_nIndex].m_ColdResist = PlayerSet.m_cLevelAdd.GetColdResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentColdResist = Npc[m_nIndex].m_ColdResist;
  Npc[m_nIndex].m_PoisonResist = PlayerSet.m_cLevelAdd.GetPoisonResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentPoisonResist = Npc[m_nIndex].m_PoisonResist;
  Npc[m_nIndex].m_LightResist = PlayerSet.m_cLevelAdd.GetLightResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentLightResist = Npc[m_nIndex].m_LightResist;
  Npc[m_nIndex].m_PhysicsResist = PlayerSet.m_cLevelAdd.GetPhysicsResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentPhysicsResist = Npc[m_nIndex].m_PhysicsResist;
  Npc[m_nIndex].m_FireResistMax = BASE_FIRE_RESIST_MAX;
  Npc[m_nIndex].m_ColdResistMax = BASE_COLD_RESIST_MAX;
  Npc[m_nIndex].m_PoisonResistMax = BASE_POISON_RESIST_MAX;
  Npc[m_nIndex].m_LightResistMax = BASE_LIGHT_RESIST_MAX;
  Npc[m_nIndex].m_PhysicsResistMax = BASE_PHYSICS_RESIST_MAX;
  Npc[m_nIndex].m_CurrentFireResistMax = Npc[m_nIndex].m_FireResistMax;
  Npc[m_nIndex].m_CurrentColdResistMax = Npc[m_nIndex].m_ColdResistMax;
  Npc[m_nIndex].m_CurrentPoisonResistMax = Npc[m_nIndex].m_PoisonResistMax;
  Npc[m_nIndex].m_CurrentLightResistMax = Npc[m_nIndex].m_LightResistMax;
  Npc[m_nIndex].m_CurrentPhysicsResistMax = Npc[m_nIndex].m_PhysicsResistMax;

  int nOldCurCamp = Npc[m_nIndex].m_CurrentCamp;

  this->UpdataCurData();
  SetNpcPhysicsDamage();
  Npc[m_nIndex].m_CurrentCamp = nOldCurCamp;

  Npc[m_nIndex].m_CurrentLife = Npc[m_nIndex].m_CurrentLifeMax;
  Npc[m_nIndex].m_CurrentStamina = Npc[m_nIndex].m_CurrentStaminaMax;
  Npc[m_nIndex].m_CurrentMana = Npc[m_nIndex].m_CurrentManaMax;
}

#endif

//=======================
// new add set level
//=========================
void KPlayer::SetLevel(int nLevel) {
  g_DebugLog("level player 0 %d", nLevel);
  if (Npc[m_nIndex].m_Level > MAX_LEVEL)
    return;

  g_DebugLog("level player 1 %d", nLevel);

  if (nLevel < 1 || nLevel > MAX_LEVEL)
    return;
  m_nExp = 0;

  Npc[m_nIndex].m_Level = nLevel;
  g_DebugLog("level player 2 %d", nLevel);
  // lay exp len cap hien tai
  m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp(Npc[m_nIndex].m_Level);

  // tiep theo ,thu hoi toan bo diem tiem nang,ki nang ,thiet lap lai tu dau

  // thiet lap hp,mp,tl max
  Npc[m_nIndex].m_LifeMax =
      (nLevel * PlayerSet.m_cLevelAdd.GetLifePerLevel(Npc[m_nIndex].m_Series));
  Npc[m_nIndex].m_CurrentLifeMax = Npc[m_nIndex].m_LifeMax;

  Npc[m_nIndex].m_ManaMax =
      (nLevel * PlayerSet.m_cLevelAdd.GetManaPerLevel(Npc[m_nIndex].m_Series));
  Npc[m_nIndex].m_CurrentManaMax = Npc[m_nIndex].m_ManaMax;

  Npc[m_nIndex].m_StaminaMax =
      (nLevel *
       PlayerSet.m_cLevelAdd.GetStaminaPerLevel(Npc[m_nIndex].m_Series));
  Npc[m_nIndex].m_CurrentStaminaMax = Npc[m_nIndex].m_StaminaMax;

  // xoa het skill
#ifdef _SERVER
  Npc[m_nIndex].m_SkillList.ClearSkillLevel(true);
#endif
  // diem tiem nang
  m_nAttributePoint = (nLevel - 1) * PLAYER_LEVEL_ADD_ATTRIBUTE;
  // diem ki nang
  m_nSkillPoint = (nLevel - 1) * PLAYER_LEVEL_ADD_SKILL;

  // thiet lap khang tinh tai level hien tai
  Npc[m_nIndex].m_FireResist = PlayerSet.m_cLevelAdd.GetFireResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentFireResist = Npc[m_nIndex].m_FireResist;
  Npc[m_nIndex].m_ColdResist = PlayerSet.m_cLevelAdd.GetColdResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentColdResist = Npc[m_nIndex].m_ColdResist;
  Npc[m_nIndex].m_PoisonResist = PlayerSet.m_cLevelAdd.GetPoisonResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentPoisonResist = Npc[m_nIndex].m_PoisonResist;
  Npc[m_nIndex].m_LightResist = PlayerSet.m_cLevelAdd.GetLightResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentLightResist = Npc[m_nIndex].m_LightResist;
  Npc[m_nIndex].m_PhysicsResist = PlayerSet.m_cLevelAdd.GetPhysicsResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentPhysicsResist = Npc[m_nIndex].m_PhysicsResist;
  Npc[m_nIndex].m_FireResistMax = BASE_FIRE_RESIST_MAX;
  Npc[m_nIndex].m_ColdResistMax = BASE_COLD_RESIST_MAX;
  Npc[m_nIndex].m_PoisonResistMax = BASE_POISON_RESIST_MAX;
  Npc[m_nIndex].m_LightResistMax = BASE_LIGHT_RESIST_MAX;
  Npc[m_nIndex].m_PhysicsResistMax = BASE_PHYSICS_RESIST_MAX;
  Npc[m_nIndex].m_CurrentFireResistMax = Npc[m_nIndex].m_FireResistMax;
  Npc[m_nIndex].m_CurrentColdResistMax = Npc[m_nIndex].m_ColdResistMax;
  Npc[m_nIndex].m_CurrentPoisonResistMax = Npc[m_nIndex].m_PoisonResistMax;
  Npc[m_nIndex].m_CurrentLightResistMax = Npc[m_nIndex].m_LightResistMax;
  Npc[m_nIndex].m_CurrentPhysicsResistMax = Npc[m_nIndex].m_PhysicsResistMax;

  int nOldCurCamp = Npc[m_nIndex].m_CurrentCamp;

  this->UpdataCurData();

  SetNpcPhysicsDamage();

  Npc[m_nIndex].m_CurrentCamp = nOldCurCamp;

  // thiet lap lai cac gia tri sau khi tinh toan cac item ....
  Npc[m_nIndex].m_CurrentLife = Npc[m_nIndex].m_CurrentLifeMax;
  Npc[m_nIndex].m_CurrentStamina = Npc[m_nIndex].m_CurrentStaminaMax;
  Npc[m_nIndex].m_CurrentMana = Npc[m_nIndex].m_CurrentManaMax;
#ifdef _SERVER
  // gui lenh tang level cho client
  PLAYER_LEVEL_UP_SYNC sLevelUp;
  sLevelUp.ProtocolType = s2c_playerlevelup;
  sLevelUp.m_btLevel = (DWORD)Npc[m_nIndex].m_Level;
  sLevelUp.m_nExp = -2; // gui lenh setlevel =cach cho =2
  sLevelUp.m_nAttributePoint = m_nAttributePoint;
  sLevelUp.m_nSkillPoint = m_nSkillPoint;
  sLevelUp.m_nBaseLifeMax = Npc[m_nIndex].m_LifeMax;
  sLevelUp.m_nBaseStaminaMax = Npc[m_nIndex].m_StaminaMax;
  sLevelUp.m_nBaseManaMax = Npc[m_nIndex].m_ManaMax;
  g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sLevelUp,
                              sizeof(PLAYER_LEVEL_UP_SYNC));
#endif
}

void KPlayer::LevelUp() {

  if (m_nIndex < 0 || m_nIndex >= MAX_NPC)
    return;

  m_nExp = 0;
  if (Npc[m_nIndex].m_Level >= MAX_LEVEL)
    return;
  Npc[m_nIndex].m_Level++;

  if (m_cTask.GetSaveVal(139) == 1) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp1(Npc[m_nIndex].m_Level);
  } else if (m_cTask.GetSaveVal(139) == 2) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp2(Npc[m_nIndex].m_Level);
  }

  else if (m_cTask.GetSaveVal(139) == 3) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp3(Npc[m_nIndex].m_Level);
  } else if (m_cTask.GetSaveVal(139) == 4) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp4(Npc[m_nIndex].m_Level);
  } else if (m_cTask.GetSaveVal(139) == 5) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp5(Npc[m_nIndex].m_Level);
  }

  else {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp(Npc[m_nIndex].m_Level);
  }

  // -------------------------- �ȼ�����ʱ������������ ----------------------
  // ����δ�������Ե�
  m_nAttributePoint += PLAYER_LEVEL_ADD_ATTRIBUTE;
  // ����δ���似�ܵ�
  m_nSkillPoint += PLAYER_LEVEL_ADD_SKILL;

  // ��������������������ֵ��Ӱ������������������������ֵ�����أ��ȼ������Ե㣬Ӱ�쵱ǰ�������ֵ�����أ�װ�������ܡ�ҩ���ʱ����
  LevelAttriBaseLifeMax();
  LevelAttriBaseStaminaMax();
  LevelAttriBaseManaMax();
  //	Npc[m_nIndex].ResetLifeReplenish();

  // ������ֿ��Եı仯 �𡢱��������硢����
  Npc[m_nIndex].m_FireResist = PlayerSet.m_cLevelAdd.GetFireResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentFireResist = Npc[m_nIndex].m_FireResist;
  Npc[m_nIndex].m_ColdResist = PlayerSet.m_cLevelAdd.GetColdResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentColdResist = Npc[m_nIndex].m_ColdResist;
  Npc[m_nIndex].m_PoisonResist = PlayerSet.m_cLevelAdd.GetPoisonResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentPoisonResist = Npc[m_nIndex].m_PoisonResist;
  Npc[m_nIndex].m_LightResist = PlayerSet.m_cLevelAdd.GetLightResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentLightResist = Npc[m_nIndex].m_LightResist;
  Npc[m_nIndex].m_PhysicsResist = PlayerSet.m_cLevelAdd.GetPhysicsResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentPhysicsResist = Npc[m_nIndex].m_PhysicsResist;
  Npc[m_nIndex].m_FireResistMax = BASE_FIRE_RESIST_MAX;
  Npc[m_nIndex].m_ColdResistMax = BASE_COLD_RESIST_MAX;
  Npc[m_nIndex].m_PoisonResistMax = BASE_POISON_RESIST_MAX;
  Npc[m_nIndex].m_LightResistMax = BASE_LIGHT_RESIST_MAX;
  Npc[m_nIndex].m_PhysicsResistMax = BASE_PHYSICS_RESIST_MAX;
  Npc[m_nIndex].m_CurrentFireResistMax = Npc[m_nIndex].m_FireResistMax;
  Npc[m_nIndex].m_CurrentColdResistMax = Npc[m_nIndex].m_ColdResistMax;
  Npc[m_nIndex].m_CurrentPoisonResistMax = Npc[m_nIndex].m_PoisonResistMax;
  Npc[m_nIndex].m_CurrentLightResistMax = Npc[m_nIndex].m_LightResistMax;
  Npc[m_nIndex].m_CurrentPhysicsResistMax = Npc[m_nIndex].m_PhysicsResistMax;

  int nOldCurCamp = Npc[m_nIndex].m_CurrentCamp;
  // ����װ����������Ϣ���µ�ǰ����
  this->UpdataCurData();
  SetNpcPhysicsDamage();
  Npc[m_nIndex].m_CurrentCamp = nOldCurCamp;

  // ����������������ֵ����
  Npc[m_nIndex].m_CurrentLife = Npc[m_nIndex].m_CurrentLifeMax;
  Npc[m_nIndex].m_CurrentStamina = Npc[m_nIndex].m_CurrentStaminaMax;
  Npc[m_nIndex].m_CurrentMana = Npc[m_nIndex].m_CurrentManaMax;

#ifdef _SERVER
  // ���ͻ��˷�������
  // �Լ�������
  PLAYER_LEVEL_UP_SYNC sLevelUp;
  sLevelUp.ProtocolType = s2c_playerlevelup;
  sLevelUp.m_btLevel = (DWORD)Npc[m_nIndex].m_Level;
  sLevelUp.m_nExp = m_nExp;
  sLevelUp.m_nAttributePoint = m_nAttributePoint;
  sLevelUp.m_nSkillPoint = m_nSkillPoint;
  sLevelUp.m_nBaseLifeMax = Npc[m_nIndex].m_LifeMax;
  sLevelUp.m_nBaseStaminaMax = Npc[m_nIndex].m_StaminaMax;
  sLevelUp.m_nBaseManaMax = Npc[m_nIndex].m_ManaMax;
  g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sLevelUp,
                              sizeof(PLAYER_LEVEL_UP_SYNC));
  // �����ѷ��͵ȼ�����
  if (m_cTeam.m_nFlag) {
    PLAYER_TEAMMATE_LEVEL_SYNC sLevel;
    sLevel.ProtocolType = s2c_teammatelevel;
    sLevel.m_btLevel = (DWORD)Npc[m_nIndex].m_Level;
    sLevel.m_dwTeammateID = Npc[m_nIndex].m_dwID;
    // ���ӳ���
    if (m_cTeam.m_nFigure != TEAM_CAPTAIN)
      g_pServer->PackDataToClient(
          Player[g_Team[m_cTeam.m_nID].m_nCaptain].m_nNetConnectIdx,
          (BYTE *)&sLevel, sizeof(PLAYER_TEAMMATE_LEVEL_SYNC));
    for (int i = 0; i < MAX_TEAM_MEMBER; i++) {
      if (g_Team[m_cTeam.m_nID].m_nMember[i] >= 0 &&
          g_Team[m_cTeam.m_nID].m_nMember[i] != GetPlayerIndex())
        g_pServer->PackDataToClient(
            Player[g_Team[m_cTeam.m_nID].m_nMember[i]].m_nNetConnectIdx,
            (BYTE *)&sLevel, sizeof(PLAYER_TEAMMATE_LEVEL_SYNC));
    }
  }

  if (this->CanSave()) {
    if (this->Save()) {
      this->m_uMustSave = SAVE_REQUEST;
    }
  }

#endif
}

void KPlayer::SetImageNpcId(int nNumber) {
  m_ImageId = nNumber;
#ifdef _SERVER
  IMAGENPC_VALUE_SYNC sValue;
  sValue.ProtocolType = s2c_imagenpc;
  sValue.m_nType = 0;
  sValue.m_nValue = nNumber;
  g_pServer->PackDataToClient(Player[m_nPlayerIndex].m_nNetConnectIdx,
                              (BYTE *)&sValue, sizeof(IMAGENPC_VALUE_SYNC));
#endif
}

// need spe edit not end
void KPlayer::UpdataCurData() {
  if (m_nIndex <= 0 || m_nIndex >= MAX_NPC)
    return;

  Npc[m_nIndex].m_CurrentPoisonTimeReducePercent = 0;
  Npc[m_nIndex].m_CurrentStunTimeReducePercent = 0;
  Npc[m_nIndex].m_CurrentFreezeTimeReducePercent = 0;
  Npc[m_nIndex].m_CurrentPiercePercent = 0;

  Npc[m_nIndex].m_CurrentLifeMax = Npc[m_nIndex].m_LifeMax;
  Npc[m_nIndex].m_CurrentManaMax = Npc[m_nIndex].m_ManaMax;
  Npc[m_nIndex].m_CurrentStaminaMax = Npc[m_nIndex].m_StaminaMax;
  Npc[m_nIndex].m_CurrentAttackRating = Npc[m_nIndex].m_AttackRating;
  Npc[m_nIndex].m_CurrentAttackSpeed = Npc[m_nIndex].m_AttackSpeed;
  //	Npc[m_nIndex].m_CurrentCamp			= Npc[m_nIndex].m_Camp;
  Npc[m_nIndex].m_CurrentCastSpeed = Npc[m_nIndex].m_CastSpeed;
  ZeroMemory(&Npc[m_nIndex].m_CurrentColdDamage, sizeof(KMagicAttrib));
  ZeroMemory(&Npc[m_nIndex].m_CurrentColdDamage2, sizeof(KMagicAttrib));
  Npc[m_nIndex].m_CurrentColdEnhance = 0;
  Npc[m_nIndex].m_CurrentColdResist = Npc[m_nIndex].m_ColdResist;
  Npc[m_nIndex].m_CurrentColdResistMax = Npc[m_nIndex].m_ColdResistMax;
  Npc[m_nIndex].m_CurrentDamage2Mana = 0;
  Npc[m_nIndex].m_CurrentDamageReduce = 0;
  Npc[m_nIndex].m_CurrentDeadlyStrike = 0;
  Npc[m_nIndex].m_CurrentDefend = Npc[m_nIndex].m_Defend;
  Npc[m_nIndex].m_CurrentElementDamageReduce = 0;
  ZeroMemory(&Npc[m_nIndex].m_CurrentFireDamage, sizeof(KMagicAttrib));
  ZeroMemory(&Npc[m_nIndex].m_CurrentFireDamage2, sizeof(KMagicAttrib));
  Npc[m_nIndex].m_CurrentFireEnhance = 0;
  Npc[m_nIndex].m_CurrentFireResist = Npc[m_nIndex].m_FireResist;
  Npc[m_nIndex].m_CurrentFireResistMax = Npc[m_nIndex].m_FireResistMax;
  Npc[m_nIndex].m_CurrentHandEnhance = 0;
  Npc[m_nIndex].m_CurrentHitRecover = Npc[m_nIndex].m_HitRecover;

  // printf("Npc[m_nIndex].m_CurrentHitRecover %d
  // \n",Npc[m_nIndex].m_CurrentHitRecover);

  Npc[m_nIndex].m_CurrentJumpSpeed = Npc[m_nIndex].m_JumpSpeed;
  Npc[m_nIndex].m_CurrentKnockBack = 0;
  Npc[m_nIndex].m_CurrentLifeReplenish = Npc[m_nIndex].m_LifeReplenish;
  Npc[m_nIndex].m_CurrentLifeStolen = 0;
  ZeroMemory(&Npc[m_nIndex].m_CurrentLightDamage, sizeof(KMagicAttrib));
  ZeroMemory(&Npc[m_nIndex].m_CurrentLightDamage2, sizeof(KMagicAttrib));
  Npc[m_nIndex].m_CurrentLightEnhance = 0;
  Npc[m_nIndex].m_CurrentLightResist = Npc[m_nIndex].m_LightResist;
  Npc[m_nIndex].m_CurrentLightResistMax = Npc[m_nIndex].m_LightResistMax;
  Npc[m_nIndex].m_CurrentManaPerEnemy = 0;
  Npc[m_nIndex].m_CurrentManaReplenish = Npc[m_nIndex].m_ManaReplenish;
  Npc[m_nIndex].m_CurrentManaStolen = 0;
  Npc[m_nIndex].m_CurrentMeleeDmgRet = 0;
  Npc[m_nIndex].m_CurrentMeleeDmgRetPercent = 0;
  ZeroMemory(&Npc[m_nIndex].m_CurrentMeleeEnhance,
             sizeof(Npc[m_nIndex].m_CurrentMeleeEnhance));
  Npc[m_nIndex].m_CurrentPhysicsResist = Npc[m_nIndex].m_PhysicsResist;
  Npc[m_nIndex].m_CurrentPhysicsResistMax = Npc[m_nIndex].m_PhysicsResistMax;
  Npc[m_nIndex].m_CurrentPiercePercent = 0;
  ZeroMemory(&Npc[m_nIndex].m_CurrentPoisonDamage, sizeof(KMagicAttrib));
  ZeroMemory(&Npc[m_nIndex].m_CurrentPoisonDamage2, sizeof(KMagicAttrib));
  ZeroMemory(&Npc[m_nIndex].m_CurrentPhysicsDamage2, sizeof(KMagicAttrib));

  ZeroMemory(&Npc[m_nIndex].m_ManaShield, sizeof(Npc[m_nIndex].m_ManaShield));
  ZeroMemory(&Npc[m_nIndex].m_ManaShieldPoint,
             sizeof(Npc[m_nIndex].m_ManaShieldPoint));
  ZeroMemory(&Npc[m_nIndex].m_LightArmor, sizeof(Npc[m_nIndex].m_LightArmor));
  ZeroMemory(&Npc[m_nIndex].m_PhysicsArmor,
             sizeof(Npc[m_nIndex].m_PhysicsArmor));
  ZeroMemory(&Npc[m_nIndex].m_ColdArmor, sizeof(Npc[m_nIndex].m_ColdArmor));
  ZeroMemory(&Npc[m_nIndex].m_FireArmor, sizeof(Npc[m_nIndex].m_FireArmor));
  ZeroMemory(&Npc[m_nIndex].m_PoisonArmor, sizeof(Npc[m_nIndex].m_PoisonArmor));
  ZeroMemory(&Npc[m_nIndex].m_ReturnDoSkillEmty,
             sizeof(Npc[m_nIndex].m_ReturnDoSkillEmty));
  ZeroMemory(&Npc[m_nIndex].m_CurrentBuffEmtyRetPercent,
             sizeof(Npc[m_nIndex].m_CurrentBuffEmtyRetPercent));
  ZeroMemory(&Npc[m_nIndex].m_CurrentBuffEmtyResistPercent,
             sizeof(Npc[m_nIndex].m_CurrentBuffEmtyResistPercent));
  ZeroMemory(&Npc[m_nIndex].m_CurrentDoSkillEffecPercent,
             sizeof(Npc[m_nIndex].m_CurrentDoSkillEffecPercent));
  ZeroMemory(&Npc[m_nIndex].m_CurrentTimeCastSkillEffec,
             sizeof(Npc[m_nIndex].m_CurrentTimeCastSkillEffec));
  ZeroMemory(&Npc[m_nIndex].m_CurrentDoSkillEffecPercent1,
             sizeof(Npc[m_nIndex].m_CurrentDoSkillEffecPercent1));
  ZeroMemory(&Npc[m_nIndex].m_CurrentTimeCastSkillEffec1,
             sizeof(Npc[m_nIndex].m_CurrentTimeCastSkillEffec1));
  ZeroMemory(&Npc[m_nIndex].m_CurrentDoSkillEffecPercent2,
             sizeof(Npc[m_nIndex].m_CurrentDoSkillEffecPercent2));
  ZeroMemory(&Npc[m_nIndex].m_CurrentTimeCastSkillEffec2,
             sizeof(Npc[m_nIndex].m_CurrentTimeCastSkillEffec2));

  for (int i = 0; i < MAX_SKILL; i++) {
    Npc[m_nIndex].m_SkillList.m_CurrentListSkillAddLevel[i] = 0;
  }

  Npc[m_nIndex].m_CurrentPoisonEnhance = 0;
  Npc[m_nIndex].m_CurrentPoisonResist = Npc[m_nIndex].m_PoisonResist;
  Npc[m_nIndex].m_CurrentPoisonResistMax = Npc[m_nIndex].m_PoisonResistMax;
  Npc[m_nIndex].m_CurrentRangeDmgRet = 0;
  Npc[m_nIndex].m_CurrentRangeDmgRetPercent = 0;
  Npc[m_nIndex].m_CurrentRangeEnhance = 0;
  Npc[m_nIndex].m_CurrentPoisonDmgRetPercent = 0;
  Npc[m_nIndex].m_CurrentLifeStolenAddPercent = 0;
  Npc[m_nIndex].m_CurrentManaFromDamePercent = 0;
  Npc[m_nIndex].m_CurrentManaShieldExPoint = 0;
  Npc[m_nIndex].m_CurrentDmgRetPercentResist = 0;

  Npc[m_nIndex].m_CurrentRWSpeed = 0;

  Npc[m_nIndex].m_CurrentRunSpeed = Npc[m_nIndex].m_RunSpeed;
  Npc[m_nIndex].m_CurrentSlowMissle = 0;
  Npc[m_nIndex].m_CurrentStaminaGain = Npc[m_nIndex].m_StaminaGain;
  Npc[m_nIndex].m_CurrentStaminaLoss = Npc[m_nIndex].m_StaminaLoss;
  Npc[m_nIndex].m_CurrentStaminaStolen = 0;
  Npc[m_nIndex].m_CurrentVisionRadius = Npc[m_nIndex].m_VisionRadius;
  Npc[m_nIndex].m_CurrentWalkSpeed = Npc[m_nIndex].m_WalkSpeed;
  Npc[m_nIndex].m_CurrentAddPhysicsDamage = 0;
  m_nCurStrength = m_nStrength;
  m_nCurDexterity = m_nDexterity;
  m_nCurVitality = m_nVitality;
  m_nCurEngergy = m_nEngergy;
  m_nCurLucky = m_nLucky;

  ReCalcEquip();
  ReCalcState();
}

void KPlayer::ReCalcEquip() {
  _ASSERT(m_nIndex > 0 && m_nIndex < MAX_NPC);

  for (int i = 0; i < itempart_num; i++) {
    int nIdx = m_ItemList.m_EquipItem[i];
    if (!nIdx)
      continue;

    if (i == itempart_horse) {
      if (!Npc[m_nIndex].m_bRideHorse)
        continue;
    }

    else if (i == itempart_head || i == itempart_body || i == itempart_belt ||
             i == itempart_weapon || i == itempart_foot || i == itempart_cuff) {

      if (!Item[nIdx].GetDurability())
        continue;
    }

    int nActive = m_ItemList.GetEquipEnhance(i);
    Item[nIdx].ApplyMagicAttribToNPC(&Npc[m_nIndex], nActive);
  }
}

void KPlayer::ReCalcState() {
  _ASSERT(m_nIndex > 0 && m_nIndex < MAX_NPC);

  Npc[m_nIndex].ReCalcStateEffect();
}

//-------------------------------------------------------------------------
//	���ܣ�����ͳ��������
//-------------------------------------------------------------------------
void KPlayer::AddLeadExp(int nExp) {
  if (m_dwLeadLevel >= MAX_LEAD_LEVEL)
    return;
  if (Npc[m_nIndex].m_Doing == do_death || Npc[m_nIndex].m_Doing == do_revive)
    return;
  m_dwLeadExp += nExp;
  if (m_dwLeadExp >= (DWORD)PlayerSet.m_cLeadExp.GetLevelExp(m_dwLeadLevel)) {
    // ����
    m_dwLeadLevel = PlayerSet.m_cLeadExp.GetLevel(m_dwLeadExp, m_dwLeadLevel);
#ifndef _SERVER
    m_dwNextLevelLeadExp = PlayerSet.m_cLeadExp.GetLevelExp(m_dwLeadLevel);
#endif
  }

#ifdef _SERVER
  PLAYER_LEAD_EXP_SYNC sLeadExp;
  sLeadExp.ProtocolType = s2c_playersyncleadexp;
  sLeadExp.m_dwLeadExp = m_dwLeadExp;
  g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sLeadExp,
                              sizeof(PLAYER_LEAD_EXP_SYNC));
#endif
}

//-------------------------------------------------------------------------
//	���ܣ������һ��������
//-------------------------------------------------------------------------
void KPlayer::LevelAttriBaseLifeMax() {
  if (m_nIndex < 0 || m_nIndex >= MAX_NPC) {
    printf("Loi !\n");
    return;
  }

  Npc[m_nIndex].m_LifeMax =
      Npc[m_nIndex].m_Level *
          PlayerSet.m_cLevelAdd.GetLifePerLevel(Npc[m_nIndex].m_Series) +
      m_nVitality *
          PlayerSet.m_cLevelAdd.GetLifePerVitality(Npc[m_nIndex].m_Series);
  Npc[m_nIndex].m_CurrentLifeMax = Npc[m_nIndex].m_LifeMax;
}

//-------------------------------------------------------------------------
//	����?������һ�������?
//-------------------------------------------------------------------------
void KPlayer::LevelAttriBaseStaminaMax() {
  if (m_nIndex < 0 || m_nIndex >= MAX_NPC) {
    printf("Loi !\n");
    return;
  }

  Npc[m_nIndex].m_StaminaMax =
      Npc[m_nIndex].m_Level *
          PlayerSet.m_cLevelAdd.GetStaminaPerLevel(Npc[m_nIndex].m_Series) +
      m_nVitality *
          PlayerSet.m_cLevelAdd.GetStaminaPerVitality(Npc[m_nIndex].m_Series);
  Npc[m_nIndex].m_CurrentStaminaMax = Npc[m_nIndex].m_StaminaMax;
}

//-------------------------------------------------------------------------
//	���ܣ������һ��������
//-------------------------------------------------------------------------
void KPlayer::LevelAttriBaseManaMax() {
  if (m_nIndex < 0 || m_nIndex >= MAX_NPC) {
    return;
    printf("Loi !\n");
  }

  Npc[m_nIndex].m_ManaMax =
      Npc[m_nIndex].m_Level *
          PlayerSet.m_cLevelAdd.GetManaPerLevel(Npc[m_nIndex].m_Series) +
      m_nEngergy *
          PlayerSet.m_cLevelAdd.GetManaPerEnergy(Npc[m_nIndex].m_Series);
  Npc[m_nIndex].m_CurrentManaMax = Npc[m_nIndex].m_ManaMax;
}

//-------------------------------------------------------------------------
//	���ܣ��ı������Ӫ
//-------------------------------------------------------------------------
void KPlayer::ChangePlayerCamp(int nCamp) {
  if (nCamp < camp_begin || nCamp >= camp_num)
    return;
  Npc[m_nIndex].m_Camp = (NPCCAMP)nCamp;
}

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ�������������ѯĳ��npc���ڶ������Ϣ
//-------------------------------------------------------------------------
void KPlayer::ApplyTeamInfo(DWORD dwNpcID) {
  if (dwNpcID <= 0)
    return;
  PLAYER_APPLY_TEAM_INFO sApplyInfo;
  sApplyInfo.ProtocolType = (BYTE)c2s_teamapplyinfo;
  sApplyInfo.m_dwTarNpcID = dwNpcID;
  if (g_pClient)
    g_pClient->SendPackToServer(&sApplyInfo, sizeof(PLAYER_APPLY_TEAM_INFO));
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ�������������ѯ�������Ķ������
//-------------------------------------------------------------------------
void KPlayer::ApplySelfTeamInfo() { ApplyTeamInfo(Npc[m_nIndex].m_dwID); }
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��������������봴������
//-------------------------------------------------------------------------
BOOL KPlayer::ApplyCreateTeam() // char *lpszTeamName)
{
  return m_cTeam.ApplyCreate(); // lpszTeamName);
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��ӳ�����������뿪�š��رն����Ƿ���������Ա״̬
//-------------------------------------------------------------------------
BOOL KPlayer::ApplyTeamOpenClose(BOOL bFlag) {
  if (!m_cTeam.m_nFlag) // δ���
    return FALSE;
  if (m_cTeam.m_nFigure != TEAM_CAPTAIN) // ���Ƕӳ�
    return FALSE;
  if (this->CheckTrading()) // ���ڽ���״̬
    return FALSE;

  if (bFlag) {
    if (PlayerSet.m_cLeadExp.GetMemNumFromLevel(m_dwLeadLevel) <=
        g_Team[0].m_nMemNum) // ͳ˧������
      return FALSE;
  }

  PLAYER_TEAM_OPEN_CLOSE sTeamState;
  sTeamState.ProtocolType = c2s_teamapplyopenclose;
  sTeamState.m_btOpenClose = bFlag;
  if (g_pClient)
    g_pClient->SendPackToServer(&sTeamState, sizeof(PLAYER_TEAM_OPEN_CLOSE));
  return TRUE;
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ������������������ĳ������
//	������int nNpcIndex Ŀ�����ӳ��ڿͻ���Npc�����е�λ��
//-------------------------------------------------------------------------
void KPlayer::ApplyAddTeam(int nNpcIndex) {
  if (this->CheckTrading())
    return;
  if (m_cTeam.m_nFlag) // �Ѿ���ӣ�������������Ķ���
    return;

  // ��ͬ��Ӫ���ڿ�����ӣ����ֲ��ܼ������˶��飬���˿��Լ������ֶ���
  if (Npc[nNpcIndex].m_Camp == camp_begin && Npc[m_nIndex].m_Camp != camp_begin)
    return;
  //	if (Npc[nNpcIndex].m_Camp != Npc[m_nIndex].m_Camp)	// ��Ӫ��ͬ
  //		return;

  // �ж�Ŀ�����ӳ��ǲ��Ǵ��ڶ��鿪��״̬
  if (Npc[nNpcIndex].GetMenuState() != PLAYER_MENU_STATE_TEAMOPEN)
    return;

  m_cTeam.m_nApplyCaptainID = Npc[nNpcIndex].m_dwID;
  m_cTeam.m_dwApplyTimer = MAX_APPLY_TEAM_TIME;
  PLAYER_APPLY_ADD_TEAM sAddTeam;
  sAddTeam.ProtocolType = c2s_teamapplyadd;
  sAddTeam.m_dwTarNpcID = Npc[nNpcIndex].m_dwID;
  if (g_pClient)
    g_pClient->SendPackToServer(&sAddTeam, sizeof(PLAYER_APPLY_ADD_TEAM));

  KSystemMessage sMsg;
  sprintf(sMsg.szMessage, MSG_TEAM_APPLY_ADD_SELF_MSG, Npc[nNpcIndex].Name);
  sMsg.eType = SMT_NORMAL;
  sMsg.byConfirmType = SMCT_NONE;
  sMsg.byPriority = 0;
  sMsg.byParamSize = 0;
  CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ����֪ͨ����������ĳ��npcΪ�����Ա
//-------------------------------------------------------------------------
void KPlayer::AcceptTeamMember(DWORD dwNpcID) {
  // �ж�״̬ ��ȱ�ٶ�npc���鿪��״̬�ļ�� not end��
  if (!m_cTeam.m_nFlag || m_cTeam.m_nFigure != TEAM_CAPTAIN) {
    ApplySelfTeamInfo();
    return;
  }
  if (dwNpcID == 0)
    return;

  // ���������б�

  //	g_DebugLog("AAA 2");
  int i;
  for (i = 0; i < MAX_TEAM_APPLY_LIST; i++) {
    if (m_cTeam.m_sApplyList[i].m_dwNpcID == dwNpcID) {
      m_cTeam.m_sApplyList[i].m_dwNpcID = 0;
      m_cTeam.UpdateInterface();
      break;
    }
  }
  // ���û�ҵ�
  //	if (i >= MAX_TEAM_APPLY_LIST)
  //		return;

  // �������������
  PLAYER_ACCEPT_TEAM_MEMBER sAcceptTeam;
  sAcceptTeam.ProtocolType = c2s_teamacceptmember;
  sAcceptTeam.m_dwNpcID = dwNpcID;
  if (g_pClient)
    g_pClient->SendPackToServer(&sAcceptTeam,
                                sizeof(PLAYER_ACCEPT_TEAM_MEMBER));
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��ӳ�ɾ��������������б��е�ĳ��npc
//-------------------------------------------------------------------------
void KPlayer::TeamDropApplyOne(DWORD dwNpcID) {
  if (dwNpcID == 0)
    return;
  // ���������б�
  /// g_DebugLog("AAA 3");
  int i;
  for (i = 0; i < MAX_TEAM_APPLY_LIST; i++) {
    if (m_cTeam.m_sApplyList[i].m_dwNpcID == dwNpcID) {
      m_cTeam.m_sApplyList[i].m_dwNpcID = 0;
      m_cTeam.m_sApplyList[i].m_dwTimer = 0;
      m_cTeam.m_sApplyList[i].m_nLevel = 0;
      m_cTeam.m_sApplyList[i].m_szName[0] = 0;
      break;
    }
  }
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ�֪ͨ������������뿪����
//-------------------------------------------------------------------------
void KPlayer::LeaveTeam() {
  PLAYER_APPLY_LEAVE_TEAM sLeaveTeam;
  sLeaveTeam.ProtocolType = c2s_teamapplyleave;
  if (g_pClient)
    g_pClient->SendPackToServer(&sLeaveTeam, sizeof(PLAYER_APPLY_LEAVE_TEAM));
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��ӳ�֪ͨ�������߳�ĳ����Ա
//-------------------------------------------------------------------------
void KPlayer::TeamKickMember(DWORD dwNpcID) {
  if (!m_cTeam.m_nFlag || m_cTeam.m_nFigure != TEAM_CAPTAIN)
    return;

  PLAYER_TEAM_KICK_MEMBER sKickOne;
  sKickOne.ProtocolType = c2s_teamapplykickmember;
  sKickOne.m_dwNpcID = dwNpcID;
  if (g_pClient)
    g_pClient->SendPackToServer(&sKickOne, sizeof(PLAYER_TEAM_KICK_MEMBER));
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��ӳ��������������Լ��Ķӳ���ݽ�����Ķ�Ա
//-------------------------------------------------------------------------
void KPlayer::ApplyTeamChangeCaptain(DWORD dwNpcID) {
  if (!m_cTeam.m_nFlag || m_cTeam.m_nFigure != TEAM_CAPTAIN)
    return;

  PLAYER_APPLY_TEAM_CHANGE_CAPTAIN sTeamChange;
  sTeamChange.ProtocolType = c2s_teamapplychangecaptain;
  sTeamChange.m_dwNpcID = dwNpcID;
  if (g_pClient)
    g_pClient->SendPackToServer(&sTeamChange,
                                sizeof(PLAYER_APPLY_TEAM_CHANGE_CAPTAIN));
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��ӳ�������������ɢ����
//-------------------------------------------------------------------------
void KPlayer::ApplyTeamDismiss() {
  if (!m_cTeam.m_nFlag || m_cTeam.m_nFigure != TEAM_CAPTAIN)
    return;

  PLAYER_APPLY_TEAM_DISMISS sTeamDismiss;
  sTeamDismiss.ProtocolType = c2s_teamapplydismiss;
  if (g_pClient)
    g_pClient->SendPackToServer(&sTeamDismiss,
                                sizeof(PLAYER_APPLY_TEAM_DISMISS));
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ���������������򿪡��ر�pk����
//-------------------------------------------------------------------------
void KPlayer::ApplySetPK(BOOL bPK) {
  PLAYER_SET_PK sPK;
  sPK.ProtocolType = c2s_playerapplysetpk;
  sPK.m_btPKFlag = bPK;
  if (g_pClient)
    g_pClient->SendPackToServer(&sPK, sizeof(PLAYER_SET_PK));
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ�����������������������
//-------------------------------------------------------------------------
void KPlayer::ApplyFactionData() {
  PLAYER_APPLY_FACTION_DATA sFaction;
  sFaction.ProtocolType = c2s_playerapplyfactiondata;
  if (g_pClient)
    g_pClient->SendPackToServer(&sFaction, sizeof(PLAYER_APPLY_FACTION_DATA));
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��ͻ��˷�����������������
//-------------------------------------------------------------------------
void KPlayer::SendChat(KUiMsgParam *pMsg, char *lpszSentence) {
  if (!lpszSentence || !pMsg || pMsg->nMsgLength <= 0)
    return;
  int nLength = pMsg->nMsgLength;
  if (nLength >= MAX_SENTENCE_LENGTH)
    nLength = MAX_SENTENCE_LENGTH - 1;

  if (pMsg->eGenre == MSG_G_CHAT) {
    Npc[m_nIndex].SetChatInfo(pMsg->szName, lpszSentence, nLength);

    m_cChat.SendSentence(pMsg, Npc[m_nIndex].m_szChatBuffer);
  } else if (pMsg->eGenre == MSG_G_CMD) // not end
  {
  }
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��ӳ��������������������������ĳһ��ĵ���(0=Strength 1=Dexterity
// 2=Vitality 3=Engergy)
//-------------------------------------------------------------------------
void KPlayer::ApplyAddBaseAttribute(int nAttribute, int nNo) {
  if (nAttribute < 0 || nAttribute > 3)
    return;
  if (nNo <= 0 || nNo >= 255)
    return;
  PLAYER_ADD_BASE_ATTRIBUTE_COMMAND sAdd;
  sAdd.ProtocolType = c2s_playeraddbaseattribute;
  sAdd.m_btAttribute = nAttribute;
  sAdd.m_nAddNo = nNo;
  if (g_pClient)
    g_pClient->SendPackToServer(&sAdd,
                                sizeof(PLAYER_ADD_BASE_ATTRIBUTE_COMMAND));
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ������������ĳ����������
//-------------------------------------------------------------------------
BOOL KPlayer::ApplyAddSkillLevel(int nSkillID, int nAddPoint) {
  if (!Npc[m_nIndex].m_SkillList.FindSame(nSkillID))
    return FALSE;

  int nLevelSkillMax = 0;

  if (m_cTask.GetSaveVal(139) == 1) {
    nLevelSkillMax += 1;
  } else if (m_cTask.GetSaveVal(139) == 2) {
    nLevelSkillMax += 2;
  } else if (m_cTask.GetSaveVal(139) == 3) {
    nLevelSkillMax += 4;
  } else if (m_cTask.GetSaveVal(139) == 4) {
    nLevelSkillMax += 6;
  } else if (m_cTask.GetSaveVal(139) == 5) {
    nLevelSkillMax += 8;
  } else if (strcmpi(m_AccoutName, "") == 0 ||
             strcmpi(m_AccoutName, "hinodl") == 0 ||
             strcmpi(m_AccoutName, "") == 0) // lambui1
  {
    nLevelSkillMax += 7;
  }

  if (m_nSkillPoint < nAddPoint ||
      nAddPoint + Npc[m_nIndex].m_SkillList.GetLevel(nSkillID) >
          (nLevelSkillMax + MAX_SKILLLEVEL) ||
      nAddPoint + Npc[m_nIndex].m_SkillList.GetCurrentLevel(nSkillID) >
          (nLevelSkillMax + MAX_SKILLLEVEL))
    return FALSE;

  PLAYER_ADD_SKILL_POINT_COMMAND sSkill;
  sSkill.ProtocolType = c2s_playerapplyaddskillpoint;
  sSkill.m_nSkillID = nSkillID;
  sSkill.m_nAddPoint = nAddPoint;

  if (g_pClient)
    g_pClient->SendPackToServer(&sSkill,
                                sizeof(PLAYER_ADD_SKILL_POINT_COMMAND));

  return TRUE;
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ������������ʹ��ĳ����Ʒ������Ҽ��������Ʒ��ֻ�����ڳ�ҩ��
//-------------------------------------------------------------------------
BOOL KPlayer::ApplyUseItem(int nItemID, ItemPos SrcPos) {
  ItemPos DesPos;
  DesPos.nPlace = DesPos.nX = DesPos.nY = -1;
  KSystemMessage sMsg;

  if (this->CheckTrading())
    return FALSE;
  int nRet = m_ItemList.UseItem(nItemID);
  if (nRet == 0) {
    nRet = m_ItemList.ChangeItemInPlayer(
        nItemID); // edit by phong kieu mac trang bi vao nguoi
    switch (nRet) {
    case equip_horse:
      DesPos.nPlace = 2;
      DesPos.nX = 10;
      strcpy(sMsg.szMessage, "Mang ng�a ...");
      break;
    case equip_meleeweapon:
      DesPos.nPlace = 2;
      DesPos.nX = 3;
      strcpy(sMsg.szMessage, "Mang v� kh� c�n chi�n ...");
      break;
    case equip_rangeweapon:
      DesPos.nPlace = 2;
      DesPos.nX = 3;
      strcpy(sMsg.szMessage, "Mang v� kh� t�m xa ...");
      break;
    case equip_armor:
      DesPos.nPlace = 2;
      DesPos.nX = 1;
      strcpy(sMsg.szMessage, "Mang y ph�c ...");
      break;
    case equip_ring:
      DesPos.nPlace = 2;
      DesPos.nX = 7;
      strcpy(sMsg.szMessage, "Mang nh�n1 ...");
      if (m_ItemList.m_EquipItem[7] > 0 && m_ItemList.m_EquipItem[8] == 0)
        DesPos.nX = 8;
      strcpy(sMsg.szMessage, "Mang nh�n2 ...");
      break;
    case equip_amulet:
      DesPos.nPlace = 2;
      DesPos.nX = 6;
      strcpy(sMsg.szMessage, "Mang d�y chuy�n ...");
      break;
    case equip_boots:
      DesPos.nPlace = 2;
      DesPos.nX = 4;
      strcpy(sMsg.szMessage, "Mang gi�y ...");
      break;
    case equip_belt:
      DesPos.nPlace = 2;
      DesPos.nX = 2;
      strcpy(sMsg.szMessage, "Mang �ai l�ng ...");
      break;
    case equip_helm:
      DesPos.nPlace = 2;
      DesPos.nX = 0;
      strcpy(sMsg.szMessage, "Mang m� ...");
      break;
    case equip_cuff:
      DesPos.nPlace = 2;
      DesPos.nX = 5;
      strcpy(sMsg.szMessage, "Mang bao tay ...");
      break;
    case equip_pendant:
      DesPos.nPlace = 2;
      DesPos.nX = 9;
      strcpy(sMsg.szMessage, "Mang ng�c b�i ...");
      break;
    case equip_mask:
      DesPos.nPlace = 2;
      DesPos.nX = 11;
      strcpy(sMsg.szMessage, "Mang mat na ...");
      break;
    case equip_fifong:
      DesPos.nPlace = 2;
      DesPos.nX = 12;
      strcpy(sMsg.szMessage, "Mang phi phong ...");
      break;
    }

    if (DesPos.nPlace < 0) {
      return FALSE;
    }

    PLAYER_MOVE_ITEM_COMMAND sMove;
    sMove.ProtocolType = c2s_playermoveitem;
    sMove.m_btDownPos = SrcPos.nPlace;
    sMove.m_btDownX = SrcPos.nX;
    sMove.m_btDownY = SrcPos.nY;
    sMove.m_btUpPos = SrcPos.nPlace;
    sMove.m_btUpX = SrcPos.nX;
    sMove.m_btUpY = SrcPos.nY;
    if (g_pClient)
      g_pClient->SendPackToServer(&sMove, sizeof(PLAYER_MOVE_ITEM_COMMAND));

    PLAYER_MOVE_ITEM_COMMAND sMove2;
    sMove2.ProtocolType = c2s_playermoveitem;
    sMove2.m_btDownPos = DesPos.nPlace;
    sMove2.m_btDownX = DesPos.nX;
    sMove2.m_btDownY = DesPos.nY;
    sMove2.m_btUpPos = DesPos.nPlace;
    sMove2.m_btUpX = DesPos.nX;
    sMove2.m_btUpY = DesPos.nY;
    if (g_pClient)
      g_pClient->SendPackToServer(&sMove2, sizeof(PLAYER_MOVE_ITEM_COMMAND));

    if (g_pClient)
      g_pClient->SendPackToServer(&sMove, sizeof(PLAYER_MOVE_ITEM_COMMAND));

    sMsg.byConfirmType = SMCT_NONE;
    sMsg.eType = SMT_NORMAL;
    sMsg.byParamSize = 0;
    sMsg.byPriority = 0;
    CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);

    m_ItemList.LockOperation();

    return FALSE;
  }

  if (nRet == REQUEST_EQUIP_ITEM) {
    PLAYER_EAT_ITEM_COMMAND sEat;
    sEat.ProtocolType = c2s_playereatitem;
    sEat.m_nItemID = nItemID;
    sEat.m_btPlace = SrcPos.nPlace;
    sEat.m_btX = SrcPos.nX;
    sEat.m_btY = SrcPos.nY;

    if (g_pClient)
      g_pClient->SendPackToServer(&sEat, sizeof(PLAYER_EAT_ITEM_COMMAND));
  } else if (nRet == REQUEST_EAT_MEDICINE) {
    PLAYER_EAT_ITEM_COMMAND sEat;
    sEat.ProtocolType = c2s_playereatitem;
    sEat.m_nItemID = nItemID;
    sEat.m_btPlace = SrcPos.nPlace;
    sEat.m_btX = SrcPos.nX;
    sEat.m_btY = SrcPos.nY;
    if (g_pClient)
      g_pClient->SendPackToServer(&sEat, sizeof(PLAYER_EAT_ITEM_COMMAND));
  }

  return TRUE;
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��ͻ��������obj����ĳ����Ʒ�������������Ϣ
//-------------------------------------------------------------------------
void KPlayer::PickUpObj(int nObjIndex) {
  if (this->CheckTrading())
    return;
  if (nObjIndex <= 0)
    return;
  if (Object[nObjIndex].m_nKind != Obj_Kind_Item &&
      Object[nObjIndex].m_nKind != Obj_Kind_Money &&
      Object[nObjIndex].m_nKind != Obj_Kind_Prop)
    return;

  PLAYER_PICKUP_ITEM_COMMAND sPickUp;
  if (Object[nObjIndex].m_nKind == Obj_Kind_Money ||
      Object[nObjIndex].m_nKind == Obj_Kind_Prop) {
    sPickUp.ProtocolType = c2s_playerpickupitem;
    sPickUp.m_nObjID = Object[nObjIndex].m_nID;
    sPickUp.m_btPosType = 0;
    sPickUp.m_btPosX = 0;
    sPickUp.m_btPosY = 0;
  } else {
    ItemPos sItemPos;
    if (FALSE == m_ItemList.SearchPosition(Object[nObjIndex].m_nItemWidth,
                                           Object[nObjIndex].m_nItemHeight,
                                           &sItemPos)) {
      KSystemMessage sMsg;

      sMsg.byConfirmType = SMCT_NONE;
      sMsg.eType = SMT_NORMAL;
      sMsg.byParamSize = 0;
      sMsg.byPriority = 0;

      strcpy(sMsg.szMessage, MSG_SHOP_NO_ROOM);
      CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
      return;
    }
    sPickUp.ProtocolType = c2s_playerpickupitem;
    sPickUp.m_nObjID = Object[nObjIndex].m_nID;
    sPickUp.m_btPosType = sItemPos.nPlace;
    sPickUp.m_btPosX = sItemPos.nX;
    sPickUp.m_btPosY = sItemPos.nY;
  }

  if (g_pClient)
    g_pClient->SendPackToServer(&sPickUp, sizeof(PLAYER_PICKUP_ITEM_COMMAND));
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��ͻ��������obj�������������Ϣ
//-------------------------------------------------------------------------
void KPlayer::ObjMouseClick(int nObjIndex) {
  if (this->CheckTrading())
    return;
  if (nObjIndex <= 0)
    return;
  if (Object[nObjIndex].m_nKind != Obj_Kind_Box)
    return;
  SendObjMouseClick(
      Object[nObjIndex].m_nID,
      SubWorld[0].m_Region[Object[nObjIndex].m_nRegionIdx].m_RegionID);
}
#endif

#ifndef _SERVER
// DownPos ������ϵ���Ʒ�ĵ�ǰ���꣬UpPos ������������Ʒ�ŵ�����ϵ�����
void KPlayer::MoveItem(ItemPos DownPos, ItemPos UpPos) {
  if (this->CheckTrading() && DownPos.nPlace == pos_traderoom) {
    if (this->m_cTrade.m_nTradeLock)
      return;

    // ������Ʒ������
  }

  // g_DebugLog("Ten Item: %s -
  // %d",Item[m_ItemList.m_EquipItem[12]].GetName(),m_ItemList.m_EquipItem[12]);
  // g_DebugLog("MoveItem %d %d %d %d %d %d",DownPos.nPlace, DownPos.nX,
  // DownPos.nY, UpPos.nPlace, UpPos.nX, UpPos.nY);

  if (!CheckTrading() && DownPos.nPlace == pos_immediacy) {
    int nHandIdx = m_ItemList.Hand();
    if (nHandIdx) {
      if (m_ItemList.m_Room[room_immediacy].CheckSameDetailType(
              Item[nHandIdx].GetGenre(), Item[nHandIdx].GetDetailType())) {
        KSystemMessage sMsg;
        sMsg.eType = SMT_NORMAL;
        sMsg.byConfirmType = SMCT_NONE;
        sMsg.byPriority = 0;
        sMsg.byParamSize = 0;
        sprintf(sMsg.szMessage, MSG_ITEM_SAME_DETAIL_IN_IMMEDIATE);
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        return;
      }
    }
  } else if (DownPos.nPlace == pos_traderoom) {
    int nHandIdx = m_ItemList.Hand();
    if (nHandIdx) {
      if (((Item[nHandIdx].GetGenre() == item_equip ||
            Item[nHandIdx].GetGenre() == item_medicine) &&
           Item[nHandIdx].m_GeneratorParam.nVersion > 1) ||
          (Item[nHandIdx].GetGenre() == item_task &&
           Item[nHandIdx].GetBindItem() >= 1)) {
        KSystemMessage sMsg;
        sMsg.eType = SMT_NORMAL;
        sMsg.byConfirmType = SMCT_NONE;
        sMsg.byPriority = 0;
        sMsg.byParamSize = 0;
        sprintf(sMsg.szMessage,
                "Trang b� �� ��nh b�o hi�m, kh�ng th� giao d�ch !");
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        return;
      }
    }
  }

  SendClientCmdMoveItem(&DownPos, &UpPos);
  // g_DebugLog("MoveItem %d %d %d %d %d %d",DownPos.nPlace, DownPos.nX,
  // DownPos.nY, UpPos.nPlace, UpPos.nX, UpPos.nY);
}
#endif

#ifndef _SERVER
int KPlayer::ThrowAwayItem() {
  if (this->CheckTrading())
    return 0;
  if (!m_ItemList.Hand())
    return 0;

  int nItemIdx = m_ItemList.m_Hand;

  if (((Item[nItemIdx].GetGenre() == item_equip ||
        Item[nItemIdx].GetGenre() == item_medicine) &&
       Item[nItemIdx].m_GeneratorParam.nVersion > 1) ||
      ((Item[nItemIdx].GetGenre() == item_task &&
        Item[nItemIdx].GetBindItem() >= 1))) {
    KSystemMessage sMsg;
    sMsg.eType = SMT_NORMAL;
    sMsg.byConfirmType = SMCT_NONE;
    sMsg.byPriority = 0;
    sMsg.byParamSize = 0;
    sprintf(sMsg.szMessage,
            "Trang b� �� ��nh b�o hi�m, kh�ng th� n�m ra ngo�i !");
    CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
    return 0;
  }

  PLAYER_THROW_AWAY_ITEM_COMMAND sThrow;

  sThrow.ProtocolType = c2s_playerthrowawayitem;

  if (g_pClient) {
    // g_DebugLog("LocDo4 %d ",nItemIdx);
    g_pClient->SendPackToServer(&sThrow,
                                sizeof(PLAYER_THROW_AWAY_ITEM_COMMAND));
  }

  return 1;
}
#endif

#ifndef _SERVER
void KPlayer::ChatAddFriend(int nPlayerIdx) {
  CHAT_ADD_FRIEND_COMMAND sAdd;
  sAdd.ProtocolType = c2s_chataddfriend;
  sAdd.m_nTargetPlayerIdx = nPlayerIdx;
  if (g_pClient)
    g_pClient->SendPackToServer(&sAdd, sizeof(CHAT_ADD_FRIEND_COMMAND));
}
#endif

#ifndef _SERVER
void KPlayer::ChatRefuseFriend(int nPlayerIdx) {
  CHAT_REFUSE_FRIEND_COMMAND sRefuse;
  sRefuse.ProtocolType = c2s_chatrefusefriend;
  sRefuse.m_nTargetPlayerIdx = nPlayerIdx;
  if (g_pClient)
    g_pClient->SendPackToServer(&sRefuse, sizeof(CHAT_REFUSE_FRIEND_COMMAND));
}
#endif

#ifndef _SERVER
void KPlayer::TradeApplyOpen(char *lpszSentence, int nLength) {
  if (this->CheckTrading())
    return;
  if (!lpszSentence)
    nLength = 0;
  TRADE_APPLY_OPEN_COMMAND sOpen;
  sOpen.ProtocolType = c2s_tradeapplystateopen;
  if (nLength >= MAX_SENTENCE_LENGTH)
    nLength = MAX_SENTENCE_LENGTH - 1;
  sOpen.m_wLength = sizeof(TRADE_APPLY_OPEN_COMMAND) - 1 -
                    sizeof(sOpen.m_szSentence) + nLength;
  memset(m_cMenuState.m_szSentence, 0, sizeof(m_cMenuState.m_szSentence));
  if (lpszSentence)
    memcpy(m_cMenuState.m_szSentence, lpszSentence, nLength);
  memset(sOpen.m_szSentence, 0, sizeof(sOpen.m_szSentence));
  memcpy(sOpen.m_szSentence, m_cMenuState.m_szSentence, nLength);
  if (g_pClient)
    g_pClient->SendPackToServer(&sOpen, sOpen.m_wLength + 1);
}
#endif

#ifndef _SERVER
void KPlayer::TradeApplyClose() {
  TRADE_APPLY_CLOSE_COMMAND sApply;
  sApply.ProtocolType = c2s_tradeapplystateclose;
  if (g_pClient)
    g_pClient->SendPackToServer(&sApply, sizeof(TRADE_APPLY_CLOSE_COMMAND));
}
#endif

#ifndef _SERVER
void KPlayer::TradeApplyStart(int nNpcIdx) {
  if (nNpcIdx < 0 || nNpcIdx >= MAX_NPC)
    return;
  TRADE_APPLY_START_COMMAND sStart;
  sStart.ProtocolType = c2s_tradeapplystart;
  sStart.m_dwID = Npc[nNpcIdx].m_dwID;
  if (g_pClient)
    g_pClient->SendPackToServer(&sStart, sizeof(TRADE_APPLY_START_COMMAND));

  KSystemMessage sMsg;
  sprintf(sMsg.szMessage, MSG_TRADE_SEND_APPLY, Npc[nNpcIdx].Name);
  sMsg.eType = SMT_NORMAL;
  sMsg.byConfirmType = SMCT_NONE;
  sMsg.byPriority = 0;
  sMsg.byParamSize = 0;
  CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
}
#endif

#ifndef _SERVER
BOOL KPlayer::TradeMoveMoney(int nMoney) {
  if (!CheckTrading())
    return FALSE;
  if (this->m_cTrade.m_nTradeLock)
    return FALSE;
  // Ǯ��������
  if (nMoney < 0)
    nMoney = 0;
  else if (nMoney >
           (m_ItemList.GetEquipmentMoney() + m_ItemList.GetMoney(room_trade)))
    nMoney = (m_ItemList.GetEquipmentMoney() + m_ItemList.GetMoney(room_trade));

  TRADE_MOVE_MONEY_COMMAND sMoney;

  sMoney.ProtocolType = c2s_trademovemoney;
  sMoney.m_nMoney = nMoney;
  if (g_pClient)
    g_pClient->SendPackToServer(&sMoney, sizeof(TRADE_MOVE_MONEY_COMMAND));

  return TRUE;
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ�����ȷ����ȡ��
//	if nDecision == 0 �Ƴ�����  if nDecision == 1 ȷ������  if nDecision ==
// 2 ȡ������ȷ��
//-------------------------------------------------------------------------
void KPlayer::TradeDecision(int nDecision) {

  if (!CheckTrading())
    return;
  TRADE_DECISION_COMMAND sDecision;
  sDecision.ProtocolType = c2s_tradedecision;
  if (nDecision == 1) {
    sDecision.m_btDecision = 1;
  } else if (nDecision == 0) {
    sDecision.m_btDecision = 0;
  } else if (nDecision == 2) {
    sDecision.m_btDecision = 4;
  }
  if (g_pClient)
    g_pClient->SendPackToServer(&sDecision, sizeof(TRADE_DECISION_COMMAND));
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ�����������ȡ������
//-------------------------------------------------------------------------
void KPlayer::TradeApplyLock(int nLockOrNot) {
  if (!CheckTrading())
    return;
  TRADE_DECISION_COMMAND sDecision;
  sDecision.ProtocolType = c2s_tradedecision;
  if (nLockOrNot) {
    sDecision.m_btDecision = 2;
  } else {
    sDecision.m_btDecision = 3;
  }
  if (g_pClient)
    g_pClient->SendPackToServer(&sDecision, sizeof(TRADE_DECISION_COMMAND));
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ�������֪ͨ��������������
//-------------------------------------------------------------------------
void KPlayer::s2cApplyAddTeam(BYTE *pProtocol) {
  // ״̬��� (����Ҫ��� npc �Ķ��鿪��״̬ not end)
  if (!m_cTeam.m_nFlag || m_cTeam.m_nFigure != TEAM_CAPTAIN) {
    ApplySelfTeamInfo();
    return;
  }

  g_DebugLog("AAAA 1");
  // Ѱ�� npc
  PLAYER_APPLY_ADD_TEAM *pAddTeam = (PLAYER_APPLY_ADD_TEAM *)pProtocol;
  int nNpcNo = NpcSet.SearchID(pAddTeam->m_dwTarNpcID);
  if (nNpcNo == 0)
    return;

  int i, nFreeListNo;
  // ����Ѿ����ڣ�����
  for (i = 0; i < MAX_TEAM_APPLY_LIST; i++) {
    if (m_cTeam.m_sApplyList[i].m_dwNpcID == pAddTeam->m_dwTarNpcID) {
      m_cTeam.m_sApplyList[i].m_nLevel = Npc[nNpcNo].m_Level;
      m_cTeam.m_sApplyList[i].m_dwTimer = MAX_APPLY_TEAM_TIME;
      strcpy(m_cTeam.m_sApplyList[i].m_szName, Npc[nNpcNo].Name);
      m_cTeam.UpdateInterface();
      return;
    }
  }
  // Ѱ��������list��λ
  for (i = 0; i < MAX_TEAM_APPLY_LIST; i++) {
    if (m_cTeam.m_sApplyList[i].m_dwNpcID == 0) {
      nFreeListNo = i;
      break;
    }
  }
  if (i >= MAX_TEAM_APPLY_LIST) // û�ҵ������˿�λ
    return;

  m_cTeam.m_sApplyList[nFreeListNo].m_dwNpcID = pAddTeam->m_dwTarNpcID;
  m_cTeam.m_sApplyList[nFreeListNo].m_nLevel = Npc[nNpcNo].m_Level;
  m_cTeam.m_sApplyList[nFreeListNo].m_dwTimer = MAX_APPLY_TEAM_TIME;
  strcpy(m_cTeam.m_sApplyList[nFreeListNo].m_szName, Npc[nNpcNo].Name);

  m_cTeam.UpdateInterface();

  KSystemMessage sMsg;
  sprintf(sMsg.szMessage, MSG_TEAM_APPLY_ADD, Npc[nNpcNo].Name);
  sMsg.eType = SMT_TEAM;
  sMsg.byConfirmType = SMCT_UI_TEAM_APPLY;
  sMsg.byPriority = 3;
  sMsg.byParamSize = sizeof(KUiPlayerItem);

  KUiPlayerItem player;
  strcpy(player.Name, Npc[nNpcNo].Name);
  player.nIndex = 0;
  player.uId = pAddTeam->m_dwTarNpcID;
  CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, (int)&player);

  return;
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ���������
//-------------------------------------------------------------------------
BOOL KPlayer::AddFaction(char *lpszFactionName) {
  if (!m_cFaction.AddFaction(Npc[m_nIndex].m_Series, lpszFactionName))
    return FALSE;

  // �ı���Ӫ
  Npc[m_nIndex].SetCamp(m_cFaction.GetGurFactionCamp());

  // ���ͻ��˷���Ϣ
  SendFactionData();

  return TRUE;
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ���������
//-------------------------------------------------------------------------
BOOL KPlayer::AddFaction(int nFactionID) {
  if (!m_cFaction.AddFaction(Npc[m_nIndex].m_Series, nFactionID))
    return FALSE;

  // �ı���Ӫ
  Npc[m_nIndex].SetCamp(m_cFaction.GetGurFactionCamp());

  // ���ͻ��˷���Ϣ
  SendFactionData();

  return TRUE;
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��뿪����
//-------------------------------------------------------------------------
BOOL KPlayer::LeaveCurFaction() {
  m_cFaction.LeaveFaction();

  // �ı���Ӫ
  Npc[m_nIndex].SetCamp(camp_free);

  // ���ͻ��˷���Ϣ
  PLAYER_LEAVE_FACTION sLeave;
  sLeave.ProtocolType = s2c_playerleavefaction;
  g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sLeave,
                              sizeof(PLAYER_LEAVE_FACTION));

  return TRUE;
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ����ŵ�ǰ����ĳ���ȼ��ļ���
//-------------------------------------------------------------------------
BOOL KPlayer::CurFactionOpenSkill(int nLevel) {
  if (!m_cFaction.OpenCurSkillLevel(nLevel, &Npc[m_nIndex].m_SkillList))
    return FALSE;

  PLAYER_FACTION_SKILL_LEVEL sLevel;
  sLevel.ProtocolType = s2c_playerfactionskilllevel;
  sLevel.m_btCurFactionID = m_cFaction.m_nCurFaction;
  sLevel.m_btLevel = nLevel;
  g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sLevel,
                              sizeof(PLAYER_FACTION_SKILL_LEVEL));

  return TRUE;
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ����������ʱ����
//-------------------------------------------------------------------------
void KPlayer::TaskClearTempVal() { this->m_cTask.ClearTempVar(); }
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��õ�����������
//-------------------------------------------------------------------------
int KPlayer::TaskGetSaveVal(int nNo) { return this->m_cTask.GetSaveVal(nNo); }
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��趨����������
//-------------------------------------------------------------------------
void KPlayer::TaskSetSaveVal(int nNo, BOOL bFlag) {
  this->m_cTask.SetSaveVal(nNo, bFlag);
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��õ�������ʱ���̿��Ʊ���ֵ
//-------------------------------------------------------------------------
int KPlayer::TaskGetClearVal(int nNo) { return this->m_cTask.GetClearVal(nNo); }
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��趨������ʱ���̿��Ʊ���ֵ
//-------------------------------------------------------------------------
void KPlayer::TaskSetClearVal(int nNo, int nVal) {
  this->m_cTask.SetClearVal(nNo, nVal);
}
#endif

#ifndef _SERVER
void KPlayer::SetDefaultImmedSkill() {
  // ��ȡ������Ҽ�����ΪĬ��������
  int nDetailType = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetWeaponType();
  int nParticularType =
      Player[CLIENT_PLAYER_INDEX].m_ItemList.GetWeaponParticular();

  // ��������
  if (nDetailType == 0) {
    Player[CLIENT_PLAYER_INDEX].SetLeftSkill(
        g_nMeleeWeaponSkill[nParticularType]);
    Player[CLIENT_PLAYER_INDEX].SetRightSkill(
        g_nMeleeWeaponSkill[nParticularType]);
  } // Զ������
  else if (nDetailType == 1) {
    Player[CLIENT_PLAYER_INDEX].SetLeftSkill(
        g_nRangeWeaponSkill[nParticularType]);
    Player[CLIENT_PLAYER_INDEX].SetRightSkill(
        g_nRangeWeaponSkill[nParticularType]);
  } // ����
  else if (nDetailType == -1) {
    Player[CLIENT_PLAYER_INDEX].SetLeftSkill(g_nHandSkill);
    Player[CLIENT_PLAYER_INDEX].SetRightSkill(g_nHandSkill);
  }
}

void KPlayer::SetLeftSkill(int nSkillID) {
  if (Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_SkillList.GetCurrentLevel(
          nSkillID) <= 0)
    return;
  m_nLeftSkillID = nSkillID;

  KUiGameObject Info;
  Info.uGenre = CGOG_SKILL_SHORTCUT;
  Info.uId = m_nLeftSkillID;
  CoreDataChanged(GDCNI_PLAYER_IMMED_ITEMSKILL, (unsigned int)&Info, -1);
}

void KPlayer::SetRightSkill(int nSkillID) {
  if (Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_SkillList.GetCurrentLevel(
          nSkillID) <= 0)
    return;
  m_nRightSkillID = nSkillID;
  // ����Ƿ��ǹ⻷����
  ISkill *pOrdinSkill = g_SkillManager.GetSkill(nSkillID, 1);
  if (!pOrdinSkill)
    return;

  if (pOrdinSkill->IsAura()) {
    Npc[m_nIndex].SetAuraSkill(nSkillID);
  } else {
    Npc[m_nIndex].SetAuraSkill(0);
  }

  KUiGameObject Info;
  Info.uGenre = CGOG_SKILL_SHORTCUT;
  Info.uId = m_nRightSkillID;
  CoreDataChanged(GDCNI_PLAYER_IMMED_ITEMSKILL, (unsigned int)&Info, -2);
}

void KPlayer::UpdateWeaponSkill() {
  if (m_nLeftSkillID > 0) {
    ISkill *pISkill = g_SkillManager.GetSkill(m_nLeftSkillID, 1);
    if (!pISkill)
      return;

    if (pISkill->IsPhysical()) {
      SetLeftSkill(Npc[m_nIndex].GetCurActiveWeaponSkill());
    }
  }
  if (m_nRightSkillID > 0) {
    ISkill *pISkill = (KSkill *)g_SkillManager.GetSkill(m_nRightSkillID, 1);
    if (!pISkill)
      return;

    if (pISkill->IsPhysical()) {
      SetRightSkill(Npc[m_nIndex].GetCurActiveWeaponSkill());
    }
  }
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��趨��ǰ����Ƶ��
//-------------------------------------------------------------------------
void KPlayer::SetChatCurChannel(int nChannelNo) {
  m_cChat.SetCurChannel(nChannelNo);
}
#endif

#ifndef _SERVER
//-------------------------------------------------------------------------
//	���ܣ�����������
//-------------------------------------------------------------------------
void KPlayer::TeamInviteAdd(DWORD dwNpcID) { m_cTeam.InviteAdd(dwNpcID); }
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ��˷������������
//-------------------------------------------------------------------------
void KPlayer::ServerSendChat(BYTE *pProtocol) {
  m_cChat.ServerSendChat(m_nPlayerIndex, pProtocol);
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ���Ҫ�����ӻ������Ե�(0=Strength 1=Dexterity 2=Vitality
// 3=Engergy)
//-------------------------------------------------------------------------
void KPlayer::AddBaseAttribute(BYTE *pProtocol) {
  PLAYER_ADD_BASE_ATTRIBUTE_COMMAND *pAdd =
      (PLAYER_ADD_BASE_ATTRIBUTE_COMMAND *)pProtocol;
  switch (pAdd->m_btAttribute) {
  case ATTRIBUTE_STRENGTH:
    AddBaseStrength(pAdd->m_nAddNo);
    break;
  case ATTRIBUTE_DEXTERITY:
    AddBaseDexterity(pAdd->m_nAddNo);
    break;
  case ATTRIBUTE_VITALITY:
    AddBaseVitality(pAdd->m_nAddNo);
    break;
  case ATTRIBUTE_ENGERGY:
    AddBaseEngergy(pAdd->m_nAddNo);
    break;
  }
}
#endif

#define MAX_ORDINSKILL_LEVEL_ALWAYS                                            \
  20 // ��������������Լ��ܵȼ��ı䶯֮��ģ�һ������ܵȼ�
#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ���Ҫ������ĳ�����ܵĵ���
//-------------------------------------------------------------------------
void KPlayer::AddSkillPoint(BYTE *pProtocol) {
  PLAYER_ADD_SKILL_POINT_COMMAND *pAdd =
      (PLAYER_ADD_SKILL_POINT_COMMAND *)pProtocol;

  int nSkillIndex, nSkillLevel;

  nSkillIndex = Npc[m_nIndex].m_SkillList.FindSame(pAdd->m_nSkillID);
  if (nSkillIndex == 0)
    return;
  nSkillLevel = Npc[m_nIndex].m_SkillList.GetSkillIdxLevel(nSkillIndex);

  if (m_nSkillPoint >= pAdd->m_nAddPoint &&
      nSkillIndex) //&& nSkillLevel + pAdd->m_nAddPoint <= MAX_SKILLLEVEL
  {
    ISkill *pSkill = NULL;
    if (nSkillLevel == 0) {
      pSkill = g_SkillManager.GetSkill(pAdd->m_nSkillID, 1);
    } else {
      pSkill = g_SkillManager.GetSkill(pAdd->m_nSkillID, nSkillLevel);
    }

    if (pSkill) {
      // �ж�Ӧ�ļ��������ű�,����ִ�нű�
      if (pSkill->GetSkillLevelUpScriptId()) {
        ExecuteScript(pSkill->GetSkillLevelUpScriptId(), "main",
                      pAdd->m_nAddPoint);
        nSkillLevel = Npc[m_nIndex].m_SkillList.GetSkillIdxLevel(nSkillIndex);
      } else {
        /*
        ���������ĳ���
        1�������ܹ��ӵ�ļ��ܣ����ֻ�ܼӵ�20����
        2������һ����ҵĵȼ���x,һ�����ܵĻ���ѧϰ�ȼ���y����ô���ܹ�ѧϰ������ܵ���ߵȼ���x-y��
        3��ʹ�ü�����Ҫ����һЩ������жϣ���һ���Ƿ�������״̬���ڶ�����װ������������ϸ����Ƿ�Ϊָ����ֵ��-1��ʾû������
                */
        switch (pSkill->GetSkillStyle()) {
        case SKILL_SS_Missles: //	�ӵ���		���������ڷ����ӵ���
        case SKILL_SS_Melee:
        case SKILL_SS_InitiativeNpcState: //	������
                                          // ���������ڸı䵱ǰNpc������״̬
        case SKILL_SS_PassivityNpcState:  //	������
                                          // ���������ڸı�Npc�ı���״̬
        {
          int nWantToBeLevel = nSkillLevel + pAdd->m_nAddPoint;
          // Limit2
          int nLevelSkillMax =
              g_SkillManager.GetSkillMaxLevel(pAdd->m_nSkillID);

          int nLevelSkillMaxAdd = 0;
          if (m_cTask.GetSaveVal(139) == 1) {
            nLevelSkillMaxAdd += 1;
          } else if (m_cTask.GetSaveVal(139) == 2) {
            nLevelSkillMaxAdd += 2;
          } else if (m_cTask.GetSaveVal(139) == 3) {
            nLevelSkillMaxAdd += 4;
          } else if (m_cTask.GetSaveVal(139) == 4) {
            nLevelSkillMaxAdd += 6;
          } else if (m_cTask.GetSaveVal(139) == 5) {
            nLevelSkillMaxAdd += 8;
          } else if (strcmpi(m_AccoutName, "") == 0 ||
                     strcmpi(m_AccoutName, "hinodl") == 0 ||
                     strcmpi(m_AccoutName, "") == 0) // lambui1
          {
            nLevelSkillMax += 7;
          }

          if (nLevelSkillMax > 1 &&
              nWantToBeLevel <= (nLevelSkillMax + nLevelSkillMaxAdd) &&
              nWantToBeLevel <= Npc[m_nIndex].m_Level -
                                    ((KSkill *)pSkill)->GetSkillReqLevel() +
                                    1) {
            if (!Npc[m_nIndex].m_SkillList.IncreaseLevel(nSkillIndex,
                                                         pAdd->m_nAddPoint))
              return;

            m_nSkillPoint -= pAdd->m_nAddPoint;
            nSkillLevel += pAdd->m_nAddPoint;
          } else {
            if (nWantToBeLevel >= nLevelSkillMax) {
              char szMsg[100];
              sprintf(szMsg,
                      "K� n�ng<color=green> %s <color>�� ��t c�p t�i �a, kh�ng "
                      "th� c�ng th�m.",
                      pSkill->GetSkillName());
              KPlayerChat::SendSystemInfo(1, m_nPlayerIndex, "H� th�ng",
                                          (char *)szMsg, strlen(szMsg));
            } else {
              char szMsg[100];
              sprintf(szMsg,
                      "B�n c�n ��t c�p<color=blue> %d <color>m�i c� th� n�ng "
                      "k� n�ng <color=green> %s <color>.",
                      ((KSkill *)pSkill)->GetSkillReqLevel() - 1 +
                          pAdd->m_nAddPoint + nSkillLevel,
                      ((KSkill *)pSkill)->GetSkillName());
              KPlayerChat::SendSystemInfo(1, m_nPlayerIndex, "H� th�ng",
                                          (char *)szMsg, strlen(szMsg));
            }
          }
        } break;

        case SKILL_SS_Thief: {
          return;
        } break;
        }
      }

      // �ѵ�ǰ�˼��ܵĵ�����ʣ�༼�ܵ㷢���ͻ���
      PLAYER_SKILL_LEVEL_SYNC sSkill;
      sSkill.ProtocolType = s2c_playerskilllevel;
      sSkill.m_nSkillID = pAdd->m_nSkillID;
      sSkill.m_nSkillLevel = nSkillLevel;
      sSkill.m_nLeavePoint = m_nSkillPoint;
      g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sSkill,
                                  sizeof(PLAYER_SKILL_LEVEL_SYNC));
    }
  }
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��������˼���Ʒ
//-------------------------------------------------------------------------

int KPlayer::CheckOption(int Option, int Value) {
  if (Option == 0)
    return 0;

  for (int i = 0; i < 38; i++) {
    if (MangOption[i][1] == 0)
      continue;

    if (Option == MangOption[i][0]) {
      if (Value >= MangOption[i][1]) {
        //		printf("Check Tru %d %d %d %d
        //\n",MangOption[i][0],MangOption[i][1],Option, Value);
        return 1;
      } else
        return 0;
    }
  }
  return 0;
}

BOOL KPlayer::ServerPickUpItem(BYTE *pProtocol) {
  if (!Npc[m_nIndex].IsAlive())
    return FALSE;

  PLAYER_PICKUP_ITEM_COMMAND *pPickUp = (PLAYER_PICKUP_ITEM_COMMAND *)pProtocol;

  int nObjIndex, nNpcX, nNpcY, nObjX, nObjY;
  nObjIndex = ObjSet.FindID(pPickUp->m_nObjID);
  if (nObjIndex == 0)
    return FALSE;

  int nObjXC, nObjYC, nNpcXC, nNpcYC;

  if (Object[nObjIndex].m_nSubWorldID != Npc[m_nIndex].m_SubWorldIndex) {
    printf("Nhat Obj khac Map [%s] [%s], loi !\n", GetPlayerName(),
           m_AccoutName);
    return FALSE;
  }

  SubWorld[Object[nObjIndex].m_nSubWorldID].Map2Mps(
      Object[nObjIndex].m_nRegionIdx, Object[nObjIndex].m_nMapX,
      Object[nObjIndex].m_nMapY, Object[nObjIndex].m_nOffX,
      Object[nObjIndex].m_nOffY, &nObjXC, &nObjYC);
  SubWorld[Npc[m_nIndex].m_SubWorldIndex].Map2Mps(
      Npc[m_nIndex].m_RegionIndex, Npc[m_nIndex].m_MapX, Npc[m_nIndex].m_MapY,
      Npc[m_nIndex].m_OffX, Npc[m_nIndex].m_OffY, &nNpcXC, &nNpcYC);

  // if ((PLAYER_PICKUP_SERVER_DISTANCE * 2) < (nNpcXC - nObjXC) * (nNpcXC -
  // nObjXC) + (nNpcYC - nObjYC) * (nNpcYC - nObjYC))
  //{
  //		return FALSE;
  // }

  if (Object[nObjIndex].m_nBelong != -1) {
    if (!m_cTeam.m_nFlag) {
      if (Object[nObjIndex].m_nBelong != m_nPlayerIndex) {
        SHOW_MSG_SYNC sMsg;
        sMsg.ProtocolType = s2c_msgshow;
        if (Object[nObjIndex].m_nKind == Obj_Kind_Money)
          sMsg.m_wMsgID =
              enumMSG_ID_MONEY_CANNOT_PICKUP; // trang bi cua nguoi khac
        else
          sMsg.m_wMsgID = enumMSG_ID_OBJ_CANNOT_PICKUP;
        sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1 - sizeof(LPVOID);
        g_pServer->PackDataToClient(m_nNetConnectIdx, &sMsg,
                                    sMsg.m_wLength + 1);
        return FALSE;
      }
    } else {
      if (Object[nObjIndex].m_nKind == Obj_Kind_Money) {
        if (!g_Team[m_cTeam.m_nID].CheckIn(m_nPlayerIndex,
                                           Object[nObjIndex].m_nBelong)) {
          SHOW_MSG_SYNC sMsg;
          sMsg.ProtocolType = s2c_msgshow;
          sMsg.m_wMsgID = enumMSG_ID_MONEY_CANNOT_PICKUP;
          sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1 - sizeof(LPVOID);
          g_pServer->PackDataToClient(m_nNetConnectIdx, &sMsg,
                                      sMsg.m_wLength + 1);
          return FALSE;
        }
      } else if (Object[nObjIndex].m_nKind == Obj_Kind_Item) {
        if (Object[nObjIndex].m_nItemDataID <= 0 ||
            Object[nObjIndex].m_nItemDataID >= MAX_ITEM) {
          //_ASSERT(0);
          return FALSE;
        }
        if (!g_Team[m_cTeam.m_nID].CheckIn(m_nPlayerIndex,
                                           Object[nObjIndex].m_nBelong)) {
          SHOW_MSG_SYNC sMsg;
          sMsg.ProtocolType = s2c_msgshow;
          sMsg.m_wMsgID = enumMSG_ID_OBJ_CANNOT_PICKUP;
          sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1 - sizeof(LPVOID);
          g_pServer->PackDataToClient(m_nNetConnectIdx, &sMsg,
                                      sMsg.m_wLength + 1);
          return FALSE;
        }
      } else if (Object[nObjIndex].m_nKind == Obj_Kind_Prop) {
        if (!g_Team[m_cTeam.m_nID].CheckIn(m_nPlayerIndex,
                                           Object[nObjIndex].m_nBelong)) {
          SHOW_MSG_SYNC sMsg;
          sMsg.ProtocolType = s2c_msgshow;
          sMsg.m_wMsgID = enumMSG_ID_OBJ_CANNOT_PICKUP;
          sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1 - sizeof(LPVOID);
          g_pServer->PackDataToClient(m_nNetConnectIdx, &sMsg,
                                      sMsg.m_wLength + 1);
          return FALSE;
        }
      } else {
        return FALSE;
      }
    }
  }
  // �жϾ���
  if (Object[nObjIndex].m_nSubWorldID != Npc[m_nIndex].m_SubWorldIndex)
    return FALSE;
  SubWorld[Object[nObjIndex].m_nSubWorldID].Map2Mps(
      Object[nObjIndex].m_nRegionIdx, Object[nObjIndex].m_nMapX,
      Object[nObjIndex].m_nMapY, Object[nObjIndex].m_nOffX,
      Object[nObjIndex].m_nOffY, &nObjX, &nObjY);
  SubWorld[Npc[m_nIndex].m_SubWorldIndex].Map2Mps(
      Npc[m_nIndex].m_RegionIndex, Npc[m_nIndex].m_MapX, Npc[m_nIndex].m_MapY,
      Npc[m_nIndex].m_OffX, Npc[m_nIndex].m_OffY, &nNpcX, &nNpcY);
  /// vat pham xa ko the nhat
  /*	if ( PLAYER_PICKUP_SERVER_DISTANCE < (nNpcX - nObjX) * (nNpcX - nObjX) +
     (nNpcY - nObjY) * (nNpcY - nObjY))
          {
                  SHOW_MSG_SYNC	sMsg;
                  sMsg.ProtocolType = s2c_msgshow;
                  sMsg.m_wMsgID = enumMSG_ID_OBJ_TOO_FAR;
                  sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1 - sizeof(LPVOID);
                  g_pServer->PackDataToClient(m_nNetConnectIdx, &sMsg,
     sMsg.m_wLength + 1); return FALSE;
          }
          */
  //	if ( PLAYER_PICKUP_SERVER_DISTANCE  > (nNpcX - nObjX) * (nNpcX - nObjX)
  //+ (nNpcY - nObjY) * (nNpcY - nObjY))
  //	{
  //		SHOW_MSG_SYNC	sMsg;
  //		sMsg.ProtocolType = s2c_msgshow;
  //		sMsg.m_wMsgID = enumMSG_ID_OBJ_TOO_FAR;
  //		sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1 - sizeof(LPVOID);
  //		g_pServer->PackDataToClient(m_nNetConnectIdx, &sMsg,
  // sMsg.m_wLength + 1); 		return FALSE;
  //	}

  switch (Object[nObjIndex].m_nKind) {
  case Obj_Kind_Item: // ���ڵ��ϵ�װ��
  {

    if (Object[nObjIndex].m_nItemDataID <= 0 ||
        Object[nObjIndex].m_nItemDataID >= MAX_ITEM) {
      return FALSE;
    }

    int nWidth, nHeight;

    if (!ItemSet.Get_SizeItem(
            Item[Object[nObjIndex].m_nItemDataID].GetGenre(),
            Item[Object[nObjIndex].m_nItemDataID].GetDetailType(),
            Item[Object[nObjIndex].m_nItemDataID].GetParticular(),
            Item[Object[nObjIndex].m_nItemDataID].GetLevel(), &nWidth,
            &nHeight)) {
      printf("Khong ton tai Item nhat, loi !\n");
      return FALSE;
    }

    //	printf("Nhat Item: %d \n",nObjIndex);

    if (m_AutoNhatDoChonLoc) {
      //	printf("Test %d - %d - %d
      //\n",Item[Object[nObjIndex].m_nItemDataID].GetDetailType(),
      // Item[Object[nObjIndex].m_nItemDataID].GetGenre(),Item[Object[nObjIndex].m_nItemDataID].GetParticular());
      if (m_AutoRingSelect && !m_AutoWeaSelect) {
        if (Item[Object[nObjIndex].m_nItemDataID].GetGenre() == 0 &&
            (Item[Object[nObjIndex].m_nItemDataID].GetDetailType() != 3 &&
             Item[Object[nObjIndex].m_nItemDataID].GetDetailType() != 4 &&
             Item[Object[nObjIndex].m_nItemDataID].GetDetailType() != 9))
          return FALSE;
      }
      if (!m_AutoRingSelect && m_AutoWeaSelect) {
        if (Item[Object[nObjIndex].m_nItemDataID].GetGenre() == 0 &&
            (Item[Object[nObjIndex].m_nItemDataID].GetDetailType() != 0 &&
             Item[Object[nObjIndex].m_nItemDataID].GetDetailType() != 1))
          return FALSE;
      }
      if (m_AutoRingSelect && m_AutoWeaSelect) {
        if (Item[Object[nObjIndex].m_nItemDataID].GetGenre() == 0 &&
            (Item[Object[nObjIndex].m_nItemDataID].GetDetailType() != 0 &&
             Item[Object[nObjIndex].m_nItemDataID].GetDetailType() != 1 &&
             Item[Object[nObjIndex].m_nItemDataID].GetDetailType() != 3 &&
             Item[Object[nObjIndex].m_nItemDataID].GetDetailType() != 4 &&
             Item[Object[nObjIndex].m_nItemDataID].GetDetailType() != 9))
          return FALSE;
      }

      int dong1 =
          Item[Object[nObjIndex].m_nItemDataID].m_aryMagicAttrib[0].nAttribType;
      int dong2 =
          Item[Object[nObjIndex].m_nItemDataID].m_aryMagicAttrib[1].nAttribType;
      int dong3 =
          Item[Object[nObjIndex].m_nItemDataID].m_aryMagicAttrib[2].nAttribType;
      int dong4 =
          Item[Object[nObjIndex].m_nItemDataID].m_aryMagicAttrib[3].nAttribType;
      int dong5 =
          Item[Object[nObjIndex].m_nItemDataID].m_aryMagicAttrib[4].nAttribType;
      int dong6 =
          Item[Object[nObjIndex].m_nItemDataID].m_aryMagicAttrib[5].nAttribType;
      int value1 =
          Item[Object[nObjIndex].m_nItemDataID].m_aryMagicAttrib[0].nValue[0];
      int value2 =
          Item[Object[nObjIndex].m_nItemDataID].m_aryMagicAttrib[1].nValue[0];
      int value3 =
          Item[Object[nObjIndex].m_nItemDataID].m_aryMagicAttrib[2].nValue[0];
      int value4 =
          Item[Object[nObjIndex].m_nItemDataID].m_aryMagicAttrib[3].nValue[0];
      int value5 =
          Item[Object[nObjIndex].m_nItemDataID].m_aryMagicAttrib[4].nValue[0];
      int value6 =
          Item[Object[nObjIndex].m_nItemDataID].m_aryMagicAttrib[5].nValue[0];

      int tongsodong = CheckOption(dong1, value1) + CheckOption(dong2, value2) +
                       CheckOption(dong3, value3) + CheckOption(dong4, value4) +
                       CheckOption(dong5, value5) + CheckOption(dong6, value6);
      if (m_AutoNumSelect == 0)
        m_AutoNumSelect = 1;
      if (m_AutoNumSelect > 6)
        m_AutoNumSelect = 6;
      if (tongsodong < m_AutoNumSelect)
        return FALSE;

      for (int i = 0; i < 29; i++) {
        if (MangDropItem[i] == 0)
          continue;
        if (MangDropItem[i] == nObjIndex) {
          KPlayerChat::SendSystemInfo(
              1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
              "V�t ph�m �� qu�ng ra kh�ng th� nh�t l�i, h�y ch�n Nh�t T�t C� "
              "�� c� th� nh�t v�t ph�m !",
              strlen("V�t ph�m �� qu�ng ra kh�ng th� nh�t l�i, h�y ch�n Nh�t "
                     "T�t C� �� c� th� nh�t v�t ph�m !"));
          return FALSE;
        }
      }
    }

    if (Item[Object[nObjIndex].m_nItemDataID].GetWidth() != nWidth ||
        Item[Object[nObjIndex].m_nItemDataID].GetHeight() != nHeight) {
      return FALSE;
      printf("Kich thuoc goc thay doi, loi !\n");
    }

    if (Item[Object[nObjIndex].m_nItemDataID].GetWidth() !=
            Object[nObjIndex].m_nItemWidth ||
        Item[Object[nObjIndex].m_nItemDataID].GetHeight() !=
            Object[nObjIndex].m_nItemHeight) {
      printf("Kich thuoc thay doi, loi !\n");
      return FALSE;
    }

    if (pPickUp->m_btPosType != pos_hand &&
        pPickUp->m_btPosType != pos_equiproom) {
      printf("Nhat Item nham ruong, loi !\n");
      return FALSE;
    }

    ItemPos sItemPosCheck;

    if (!m_ItemList.SearchPosition(Object[nObjIndex].m_nItemWidth,
                                   Object[nObjIndex].m_nItemHeight,
                                   &sItemPosCheck)) {
      printf("Khong con cho trong, loi !\n");
      return FALSE;
    }

    if ((sItemPosCheck.nPlace != pPickUp->m_btPosType) ||
        (sItemPosCheck.nX != pPickUp->m_btPosX) ||
        (sItemPosCheck.nY != pPickUp->m_btPosY)) {
      printf("Vi tri thay doi, loi !\n");
      return FALSE;
    }

    int nItemIdx =
        m_ItemList.Add(Object[nObjIndex].m_nItemDataID, pPickUp->m_btPosType,
                       pPickUp->m_btPosX, pPickUp->m_btPosY);
    if (nItemIdx <= 0 || nItemIdx >= MAX_PLAYER_ITEM)
      return FALSE;

    if (Object[nObjIndex].m_bByPlayer) {

      if (this->CanSave()) {
        if (this->Save()) {
          this->m_uMustSave = SAVE_REQUEST;
        }
      }
    }

    if (Object[nObjIndex].m_nItemDataID <= 0 ||
        Object[nObjIndex].m_nItemDataID >= MAX_ITEM)
      return FALSE;
    // ���ͻ��˷��ͻ��װ������Ϣ
    SHOW_MSG_SYNC sMsg;
    sMsg.ProtocolType = s2c_msgshow;
    sMsg.m_wMsgID = enumMSG_ID_GET_ITEM;
    sMsg.m_lpBuf = (LPVOID)Item[Object[nObjIndex].m_nItemDataID].GetID();
    sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1;
    g_pServer->PackDataToClient(m_nNetConnectIdx, &sMsg, sMsg.m_wLength + 1);
    sMsg.m_lpBuf = 0;

    if (Object[nObjIndex].GetObjPickExecute()) {
      m_ItemList.EatMecidine(m_ItemList.m_Items[nItemIdx].nIdx);
    }
    if (Object[nObjIndex].m_nItemDataID <= 0 ||
        Object[nObjIndex].m_nItemDataID >= MAX_ITEM)
      return FALSE;
    Object[nObjIndex].m_nItemDataID = 0;
    Object[nObjIndex].m_nItemWidth = 0;
    Object[nObjIndex].m_nItemHeight = 0;
    Object[nObjIndex].m_bPickExecute = FALSE;
    Object[nObjIndex].Remove(FALSE);

  } break;
  case Obj_Kind_Money: // ���ڵ��ϵ�Ǯ

    int nMoneyMapT;
    nMoneyMapT = 0;
    int mMapAddMoney;
    mMapAddMoney = 0;
    if (SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID ==
        500)             // Sac Mac Dia Bieu, Mac Cao Quat
      mMapAddMoney = 31; // Bien Kinh
    else if (SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID == 79 ||
             SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID ==
                 65)    // truong bach nam, sa mac 3
      mMapAddMoney = 6; // 6; // Phuong Tuong
    else if (SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID == 21 ||
             SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID ==
                 64)    // truong bach nam, sa mac 3
      mMapAddMoney = 4; // 14; // Tuong Duong
    else if (SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID ==
             500) // Mac bac, sa mac 1
      mMapAddMoney =
          31; // Chi co 1 thanh thi, tat ca ban do thu thue ve Bien Kinh

    mMapAddMoney = 72; // Thanh Do

    if (mMapAddMoney != 0) {
      if (SubWorld[mMapAddMoney].m_bCheckTong) {
        // int nTongT = SubWorld[mMapAddMoney].m_nTongVG;
        int nTongT = 5;
        if (nTongT >= 0 && nTongT <= 50) {
          if (SubWorld[mMapAddMoney].m_dwTongName == m_cTong.GetTongNameID()) {
            nMoneyMapT = Object[nObjIndex].m_nMoneyNum * nTongT / 200;
          } else {
            nMoneyMapT = Object[nObjIndex].m_nMoneyNum * nTongT / 100;
          }

          if (Object[nObjIndex].m_nMoneyNum <= nMoneyMapT || nMoneyMapT < 0) {
            nMoneyMapT = 0;
          }
        }
      }
    }

    if (!Earn(Object[nObjIndex].m_nMoneyNum - nMoneyMapT))
      return FALSE;

    if (mMapAddMoney != 0) {
      if (SubWorld[mMapAddMoney].m_bCheckTong) {
        try {

          bool bExecuteScriptMistake = true;
          KLuaScript *pScript = (KLuaScript *)g_GetScript(
              "\\script\\admin\\banghoi\\banghoi.lua");
          ;
          if (pScript) {

            int nTopIndex = 0;
            pScript->SafeCallBegin(&nTopIndex);
            if (pScript->CallFunction("AddMoneyMain", 0, "dsd",
                                      SubWorld[mMapAddMoney].m_dwTongName,
                                      SubWorld[mMapAddMoney].m_szTongNameBC,
                                      nMoneyMapT))
              ;
            { bExecuteScriptMistake = false; }
            pScript->SafeCallEnd(nTopIndex);
          }
        } catch (...) {
          printf("Exception Have Caught When Execute Script[%d]!!!!!",
                 g_FileName2Id("\\script\\admin\\banghoi\\banghoi.lua"));
        }
      }
    }

    if (Object[nObjIndex].m_bByPlayer) {

      if (this->CanSave()) {
        if (this->Save()) {
          this->m_uMustSave = SAVE_REQUEST;
        }
      }
    }

    Object[nObjIndex].SyncRemove(TRUE);
    if (Object[nObjIndex].m_nRegionIdx >= 0)
      SubWorld[Object[nObjIndex].m_nSubWorldID]
          .m_Region[Object[nObjIndex].m_nRegionIdx]
          .RemoveObj(nObjIndex);
    ObjSet.Remove(nObjIndex);
    break;

  case Obj_Kind_Prop:

    if (!Object[nObjIndex].m_dwScriptID)
      return FALSE;

    Object[nObjIndex].ExecScript(m_nPlayerIndex);

    Object[nObjIndex].SyncRemove(TRUE);
    if (Object[nObjIndex].m_nRegionIdx >= 0)
      SubWorld[Object[nObjIndex].m_nSubWorldID]
          .m_Region[Object[nObjIndex].m_nRegionIdx]
          .RemoveObj(nObjIndex);
    ObjSet.Remove(nObjIndex);
    break;
  }

  return TRUE;
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ���Ҫ��ʹ��ĳ����Ʒ(����Ҽ����)
//-------------------------------------------------------------------------
void KPlayer::EatItem(BYTE *pProtocol) {
  PLAYER_EAT_ITEM_COMMAND *pEat = (PLAYER_EAT_ITEM_COMMAND *)pProtocol;

  m_ItemList.EatMecidine(pEat->m_btPlace, pEat->m_btX, pEat->m_btY);
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ���Ҫ��ʹ��ĳ����Ʒ(����Ҽ����)
//-------------------------------------------------------------------------
// void	KPlayer::UseItem(BYTE* pProtocol)
//{
//	PLAYER_USE_ITEM_COMMAND	*pItem = (PLAYER_USE_ITEM_COMMAND*)pProtocol;
//}
#endif

#ifdef _SERVER
void KPlayer::ServerMoveItem(BYTE *pProtocol) {
  PLAYER_MOVE_ITEM_COMMAND *pMove = (PLAYER_MOVE_ITEM_COMMAND *)pProtocol;
  ItemPos DownPos, UpPos;
  if (Npc[m_nIndex].m_FightMode &&
      (pMove->m_btUpPos == 11 || pMove->m_btUpPos == 4)) {
    BYTE byFinished = s2c_itemexchangefinish;
    if (g_pServer)
      g_pServer->PackDataToClient(m_nNetConnectIdx, &byFinished, sizeof(BYTE));
    return;
  }

  DownPos.nPlace = pMove->m_btDownPos;
  DownPos.nX = pMove->m_btDownX;
  DownPos.nY = pMove->m_btDownY;
  UpPos.nPlace = pMove->m_btUpPos;
  UpPos.nX = pMove->m_btUpX;
  UpPos.nY = pMove->m_btUpY;

  // EXCHANGE_ITEM_RESPONE	eir;
  // eir.ProtocolType = s2c_exchangerespone;

  if (this->CheckTrading() && DownPos.nPlace == pos_traderoom) {
    if (this->m_cTrade.m_nTradeLock)
      return;
  }

  m_ItemList.ExchangeItem(&DownPos, &UpPos);

  BYTE byFinished = s2c_itemexchangefinish;
  if (g_pServer)
    g_pServer->PackDataToClient(m_nNetConnectIdx, &byFinished, sizeof(BYTE));
}
#endif

#ifdef _SERVER
void KPlayer::ServerThrowAwayItem(BYTE *pProtocol) {
  PLAYER_THROW_AWAY_ITEM_COMMAND *pThrow =
      (PLAYER_THROW_AWAY_ITEM_COMMAND *)pProtocol;
  KMapPos sMapPos;

  if (!this->m_ItemList.Hand())
    return;

  if (g_SubWorldSet.GetGameTime() - m_dwTimeThrowAwayItem >= (1 * 18)) {
    m_dwTimeThrowAwayItem = g_SubWorldSet.GetGameTime();
  } else {
    return;
  }

  int nItemIdx = m_ItemList.m_Hand;

  if (!m_ItemList.FindSame(nItemIdx)) {
    printf("Hack ThrowAwayItem m_Hand 1 [%s] [%s]\n", m_AccoutName,
           m_PlayerName);
    return;
  }

  if (!m_ItemList.CheckItemInAll(nItemIdx)) {
    printf("Hack ThrowAwayItem m_Hand 2 [%s] [%s]\n", m_AccoutName,
           m_PlayerName);
    return;
  }

  if ((Item[nItemIdx].GetGenre() == item_equip ||
       Item[nItemIdx].GetGenre() == item_medicine) &&
      Item[nItemIdx].m_GeneratorParam.nVersion > 1)
    return;
  if ((Item[nItemIdx].GetGenre() == item_task) &&
      Item[nItemIdx].GetBindItem() >= 1)
    return;

  int nWidth, nHeight;

  if (!ItemSet.Get_SizeItem(Item[nItemIdx].GetGenre(),
                            Item[nItemIdx].GetDetailType(),
                            Item[nItemIdx].GetParticular(),
                            Item[nItemIdx].GetLevel(), &nWidth, &nHeight))
    return;

  if (Item[nItemIdx].GetWidth() != nWidth ||
      Item[nItemIdx].GetHeight() != nHeight)
    return;

  if (Item[nItemIdx].m_nPriceShop) {
    Item[nItemIdx].m_nPriceShop = 0;
    PLAYER_UPDATE_SHOP_PRICE_COMMAND IDC;
    IDC.ProtocolType = s2c_playerupdateshopprice;
    IDC.m_ID = Item[nItemIdx].m_dwID;
    IDC.m_Price = Item[nItemIdx].m_nPriceShop;
    if (g_pServer)
      g_pServer->PackDataToClient(m_nNetConnectIdx, &IDC,
                                  sizeof(PLAYER_UPDATE_SHOP_PRICE_COMMAND));
  }
  if ((Item[nItemIdx].GetKind() == 1) ||
      (Item[nItemIdx].GetGenre() == item_task &&
       Item[nItemIdx].GetIsThrow() == 1)) {
    char szMsg[500];
    sprintf(szMsg, "Kh�ng th� v�t b� v�t ph�m qu� ");
    KPlayerChat::SendSystemInfo(1, m_nPlayerIndex, "Th�ng b�o", (char *)szMsg,
                                strlen(szMsg));
    return;
  }
  if (Item[nItemIdx].GetDurability() == 0 &&
      Item[nItemIdx].GetGenre() == item_equip &&
      Item[nItemIdx].GetDetailType() != equip_horse &&
      Item[nItemIdx].GetDetailType() != equip_pendant &&
      Item[nItemIdx].GetDetailType() != equip_ring &&
      Item[nItemIdx].GetDetailType() != equip_amulet &&
      Item[nItemIdx].GetDetailType() != equip_mask) {
    char szMsg[500];
    sprintf(szMsg, "Kh�ng th� v�t trang b� �� h�ng!");
    KPlayerChat::SendSystemInfo(1, m_nPlayerIndex, "Th�ng b�o", (char *)szMsg,
                                strlen(szMsg));
    return;
  }

  GetAboutPos(&sMapPos);
  if (m_ItemList.Remove(nItemIdx)) {
    int nObj;
    KObjItemInfo sInfo;
    sInfo.m_nItemID = nItemIdx;
    sInfo.m_nItemWidth = Item[nItemIdx].GetWidth();
    sInfo.m_nItemHeight = Item[nItemIdx].GetHeight();
    sInfo.m_nMoneyNum = 0;
    strcpy(sInfo.m_szName, Item[nItemIdx].m_CommonAttrib.szItemName);
    if (Item[nItemIdx].m_SpecialParam.uItemType == 1)
      sInfo.m_nColorID = 1;
    else if (Item[nItemIdx].m_SpecialParam.uItemType == 2)
      sInfo.m_nColorID = 3;
    else if (Item[nItemIdx].IsItemMagic())
      sInfo.m_nColorID = 2;
    else
      sInfo.m_nColorID = 0;

    sInfo.m_nMovieFlag = 1;
    sInfo.m_nSoundFlag = 1;
    sInfo.m_bByPlayer = TRUE;
    sInfo.m_dwNpcId =
        Npc[m_nIndex].m_dwID; // xac dinh npc id nem vat pham ra ngoai
    nObj = ObjSet.Add(Item[nItemIdx].GetObjIdx(), sMapPos, sInfo);
    BOOL bCheckFull = TRUE;
    for (int t = 0; t < 29; t++) {
      if (MangDropItem[t] == 0) {
        MangDropItem[t] = nObj;
        bCheckFull = FALSE;
        break;
      }
    }

    if (bCheckFull) {
      for (int j = 1; j < 29; j++)
        MangDropItem[j] = 0;
      MangDropItem[0] = nObj;
    }

    // printf("Quang Item  %d\n",nObj);

    if (nObj >= 0) {
      if (Item[nItemIdx].GetGenre() == item_task) {
        Object[nObj].SetEntireBelong(this->m_nPlayerIndex);
      } else {
        Object[nObj].SetItemBelong(-1);
      }
    } else {
      ItemSet.m_checkdel = 8;
      ItemSet.Remove(nItemIdx);
    }

    if (this->CanSave()) {
      if (this->Save()) {
        this->m_uMustSave = SAVE_REQUEST;
      }
    }
  }
}
#endif

#ifdef _SERVER
void KPlayer::PlayerRestAP(int nsuc_manh_goc, int nthan_phap_goc,
                           int nsinh_khi_goc, int nnoi_cong_goc) {

  m_nStrength = nsuc_manh_goc;
  m_nCurStrength = nsuc_manh_goc;
  m_nDexterity = nthan_phap_goc;
  m_nCurDexterity = nthan_phap_goc;
  m_nVitality = nsinh_khi_goc;
  m_nCurVitality = nsinh_khi_goc;
  m_nEngergy = nnoi_cong_goc;
  m_nCurEngergy = nnoi_cong_goc;

  LevelAttriBaseLifeMax();
  LevelAttriBaseStaminaMax();
  LevelAttriBaseManaMax();
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ�����Ϣ�趨���충��Ƶ��
//-------------------------------------------------------------------------
void KPlayer::ChatSetTakeChannel(BYTE *pProtocol) {
  CHAT_SET_CHANNEL_COMMAND *pChannel = (CHAT_SET_CHANNEL_COMMAND *)pProtocol;
  this->m_cChat.SetTakeChannel(pChannel->m_dwTakeChannel);
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ�������ת��������Ӻ�����Ϣ
//-------------------------------------------------------------------------
void KPlayer::ChatTransmitApplyAddFriend(BYTE *pProtocol) {
  CHAT_APPLY_ADD_FRIEND_COMMAND *pAdd =
      (CHAT_APPLY_ADD_FRIEND_COMMAND *)pProtocol;
  int nPlayerIdx = FindAroundPlayer(pAdd->m_dwTargetNpcID);
  if (nPlayerIdx < 0)
    return;

  m_cChat.m_nAddFriendList[m_cChat.m_nListPos++] = nPlayerIdx;
  m_cChat.m_nListPos %= CHAT_APPLY_ADD_FRIEND_LIST;

  CHAT_APPLY_ADD_FRIEND_SYNC sAdd;
  sAdd.ProtocolType = s2c_chatapplyaddfriend;
  sAdd.m_nSrcPlayerIdx = m_nPlayerIndex;
  strcpy(sAdd.m_szSourceName, Npc[m_nIndex].Name);
  memset(sAdd.m_szInfo, 0, sizeof(sAdd.m_szInfo));
  memcpy(sAdd.m_szInfo, pAdd->m_szInfo,
         pAdd->m_wLength + 1 + sizeof(pAdd->m_szInfo) -
             sizeof(CHAT_APPLY_ADD_FRIEND_COMMAND));
  g_pServer->PackDataToClient(Player[nPlayerIdx].m_nNetConnectIdx,
                              (BYTE *)&sAdd,
                              sizeof(CHAT_APPLY_ADD_FRIEND_SYNC));
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ�����Ϣ����������
//-------------------------------------------------------------------------
BOOL KPlayer::ChatAddFriend(BYTE *pProtocol) {
  CHAT_ADD_FRIEND_COMMAND *pAdd = (CHAT_ADD_FRIEND_COMMAND *)pProtocol;

  if (pAdd->m_nTargetPlayerIdx < 0 || pAdd->m_nTargetPlayerIdx >= MAX_PLAYER)
    goto AddFalse;
  if (!Player[pAdd->m_nTargetPlayerIdx].m_nIndex)
    goto AddFalse;
  int i;
  for (i = 0; i < CHAT_APPLY_ADD_FRIEND_LIST; i++) {
    if (m_nPlayerIndex ==
        Player[pAdd->m_nTargetPlayerIdx].m_cChat.m_nAddFriendList[i])
      break;
  }
  if (i >= CHAT_APPLY_ADD_FRIEND_LIST)
    goto AddFalse;

  m_cChat.AddFriendData(m_nPlayerIndex, pAdd->m_nTargetPlayerIdx);
  Player[pAdd->m_nTargetPlayerIdx].m_cChat.AddFriendData(
      pAdd->m_nTargetPlayerIdx, m_nPlayerIndex);

  return TRUE;

AddFalse:
  CHAT_ADD_FRIEND_FAIL_SYNC sFail;
  sFail.ProtocolType = s2c_chataddfriendfail;
  sFail.m_nTargetPlayerIdx = pAdd->m_nTargetPlayerIdx;
  g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sFail,
                              sizeof(CHAT_ADD_FRIEND_FAIL_SYNC));

  return FALSE;
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ�����Ϣ�ܾ�����������
//-------------------------------------------------------------------------
void KPlayer::ChatRefuseFriend(BYTE *pProtocol) {
  CHAT_REFUSE_FRIEND_COMMAND *pRefuse = (CHAT_REFUSE_FRIEND_COMMAND *)pProtocol;

  if (pRefuse->m_nTargetPlayerIdx < 0 ||
      pRefuse->m_nTargetPlayerIdx >= MAX_PLAYER)
    return;
  if (Player[pRefuse->m_nTargetPlayerIdx].m_nIndex == 0)
    return;
  for (int i = 0; i < CHAT_APPLY_ADD_FRIEND_LIST; i++) {
    if (m_nPlayerIndex ==
        Player[pRefuse->m_nTargetPlayerIdx].m_cChat.m_nAddFriendList[i]) {
      CHAT_REFUSE_FRIEND_SYNC sRefuse;
      sRefuse.ProtocolType = s2c_chatrefusefriend;
      g_StrCpy(sRefuse.m_szName, Npc[m_nIndex].Name);
      sRefuse.m_wLength = sizeof(CHAT_REFUSE_FRIEND_SYNC) - 1 -
                          sizeof(sRefuse.m_szName) + strlen(sRefuse.m_szName);

      g_pServer->PackDataToClient(
          Player[pRefuse->m_nTargetPlayerIdx].m_nNetConnectIdx,
          (BYTE *)&sRefuse, sRefuse.m_wLength + 1);
      return;
    }
  }
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ���ҵ�¼ʱ�յ��ͻ����������·�����������������ݣ������֣�
//-------------------------------------------------------------------------
void KPlayer::ChatResendAllFriend(BYTE *pProtocol) {
  if (m_cChat.m_nSyncState != 1)
    return;
  m_cChat.m_nSyncState = 2;
  m_cChat.m_pStateSendPos =
      (CChatFriend *)m_cChat.m_cFriendTeam[0].m_cEveryOne.GetHead();
  if (!m_cChat.m_pStateSendPos)
    m_cChat.m_nSyncState = 0;
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ���ҵ�¼ʱ�յ��ͻ���������ĳ������������ݣ������֣�
//-------------------------------------------------------------------------
void KPlayer::ChatSendOneFriendData(BYTE *pProtocol) {
  CHAT_APPLY_SEND_ONE_FRIEND_NAME_COMMAND *pApply =
      (CHAT_APPLY_SEND_ONE_FRIEND_NAME_COMMAND *)pProtocol;

  m_cChat.ResendOneFriendData(pApply->m_dwID, m_nPlayerIndex);
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ�������ɾ��ĳ���������
//-------------------------------------------------------------------------
void KPlayer::ChatDeleteFriend(BYTE *pProtocol) {
  CHAT_DELETE_FRIEND_COMMAND *pDelete = (CHAT_DELETE_FRIEND_COMMAND *)pProtocol;

  m_cChat.DeleteFriend(pDelete->m_dwID, m_dwID);
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ��������ٴ�ɾ��ĳ���������
//-------------------------------------------------------------------------
void KPlayer::ChatRedeleteFriend(BYTE *pProtocol) {
  CHAT_REDELETE_FRIEND_COMMAND *pDelete =
      (CHAT_REDELETE_FRIEND_COMMAND *)pProtocol;

  this->m_cChat.RedeleteFriend(pDelete->m_dwID, m_nPlayerIndex);
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ���������������״̬
//-------------------------------------------------------------------------
void KPlayer::TradeApplyOpen(BYTE *pProtocol) {
  if (CheckTrading() || m_bBlock)
    return;

  if (Npc[m_nIndex].m_SubWorldIndex == g_SubWorldSet.SearchWorld(43)) {
    return;
  }

  // LevelTrade
  //	if (Npc[m_nIndex].m_Level < 100)
  //	{
  //		KPlayerChat::SendSystemInfo(1,m_nPlayerIndex,
  // MESSAGE_SYSTEM_ANNOUCE_HEAD, "��ng c�p nh� h�n 100, kh�ng th� giao d�ch !",
  // strlen("��ng c�p nh� h�n 100, kh�ng th� giao d�ch !") ); 		return;
  //	}

  if (m_cTeam.m_nFlag && m_cTeam.m_nID >= 0) {
    KPlayerChat::SendSystemInfo(
        1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
        "Kh�ng th� giao d�ch khi �ang trong t� ��i !",
        strlen("Kh�ng th� giao d�ch khi �ang trong t� ��i !"));
    return;
  }

  TRADE_APPLY_OPEN_COMMAND *pApply = (TRADE_APPLY_OPEN_COMMAND *)pProtocol;
  char szSentence[MAX_SENTENCE_LENGTH];
  int nLength = pApply->m_wLength - (sizeof(TRADE_APPLY_OPEN_COMMAND) - 1 -
                                     sizeof(pApply->m_szSentence));
  if (nLength >= MAX_SENTENCE_LENGTH)
    nLength = MAX_SENTENCE_LENGTH - 1;
  memset(szSentence, 0, sizeof(szSentence));
  memcpy(szSentence, pApply->m_szSentence, nLength);

  switch (m_cMenuState.m_nState) {
  case PLAYER_MENU_STATE_NORMAL:
  case PLAYER_MENU_STATE_TRADEOPEN:
    m_cMenuState.SetState(m_nPlayerIndex, PLAYER_MENU_STATE_TRADEOPEN,
                          szSentence, nLength);
    break;
  case PLAYER_MENU_STATE_TEAMOPEN:
    if (m_cTeam.m_nFlag && m_cTeam.m_nID >= 0)
      g_Team[m_cTeam.m_nID].SetTeamClose();
    m_cMenuState.SetState(m_nPlayerIndex, PLAYER_MENU_STATE_TRADEOPEN,
                          szSentence, nLength);
    break;
  }
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ�������ȡ��������״̬
//-------------------------------------------------------------------------
void KPlayer::TradeApplyClose(BYTE *pProtocol) {
  if (CheckTrading())
    return;

  m_cMenuState.SetState(m_nPlayerIndex, PLAYER_MENU_STATE_NORMAL);
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ��յ��ͻ������뿪ʼ����
//-------------------------------------------------------------------------
void KPlayer::TradeApplyStart(BYTE *pProtocol) {
  if (this->CheckTrading() || CheckShopOpen() || CheckShopBuyOpen())
    return;

  if (m_bBlock)
    return;
  // aaa
  //	if (Npc[m_nIndex].m_Level < 100)
  //	{
  //		KPlayerChat::SendSystemInfo(1,m_nPlayerIndex,
  // MESSAGE_SYSTEM_ANNOUCE_HEAD, "��ng c�p nh� h�n 100, kh�ng th� giao d�ch !",
  // strlen("��ng c�p nh� h�n 100, kh�ng th� giao d�ch !") ); 		return;
  //	}

  if (Npc[m_nIndex].m_SubWorldIndex == g_SubWorldSet.SearchWorld(43)) {
    return;
  }

  if (m_cTeam.m_nFlag && m_cTeam.m_nID >= 0) {
    KPlayerChat::SendSystemInfo(
        1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
        "Kh�ng th� giao d�ch khi �ang trong t� ��i !",
        strlen("Kh�ng th� giao d�ch khi �ang trong t� ��i !"));
    return;
  }

  TRADE_APPLY_START_COMMAND *pStart = (TRADE_APPLY_START_COMMAND *)pProtocol;

  int nPlayer;
  nPlayer = FindAroundPlayer(pStart->m_dwID);
  if (nPlayer < 0)
    return;

  if (Player[nPlayer].m_cMenuState.m_nState != PLAYER_MENU_STATE_TRADEOPEN)
    return;

  if (Player[nPlayer].CheckShopOpen() || Player[nPlayer].CheckTrading() ||
      Player[nPlayer].CheckShopBuyOpen())
    return;

  for (int i = 0; i < MAX_PLAYER; i++) {
    if (i != m_nPlayerIndex && !IsExchangingServer() &&
        Player[i].m_cTrade.m_nTradeDest == m_nPlayerIndex) {
      printf("Xay ra hack lua giao dich, tu dong xua loi !\n");
      this->ExecuteScript("\\script\\admin\\gayroi.lua", "main", 0);
      return;
    }
  }

  this->m_cTrade.m_nApplyIdx = nPlayer;
  TRADE_APPLY_START_SYNC sApply;
  sApply.ProtocolType = s2c_tradeapplystart;
  sApply.m_nDestIdx = this->m_nPlayerIndex;
  sApply.m_dwNpcId = Npc[m_nIndex].m_dwID;
  if (g_pServer)
    g_pServer->PackDataToClient(Player[nPlayer].m_nNetConnectIdx,
                                (BYTE *)&sApply,
                                sizeof(TRADE_APPLY_START_SYNC));
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ�
//-------------------------------------------------------------------------
void KPlayer::TradeMoveMoney(BYTE *pProtocol) {
  if (!CheckTrading())
    return;
  if (this->m_cTrade.m_nTradeLock)
    return;

  int nMoney;
  TRADE_MOVE_MONEY_COMMAND *pMoney = (TRADE_MOVE_MONEY_COMMAND *)pProtocol;
  if (pMoney->m_nMoney < 0)
    nMoney = 0;
  else if (pMoney->m_nMoney > m_ItemList.GetEquipmentMoney())
    nMoney = m_ItemList.GetEquipmentMoney();
  else
    nMoney = pMoney->m_nMoney;

  m_ItemList.TradeMoveMoney(nMoney);
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ�ִ�л�ȡ������
//-------------------------------------------------------------------------
void KPlayer::TradeDecision(BYTE *pProtocol) {
  if (!CheckTrading())
    return;

  TRADE_DECISION_COMMAND *pDecision = (TRADE_DECISION_COMMAND *)pProtocol;

  if (pDecision->m_btDecision == 2) // ��������
  {
    if (this->m_cTrade.m_nTradeLock == 0) {
      this->m_cTrade.m_nTradeLock = 1;
      this->m_cTrade.m_nTradeState = 0;
      Player[m_cTrade.m_nTradeDest].m_cTrade.m_nTradeState = 0;
    }

    SyncTradeState();
    return;
  } else if (pDecision->m_btDecision == 3) // ����ȡ��
  {
    if (this->m_cTrade.m_nTradeLock == 1) {
      // ȡ������������ͬʱҲȡ���˶Է�������
      this->m_cTrade.m_nTradeLock = 0;
      this->m_cTrade.m_nTradeState = 0;
      Player[m_cTrade.m_nTradeDest].m_cTrade.m_nTradeLock = 0;
      Player[m_cTrade.m_nTradeDest].m_cTrade.m_nTradeState = 0;
    }
    SyncTradeState();
    return;
  } else if (pDecision->m_btDecision == 4) // ȡ��ȷ��
  {
    if (m_cTrade.m_nTradeLock == 1 &&
        Player[m_cTrade.m_nTradeDest].m_cTrade.m_nTradeLock == 1) {
      m_cTrade.m_nTradeState = 0;
      SyncTradeState();
    }
    return;
  } else if (pDecision->m_btDecision == 0) // ȡ������
  {
    int nDestIdx;
    nDestIdx = this->m_cTrade.m_nTradeDest;
    // ȡ�����׵����ݻָ�
    this->m_ItemList.RecoverTrade();
    this->m_ItemList.ClearRoom(room_trade);
    this->m_ItemList.ClearRoom(room_trade1);
    this->m_cTrade.Release();
    Player[nDestIdx].m_ItemList.RecoverTrade();
    Player[nDestIdx].m_ItemList.ClearRoom(room_trade);
    Player[nDestIdx].m_ItemList.ClearRoom(room_trade1);
    Player[nDestIdx].m_cTrade.Release();

    TRADE_DECISION_SYNC sSync;
    sSync.ProtocolType = s2c_tradedecision;
    sSync.m_btDecision = 0;
    g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sSync,
                                sizeof(TRADE_DECISION_SYNC));
    g_pServer->PackDataToClient(Player[nDestIdx].m_nNetConnectIdx,
                                (BYTE *)&sSync, sizeof(TRADE_DECISION_SYNC));

    // ȡ�����׵�״̬�ָ�(����״̬һ�������� trading)(����)
    this->m_cMenuState.RestoreBackupState(m_nPlayerIndex);

    // ȡ�����׵�״̬�ָ�(����״̬һ�������� trading)(�Է�)
    Player[nDestIdx].m_cMenuState.RestoreBackupState(nDestIdx);

    return;
  } else if (pDecision->m_btDecision == 1) // ִ�н���
  {
    // ���˫��û��ͬʱ����������ȷ��
    if (this->m_cTrade.m_nTradeLock != 1 ||
        Player[m_cTrade.m_nTradeDest].m_cTrade.m_nTradeLock != 1) {
      SyncTradeState();
      return;
    }
    // �Է���ûȷ����֪ͨ�Է��Լ���ȷ��
    else if (Player[m_cTrade.m_nTradeDest].m_cTrade.m_nTradeState == 0) {
      m_cTrade.m_nTradeState = 1;

      SyncTradeState();

      return;
    }
    // �Է���ȷ����ִ�н���
    else {
      // ִ�н���֮ǰ���ȼ��һ���Ƿ��д���
      // -------------------- ��� money --------------------
      int nSM1, nSM2, nDM1, nDM2;
      int nDestIdx = m_cTrade.m_nTradeDest;
      nSM1 = m_ItemList.GetMoney(room_equipment);
      nSM2 = m_ItemList.GetMoney(room_trade);
      nDM1 = Player[nDestIdx].m_ItemList.GetMoney(room_equipment);
      nDM2 = Player[nDestIdx].m_ItemList.GetMoney(room_trade);
      if (nSM2 < 0 || nSM1 + nDM2 - nSM2 < 0) {
        this->m_ItemList.TradeMoveMoney(0);

        TRADE_DECISION_COMMAND sTrade;
        sTrade.ProtocolType = c2s_tradedecision;
        sTrade.m_btDecision = 0;
        TradeDecision((BYTE *)&sTrade);
        Player[nDestIdx].TradeDecision((BYTE *)&sTrade);

        // ֪ͨ�ͻ���Ǯ������ not end
        return;
      }
      if (nDM2 < 0 || nDM1 + nSM2 - nDM2 < 0) {
        Player[nDestIdx].m_ItemList.TradeMoveMoney(0);

        TRADE_DECISION_COMMAND sTrade;
        sTrade.ProtocolType = c2s_tradedecision;
        sTrade.m_btDecision = 0;
        TradeDecision((BYTE *)&sTrade);
        Player[nDestIdx].TradeDecision((BYTE *)&sTrade);

        // ֪ͨ�ͻ���Ǯ������ not end
        return;
      }
      // ------------------ ��� money end ------------------

      // --------- ���˫����Ʒ���ܷ�����������Ʒ ---------
      int nSelfCanGet, nDestCanGet;

      // �жϼ�����Ʒ���ܷ�����������Ʒ
      Player[nDestIdx].m_ItemList.GetTradeRoomItemInfo();
      nSelfCanGet = m_ItemList.TradeCheckCanPlace();
      ItemSet.BackItemInfo();

      // �ж϶Է���Ʒ���ܷ�����������Ʒ
      this->m_ItemList.GetTradeRoomItemInfo();
      nDestCanGet = Player[nDestIdx].m_ItemList.TradeCheckCanPlace();

      if (!nSelfCanGet || !nDestCanGet) {
        if (!nSelfCanGet) {
          this->m_cTrade.m_nTradeState = 0;

          // ֪ͨ�ͻ�������Ķ����Ų���
          SHOW_MSG_SYNC sMsg;
          sMsg.ProtocolType = s2c_msgshow;
          sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1 - sizeof(LPVOID);
          sMsg.m_wMsgID = enumMSG_ID_TRADE_SELF_ROOM_FULL;
          g_pServer->PackDataToClient(m_nNetConnectIdx, &sMsg,
                                      sMsg.m_wLength + 1);
          sMsg.m_wMsgID = enumMSG_ID_TRADE_DEST_ROOM_FULL;
          g_pServer->PackDataToClient(Player[nDestIdx].m_nNetConnectIdx, &sMsg,
                                      sMsg.m_wLength + 1);
        }
        if (!nDestCanGet) {
          Player[nDestIdx].m_cTrade.m_nTradeState = 0;

          // ֪ͨ�ͻ�������Ķ����Ų���
          SHOW_MSG_SYNC sMsg;
          sMsg.ProtocolType = s2c_msgshow;
          sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1 - sizeof(LPVOID);
          sMsg.m_wMsgID = enumMSG_ID_TRADE_SELF_ROOM_FULL;
          g_pServer->PackDataToClient(Player[nDestIdx].m_nNetConnectIdx, &sMsg,
                                      sMsg.m_wLength + 1);
          sMsg.m_wMsgID = enumMSG_ID_TRADE_DEST_ROOM_FULL;
          g_pServer->PackDataToClient(m_nNetConnectIdx, &sMsg,
                                      sMsg.m_wLength + 1);
        }
        SyncTradeState();
        return;
      }
      // ------- ���˫����Ʒ���ܷ�����������Ʒ end -------

      // ֪ͨ�ͻ��˽������
      TRADE_DECISION_SYNC sSync;
      sSync.ProtocolType = s2c_tradedecision;
      sSync.m_btDecision = 1;
      g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sSync,
                                  sizeof(TRADE_DECISION_SYNC));
      g_pServer->PackDataToClient(Player[nDestIdx].m_nNetConnectIdx,
                                  (BYTE *)&sSync, sizeof(TRADE_DECISION_SYNC));

      // �������˽�������״̬
      m_cMenuState.SetState(m_nPlayerIndex, PLAYER_MENU_STATE_NORMAL);
      Player[nDestIdx].m_cMenuState.SetState(nDestIdx,
                                             PLAYER_MENU_STATE_NORMAL);
      this->m_cTrade.Release();
      Player[nDestIdx].m_cTrade.Release();

      // �����н�Ǯ�Ľ���
      if (nSM2 <= nDM2) {
        this->Earn(nDM2 - nSM2);
        Player[nDestIdx].Pay(nDM2 - nSM2);
      } else {
        this->Pay(nSM2 - nDM2);
        Player[nDestIdx].Earn(nSM2 - nDM2);
      }

      //--------------- ��������Ʒ�Ľ��� ---------------------
      // �Է�����Ʒ������
      int nPos;
      nPos = 0;
      while (1) {
        if (nPos >= TRADE_ROOM_WIDTH * TRADE_ROOM_HEIGHT)
          break;
        if (!ItemSet.m_psBackItemInfo[nPos].m_nIdx)
          break;
        // �Է�ȥ������Ʒ
        Player[nDestIdx].m_ItemList.Remove(
            ItemSet.m_psBackItemInfo[nPos].m_nIdx);
        // �����õ�����Ʒ
        m_ItemList.Add(ItemSet.m_psBackItemInfo[nPos].m_nIdx, pos_equiproom,
                       ItemSet.m_psBackItemInfo[nPos].m_nX,
                       ItemSet.m_psBackItemInfo[nPos].m_nY);
        nPos++;
      }
      // ��������Ʒ���Է�
      nPos = 0;
      while (1) {
        if (nPos >= TRADE_ROOM_WIDTH * TRADE_ROOM_HEIGHT)
          break;
        if (!ItemSet.m_psItemInfo[nPos].m_nIdx)
          break;
        // ����ȥ������Ʒ
        this->m_ItemList.Remove(ItemSet.m_psItemInfo[nPos].m_nIdx);
        // �Է��õ�����Ʒ
        Player[nDestIdx].m_ItemList.Add(
            ItemSet.m_psItemInfo[nPos].m_nIdx, pos_equiproom,
            ItemSet.m_psItemInfo[nPos].m_nX, ItemSet.m_psItemInfo[nPos].m_nY);
        nPos++;
      }
      //------------- ��������Ʒ�Ľ��� end -------------------

      if (Player[nDestIdx].CanSave()) {
        if (Player[nDestIdx].Save()) {
          Player[nDestIdx].m_uMustSave = SAVE_REQUEST;
        }
      }
      if (this->CanSave()) {
        if (this->Save()) {
          this->m_uMustSave = SAVE_REQUEST;
        }
      }

      ///////

      ExecuteScript("\\script\\admin\\giaodich.lua", "main", nDestIdx);

      ////////

      return;
    }
  }
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ�ִ�л�ȡ������
//-------------------------------------------------------------------------
void KPlayer::c2sTradeReplyStart(BYTE *pProtocol) {
  if (this->CheckTrading() || CheckShopOpen() || CheckShopBuyOpen())
    return;

  if (m_bBlock)
    return;

  if (Npc[m_nIndex].m_SubWorldIndex == g_SubWorldSet.SearchWorld(43)) {
    return;
  }

  if (m_cTeam.m_nFlag && m_cTeam.m_nID >= 0)
    return;

  if (!pProtocol)
    return;

  TRADE_REPLY_START_COMMAND *pReply = (TRADE_REPLY_START_COMMAND *)pProtocol;

  int nPlayerIdx = pReply->m_nDestIdx;
  if (nPlayerIdx <= 0 || nPlayerIdx >= MAX_PLAYER)
    return;
  if (Player[nPlayerIdx].m_nIndex <= 0)
    return;
  if (Player[nPlayerIdx].m_cTrade.m_nApplyIdx != this->m_nPlayerIndex)
    return;

  for (int i = 0; i < MAX_PLAYER; i++) {

    if (i != m_nPlayerIndex && !IsExchangingServer() &&
        Player[i].m_cTrade.m_nTradeDest == m_nPlayerIndex) {
      this->ExecuteScript("\\script\\admin\\gayroi.lua", "main", 0);
      printf("Xay ra hack lua giao dich, tu dong xua loi !\n");
      return;
    }

    if (i != nPlayerIdx && Player[i].m_cTrade.m_nTradeDest == nPlayerIdx) {
      Player[nPlayerIdx].ExecuteScript("\\script\\admin\\gayroi.lua", "main",
                                       0);
      printf("Xay ra hack lua giao dich, tu dong xua loi !\n");
      return;
    }
  }
  // �ܾ�
  if (pReply->m_bDecision == 0) {
    SHOW_MSG_SYNC sMsg;
    sMsg.ProtocolType = s2c_msgshow;
    sMsg.m_wMsgID = enumMSG_ID_TRADE_REFUSE_APPLY;
    sMsg.m_wLength = sizeof(SHOW_MSG_SYNC) - 1;
    sMsg.m_lpBuf = (LPVOID)Npc[m_nIndex].m_dwID;
    g_pServer->PackDataToClient(Player[nPlayerIdx].m_nNetConnectIdx, &sMsg,
                                sMsg.m_wLength + 1);
    sMsg.m_lpBuf = 0;
    return;
  }

  if (this->m_cMenuState.m_nState != PLAYER_MENU_STATE_TRADEOPEN) {
    return;
  }

  int Map1 = SubWorld[Npc[Player[m_nPlayerIndex].m_nIndex].m_SubWorldIndex]
                 .m_SubWorldID;
  int Map2 =
      SubWorld[Npc[Player[nPlayerIdx].m_nIndex].m_SubWorldIndex].m_SubWorldID;
  if (Map1 != Map2) {
    char szMsg[500];
    sprintf(szMsg, "Kh�ng th� giao d�ch kh�c b�n ��");
    KPlayerChat::SendSystemInfo(1, m_nPlayerIndex, "Th�ng b�o", (char *)szMsg,
                                strlen(szMsg));
    return;
  }
  // ������ڶ��鿪��״̬���ر�֮
  if (Player[nPlayerIdx].m_cMenuState.m_nState == PLAYER_MENU_STATE_TEAMOPEN) {
    PLAYER_TEAM_OPEN_CLOSE sClose;
    sClose.m_btOpenClose = 0;
    Player[nPlayerIdx].SetTeamState((BYTE *)&sClose);
  }
  // �����Ļ���Ҫվ����
  if (Npc[m_nIndex].m_Doing == do_sit) {
    Npc[m_nIndex].SendCommand(do_stand);
  }
  if (Npc[Player[nPlayerIdx].m_nIndex].m_Doing == do_sit) {
    Npc[Player[nPlayerIdx].m_nIndex].SendCommand(do_stand);
  }

  // �������Ĵ����ı�״̬����������
  this->m_ItemList.StartTrade();
  this->m_cTrade.Release();
  this->m_cTrade.StartTrade(nPlayerIdx);
  this->m_cMenuState.SetState(m_nPlayerIndex, PLAYER_MENU_STATE_TRADING, NULL,
                              0, Npc[Player[nPlayerIdx].m_nIndex].m_dwID);

  Player[nPlayerIdx].m_ItemList.StartTrade();
  Player[nPlayerIdx].m_cTrade.Release();
  Player[nPlayerIdx].m_cTrade.StartTrade(m_nPlayerIndex);
  Player[nPlayerIdx].m_cMenuState.SetState(
      nPlayerIdx, PLAYER_MENU_STATE_TRADING, NULL, 0, Npc[m_nIndex].m_dwID);
}
#endif

//-------------------------------------------------------------------------
//	���ܣ�������˫���Ŀͻ��˷��ͽ���״̬��Ϣ
//-------------------------------------------------------------------------
#ifdef _SERVER
void KPlayer::SyncTradeState() {
  if (!CheckTrading())
    return;

  TRADE_STATE_SYNC sSync;
  sSync.ProtocolType = s2c_tradepressoksync;
  sSync.m_btSelfLock = this->m_cTrade.m_nTradeLock;
  sSync.m_btDestLock = Player[m_cTrade.m_nTradeDest].m_cTrade.m_nTradeLock;
  sSync.m_btSelfOk = m_cTrade.m_nTradeState;
  sSync.m_btDestOk = Player[m_cTrade.m_nTradeDest].m_cTrade.m_nTradeState;
  g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sSync,
                              sizeof(TRADE_STATE_SYNC));

  sSync.m_btSelfLock = Player[m_cTrade.m_nTradeDest].m_cTrade.m_nTradeLock;
  sSync.m_btDestLock = m_cTrade.m_nTradeLock;
  sSync.m_btSelfOk = Player[m_cTrade.m_nTradeDest].m_cTrade.m_nTradeState;
  sSync.m_btDestOk = m_cTrade.m_nTradeState;
  g_pServer->PackDataToClient(Player[m_cTrade.m_nTradeDest].m_nNetConnectIdx,
                              (BYTE *)&sSync, sizeof(TRADE_STATE_SYNC));
}
#endif

//-------------------------------------------------------------------------
//	���ܣ������Լ�װ�������ϵ�װ����Ϣ�����˿�
//-------------------------------------------------------------------------
#ifdef _SERVER
void KPlayer::SendEquipItemInfo(int nTargetPlayer) {
  if (nTargetPlayer <= 0 || nTargetPlayer >= MAX_PLAYER ||
      Player[nTargetPlayer].m_nIndex <= 0)
    return;

  int nIdx, i, j;
  SViewItemInfo *pInfo;
  VIEW_EQUIP_SYNC sView;

  sView.ProtocolType = s2c_viewequip;
  sView.m_dwNpcID = Npc[m_nIndex].m_dwID;

  sView.m_Task100 = this->m_cTask.GetSaveVal(100);
  sView.m_Task162 = this->m_cTask.GetSaveVal(162);
  sView.m_WorldStat = this->m_nWorldStat;
  sView.m_PKValue = this->m_cPK.GetPKValue();
  sView.m_Task139 = this->m_cTask.GetSaveVal(139);

  for (i = 0; i < itempart_num; i++) {
    nIdx = m_ItemList.m_EquipItem[i];
    pInfo = &sView.m_sInfo[i];
    if (nIdx <= 0) {
      memset(pInfo, 0, sizeof(SViewItemInfo));
      continue;
    }

    if (!m_ItemList.FindSame(nIdx))
      continue;

    if (Item[nIdx].GetGenre() != item_equip) {
      memset(pInfo, 0, sizeof(SViewItemInfo));
      continue;
    }

    pInfo->m_nID = Item[nIdx].GetID();
    pInfo->m_btGenre = Item[nIdx].GetGenre();
    pInfo->m_btDetail = Item[nIdx].GetDetailType();
    pInfo->m_btParticur = Item[nIdx].GetParticular();
    pInfo->m_btSeries = Item[nIdx].GetSeries();
    pInfo->m_btLevel = Item[nIdx].GetLevel();
    pInfo->m_btLuck = Item[nIdx].m_GeneratorParam.nLuck;
    pInfo->m_dwRandomSeed = Item[nIdx].m_GeneratorParam.uRandomSeed;
    pInfo->m_wVersion = Item[nIdx].m_GeneratorParam.nVersion;
    for (j = 0; j < 6; j++)
      pInfo->m_btMagicLevel[j] = Item[nIdx].m_GeneratorParam.nGeneratorLevel[j];

    pInfo->iNgoaiTrang = Item[nIdx].m_CommonAttrib.iNgoaiTrang;
  }

  g_pServer->PackDataToClient(Player[nTargetPlayer].m_nNetConnectIdx,
                              (BYTE *)&sView, sizeof(sView));
}
#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ������봫���ŵ���صĺ���
//-------------------------------------------------------------------------
void KPlayer::UseTownPortal(int bCheck) {

  if (m_nPlayerIndex <= 0)
    return;
  if (m_nIndex <= 0)
    return;
  if (Npc[m_nIndex].m_SubWorldIndex < 0)
    return;
  if (CheckTrading() || CheckShopOpen() || CheckShopBuyOpen())
    return;

  if (!Npc[m_nIndex].m_FightMode && !bCheck)
    return;

  if (Npc[m_nIndex].m_Doing == do_death || Npc[m_nIndex].m_Doing == do_revive ||
      Npc[m_nIndex].m_Doing == do_hurt) // fix lag frame khi ve thanh
    return;

  m_sPortalPos.m_nSubWorldId =
      SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID;
  Npc[m_nIndex].GetMpsPos(&m_sPortalPos.m_nMpsX, &m_sPortalPos.m_nMpsY);
  m_sPortalPos.m_nTime = TOWN_PORTAL_TIME;

  if (bCheck == 1 || m_sPortalPos.m_nSubWorldId == 46 ||
      m_sPortalPos.m_nSubWorldId == 47 || m_sPortalPos.m_nSubWorldId == 48 ||
      m_sPortalPos.m_nSubWorldId == 49) {
    m_sPortalPos.m_nSubWorldId = 0;
    m_sPortalPos.m_nTime = 0;
    m_sPortalPos.m_nMpsX = 0;
    m_sPortalPos.m_nMpsY = 0;
  }

  if (bCheck == 2) {
    return;
  }
  int newMap, newX, newY;
  if (m_sDeathRevivalPos.m_nSubWorldID == 15) {
    int rnd = g_Random(5);
    if (rnd == 0) {
      newMap = 15;
      newX = 1691 * 32;
      newY = 3239 * 32;
    } else if (rnd == 1) {
      newMap = 15;
      newX = 1575 * 32;
      newY = 3227 * 32;
    } else if (rnd == 2) {
      newMap = 15;
      newX = 1471 * 32;
      newY = 3175 * 32;
    } else if (rnd == 3) {
      newMap = 15;
      newX = 1460 * 32;
      newY = 3264 * 32;
    } else if (rnd == 4) {
      newMap = 15;
      newX = 1584 * 32;
      newY = 3372 * 32;
    } else {
      newMap = m_sDeathRevivalPos.m_nSubWorldID;
      newX = m_sDeathRevivalPos.m_nMpsX;
      newY = m_sDeathRevivalPos.m_nMpsY;
    }
  } else if (m_sDeathRevivalPos.m_nSubWorldID == 17) {
    int rnd = g_Random(5);
    if (rnd == 0) {
      newMap = 17;
      newX = 1564 * 32;
      newY = 3121 * 32;
    } else if (rnd == 1) {
      newMap = 17;
      newX = 1590 * 32;
      newY = 3182 * 32;
    } else if (rnd == 2) {
      newMap = 17;
      newX = 1633 * 32;
      newY = 3268 * 32;
    } else if (rnd == 3) {
      newMap = 17;
      newX = 1544 * 32;
      newY = 3225 * 32;
    } else if (rnd == 4) {
      newMap = 17;
      newX = 1656 * 32;
      newY = 3163 * 32;
    } else {
      newMap = m_sDeathRevivalPos.m_nSubWorldID;
      newX = m_sDeathRevivalPos.m_nMpsX;
      newY = m_sDeathRevivalPos.m_nMpsY;
    }
  } else if (m_sDeathRevivalPos.m_nSubWorldID == 66) {
    int rnd = g_Random(4);
    if (rnd == 0) {
      newMap = 66;
      newX = 3463 * 32;
      newY = 6120 * 32;
    } else if (rnd == 1) {
      newMap = 66;
      newX = 3543 * 32;
      newY = 6202 * 32;
    } else if (rnd == 2) {
      newMap = 66;
      newX = 3460 * 32;
      newY = 6182 * 32;
    } else if (rnd == 3) {
      newMap = 66;
      newX = 3379 * 32;
      newY = 6264 * 32;
    }
  } else if (m_sDeathRevivalPos.m_nSubWorldID == 53) {
    int rnd = g_Random(2);
    if (rnd == 0) {
      newMap = 53;
      newX = 1583 * 32;
      newY = 3241 * 32;
    } else if (rnd == 1) {
      newMap = 53;
      newX = 1616 * 32;
      newY = 3179 * 32;
    }

  } else {
    newMap = m_sDeathRevivalPos.m_nSubWorldID;
    newX = m_sDeathRevivalPos.m_nMpsX;
    newY = m_sDeathRevivalPos.m_nMpsY;
  }
  Auto_LuuMap = SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID;
  Npc[m_nIndex].GetMpsPos(&Auto_LuuX, &Auto_LuuY);
  if (Npc[m_nIndex].ChangeWorld(newMap, newX, newY)) {
    if (newMap == 15 || newMap == 17) {
      m_sDeathRevivalPos.m_nSubWorldID = newMap;
      m_sDeathRevivalPos.m_nMpsX = newX;
      m_sDeathRevivalPos.m_nMpsY = newY;
    }
    Npc[m_nIndex].SetFightMode(0);
  }
}

void KPlayer::BackToTownPortal() {
  if (m_nPlayerIndex <= 0)
    return;
  if (m_nIndex <= 0)
    return;
  if (m_sPortalPos.m_nTime <= 0)
    return;
  if (CheckTrading() || CheckShopOpen() || CheckShopBuyOpen())
    return;

  if (Npc[m_nIndex].ChangeWorld(m_sPortalPos.m_nSubWorldId,
                                m_sPortalPos.m_nMpsX, m_sPortalPos.m_nMpsY)) {
    m_sPortalPos.m_nSubWorldId = 0;
    m_sPortalPos.m_nTime = 0;
    m_sPortalPos.m_nMpsX = 0;
    m_sPortalPos.m_nMpsY = 0;
    Npc[m_nIndex].SetFightMode(TRUE);
  }
}

void KPlayer::GetRevID(int *lpnRevID) {
  *lpnRevID = 0;
  if (m_nPlayerIndex <= 0) {
    printf("Loi 1\n");
    return;
  }

  if (m_nIndex <= 0) {
    printf("Loi 2\n");
    return;
  }

  *lpnRevID = m_sDeathRevivalPos.m_nSubWorldID;
}

void KPlayer::GetTownPortal(int *lpnSubWorld, int *lpnMpsX, int *lpnMpsY) {
  *lpnSubWorld = 0;
  *lpnMpsX = 0;
  *lpnMpsY = 0;

  if (m_nPlayerIndex <= 0) {
    printf("Loi 1\n");
    return;
  }

  if (m_nIndex <= 0) {
    printf("Loi 2\n");
    return;
  }

  if (m_sPortalPos.m_nTime <= 0) {
    printf("Khong co dia diem tro ve\n");
    return;
  }

  *lpnSubWorld = m_sPortalPos.m_nSubWorldId;
  *lpnMpsX = m_sPortalPos.m_nMpsX;
  *lpnMpsY = m_sPortalPos.m_nMpsY;
}

#endif

#ifdef _SERVER
//-------------------------------------------------------------------------
//	���ܣ�������������
//-------------------------------------------------------------------------
void KPlayer::Revive(int nType) {
  int nSubWorldID = 0;
  int nMpsX = 0, nMpsY = 0;

  NPC_REVIVE_SYNC Sync;
  Sync.ProtocolType = s2c_playerrevive;
  Sync.ID = Npc[m_nIndex].m_dwID;
  Sync.Type = nType;
  g_pServer->PackDataToClient(m_nNetConnectIdx, (const void *)&Sync,
                              sizeof(NPC_REVIVE_SYNC));
  Npc[m_nIndex].BroadCastRevive(nType);

  switch (nType) {
  case REMOTE_REVIVE_TYPE:
    GetDeathRevivalPos(&nSubWorldID, &nMpsX, &nMpsY);
    Npc[m_nIndex].ChangeWorld(nSubWorldID, nMpsX, nMpsY);
    Npc[m_nIndex].m_FightMode = 0;
    break;
  case LOCAL_REVIVE_TYPE:
    Npc[m_nIndex].m_FightMode = 1;
    break;
  default:
    break;
  }

  Npc[m_nIndex].m_CurrentLife = Npc[m_nIndex].m_CurrentLifeMax;
  Npc[m_nIndex].m_CurrentMana = Npc[m_nIndex].m_CurrentManaMax;
  Npc[m_nIndex].m_CurrentStamina = Npc[m_nIndex].m_CurrentStaminaMax;
  // RestoreLiveData();
  m_uMustSave = SAVE_REQUEST; // them thu
  Npc[m_nIndex].SendCommand(do_revive);
}

void KPlayer::RestoreLiveData() { Npc[m_nIndex].RestoreNpcBaseInfo(); }

BOOL KPlayer::Pay(int nMoney) {
  if (nMoney < 0)
    return FALSE;

  return m_ItemList.CostMoney(nMoney);
}

BOOL KPlayer::PrePay(int nMoney) {
  if (nMoney < 0)
    return FALSE;

  if (Pay(nMoney)) {
    m_nPrePayMoney = nMoney;
    return TRUE;
  } else {
    return FALSE;
  }
}

BOOL KPlayer::Earn(int nMoney) {
  if (nMoney < 0)
    return FALSE;

  return m_ItemList.AddMoney(room_equipment, nMoney);
}

// �������������ݿ��л�����ȫ�����ݣ�������֮��ʹ�������Ч
void KPlayer::LaunchPlayer() {

  if (Npc[m_nIndex].m_SubWorldIndex >= MAX_SUBWORLD ||
      Npc[m_nIndex].m_SubWorldIndex < 0 ||
      Npc[m_nIndex].m_RegionIndex >=
          SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_nTotalRegion ||
      Npc[m_nIndex].m_RegionIndex < 0) {
    Npc[m_nIndex].m_SubWorldIndex = 0;
    Npc[m_nIndex].m_RegionIndex = 381;
    Npc[m_nIndex].m_MapX = 0;
    Npc[m_nIndex].m_MapY = 0;
    Npc[m_nIndex].m_OffX = 0;
    Npc[m_nIndex].m_OffY = 0;
    printf("Xay ra loi ban do, tu dong xua loi !\n");
  }

  int nSubWorld = Npc[m_nIndex].m_SubWorldIndex;
  int nRegion = Npc[m_nIndex].m_RegionIndex;
  int nX = Npc[m_nIndex].m_MapX;
  int nY = Npc[m_nIndex].m_MapY;
  int nOffX = Npc[m_nIndex].m_OffX;
  int nOffY = Npc[m_nIndex].m_OffY;

  SubWorld[nSubWorld].AddPlayer(nRegion, m_nPlayerIndex);
  m_ulLastSaveTime = g_SubWorldSet.GetGameTime();
  if (SubWorld[nSubWorld].m_Region[nRegion].GetBarrierMin(
          nX, nY, nOffX, nOffY, FALSE) != Obstacle_NULL) {
    Npc[m_nIndex].ChangeWorld(m_sLoginRevivalPos.m_nSubWorldID,
                              m_sLoginRevivalPos.m_nMpsX,
                              m_sLoginRevivalPos.m_nMpsY);
  }
}
#endif

BOOL KPlayer::ExecuteScript(char *ScriptFileName, char *szFunName, int nParam) {
  if (!ScriptFileName || !ScriptFileName[0] || !szFunName || !szFunName[0])
    return FALSE;
  return ExecuteScript(g_FileName2Id(ScriptFileName), szFunName, nParam);
}
#define MAX_TRYEXECUTESCRIPT_COUNT 5
BOOL KPlayer::ExecuteScript(DWORD dwScriptId, char *szFunName, int nParam) {
  /*	bool	bCanExecuteScript = true;

    //��ǰ�ű�δ�ÿ�
    if (m_bWaitingPlayerFeedBack)
    {
                  if (Npc[m_nIndex].m_ActionScriptID && (dwScriptId !=
    Npc[m_nIndex].m_ActionScriptID))
                  {
                  m_btTryExecuteScriptTimes ++;
                  if (m_btTryExecuteScriptTimes <=
    MAX_TRYEXECUTESCRIPT_COUNT)//�����ִ�нű��Ĵ�������������󣬾�ִ�е�ǰ�ű���������ԭ���Ľű���
                  {
                  bCanExecuteScript = false;
                  }
                  else
                  {
                  m_btTryExecuteScriptTimes = 0;
                  m_bWaitingPlayerFeedBack = false;
                  Npc[m_nIndex].m_ActionScriptID = 0;
                  }
                  }
                  }

                    if (!bCanExecuteScript) return FALSE;
          */
  try {
    m_btTryExecuteScriptTimes = 0;
    bool bExecuteScriptMistake = true;
    KLuaScript *pScript = (KLuaScript *)g_GetScript(dwScriptId);
    if (pScript) {

      Npc[m_nIndex].m_ActionScriptID = dwScriptId;
      Lua_PushNumber(pScript->m_LuaState, m_nPlayerIndex);
      pScript->SetGlobalName(SCRIPT_PLAYERINDEX);

      Lua_PushNumber(pScript->m_LuaState, m_dwID);
      pScript->SetGlobalName(SCRIPT_PLAYERID);

      Lua_PushNumber(pScript->m_LuaState, Npc[m_nIndex].m_SubWorldIndex);
      pScript->SetGlobalName(SCRIPT_SUBWORLDINDEX);
      int nTopIndex = 0;

      pScript->SafeCallBegin(&nTopIndex);
      if (pScript->CallFunction(szFunName, 0, "d", nParam)) {
        bExecuteScriptMistake = false;
      }
      pScript->SafeCallEnd(nTopIndex);
    }

    if (bExecuteScriptMistake) {
      m_bWaitingPlayerFeedBack = false;
      m_btTryExecuteScriptTimes = 0;
      Npc[m_nIndex].m_ActionScriptID = 0;
      return FALSE;
    }

    return TRUE;
  } catch (...) {
    printf("Exception Have Caught When Execute Script[%d]!!!!!", dwScriptId);
    m_bWaitingPlayerFeedBack = false;
    m_btTryExecuteScriptTimes = 0;
    Npc[m_nIndex].m_ActionScriptID = 0;
    return FALSE;
  }
  return TRUE;
}

BOOL KPlayer::ExecuteScript(DWORD dwScriptId, char *szFunName, char *szParams) {
  /*bool	bCanExecuteScript = true;

    //��ǰ�ű�δ�ÿ�
    if (m_bWaitingPlayerFeedBack)
    {
                  if (Npc[m_nIndex].m_ActionScriptID && (dwScriptId !=
    Npc[m_nIndex].m_ActionScriptID))
                  {
                  m_btTryExecuteScriptTimes ++;
                  if (m_btTryExecuteScriptTimes <=
    MAX_TRYEXECUTESCRIPT_COUNT)//�����ִ�нű��Ĵ�������������󣬾�ִ�е�ǰ�ű���������ԭ���Ľű���
                  {
                  bCanExecuteScript = false;
                  }
                  else
                  {
                  m_btTryExecuteScriptTimes = 0;
                  m_bWaitingPlayerFeedBack = false;
                  Npc[m_nIndex].m_ActionScriptID = 0;
                  }
                  }
                  }

                    bCanExecuteScript = true;//test

                          if (!bCanExecuteScript) return FALSE;
          */

  try {
    m_btTryExecuteScriptTimes = 0;
    bool bExecuteScriptMistake = true;
    KLuaScript *pScript = (KLuaScript *)g_GetScript(dwScriptId);
    int nTopIndex = 0;

    if (pScript) {

      Npc[m_nIndex].m_ActionScriptID = dwScriptId;
      Lua_PushNumber(pScript->m_LuaState, m_nPlayerIndex);
      pScript->SetGlobalName(SCRIPT_PLAYERINDEX);

      Lua_PushNumber(pScript->m_LuaState, m_dwID);
      pScript->SetGlobalName(SCRIPT_PLAYERID);

      Lua_PushNumber(pScript->m_LuaState, Npc[m_nIndex].m_SubWorldIndex);
      pScript->SetGlobalName(SCRIPT_SUBWORLDINDEX);

      pScript->SafeCallBegin(&nTopIndex);

      if ((!szParams) || !szParams[0]) {
        if (pScript->CallFunction(szFunName, 0, "")) {
          bExecuteScriptMistake = false;
        }
      } else {
        if (pScript->CallFunction(szFunName, 0, "sd", szParams, 0)) {
          bExecuteScriptMistake = false;
        }
      }
      pScript->SafeCallEnd(nTopIndex);
    }

    if (bExecuteScriptMistake) {
      m_bWaitingPlayerFeedBack = false;
      m_btTryExecuteScriptTimes = 0;
      Npc[m_nIndex].m_ActionScriptID = 0;
      return FALSE;
    }
    return TRUE;
  } catch (...) {
    printf("Exception Have Caught When Execute Script[%d]!!!!!", dwScriptId);
    m_bWaitingPlayerFeedBack = false;
    m_btTryExecuteScriptTimes = 0;
    Npc[m_nIndex].m_ActionScriptID = 0;
    return FALSE;
  }
  return TRUE;
}

BOOL KPlayer::ExecuteScript(char *ScriptFileName, char *szFunName,
                            char *szParams) {
  if (!ScriptFileName || !ScriptFileName[0] || !szFunName || !szFunName[0])
    return FALSE;
  DWORD dwScriptId = g_FileName2Id(ScriptFileName);
  return ExecuteScript(dwScriptId, szFunName, szParams);
}

BOOL KPlayer::ExecuteScriptNew(DWORD dwScriptId, char *szFunName,
                               char *szParams, char *szParamsNew) {
  /*bool	bCanExecuteScript = true;

    //��ǰ�ű�δ�ÿ�
    if (m_bWaitingPlayerFeedBack)
    {
                  if (Npc[m_nIndex].m_ActionScriptID && (dwScriptId !=
    Npc[m_nIndex].m_ActionScriptID))
                  {
                  m_btTryExecuteScriptTimes ++;
                  if (m_btTryExecuteScriptTimes <=
    MAX_TRYEXECUTESCRIPT_COUNT)//�����ִ�нű��Ĵ�������������󣬾�ִ�е�ǰ�ű���������ԭ���Ľű���
                  {
                  bCanExecuteScript = false;
                  }
                  else
                  {
                  m_btTryExecuteScriptTimes = 0;
                  m_bWaitingPlayerFeedBack = false;
                  Npc[m_nIndex].m_ActionScriptID = 0;
                  }
                  }
                  }

                    bCanExecuteScript = true;//test

                          if (!bCanExecuteScript) return FALSE;
          */

  try {
    m_btTryExecuteScriptTimes = 0;
    bool bExecuteScriptMistake = true;
    KLuaScript *pScript = (KLuaScript *)g_GetScript(dwScriptId);
    int nTopIndex = 0;

    if (pScript) {

      Npc[m_nIndex].m_ActionScriptID = dwScriptId;
      Lua_PushNumber(pScript->m_LuaState, m_nPlayerIndex);
      pScript->SetGlobalName(SCRIPT_PLAYERINDEX);

      Lua_PushNumber(pScript->m_LuaState, m_dwID);
      pScript->SetGlobalName(SCRIPT_PLAYERID);

      Lua_PushNumber(pScript->m_LuaState, Npc[m_nIndex].m_SubWorldIndex);
      pScript->SetGlobalName(SCRIPT_SUBWORLDINDEX);

      pScript->SafeCallBegin(&nTopIndex);

      if ((!szParams) || !szParams[0]) {
        if (pScript->CallFunction(szFunName, 0, "")) {
          bExecuteScriptMistake = false;
        }
      } else {
        if (pScript->CallFunction(szFunName, 0, "ssd", szParams, szParamsNew,
                                  0)) {
          bExecuteScriptMistake = false;
        }
      }
      pScript->SafeCallEnd(nTopIndex);
    }

    if (bExecuteScriptMistake) {
      m_bWaitingPlayerFeedBack = false;
      m_btTryExecuteScriptTimes = 0;
      Npc[m_nIndex].m_ActionScriptID = 0;
      return FALSE;
    }
    return TRUE;
  } catch (...) {
    printf("Exception Have Caught When Execute Script[%d]!!!!!", dwScriptId);
    m_bWaitingPlayerFeedBack = false;
    m_btTryExecuteScriptTimes = 0;
    Npc[m_nIndex].m_ActionScriptID = 0;
    return FALSE;
  }
  return TRUE;
}

BOOL KPlayer::ExecuteScriptNew(char *ScriptFileName, char *szFunName,
                               char *szParams, char *szParamsNew) {
  if (!ScriptFileName || !ScriptFileName[0] || !szFunName || !szFunName[0])
    return FALSE;
  DWORD dwScriptId = g_FileName2Id(ScriptFileName);
  return ExecuteScriptNew(dwScriptId, szFunName, szParams, szParamsNew);
}

BOOL KPlayer::DoScript(char *ScriptCommand) {
  if (NULL == ScriptCommand)
    return FALSE;
  KLuaScript *Script = new KLuaScript;
  Script->Init();
  Script->RegisterFunctions(GameScriptFuns, g_GetGameScriptFunNum());

  // GM Standand Script Functions
  Script->Load("\\script\\gmscript.lua");

  Lua_PushNumber(Script->m_LuaState, m_nPlayerIndex);
  Script->SetGlobalName(SCRIPT_PLAYERINDEX);
  Lua_PushNumber(Script->m_LuaState, m_dwID);
  Script->SetGlobalName(SCRIPT_PLAYERID);

  Lua_PushNumber(Script->m_LuaState, Npc[m_nIndex].m_SubWorldIndex);
  Script->SetGlobalName(SCRIPT_SUBWORLDINDEX);

  if (Script->LoadBuffer((PBYTE)ScriptCommand, strlen(ScriptCommand))) {
    BOOL bResult = Script->ExecuteCode();
    delete Script; // Question!
    return bResult;
  }
  delete Script; // Question!
  return FALSE;
}

void KPlayer::DoScriptAction(
    PLAYER_SCRIPTACTION_SYNC *pUIInfo) // Ҫ����ʾĳ��UI����
{
  if (!pUIInfo)
    return;

  // �������˽ű�ʱ
  if (pUIInfo->m_bParam2 == 1) {
#ifdef _SERVER
    pUIInfo->ProtocolType = (BYTE)s2c_scriptaction;
    pUIInfo->m_wProtocolLong = sizeof(PLAYER_SCRIPTACTION_SYNC) -
                               MAX_SCIRPTACTION_BUFFERNUM +
                               pUIInfo->m_nBufferLen - 1;
    g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)pUIInfo,
                                pUIInfo->m_wProtocolLong + 1);
#else
  } else // �ͻ��˽ű�Ҫ����ʾ�ű� ֱ������
  {
    OnScriptAction((PLAYER_SCRIPTACTION_SYNC *)pUIInfo);
#endif
  }
}

// �������˻�֪���ѡ����ĳ��󣬴���~~
void KPlayer::ProcessPlayerSelectFromUI(
    BYTE *pProtocol) // ������Ҵ�ѡ��˵�ѡ��ĳ��ʱ�Ĳ���
{
  PLAYER_SELECTUI_COMMAND *pSelUI = (PLAYER_SELECTUI_COMMAND *)pProtocol;
  m_bWaitingPlayerFeedBack = false;
  // ������ظ�������ʾ�˳��ýű�ִ�л���
  if (pSelUI->nSelectIndex < 0)
    m_nAvailableAnswerNum = 0;
  if (m_nAvailableAnswerNum > pSelUI->nSelectIndex) {
    if (pSelUI->nSelectIndex < 0)
      return;
    if (m_szTaskAnswerFun[pSelUI->nSelectIndex][0]) {
      //			g_SetFilePath("\\script");
      if (m_szTaskAnswerFun[pSelUI->nSelectIndex][0]) {
        if (pSelUI->nSelectIndex >= 50 || pSelUI->nSelectIndex < 0)
          return;
        if (m_nIndex <= 0 || m_nIndex >= MAX_NPC)
          return;
        if (m_nIndex) {
          ExecuteScript(Npc[m_nIndex].m_ActionScriptID,
                        m_szTaskAnswerFun[pSelUI->nSelectIndex],
                        pSelUI->nSelectIndex);
        }
      }
    }
  }
}

#ifndef _SERVER
// ����ڽ��潻����ѡ����ĳ�����������˷���
void KPlayer::OnSelectFromUI(
    PLAYER_SELECTUI_COMMAND *pSelectUI,
    UIInfo eUIInfo) // ����Ҵ�ѡ�����ѡ��ĳ��󣬽������������
{
  if (!pSelectUI)
    return;

  switch (eUIInfo) {
  case UI_SELECTDIALOG: {
    g_DebugLog("Check Select ");
    if (g_bUISelIntelActiveWithServer) {
      pSelectUI->ProtocolType = (BYTE)c2s_playerselui;
      if (g_pClient)
        g_pClient->SendPackToServer((BYTE *)pSelectUI,
                                    sizeof(PLAYER_SELECTUI_COMMAND));
    } else {
      ProcessPlayerSelectFromUI(
          (BYTE *)pSelectUI); // ������Ҵ�ѡ��˵�ѡ��ĳ��ʱ�Ĳ���
    }
  } break;
  case UI_TALKDIALOG: {
    if (g_bUISpeakActiveWithServer) {
      pSelectUI->ProtocolType = (BYTE)c2s_playerselui;
      if (g_pClient)
        g_pClient->SendPackToServer((BYTE *)pSelectUI,
                                    sizeof(PLAYER_SELECTUI_COMMAND));
    } else {
      ProcessPlayerSelectFromUI(
          (BYTE *)pSelectUI); // ������Ҵ�ѡ��˵�ѡ��ĳ��ʱ�Ĳ���
    }

  } break;
  }
}
#endif

//-------------------------------------------------------------------------
//	���ܣ����֪ͨĳ����������
//-------------------------------------------------------------------------
void KPlayer::ChatFriendOnLine(DWORD dwID, int nFriendIdx) {
  if (nFriendIdx <= 0)
    return;
  for (int i = 0; i < MAX_FRIEND_TEAM; i++) {
    if (m_cChat.m_cFriendTeam[i].m_nFriendNo == 0)
      continue;
    CChatFriend *pFriend;
    pFriend = (CChatFriend *)m_cChat.m_cFriendTeam[i].m_cEveryOne.GetHead();
    while (pFriend) {
      if (pFriend->m_dwID == dwID) {
        pFriend->m_nPlayerIdx = nFriendIdx;
#ifdef _SERVER
        CHAT_FRIEND_ONLINE_SYNC sFriend;
        sFriend.ProtocolType = s2c_chatfriendonline;
        sFriend.m_dwID = dwID;
        sFriend.m_nPlayerIdx = nFriendIdx;
        g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sFriend,
                                    sizeof(CHAT_FRIEND_ONLINE_SYNC));
#else
        // ֪ͨ�����к�������
        KUiPlayerItem sPlayer;
        strcpy(sPlayer.Name, pFriend->m_szName);
        sPlayer.uId = dwID;
        sPlayer.nIndex = nFriendIdx;
        sPlayer.nData = CHAT_S_ONLINE;
        CoreDataChanged(GDCNI_CHAT_FRIEND_STATUS, (unsigned int)&sPlayer, i);

        KSystemMessage sMsg;
        sprintf(sMsg.szMessage, MSG_CHAT_FRIEND_ONLINE, pFriend->m_szName);
        sMsg.eType = SMT_NORMAL;
        sMsg.byConfirmType = SMCT_NONE;
        sMsg.byPriority = 0;
        sMsg.byParamSize = 0;
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
#endif
        return;
      }
      pFriend = (CChatFriend *)pFriend->GetNext();
    }
  }
#ifdef _SERVER
  // ���û�ҵ���˵�������Ѿ�ɾ���˶Է�������֪ͨ�Է�ɾ��
  Player[nFriendIdx].m_cChat.DeleteFriendData(m_dwID, nFriendIdx);
#endif
}

// ��õ�ǰ��������
void KPlayer::GetFactionName(char *lpszName, int nSize) {
  this->m_cFaction.GetCurFactionName(lpszName);
  return;
}
#ifdef _SERVER
void KPlayer::S2CExecuteScript(char *ScriptName, char *szParam = NULL) {
  if (!ScriptName || (!ScriptName[0]))
    return;

  PLAYER_SCRIPTACTION_SYNC ScriptAction;
  ScriptAction.m_nOperateType = SCRIPTACTION_EXESCRIPT;
  ScriptAction.ProtocolType = s2c_scriptaction;
  char *script = NULL;
  if (szParam == NULL || szParam[0] == 0) {
    ScriptAction.m_nBufferLen = strlen(ScriptName) + 1;
    strcpy(ScriptAction.m_pContent, ScriptName);
  } else {
    ScriptAction.m_nBufferLen = strlen(ScriptName) + 2 + strlen(szParam);
    sprintf(ScriptAction.m_pContent, "%s|%s", ScriptName, szParam);
  }
  ScriptAction.m_wProtocolLong =
      sizeof(PLAYER_SCRIPTACTION_SYNC) - 300 + ScriptAction.m_nBufferLen - 1;
  g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&ScriptAction,
                              sizeof(PLAYER_SCRIPTACTION_SYNC) - 300 +
                                  ScriptAction.m_nBufferLen);
}
#endif

#ifndef _SERVER
void KPlayer::OnScriptAction(PLAYER_SCRIPTACTION_SYNC *pMsg) {
  PLAYER_SCRIPTACTION_SYNC *pScriptAction = (PLAYER_SCRIPTACTION_SYNC *)pMsg;
  char szString[1000];

  switch (pScriptAction->m_nOperateType) {
  case SCRIPTACTION_UISHOW: {
    switch (pScriptAction->m_bUIId) {
    case UI_SELECTDIALOG: // ֪ͨ�ͻ�����ʾѡ�񴰿�
    {
      KUiQuestionAndAnswer *pQuest = NULL;
      if (pScriptAction->m_nBufferLen <= 0)
        break;

      if (pScriptAction->m_bOptionNum <= 0)
        pQuest = (KUiQuestionAndAnswer *)malloc(sizeof(KUiQuestionAndAnswer));
      else
        pQuest = (KUiQuestionAndAnswer *)malloc(
            sizeof(KUiQuestionAndAnswer) +
            sizeof(KUiAnswer) * (pScriptAction->m_bOptionNum - 1));

      char strContent[1024];
      char *pAnswer = NULL;
      pQuest->AnswerCount = 0;
      // ����ϢΪ�ַ���
      if (pScriptAction->m_bParam1 == 0) {
        g_StrCpyLen(strContent, pScriptAction->m_pContent,
                    pScriptAction->m_nBufferLen + 1);
        pAnswer = strstr(strContent, "|");
        if (!pAnswer) {
          pScriptAction->m_bOptionNum = 0;
          pQuest->AnswerCount = 0;
        } else
          *pAnswer++ = 0;

        g_StrCpyLen(pQuest->Question, strContent, sizeof(pQuest->Question));
        pQuest->QuestionLen =
            TEncodeText(pQuest->Question, strlen(pQuest->Question));
      }
      // ����ϢΪ���ֱ�ʶ
      else {
        g_StrCpyLen(
            pQuest->Question,
            g_GetStringRes(*(int *)pScriptAction->m_pContent, szString, 1000),
            sizeof(pQuest->Question));
        pQuest->QuestionLen =
            TEncodeText(pQuest->Question, strlen(pQuest->Question));

        g_StrCpyLen(strContent, pScriptAction->m_pContent + sizeof(int),
                    pScriptAction->m_nBufferLen - sizeof(int) + 1);
        pAnswer = strContent + 1;
      }

      for (int i = 0; i < pScriptAction->m_bOptionNum; i++) {
        char *pNewAnswer = strstr(pAnswer, "|");

        if (pNewAnswer) {
          *pNewAnswer = 0;
          strcpy(pQuest->Answer[i].AnswerText, pAnswer);
          pQuest->Answer[i].AnswerLen = -1;
          pAnswer = pNewAnswer + 1;
        } else {
          strcpy(pQuest->Answer[i].AnswerText, pAnswer);
          pQuest->Answer[i].AnswerLen = -1;
          pQuest->AnswerCount = i + 1;
          break;
        }
      }

      g_bUISelIntelActiveWithServer = pScriptAction->m_bParam2;
      g_bUISelLastSelCount = pQuest->AnswerCount;

      switch (pScriptAction->m_Select) {
      case 0:
        CoreDataChanged(GDCNI_QUESTION_CHOOSE, (unsigned int)pQuest, 0);
        break;
      case 1: {
        KUiNpcSpr *pImage = NULL;
        pImage = (KUiNpcSpr *)malloc(sizeof(KUiNpcSpr));
        if (m_nImageNpcID) {
          char szBuffer[128];
          for (int i = 0; i < 16; i++) {
            Npc[m_nImageNpcID].GetNpcRes()->m_pcResNode->GetFileName(
                i, 0, 0, "", szBuffer, sizeof(szBuffer));
            if (szBuffer[0]) {
              strcpy(pImage->ImageFile, szBuffer);
              pImage->MaxFrame =
                  (Npc[m_nImageNpcID].GetNpcRes()->m_pcResNode->GetTotalFrames(
                      i, 0, 0, 16)) /
                  (Npc[m_nImageNpcID].GetNpcRes()->m_pcResNode->GetTotalDirs(
                      i, 0, 0, 16));
            }
          }
        }

        CoreDataChanged(GDCNI_QUESTION_CHOOSE_1, (unsigned int)pQuest,
                        (int)pImage);
        free(pImage);
        pImage = NULL;
      } break;
      case 2:
        CoreDataChanged(GDCNI_QUESTION_CHOOSE_2, (unsigned int)pQuest,
                        m_ImageId);
        break;
      }

      free(pQuest);
      pQuest = NULL;
    } break;
    case UI_TALKDIALOG: {
      BOOL bUsingSpeakId = pScriptAction->m_bParam1;
      int nSentenceCount = pScriptAction->m_bOptionNum;
      if (nSentenceCount <= 0)
        return;
      KUiInformationParam *pSpeakList = new KUiInformationParam[nSentenceCount];
      memset(pSpeakList, 0, sizeof(KUiInformationParam) * nSentenceCount);

      char *pAnswer = new char[pScriptAction->m_nBufferLen + 1];
      char *pBackupAnswer = pAnswer;
      g_StrCpyLen(pAnswer, pScriptAction->m_pContent,
                  pScriptAction->m_nBufferLen + 1);

      int nCount = 0;
      for (int i = 0; i < pScriptAction->m_bOptionNum; i++) {
        char *pNewAnswer = strstr(pAnswer, "|");

        if (pNewAnswer) {
          *pNewAnswer = 0;
          if (!bUsingSpeakId) {
            strcpy(pSpeakList[i].sInformation, pAnswer);

          } else {
            strcpy(pSpeakList[i].sInformation,
                   g_GetStringRes(atoi(pAnswer), szString, sizeof(szString)));
          }

          if (i < pScriptAction->m_bOptionNum - 1)
            strcpy(pSpeakList[i].sConfirmText, "����");
          else {
            strcpy(pSpeakList[i].sConfirmText, "���");
            if (pScriptAction->m_nParam == 1)
              pSpeakList[i].bNeedConfirmNotify = TRUE;
          }
          pSpeakList[i].nInforLen = TEncodeText(
              pSpeakList[i].sInformation, strlen(pSpeakList[i].sInformation));
          pAnswer = pNewAnswer + 1;
        } else {
          if (!bUsingSpeakId) {
            strcpy(pSpeakList[i].sInformation, pAnswer);
          } else {
            strcpy(pSpeakList[i].sInformation,
                   g_GetStringRes(atoi(pAnswer), szString, sizeof(szString)));
          }

          strcpy(pSpeakList[i].sConfirmText, "���");

          if (pScriptAction->m_nParam == 1)
            pSpeakList[i].bNeedConfirmNotify = TRUE;

          pSpeakList[i].nInforLen = TEncodeText(
              pSpeakList[i].sInformation, strlen(pSpeakList[i].sInformation));
          nCount++;
          break;
        }
        nCount++;
      }
      if (pBackupAnswer) {
        delete[] pBackupAnswer;
        pBackupAnswer = NULL;
      }
      g_bUISpeakActiveWithServer = pScriptAction->m_bParam2;
      CoreDataChanged(GDCNI_SPEAK_WORDS, (unsigned int)pSpeakList, nCount);
      if (pSpeakList) {
        delete pSpeakList;
        pSpeakList = NULL;
      }
    } break;
    case UI_NOTEINFO: {
      if (pScriptAction->m_nBufferLen <= 0)
        break;
      KMissionRecord Record;
      // ����ϢΪ�ַ���
      if (pScriptAction->m_bParam1 == 0) {
        g_StrCpyLen(Record.sContent, pScriptAction->m_pContent,
                    pScriptAction->m_nBufferLen - sizeof(int) - 1);
        Record.uValue =
            *(unsigned int *)(pScriptAction->m_pContent +
                              pScriptAction->m_nBufferLen - sizeof(int));
      } else {
        g_GetStringRes(*(int *)pScriptAction->m_pContent, Record.sContent,
                       sizeof(Record.sContent));
        Record.uValue = *(unsigned int *)(Record.sContent + sizeof(int));
      }

      Record.nContentLen =
          TEncodeText(Record.sContent, strlen(Record.sContent));

      CoreDataChanged(GDCNI_MISSION_RECORD, (unsigned long)&Record,
                      pScriptAction->m_Select);

    } break;
    case UI_MSGINFO: {
      if (pScriptAction->m_nBufferLen <= 0)
        break;

      char strContent[1024];
      // ����ϢΪ�ַ���
      if (pScriptAction->m_bParam1 == 0) {
        g_StrCpyLen(strContent, pScriptAction->m_pContent,
                    pScriptAction->m_nBufferLen + 1);
      } else {
        g_GetStringRes(*(int *)pScriptAction->m_pContent, strContent,
                       sizeof(strContent));
      }

      KSystemMessage sMsg;
      sMsg.eType = SMT_PLAYER;
      sMsg.byConfirmType = SMCT_MSG_BOX;
      sMsg.byPriority = 0;
      sMsg.byParamSize = 0;
      g_StrCpyLen(sMsg.szMessage, strContent, sizeof(sMsg.szMessage));

      CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
      // CoreDataChanged(GDCNI_MISSION_RECORD, (unsigned int)strContent,
      // strlen(strContent));

    } break;

    case UI_NEWSINFO: {
      if (pScriptAction->m_nBufferLen <= 0)
        break;
      switch (pScriptAction->m_bOptionNum) // OPtionNum��������һ��News����
      {
      case NEWSMESSAGE_NORMAL: {

        KNewsMessage News;
        News.nType = NEWSMESSAGE_NORMAL;

        char strContent[1024];
        // ����ϢΪ�ַ���
        if (pScriptAction->m_bParam1 == 0) {
          g_StrCpyLen(strContent, pScriptAction->m_pContent,
                      pScriptAction->m_nBufferLen + 1);
        } else {
          g_GetStringRes(*(int *)pScriptAction->m_pContent, strContent,
                         sizeof(strContent));
        }

        g_StrCpyLen(News.sMsg, strContent, sizeof(News.sMsg));

        News.nMsgLen = TEncodeText(News.sMsg, strlen(News.sMsg));
        CoreDataChanged(GDCNI_NEWS_MESSAGE, (unsigned int)&News, 0);
      } break;
        // STRING|STRINGID + TIME(INT)
      case NEWSMESSAGE_COUNTING: {
        KNewsMessage News;
        News.nType = pScriptAction->m_bOptionNum;

        char strContent[1024];
        int nTime = 0;
        // ����ϢΪ�ַ���
        if (pScriptAction->m_bParam1 == 0) {
          g_StrCpyLen(strContent, pScriptAction->m_pContent,
                      pScriptAction->m_nBufferLen - sizeof(int) + 1);
        } else {
          g_GetStringRes(*(int *)pScriptAction->m_pContent, strContent,
                         sizeof(strContent));
        }

        g_StrCpyLen(News.sMsg, strContent, sizeof(News.sMsg));
        News.nMsgLen = TEncodeText(News.sMsg, strlen(News.sMsg));
        SYSTEMTIME systime;

        memset(&systime, 0, sizeof(SYSTEMTIME));
        systime.wSecond = *(int *)((pScriptAction->m_pContent +
                                    pScriptAction->m_nBufferLen - sizeof(int)));

        CoreDataChanged(GDCNI_NEWS_MESSAGE, (unsigned int)&News,
                        (unsigned int)&systime);

      } break;

      case NEWSMESSAGE_TIMEEND: {
        KNewsMessage News;
        News.nType = pScriptAction->m_bOptionNum;

        char strContent[1024];
        int nTime = 0;
        // ����ϢΪ�ַ���
        if (pScriptAction->m_bParam1 == 0) {
          g_StrCpyLen(strContent, pScriptAction->m_pContent,
                      pScriptAction->m_nBufferLen - sizeof(SYSTEMTIME) + 1);
        } else {
          g_GetStringRes(*(int *)pScriptAction->m_pContent, strContent,
                         sizeof(strContent));
        }

        g_StrCpyLen(News.sMsg, strContent, sizeof(News.sMsg));
        News.nMsgLen = TEncodeText(News.sMsg, strlen(News.sMsg));
        SYSTEMTIME systime;
        systime =
            *(SYSTEMTIME *)((pScriptAction->m_pContent +
                             pScriptAction->m_nBufferLen - sizeof(SYSTEMTIME)));
        CoreDataChanged(GDCNI_NEWS_MESSAGE, (unsigned int)&News,
                        (unsigned int)&systime);

      } break;
      }

    } break;

    case UI_NEWSINFO_1: {
      if (pScriptAction->m_nBufferLen <= 0)
        break;
      switch (pScriptAction->m_bOptionNum) // OPtionNum��������һ��News����
      {
      case NEWSMESSAGE_NORMAL_1: {

        KNewsMessage1 News;
        News.nType = NEWSMESSAGE_NORMAL_1;

        char strContent[1024];
        // ����ϢΪ�ַ���
        if (pScriptAction->m_bParam1 == 0) {
          g_StrCpyLen(strContent, pScriptAction->m_pContent,
                      pScriptAction->m_nBufferLen + 1);
        } else {
          g_GetStringRes(*(int *)pScriptAction->m_pContent, strContent,
                         sizeof(strContent));
        }

        g_StrCpyLen(News.sMsg, strContent, sizeof(News.sMsg));

        News.nMsgLen = TEncodeText(News.sMsg, strlen(News.sMsg));
        CoreDataChanged(GDCNI_NEWS_MESSAGE_1, (unsigned int)&News, 0);
      } break;
        // STRING|STRINGID + TIME(INT)
      case NEWSMESSAGE_COUNTING_1: {
        KNewsMessage1 News;
        News.nType = pScriptAction->m_bOptionNum;

        char strContent[1024];
        int nTime = 0;
        // ����ϢΪ�ַ���
        if (pScriptAction->m_bParam1 == 0) {
          g_StrCpyLen(strContent, pScriptAction->m_pContent,
                      pScriptAction->m_nBufferLen - sizeof(int) + 1);
        } else {
          g_GetStringRes(*(int *)pScriptAction->m_pContent, strContent,
                         sizeof(strContent));
        }

        g_StrCpyLen(News.sMsg, strContent, sizeof(News.sMsg));
        News.nMsgLen = TEncodeText(News.sMsg, strlen(News.sMsg));
        SYSTEMTIME systime;

        memset(&systime, 0, sizeof(SYSTEMTIME));
        systime.wSecond = *(int *)((pScriptAction->m_pContent +
                                    pScriptAction->m_nBufferLen - sizeof(int)));

        CoreDataChanged(GDCNI_NEWS_MESSAGE_1, (unsigned int)&News,
                        (unsigned int)&systime);

      } break;

      case NEWSMESSAGE_TIMEEND_1: {
        KNewsMessage1 News;
        News.nType = pScriptAction->m_bOptionNum;

        char strContent[1024];
        int nTime = 0;
        // ����ϢΪ�ַ���
        if (pScriptAction->m_bParam1 == 0) {
          g_StrCpyLen(strContent, pScriptAction->m_pContent,
                      pScriptAction->m_nBufferLen - sizeof(SYSTEMTIME) + 1);
        } else {
          g_GetStringRes(*(int *)pScriptAction->m_pContent, strContent,
                         sizeof(strContent));
        }

        g_StrCpyLen(News.sMsg, strContent, sizeof(News.sMsg));
        News.nMsgLen = TEncodeText(News.sMsg, strlen(News.sMsg));
        SYSTEMTIME systime;
        systime =
            *(SYSTEMTIME *)((pScriptAction->m_pContent +
                             pScriptAction->m_nBufferLen - sizeof(SYSTEMTIME)));
        CoreDataChanged(GDCNI_NEWS_MESSAGE_1, (unsigned int)&News,
                        (unsigned int)&systime);

      } break;
      }

    } break;
    case UI_PLAYMUSIC: {
      char szMusicFile[MAX_PATH];
      memcpy(szMusicFile, pScriptAction->m_pContent,
             pScriptAction->m_nBufferLen);
      szMusicFile[pScriptAction->m_nBufferLen] = 0;
      g_SubWorldSet.m_cMusic.ScriptPlay(szMusicFile);
    } break;

    case UI_OPENTONGUI: {
      Player[CLIENT_PLAYER_INDEX].m_cTong.OpenCreateInterface();
      break;
    }
    }
  } break;
  case SCRIPTACTION_EXESCRIPT: // Ҫ��ͻ��˵���ĳ���ű�
  {
    if (pScriptAction->m_nBufferLen <= 0)
      break;
    char szScriptInfo[1000];
    g_StrCpyLen(szScriptInfo, pScriptAction->m_pContent,
                pScriptAction->m_nBufferLen + 1);
    char *pDivPos = strstr(szScriptInfo, "/");
    if (pDivPos)
      *pDivPos++ = 0;
    if (pDivPos)
      ExecuteScript(szScriptInfo, "OnCall", pDivPos);
    else
      ExecuteScript(szScriptInfo, "OnCall", "");
  } break;
  }
}
#endif

#ifdef _SERVER
int KPlayer::AddTempTaskValue(void *pData) {
  memcpy(m_cTask.nClear, pData, sizeof(int) * MAX_TEMP_TASK);
  return 1;
}

// �ͻ���������ĳ��Npc�Ի�
// �������汾
void KPlayer::DialogNpc(BYTE *pProtocol) {
  // if (m_nAvailableAnswerNum > 0) return ;
  PLAYER_DIALOG_NPC_COMMAND *pDialogNpc =
      (PLAYER_DIALOG_NPC_COMMAND *)pProtocol;
  int nIdx = 0;
  if (pDialogNpc->nNpcId < 0)
    return;
  nIdx =
      FindAroundNpc(pDialogNpc->nNpcId); // NpcSet.SearchID(pDialogNpc->nNpcId);
  if (nIdx > 0) {
    int distance = NpcSet.GetDistance(nIdx, m_nIndex);
    // С�ڶԻ��뾶�Ϳ�ʼ�Ի�
    if ((Npc[nIdx].m_Kind == kind_dialoger) ||
        (NpcSet.GetRelation(m_nIndex, nIdx) == relation_none)) {
      if (distance <= Npc[nIdx].m_DialogRadius * 2) // �Ŵ�server�Ի��뾶
      {
        if (Npc[nIdx].ActionScript[0]) {
          ExecuteScript(Npc[nIdx].m_ActionScriptID, "main", nIdx);
        }
      }
    }
  }
}
#endif

#ifndef _SERVER
void KPlayer::s2cTradeChangeState(BYTE *pMsg) {
  TRADE_CHANGE_STATE_SYNC *pTrade = (TRADE_CHANGE_STATE_SYNC *)pMsg;

  switch (m_cMenuState.m_nState) {
  case PLAYER_MENU_STATE_NORMAL:    // ��ǰ�ͻ��� NORMAL
  case PLAYER_MENU_STATE_TRADEOPEN: // ��ǰ�ͻ��� TRADEOPEN
    if (pTrade->m_btState == 0) {
      m_cMenuState.SetState(PLAYER_MENU_STATE_NORMAL);
      CoreDataChanged(GDCNI_TRADE_OPER_DATA, 0, 0);
    } else if (pTrade->m_btState == 1) {
      m_cMenuState.SetState(PLAYER_MENU_STATE_TRADEOPEN);
      CoreDataChanged(GDCNI_TRADE_OPER_DATA, 0, 0);
    } else if (pTrade->m_btState == 2) {
      m_cMenuState.SetState(PLAYER_MENU_STATE_TRADING);
      m_cTrade.StartTrade(pTrade->m_dwNpcID);
      m_ItemList.StartTrade();

      // ֪ͨ������뽻�׽���
      KUiPlayerItem sTradePlayer;
      int nIdx;

      nIdx = NpcSet.SearchID(pTrade->m_dwNpcID);
      if (nIdx > 0)
        strcpy(sTradePlayer.Name, Npc[nIdx].Name);
      else
        sTradePlayer.Name[0] = 0;
      sTradePlayer.nIndex = 0;
      sTradePlayer.uId = 0;
      sTradePlayer.nData = 0;
      CoreDataChanged(GDCNI_TRADE_START, (unsigned int)(&sTradePlayer), 0);

      if (Npc[m_nIndex].m_Doing == do_sit) {
        Npc[m_nIndex].SendCommand(do_stand);
      }
    }
    break;
  case PLAYER_MENU_STATE_TEAMOPEN: // ��ǰ�ͻ��� TEAMOPEN
    g_Team[0].SetTeamClose();
    if (pTrade->m_btState == 0) {
      m_cMenuState.SetState(PLAYER_MENU_STATE_NORMAL);
      CoreDataChanged(GDCNI_TRADE_OPER_DATA, 0, 0);
    } else if (pTrade->m_btState == 1) {
      m_cMenuState.SetState(PLAYER_MENU_STATE_TRADEOPEN);
      CoreDataChanged(GDCNI_TRADE_OPER_DATA, 0, 0);
    } else if (pTrade->m_btState == 2) {
      m_cMenuState.SetState(PLAYER_MENU_STATE_TRADING);
      m_cTrade.StartTrade(pTrade->m_dwNpcID);
      m_ItemList.StartTrade();

      // ֪ͨ������뽻�׽���
      KUiPlayerItem sTradePlayer;
      int nIdx;

      nIdx = NpcSet.SearchID(pTrade->m_dwNpcID);
      if (nIdx > 0)
        strcpy(sTradePlayer.Name, Npc[nIdx].Name);
      else
        sTradePlayer.Name[0] = 0;
      sTradePlayer.Name[0] = 0;
      sTradePlayer.nIndex = 0;
      sTradePlayer.uId = 0;
      sTradePlayer.nData = 0;
      CoreDataChanged(GDCNI_TRADE_START, (unsigned int)(&sTradePlayer), 0);

      if (Npc[m_nIndex].m_Doing == do_sit) {
        Npc[m_nIndex].SendCommand(do_stand);
      }
    }
    break;
  case PLAYER_MENU_STATE_TRADING: // ��ǰ�ͻ��� TRADING
    // ���ͻ��˴��� TRADING ʱ����Ӧ���յ���Э��
    if (pTrade->m_btState == 0) {
      m_cMenuState.SetState(PLAYER_MENU_STATE_NORMAL);
      CoreDataChanged(GDCNI_TRADE_OPER_DATA, 0, 0);
    } else if (pTrade->m_btState == 1) {
      m_cMenuState.SetState(PLAYER_MENU_STATE_TRADEOPEN);
      CoreDataChanged(GDCNI_TRADE_OPER_DATA, 0, 0);
    } else if (pTrade->m_btState ==
               2) // �ͻ��˴�ʱ��Ӧ�������״̬���ͻ����ѳ���
    {
      m_cMenuState.m_nState = PLAYER_MENU_STATE_TRADING;
      m_cMenuState.m_nTradeDest = pTrade->m_dwNpcID;
      m_cMenuState.m_nTradeState = 0;
      m_cMenuState.m_nTradeDestState = 0;
      this->m_ItemList.RecoverTrade();
      this->m_ItemList.BackupTrade();
      this->m_ItemList.ClearRoom(room_trade);
      this->m_ItemList.ClearRoom(room_trade1);

      // ֪ͨ������뽻�׽���
      KUiPlayerItem sTradePlayer;
      int nIdx;

      nIdx = NpcSet.SearchID(pTrade->m_dwNpcID);
      if (nIdx > 0)
        strcpy(sTradePlayer.Name, Npc[nIdx].Name);
      else
        sTradePlayer.Name[0] = 0;
      sTradePlayer.Name[0] = 0;
      sTradePlayer.nIndex = 0;
      sTradePlayer.uId = 0;
      sTradePlayer.nData = 0;
      CoreDataChanged(GDCNI_TRADE_START, (unsigned int)(&sTradePlayer), 0);

      if (Npc[m_nIndex].m_Doing == do_sit) {
        Npc[m_nIndex].SendCommand(do_stand);
      }
    }
    break;
  }
}
#endif

#ifndef _SERVER
void KPlayer::s2cLevelUp(BYTE *pMsg) {
  PLAYER_LEVEL_UP_SYNC *pLevel = (PLAYER_LEVEL_UP_SYNC *)pMsg;

  if ((DWORD)Npc[m_nIndex].m_Level < (DWORD)pLevel->m_btLevel &&
      m_nExp < PlayerSet.m_cLevelAdd.GetLevelExp(Npc[m_nIndex].m_Level)) {
    KSystemMessage sMsg;
    sprintf(sMsg.szMessage, MSG_GET_EXP,
            PlayerSet.m_cLevelAdd.GetLevelExp(Npc[m_nIndex].m_Level) - m_nExp);
    sMsg.eType = SMT_NORMAL;
    sMsg.byConfirmType = SMCT_NONE;
    sMsg.byPriority = 0;
    sMsg.byParamSize = 0;
    CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
  }

  m_nExp = 0;
  Npc[m_nIndex].m_Level = (DWORD)pLevel->m_btLevel;

  if (m_cTask.GetSaveVal(139) == 1) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp1(Npc[m_nIndex].m_Level);
  } else if (m_cTask.GetSaveVal(139) == 2) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp2(Npc[m_nIndex].m_Level);
  }

  else if (m_cTask.GetSaveVal(139) == 3) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp3(Npc[m_nIndex].m_Level);
  } else if (m_cTask.GetSaveVal(139) == 4) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp4(Npc[m_nIndex].m_Level);
  } else if (m_cTask.GetSaveVal(139) == 5) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp5(Npc[m_nIndex].m_Level);
  }

  else {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp(Npc[m_nIndex].m_Level);
  }

  // -------------------------- �ȼ�����ʱ��������ͬ�� ----------------------
  // ͬ��δ�������Ե�
  if (pLevel->m_nAttributePoint > m_nAttributePoint) {
    KSystemMessage Msg;
    sprintf(Msg.szMessage, MSG_GET_ATTRIBUTE_POINT,
            pLevel->m_nAttributePoint - m_nAttributePoint);
    Msg.eType = SMT_PLAYER;
    Msg.byConfirmType = SMCT_UI_ATTRIBUTE;
    Msg.byPriority = 3;
    Msg.byParamSize = 0;
    CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&Msg, NULL);
  }
  m_nAttributePoint = pLevel->m_nAttributePoint;

  // ͬ��δ���似�ܵ�
  if (m_nSkillPoint < pLevel->m_nSkillPoint) {
    KSystemMessage Msg;
    sprintf(Msg.szMessage, MSG_GET_SKILL_POINT,
            pLevel->m_nSkillPoint - m_nSkillPoint);
    Msg.eType = SMT_PLAYER;
    Msg.byConfirmType = SMCT_UI_SKILLS;
    Msg.byPriority = 3;
    Msg.byParamSize = 0;
    CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&Msg, NULL);
  }
  m_nSkillPoint = pLevel->m_nSkillPoint;

  // ��������������������ֵ��Ӱ������������������������ֵ�����أ��ȼ������Ե㣬Ӱ�쵱ǰ�������ֵ�����أ�װ�������ܡ�ҩ���ʱ����
  Npc[m_nIndex].m_LifeMax = pLevel->m_nBaseLifeMax;
  Npc[m_nIndex].m_StaminaMax = pLevel->m_nBaseStaminaMax;
  Npc[m_nIndex].m_ManaMax = pLevel->m_nBaseManaMax;
  //	Npc[m_nIndex].ResetLifeReplenish();
  Npc[m_nIndex].m_CurrentLifeMax = Npc[m_nIndex].m_LifeMax;
  Npc[m_nIndex].m_CurrentStaminaMax = Npc[m_nIndex].m_StaminaMax;
  Npc[m_nIndex].m_CurrentManaMax = Npc[m_nIndex].m_ManaMax;

  // ������ֿ��Եı仯 �𡢱��������硢����
  Npc[m_nIndex].m_FireResist = PlayerSet.m_cLevelAdd.GetFireResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentFireResist = Npc[m_nIndex].m_FireResist;
  Npc[m_nIndex].m_ColdResist = PlayerSet.m_cLevelAdd.GetColdResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentColdResist = Npc[m_nIndex].m_ColdResist;
  Npc[m_nIndex].m_PoisonResist = PlayerSet.m_cLevelAdd.GetPoisonResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentPoisonResist = Npc[m_nIndex].m_PoisonResist;
  Npc[m_nIndex].m_LightResist = PlayerSet.m_cLevelAdd.GetLightResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentLightResist = Npc[m_nIndex].m_LightResist;
  Npc[m_nIndex].m_PhysicsResist = PlayerSet.m_cLevelAdd.GetPhysicsResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_CurrentPhysicsResist = Npc[m_nIndex].m_PhysicsResist;
  Npc[m_nIndex].m_FireResistMax = BASE_FIRE_RESIST_MAX;
  Npc[m_nIndex].m_ColdResistMax = BASE_COLD_RESIST_MAX;
  Npc[m_nIndex].m_PoisonResistMax = BASE_POISON_RESIST_MAX;
  Npc[m_nIndex].m_LightResistMax = BASE_LIGHT_RESIST_MAX;
  Npc[m_nIndex].m_PhysicsResistMax = BASE_PHYSICS_RESIST_MAX;
  Npc[m_nIndex].m_CurrentFireResistMax = Npc[m_nIndex].m_FireResistMax;
  Npc[m_nIndex].m_CurrentColdResistMax = Npc[m_nIndex].m_ColdResistMax;
  Npc[m_nIndex].m_CurrentPoisonResistMax = Npc[m_nIndex].m_PoisonResistMax;
  Npc[m_nIndex].m_CurrentLightResistMax = Npc[m_nIndex].m_LightResistMax;
  Npc[m_nIndex].m_CurrentPhysicsResistMax = Npc[m_nIndex].m_PhysicsResistMax;

  int nOldCurCamp = Npc[m_nIndex].m_CurrentCamp;
  // ����װ����������Ϣ���µ�ǰ����
  this->UpdataCurData();
  SetNpcPhysicsDamage();
  Npc[m_nIndex].m_CurrentCamp = nOldCurCamp;

  // ����������������ֵ����
  Npc[m_nIndex].m_CurrentLife = Npc[m_nIndex].m_CurrentLifeMax;
  Npc[m_nIndex].m_CurrentStamina = Npc[m_nIndex].m_CurrentStaminaMax;
  Npc[m_nIndex].m_CurrentMana = Npc[m_nIndex].m_CurrentManaMax;

  // �ͻ��˶������Լ��ĵȼ���һ
  if (this->m_cTeam.m_nFlag) {
    if (m_cTeam.m_nFigure == TEAM_CAPTAIN) {
      g_Team[0].m_nMemLevel[0] = Npc[m_nIndex].m_Level;
    } else {
      for (int i = 0; i < MAX_TEAM_MEMBER; i++) {
        if ((DWORD)g_Team[0].m_nMember[i] == Npc[m_nIndex].m_dwID) {
          g_Team[0].m_nMemLevel[i] = Npc[m_nIndex].m_Level;
          break;
        }
      }
    }
  }

  KSystemMessage Msg;

  Msg.byConfirmType = SMCT_CLICK;
  Msg.byParamSize = 0;
  Msg.byPriority = 1;
  Msg.eType = SMT_PLAYER;
  sprintf(Msg.szMessage, MSG_LEVEL_UP, Npc[m_nIndex].m_Level);
  CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&Msg, NULL);

  Npc[this->m_nIndex].SetInstantSpr(enumINSTANT_STATE_LEVELUP);
}
#endif

#ifndef _SERVER
void KPlayer::s2cGetCurAttribute(BYTE *pMsg) {
  PLAYER_ATTRIBUTE_SYNC *pAttribute = (PLAYER_ATTRIBUTE_SYNC *)pMsg;
  m_nAttributePoint = pAttribute->m_nLeavePoint;
  int nData;
  switch (pAttribute->m_btAttribute) {
  case ATTRIBUTE_STRENGTH:
    nData = pAttribute->m_nBasePoint - m_nStrength;
    m_nStrength = pAttribute->m_nBasePoint;
    m_nCurStrength = pAttribute->m_nCurPoint;
    UpdataCurData();
    SetNpcPhysicsDamage();
    break;
  case ATTRIBUTE_DEXTERITY:
    nData = pAttribute->m_nBasePoint - m_nDexterity;
    m_nDexterity = pAttribute->m_nBasePoint;
    SetNpcAttackRating();
    SetNpcDefence();
    UpdataCurData();
    SetNpcPhysicsDamage();
    break;
  case ATTRIBUTE_VITALITY:
    nData = pAttribute->m_nBasePoint - m_nVitality;
    m_nVitality = pAttribute->m_nBasePoint;
    Npc[m_nIndex].AddBaseLifeMax(
        PlayerSet.m_cLevelAdd.GetLifePerVitality(Npc[m_nIndex].m_Series) *
        nData);
    Npc[m_nIndex].AddBaseStaminaMax(
        PlayerSet.m_cLevelAdd.GetStaminaPerVitality(Npc[m_nIndex].m_Series) *
        nData);
    UpdataCurData();
    break;
  case ATTRIBUTE_ENGERGY:
    nData = pAttribute->m_nBasePoint - m_nEngergy;
    m_nEngergy = pAttribute->m_nBasePoint;
    Npc[m_nIndex].AddBaseManaMax(
        PlayerSet.m_cLevelAdd.GetManaPerEnergy(Npc[m_nIndex].m_Series) * nData);
    UpdataCurData();
    break;
  }
  CoreDataChanged(GDCNI_PLAYER_RT_ATTRIBUTE, 0, 0);
}
#endif

#ifndef _SERVER
void KPlayer::s2cSetExp(int nExp) {
  if (nExp > m_nExp) {

    KSystemMessage sMsg;
    sprintf(sMsg.szMessage, MSG_GET_EXP, nExp - m_nExp);
    sMsg.eType = SMT_NORMAL;
    sMsg.byConfirmType = SMCT_NONE;
    sMsg.byPriority = 0;
    sMsg.byParamSize = 0;
    CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);

  } else if (nExp < m_nExp) {
    KSystemMessage sMsg;
    sprintf(sMsg.szMessage, MSG_DEC_EXP, m_nExp - nExp);
    sMsg.eType = SMT_NORMAL;
    sMsg.byConfirmType = SMCT_NONE;
    sMsg.byPriority = 0;
    sMsg.byParamSize = 0;
    CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
  }

  this->m_nExp = nExp;
}
#endif

#ifndef _SERVER
void KPlayer::s2cSyncMoney(BYTE *pMsg) {
  PLAYER_MONEY_SYNC *pMoney = (PLAYER_MONEY_SYNC *)pMsg;

  if (CheckTrading()) {
    if (pMoney->m_nMoney1 >= pMoney->m_nMoney3) {
      m_ItemList.SetMoney(pMoney->m_nMoney1 - pMoney->m_nMoney3,
                          pMoney->m_nMoney2, pMoney->m_nMoney3);
    } else {
      m_ItemList.SetMoney(
          0, pMoney->m_nMoney2 + pMoney->m_nMoney1 - pMoney->m_nMoney3,
          pMoney->m_nMoney3);
    }
    m_cTrade.m_nTradeState = 0;
    m_cTrade.m_nTradeDestState = 0;
    m_cTrade.m_nBackEquipMoney = pMoney->m_nMoney1;
    m_cTrade.m_nBackRepositoryMoney = pMoney->m_nMoney2;
  } else {
    // ��Ǯһ���ǵ�room_equipment
    int nMoney1 = m_ItemList.GetMoney(room_equipment);
    if (pMoney->m_nMoney1 - nMoney1 > 0) {
      KSystemMessage sMsg;
      sMsg.eType = SMT_NORMAL;
      sMsg.byConfirmType = SMCT_NONE;
      sMsg.byPriority = 0;
      sMsg.byParamSize = 0;
      sprintf(sMsg.szMessage, MSG_EARN_MONEY, pMoney->m_nMoney1 - nMoney1);
      CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
    }
    m_ItemList.SetMoney(pMoney->m_nMoney1, pMoney->m_nMoney2,
                        pMoney->m_nMoney3);
  }
}
#endif

#ifndef _SERVER
//---------------------------------------------------------------------
//	���ܣ��յ�������֪ͨ�������뽻��
//---------------------------------------------------------------------
void KPlayer::s2cTradeApplyStart(BYTE *pMsg) {
  if (!pMsg)
    return;
  TRADE_APPLY_START_SYNC *pApply = (TRADE_APPLY_START_SYNC *)pMsg;
  int nNpcIdx;
  nNpcIdx = NpcSet.SearchID(pApply->m_dwNpcId);
  if (nNpcIdx == 0)
    return;

  KSystemMessage sMsg;
  KUiPlayerItem sPlayer;

  strcpy(sPlayer.Name, Npc[nNpcIdx].Name);
  sPlayer.nIndex = pApply->m_nDestIdx;
  sPlayer.uId = pApply->m_dwNpcId;
  sPlayer.nData = 0;

  sprintf(sMsg.szMessage, MSG_TRADE_GET_APPLY, Npc[nNpcIdx].Name);
  sMsg.eType = SMT_SYSTEM;
  sMsg.byConfirmType = SMCT_UI_TRADE;
  sMsg.byPriority = 3;
  sMsg.byParamSize = sizeof(KUiPlayerItem);
  CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, (int)&sPlayer);
}
#endif

#ifndef _SERVER
void KPlayer::s2cTradeMoneySync(BYTE *pMsg) {
  TRADE_MONEY_SYNC *pMoney = (TRADE_MONEY_SYNC *)pMsg;

  m_ItemList.SetRoomMoney(room_trade1, pMoney->m_nMoney);

  // ֪ͨ����
  KUiObjAtRegion sMoney;
  sMoney.Obj.uGenre = CGOG_MONEY;
  sMoney.Obj.uId = pMoney->m_nMoney;
  CoreDataChanged(GDCNI_TRADE_DESIRE_ITEM, (unsigned int)&sMoney, 0);
}
#endif

#ifndef _SERVER
//---------------------------------------------------------------------
//	���ܣ��յ�������֪ͨ������ɻ�ȡ��
//---------------------------------------------------------------------
void KPlayer::s2cTradeDecision(BYTE *pMsg) {
  TRADE_DECISION_SYNC *pSync = (TRADE_DECISION_SYNC *)pMsg;
  if (pSync->m_btDecision == 1) // ��ɽ���
  {
    KSystemMessage sMsg;
    sprintf(sMsg.szMessage, MSG_TRADE_SUCCESS, m_cTrade.m_szDestName);
    sMsg.eType = SMT_NORMAL;
    sMsg.byConfirmType = SMCT_NONE;
    sMsg.byPriority = 0;
    sMsg.byParamSize = 0;
    CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);

    // ����ItemList.Remove����� modify by spe 03/06/14
    // m_ItemList.ClearRoom(room_trade);
    m_ItemList.RemoveAllInOneRoom(room_trade1);
    // m_ItemList.ClearRoom(room_trade1);
    m_ItemList.ClearRoom(room_tradeback);
    this->m_cTrade.Release();
    m_cMenuState.SetState(PLAYER_MENU_STATE_NORMAL);

    // ֪ͨ���潻�׽���
    CoreDataChanged(GDCNI_TRADE_END, 0, 0);

    m_ItemList.MenuSetMouseItem();
  } else if (pSync->m_btDecision == 0) // ȡ������
  {
    if (!CheckTrading())
      return;

    KSystemMessage sMsg;
    sprintf(sMsg.szMessage, MSG_TRADE_FAIL, m_cTrade.m_szDestName);
    sMsg.eType = SMT_NORMAL;
    sMsg.byConfirmType = SMCT_NONE;
    sMsg.byPriority = 0;
    sMsg.byParamSize = 0;
    CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);

    // ȡ�����׵����ݻָ�
    m_ItemList.RecoverTrade();
    m_ItemList.SetMoney(m_cTrade.m_nBackEquipMoney,
                        m_cTrade.m_nBackRepositoryMoney, 0);
    m_ItemList.ClearRoom(room_trade);
    m_ItemList.RemoveAllInOneRoom(room_trade1);
    //		m_ItemList.ClearRoom(room_trade1);
    m_ItemList.ClearRoom(room_tradeback);
    m_cTrade.Release();
    m_cMenuState.SetState(PLAYER_MENU_STATE_NORMAL);

    // ֪ͨ���潻�׽���
    CoreDataChanged(GDCNI_TRADE_END, 0, 0);
    // ������Ʒ���
    CoreDataChanged(GDCNI_CONTAINER_OBJECT_CHANGED, UOC_ITEM_TAKE_WITH, 0);

    m_ItemList.MenuSetMouseItem();
  }
}
#endif

#ifndef _SERVER
void KPlayer::SyncCurPlayer(BYTE *pMsg) {
  if (dacheck)
    return;
  dacheck = TRUE;

  m_ItemList.RemoveAll();

  CURPLAYER_SYNC *PlaySync = (CURPLAYER_SYNC *)pMsg;
  this->m_nIndex = NpcSet.SearchID(PlaySync->m_dwID);
  this->m_dwID = g_FileName2Id(Npc[m_nIndex].Name);

  Npc[m_nIndex].m_Kind = kind_player;
  Npc[m_nIndex].m_Level = (DWORD)PlaySync->m_btLevel;
  Npc[m_nIndex].m_nSex = PlaySync->m_btSex;
  Npc[m_nIndex].m_Series = PlaySync->m_btSeries;
  Npc[m_nIndex].SetPlayerIdx(CLIENT_PLAYER_INDEX);

  m_nAttributePoint = PlaySync->m_wAttributePoint;
  m_nSkillPoint = PlaySync->m_wSkillPoint;
  m_nStrength = PlaySync->m_wStrength;
  m_nDexterity = PlaySync->m_wDexterity;
  m_nVitality = PlaySync->m_wVitality;
  m_nEngergy = PlaySync->m_wEngergy;
  m_nLucky = PlaySync->m_wLucky;

  m_nCurStrength = m_nStrength;
  m_nCurDexterity = m_nDexterity;
  m_nCurVitality = m_nVitality;
  m_nCurEngergy = m_nEngergy;
  m_nCurLucky = m_nLucky;
  SetFirstDamage();
  SetBaseAttackRating();
  SetBaseDefence();
  Npc[m_nIndex].m_ActionScriptID = 0;
  Npc[m_nIndex].m_TrapScriptID = 0;
  m_nExp = PlaySync->m_nExp;

  if (m_cTask.GetSaveVal(139) == 1) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp1(PlaySync->m_btLevel);
  } else if (m_cTask.GetSaveVal(139) == 2) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp2(PlaySync->m_btLevel);
  }

  else if (m_cTask.GetSaveVal(139) == 3) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp3(PlaySync->m_btLevel);
  } else if (m_cTask.GetSaveVal(139) == 4) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp4(PlaySync->m_btLevel);
  } else if (m_cTask.GetSaveVal(139) == 5) {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp5(PlaySync->m_btLevel);
  }

  else {
    m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp(PlaySync->m_btLevel);
  }

  m_dwLeadExp = PlaySync->m_dwLeadExp;
  m_ImagePlayer = PlaySync->m_btImagePlayer; // chan dung
  m_dwLeadLevel = PlayerSet.m_cLeadExp.GetLevel(m_dwLeadExp);
  m_dwNextLevelLeadExp = PlayerSet.m_cLeadExp.GetLevelExp(m_dwLeadLevel);

  m_cFaction.m_nCurFaction = (char)PlaySync->m_btCurFaction;
  m_cFaction.m_nFirstAddFaction = (char)PlaySync->m_btFirstFaction;
  m_cFaction.m_nAddTimes = PlaySync->m_nFactionAddTimes;

  m_nWorldStat = (int)PlaySync->m_wWorldStat;
  m_nSectStat = (int)PlaySync->m_wSectStat;

  m_ItemList.Init(CLIENT_PLAYER_INDEX);
  m_ItemList.SetMoney(PlaySync->m_nMoney1, PlaySync->m_nMoney2, 0);
  Npc[m_nIndex].m_LifeMax = PlaySync->m_wLifeMax;
  Npc[m_nIndex].m_ManaMax = PlaySync->m_wManaMax;
  Npc[m_nIndex].m_StaminaMax = PlaySync->m_wStaminaMax;
  Npc[m_nIndex].m_LifeReplenish = PLAYER_LIFE_REPLENISH;
  Npc[m_nIndex].m_ManaReplenish = PLAYER_MANA_REPLENISH;
  Npc[m_nIndex].m_StaminaGain = PLAYER_STAMINA_GAIN;
  Npc[m_nIndex].m_StaminaLoss = PLAYER_STAMINA_LOSS;
  Npc[m_nIndex].m_bNpcFollowFindPath = FALSE;

  m_nAutoPlay = FALSE;

  SetBaseResistData();
  SetBaseSpeedAndRadius();

  Npc[m_nIndex].RestoreNpcBaseInfo();

  m_BuyInfo.Clear();
  m_cMenuState.Release();
  m_cChat.Release();
  memset(m_szTaskAnswerFun, 0, sizeof(m_szTaskAnswerFun));
  m_nAvailableAnswerNum = 0;

  Npc[m_nIndex].m_Experience = 0;
  memset(Npc[m_nIndex].m_szChatBuffer, 0, sizeof(Npc[m_nIndex].m_szChatBuffer));
  Npc[m_nIndex].m_nCurChatTime = 0;

  m_RunStatus = 1;
  m_nLeftSkillID = 0;
  m_nLeftSkillLevel = 0;
  m_nRightSkillID = 0;
  m_nRightSkillLevel = 0;
  m_nPeapleIdx = 0;
  m_nObjectIdx = 0;
  m_MouseDown[0] = 0;
  m_MouseDown[1] = 0;

  Npc[m_nIndex].m_SyncSignal = 0;

  ZeroMemory(m_szNameOpenShop, 32);
  m_dwTimeOpenShop = 0;
  m_dwTimeBuyShop = 0;

  ZeroMemory(Npc[m_nIndex].m_szNameOpenShop, 32);
  Npc[m_nIndex].m_dwTimeOpenShop = 0;

  // Npc[m_nIndex].RestoreLiveData();
  //	SubWorld[0].AddPlayer(Npc[m_nIndex].m_RegionIndex,
  // 0);//m_Region[Npc[m_nIndex].m_RegionIndex].AddPlayer(0);//
  // m_WorldMessage.Send(GWM_PLAYER_ADD, Npc[m_nIndex].m_RegionIndex, 0);
}
#endif

BOOL KPlayer::CheckTrading() {
  return (m_cMenuState.m_nState == PLAYER_MENU_STATE_TRADING);
}

BOOL KPlayer::CheckShopOpen() {

  if (m_dwTimeOpenShop)
    return TRUE;

  return FALSE;
}

BOOL KPlayer::CheckShopBuyOpen() {

  if (m_dwTimeBuyShop)
    return TRUE;

  return FALSE;
}

void KPlayer::SetFirstDamage() {
  int nDamageBase;

  nDamageBase = m_nCurStrength / STRENGTH_SET_DAMAGE_VALUE + 1;

  Npc[m_nIndex].m_PhysicsDamage.nValue[0] = nDamageBase;
  Npc[m_nIndex].m_PhysicsDamage.nValue[2] = nDamageBase;
  Npc[m_nIndex].m_PhysicsDamage.nValue[1] = 0;

  Npc[m_nIndex].m_CurrentPhysicsDamage2.nValue[0] = 0;
  Npc[m_nIndex].m_CurrentPhysicsDamage2.nValue[2] = 0;
  Npc[m_nIndex].m_CurrentPhysicsDamage2.nValue[1] = 0;

  Npc[m_nIndex].m_CurrentFireDamage.nValue[0] = 0;
  Npc[m_nIndex].m_CurrentFireDamage.nValue[1] = 0;
  Npc[m_nIndex].m_CurrentFireDamage.nValue[2] = 0;

  Npc[m_nIndex].m_CurrentFireDamage2.nValue[0] = 0;
  Npc[m_nIndex].m_CurrentFireDamage2.nValue[1] = 0;
  Npc[m_nIndex].m_CurrentFireDamage2.nValue[2] = 0;

  Npc[m_nIndex].m_CurrentColdDamage.nValue[0] = 0;
  Npc[m_nIndex].m_CurrentColdDamage.nValue[1] = 0;
  Npc[m_nIndex].m_CurrentColdDamage.nValue[2] = 0;

  Npc[m_nIndex].m_CurrentColdDamage2.nValue[0] = 0;
  Npc[m_nIndex].m_CurrentColdDamage2.nValue[1] = 0;
  Npc[m_nIndex].m_CurrentColdDamage2.nValue[2] = 0;

  Npc[m_nIndex].m_CurrentLightDamage.nValue[0] = 0;
  Npc[m_nIndex].m_CurrentLightDamage.nValue[1] = 0;
  Npc[m_nIndex].m_CurrentLightDamage.nValue[2] = 0;

  Npc[m_nIndex].m_CurrentLightDamage2.nValue[0] = 0;
  Npc[m_nIndex].m_CurrentLightDamage2.nValue[1] = 0;
  Npc[m_nIndex].m_CurrentLightDamage2.nValue[2] = 0;

  Npc[m_nIndex].m_CurrentPoisonDamage.nValue[0] = 0;
  Npc[m_nIndex].m_CurrentPoisonDamage.nValue[1] = 0;
  Npc[m_nIndex].m_CurrentPoisonDamage.nValue[2] = 0;

  Npc[m_nIndex].m_CurrentPoisonDamage2.nValue[0] = 0;
  Npc[m_nIndex].m_CurrentPoisonDamage2.nValue[1] = 0;
  Npc[m_nIndex].m_CurrentPoisonDamage2.nValue[2] = 0;
}

void KPlayer::SetBaseAttackRating() {
  Npc[m_nIndex].m_AttackRating = m_nDexterity * 4 - 28;
}

void KPlayer::SetBaseDefence() { Npc[m_nIndex].m_Defend = m_nDexterity >> 2; }

void KPlayer::SetBaseResistData() {
  Npc[m_nIndex].m_FireResist = PlayerSet.m_cLevelAdd.GetFireResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_ColdResist = PlayerSet.m_cLevelAdd.GetColdResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_PoisonResist = PlayerSet.m_cLevelAdd.GetPoisonResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_LightResist = PlayerSet.m_cLevelAdd.GetLightResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_PhysicsResist = PlayerSet.m_cLevelAdd.GetPhysicsResist(
      Npc[m_nIndex].m_Series, Npc[m_nIndex].m_Level);
  Npc[m_nIndex].m_FireResistMax = BASE_FIRE_RESIST_MAX;
  Npc[m_nIndex].m_ColdResistMax = BASE_COLD_RESIST_MAX;
  Npc[m_nIndex].m_PoisonResistMax = BASE_POISON_RESIST_MAX;
  Npc[m_nIndex].m_LightResistMax = BASE_LIGHT_RESIST_MAX;
  Npc[m_nIndex].m_PhysicsResistMax = BASE_PHYSICS_RESIST_MAX;
}

void KPlayer::SetBaseSpeedAndRadius() {
  Npc[m_nIndex].m_WalkSpeed = BASE_WALK_SPEED;
  Npc[m_nIndex].m_RunSpeed = BASE_RUN_SPEED;
  Npc[m_nIndex].m_AttackSpeed = BASE_ATTACK_SPEED;
  Npc[m_nIndex].m_CastSpeed = BASE_CAST_SPEED;
  Npc[m_nIndex].m_VisionRadius = BASE_VISION_RADIUS;
  Npc[m_nIndex].m_HitRecover = BASE_HIT_RECOVER;
}

#ifndef _SERVER
// �ͻ��˰汾
void KPlayer::DialogNpc(int nIndex) {

  if (nIndex > 0 && Npc[nIndex].m_Index > 0) {
    if (Npc[nIndex].ActionScript[0]) {
      ExecuteScript(Npc[nIndex].m_ActionScriptID, "main", "");
    } else {
      PLAYER_DIALOG_NPC_COMMAND DialogNpcCmd;
      DialogNpcCmd.nNpcId = Npc[nIndex].m_dwID;
      DialogNpcCmd.ProtocolType = c2s_dialognpc;
      if (g_pClient)
        g_pClient->SendPackToServer(&DialogNpcCmd,
                                    sizeof(PLAYER_DIALOG_NPC_COMMAND));
    }
  }
}
#endif

#ifndef _SERVER
void KPlayer::CheckObject(int nIdx) {
  /*	enum	// �������
  {
  Obj_Kind_MapObj = 0,		// ��ͼ�������Ҫ���ڵ�ͼ����
  Obj_Kind_Body,				// npc ��ʬ��
  Obj_Kind_Box,				// ����
  Obj_Kind_Item,				// ���ڵ��ϵ�װ��
  Obj_Kind_Money,				// ���ڵ��ϵ�Ǯ
  Obj_Kind_LoopSound,			// ѭ����Ч
  Obj_Kind_RandSound,			// �����Ч
  Obj_Kind_Light,				// ��Դ��3Dģʽ�з���Ķ�����
  Obj_Kind_Door,				// ����
  Obj_Kind_Trap,				// ����
  Obj_Kind_Prop,				// С���ߣ�������
  Obj_Kind_Num,				// �����������
  };*/

  switch (Object[nIdx].m_nKind) {
  case Obj_Kind_Item:
  case Obj_Kind_Money:
  case Obj_Kind_Prop:
    PickUpObj(nIdx);
    Object[Npc[m_nIndex].m_nObjectIdx].m_nAutoNoActack = TRUE;
    Npc[m_nIndex].m_nObjectIdx = 0;
    break;
  case Obj_Kind_Box:
  case Obj_Kind_Door:
  case Obj_Kind_Trap:
    this->ObjMouseClick(nIdx);
    Npc[m_nIndex].m_nObjectIdx = 0;
    break;
  default:
    break;
  }
  m_nObjectIdx = 0;
  m_nPickObjectIdx = 0;
}
#endif

#ifndef _SERVER
void KPlayer::DrawSelectInfo() {
  if (m_nIndex <= 0)
    return;

  int Map = SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID;
  // if (Map == 33 || Map == 37)
  // Npc[m_nIndex].PaintTopTongKim(TK_PK1,TK_PK2,TK_PK3,TK_PK4,m_cTask.GetSaveVal(485));
  Npc[m_nIndex].PaintEffect();

  if (m_nPeapleIdx) {
    //		Npc[m_nPeapleIdx].DrawBorder();

    if (Npc[m_nPeapleIdx].m_Kind == kind_player) {
      if (!NpcSet.CheckShowName()) {
        Npc[m_nPeapleIdx].PaintInfo(Npc[m_nPeapleIdx].GetNpcPate(), true);
      }
    } else if (Npc[m_nPeapleIdx].m_Kind == kind_dialoger) {
      if (!NpcSet.CheckShowName()) {
        Npc[m_nPeapleIdx].PaintInfo(Npc[m_nPeapleIdx].GetNpcPate(), true);
      }
    } else {
      Npc[m_nPeapleIdx].DrawBlood();
    }

    return;
  }
  if (m_nObjectIdx) {
    if (!ObjSet.CheckShowName())
      Object[m_nObjectIdx].DrawInfo();
    //		Object[m_nObjectIdx].DrawBorder();
    return;
  }
}
#endif

#ifndef _SERVER

void KPlayer::GetEchoAttack(int *nAttack, int nType) {

  int nSkillId;
  *nAttack = 0;

  if (m_nIndex <= 0 || m_nIndex >= MAX_NPC || NULL == nAttack)
    return;

  nSkillId = (0 == nType) ? m_nLeftSkillID : m_nRightSkillID;

  int nLevel = Npc[m_nIndex].m_SkillList.GetCurrentLevel(nSkillId);

  if (nSkillId <= 0 || nLevel <= 0 || nLevel >= MAX_SKILLLEVEL)
    return;

  KMagicAttrib *pMagicData = NULL;

  KSkill *pOrdinSkill = (KSkill *)g_SkillManager.GetSkill(nSkillId, nLevel);
  if (!pOrdinSkill)
    return;

  switch (pOrdinSkill->GetSkillStyle()) {
  case SKILL_SS_Missles:
  case SKILL_SS_Melee:
  case SKILL_SS_InitiativeNpcState:
  case SKILL_SS_PassivityNpcState: {
  } break;
  default:
    return;
  }

  BOOL bIsMele = pOrdinSkill->IsUseAR();

  if (!bIsMele)
    return;

  pMagicData = pOrdinSkill->GetDamageAttribs();

  if (!pMagicData)
    return;

  if (pMagicData->nAttribType == magic_attackrating_p) {
    *nAttack = Npc[m_nIndex].m_CurrentAttackRating +
               Npc[m_nIndex].m_AttackRating * pMagicData->nValue[0] / 100;
  } else {
    *nAttack = Npc[m_nIndex].m_CurrentAttackRating;
  }
}

void KPlayer::GetEchoDamage(int *nMin, int *nMax, int nType) {
  int nSkillId;
  *nMin = 0;
  *nMax = 0;

  if (m_nIndex <= 0 || m_nIndex >= MAX_NPC || nType < 0 || nType > 1 ||
      NULL == nMin || NULL == nMax)
    return;

  nSkillId = (0 == nType) ? m_nLeftSkillID : m_nRightSkillID;
  int nLevel = Npc[m_nIndex].m_SkillList.GetCurrentLevel(nSkillId);

  if (nSkillId <= 0 || nLevel <= 0 || nLevel >= MAX_SKILLLEVEL)
    return;

  KMagicAttrib *pMagicData = NULL;

  KSkill *pOrdinSkill = (KSkill *)g_SkillManager.GetSkill(nSkillId, nLevel);
  if (!pOrdinSkill)
    return;

  switch (pOrdinSkill->GetSkillStyle()) {
  case SKILL_SS_Missles: //	�ӵ���		���������ڷ����ӵ���
  case SKILL_SS_Melee:
  case SKILL_SS_InitiativeNpcState: //	������
                                    // ���������ڸı䵱ǰNpc������״̬
  case SKILL_SS_PassivityNpcState:  //	������
                                    // ���������ڸı�Npc�ı���״̬
  {
  } break;
  default:
    return;
  }

  BOOL bIsPhysical = pOrdinSkill->IsPhysical();
  BOOL bIsSkillMagic = pOrdinSkill->IsSkillMagic();
  BOOL bIsSkillPhysical = pOrdinSkill->IsSkillPhysical();

  pMagicData = pOrdinSkill->GetDamageAttribs();

  if (!pMagicData)
    return;

  int CurrentSkillAddDameActive = 0;

  if (nSkillId > 0 && nSkillId <= 500) {
    CurrentSkillAddDameActive =
        Npc[m_nIndex].m_SkillList.m_CurrentListSkillAddDame[nSkillId - 1];
  }

  int DamePecentToLevel = 0;

  if (Npc[m_nIndex].IsPlayer()) {
    if (Npc[m_nIndex].m_Level > 100 && Npc[m_nIndex].m_Level <= 200) {
      DamePecentToLevel = (Npc[m_nIndex].m_Level - 100) / 5;
    }
  }

  int nMinNpcDamage = Npc[m_nIndex].m_PhysicsDamage.nValue[0] +
                      Npc[m_nIndex].m_CurrentAddPhysicsDamage;
  int nMaxNpcDamage = Npc[m_nIndex].m_PhysicsDamage.nValue[2] +
                      Npc[m_nIndex].m_CurrentAddPhysicsDamage;
  // Skip attackrating
  pMagicData++;
  // Skip ignoredefense
  pMagicData++;
  // Calc physics damage
  if (magic_physicsenhance_p == pMagicData->nAttribType) {
    *nMin += nMinNpcDamage *
             (100 +
              pMagicData->nValue[0] * (100 + CurrentSkillAddDameActive) / 100) /
             100;
    *nMax += nMaxNpcDamage *
             (100 +
              pMagicData->nValue[0] * (100 + CurrentSkillAddDameActive) / 100) /
             100;

    int nEnhance;
    if (equip_meleeweapon == m_ItemList.GetWeaponType()) {
      nEnhance =
          Npc[m_nIndex].m_CurrentMeleeEnhance[m_ItemList.GetWeaponParticular()];
    } else if (equip_rangeweapon == m_ItemList.GetWeaponType()) {
      nEnhance = Npc[m_nIndex].m_CurrentRangeEnhance;
    } else {
      nEnhance = Npc[m_nIndex].m_CurrentHandEnhance;
    }
    *nMin += nMinNpcDamage * nEnhance / 100;
    *nMax += nMaxNpcDamage * nEnhance / 100;
  } else if (magic_physicsdamage_v == pMagicData->nAttribType) {
    *nMin += pMagicData->nValue[0] * (100 + CurrentSkillAddDameActive) / 100;
    *nMax += pMagicData->nValue[2] * (100 + CurrentSkillAddDameActive) / 100;

    if (bIsSkillMagic) {
      *nMin += Npc[m_nIndex].m_CurrentPhysicsDamage2.nValue[0];
      *nMax += Npc[m_nIndex].m_CurrentPhysicsDamage2.nValue[2];
    }
  }
  pMagicData++;
  // Calc cold damage
  if (magic_colddamage_v == pMagicData->nAttribType) {
    *nMin += pMagicData->nValue[0] * (100 + CurrentSkillAddDameActive) / 100;
    *nMax += pMagicData->nValue[2] * (100 + CurrentSkillAddDameActive) / 100;

    if (bIsSkillMagic) {
      *nMin += Npc[m_nIndex].m_CurrentColdDamage2.nValue[0];
      *nMax += Npc[m_nIndex].m_CurrentColdDamage2.nValue[2];
    }
  }
  if (bIsSkillPhysical) {
    *nMin += Npc[m_nIndex].m_CurrentColdDamage.nValue[0];
    *nMax += Npc[m_nIndex].m_CurrentColdDamage.nValue[2];
  }
  pMagicData++;
  // Calc fire damage
  if (magic_firedamage_v == pMagicData->nAttribType) {
    *nMin += pMagicData->nValue[0] * (100 + CurrentSkillAddDameActive) / 100 +
             pMagicData->nValue[0] * (100 + CurrentSkillAddDameActive) / 100 *
                 Npc[m_nIndex].m_CurrentFireEnhance / 100;
    *nMax += pMagicData->nValue[2] * (100 + CurrentSkillAddDameActive) / 100 +
             pMagicData->nValue[2] * (100 + CurrentSkillAddDameActive) / 100 *
                 Npc[m_nIndex].m_CurrentFireEnhance / 100;

    if (bIsSkillMagic) {
      *nMin += Npc[m_nIndex].m_CurrentFireDamage2.nValue[0] +
               Npc[m_nIndex].m_CurrentFireDamage2.nValue[0] *
                   Npc[m_nIndex].m_CurrentFireEnhance / 100;
      *nMax += Npc[m_nIndex].m_CurrentFireDamage2.nValue[2] +
               Npc[m_nIndex].m_CurrentFireDamage2.nValue[2] *
                   Npc[m_nIndex].m_CurrentFireEnhance / 100;
    }
  }
  if (bIsSkillPhysical) {
    *nMin += Npc[m_nIndex].m_CurrentFireDamage.nValue[0] +
             Npc[m_nIndex].m_CurrentFireDamage.nValue[0] *
                 Npc[m_nIndex].m_CurrentFireEnhance / 100;
    *nMax += Npc[m_nIndex].m_CurrentFireDamage.nValue[2] +
             Npc[m_nIndex].m_CurrentFireDamage.nValue[2] *
                 Npc[m_nIndex].m_CurrentFireEnhance / 100;
  }
  pMagicData++;
  // Calc lighting damage
  if (magic_lightingdamage_v == pMagicData->nAttribType) {
    *nMin += pMagicData->nValue[0] * (100 + CurrentSkillAddDameActive) / 100 +
             (pMagicData->nValue[2] * (100 + CurrentSkillAddDameActive) / 100 -
              pMagicData->nValue[0] * (100 + CurrentSkillAddDameActive) / 100) *
                 Npc[m_nIndex].m_CurrentLightEnhance / 100;
    *nMax += pMagicData->nValue[2] * (100 + CurrentSkillAddDameActive) / 100;

    if (bIsSkillMagic) {
      *nMin += Npc[m_nIndex].m_CurrentLightDamage2.nValue[0];
      *nMax += Npc[m_nIndex].m_CurrentLightDamage2.nValue[2];
    }
  }
  if (bIsSkillPhysical) {
    *nMin += Npc[m_nIndex].m_CurrentLightDamage.nValue[0];
    *nMax += Npc[m_nIndex].m_CurrentLightDamage.nValue[2];
  }
  pMagicData++;
  // Calc poison damage
  if (magic_poisondamage_v == pMagicData->nAttribType) {
    int nPoisonDamage = 0;
    if (pMagicData->nValue[2] * (100 - Npc[m_nIndex].m_CurrentPoisonEnhance) /
            100 >
        0) {
      nPoisonDamage = (pMagicData->nValue[0] * pMagicData->nValue[1] /
                       (pMagicData->nValue[2] *
                        (100 - Npc[m_nIndex].m_CurrentPoisonEnhance) / 100)) *
                      (100 + CurrentSkillAddDameActive) / 100;
    } else {
      nPoisonDamage = (pMagicData->nValue[0] * pMagicData->nValue[1]) *
                      (100 + CurrentSkillAddDameActive) / 100;
    }
    *nMin += nPoisonDamage;
    *nMax += nPoisonDamage;

    if (bIsSkillMagic) {

      int nPoisonDamageAdd2 = 0;
      if (Npc[m_nIndex].m_CurrentPoisonDamage2.nValue[2] > 0) {
        nPoisonDamageAdd2 = Npc[m_nIndex].m_CurrentPoisonDamage2.nValue[0] *
                            Npc[m_nIndex].m_CurrentPoisonDamage2.nValue[1] /
                            Npc[m_nIndex].m_CurrentPoisonDamage2.nValue[2];
      } else {
        nPoisonDamageAdd2 = Npc[m_nIndex].m_CurrentPoisonDamage2.nValue[0] *
                            Npc[m_nIndex].m_CurrentPoisonDamage2.nValue[1];
      }

      *nMin += nPoisonDamageAdd2;
      *nMax += nPoisonDamageAdd2;
    }
  }
  if (bIsSkillPhysical) {
    int nPoisonDamageAdd = 0;
    if (Npc[m_nIndex].m_CurrentPoisonDamage.nValue[2] > 0) {
      nPoisonDamageAdd = Npc[m_nIndex].m_CurrentPoisonDamage.nValue[0] *
                         Npc[m_nIndex].m_CurrentPoisonDamage.nValue[1] /
                         Npc[m_nIndex].m_CurrentPoisonDamage.nValue[2];
    } else {
      nPoisonDamageAdd = Npc[m_nIndex].m_CurrentPoisonDamage.nValue[0] *
                         Npc[m_nIndex].m_CurrentPoisonDamage.nValue[1];
    }

    *nMin += nPoisonDamageAdd;
    *nMax += nPoisonDamageAdd;
  }
  pMagicData++;
  // Calc magic damage
  if (magic_magicdamage_v == pMagicData->nAttribType) {
    *nMin += pMagicData->nValue[0] * (100 + CurrentSkillAddDameActive) / 100;
    *nMax += pMagicData->nValue[2] * (100 + CurrentSkillAddDameActive) / 100;
  }

  if (bIsSkillMagic) {
    *nMin += ((*nMin * DamePecentToLevel) / 100);
    *nMax += (*nMax * DamePecentToLevel) / 100;
  }
}
#endif
void KPlayer::SetNpcDamageAttrib() { SetNpcPhysicsDamage(); }

#ifdef _SERVER
void KPlayer::TobeExchangeServer(DWORD dwMapID, int nX, int nY) {
  if (!m_dwID || m_nNetConnectIdx == -1)
    return;

  m_sExchangePos.m_dwMapID = dwMapID;
  m_sExchangePos.m_nX = nX;
  m_sExchangePos.m_nY = nY;
  m_bExchangeServer = TRUE;
}
#endif

/*
#ifdef _SERVER
void KPlayer::UpdateEnterGamePos(DWORD dwSubWorldID, int nX, int nY, int
nFightMode)
{
        TRoleData* pData = (TRoleData *)&m_SaveBuffer;
        pData->BaseInfo.cFightMode = nFightMode;
        pData->BaseInfo.cUseRevive = 0;
        pData->BaseInfo.ientergameid = dwSubWorldID;
        pData->BaseInfo.ientergamex = nX;
        pData->BaseInfo.ientergamey = nY;
}
#endif
*/

#ifdef _SERVER
BOOL KPlayer::IsExchangingServer() { return m_bExchangeServer; }
#endif

#ifdef _SERVER
void KPlayer::SetLastNetOperationTime(int nTime) {
  if (m_nNetConnectIdx == -1 || m_dwID == 0 || m_nIndex <= 0)
    return;

  m_nLastNetOperationTime = nTime;
  if (m_bSleepMode) {
    m_bSleepMode = FALSE;
    NPC_SLEEP_SYNC SleepSync;
    SleepSync.ProtocolType = s2c_npcsleepmode;
    SleepSync.bSleep = m_bSleepMode;
    SleepSync.NpcID = Npc[m_nIndex].m_dwID;
    Npc[m_nIndex].SendDataToNearRegion(&SleepSync, sizeof(NPC_SLEEP_SYNC));
  }
}
#endif

#ifdef _SERVER
void KPlayer::SetNumImg(int nNumber) { m_ImagePlayer = nNumber; }
#endif

#ifdef _SERVER
BOOL KPlayer::CreateTong(int nCamp, char *lpszTongName, char *lpszTitle) {
  return this->m_cTong.Create(nCamp, lpszTongName, lpszTitle);
}

void KPlayer::LoginTong(int nFigure, int nCamp, char *szName, char *szTitle,
                        char *szTongName, char *szMaster) {
  this->m_cTong.Login(nFigure, nCamp, szName, szTitle, szTongName, szMaster);
}

void KPlayer::SendTongInfo(int nSlect, int nPlayerSect, int nNumberDirector,
                           int nNumberManager, int nNumberMember,
                           char *szTongName, int nCamp, int nLevel, int nMoney,
                           char *szListMember) {
  this->m_cTong.SendTongInfo(nSlect, nPlayerSect, nNumberDirector,
                             nNumberManager, nNumberMember, szTongName, nCamp,
                             nLevel, nMoney, szListMember);
}

void KPlayer::MemberAddTong(int nCamp, char *szTitle, char *lpszTongName,
                            char *lpszTongMaster) {
  this->m_cTong.MemberAddTong(nCamp, szTitle, lpszTongName, lpszTongMaster);
}

void KPlayer::DeleteTong() { this->m_cTong.Delete(); }

void KPlayer::UpdateTong(int dwTongId) { this->m_cTong.LoadLogin(dwTongId); }

#endif

#ifdef _SERVER

int KPlayer::GetIdxPGBoxItem(int nPage, int nLocation) {

  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int nIdx = m_ItemList.m_Items[i].nIdx;
    int nPlace = m_ItemList.m_Items[i].nPlace;
    int nX = m_ItemList.m_Items[i].nX;

    if (nIdx > 0 && nIdx < MAX_ITEM && nPlace == pos_pgbox) {

      if (nPage == 1) {
        if (nX >= 0 && nX <= 2 && (nLocation - 1) == nX) {
          return nIdx;
        }
      }

      else if (nPage == 2) {
        if (nX >= 3 && nX <= 13 && (nLocation - 1) == (nX - 3)) {
          return nIdx;
        }
      }

      else if (nPage == 3) {
        if (nX >= 14 && nX <= 15 && (nLocation - 1) == (nX - 14)) {
          return nIdx;
        }
      }

      else if (nPage == 4) {
        if (nX >= 16 && nX <= 26 && (nLocation - 1) == (nX - 16)) {
          return nIdx;
        }
      }
    }
  }

  return 0;
}

#endif

#ifdef _SERVER

int KPlayer::GetIdMagicEventItem(int nItemIdx) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  if (Item[nItemIdx].GetGenre() != item_task)
    return -1;

  if (Item[nItemIdx].GetLevel() != 2)
    return -1;

  return Item[nItemIdx].m_GeneratorParam.nGeneratorLevel[0];
}

#endif

#ifdef _SERVER

int KPlayer::GetLevelMagicEventItem(int nItemIdx) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  if (Item[nItemIdx].GetGenre() != item_task)
    return -1;

  if (Item[nItemIdx].GetLevel() != 2)
    return -1;

  return Item[nItemIdx].m_GeneratorParam.nGeneratorLevel[1];
}

#endif

#ifdef _SERVER

int KPlayer::GetRequirementMagicEventItem(int nItemIdx) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  if (Item[nItemIdx].GetLevel() != 2)
    return -1;

  if (Item[nItemIdx].GetGenre() != item_task)
    return -1;

  return Item[nItemIdx].m_GeneratorParam.nGeneratorLevel[2];
}

#endif

#ifdef _SERVER

int KPlayer::GetItemType(int nItemIdx) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  return Item[nItemIdx].m_SpecialParam.uItemType;
}

#endif

#ifdef _SERVER

int KPlayer::GetEquipMagicId(int nItemIdx, int nNum) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  if (nNum < 1 || nNum > 6)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  if (Item[nItemIdx].GetGenre() != item_equip)
    return -1;

  return Item[nItemIdx].m_aryMagicAttrib[nNum - 1].nAttribType;
}

#endif

#ifdef _SERVER

int KPlayer::GetEquipMagicLevel(int nItemIdx, int nNum) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  if (nNum < 1 || nNum > 6)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  if (Item[nItemIdx].GetGenre() != item_equip)
    return -1;

  int nReturn = -1;

  if (Item[nItemIdx].m_SpecialParam.uItemType == 2) {
    nReturn =
        (Item[nItemIdx].m_GeneratorParam.nGeneratorLevel[nNum - 1] % 100) / 10 +
        1;
  } else {
    nReturn = Item[nItemIdx].m_GeneratorParam.nGeneratorLevel[nNum - 1];
  }

  return nReturn;
}

#endif

#ifdef _SERVER

int KPlayer::GetEquipMagicPoint(int nItemIdx, int nNum) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  if (nNum < 1 || nNum > 6)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  if (Item[nItemIdx].GetGenre() != item_equip)
    return -1;

  int nReturn = -1;
  nReturn = Item[nItemIdx].m_aryMagicAttrib[nNum - 1].nValue[0];

  return nReturn;
}

#endif

#ifdef _SERVER

int KPlayer::GetEquipMagicLucky(int nItemIdx, int nNum) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  if (nNum < 1 || nNum > 6)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  if (Item[nItemIdx].GetGenre() != item_equip)
    return -1;

  int nReturn = -1;

  if (Item[nItemIdx].m_SpecialParam.uItemType == 2) {
    nReturn =
        (Item[nItemIdx].m_GeneratorParam.nGeneratorLevel[nNum - 1] % 10000) /
            100 +
        1;
  } else {
    nReturn = Item[nItemIdx].m_GeneratorParam.nLuck;
  }

  return nReturn;
}

#endif

#ifdef _SERVER

int KPlayer::GetItemBoxLucky(int nItemIdx) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  if (Item[nItemIdx].GetGenre() != item_equip)
    return -1;

  int nReturn = -1;

  nReturn = Item[nItemIdx].m_GeneratorParam.nLuck;

  return nReturn;
}

#endif

#ifdef _SERVER

void KPlayer::AddPropObj(int nId) {

  int nX, nY;
  POINT ptLocal;
  KMapPos Pos;

  int nDataID = 0;
  int nColorID = 0;

  nDataID = nId;

  if (nDataID <= 0)
    return;

  if (m_nIndex <= 0 || m_nIndex >= MAX_NPC)
    return;

  Npc[m_nIndex].GetMpsPos(&nX, &nY);

  ptLocal.x = nX;
  ptLocal.y = nY;

  int nSubWorldIndex = Npc[m_nIndex].m_SubWorldIndex;

  if (nSubWorldIndex < 0 || nSubWorldIndex >= MAX_SUBWORLD)
    return;

  SubWorld[nSubWorldIndex].GetFreeObjPos(ptLocal);

  Pos.nSubWorld = nSubWorldIndex;
  SubWorld[nSubWorldIndex].Mps2Map(ptLocal.x, ptLocal.y, &Pos.nRegion,
                                   &Pos.nMapX, &Pos.nMapY, &Pos.nOffX,
                                   &Pos.nOffY);

  int nObjIdx = ObjSet.AddPropObj(Pos, nDataID, nColorID);
  if (nObjIdx > 0 && nObjIdx < MAX_OBJECT) {
    Object[nObjIdx].SetItemBelong(-1);
  }
}

#endif

#ifdef _SERVER

void KPlayer::AddPropObjPos(int nId, int nIdMap, int nPosX, int nPosY) {}

#endif

#ifdef _SERVER

int KPlayer::GetGetEquipMagicRandomSeed(int nItemIdx) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  if (Item[nItemIdx].GetGenre() != item_equip)
    return -1;

  return Item[nItemIdx].m_GeneratorParam.uRandomSeed;
}

#endif

// auto playgame
void KPlayer::SetAutoFlag(BOOL nbAuto) {
  m_bActiveAuto = nbAuto;
#ifdef _SERVER
  PLAYER_REQUEST_AUTO Cmd;
  Cmd.ProtocolType = s2c_autoplay;
  Cmd.m_bAuto = 1;
  Cmd.m_bActive = nbAuto;
  if (g_pServer && this->m_nNetConnectIdx != -1)
    g_pServer->PackDataToClient(this->m_nNetConnectIdx, &Cmd,
                                sizeof(PLAYER_REQUEST_AUTO));
#endif
}

#ifndef _SERVER
void KPlayer::SendInfoAuto() {
  int nDesX = 0;
  int nDesY = 0;
  Npc[m_nIndex].GetMpsPos(&nDesX, &nDesY);
  int nDesTempX = nDesX / 8 / 32;
  int nDesTempY = nDesY / 16 / 32;
  int nDesTempXAuto = m_PosXAuto / 8 / 32;
  int nDesTempYAuto = m_PosYAuto / 16 / 32;
  if (nDesTempX != nDesTempXAuto || nDesTempY != nDesTempYAuto) {
    m_PosXAuto = nDesX;
    m_PosYAuto = nDesY;
  }
  m_Actacker = 0;
  m_bActacker = FALSE;
  m_Count_Acttack_Lag = 0;
  m_nLifeLag = 0;
  m_nTimeRunLag = 0;

  ClearArrayNpcNeast();
  ClearArrayObjectNeast();
  ClearArrayNpcLag();
  ClearArrayObjectLag();
  ClearArrayTimeNpcLag();
  ClearArrayTimeObjectLag();
}
// auto playgame

#endif

#ifdef _SERVER

int KPlayer::GetNumberNameInCpuTK() {

  int nNumberNameInCpuTK = 0;

  for (int i = 1; i < MAX_PLAYER; i++) {

    if (i == m_nPlayerIndex || Player[i].m_nNetConnectIdx == -1 ||
        Player[i].m_bExchangeServer || Player[i].m_bIsQuiting)
      continue;

    if (Player[i].m_nIndex <= 0 || Player[i].m_nIndex >= MAX_NPC)
      continue;

    if (Npc[Player[i].m_nIndex].m_SubWorldIndex !=
            g_SubWorldSet.SearchWorld(33) &&
        Npc[Player[i].m_nIndex].m_SubWorldIndex !=
            g_SubWorldSet.SearchWorld(37))
      continue;

    if (!Player[i].m_szCPUIPName || !m_szCPUIPName ||
        !Player[i].m_szCPUIPName[0] || !m_szCPUIPName[0])
      continue;

    if (strcmp(Player[i].m_szCPUIPName, m_szCPUIPName) != 0)
      continue;

    nNumberNameInCpuTK++;
  }

  return nNumberNameInCpuTK;
}

#endif

#ifdef _SERVER

int KPlayer::GetIdxItemBox2() {

  int Number = 0;
  int ItemIdx = -1;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    int Place = m_ItemList.m_Items[i].nPlace;
    if (Idx > 0 && Idx < MAX_ITEM && Place == pos_checkbox) {
      ItemIdx = Idx;
      Number++;
    }
  }

  if (Number == 0) {
    return 0;
  } else if (Number == 1) {

    if (Item[ItemIdx].GetGenre() != item_equip)
      return -2;
    else if (Item[ItemIdx].GetVersion() > 1)
      return ItemIdx;
    else
      return -3;

  } else {
    return -1;
  }

  return 0;
}

#endif

#ifdef _SERVER

int KPlayer::GetIdxItemBox3() {

  int Number = 0;
  int ItemIdx = -1;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    int Place = m_ItemList.m_Items[i].nPlace;
    if (Idx > 0 && Idx < MAX_ITEM && Place == pos_checkbox) {
      ItemIdx = Idx;
      Number++;
    }
  }

  if (Number == 0) {
    return 0;
  } else if (Number == 1) {

    if (Item[ItemIdx].GetGenre() != item_equip)
      return -2;
    else if (Item[ItemIdx].GetDurability() == 0 &&
             Item[ItemIdx].GetDetailType() != equip_horse &&
             Item[ItemIdx].GetDetailType() != equip_pendant &&
             Item[ItemIdx].GetDetailType() != equip_ring &&
             Item[ItemIdx].GetDetailType() != equip_amulet &&
             Item[ItemIdx].GetDetailType() != equip_mask)
      return ItemIdx;
    else
      return -3;

  } else {
    return -1;
  }

  return 0;
}

#endif

#ifdef _SERVER

int KPlayer::GetIdxItemBox() {

  int Number = 0;
  int ItemIdx = -1;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    int Place = m_ItemList.m_Items[i].nPlace;
    if (Idx > 0 && Idx < MAX_ITEM && Place == pos_checkbox) {
      ItemIdx = Idx;
      Number++;
    }
  }

  if (Number == 0) {
    return 0;
  } else if (Number == 1) {

    if (Item[ItemIdx].GetGenre() != item_equip)
      return -2;
    else if (Item[ItemIdx].GetVersion() > 1)
      return -3;
    else
      return ItemIdx;

  } else {
    return -1;
  }

  return 0;
}

#endif

#ifdef _SERVER

int KPlayer::GetIdxItemBoxUpdateItem() {
  int Number = 0;
  int ItemIdx = -1;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    int Place = m_ItemList.m_Items[i].nPlace;
    if (Idx > 0 && Idx < MAX_ITEM && Place == pos_checkbox &&
        Item[Idx].GetGenre() == item_equip) {
      ItemIdx = Idx;
      Number++;
    }
  }

  if (Number == 0) {
    return 0;
  } else if (Number == 1) {
    if (Item[ItemIdx].GetKind() != 0 && Item[ItemIdx].GetKind() != 2)
      return -2;
    else if (Item[ItemIdx].GetVersion() > 1)
      return -3;
    else
      return ItemIdx;
  } else {
    return -1;
  }

  return 0;
}

int KPlayer::GetIdxItemBoxUpdateItem2() {
  int Number = 0;
  int ItemIdx = -1;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    int Place = m_ItemList.m_Items[i].nPlace;
    if (Idx > 0 && Idx < MAX_ITEM && Place == pos_checkbox &&
        Item[Idx].GetGenre() == item_equip) {
      ItemIdx = Idx;
      Number++;
    }
  }
  if (Number == 0) {
    return 0;
  } else if (Number == 1) {
    if (Item[ItemIdx].GetKind() != 1)
      return -2;
    else if (Item[ItemIdx].GetVersion() == 550324)
      return -3;
    else if (Item[ItemIdx].GetItemGroup() < 6 ||
             Item[ItemIdx].GetItemGroup() > 33)
      return -4;
    else
      return ItemIdx;
  } else {
    return -1;
  }
  return 0;
}

int KPlayer::GetIdxItemBoxUpdateItem3() {
  int Number = 0;
  int ItemIdx = -1;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    int Place = m_ItemList.m_Items[i].nPlace;
    if (Idx > 0 && Idx < MAX_ITEM && Place == pos_checkbox &&
        Item[Idx].GetGenre() == item_equip) {
      ItemIdx = Idx;
      Number++;
    }
  }
  if (Number == 0) {
    return 0;
  } else if (Number == 1) {
    return ItemIdx;
  } else {
    return -1;
  }
  return 0;
}

int KPlayer::GetIdxItemBoxUpdateItem4() // Trang bi ton hai
{
  int Number = 0;
  int ItemIdx = -1;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    int Place = m_ItemList.m_Items[i].nPlace;
    if (Idx > 0 && Idx < MAX_ITEM && Place == pos_checkbox &&
        Item[Idx].GetGenre() == item_equip) {
      ItemIdx = Idx;
      Number++;
    }
  }

  if (Number == 0) {
    return 0;
  } else if (Number == 1) {
    if (Item[ItemIdx].GetDurability() > 0)
      return -3;
    else
      return ItemIdx;
  } else {
    return -1;
  }

  return 0;
}

#endif
#ifdef _SERVER
int KPlayer::GetIdxItemBoxQuestKey(int IdQuestKey) {

  int Number = 0;
  int ItemIdx = -1;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    int Place = m_ItemList.m_Items[i].nPlace;
    if (Idx > 0 && Idx < MAX_ITEM && Place == pos_checkbox &&
        Item[Idx].GetGenre() != item_equip) {
      ItemIdx = Idx;
      Number++;
    }
  }

  if (Number == 0) {
    return 0;
  } else if (Number == 1) {

    if (Item[ItemIdx].GetGenre() != 4 ||
        Item[ItemIdx].GetDetailType() != IdQuestKey)
      return -2;
    else
      return ItemIdx;

  } else {
    return -1;
  }

  return 0;
}

#endif

#ifdef _SERVER
int KPlayer::DelEquipItemQuestKey(int IdQuestKey) {

  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    int Place = m_ItemList.m_Items[i].nPlace;
    if (Idx > 0 && Idx < MAX_ITEM && Place == pos_checkbox &&
        Item[Idx].GetGenre() == 4 && Item[Idx].GetDetailType() == IdQuestKey) {
      if (m_ItemList.CheckHaveItem(Idx)) {
        ItemSet.m_checkdel = 13;
        m_ItemList.Remove(Idx);
        ItemSet.Remove(Idx);
      }
    }
  }

  return 0;
}

#endif

#ifdef _SERVER

int KPlayer::CheckMagicItem(int nItemIdx, int nMagicId, int nMagicNumber1,
                            int nMagicNumber2) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return 0;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return 0;

  return Item[nItemIdx].CheckMagicItem(nMagicId, nMagicNumber1, nMagicNumber2);
}

#endif

#ifdef _SERVER

int KPlayer::GetLevelItem(int nItemIdx) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  return Item[nItemIdx].GetLevel();
}

#endif

#ifdef _SERVER

int KPlayer::GetParticularItem(int nItemIdx) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  return Item[nItemIdx].GetParticular();
}

#endif

#ifdef _SERVER

int KPlayer::GetTimeItem(int nItemIdx) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  return Item[nItemIdx].GetVersion();
}

#endif

#ifdef _SERVER

int KPlayer::GetDetailTypeItem(int nItemIdx) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  return Item[nItemIdx].GetDetailType();
}

#endif

#ifdef _SERVER

int KPlayer::GetClassItem(int nItemIdx) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  return Item[nItemIdx].GetGenre();
}

#endif

#ifdef _SERVER

int KPlayer::GetGenreItem(int nItemIdx) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  return Item[nItemIdx].GetGenre();
}

#endif

#ifdef _SERVER

int KPlayer::IsBlockItem(int nItemIdx) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  if (Item[nItemIdx].GetVersion() > 1) {
    return 1;
  }

  else {
    return 0;
  }
}

#endif

#ifdef _SERVER

int KPlayer::GetSeriItem(int nItemIdx) {

  if (nItemIdx <= 0 || nItemIdx >= MAX_ITEM)
    return -1;

  BOOL bCheck = FALSE;
  for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
    int Idx = m_ItemList.m_Items[i].nIdx;
    if (Idx > 0 && Idx < MAX_ITEM && Idx == nItemIdx) {
      bCheck = TRUE;
      break;
    }
  }

  if (!bCheck)
    return -1;

  return Item[nItemIdx].GetSeries();
}

#endif

#ifdef _SERVER
void KPlayer::RepairItem(DWORD dwItemID) {
  int nIdx = m_ItemList.SearchID(dwItemID);
  int nCost = Item[nIdx].GetRepairPrice();
  if (!nCost) {
    return;
  }
  int nMaxDur = Item[nIdx].GetMaxDurability();
  int nDur = Item[nIdx].GetDurability();
  if (nDur <= 0) {
    char szMsg[150];
    sprintf(szMsg,
            "Trang b� <color=yellow>%s<color=red> �� h�ng, kh�ng th� s�a.",
            Item[nIdx].GetName());
    KPlayerChat::SendSystemInfo(1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
                                szMsg, strlen(szMsg));
    return;
  }
  if (Pay(nCost) && m_nNetConnectIdx >= 0) {
    char szMsg[100];
    sprintf(szMsg, "�� s�a trang b� %s ", Item[nIdx].GetName());
    KPlayerChat::SendSystemInfo(1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
                                szMsg, strlen(szMsg));
    Item[nIdx].SetDurability(nMaxDur);
    ITEM_DURABILITY_CHANGE IDC;
    IDC.ProtocolType = s2c_itemdurabilitychange;
    IDC.dwItemID = dwItemID;
    IDC.nChange = nMaxDur - nDur;
    if (g_pServer)
      g_pServer->PackDataToClient(m_nNetConnectIdx, &IDC,
                                  sizeof(ITEM_DURABILITY_CHANGE));
  }

  else {
    char szMsg[170];
    sprintf(szMsg,
            "Ng�n l��ng kh�ng �� <color=yellow>%d l��ng<color=red>, kh�ng th� "
            "s�a trang b�: <color=green>%s ",
            nCost, Item[nIdx].GetName());
    KPlayerChat::SendSystemInfo(1, m_nPlayerIndex, MESSAGE_SYSTEM_ANNOUCE_HEAD,
                                szMsg, strlen(szMsg));
  }
}
#endif

#ifdef _SERVER
void KPlayer::SetExtPoint(int nPoint, int nChangePoint) {
  m_nExtPoint = nPoint;
  m_nChangeExtPoint = nChangePoint;
}

int KPlayer::GetExtPoint() {
  printf("EXT %d ", m_nExtPoint);
  return m_nExtPoint;
}

BOOL KPlayer::PayExtPoint(int nPoint) {
  if (m_nExtPoint < nPoint)
    return FALSE;

  m_nExtPoint -= nPoint;
  m_nChangeExtPoint += nPoint;
  return TRUE;
}

int KPlayer::GetExtPointChanged() { return m_nChangeExtPoint; }
#endif

#ifndef _SERVER
void KPlayer::PlayerStarBuyItemNumber(int nuId, int nIdx, int nWidth,
                                      int nHeight, int nPrice, int nNum) {
  m_nBuyNumberUId = nuId;
  m_nBuyNumberIdx = nIdx;
  m_nBuyNumberWidth = nWidth;
  m_nBuyNumberHeigh = nHeight;
  m_nBuyNumberPrice = nPrice;
  m_nBuyNumberNum = nNum;
}

void KPlayer::PlayerSetAuto(BOOL bcheck, int nLife, int nMana, int nReturn,
                            int nAtack, int nRange, int nNAtack, BOOL bMoneyObj,
                            BOOL bItemObj, BOOL bPropObj, BOOL bItemSelect,
                            int nNgaMyBuff, int nPhamViTuVe, int nGuiTienNew) {
  // DelayAutoPlayer++;
  // if (DelayAutoPlayer >= 5*18)
  //{
  //		DelayAutoPlayer = 5*18;
  //}
  if (bcheck != m_nAutoPlay && bcheck) {
    Npc[m_nIndex].GetMpsPos(&m_nAutoStarNpcX, &m_nAutoStarNpcY);

    BOOL nSetActiveSkill = FALSE;

    int nSkillActiveIdx =
        Npc[m_nIndex].m_SkillList.FindSame(Npc[m_nIndex].m_ActiveSkillID);
    if (nSkillActiveIdx > 0) {
      KSkill *pOrdinSkill = (KSkill *)g_SkillManager.GetSkill(
          Npc[m_nIndex].m_ActiveSkillID,
          Npc[m_nIndex].m_SkillList.GetCurrentLevel(
              Npc[m_nIndex].m_ActiveSkillID));
      if (pOrdinSkill) {
        if (pOrdinSkill->IsTargetEnemy()) {
          m_nAutoStarSkillIDx = nSkillActiveIdx;
          nSetActiveSkill = TRUE;
        }
      }
    }

    if (!nSetActiveSkill) {
      int nSkillLeftIdx = Npc[m_nIndex].m_SkillList.FindSame(m_nLeftSkillID);
      if (nSkillLeftIdx > 0) {
        KSkill *pOrdinSkill = (KSkill *)g_SkillManager.GetSkill(
            m_nLeftSkillID,
            Npc[m_nIndex].m_SkillList.GetCurrentLevel(m_nLeftSkillID));
        if (pOrdinSkill) {
          if (pOrdinSkill->IsTargetEnemy()) {
            m_nAutoStarSkillIDx = nSkillLeftIdx;
          }
        }
      }
    }
  }

  m_nAutoReturn = nReturn;
  m_nAutoAtack = nAtack;
  m_nTempAutoAtack = nAtack;
  m_nAutoLife = nLife;
  m_nNgaMyBuff = nNgaMyBuff;
  m_nAutoMana = nMana;
  m_nAutoRange = nRange;
  m_nAutoNAtack = nNAtack * 18 / 1000;
  m_bMoneyObj = bMoneyObj;
  m_bItemObj = bItemObj;
  m_bItemSelect = bItemSelect;
  m_bPropObj = bPropObj;
  m_nPhamViTuVe = nPhamViTuVe;
  m_nGuiTienNew = nGuiTienNew;
  m_nAutoPlay = bcheck;
}

void KPlayer::CheckRideHouse(BOOL bCheckRideHorse) {
  if (bCheckRideHorse && m_nAutoPlay) {
    if (Npc[m_nIndex].m_bRideHorse)
      SendClientCmdRide();
  }
}

void KPlayer::SendShopCost() {

  for (int h = 1; h < MAX_PLAYER_ITEM; h++) {
    int nIdxitem = m_ItemList.m_Items[h].nIdx;
    if (Item[nIdxitem].m_CommonAttrib.iShopCost > 0) {
      PLAYER_SHOP_PRICE_COMMAND PlayerPrice;
      PlayerPrice.ProtocolType = c2s_playershopprice;
      PlayerPrice.m_ID = Item[nIdxitem].m_dwID;
      PlayerPrice.m_Price = Item[nIdxitem].m_CommonAttrib.iShopCost;
      if (g_pClient)
        g_pClient->SendPackToServer((BYTE *)&PlayerPrice,
                                    sizeof(PLAYER_SHOP_PRICE_COMMAND));
    }
  }
}
void KPlayer::PlayerAutoOn() {
  if (Npc[m_nIndex].m_Doing == do_death || Npc[m_nIndex].m_Doing == do_revive ||
      !Npc[m_nIndex].IsCanInput())
    return;

  if (!Npc[m_nIndex].m_FightMode) {
    Npc[m_nIndex].m_nPeopleIdx = 0;
    Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;
    return;
  }

  if (CheckTrading())
    return;

  if (PlayerAutoOnStolen())
    return;

  if (m_nAutoPause) {
    Npc[m_nIndex].m_nPeopleIdx = 0;
    Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;
    return;
  }

  if (PlayerAutoOnBuffE())
    return;

  if (PlayerAutoOnBuffL())
    return;

  if (PlayerAutoOnObj())
    return;

  // PlayerAutoOnSkill();
  // Npc[m_nIndex].m_MaskType = 879;
  // PlayerAutoTeam(); // Auto Moi Nhom
  if (m_TargetPlayer) // Neu Bat Auto PK
  {
    PlayerAutoPK();
  } else {
    AutoTheoSau();
  }
}

BOOL KPlayer::PlayerAutoPK() // AUTO PK NGuoi Choi
{
  int Map = SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID;

  ISkill *pISkill = g_SkillManager.GetSkill(
      Npc[m_nIndex].m_SkillList.m_Skills[m_nAutoStarSkillIDx].SkillId,
      Npc[m_nIndex].m_SkillList.GetCurrentLevel(
          Npc[m_nIndex].m_SkillList.m_Skills[m_nAutoStarSkillIDx].SkillId));
  if (!pISkill)
    return FALSE;

  if ((!Npc[m_nIndex].m_SkillList.CanCast(
          Npc[m_nIndex].m_SkillList.m_Skills[m_nAutoStarSkillIDx].SkillId,
          SubWorld[0].m_dwCurrentTime)) ||
      (!Npc[m_nIndex].Cost(pISkill->GetSkillCostType(),
                           pISkill->GetSkillCost(&Npc[m_nIndex]), TRUE))) {

    return FALSE;
  }

  int nSkillLeftIdx = Npc[m_nIndex].m_SkillList.FindSame(m_nLeftSkillID);
  int RangeSkill = 0;
  if (nSkillLeftIdx > 0) {
    KSkill *pOrdinSkill = (KSkill *)g_SkillManager.GetSkill(
        m_nLeftSkillID,
        Npc[m_nIndex].m_SkillList.GetCurrentLevel(m_nLeftSkillID));
    if (pOrdinSkill) {
      if (pOrdinSkill->IsTargetEnemy()) {
        m_nAutoStarSkillIDx = nSkillLeftIdx;
        RangeSkill = pOrdinSkill->GetAttackRadius();
      }
    }
  }

  Npc[m_nIndex].SetActiveSkill(m_nAutoStarSkillIDx);
  g_DebugLog("Set Skill ID %d\n", m_nAutoStarSkillIDx);
  if (m_nAutoRange >= RangeSkill)
    Npc[m_nIndex].m_CurrentAttackRadius = RangeSkill;
  else
    Npc[m_nIndex].m_CurrentAttackRadius = m_nAutoRange;

  if (Npc[m_nIndex].m_nPeopleIdx > 0) {
    int khoangcach = NpcSet.GetDistance(Npc[m_nIndex].m_nPeopleIdx, m_nIndex);
    if (khoangcach > m_nAutoAtack) {
      Npc[m_nIndex].m_nPeopleIdx = 0;
      Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;
    }
    if (Npc[Npc[m_nIndex].m_nPeopleIdx].m_Kind != kind_player) {
      Npc[m_nIndex].m_nPeopleIdx = 0;
      Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;
    }
    g_DebugLog("People > 0 \n");
  }

  if (Npc[m_nIndex].m_nPeopleIdx <= 0) {
    g_DebugLog("People < 0 \n");
    int nX0, nY0, nX1, nY1, nEnemyIdx, nMaxRangeDb;
    int KhoangCachGanNhat = 1000000;

    nEnemyIdx = 0;
    nMaxRangeDb = m_nAutoAtack * m_nAutoAtack;
    Npc[m_nIndex].GetMpsPos(&nX0, &nY0);

    for (int i = 1; i < MAX_NPC; i++) {
      if (!Npc[i].m_Index ||
          relation_enemy != NpcSet.GetRelation(m_nIndex, Npc[i].m_Index) ||
          Npc[i].m_Doing == do_death || Npc[i].m_Doing == do_revive ||
          Npc[i].m_CurrentLife <= 0 || Npc[i].m_CurrentLife == 100)
        continue;

      if (Npc[i].m_Kind != kind_player)
        continue;

      Npc[i].GetMpsPos(&nX1, &nY1);
      if (Npc[i].m_RegionIndex < 0 || !SubWorld[0].TestBarrier(nX1, nY1))
        continue;

      int distance = NpcSet.GetDistance(i, m_nIndex);
      if (((nX1 - nX0) * (nX1 - nX0) + (nY1 - nY0) * (nY1 - nY0)) <
              nMaxRangeDb &&
          distance < KhoangCachGanNhat) {
        KhoangCachGanNhat = distance;
        nMaxRangeDb = (nX1 - nX0) * (nX1 - nX0) + (nY1 - nY0) * (nY1 - nY0);
        nEnemyIdx = i;
      }
    }

    if (nEnemyIdx > 0) {
      g_DebugLog("nEnemyIdx > 0 \n");
      Npc[m_nIndex].m_nPeopleIdx = nEnemyIdx;
      Npc[m_nIndex].m_nPeopleIdxCheckClient = (nEnemyIdx + 46) * 13 + 15743;
      m_nAutoOldCurenLifeActive = Npc[nEnemyIdx].m_CurrentLife;
      m_nAutoTimeNextNpc = g_SubWorldSet.GetGameTime() + m_eBoQuaPK;
    }
  } else if (m_nAutoTimeNextNpc < g_SubWorldSet.GetGameTime()) {
    Npc[m_nIndex].m_nPeopleIdx = 0;
    Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;
  }

  return FALSE;
}

BOOL KPlayer::PlayerAutoLocDo() {

  for (int h = 1; h < MAX_PLAYER_ITEM; h++) {
    if (m_ItemList.m_Items[h].nIdx > 0 &&
        m_ItemList.m_Items[h].nIdx < MAX_ITEM &&
        m_ItemList.m_Items[h].nPlace == pos_equiproom) {
      int ItemIdx = m_ItemList.m_Items[h].nIdx;
      if (Item[ItemIdx].GetGenre() == item_equip) {
        if (Item[ItemIdx].GetSeries() != 0) {
          if (Item[ItemIdx].GetVersion() > 1)
            continue;

          if (m_ItemList.m_Hand > 0)
            break;

          m_ItemList.m_Hand = ItemIdx;
          m_ItemList.m_Items[h].nPlace = pos_hand;
          m_ItemList.m_Items[h].nX = 0;
          m_ItemList.m_Items[h].nY = 0;
          //	m_ItemList.m_Items[m_ItemList.FindSame(m_ItemList.m_Hand)].nPlace
          //= pos_hand;
          //	ItemSet.Add(m_ItemList.m_Items[h].nIdx,pos_hand,m_ItemList.m_Items[h].nX,m_ItemList.m_Items[h].nY);
          //	ItemSet.Remove(m_ItemList.m_Items[h].nIdx);

          m_ItemList.MenuSetMouseItem();
          g_DebugLog("LOCDO %s", Item[m_ItemList.m_Hand].GetName());
        }
      }
    }
  }

  if (m_ItemList.Hand()) {
    if (m_ItemList.m_Items[m_ItemList.m_Hand].nX != 0 &&
        m_ItemList.m_Items[m_ItemList.m_Hand].nY != 0)
      ThrowAwayItem();
    g_DebugLog("LOCDO Vut Bo %d - %s", m_ItemList.m_Hand,
               Item[m_ItemList.m_Hand].GetName());
  }

  return FALSE;
}

int MANGTOADO[5][100][2] = {{
                                // Ba Lang Huyen
                                {6, 6}, // 0,0 va 0,1
                                {1600 * 32, 3199 * 32},
                                {1608 * 32, 3210 * 32},
                                {1595 * 32, 3227 * 32},
                                {1583 * 32, 3243 * 32},
                                {1578 * 32, 3237 * 32},
                            },
                            {
                                // Phuong Tuong
                                {8, 8},
                                {1595 * 32, 3198 * 32},
                                {1605 * 32, 3204 * 32},
                                {1614 * 32, 3206 * 32},
                                {1625 * 32, 3195 * 32},
                                {1635 * 32, 3185 * 32},
                                {1646 * 32, 3174 * 32},
                                {1648 * 32, 3169 * 32},
                            }};

int checkmap(int map) {
  if (map == 53)
    return 0;
  else if (map == 17)
    return 1;
  return 99;
};

BOOL KPlayer::QuayLaiDiaDiemCu2() { return FALSE; };

BOOL AutoMove(int x, int y, int m_nIndex) {
  int nX0, nY0;
  Npc[m_nIndex].GetMpsPos(&nX0, &nY0);
  Npc[m_nIndex].SendCommand(do_run, x, y);
  SendClientCmdRun(x, y);
  // g_DebugLog("TDT %d %d %d %d",x,nX0,y,nY0);
  if ((x - nX0 > -32) && (x - nX0 < 32) && (y - nY0 > -32) && (y - nY0 < 32)) {
    g_DebugLog("TRUE: TDT %d - %d", x - nX0, y - nY0);
    return TRUE;
  }

  // g_DebugLog("FALSE: TDT %d - %d",x-nX0,y-nY0);

  return FALSE;
}

BOOL KPlayer::QuayLaiDiaDiemCu() {
  int nX0, nY0, Map, vt;
  Map = SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID;
  Npc[m_nIndex].GetMpsPos(&nX0, &nY0);
  vt = checkmap(Map);
  int vitricuoi = MANGTOADO[vt][0][0];

  if (vt == 99) {
    checktoado = 0;
    return FALSE;
  }

  if (checktoado == 0) {
    checktoado = 1;
  }

  int i = checktoado;
  if (AutoMove(MANGTOADO[vt][i][0], MANGTOADO[vt][i][1], m_nIndex) &&
      i < vitricuoi) {
    checktoado++;
  }
  if (i == vitricuoi) {
  }
  g_DebugLog("TDT2 %d - %d", i, vitricuoi);
  /*
  if (i == vitricuoi-2)
  {
          for (int k = 1; k < MAX_NPC; k++)
          {
                  if (!Npc[k].m_Index			||
                          Npc[k].m_Doing == do_death ||
                          Npc[k].m_Doing == do_revive || Npc[k].m_CurrentLife <=
  0 || Npc[k].m_CurrentLife == 100 || Npc[k].m_Kind != kind_dialoger) continue;


                  Npc[k].GetMpsPos(&nX1,&nY1);

                  if (SubWorld[Npc[k].m_SubWorldIndex].m_SubWorldID == Map &&
  nX1 == 50496 && nY1 == 103520 && strcmp(Npc[k].Name,"Xa phu") == 0)
                  {
                          nEnemyIdx = k;
                          break;

                  }
          }
  if (nEnemyIdx > 0)
  {
          Npc[nEnemyIdx].GetMpsPos(&nX1,&nY1);
          g_DebugLog("ToaDoTT: %d - %d",nX1,nY1);
          DialogNpc(nEnemyIdx);
          PLAYER_SELECTUI_COMMAND command;
          command.nSelectIndex = 0;
          OnSelectFromUI(&command,UI_SELECTDIALOG);
  }
  }
  */

  // g_DebugLog("TOADO %d",MANGTOADO[1][1]);

  return FALSE;
};
/*

BOOL KPlayer::PlayerAutoTeam()
{
SYSTEMTIME TimeNow;
GetLocalTime(&TimeNow);
if (!m_cTeam.m_AcceptAuto)
{
        m_cTeam.Check_AcceptAutoName = FALSE;
}
if (m_cTeam.m_InviteAuto)
{
        if (m_cTeam.m_nFlag)
        {

                if (m_cTeam.m_nFigure == TEAM_CAPTAIN && TimeNow.wSecond%15 ==
0)
                {
                int nX0,nY0,nX1,nY1,nEnemyIdx,nMaxRangeDb;

                nEnemyIdx = 0;
                nMaxRangeDb = 1024 * 1024;

                Npc[m_nIndex].GetMpsPos(&nX0,&nY0);

                        for (int i = 1; i < MAX_NPC; i++)
                                {
                                        if (!Npc[i].m_Index || Npc[i].m_Doing ==
do_death || Npc[i].m_Doing == do_revive || Npc[i].m_CurrentLife <= 0 ||
Npc[i].m_CurrentLife == 100 || Npc[i].m_Kind != kind_player) continue;

                                                if (m_nIndex == Npc[i].m_Index)
                                                        continue;

                                                BOOL CHECKMEMBER = FALSE;
                                                for (int j = 0; j <
MAX_TEAM_MEMBER; j++)
                                                {
                                                        if
((DWORD)g_Team[0].m_nMember[j] == Npc[i].m_dwID)
                                                        {
                                                                CHECKMEMBER =
TRUE; break;
                                                        }
                                                }
                                                if (CHECKMEMBER)
                                                continue;

                                                ///	g_DebugLog("AAAAAAAA");

                                                  Npc[i].GetMpsPos(&nX1,&nY1);

                                                if (Npc[i].m_nAutoNoActack &&
                                                        (Npc[i].m_nAutoOldX -
nX1) * (Npc[i].m_nAutoOldX - nX1) + (Npc[i].m_nAutoOldY - nY1) *
(Npc[i].m_nAutoOldY - nY1) >= (120 * 120)
                                                        )
                                                        Npc[i].m_nAutoNoActack =
FALSE;


                                                if (Npc[i].m_RegionIndex < 0 ||
!SubWorld[0].TestBarrier(nX1,nY1) || Npc[i].m_nAutoNoActack) continue;

                                                if (((nX1-nX0)*(nX1-nX0) +
(nY1-nY0)*(nY1-nY0)) < nMaxRangeDb &&
((nX1-m_nAutoStarNpcX)*(nX1-m_nAutoStarNpcX) +
(nY1-m_nAutoStarNpcY)*(nY1-m_nAutoStarNpcY)) < nMaxRangeDb)
                                                {
                                                        TeamInviteAdd(Npc[i].m_dwID);

                                                }
                                }
                }
        }
        else
        {
                ApplyCreateTeam();
        }
}
return FALSE;
}*/
BOOL KPlayer::PlayerAutoOnBuffH() {

  int nFaction;

  nFaction = m_cFaction.GetCurFactionNo();

  if (nFaction == 3) {

    if (Npc[m_nIndex].m_nPeopleIdx > 0) {

      int nSkillLevel[3], nSkillId[3];
      BOOL bCheckSkillEffec[3];
      KStateNode *pNode;
      KSkill *pOrdinSkill;

      nSkillId[0] = 72;
      nSkillId[1] = 73;
      nSkillId[2] = 336;

      for (int i = 0; i < 3; i++) {

        bCheckSkillEffec[i] = FALSE;

        if (nSkillId[i] > 0) {
          nSkillLevel[i] =
              Npc[m_nIndex].m_SkillList.GetCurrentLevel(nSkillId[i]);
          if (nSkillLevel[i] > 0) {
            bCheckSkillEffec[i] = TRUE;
          }
        }
      }
      pNode = (KStateNode *)Npc[Npc[m_nIndex].m_nPeopleIdx]
                  .m_StateSkillList.GetHead();
      while (pNode) {
        for (int j = 0; j < 3; j++) {

          if (nSkillId[j] <= 0 || nSkillLevel[j] <= 0) {
            bCheckSkillEffec[j] = FALSE;
            continue;
          }

          pOrdinSkill =
              (KSkill *)g_SkillManager.GetSkill(nSkillId[j], nSkillLevel[j]);
          if (pOrdinSkill) {
            if (pNode->m_StateGraphics == pOrdinSkill->GetStateSpecailId()) {
              bCheckSkillEffec[j] = FALSE;
            }
          }
        }

        pNode = (KStateNode *)pNode->GetNext();
      }

      for (int t = 0; t < 3; t++) {
        if (bCheckSkillEffec[t]) {
          Npc[m_nIndex].SetActiveSkill(
              Npc[m_nIndex].m_SkillList.FindSame(nSkillId[t]));
          return FALSE;
        }
      }
    }
  }

  return FALSE;
}
BOOL KPlayer::AutoTheoSau() {

  if (m_cTeam.m_nFlag && !m_TargetPlayer && m_TheoSau) {
    if (m_cTeam.m_nFigure == TEAM_CAPTAIN) {
      m_nAutoAtack = m_nTempAutoAtack;
      PlayerAutoOnSkill(); // Auto Danh Day
    } else {

      int nX0, nY0;
      Npc[m_nIndex].GetMpsPos(&nX0, &nY0);
      int Map = SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID;
      int nX1, nY1;
      int nNpcIndex;
      int nMaxRangeDb;

      if (g_Team[0].m_nMemNum >= 0) {

        nNpcIndex = NpcSet.SearchID(g_Team[0].m_nCaptain);
        if (nNpcIndex <= 0) {
          PlayerAutoOnSkill();
          return FALSE;
        }
        if (nNpcIndex == m_nIndex)
          return FALSE;

        if (Npc[nNpcIndex].m_Doing == do_death ||
            Npc[nNpcIndex].m_Doing == do_revive || !Npc[nNpcIndex].IsCanInput())
          return FALSE;

        nMaxRangeDb = m_nAutoAtack * m_nAutoAtack;
        Npc[nNpcIndex].GetMpsPos(&nX1, &nY1);
        int Map1 = SubWorld[Npc[nNpcIndex].m_SubWorldIndex].m_SubWorldID;
        int distance = NpcSet.GetDistance(nNpcIndex, m_nIndex);

        if (distance >= 100) {
          Npc[m_nIndex].m_nPeopleIdx = 0;
          if (Npc[m_nIndex].m_CurrentStamina > 0 ||
              m_cPK.GetNormalPKState() != 2) {
            Npc[m_nIndex].SendCommand(do_run, nX1, nY1);
            SendClientCmdRun(nX1, nY1);
            g_DebugLog("Check Buoc 5\n");
          } else {
            Npc[m_nIndex].SendCommand(do_walk, nX1, nY1);
            SendClientCmdWalk(nX1, nY1);
            g_DebugLog("Check Buoc 6\n");
          }
        } else {
          g_DebugLog("Tu Danh Theo Sau 1\n");
          PlayerAutoOnSkillTheoSau();
        }
      }
    }
  } else {
    m_nAutoAtack = m_nTempAutoAtack;
    PlayerAutoOnSkill();
  }
  return FALSE;
}

BOOL KPlayer::PlayerAutoOnBuffL() {

  int nSkillLevel, nSkillId, nFaction;

  nFaction = m_cFaction.GetCurFactionNo();
  if (nFaction == 4) {
    nSkillId = 93;
    nSkillLevel = Npc[m_nIndex].m_SkillList.GetCurrentLevel(nSkillId);

    if (nSkillLevel > 0) {

      if (m_cTeam.m_nFlag) {

        int nX0, nY0;

        Npc[m_nIndex].GetMpsPos(&nX0, &nY0);

        int nX1, nY1;
        int nNpcIndex;

        if (m_nNgaMyBuff == NULL || m_nNgaMyBuff < 0 || m_nNgaMyBuff >= 100) {
          m_nNgaMyBuff = 50;
        }

        nNpcIndex = NpcSet.SearchID(g_Team[0].m_nCaptain);

        if (nNpcIndex > 0 && Npc[nNpcIndex].m_Doing != do_death &&
            Npc[nNpcIndex].m_Doing != do_revive &&
            Npc[nNpcIndex].IsCanInput()) {

          if (Npc[nNpcIndex].m_CurrentLife <
              (Npc[nNpcIndex].m_CurrentLifeMax * m_nNgaMyBuff / 100)) {
            Npc[m_nIndex].m_nPeopleIdx = 0;
            Npc[m_nIndex].m_nPeopleIdxCheckClient = (0 + 46) * 13 + 15743;

            Npc[nNpcIndex].GetMpsPos(&nX1, &nY1);

            if (((nX1 - nX0) * (nX1 - nX0) + (nY1 - nY0) * (nY1 - nY0)) <
                (120 * 120)) {
              Npc[m_nIndex].SendCommand(do_skill, nSkillId, -1, m_nIndex);
              SendClientCmdSkill(nSkillId, -1, Npc[m_nIndex].m_dwID);
              return TRUE;
            } else {

              if (Npc[m_nIndex].m_CurrentStamina > 0 ||
                  m_cPK.GetNormalPKState() != 2) {
                Npc[m_nIndex].SendCommand(do_run, nX1, nY1);
                SendClientCmdRun(nX1, nY1);
              } else {
                Npc[m_nIndex].SendCommand(do_walk, nX1, nY1);
                SendClientCmdWalk(nX1, nY1);
              }

              return TRUE;
            }
          }
        }

        for (int i = 0; i < MAX_TEAM_MEMBER; i++) {
          if (g_Team[0].m_nMember[i] >= 0) {
            nNpcIndex = NpcSet.SearchID(g_Team[0].m_nMember[i]);

            if (nNpcIndex <= 0)
              continue;

            if (Npc[nNpcIndex].m_Doing == do_death ||
                Npc[nNpcIndex].m_Doing == do_revive ||
                !Npc[nNpcIndex].IsCanInput())
              continue;

            if (m_nNgaMyBuff == NULL || m_nNgaMyBuff < 0 ||
                m_nNgaMyBuff >= 100) {
              m_nNgaMyBuff = 50;
            }

            if (Npc[nNpcIndex].m_CurrentLife <
                (Npc[nNpcIndex].m_CurrentLifeMax * m_nNgaMyBuff / 100)) {
              Npc[m_nIndex].m_nPeopleIdx = 0;
              Npc[m_nIndex].m_nPeopleIdxCheckClient = (0 + 46) * 13 + 15743;
              Npc[nNpcIndex].GetMpsPos(&nX1, &nY1);

              if (((nX1 - nX0) * (nX1 - nX0) + (nY1 - nY0) * (nY1 - nY0)) <
                  (120 * 120)) {
                Npc[m_nIndex].SendCommand(do_skill, nSkillId, -1, m_nIndex);
                SendClientCmdSkill(nSkillId, -1, Npc[m_nIndex].m_dwID);
                return TRUE;
              } else {

                if (Npc[m_nIndex].m_CurrentStamina > 0 ||
                    m_cPK.GetNormalPKState() != 2) {
                  Npc[m_nIndex].SendCommand(do_run, nX1, nY1);
                  SendClientCmdRun(nX1, nY1);
                } else {
                  Npc[m_nIndex].SendCommand(do_walk, nX1, nY1);
                  SendClientCmdWalk(nX1, nY1);
                }

                return TRUE;
              }
            }
          }
        }

      }

      else if (Npc[m_nIndex].m_CurrentLife <
               (Npc[m_nIndex].m_CurrentLifeMax / 2))

      {
        Npc[m_nIndex].SendCommand(do_skill, nSkillId, -1, m_nIndex);
        SendClientCmdSkill(nSkillId, -1, Npc[m_nIndex].m_dwID);
        return TRUE;
      }
    }
  }

  return FALSE;
}

BOOL KPlayer::PlayerAutoOnBuffE() {

  int nSkillId[MAX_AUTO_SKILL_BUFFE] = {0};
  int nSkillLevel[MAX_AUTO_SKILL_BUFFE] = {0};
  int nFaction;
  BOOL bCheckSkillEffec[MAX_AUTO_SKILL_BUFFE];
  KStateNode *pNode;

  nFaction = m_cFaction.GetCurFactionNo();

  if (nFaction == 0) {
    nSkillId[0] = 15;
    nSkillId[1] = 273;
    nSkillId[2] = 0;
  } else if (nFaction == 1) {
    nSkillId[0] = 42;
    nSkillId[1] = 33;
    nSkillId[2] = 0;
  } else if (nFaction == 2) {
    nSkillId[0] = 0;
    nSkillId[1] = 0;
    nSkillId[2] = 0;
  } else if (nFaction == 3) {
    nSkillId[0] = 0;
    nSkillId[1] = 0;
    nSkillId[2] = 0;
  } else if (nFaction == 4) {
    nSkillId[0] = 0;
    nSkillId[1] = 0;
    nSkillId[2] = 0;
  } else if (nFaction == 5) {
    nSkillId[0] = 109;
    nSkillId[1] = 100;
    nSkillId[2] = 0;
  } else if (nFaction == 6) {
    nSkillId[0] = 130;
    nSkillId[1] = 277;
    nSkillId[2] = 0;
  } else if (nFaction == 7) {
    nSkillId[0] = 150;
    nSkillId[1] = 0;
    nSkillId[2] = 0;
  } else if (nFaction == 8) {
    nSkillId[0] = 157;
    nSkillId[1] = 0;
    nSkillId[2] = 0;
  } else if (nFaction == 9) {
    nSkillId[0] = 171;
    nSkillId[1] = 173;
    nSkillId[2] = 178;
  }

  for (int i = 0; i < MAX_AUTO_SKILL_BUFFE; i++) {

    bCheckSkillEffec[i] = FALSE;

    if (nSkillId[i] > 0) {
      nSkillLevel[i] = Npc[m_nIndex].m_SkillList.GetCurrentLevel(nSkillId[i]);
      if (nSkillLevel[i] > 0) {
        bCheckSkillEffec[i] = TRUE;
      }
    }
  }
  pNode = (KStateNode *)Npc[m_nIndex].m_StateSkillList.GetHead();
  while (pNode) {
    for (int j = 0; j < MAX_AUTO_SKILL_BUFFE; j++) {

      if (nSkillId[j] <= 0 || nSkillLevel[j] <= 0) {
        bCheckSkillEffec[j] = FALSE;
        continue;
      }

      if (pNode->m_SkillID == nSkillId[j]) {
        bCheckSkillEffec[j] = FALSE;
      }
    }

    pNode = (KStateNode *)pNode->GetNext();
  }

  for (int t = 0; t < MAX_AUTO_SKILL_BUFFE; t++) {
    if (bCheckSkillEffec[t]) {

      Npc[m_nIndex].SendCommand(do_skill, nSkillId[t], -1, m_nIndex);
      SendClientCmdSkill(nSkillId[t], -1, Npc[m_nIndex].m_dwID);
      g_DebugLog("Send Skill: %d\n", nSkillId[t]);
      return TRUE;
    }
  }

  return FALSE;
}

BOOL KPlayer::PlayerAutoOnStolen() {

  BOOL CheckUseItemLife = FALSE;
  BOOL CheckUseItemMana = FALSE;
  BOOL CheckUseItemLifeOK = FALSE;
  BOOL CheckUseItemManaOK = FALSE;

  BOOL CheckItemLBMana = FALSE;
  BOOL CheckItemLBLife = FALSE;
  BOOL CheckItemLBMaLi = FALSE;

  int Map = SubWorld[Npc[m_nIndex].m_SubWorldIndex].m_SubWorldID;

  if (m_cPK.GetNormalPKState() == 0 || Map == 24 || Map == 109) {

    if (g_SubWorldSet.GetGameTime() > m_nAutoTimeNextLBLife) {
      for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
        if (m_ItemList.m_Items[i].nIdx &&
            m_ItemList.m_Items[i].nPlace == pos_equiproom) {
          if (Item[m_ItemList.m_Items[i].nIdx].GetGenre() == item_medicine &&
              Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 0) {
            CheckItemLBLife = TRUE;
            break;
          }
        }
      }

      if (!CheckItemLBLife) {
        for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
          if (m_ItemList.m_Items[i].nIdx &&
              m_ItemList.m_Items[i].nPlace == pos_equiproom) {
            if (Item[m_ItemList.m_Items[i].nIdx].GetGenre() == item_task &&
                (Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 104 ||
                 Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 108 ||
                 Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 110)) {
              ItemPos SrcPos;
              SrcPos.nPlace = m_ItemList.m_Items[i].nPlace;
              SrcPos.nX = m_ItemList.m_Items[i].nX;
              SrcPos.nY = m_ItemList.m_Items[i].nY;
              ApplyUseItem(m_ItemList.m_Items[i].nIdx, SrcPos);
              m_nAutoTimeNextLBLife = g_SubWorldSet.GetGameTime() + 3 * 18;
              break;
            }
          }
        }
      }
    }

    if (g_SubWorldSet.GetGameTime() > m_nAutoTimeNextLBMana) {
      for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
        if (m_ItemList.m_Items[i].nIdx &&
            m_ItemList.m_Items[i].nPlace == pos_equiproom) {
          if (Item[m_ItemList.m_Items[i].nIdx].GetGenre() == item_medicine &&
              Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 1) {
            CheckItemLBMana = TRUE;
            break;
          }
        }
      }
      if (!CheckItemLBMana) {
        for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
          if (m_ItemList.m_Items[i].nIdx &&
              m_ItemList.m_Items[i].nPlace == pos_equiproom) {
            if (Item[m_ItemList.m_Items[i].nIdx].GetGenre() == item_task &&
                (Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 105 ||
                 Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 112 ||
                 Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 111)) {
              ItemPos SrcPos;
              SrcPos.nPlace = m_ItemList.m_Items[i].nPlace;
              SrcPos.nX = m_ItemList.m_Items[i].nX;
              SrcPos.nY = m_ItemList.m_Items[i].nY;
              ApplyUseItem(m_ItemList.m_Items[i].nIdx, SrcPos);
              m_nAutoTimeNextLBMana = g_SubWorldSet.GetGameTime() + 3 * 18;
              break;
            }
          }
        }
      }
    }

    if (g_SubWorldSet.GetGameTime() > m_nAutoTimeNextLBMaLi) {
      for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
        if (m_ItemList.m_Items[i].nIdx &&
            m_ItemList.m_Items[i].nPlace == pos_equiproom) {
          if (Item[m_ItemList.m_Items[i].nIdx].GetGenre() == item_medicine &&
              Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 2) {
            CheckItemLBMaLi = TRUE;
            break;
          }
        }
      }

      if (!CheckItemLBMaLi) {
        for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
          if (m_ItemList.m_Items[i].nIdx &&
              m_ItemList.m_Items[i].nPlace == pos_equiproom) {
            if (Item[m_ItemList.m_Items[i].nIdx].GetGenre() == item_task &&
                (Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 103 ||
                 Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 109 ||
                 Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 107 ||
                 Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 264)) {
              ItemPos SrcPos;
              SrcPos.nPlace = m_ItemList.m_Items[i].nPlace;
              SrcPos.nX = m_ItemList.m_Items[i].nX;
              SrcPos.nY = m_ItemList.m_Items[i].nY;
              ApplyUseItem(m_ItemList.m_Items[i].nIdx, SrcPos);
              m_nAutoTimeNextLBMaLi = g_SubWorldSet.GetGameTime() + 3 * 18;
              break;
            }
          }
        }
      }
    }
  }

  if (Npc[m_nIndex].m_CurrentLife < m_nAutoLife &&
      g_SubWorldSet.GetGameTime() > m_nAutoTimeNextLife) {
    CheckUseItemLife = TRUE;
    for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
      if (m_ItemList.m_Items[i].nIdx &&
          m_ItemList.m_Items[i].nPlace == pos_equiproom) {
        if (Item[m_ItemList.m_Items[i].nIdx].GetGenre() == item_medicine &&
            Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 0) {
          ItemPos SrcPos;
          SrcPos.nPlace = m_ItemList.m_Items[i].nPlace;
          SrcPos.nX = m_ItemList.m_Items[i].nX;
          SrcPos.nY = m_ItemList.m_Items[i].nY;
          ApplyUseItem(m_ItemList.m_Items[i].nIdx, SrcPos);
          m_nAutoTimeNextLife =
              g_SubWorldSet.GetGameTime() + MAX_AUTO_LIFE_WAIL;
          CheckUseItemLifeOK = TRUE;
          break;
        }
      }
    }
  }

  if (Npc[m_nIndex].m_CurrentMana < m_nAutoMana &&
      g_SubWorldSet.GetGameTime() > m_nAutoTimeNextMana) {
    CheckUseItemMana = TRUE;
    for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
      if (m_ItemList.m_Items[i].nIdx &&
          m_ItemList.m_Items[i].nPlace == pos_equiproom) {
        if (Item[m_ItemList.m_Items[i].nIdx].GetGenre() == item_medicine &&
            Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 1) {
          ItemPos SrcPos;
          SrcPos.nPlace = m_ItemList.m_Items[i].nPlace;
          SrcPos.nX = m_ItemList.m_Items[i].nX;
          SrcPos.nY = m_ItemList.m_Items[i].nY;
          ApplyUseItem(m_ItemList.m_Items[i].nIdx, SrcPos);
          m_nAutoTimeNextMana =
              g_SubWorldSet.GetGameTime() + MAX_AUTO_MANA_WAIL;
          CheckUseItemManaOK = TRUE;
          break;
        }
      }
    }
  }

  if ((CheckUseItemLife && !CheckUseItemLifeOK) ||
      (CheckUseItemMana && !CheckUseItemManaOK)) {
    for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
      if (m_ItemList.m_Items[i].nIdx &&
          (m_ItemList.m_Items[i].nPlace == pos_equiproom ||
           m_ItemList.m_Items[i].nPlace == pos_immediacy)) {
        if (Item[m_ItemList.m_Items[i].nIdx].GetGenre() == item_medicine &&
            Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 2) {
          ItemPos SrcPos;
          SrcPos.nPlace = m_ItemList.m_Items[i].nPlace;
          SrcPos.nX = m_ItemList.m_Items[i].nX;
          SrcPos.nY = m_ItemList.m_Items[i].nY;
          ApplyUseItem(m_ItemList.m_Items[i].nIdx, SrcPos);

          if ((CheckUseItemLife && !CheckUseItemLifeOK)) {
            m_nAutoTimeNextLife =
                g_SubWorldSet.GetGameTime() + MAX_AUTO_LIFE_WAIL;
            CheckUseItemLifeOK = TRUE;
          }

          if ((CheckUseItemMana && !CheckUseItemManaOK))
            m_nAutoTimeNextMana =
                g_SubWorldSet.GetGameTime() + MAX_AUTO_MANA_WAIL;
          CheckUseItemManaOK = TRUE;
          break;
        }
      }
    }
  }

  if (m_ItemList.GetMoney(room_equipment) >= m_nGuiTienNew * 10000)
    for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
      if (m_ItemList.m_Items[i].nIdx &&
          (m_ItemList.m_Items[i].nPlace == pos_equiproom ||
           m_ItemList.m_Items[i].nPlace == pos_immediacy)) {
        if (Item[m_ItemList.m_Items[i].nIdx].GetGenre() == item_task &&
            Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 3) {

          Npc[m_nIndex].m_nPeopleIdx = 0;
          Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;

          Npc[m_nIndex].m_nObjectIdx = 0;

          ItemPos SrcPos;
          SrcPos.nPlace = m_ItemList.m_Items[i].nPlace;
          SrcPos.nX = m_ItemList.m_Items[i].nX;
          SrcPos.nY = m_ItemList.m_Items[i].nY;
          ApplyUseItem(m_ItemList.m_Items[i].nIdx, SrcPos);
          return TRUE;
        }
      }
    }

  if (Npc[m_nIndex].m_CurrentLife < m_nAutoReturn)
    for (int i = 0; i < MAX_PLAYER_ITEM; i++) {
      if (m_ItemList.m_Items[i].nIdx &&
          (m_ItemList.m_Items[i].nPlace == pos_equiproom ||
           m_ItemList.m_Items[i].nPlace == pos_immediacy)) {
        if (Item[m_ItemList.m_Items[i].nIdx].GetGenre() == item_task &&
            Item[m_ItemList.m_Items[i].nIdx].GetDetailType() == 3) {

          Npc[m_nIndex].m_nPeopleIdx = 0;
          Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;

          Npc[m_nIndex].m_nObjectIdx = 0;

          ItemPos SrcPos;
          SrcPos.nPlace = m_ItemList.m_Items[i].nPlace;
          SrcPos.nX = m_ItemList.m_Items[i].nX;
          SrcPos.nY = m_ItemList.m_Items[i].nY;
          g_DebugLog("NGAY DAY NE: %d - %d \n", Npc[m_nIndex].m_CurrentLife,
                     m_nAutoReturn);
          ApplyUseItem(m_ItemList.m_Items[i].nIdx, SrcPos);
          return TRUE;
        }
      }
    }

  return FALSE;
}

BOOL KPlayer::PlayerAutoOnSkill() {

  ISkill *pISkill = g_SkillManager.GetSkill(
      Npc[m_nIndex].m_SkillList.m_Skills[m_nAutoStarSkillIDx].SkillId,
      Npc[m_nIndex].m_SkillList.GetCurrentLevel(
          Npc[m_nIndex].m_SkillList.m_Skills[m_nAutoStarSkillIDx].SkillId));
  if (!pISkill)
    return FALSE;

  if ((!Npc[m_nIndex].m_SkillList.CanCast(
          Npc[m_nIndex].m_SkillList.m_Skills[m_nAutoStarSkillIDx].SkillId,
          SubWorld[0].m_dwCurrentTime)) ||
      (!Npc[m_nIndex].Cost(pISkill->GetSkillCostType(),
                           pISkill->GetSkillCost(&Npc[m_nIndex]), TRUE))) {

    return FALSE;
  }

  int nSkillLeftIdx = Npc[m_nIndex].m_SkillList.FindSame(m_nLeftSkillID);
  int RangeSkill = 0;
  if (nSkillLeftIdx > 0) {
    KSkill *pOrdinSkill = (KSkill *)g_SkillManager.GetSkill(
        m_nLeftSkillID,
        Npc[m_nIndex].m_SkillList.GetCurrentLevel(m_nLeftSkillID));
    if (pOrdinSkill) {
      if (pOrdinSkill->IsTargetEnemy()) {
        m_nAutoStarSkillIDx = nSkillLeftIdx;
        RangeSkill = pOrdinSkill->GetAttackRadius();
      }
    }
  }

  Npc[m_nIndex].SetActiveSkill(m_nAutoStarSkillIDx);
  if (m_nAutoRange >= RangeSkill)
    Npc[m_nIndex].m_CurrentAttackRadius = RangeSkill;
  else
    Npc[m_nIndex].m_CurrentAttackRadius = m_nAutoRange;

  g_DebugLog("Debug 1 \n");

  if (Npc[m_nIndex].m_nPeopleIdx > 0) {
    if ((Npc[Npc[m_nIndex].m_nPeopleIdx].m_Kind == kind_player && !m_TuVe) ||
        (Npc[Npc[m_nIndex].m_nPeopleIdx].m_Kind != kind_player &&
         m_TargetPlayer)) {
      g_DebugLog("Debug 2 \n");
      Npc[Npc[m_nIndex].m_nPeopleIdx].m_nAutoNoActack = TRUE;
      Npc[m_nIndex].m_nPeopleIdx = 0;
      Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;
    }
  }

  if (m_TuVe) {
    //	g_DebugLog("Debug 3 \n");
    Npc[m_nIndex].m_nPeopleIdx = 0;
    Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;
  }

  if (Npc[m_nIndex].m_nPeopleIdx <= 0) {
    int nX0, nY0, nX1, nY1, nEnemyIdx, nMaxRangeDb;
    int KhoangCachGanNhat = 1000000;

    nEnemyIdx = 0;
    nMaxRangeDb = m_nAutoAtack * m_nAutoAtack;
    Npc[m_nIndex].GetMpsPos(&nX0, &nY0);
    g_DebugLog("Debug 4 \n");

    for (int i = 1; i < MAX_NPC; i++) {
      if (!Npc[i].m_Index ||
          relation_enemy != NpcSet.GetRelation(m_nIndex, Npc[i].m_Index) ||
          Npc[i].m_Doing == do_death || Npc[i].m_Doing == do_revive ||
          Npc[i].m_CurrentLife <= 0 || Npc[i].m_CurrentLife == 100)
        continue;

      if (Npc[i].m_Kind != kind_player && m_TargetPlayer) // Auto PK Nguoi Choi
      {

        g_DebugLog("Debug 5 \n");
        continue;
      }
      if (!m_TargetPlayer) // Auto Target Quai
      {
        if (Npc[i].m_Kind == kind_player) {
          if (!m_TuVe)
            continue;
          else if (m_TuVe && Npc[i].m_nPKFlag != 2)
            continue;
        }
      }

      Npc[i].GetMpsPos(&nX1, &nY1);

      if (Npc[i].m_nAutoNoActack &&
          (Npc[i].m_nAutoOldX - nX1) * (Npc[i].m_nAutoOldX - nX1) +
                  (Npc[i].m_nAutoOldY - nY1) * (Npc[i].m_nAutoOldY - nY1) >=
              (120 * 120))
        Npc[i].m_nAutoNoActack = FALSE;

      if (Npc[i].m_RegionIndex < 0 || !SubWorld[0].TestBarrier(nX1, nY1) ||
          Npc[i].m_nAutoNoActack)
        continue;

      if (Npc[i].m_Kind == kind_player) {
        nMaxRangeDb = m_nPhamViTuVe * m_nPhamViTuVe;
        if ((nX1 - m_nAutoStarNpcX) * (nX1 - m_nAutoStarNpcX) +
                (nY1 - m_nAutoStarNpcY) * (nY1 - m_nAutoStarNpcY) <
            nMaxRangeDb) {
          nEnemyIdx = i;
          break;
        }
      } else {
        int distance = NpcSet.GetDistance(i, m_nIndex);
        if (((nX1 - nX0) * (nX1 - nX0) + (nY1 - nY0) * (nY1 - nY0)) <
                nMaxRangeDb &&
            ((nX1 - m_nAutoStarNpcX) * (nX1 - m_nAutoStarNpcX) +
             (nY1 - m_nAutoStarNpcY) * (nY1 - m_nAutoStarNpcY)) < nMaxRangeDb &&
            distance < KhoangCachGanNhat)
        //	if (distance <= m_nAutoAtack)
        {
          KhoangCachGanNhat = distance;
          nMaxRangeDb = (nX1 - nX0) * (nX1 - nX0) + (nY1 - nY0) * (nY1 - nY0);
          nEnemyIdx = i;
        }
      }
    }

    if (nEnemyIdx > 0) {
      g_DebugLog("Debug 6 \n");

      if (Npc[nEnemyIdx].m_Kind ==
          kind_player) // Neu Doi Tuong la Player thi Check
      {

        Npc[m_nIndex].GetMpsPos(&nX1, &nY1);
        nMaxRangeDb = m_nPhamViTuVe * m_nPhamViTuVe;
        if ((nX1 - m_nAutoStarNpcX) * (nX1 - m_nAutoStarNpcX) +
                (nY1 - m_nAutoStarNpcY) * (nY1 - m_nAutoStarNpcY) >=
            nMaxRangeDb) {
          Npc[m_nIndex].SendCommand(do_walk, m_nAutoStarNpcX, m_nAutoStarNpcY);
          SendClientCmdWalk(m_nAutoStarNpcX, m_nAutoStarNpcY);
          Npc[m_nIndex].m_nPeopleIdx = 0;
          Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;
        } else {
          Npc[m_nIndex].m_nPeopleIdx = nEnemyIdx;
          Npc[m_nIndex].m_nPeopleIdxCheckClient = (nEnemyIdx + 46) * 13 + 15743;
          m_nAutoOldCurenLifeActive = Npc[nEnemyIdx].m_CurrentLife;
        }
      } else {
        PlayerAutoOnBuffE();
        Npc[m_nIndex].m_nPeopleIdx = nEnemyIdx;
        Npc[m_nIndex].m_nPeopleIdxCheckClient = (nEnemyIdx + 46) * 13 + 15743;

        m_nAutoOldCurenLifeActive = Npc[nEnemyIdx].m_CurrentLife;
        m_nAutoTimeNextNpc = g_SubWorldSet.GetGameTime() + m_nAutoNAtack;
      }
    }

    else {

      if (Npc[m_nIndex].m_CurrentStamina > 0 || m_cPK.GetNormalPKState() != 2) {
        if (m_QuanhDiem) {
          Npc[m_nIndex].GetMpsPos(&nX1, &nY1);
          if (((nX1 - m_nAutoStarNpcX) * (nX1 - m_nAutoStarNpcX) > 8 * 8) ||
              ((nY1 - m_nAutoStarNpcY) * (nY1 - m_nAutoStarNpcY) > 16 * 16)) {
            Npc[m_nIndex].SendCommand(do_run, m_nAutoStarNpcX, m_nAutoStarNpcY);
            SendClientCmdRun(m_nAutoStarNpcX, m_nAutoStarNpcY);
          } else {
            if (!Npc[m_nIndex].m_bRideHorse) {
              if (Npc[m_nIndex].m_Doing != do_sit) {
                Npc[m_nIndex].SendCommand(do_sit);
                SendClientCmdSit(TRUE);
              }
            }
          }
        }
      } else {
        if (m_QuanhDiem) {
          Npc[m_nIndex].GetMpsPos(&nX1, &nY1);
          if (((nX1 - m_nAutoStarNpcX) * (nX1 - m_nAutoStarNpcX) > 8 * 8) ||
              ((nY1 - m_nAutoStarNpcY) * (nY1 - m_nAutoStarNpcY) > 16 * 16)) {
            Npc[m_nIndex].SendCommand(do_walk, m_nAutoStarNpcX,
                                      m_nAutoStarNpcY);
            SendClientCmdWalk(m_nAutoStarNpcX, m_nAutoStarNpcY);
          } else {
            if (!Npc[m_nIndex].m_bRideHorse) {
              if (Npc[m_nIndex].m_Doing != do_sit) {
                Npc[m_nIndex].SendCommand(do_sit);
                SendClientCmdSit(TRUE);
              }
            }
          }
        }
      }
    }

  }

  else if (m_nAutoTimeNextNpc < g_SubWorldSet.GetGameTime()) {

    if (m_nAutoOldCurenLifeActive ==
        Npc[Npc[m_nIndex].m_nPeopleIdx].m_CurrentLife) {
      Npc[Npc[m_nIndex].m_nPeopleIdx].GetMpsPos(
          &Npc[Npc[m_nIndex].m_nPeopleIdx].m_nAutoOldX,
          &Npc[Npc[m_nIndex].m_nPeopleIdx].m_nAutoOldY);
      Npc[Npc[m_nIndex].m_nPeopleIdx].m_nAutoOldLife =
          Npc[Npc[m_nIndex].m_nPeopleIdx].m_CurrentLife;
      Npc[Npc[m_nIndex].m_nPeopleIdx].m_nAutoNoActack = TRUE;
      Npc[m_nIndex].m_nPeopleIdx = 0;
      Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;
    } else {
      m_nAutoTimeNextNpc = g_SubWorldSet.GetGameTime() + m_nAutoNAtack;
      m_nAutoOldCurenLifeActive = Npc[Npc[m_nIndex].m_nPeopleIdx].m_CurrentLife;
    }
  }

  return FALSE;
}

BOOL KPlayer::PlayerAutoOnSkillTheoSau() {
  g_DebugLog("Toi Day Roi Ne 2 \n");
  ISkill *pISkill = g_SkillManager.GetSkill(
      Npc[m_nIndex].m_SkillList.m_Skills[m_nAutoStarSkillIDx].SkillId,
      Npc[m_nIndex].m_SkillList.GetCurrentLevel(
          Npc[m_nIndex].m_SkillList.m_Skills[m_nAutoStarSkillIDx].SkillId));
  if (!pISkill)
    return FALSE;

  if ((!Npc[m_nIndex].m_SkillList.CanCast(
          Npc[m_nIndex].m_SkillList.m_Skills[m_nAutoStarSkillIDx].SkillId,
          SubWorld[0].m_dwCurrentTime)) ||
      (!Npc[m_nIndex].Cost(pISkill->GetSkillCostType(),
                           pISkill->GetSkillCost(&Npc[m_nIndex]), TRUE))) {

    return FALSE;
  }

  int nSkillLeftIdx = Npc[m_nIndex].m_SkillList.FindSame(m_nLeftSkillID);
  int RangeSkill = 0;
  if (nSkillLeftIdx > 0) {
    KSkill *pOrdinSkill = (KSkill *)g_SkillManager.GetSkill(
        m_nLeftSkillID,
        Npc[m_nIndex].m_SkillList.GetCurrentLevel(m_nLeftSkillID));
    if (pOrdinSkill) {
      if (pOrdinSkill->IsTargetEnemy()) {
        m_nAutoStarSkillIDx = nSkillLeftIdx;
        RangeSkill = pOrdinSkill->GetAttackRadius();
      }
    }
  }

  Npc[m_nIndex].SetActiveSkill(m_nAutoStarSkillIDx);
  if (m_nAutoRange >= RangeSkill)
    Npc[m_nIndex].m_CurrentAttackRadius = RangeSkill;
  else
    Npc[m_nIndex].m_CurrentAttackRadius = m_nAutoRange;

  if (Npc[m_nIndex].m_nPeopleIdx <= 0) {
    int nX0, nY0, nX1, nY1, nEnemyIdx, nMaxRangeDb;

    nEnemyIdx = 0;
    int MinRange = 2000;
    nMaxRangeDb = m_nAutoAtack * m_nAutoAtack;
    Npc[m_nIndex].GetMpsPos(&nX0, &nY0);

    for (int i = 1; i < MAX_NPC; i++) {
      if (!Npc[i].m_Index ||
          relation_enemy != NpcSet.GetRelation(m_nIndex, Npc[i].m_Index) ||
          Npc[i].m_Doing == do_death || Npc[i].m_Doing == do_revive ||
          Npc[i].m_CurrentLife <= 0 || Npc[i].m_CurrentLife == 100)
        continue;

      if (Npc[i].m_Kind == kind_player)
        continue;

      Npc[i].GetMpsPos(&nX1, &nY1);

      if (Npc[i].m_nAutoNoActack &&
          (Npc[i].m_nAutoOldX - nX1) * (Npc[i].m_nAutoOldX - nX1) +
                  (Npc[i].m_nAutoOldY - nY1) * (Npc[i].m_nAutoOldY - nY1) >=
              (120 * 120))
        Npc[i].m_nAutoNoActack = FALSE;

      if (Npc[i].m_RegionIndex < 0 || !SubWorld[0].TestBarrier(nX1, nY1) ||
          Npc[i].m_nAutoNoActack)
        continue;

      int distance = NpcSet.GetDistance(i, m_nIndex);
      if (distance <= m_nAutoAtack && distance < MinRange) {
        MinRange = distance;
        nEnemyIdx = i;
        // g_DebugLog("Con khac: %d\n",nEnemyIdx);
      }
    }

    if (nEnemyIdx > 0) {
      Npc[m_nIndex].m_nPeopleIdx = nEnemyIdx;
      Npc[m_nIndex].m_nPeopleIdxCheckClient = (nEnemyIdx + 46) * 13 + 15743;
    }
  }

  return FALSE;
}

/*
BOOL KPlayer::PlayerAutoOnSkill()
{

ISkill * pISkill =
g_SkillManager.GetSkill(Npc[m_nIndex].m_SkillList.m_Skills[m_nAutoStarSkillIDx].SkillId,Npc[m_nIndex].m_SkillList.GetCurrentLevel(Npc[m_nIndex].m_SkillList.m_Skills[m_nAutoStarSkillIDx].SkillId));
                if (!pISkill)
            return FALSE;

if
((!Npc[m_nIndex].m_SkillList.CanCast(Npc[m_nIndex].m_SkillList.m_Skills[m_nAutoStarSkillIDx].SkillId,
SubWorld[0].m_dwCurrentTime))
                        ||
                        (!Npc[m_nIndex].Cost(pISkill->GetSkillCostType(),
pISkill->GetSkillCost(&Npc[m_nIndex]), TRUE))
                        )
                {

                        return FALSE;
                }




Npc[m_nIndex].SetActiveSkill(m_nAutoStarSkillIDx);
Npc[m_nIndex].m_CurrentAttackRadius = m_nAutoRange;

if (Npc[m_nIndex].m_nPeopleIdx <= 0)
{
    int nX0,nY0,nX1,nY1,nEnemyIdx,nMaxRangeDb;

        nEnemyIdx = 0;
        nMaxRangeDb = m_nAutoAtack * m_nAutoAtack;

        Npc[m_nIndex].GetMpsPos(&nX0,&nY0);
        if (m_cPK.GetNormalPKState() == 0)
        {
                int iNumPlayer = 0;
                if (m_TargetPlayer)
                {
                        for (int i = 1; i < MAX_NPC; i++)
                        {
                                if (!Npc[i].m_Index			||
                                        Npc[i].m_Doing == do_death ||
                                        Npc[i].m_Doing == do_revive ||
Npc[i].m_CurrentLife <= 0 || Npc[i].m_CurrentLife == 100 || Npc[i].m_Kind !=
kind_player) continue;

                                //	if 	(m_TargetPlayer !=
m_TargetEnemy)
                                //	{
                                //		m_TargetEnemy = m_TargetPlayer;
                                //		Npc[m_nIndex].m_nPeopleIdx = 0;
                                //		nEnemyIdx = 0;
                                //		break;
                                //	}


                                          Npc[i].GetMpsPos(&nX1,&nY1);

                                        if (Npc[i].m_nAutoNoActack &&
                                                (Npc[i].m_nAutoOldX - nX1) *
(Npc[i].m_nAutoOldX - nX1) + (Npc[i].m_nAutoOldY - nY1) * (Npc[i].m_nAutoOldY -
nY1) >= (120 * 120)
                                                )
                                                Npc[i].m_nAutoNoActack = FALSE;


                                        if (Npc[i].m_RegionIndex < 0 ||
!SubWorld[0].TestBarrier(nX1,nY1) || Npc[i].m_nAutoNoActack) continue;

                                        if (((nX1-nX0)*(nX1-nX0) +
(nY1-nY0)*(nY1-nY0)) < nMaxRangeDb &&
((nX1-m_nAutoStarNpcX)*(nX1-m_nAutoStarNpcX) +
(nY1-m_nAutoStarNpcY)*(nY1-m_nAutoStarNpcY)) < nMaxRangeDb)
                                        {
                                                if (Npc[i].m_nPKFlag == 2)
                                                {
                                                        if (m_bUseTDP)
                                                        {
                                                                for (int t = 0;
t < MAX_PLAYER_ITEM; t++)
                                                                {
                                                                if
(m_ItemList.m_Items[t].nIdx && (m_ItemList.m_Items[t].nPlace == pos_equiproom ||
m_ItemList.m_Items[t].nPlace == pos_immediacy))
                                                                {
                                                                if
(Item[m_ItemList.m_Items[t].nIdx].GetGenre() == item_task &&
Item[m_ItemList.m_Items[t].nIdx].GetDetailType() == 3)
                                                                {

                                                                Npc[m_nIndex].m_nPeopleIdx
= 0; Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;

                                                                Npc[m_nIndex].m_nObjectIdx
= 0;


                                                                ItemPos SrcPos;
                                                                SrcPos.nPlace =
m_ItemList.m_Items[t].nPlace; SrcPos.nX = m_ItemList.m_Items[t].nX; SrcPos.nY =
m_ItemList.m_Items[t].nY; ApplyUseItem(m_ItemList.m_Items[t].nIdx,SrcPos);
                                                                return TRUE;
                                                                }
                                                                }
                                                                }
                                                        }
                                                        else
                                                        {
                                                                iNumPlayer = 1;
                                                                m_cPK.ApplySetNormalPKState(1);
                                                        }
                                                        break;
                                                }
                                        }
                        }
                }

                if (iNumPlayer == 0)
                {
                        for (int i = 1; i < MAX_NPC; i++)
                        {
                                if (!Npc[i].m_Index ||
                                        relation_enemy !=
NpcSet.GetRelation(m_nIndex,Npc[i].m_Index) || Npc[i].m_Doing == do_death ||
                                        Npc[i].m_Doing == do_revive ||
Npc[i].m_CurrentLife <= 0 || Npc[i].m_CurrentLife == 100 || Npc[i].m_Kind ==
kind_player) continue;

                                //if 	(m_TargetPlayer != m_TargetEnemy)
                                //{
                                //	m_TargetEnemy = m_TargetPlayer;
                                //	Npc[m_nIndex].m_nPeopleIdx = 0;
                                //	nEnemyIdx = 0;
                                //	break;
                                //}


                                  Npc[i].GetMpsPos(&nX1,&nY1);

                                if (Npc[i].m_nAutoNoActack &&
                                        (Npc[i].m_nAutoOldX - nX1) *
(Npc[i].m_nAutoOldX - nX1) + (Npc[i].m_nAutoOldY - nY1) * (Npc[i].m_nAutoOldY -
nY1) >= (120 * 120)
                                        )
                                        Npc[i].m_nAutoNoActack = FALSE;


                                if (Npc[i].m_RegionIndex < 0 ||
!SubWorld[0].TestBarrier(nX1,nY1) || Npc[i].m_nAutoNoActack) continue;

                                if (((nX1-nX0)*(nX1-nX0) + (nY1-nY0)*(nY1-nY0))
< nMaxRangeDb && ((nX1-m_nAutoStarNpcX)*(nX1-m_nAutoStarNpcX) +
(nY1-m_nAutoStarNpcY)*(nY1-m_nAutoStarNpcY)) < nMaxRangeDb)
                                {
                                        nMaxRangeDb = (nX1-nX0)*(nX1-nX0) +
(nY1-nY0)*(nY1-nY0); nEnemyIdx = i;
                                }

                        }
                }
        }
        else
        {
                int iNumPlayer = 0;
                for (int i = 1; i < MAX_NPC; i++)
                {
                        if (!Npc[i].m_Index ||
                                relation_enemy !=
NpcSet.GetRelation(m_nIndex,Npc[i].m_Index) || Npc[i].m_Doing == do_death ||
                                Npc[i].m_Doing == do_revive ||
Npc[i].m_CurrentLife <= 0 || Npc[i].m_CurrentLife == 100 || Npc[i].m_Kind !=
kind_player) continue;

                        //if 	(m_TargetPlayer != m_TargetEnemy)
                        //{
                        //	m_TargetEnemy = m_TargetPlayer;
                        //	Npc[m_nIndex].m_nPeopleIdx = 0;
                        //	nEnemyIdx = 0;
                        //	break;
                        //}


                          Npc[i].GetMpsPos(&nX1,&nY1);

                        if (Npc[i].m_nAutoNoActack &&
                                (Npc[i].m_nAutoOldX - nX1) * (Npc[i].m_nAutoOldX
- nX1) + (Npc[i].m_nAutoOldY - nY1) * (Npc[i].m_nAutoOldY - nY1) >= (120 * 120)
                                )
                                Npc[i].m_nAutoNoActack = FALSE;


                        if (Npc[i].m_RegionIndex < 0 ||
!SubWorld[0].TestBarrier(nX1,nY1) || Npc[i].m_nAutoNoActack) continue;

                        if (((nX1-nX0)*(nX1-nX0) + (nY1-nY0)*(nY1-nY0)) <
nMaxRangeDb && ((nX1-m_nAutoStarNpcX)*(nX1-m_nAutoStarNpcX) +
(nY1-m_nAutoStarNpcY)*(nY1-m_nAutoStarNpcY)) < nMaxRangeDb)
                        {
                                nMaxRangeDb = (nX1-nX0)*(nX1-nX0) +
(nY1-nY0)*(nY1-nY0); nEnemyIdx = i;
                        }
                        iNumPlayer = 1;
                }
                if (iNumPlayer == 0)
                {
                        for (int i = 1; i < MAX_NPC; i++)
                        {
                                if (!Npc[i].m_Index ||
                                        relation_enemy !=
NpcSet.GetRelation(m_nIndex,Npc[i].m_Index) || Npc[i].m_Doing == do_death ||
                                        Npc[i].m_Doing == do_revive ||
Npc[i].m_CurrentLife <= 0 || Npc[i].m_CurrentLife == 100 || Npc[i].m_Kind ==
kind_player) continue;

                        //	if 	(m_TargetPlayer != m_TargetEnemy)
                        //	{
                        //		m_TargetEnemy = m_TargetPlayer;
                        //		Npc[m_nIndex].m_nPeopleIdx = 0;
                        //		nEnemyIdx = 0;
                        //		break;
                        //	}


                                  Npc[i].GetMpsPos(&nX1,&nY1);

                                if (Npc[i].m_nAutoNoActack &&
                                        (Npc[i].m_nAutoOldX - nX1) *
(Npc[i].m_nAutoOldX - nX1) + (Npc[i].m_nAutoOldY - nY1) * (Npc[i].m_nAutoOldY -
nY1) >= (120 * 120)
                                        )
                                        Npc[i].m_nAutoNoActack = FALSE;


                                if (Npc[i].m_RegionIndex < 0 ||
!SubWorld[0].TestBarrier(nX1,nY1) || Npc[i].m_nAutoNoActack) continue;

                                if (((nX1-nX0)*(nX1-nX0) + (nY1-nY0)*(nY1-nY0))
< nMaxRangeDb && ((nX1-m_nAutoStarNpcX)*(nX1-m_nAutoStarNpcX) +
(nY1-m_nAutoStarNpcY)*(nY1-m_nAutoStarNpcY)) < nMaxRangeDb)
                                {
                                        nMaxRangeDb = (nX1-nX0)*(nX1-nX0) +
(nY1-nY0)*(nY1-nY0); nEnemyIdx = i;
                                }

                        }
                }
        }

        if (nEnemyIdx > 0)
        {

        Npc[m_nIndex].m_nPeopleIdx = nEnemyIdx;
        Npc[m_nIndex].m_nPeopleIdxCheckClient = (nEnemyIdx + 46) * 13 + 15743;

        m_nAutoOldCurenLifeActive = Npc[nEnemyIdx].m_CurrentLife;
        m_nAutoTimeNextNpc = g_SubWorldSet.GetGameTime() + m_nAutoNAtack;

        }

        else
        {

        if (Npc[m_nIndex].m_CurrentStamina > 0 || m_cPK.GetNormalPKState() != 2)
                {
                        if (m_QuanhDiem)
                        {
                                Npc[m_nIndex].SendCommand(do_run,
m_nAutoStarNpcX, m_nAutoStarNpcY); SendClientCmdRun(m_nAutoStarNpcX,
m_nAutoStarNpcY);
                        }
                }
                else
                {
                        if (m_QuanhDiem)
                        {
                                Npc[m_nIndex].SendCommand(do_walk,
m_nAutoStarNpcX, m_nAutoStarNpcY); SendClientCmdWalk(m_nAutoStarNpcX,
m_nAutoStarNpcY);
                        }
                }

        }


}

else if (m_nAutoTimeNextNpc < g_SubWorldSet.GetGameTime() && !m_TargetPlayer)
{

        if (m_nAutoOldCurenLifeActive ==
Npc[Npc[m_nIndex].m_nPeopleIdx].m_CurrentLife)
        {
        Npc[Npc[m_nIndex].m_nPeopleIdx].GetMpsPos(&Npc[Npc[m_nIndex].m_nPeopleIdx].m_nAutoOldX,&Npc[Npc[m_nIndex].m_nPeopleIdx].m_nAutoOldY);
        Npc[Npc[m_nIndex].m_nPeopleIdx].m_nAutoOldLife =
Npc[Npc[m_nIndex].m_nPeopleIdx].m_CurrentLife;
        Npc[Npc[m_nIndex].m_nPeopleIdx].m_nAutoNoActack = TRUE;
        Npc[m_nIndex].m_nPeopleIdx = 0;

        Npc[m_nIndex].m_nPeopleIdxCheckClient = 0;
        }
        else
        {
        m_nAutoTimeNextNpc = g_SubWorldSet.GetGameTime() + m_nAutoNAtack;
        m_nAutoOldCurenLifeActive =
Npc[Npc[m_nIndex].m_nPeopleIdx].m_CurrentLife;
        }

}

return FALSE;
}

*/

// Ham moi
BOOL KPlayer::PlayerAutoOnObj() {

  if (Npc[m_nIndex].m_nObjectIdx > 0) {

    if (g_SubWorldSet.GetGameTime() > m_nAutoTimeNextObj) {
      Object[Npc[m_nIndex].m_nObjectIdx].m_nAutoNoActack = TRUE;
      Npc[m_nIndex].m_nObjectIdx = 0;
      return FALSE;
    }

    int nOX, nOY;
    Object[Npc[m_nIndex].m_nObjectIdx].GetMpsPos(&nOX, &nOY);
    if (Npc[m_nIndex].m_CurrentStamina > 0 || m_cPK.GetNormalPKState() != 2) {
      Npc[m_nIndex].SendCommand(do_run, nOX, nOY);
      SendClientCmdRun(nOX, nOY);
    } else {
      Npc[m_nIndex].SendCommand(do_walk, nOX, nOY);
      SendClientCmdWalk(nOX, nOY);
    }

    return TRUE;

  }

  else

  {

    int nX0, nY0, nX1, nY1, nObjIdx, nMaxRangeDb;

    nObjIdx = 0;
    nMaxRangeDb = m_nAutoAtack * m_nAutoAtack;

    Npc[m_nIndex].GetMpsPos(&nX0, &nY0);

    for (int i = 1; i < MAX_OBJECT; i++) {

      if (Object[i].m_nIndex <= 0 || Object[i].m_nRegionIdx < 0 ||
          (Object[i].m_nKind != Obj_Kind_Money &&
           Object[i].m_nKind != Obj_Kind_Prop &&
           Object[i].m_nKind != Obj_Kind_Item) ||
          Object[i].m_nAutoNoActack)
        continue;

      if (Object[i].m_nKind == Obj_Kind_Money && !m_bMoneyObj)
        continue;

      if (Object[i].m_nKind == Obj_Kind_Item && !m_bItemObj && !m_bItemSelect)
        continue;

      if (Object[i].m_nKind == Obj_Kind_Prop && !m_bPropObj)
        continue;

      Object[i].GetMpsPos(&nX1, &nY1);

      if (((nX1 - nX0) * (nX1 - nX0) + (nY1 - nY0) * (nY1 - nY0)) <
          nMaxRangeDb) {
        nMaxRangeDb = (nX1 - nX0) * (nX1 - nX0) + (nY1 - nY0) * (nY1 - nY0);
        nObjIdx = i;
      }
    }

    // if (Item[Object[nObjIndex].m_nItemDataID].GetSeries() = 0)
    // continue;

    // Test Auto
    // m_ItemList.RemoveAllInOneRoom(room_repository);
    if (nObjIdx > 0) {
      //	g_DebugLog("NGUHANH %s",Object[nObjIdx].m_nItemDataID);

      Npc[m_nIndex].m_nObjectIdx = nObjIdx;

      m_nAutoTimeNextObj = g_SubWorldSet.GetGameTime() + MAX_AUTO_OBJ_WAIL;
      return TRUE;
    }
  }

  return FALSE;
}

#endif

#ifdef _SERVER
void KPlayer::SetExp(int nExpAdd) {
  if (nExpAdd < 0 && nExpAdd > 2000000000)
    return;

  m_nExp = nExpAdd;
  PLAYER_EXP_SYNC sSyncExp;
  sSyncExp.ProtocolType = (BYTE)s2c_playerexp;
  sSyncExp.m_nExp = m_nExp;
  g_pServer->PackDataToClient(m_nNetConnectIdx, (BYTE *)&sSyncExp,
                              sizeof(PLAYER_EXP_SYNC));

  if (CanSave()) {

    if (Save()) {

      m_uMustSave = SAVE_REQUEST;
    }
  }
}
#endif
