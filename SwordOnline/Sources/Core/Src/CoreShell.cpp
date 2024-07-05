/*****************************************************************************************
//	������Core�ӿڷ���
//	Copyright : Kingsoft 2002
//	Author	:
//	CreateTime:	2002-9-12
------------------------------------------------------------------------------------------
*****************************************************************************************/
#include "CoreShell.h"
#include "GameDataDef.h"
#include "KCore.h"

#include "CoreDrawGameObj.h"
#include "ImgRef.h"

#include "KItemList.h"
#include "KPlayer.h"
#include "KPlayerSet.h"
#include "KProtocolProcess.h"
#include "KSubWorldSet.h"

#include "GameDataDef.h"
#include "KNpcResList.h"
#include "KOption.h"
#include "KSubWorld.h"
#include "KTaskFuns.h"
#include "KTongProtocol.h"
#include "KViewItem.h"
#include "MsgGenreDef.h"
#include "Scene/KScenePlaceC.h"
#include "kskills.h"
#include "malloc.h"

#include "KBuySell.h"
#include "KItemSet.h" //
#include "KMagicDesc.h"
#include "KThiefSkill.h"

#define NPC_TRADE_BOX_WIDTH 6
#define NPC_TRADE_BOX_HEIGHT 10
#define MAX_TRADE_ITEM_WIDTH 2
#define MAX_TRADE_ITEM_HEIGHT 4
IClientCallback *l_pDataChangedNotifyFunc = 0;

class KCoreShell : public iCoreShell {
public:
  int GetKind(int nItemID);           // for phan loai item
  int GetGenre(int nItemID);          // for phan loai item
  BOOL IsBlueItem(int nItemID);       // co ma thuat ko?
  int GetDurabilityItem(int nItemID); // kiem tra do ben item
  int GetDetailItem2(int nItemID);    // kiem tra do ben item

  int GetProtocolSize(BYTE byProtocol);
  int Debug(unsigned int uDataId, unsigned int uParam, int nParam);
  int OperationRequest(unsigned int uOper, unsigned int uParam, int nParam);
  void ProcessInput(unsigned int uMsg, unsigned int uParam, int nParam);
  int FindSelectNPC(int x, int y, int nRelation, bool bSelect, void *pReturn,
                    int &nKind);
  int CheckMapLoiDai();
  int FindSelectObject(int x, int y, bool bSelect, int &nObjectIdx, int &nKind);
  int FindSpecialNPC(char *Name, void *pReturn, int &nKind);
  int ChatSpecialPlayer(void *pPlayer, const char *pMsgBuff,
                        unsigned short nMsgLength);
  void ApplyAddTeam(void *pPlayer);
  void TradeApplyStart(void *pPlayer);
  int UseSkill(int x, int y, int nSkillID);
  int LockSomeoneUseSkill(int nTargetIndex, int nSkillID);
  int LockSomeoneUseSkillCC(int nTargetIndex);
  int LockSomeoneAction(int nTargetIndex);
  void AutoPause();
  int LockObjectAction(int nTargetIndex);
  void GotoWhere(int x, int y, int mode); // mode 0 is auto, 1 is walk, 2 is run
  void Goto(int nDir,
            int mode); // nDir 0~63, mode 0 is auto, 1 is walk, 2 is run
  void Turn(int nDir); // nDir 0 is left, 1 is right, 2 is back
  int ThrowAwayItem();
  int GetNPCRelation(int nIndex);

  BOOL CheckOpenShop(int nIndex);
  void OpenBuyShop(DWORD dwId);

  // ���ͼ��صĲ���,uOper��ȡֵ���� GAME_SCENE_MAP_OPERATION_INDEX
  //	virtual int SceneMapOperation(unsigned int uOper, unsigned int uParam,
  //int nParam) = 0;
  int SceneMapOperation(unsigned int uOper, unsigned int uParam, int nParam);
  // ������صĲ���, uOper��ȡֵ���� GAME_TONG_OPERATION_INDEX
  int TongOperation(unsigned int uOper, unsigned int uParam, int nParam);
  // �������صĲ�����uOper��ȡֵ���� GAME_TEAM_OPERATION_INDEX
  int TeamOperation(unsigned int uOper, unsigned int uParam, int nParam);

  int PAIOperation(unsigned int uOper, unsigned int uParam, int nParam,
                   int nParam1);

  int GetGameData(unsigned int uDataId, unsigned int uParam, int nParam);

  void DrawGameObj(unsigned int uObjGenre, unsigned int uId, int x, int y,
                   int Width, int Height, int nParam);
  int SceneMapFindPosOperation(unsigned int uOper, unsigned int uParam,
                               int nParam, bool bCalc, bool bLine);
  BOOL GetPaintFindPos();
  void SetPaintFindPos(BOOL nIndex);
  void SetAutoMove(BOOL nIndex);
  void DrawGameSpace();
  DWORD GetPing();
  // void SendPing();
  int SetCallDataChangedNofify(IClientCallback *pNotifyFunc);
  void NetMsgCallbackFunc(void *pMsgData);
  void SetRepresentShell(struct iRepresentShell *pRepresent);
  void SetMusicInterface(void *pMusicInterface);
  void SetRepresentAreaSize(int nWidth, int nHeight);
  int Breathe();
  void Release(); // �ͷŽӿڶ���
  void SetClient(LPVOID pClient);
  void SendNewDataToServer(void *pData, int nLength);
  int GetTongFigure();
  BOOL GetAutoFlag();
  BOOL GetFightFlag();
  void SetActiveAutoPlay(BOOL nActive = FALSE);
  void SetMoveMap(int nType, int nPos, int nValue);
  void SetSortItem(int nType, int nPos, int nValue);
  int FindSkillInfo(int nType, int nIndex);
  void GetSkillName(int nSkillId, char *szSkillName);
};

static KCoreShell g_CoreShell;

CORE_API void g_InitCore();
#ifndef _STANDALONE
extern "C" __declspec(dllexport)
#endif
iCoreShell *
CoreGetShell() {
  g_InitCore();
  return &g_CoreShell;
}

//--------------------------------------------------------------------------
//	���ܣ�������Ϸ�������ݸı��֪ͨ����
//	���أ���δ��ע��֪ͨ��������ֱ�ӷ���0�����򷵻�֪ͨ����ִ�н����
//--------------------------------------------------------------------------
void CoreDataChanged(unsigned int uDataId, unsigned int uParam, int nParam) {
  if (l_pDataChangedNotifyFunc)
    l_pDataChangedNotifyFunc->CoreDataChanged(uDataId, uParam, nParam);
}

void KCoreShell::Release() { g_ReleaseCore(); }
int KCoreShell::GetTongFigure() {
  return Player[CLIENT_PLAYER_INDEX].m_cTong.GetFigure();
}
//--------------------------------------------------------------------------
//	���ܣ���������ɴ���������Ϣ
//--------------------------------------------------------------------------
void KCoreShell::NetMsgCallbackFunc(void *pMsgData) {
  g_ProtocolProcess.ProcessNetMsg((BYTE *)pMsgData);
}
//--------------------------------------------------------------------------
//	���ܣ�������Ϸ�������ݸı��֪ͨ����
//	������fnCoreDataChangedCallback pNotifyFunc --> ֪ͨ������ָ�롣
//	���أ�����ֵΪ��0ֵ��ʾע��ɹ��������ʾʧ�ܡ�
//--------------------------------------------------------------------------
int KCoreShell::SetCallDataChangedNofify(IClientCallback *pNotifyFunc) {
  l_pDataChangedNotifyFunc = pNotifyFunc;
  return true;
}

//--------------------------------------------------------------------------
//	���ܣ�����Ϸ�����ȡ����
//	������unsigned int uDataId -->
//��ʾ��ȡ��Ϸ���ݵ�������������������ֵΪ÷������ 							GAMEDATA_INDEX��ȡֵ֮һ��
//		  unsigned int uParam  --> ����uDataId��ȡֵ�������
//		  int nParam --> ����uDataId��ȡֵ�������
//	���أ�����uDataId��ȡֵ���������
//--------------------------------------------------------------------------
int KCoreShell::GetGameData(unsigned int uDataId, unsigned int uParam,
                            int nParam) {
  int nRet = 0;
  switch (uDataId) {

  case GDI_ITEMDATAINFO: {
    if (uParam <= 0 || uParam >= MAX_ITEM)
      nRet = -1;
    else if (nParam == 1)
      nRet = Item[uParam].m_SpecialParam.uItemType;
    else if (nParam == 2)
      nRet = Item[uParam].GetGenre();
    else if (nParam == 3)
      nRet = Item[uParam].IsStack();
    else if (nParam == 4)
      nRet = Item[uParam].GetVersion();
    else if (nParam == 5)
      nRet = Item[uParam].GetNgoaiTrang() / 1000000;
    else
      nRet = -1;
  } break;
  case GDI_PLAYER_IS_MALE: {
    int nIndex = 0;
    if (nParam == 0)
      nIndex = Player[CLIENT_PLAYER_INDEX].m_nIndex;
    else
      nIndex = NpcSet.SearchID(nParam);

    if (nIndex)
      nRet = (Npc[nIndex].m_NpcSettingIdx == PLAYER_MALE_NPCTEMPLATEID);
    else
      nRet = 1; // ����ʱ������
  } break;
  case GDI_REPAIR_ITEM_PRICE:
    if (uParam) {
      KUiObjAtContRegion *pObj = (KUiObjAtContRegion *)uParam;
      KItem *pItem = NULL;

      switch (pObj->Obj.uGenre) {
      case CGOG_ITEM: {
        if (pObj->Obj.uId > 0) {
          pItem = &Item[pObj->Obj.uId];
        }
      } break;
      default:
        break;
      }

      if (!pItem)
        break;

      KUiItemBuySelInfo *pInfo = (KUiItemBuySelInfo *)nParam;

      if (pObj->eContainer == UOC_NPC_SHOP)
        break;
      pInfo->nPrice = pItem->GetRepairPrice();
      strcpy(pInfo->szItemName, pItem->GetName());
      nRet = pItem->CanBeRepaired();
    } else {
      nParam = 0;
      nRet = 0;
    }
    break;
  case GDI_TRADE_ITEM_PRICE:
    if (uParam) {
      KUiObjAtContRegion *pObj = (KUiObjAtContRegion *)uParam;
      KItem *pItem = NULL;

      switch (pObj->Obj.uGenre) {
      case CGOG_ITEM: {
        if (pObj->Obj.uId > 0) {
          pItem = &Item[pObj->Obj.uId];
        }
      } break;
      case CGOG_NPCSELLITEM: {
        int nBuyIdx = Player[CLIENT_PLAYER_INDEX].m_BuyInfo.m_nBuyIdx;
        if (nBuyIdx != -1) {
          int nIndex = BuySell.GetItemIndex(nBuyIdx, pObj->Obj.uId);
          if (nIndex >= 0)
            pItem = BuySell.GetItem(nIndex);
        }
      } break;
      default:
        break;
      }

      if (!pItem)
        break;

      KUiItemBuySelInfo *pInfo = (KUiItemBuySelInfo *)nParam;

      if (pObj->eContainer == UOC_NPC_SHOP)
        pInfo->nPrice = pItem->GetPrice();
      else
        pInfo->nPrice = pItem->GetPrice() / BUY_SELL_SCALE;
      strcpy(pInfo->szItemName, pItem->GetName());

      if (pItem->GetGenre() != item_task) {
        nRet = 1;
      } else {
        nRet = 2;
      }
    } else {
      nParam = 0;
      nRet = 0;
    }
    break;

  case GDI_SHOP_ITEM_PRICE:
    if (uParam) {
      KUiObjAtContRegion *pObj = (KUiObjAtContRegion *)uParam;
      KItem *pItem = NULL;

      switch (pObj->Obj.uGenre) {
      case CGOG_ITEM: {
        if (pObj->Obj.uId > 0) {
          pItem = &Item[pObj->Obj.uId];
        }
      } break;
      default:
        break;
      }

      if (!pItem)
        break;

      KUiItemBuySelInfo *pInfo = (KUiItemBuySelInfo *)nParam;

      pInfo->nPrice = pItem->m_nPriceShop;

      strcpy(pInfo->szItemName, pItem->GetName());

      nRet = 1;

    } else {
      nParam = 0;
      nRet = 0;
    }
    break;

  case GDI_SHOP_ITEM_PRICE_GOLD:

    if (uParam) {
      KUiObjAtContRegion *pObj = (KUiObjAtContRegion *)uParam;
      KItem *pItem = NULL;

      switch (pObj->Obj.uGenre) {
      case CGOG_ITEM: {
        if (pObj->Obj.uId > 0) {
          pItem = &Item[pObj->Obj.uId];
        }
      } break;
      case CGOG_NPCSELLITEM: {
        int nBuyIdx = Player[CLIENT_PLAYER_INDEX].m_BuyInfo.m_nBuyIdx;
        if (nBuyIdx != -1) {
          int nIndex = BuySell.GetItemIndex(nBuyIdx, pObj->Obj.uId);
          if (nIndex >= 0)
            pItem = BuySell.GetItem(nIndex);
        }
      } break;
      default:
        break;
      }

      if (!pItem)
        break;

      KUiItemBuySelInfo *pInfo = (KUiItemBuySelInfo *)nParam;

      pInfo->nPrice = pItem->m_nPriceGold;

      strcpy(pInfo->szItemName, pItem->GetName());

      nRet = 1;

    } else {
      nParam = 0;
      nRet = 0;
    }
    break;

  case GDI_SHOP_ITEM_PRICE_TL:

    if (uParam) {
      KUiObjAtContRegion *pObj = (KUiObjAtContRegion *)uParam;
      KItem *pItem = NULL;

      switch (pObj->Obj.uGenre) {
      case CGOG_ITEM: {
        if (pObj->Obj.uId > 0) {
          pItem = &Item[pObj->Obj.uId];
        }
      } break;
      case CGOG_NPCSELLITEM: {
        int nBuyIdx = Player[CLIENT_PLAYER_INDEX].m_BuyInfo.m_nBuyIdx;
        if (nBuyIdx != -1) {
          int nIndex = BuySell.GetItemIndex(nBuyIdx, pObj->Obj.uId);
          if (nIndex >= 0)
            pItem = BuySell.GetItem(nIndex);
        }
      } break;
      default:
        break;
      }

      if (!pItem)
        break;

      KUiItemBuySelInfo *pInfo = (KUiItemBuySelInfo *)nParam;

      pInfo->nPrice = pItem->m_nPriceTL;

      strcpy(pInfo->szItemName, pItem->GetName());

      nRet = 1;

    } else {
      nParam = 0;
      nRet = 0;
    }
    break;

  case GDI_SHOP_ITEM_PRICE_VD:

    if (uParam) {
      KUiObjAtContRegion *pObj = (KUiObjAtContRegion *)uParam;
      KItem *pItem = NULL;

      switch (pObj->Obj.uGenre) {
      case CGOG_ITEM: {
        if (pObj->Obj.uId > 0) {
          pItem = &Item[pObj->Obj.uId];
        }
      } break;
      case CGOG_NPCSELLITEM: {
        int nBuyIdx = Player[CLIENT_PLAYER_INDEX].m_BuyInfo.m_nBuyIdx;
        if (nBuyIdx != -1) {
          int nIndex = BuySell.GetItemIndex(nBuyIdx, pObj->Obj.uId);
          if (nIndex >= 0)
            pItem = BuySell.GetItem(nIndex);
        }
      } break;
      default:
        break;
      }

      if (!pItem)
        break;

      KUiItemBuySelInfo *pInfo = (KUiItemBuySelInfo *)nParam;

      pInfo->nPrice = pItem->m_nPriceVD;

      strcpy(pInfo->szItemName, pItem->GetName());

      nRet = 1;

    } else {
      nParam = 0;
      nRet = 0;
    }
    break;

  // ��Ϸ��������˵���ı���
  // uParam = (KUiGameObject*) ������Ϸ����Ľṹ���ݵ�ָ��
  // nParam = (char*) ָ��һ����������ָ�룬��ռ䲻����256�ֽڡ�
  case GDI_GAME_OBJ_DESC_INCLUDE_REPAIRINFO:
  case GDI_GAME_OBJ_DESC_INCLUDE_TRADEINFO:
    if (nParam && uParam) {
      KUiObjAtContRegion *pObj = (KUiObjAtContRegion *)uParam;
      char *pszDescript = (char *)nParam;
      pszDescript[0] = 0;
      switch (pObj->Obj.uGenre) {
      case CGOG_ITEM: {
        if (pObj->eContainer == UOC_EQUIPTMENT) {
          int nActive =
              Player[CLIENT_PLAYER_INDEX].m_ItemList.GetActiveAttribNum(
                  pObj->Obj.uId);
          Item[pObj->Obj.uId].GetDesc(pszDescript, true, BUY_SELL_SCALE,
                                      nActive, true);
        } else
          Item[pObj->Obj.uId].GetDesc(pszDescript, true, BUY_SELL_SCALE);
      } break;
      case CGOG_NPCSELLITEM: {
        int nIdx = -1;
        if (-1 == Player[CLIENT_PLAYER_INDEX].m_BuyInfo.m_nBuyIdx)
          break;
        nIdx = BuySell.GetItemIndex(
            Player[CLIENT_PLAYER_INDEX].m_BuyInfo.m_nBuyIdx, pObj->Obj.uId);

        KItem *pItem = NULL;
        if (nIdx < 0)
          break;
        pItem = BuySell.GetItem(nIdx);

        if (!pItem)
          break;
        pItem->GetDesc(pszDescript, true);
      } break;
      }
    }
    break;
  case GDI_GAME_OBJ_DESC:
    if (nParam && uParam) {
      KUiObjAtContRegion *pObj = (KUiObjAtContRegion *)uParam;
      char *pszDescript = (char *)nParam;
      pszDescript[0] = 0;
      switch (pObj->Obj.uGenre) {
      case CGOG_ITEM: {
        if (pObj->eContainer == UOC_EQUIPTMENT) {
          int nActive =
              Player[CLIENT_PLAYER_INDEX].m_ItemList.GetActiveAttribNum(
                  pObj->Obj.uId);
          Item[pObj->Obj.uId].GetDesc(pszDescript, false, 1, nActive, true);
        } else
          Item[pObj->Obj.uId].GetDesc(pszDescript);
      } break;
      case CGOG_SKILL:
      case CGOG_SKILL_FIGHT:
      case CGOG_SKILL_LIVE:
      case CGOG_SKILL_SHORTCUT: {
        int nLevel =
            Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_SkillList.GetLevel(
                pObj->Obj.uId);
        int nCurrentLevel = Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex]
                                .m_SkillList.GetCurrentLevel(pObj->Obj.uId);
        _ASSERT(nLevel >= 0);
        if (pObj->Obj.uId > 0) {

          ISkill *pISkill = g_SkillManager.GetSkill(pObj->Obj.uId, 1);
          if (!pISkill)
            break;
          eSkillStyle eStyle = (eSkillStyle)pISkill->GetSkillStyle();

          switch (eStyle) {
          case SKILL_SS_Missles: //	�ӵ���		���������ڷ����ӵ���
          case SKILL_SS_Melee:
          case SKILL_SS_InitiativeNpcState: //	������
                                            //���������ڸı䵱ǰNpc������״̬
          case SKILL_SS_PassivityNpcState:  //	������
                                            //���������ڸı�Npc�ı���״̬
          {
            KSkill::GetDesc(pObj->Obj.uId, nLevel, nCurrentLevel, pszDescript,
                            Player[CLIENT_PLAYER_INDEX].m_nIndex,
                            (pObj->Obj.uGenre == CGOG_SKILL_SHORTCUT) ? false
                                                                      : true);
          } break;

          case SKILL_SS_Thief: {
            ((KThiefSkill *)pISkill)
                ->GetDesc(pObj->Obj.uId, nLevel, nCurrentLevel, pszDescript,
                          Player[CLIENT_PLAYER_INDEX].m_nIndex,
                          (pObj->Obj.uGenre == CGOG_SKILL_SHORTCUT) ? false
                                                                    : true);

          } break;
          }
        }

      } break;

      case CGOG_PLAYER_FACE:
        break;
      case CGOG_NPCSELLITEM: {
        int nIdx = -1;
        if (-1 == Player[CLIENT_PLAYER_INDEX].m_BuyInfo.m_nBuyIdx)
          break;
        nIdx = BuySell.GetItemIndex(
            Player[CLIENT_PLAYER_INDEX].m_BuyInfo.m_nBuyIdx, pObj->Obj.uId);

        KItem *pItem = NULL;
        if (nIdx < 0)
          break;
        pItem = BuySell.GetItem(nIdx);

        if (!pItem)
          break;
        pItem->GetDesc(pszDescript);
      } break;
      }
    }
    break;
  // ���ǵ�һЩ���ױ������
  // uParam = (KUiPlayerBaseInfo*)pInfo
  case GDI_PLAYER_BASE_INFO:
    if (uParam) {
      KUiPlayerBaseInfo *pInfo = (KUiPlayerBaseInfo *)uParam;
      int nIndex = 0;
      if (nParam == 0) {
        nIndex = Player[CLIENT_PLAYER_INDEX].m_nIndex;
        pInfo->nCurFaction =
            Player[CLIENT_PLAYER_INDEX].m_cFaction.m_nCurFaction;
        pInfo->nCurTong = Player[CLIENT_PLAYER_INDEX].m_cTong.GetTongNameID();
      } else {
        nIndex = NpcSet.SearchID(nParam);
        pInfo->nCurFaction = -1;
        pInfo->nCurTong = 0;

        if (nIndex) {
          pInfo->nRepute = Npc[nIndex].m_Task100;
          pInfo->nPk = Npc[nIndex].m_PKValue;
          pInfo->nPd = Npc[nIndex].m_Task162;
          pInfo->nXh = Npc[nIndex].m_WorldStat;
          pInfo->nCs = Npc[nIndex].m_Task139;
        }
      }
      if (nIndex) {
        strcpy(pInfo->Name, Npc[nIndex].Name);
        // to do:no implements in this version
        pInfo->Agname[0] = 0;
        pInfo->Title[0] = 0;
        if (Npc[nIndex].m_btRankId) {
          char szRankId[5];
          itoa(Npc[nIndex].m_btRankId, szRankId, 10);
          g_RankTabSetting.GetString(szRankId, "RANKSTR", "", pInfo->Title, 32);
        }
        pInfo->nRankInWorld = Player[CLIENT_PLAYER_INDEX].m_nWorldStat;

        pInfo->bBlock = Player[CLIENT_PLAYER_INDEX].m_bBlock;
        pInfo->nNumImg = Npc[nIndex].m_ImagePlayer; // Chan dung
      }
    }
    break;

  // ���ǵ�һЩ�ױ������
  // uParam = (KUiPlayerRuntimeInfo*)pInfo
  case GDI_PLAYER_RT_INFO:
    if (uParam) {
      KUiPlayerRuntimeInfo *pInfo = (KUiPlayerRuntimeInfo *)uParam;
      pInfo->nLifeFull = Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex]
                             .m_CurrentLifeMax; // ������ֵ
      pInfo->nLife =
          Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_CurrentLife; // ����
      pInfo->nManaFull = Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex]
                             .m_CurrentManaMax; // ������ֵ
      pInfo->nMana =
          Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_CurrentMana; // ����
      pInfo->nStaminaFull = Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex]
                                .m_CurrentStaminaMax; // ������ֵ
      pInfo->nStamina =
          Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_CurrentStamina; // ����

      pInfo->nAngryFull = 0; // ŭ��ֵ
      pInfo->nAngry = 0;     // ŭ

      pInfo->nExperienceFull =
          Player[CLIENT_PLAYER_INDEX].m_nNextLevelExp;         // ������ֵ
      pInfo->nExperience = Player[CLIENT_PLAYER_INDEX].m_nExp; // ����
      pInfo->nCurLevelExperience = Player[CLIENT_PLAYER_INDEX].m_nNextLevelExp;

      pInfo->byActionDisable = 0;
      // to do	��pInfo->bActionDisable��������ʵ�ֵ

      pInfo->byAction = PA_NONE;

      if (Player[CLIENT_PLAYER_INDEX].m_RunStatus)
        pInfo->byAction |= PA_RUN;

      if (Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_Doing == do_sit)
        pInfo->byAction |= PA_SIT;
      pInfo->wReserved = 0;
    }
    break;

  // ���ǵ�һЩ�ױ����������
  // uParam = (KUiPlayerAttribute*)pInfo
  case GDI_PLAYER_RT_ATTRIBUTE:
    if (uParam) {
      KUiPlayerAttribute *pInfo = (KUiPlayerAttribute *)uParam;
      KNpc *pNpc = &Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex];
      pInfo->nMoney = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetMoney(
          room_equipment); // ����
      pInfo->nBARemainPoint =
          Player[CLIENT_PLAYER_INDEX].m_nAttributePoint; // ��������ʣ�����
      pInfo->nStrength = Player[CLIENT_PLAYER_INDEX].m_nCurStrength;   // ����
      pInfo->nDexterity = Player[CLIENT_PLAYER_INDEX].m_nCurDexterity; // ����
      pInfo->nVitality = Player[CLIENT_PLAYER_INDEX].m_nCurVitality;   // ����
      pInfo->nEnergy = Player[CLIENT_PLAYER_INDEX].m_nCurEngergy;      // ����
      pInfo->nPk = Player[CLIENT_PLAYER_INDEX].m_cPK.GetPKValue();
      pInfo->nRepute = Player[CLIENT_PLAYER_INDEX].m_cTask.GetSaveVal(100);
      pInfo->nPd = Player[CLIENT_PLAYER_INDEX].m_cTask.GetSaveVal(162);
      pInfo->nXh = Player[CLIENT_PLAYER_INDEX].m_nWorldStat;
      pInfo->nCs = Player[CLIENT_PLAYER_INDEX].m_cTask.GetSaveVal(139);

      Player[CLIENT_PLAYER_INDEX].GetEchoDamage(
          &pInfo->nKillMIN, &pInfo->nKillMAX, 0); // �����Сɱ����
      Player[CLIENT_PLAYER_INDEX].GetEchoDamage(&pInfo->nRightKillMin,
                                                &pInfo->nRightKillMax, 1);

      Player[CLIENT_PLAYER_INDEX].GetEchoAttack(&pInfo->nAttack, 0);
      Player[CLIENT_PLAYER_INDEX].GetEchoAttack(&pInfo->nAttackR, 1);

      pInfo->nDefence = pNpc->m_CurrentDefend;          // ������
      pInfo->nMoveSpeed = pNpc->m_CurrentRunSpeed;      // �ƶ��ٶ�
      pInfo->nAttackSpeed = pNpc->m_CurrentAttackSpeed; // �����ٶ�
      // �������

      pInfo->nCastSpeed = pNpc->m_CurrentCastSpeed;

      int nResistMaxCS = 0;
      nResistMaxCS += Player[CLIENT_PLAYER_INDEX].m_cTask.GetSaveVal(139) * 2;

      if ((pNpc->m_CurrentPhysicsResistMax + nResistMaxCS) >=
          pNpc->m_CurrentPhysicsResist)
        pInfo->nPhyDef = pNpc->m_CurrentPhysicsResist;
      else
        pInfo->nPhyDef = pNpc->m_CurrentPhysicsResistMax + nResistMaxCS;

      if ((pNpc->m_CurrentColdResistMax + nResistMaxCS) >=
          pNpc->m_CurrentColdResist)
        pInfo->nCoolDef = pNpc->m_CurrentColdResist;
      else
        pInfo->nCoolDef = pNpc->m_CurrentColdResistMax + nResistMaxCS;

      if ((pNpc->m_CurrentLightResistMax + nResistMaxCS) >=
          pNpc->m_CurrentLightResist)
        pInfo->nLightDef = pNpc->m_CurrentLightResist;
      else
        pInfo->nLightDef = pNpc->m_CurrentLightResistMax + nResistMaxCS;

      if ((pNpc->m_CurrentFireResistMax + nResistMaxCS) >=
          pNpc->m_CurrentFireResist)
        pInfo->nFireDef = pNpc->m_CurrentFireResist;
      else
        pInfo->nFireDef = pNpc->m_CurrentFireResistMax + nResistMaxCS;

      if ((pNpc->m_CurrentPoisonResistMax + nResistMaxCS) >=
          pNpc->m_CurrentPoisonResist)
        pInfo->nPoisonDef = pNpc->m_CurrentPoisonResist;
      else
        pInfo->nPoisonDef = pNpc->m_CurrentPoisonResistMax + nResistMaxCS;

      pInfo->nLevel = pNpc->m_Level;

      // �������״̬��ʾ ״̬���� not end ��Ӧ����״̬��Ӧ������������ spe
      memset(pInfo->StatusDesc, 0, sizeof(pInfo->StatusDesc));
      switch (pNpc->m_Series) {
      case series_water:
        strcpy(pInfo->StatusDesc, "H� Th�y");
        break;
      case series_wood:
        strcpy(pInfo->StatusDesc, "H� M�c");
        break;
      case series_metal:
        strcpy(pInfo->StatusDesc, "H� Kim");
        break;
      case series_fire:
        strcpy(pInfo->StatusDesc, "H� H�a");
        break;
      case series_earth:
        strcpy(pInfo->StatusDesc, "H� Th� ");
        break;
      }
    }
    break;

  // ���ǵ�����ʹ����Ʒ���书
  // uParam = (KUiPlayerImmedItemSkill*)pInfo
  case GDI_PLAYER_IMMED_ITEMSKILL:
    if (uParam) {
      KUiPlayerImmedItemSkill *pInfo = (KUiPlayerImmedItemSkill *)uParam;
      memset(pInfo, 0, sizeof(KUiPlayerImmedItemSkill));
      pInfo->IMmediaSkill[0].uGenre = CGOG_SKILL_SHORTCUT;
      pInfo->IMmediaSkill[0].uId = Player[CLIENT_PLAYER_INDEX].GetLeftSkill();
      pInfo->IMmediaSkill[1].uGenre = CGOG_SKILL_SHORTCUT;
      pInfo->IMmediaSkill[1].uId = Player[CLIENT_PLAYER_INDEX].GetRightSkill();

      for (int i = 0; i < MAX_IMMEDIACY_ITEM; i++) {
        pInfo->ImmediaItem[i].uId = Player[CLIENT_PLAYER_INDEX]
                                        .m_ItemList.m_Room[room_immediacy]
                                        .FindItem(i, 0);
        if (pInfo->ImmediaItem[i].uId > 0) {
          pInfo->ImmediaItem[i].uGenre = CGOG_ITEM;
        } else {
          pInfo->ImmediaItem[i].uGenre = CGOG_NOTHING;
        }
      }
    }
    break;

  // ��������Я����Ǯ
  // nRet = ��������Я����Ǯ
  case GDI_PLAYER_HOLD_MONEY:
    nRet = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetMoney(room_equipment);
    break;
    // ��������Я������Ʒ��
    // uParam = (KUiObjAtRegion*) pInfo ->
    // KUiObjAtRegion�ṹ�����ָ�룬KUiObjAtRegion
    //				�ṹ���ڴ洢��Ʒ�����书�����ݼ����������λ����Ϣ��
    // nParam = pInfo�����а���KUiObjAtRegion�ṹ����Ŀ
    // Return =
    // �������ֵС�ڵ��ڴ������nParam����ֵ��ʾpInfo�����е�ǰ���ٸ�KUiObjAtRegion
    //			�ṹ���������Ч�����ݣ������ʾ��Ҫ����������ٸ�KUiObjAtRegion�ṹ������
    //			�Ź��洢ȫ��������Я������Ʒ��Ϣ��

    // flying�����һ���Ƿ�������������������ʵ�֣�gg����һ�ޣ�mm���KFCŶ

  case GDI_PLAYER_HOLD_GOLD:
    nRet = Player[CLIENT_PLAYER_INDEX].m_cTask.GetSaveVal(99);
    break;

  case GDI_PLAYER_HOLD_TL:
    nRet = Player[CLIENT_PLAYER_INDEX].m_cTask.GetSaveVal(15);
    break;

  case GDI_PLAYER_HOLD_VD:
    nRet = Player[CLIENT_PLAYER_INDEX].m_cTask.GetSaveVal(124);
    break;

  case GDI_PLAYER_BLOCK_BOX:
    nRet = Player[CLIENT_PLAYER_INDEX].m_bBlock;
    break;

  case GDI_PLAYER_CAN_RIDE:
    // ʵ�ַ�֧�Ĵ������������
    break;

  case GDI_ITEM_TAKEN_WITH:
    nRet = 0;
    if (uParam) {
      int nCount = 0;
      KUiObjAtRegion *pInfo = (KUiObjAtRegion *)uParam;
      PlayerItem *pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetFirstItem();
      if (pItem && pItem->nPlace == pos_equiproom) {
        pInfo->Obj.uGenre = CGOG_ITEM;
        pInfo->Obj.uId = pItem->nIdx;
        pInfo->Region.h = pItem->nX;
        pInfo->Region.v = pItem->nY;
        pInfo->Region.Width = Item[pItem->nIdx].GetWidth();
        pInfo->Region.Height = Item[pItem->nIdx].GetHeight();

        nCount++;
        pInfo++;
      }
      while (pItem) {
        pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetNextItem();
        if (pItem && pItem->nPlace == pos_equiproom) {
          pInfo->Obj.uGenre = CGOG_ITEM;
          pInfo->Obj.uId = pItem->nIdx;
          pInfo->Region.h = pItem->nX;
          pInfo->Region.v = pItem->nY;
          pInfo->Region.Width = Item[pItem->nIdx].GetWidth();
          pInfo->Region.Height = Item[pItem->nIdx].GetHeight();
          nCount++;
          pInfo++;
        }
        if (nCount > nParam)
          break;
      }
      nRet = nCount;
    } else {
      int nCount = 0;
      PlayerItem *pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetFirstItem();
      if (pItem && pItem->nPlace == pos_equiproom)
        nCount++;
      while (pItem) {
        pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetNextItem();
        if (pItem && pItem->nPlace == pos_equiproom)
          nCount++;
      }
      nRet = nCount;
    }
    break;

  // ����װ����Ʒ
  // uParam = (KUiObjAtRegion*)pInfo ->
  // ����10��Ԫ�ص�KUiObjAtRegion�ṹ����ָ�룬
  //			KUiObjAtRegion�ṹ���ڴ洢װ�������ݺͷ���λ����Ϣ��
  //			KUiObjAtRegion::Region::h ��ʾ���ڵڼ���װ��
  //			KUiObjAtRegion::Region::v
  //��ʾ�����ĸ�λ�õ�װ��,��ֵΪ÷������
  //			UI_EQUIPMENT_POSITION��ȡֵ֮һ����ο�UI_EQUIPMENT_POSITION��ע�͡�
  // nParam =	Ҫ��ȡ���ǵڼ���װ����Ϣ
  // Return =
  // ��ֵ��ʾpInfo�����е�ǰ���ٸ�KUiObjAtRegion�ṹ���������Ч�����ݡ�
  case GDI_EQUIPMENT:
    nRet = 0;
    if (uParam) {
      // TODO����ʱû�����ڶ���װ��
      if (nParam == 1)
        break;

      int PartConvert[itempart_num] = {
          UIEP_HEAD,     UIEP_BODY,        UIEP_WAIST, UIEP_HAND,
          UIEP_FOOT,     UIEP_FINESSE,     UIEP_NECK,  UIEP_FINGER1,
          UIEP_FINGER2,  UIEP_WAIST_DECOR, UIEP_HORSE, UIEP_MASK, // mat na
          UIEP_PHIPHONG,
      };

      int nCount = 0;
      KUiObjAtRegion *pInfo = (KUiObjAtRegion *)uParam;

      for (int i = 0; i < itempart_num; i++) {
        pInfo->Obj.uId = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetEquipment(i);
        if (pInfo->Obj.uId) {
          pInfo->Obj.uGenre = CGOG_ITEM;

          pInfo->Region.Width = Item[pInfo->Obj.uId].GetWidth();
          pInfo->Region.Height = Item[pInfo->Obj.uId].GetHeight();
          pInfo->Region.h = 0;
          pInfo->Region.v = PartConvert[i];
        } else {
          pInfo->Obj.uGenre = CGOG_NOTHING;
        }
        nCount++;
        pInfo++;
      }
      nRet = nCount;
    }
    break;

  case GDI_ITEM_IN_PG_BOX:
    nRet = 0;
    if (uParam) {

      if (nParam == 1)
        break;

      int nCount = 0;
      KUiObjAtRegion *pInfo = (KUiObjAtRegion *)uParam;

      for (int i = 0; i < MAX_PGBOX_ITEM; i++) {
        pInfo->Obj.uId = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetItemPGBox(i);
        if (pInfo->Obj.uId) {
          pInfo->Obj.uGenre = CGOG_ITEM;

          pInfo->Region.Width = Item[pInfo->Obj.uId].GetWidth();
          pInfo->Region.Height = Item[pInfo->Obj.uId].GetHeight();
          pInfo->Region.h = 0;
          pInfo->Region.v = i;
        } else {
          pInfo->Obj.uGenre = CGOG_NOTHING;
        }
        nCount++;
        pInfo++;
      }
      nRet = nCount;
    }
    break;

  case GDI_PARADE_EQUIPMENT:
    nRet = 0;
    if (uParam) {
      // TODO����ʱû�����ڶ���װ��
      if (nParam == 1)
        break;

      int PartConvert[itempart_num] = {
          UIEP_HEAD,     UIEP_BODY,        UIEP_WAIST, UIEP_HAND,
          UIEP_FOOT,     UIEP_FINESSE,     UIEP_NECK,  UIEP_FINGER1,
          UIEP_FINGER2,  UIEP_WAIST_DECOR, UIEP_HORSE, UIEP_MASK, // mat na
          UIEP_PHIPHONG,
      };

      int nCount = 0;
      KUiObjAtRegion *pInfo = (KUiObjAtRegion *)uParam;

      for (int i = 0; i < itempart_num; i++) {
        pInfo->Obj.uId = g_cViewItem.m_sItem[i].nIdx;
        if (pInfo->Obj.uId) {
          pInfo->Obj.uGenre = CGOG_ITEM;

          pInfo->Region.Width = Item[pInfo->Obj.uId].GetWidth();
          pInfo->Region.Height = Item[pInfo->Obj.uId].GetHeight();
          pInfo->Region.h = 0;
          pInfo->Region.v = PartConvert[i];
        } else {
          pInfo->Obj.uGenre = CGOG_NOTHING;
        }
        nCount++;
        pInfo++;
      }
      nRet = nCount;
    }
    break;

  // ���ײ�����ص�����
  // uParam = (UI_TRADE_OPER_DATA)eOper ���庬���UI_TRADE_OPER_DATA
  // nParam ����Ӧ���뺬����uParam��ȡֵ״������,��UI_TRADE_OPER_DATA��˵��
  // Return ���庬����uParam��ȡֵ״������,��UI_TRADE_OPER_DATA��˵��
  // ���ǵ����������
  case GDI_TRADE_OPER_DATA:
    if (uParam == UTOD_IS_LOCKED)
      nRet = Player[CLIENT_PLAYER_INDEX].m_cTrade.m_nTradeLock;
    else if (uParam == UTOD_IS_TRADING)
      nRet = Player[CLIENT_PLAYER_INDEX].m_cTrade.m_nTradeState;
    else if (uParam == UTOD_IS_OTHER_LOCKED)
      nRet = Player[CLIENT_PLAYER_INDEX].m_cTrade.m_nTradeDestLock;
    else if (uParam == UTOD_IS_WILLING) {
      nRet = (Player[CLIENT_PLAYER_INDEX].m_cMenuState.m_nState ==
              PLAYER_MENU_STATE_TRADEOPEN);
    }
    break;

  // uParam = (KUiPlayerLiveSkillBase*) pInfo -> ���ǵ����������
  case GDI_LIVE_SKILL_BASE:
    if (uParam) {
      KUiPlayerLiveSkillBase *pInfo = (KUiPlayerLiveSkillBase *)uParam;
      // to do:no implements in this version;
      pInfo->nLiveExperience = 0;
      pInfo->nRemainPoint = 0;
      pInfo->nLiveExperienceFull = 0;
      memset(pInfo, 0, sizeof(KUiPlayerLiveSkillBase));
    }
    break;

  // �������յĸ��������
  // uParam = (unsigned int*) pSkills -> ����10��unsigned
  // int���������ڴ洢��������ܵ�id��
  case GDI_LIVE_SKILLS:
    if (uParam) {
      // to do:no implements in this version;
      KUiSkillData *pInfo = (KUiSkillData *)uParam;
      memset(pInfo, 0, sizeof(KUiSkillData) * 10);
    }
    break;

  // ʣ��ս�����ܵ���
  // Return = ʣ��ս�����ܵ���
  case GDI_FIGHT_SKILL_POINT:
    // to do:no implements in this version;
    nRet = Player[CLIENT_PLAYER_INDEX].m_nSkillPoint;
    break;

  // �������յĸ���ս������
  // uParam = (unsigned int*) pSkills -> ����30��unsigned
  // int���������ڴ洢����ս�����ܵ�id��
  case GDI_FIGHT_SKILLS:
    if (uParam) {
      KUiSkillData *pSkills = (KUiSkillData *)uParam;
      Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_SkillList.GetSkillSortList(
          pSkills);
    }
    break;
  // ��ʾ��������б�
  // uParam = (KUiSkillData*) pSkills ->
  // ����65��KUiSkillData���������ڴ洢�����ܵ����ݡ�
  //								KUiSkillData::nLevel��������������ʾ�ڵڼ���
  // Return = ������Ч���ݵ�Skills����Ŀ
  case GDI_LEFT_ENABLE_SKILLS: {
    KUiSkillData *pSkills = (KUiSkillData *)uParam;
    int nCount = Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex]
                     .m_SkillList.GetLeftSkillSortList(pSkills);
    return nCount;

  } break;
  // ��ʾ�Ҽ������б�
  // uParam = (KUiSkillData*) pSkills ->
  // ����65��KUiSkillData���������ڴ洢�����ܵ����ݡ�
  //								KUiSkillData::nLevel��������������ʾ�ڵڼ���
  // Return = ������Ч���ݵ�Skills����Ŀ
  case GDI_RIGHT_ENABLE_SKILLS: {
    KUiSkillData *pSkills = (KUiSkillData *)uParam;
    int nCount = Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex]
                     .m_SkillList.GetRightSkillSortList(pSkills);
    return nCount;
  } break;
  // ���ǵ��Դ��书
  // uParam = (unsigned int*) pSkills -> ����5��unsigned
  // int���������ڴ洢�����Դ��书��id��
  case GDI_CUSTOM_SKILLS:
    if (uParam) {
      // to do: no implements in this version;
      KUiSkillData *pSkills = (KUiSkillData *)uParam;
      memset(pSkills, 0, sizeof(KUiSkillData) * 5);
    }
    break;
  // ��ȡ��Χ��ҵ��б�
  // uParam = (KUiPlayerItem*)pList -> ��Ա��Ϣ�б�
  //			KUiPlayerItem::nData = 0
  // nParam = pList�����а���KUiPlayerItem�ṹ����Ŀ
  // Return =
  // �������ֵС�ڵ��ڴ������nParam����ֵ��ʾpList�����е�ǰ���ٸ�KUiPlayerItem
  //			�ṹ���������Ч�����ݣ������ʾ��Ҫ����������ٸ�KUiPlayerItem�ṹ������
  //			�Ź��洢ȫ����Ա��Ϣ��
  case GDI_NEARBY_PLAYER_LIST:
    nRet = NpcSet.GetAroundPlayer((KUiPlayerItem *)uParam, nParam);
    break;

  // ��ȡ��Χ�µ������������ҵ��б�
  // ��������ͬGDI_NEARBY_PLAYER_LIST
  case GDI_NEARBY_IDLE_PLAYER_LIST:
    nRet = NpcSet.GetAroundPlayerForTeamInvite((KUiPlayerItem *)uParam, nParam);
    break;

  // ����ͳ˧������ص�����
  // uParam = (KUiPlayerLeaderShip*) -> ����ͳ˧������ص����ݽṹָ��
  case GDI_PLAYER_LEADERSHIP:
    if (uParam) {
      KUiPlayerLeaderShip *pInfo = (KUiPlayerLeaderShip *)uParam;
      pInfo->nLeaderShipExperience =
          Player[CLIENT_PLAYER_INDEX].m_dwLeadExp; // ͳ˧������ֵ
      // to do: waiting for...;
      pInfo->nLeaderShipExperienceFull =
          Player[CLIENT_PLAYER_INDEX].m_dwNextLevelLeadExp; // ͳ˧������ֵ
      pInfo->nLeaderShipLevel =
          Player[CLIENT_PLAYER_INDEX].m_dwLeadLevel; // ͳ˧���ȼ�
    }
    break;
  // �����Ʒ��ĳ������λ�õ�����״̬
  // uParam = (KUiGameObject*)pObj����nParam==0ʱ����Ʒ����Ϣ
  // uParam = (KUiObjAtContRegion*)pObj����nParam!=0ʱ����Ʒ����Ϣ
  // nParam = (int)(bool)bJustTry  �Ƿ�ֻ�ǳ��Է���
  // Return = (ITEM_IN_ENVIRO_PROP)eProp ��Ʒ������״̬
  case GDI_ITEM_IN_ENVIRO_PROP: {
    if (!nParam) {
      KUiGameObject *pObj = (KUiGameObject *)uParam;
      if (pObj->uGenre != CGOG_ITEM && pObj->uGenre != CGOG_NPCSELLITEM)
        break;

      KItem *pItem = NULL;

      if (pObj->uGenre == CGOG_ITEM && pObj->uId > 0 && pObj->uId < MAX_ITEM) {
        pItem = &Item[pObj->uId];
      } else if (pObj->uGenre == CGOG_NPCSELLITEM) {
        int nIdx = BuySell.GetItemIndex(
            Player[CLIENT_PLAYER_INDEX].m_BuyInfo.m_nBuyIdx, pObj->uId);
        pItem = BuySell.GetItem(nIdx);
      }

      if (!pItem)
        break;

      if (pItem->m_nPriceShop > 0) {
        nRet = IIEP_SHOP;
        break;
      }

      if (pItem->GetGenre() != item_equip)
        break;

      if (Player[CLIENT_PLAYER_INDEX].m_ItemList.CanEquip(pItem)) {
        nRet = IIEP_NORMAL;
      } else {
        nRet = IIEP_NOT_USEABLE;
      }
    } else {
      KUiObjAtContRegion *pObj = (KUiObjAtContRegion *)uParam;
      if (pObj->Obj.uGenre != CGOG_ITEM || pObj->Obj.uId >= MAX_ITEM)
        break;

      int PartConvert[itempart_num] = {
          itempart_head,   itempart_weapon, itempart_amulet,
          itempart_cuff,   itempart_body,   itempart_belt,
          itempart_ring1,  itempart_ring2,  itempart_pendant,
          itempart_foot,   itempart_horse,  itempart_mask, // mat na
          itempart_fifong,
      };

      _ASSERT(pObj->eContainer < itempart_num);
      if (pObj->eContainer >= itempart_num || pObj->eContainer < 0)
        break;

      if (Item[pObj->Obj.uId].GetGenre() != item_equip)
        break;

      int nPlace = PartConvert[pObj->eContainer];

      if (Player[CLIENT_PLAYER_INDEX].m_ItemList.CanEquip(pObj->Obj.uId,
                                                          nPlace)) {
        nRet = IIEP_NORMAL;
      } else {
        nRet = IIEP_NOT_USEABLE;
      }
    }
  } break;
  case GDI_IMMEDIATEITEM_NUM:
    if (uParam >= 0 && uParam < 3)
      nRet =
          Player[CLIENT_PLAYER_INDEX].m_ItemList.GetSameDetailItemNum(uParam);
    break;
  // ��NPC������
  // uParam = (KUiObjAtContRegion*) pInfo ->
  // KUiObjAtRegion�ṹ�����ָ�룬KUiObjAtRegion
  //				�ṹ���ڴ洢��Ʒ�����ݼ����������λ����Ϣ��
  //				����KUiObjAtContRegion::nContainerֵ��ʾ�ڼ�ҳ����Ʒ
  // nParam = pInfo�����а���KUiObjAtRegion�ṹ����Ŀ
  // Return =
  // �������ֵС�ڵ��ڴ������nParam����ֵ��ʾpInfo�����е�ǰ���ٸ�KUiObjAtRegion
  //			�ṹ���������Ч�����ݣ������ʾ��Ҫ����������ٸ�KUiObjAtRegion�ṹ������
  //			�Ź��洢ȫ����npc�г������׵���Ʒ��Ϣ��
  case GDI_TRADE_NPC_ITEM:
    nRet = 0;
    if (uParam) {
      int nCount = 0;
      int nPage = 0;
      int nIndex = 0;
      int nBuyIdx = Player[CLIENT_PLAYER_INDEX].m_BuyInfo.m_nBuyIdx;
      KUiObjAtContRegion *pInfo = (KUiObjAtContRegion *)uParam;

      if (nBuyIdx == -1)
        break;
      if (nBuyIdx >= BuySell.GetHeight())
        break;
      if (!BuySell.m_pShopRoom)
        break;
      BuySell.m_pShopRoom->Clear();
      for (int i = 0; i < BuySell.GetWidth(); i++) {
        nIndex = BuySell.GetItemIndex(nBuyIdx, i);
        KItem *pItem = BuySell.GetItem(nIndex);

        if (nIndex >= 0 && pItem) {
          // Set pInfo->Obj.uGenre
          pInfo->Obj.uGenre = CGOG_NPCSELLITEM;
          // Set pInfo->Obj.uId
          pInfo->Obj.uId = i;

          POINT Pos;
          if (BuySell.m_pShopRoom->FindRoom(pItem->GetWidth(),
                                            pItem->GetHeight(), &Pos)) {
            // nIndex + 1��֤��Ϊ0
            BuySell.m_pShopRoom->PlaceItem(Pos.x, Pos.y, nIndex + 1,
                                           pItem->GetWidth(),
                                           pItem->GetHeight());
          } else {
            nPage++;
            BuySell.m_pShopRoom->Clear();
            // Clear��ɺ��Ȼ�ɹ�������û���ж�
            BuySell.m_pShopRoom->FindRoom(pItem->GetWidth(), pItem->GetHeight(),
                                          &Pos);
            BuySell.m_pShopRoom->PlaceItem(Pos.x, Pos.y, nIndex + 1,
                                           pItem->GetWidth(),
                                           pItem->GetHeight());
          }
          pInfo->Region.h = Pos.x;
          pInfo->Region.v = Pos.y;
          pInfo->Region.Width = pItem->GetWidth();
          pInfo->Region.Height = pItem->GetHeight();
          pInfo->nContainer = nPage;
          nCount++;
          pInfo++;
        }
      }
      nRet = nCount;
    } else {
      int nCount = 0;
      int nIndex = 0;
      int nBuyIdx = Player[CLIENT_PLAYER_INDEX].m_BuyInfo.m_nBuyIdx;
      if (nBuyIdx == -1)
        break;
      if (nBuyIdx >= BuySell.GetHeight())
        break;
      for (int i = 0; i < BuySell.GetWidth(); i++) {
        nIndex = BuySell.GetItemIndex(nBuyIdx, i);
        KItem *pItem = BuySell.GetItem(nIndex);

        if (nIndex >= 0 && pItem) {
          nCount++;
        }
      }
      nRet = nCount;
    }
    break;
  case GDI_CHAT_SEND_CHANNEL_LIST:
    nRet = Player[CLIENT_PLAYER_INDEX].m_cChat.SendSelectChannelList(
        (KUiChatChannel *)uParam, nParam);
    break;
  case GDI_CHAT_RECEIVE_CHANNEL_LIST:
    nRet = Player[CLIENT_PLAYER_INDEX].m_cChat.SendTakeChannelList(
        (KUiChatChannel *)uParam, nParam);
    break;
  case GDI_CHAT_CURRENT_SEND_CHANNEL:
    nRet = Player[CLIENT_PLAYER_INDEX].m_cChat.GetCurChannel(
        (KUiChatChannel *)uParam);
    break;
  case GDI_CHAT_GROUP_INFO:
    nRet = Player[CLIENT_PLAYER_INDEX].m_cChat.IGetTeamInfo(
        nParam, (KUiChatGroupInfo *)uParam);
    break;
  // ����һ�����ѷ����к��ѵ���Ϣ
  // uParam = (KUiPlayerItem*)pList -> ��Ա��Ϣ�б�
  //			KUiPlayerItem::nData = (CHAT_STATUS)eFriendStatus
  //���ѵĵ�ǰ״̬ nParam = Ҫ��ȡ�б�ĺ��ѷ�������� Return =
  // ��ֵ��ʾpList�����е�ǰ���ٸ�KUiPlayerItem�ṹ���������Ч������.
  case GDI_CHAT_FRIENDS_IN_AGROUP:
    nRet = Player[CLIENT_PLAYER_INDEX].m_cChat.IGetTeamFriendInfo(
        nParam, (KUiPlayerItem *)uParam);
    break;
  case GDI_ITEM_IN_STORE_BOX:
    nRet = 0;
    if (uParam) {
      int nCount = 0;
      KUiObjAtRegion *pInfo = (KUiObjAtRegion *)uParam;
      pInfo->Obj.uGenre = CGOG_MONEY;
      pInfo->Obj.uId =
          Player[CLIENT_PLAYER_INDEX].m_ItemList.GetMoney(room_repository);
      nCount++;
      pInfo++;
      PlayerItem *pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetFirstItem();
      if (pItem && pItem->nPlace == pos_repositoryroom) {
        pInfo->Obj.uGenre = CGOG_ITEM;
        pInfo->Obj.uId = pItem->nIdx;
        pInfo->Region.h = pItem->nX;
        pInfo->Region.v = pItem->nY;
        pInfo->Region.Width = Item[pItem->nIdx].GetWidth();
        pInfo->Region.Height = Item[pItem->nIdx].GetHeight();
        nCount++;
        pInfo++;
      }
      while (pItem) {
        pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetNextItem();
        if (pItem && pItem->nPlace == pos_repositoryroom) {
          pInfo->Obj.uGenre = CGOG_ITEM;
          pInfo->Obj.uId = pItem->nIdx;
          pInfo->Region.h = pItem->nX;
          pInfo->Region.v = pItem->nY;
          pInfo->Region.Width = Item[pItem->nIdx].GetWidth();
          pInfo->Region.Height = Item[pItem->nIdx].GetHeight();
          nCount++;
          pInfo++;
        }
        if (nCount > nParam)
          break;
      }
      nRet = nCount;
    } else {
      int nCount = 0;
      // ��һ����Ǯ
      nCount++;
      // ������װ��
      PlayerItem *pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetFirstItem();
      if (pItem && pItem->nPlace == pos_repositoryroom)
        nCount++;
      while (pItem) {
        pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetNextItem();
        if (pItem && pItem->nPlace == pos_repositoryroom)
          nCount++;
      }
      nRet = nCount;
    }
    break;

  case GDI_ITEM_IN_RPNEW_BOX:
    nRet = 0;
    if (uParam) {
      int nCount = 0;
      KUiObjAtRegion *pInfo = (KUiObjAtRegion *)uParam;
      PlayerItem *pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetFirstItem();
      if (pItem && pItem->nPlace == pos_rpnew) {
        pInfo->Obj.uGenre = CGOG_ITEM;
        pInfo->Obj.uId = pItem->nIdx;
        pInfo->Region.h = pItem->nX;
        pInfo->Region.v = pItem->nY;
        pInfo->Region.Width = Item[pItem->nIdx].GetWidth();
        pInfo->Region.Height = Item[pItem->nIdx].GetHeight();
        nCount++;
        pInfo++;
      }
      while (pItem) {
        pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetNextItem();
        if (pItem && pItem->nPlace == pos_rpnew) {
          pInfo->Obj.uGenre = CGOG_ITEM;
          pInfo->Obj.uId = pItem->nIdx;
          pInfo->Region.h = pItem->nX;
          pInfo->Region.v = pItem->nY;
          pInfo->Region.Width = Item[pItem->nIdx].GetWidth();
          pInfo->Region.Height = Item[pItem->nIdx].GetHeight();
          nCount++;
          pInfo++;
        }
        if (nCount > nParam)
          break;
      }
      nRet = nCount;
    } else {
      int nCount = 0;
      // ��һ����Ǯ
      // ������װ��
      PlayerItem *pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetFirstItem();
      if (pItem && pItem->nPlace == pos_rpnew)
        nCount++;
      while (pItem) {
        pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetNextItem();
        if (pItem && pItem->nPlace == pos_rpnew)
          nCount++;
      }
      nRet = nCount;
    }
    break;

  case GDI_ITEM_IN_CHECK_BOX:
    nRet = 0;
    if (uParam) {
      int nCount = 0;
      KUiObjAtRegion *pInfo = (KUiObjAtRegion *)uParam;

      PlayerItem *pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetFirstItem();
      if (pItem && pItem->nPlace == pos_checkbox) {
        pInfo->Obj.uGenre = CGOG_ITEM;
        pInfo->Obj.uId = pItem->nIdx;
        pInfo->Region.h = pItem->nX;
        pInfo->Region.v = pItem->nY;
        pInfo->Region.Width = Item[pItem->nIdx].GetWidth();
        pInfo->Region.Height = Item[pItem->nIdx].GetHeight();
        nCount++;
        pInfo++;
      }
      while (pItem) {
        pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetNextItem();
        if (pItem && pItem->nPlace == pos_checkbox) {
          pInfo->Obj.uGenre = CGOG_ITEM;
          pInfo->Obj.uId = pItem->nIdx;
          pInfo->Region.h = pItem->nX;
          pInfo->Region.v = pItem->nY;
          pInfo->Region.Width = Item[pItem->nIdx].GetWidth();
          pInfo->Region.Height = Item[pItem->nIdx].GetHeight();
          nCount++;
          pInfo++;
        }
        if (nCount > nParam)
          break;
      }
      nRet = nCount;
    } else {
      int nCount = 0;
      // ��һ����Ǯ
      // ������װ��
      PlayerItem *pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetFirstItem();
      if (pItem && pItem->nPlace == pos_checkbox)
        nCount++;
      while (pItem) {
        pItem = Player[CLIENT_PLAYER_INDEX].m_ItemList.GetNextItem();
        if (pItem && pItem->nPlace == pos_checkbox)
          nCount++;
      }
      nRet = nCount;
    }
    break;

  case GDI_PK_SETTING: // ��ȡpk����
    nRet = Player[CLIENT_PLAYER_INDEX].m_cPK.GetNormalPKState();
    break;
  case GDI_ATI_SETTING: // ��ȡpk����
  {
    KUiAuToRegion *pInfo = (KUiAuToRegion *)nParam;
    // Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_bIsHidePlayer =
    // pInfo->bHidePlayer;
    //		Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_bIsHidePlayer =
    //true;
    Player[CLIENT_PLAYER_INDEX].m_HideRes = pInfo->bHidePlayer;
    Player[CLIENT_PLAYER_INDEX].m_HideMissle = pInfo->bHideMissle;
    Player[CLIENT_PLAYER_INDEX].CheckRideHouse(pInfo->bHorse);
    Player[CLIENT_PLAYER_INDEX].m_QuanhDiem = pInfo->bQuanhDiem;
    Player[CLIENT_PLAYER_INDEX].m_TargetPlayer = pInfo->bTargetPlayer;
    Player[CLIENT_PLAYER_INDEX].m_TheoSau = pInfo->bTheoSau;
    Player[CLIENT_PLAYER_INDEX].m_TuVe = pInfo->bTuVe;

    //		Player[CLIENT_PLAYER_INDEX].m_cTeam.m_InviteAuto =
    //pInfo->bInviteAuto; 		Player[CLIENT_PLAYER_INDEX].m_cTeam.m_AcceptAuto =
    //pInfo->bAcceptAuto; 		Player[CLIENT_PLAYER_INDEX].m_cTeam.m_CancelAuto =
    //pInfo->bCancelAuto;

    Player[CLIENT_PLAYER_INDEX].m_bUseTDP = pInfo->bUseTDP;

    Player[CLIENT_PLAYER_INDEX].m_bNgaMy1 = pInfo->bNgaMy1;
    Player[CLIENT_PLAYER_INDEX].m_bNgaMy2 = pInfo->bNgaMy2;
    Player[CLIENT_PLAYER_INDEX].m_bNgaMy3 = pInfo->bNgaMy3;
    Player[CLIENT_PLAYER_INDEX].m_bNgaMy4 = pInfo->bNgaMy4;
    Player[CLIENT_PLAYER_INDEX].m_bNgaMy5 = pInfo->bNgaMy5;

    Player[CLIENT_PLAYER_INDEX].m_bHidePlayer1 = pInfo->bHidePlayer1;
    Player[CLIENT_PLAYER_INDEX].m_bHidePlayer2 = pInfo->bHidePlayer2;
    Player[CLIENT_PLAYER_INDEX].m_eHidePlayer3 = pInfo->eHidePlayer3;
    Player[CLIENT_PLAYER_INDEX].m_eBoQuaPK = pInfo->nBoQuaPK * 18;

    Player[CLIENT_PLAYER_INDEX].m_HideMissle2 = pInfo->bHideMissle2;
    //		Player[CLIENT_PLAYER_INDEX].m_HideGame1 = pInfo->bHideGame1;
    Player[CLIENT_PLAYER_INDEX].m_HideGame2 = pInfo->bHideGame2;
    Player[CLIENT_PLAYER_INDEX].m_HideGame3 = pInfo->bHideGame3;

    Player[CLIENT_PLAYER_INDEX].PlayerSetAuto(
        pInfo->bStart, pInfo->nLife, pInfo->nMana, pInfo->nReturn,
        pInfo->nAtack, pInfo->nRange, pInfo->nNAtack, pInfo->bMoneyObj,
        pInfo->bItemObj, pInfo->bPropObj, pInfo->bItemSelect, pInfo->nNgaMyBuff,
        pInfo->nPhamViTuVe, pInfo->nGuiTienNew);
  } break;
  case GDI_SHOW_PLAYERS_NAME: // ��ȡ��ʾ���������
    nRet = NpcSet.CheckShowName();
    break;
  case GDI_SHOW_PLAYERS_LIFE: // ��ȡ��ʾ���������
    nRet = NpcSet.CheckShowLife();
    break;
  case GDI_SHOW_PLAYERS_MANA: // ��ȡ��ʾ���������
    nRet = NpcSet.CheckShowMana();
    break;
  // chan dung
  case GDI_IS_CHECK_IMAGE:
    nRet = Player[CLIENT_PLAYER_INDEX].m_ImagePlayer;
    break;
  // end
  case GDI_ITEM_CHAT: // tao ra itemchat
  {
    if (uParam) {
      if (nParam) {
        ChatItem *pItem = (ChatItem *)nParam;
        int nVirtualMA[6];
        memset(nVirtualMA, 10, sizeof(int) * 6);
        for (int x = 0; x < 6; x++) {
          nVirtualMA[x] = pItem->nParamX[x];
        }

        nRet = ItemSet.Add(pItem->nItemGenre, pItem->nSeries, pItem->nLevel,
                           pItem->nLuck, pItem->nDetailType,
                           pItem->nParticularType, nVirtualMA, 1, 0);
        if (nRet) {
          if (Item[nRet].GetKind() ==
              1) // chi do hoang kim moi load cai m_Level
          {
            Item[nRet].m_ItemLevel =
                pItem->nKind; // dung roi quen, cai series cung giong level.
          }

          for (int i = 0; i < 6; i++) {
            Item[nRet].m_aryMagicAttrib[i].nAttribType = pItem->pnMagicParam[i];
            Item[nRet].m_aryMagicAttrib[i].nValue[0] =
                pItem->pnMagicParam[i + 6];
          }

          Item[nRet].SetDurability(pItem->nDurability);
          // g_DebugLog("%d",pItem->nDurability);
          Item[nRet].SetTime(pItem->m_Time.bYear, pItem->m_Time.bMonth,
                             pItem->m_Time.bDay, pItem->m_Time.bHour);
          // g_DebugLog("Debug: %d",pItem->iNgoaiTrang);
          Item[nRet].SetNgoaiTrang(pItem->iNgoaiTrang);
        }
      }
    } else {
      ItemSet.Remove(nParam);
    }
  } break;
  case GDI_ITEM_NAME: // lay ten item
    if (uParam) {
      char *pzName = (char *)uParam;
      if (nParam)
        strcpy(pzName, Item[nParam].GetName());
    }
    break;
  case GDI_GET_ITEM_PARAM: // lay thong so cua item
    if (uParam && nParam) {
      ChatItem *pCItem = (ChatItem *)uParam;

      pCItem->nItemGenre = Item[nParam].GetGenre();
      pCItem->nDetailType = Item[nParam].GetDetailType();
      pCItem->nParticularType = Item[nParam].GetParticular();
      pCItem->nSeries = Item[nParam].GetSeries();
      pCItem->nKind = Item[nParam].m_ItemLevel;
      pCItem->nLevel = Item[nParam].GetLevel();
      pCItem->nLuck = Item[nParam].m_GeneratorParam.nLuck;
      pCItem->nDurability = Item[nParam].GetDurability();
      pCItem->iNgoaiTrang = Item[nParam].GetNgoaiTrang();

      for (int k = 0; k < 6; k++) {
        pCItem->nParamX[k] = Item[nParam].m_GeneratorParam.nGeneratorLevel[k];
      }
      for (int j = 0; j < 6; j++) {
        pCItem->pnMagicParam[j] = Item[nParam].m_aryMagicAttrib[j].nAttribType;
        pCItem->pnMagicParam[j + 6] =
            Item[nParam].m_aryMagicAttrib[j].nValue[0];
      }
      pCItem->m_Time.bYear = Item[nParam].GetTime()->bYear;
      pCItem->m_Time.bMonth = Item[nParam].GetTime()->bMonth;
      pCItem->m_Time.bDay = Item[nParam].GetTime()->bDay;
      pCItem->m_Time.bHour = Item[nParam].GetTime()->bHour;
      // g_DebugLog("Gettime: %d - %d - %d -
      // %d",pCItem->m_Time.bYear,pCItem->m_Time.bMonth,pCItem->m_Time.bDay,pCItem->m_Time.bHour);
      nRet = 1;
    }
    break;
  case GDI_CHAT_ITEM_DESC:
    if (nParam && uParam) {
      char *pszDescript = (char *)nParam;
      pszDescript[0] = 0;
      Item[uParam].GetDesc(pszDescript);
    }
    break;
  case GDI_CHAT_ITEM_IMAGE:
    if (nParam && uParam) {
      char *pszImage = (char *)uParam;
      pszImage[0] = 0;
      strcpy(pszImage, Item[nParam].m_CommonAttrib.szImageName);
      if (pszImage[0])
        nRet = 1;
    }
    break;
  case GDI_IS_GET_TASK_VALUE:
    nRet = Player[CLIENT_PLAYER_INDEX].m_cTask.GetSaveVal(TASK_CHAT_TONGKIM);
    break;
  //-----------------------miniskill--------------------------
  case GDI_NPC_STATE_SKILL:
    nRet = 0;
    if (uParam) {
      KStateNode *pNode;
      pNode = (KStateNode *)Npc[CLIENT_PLAYER_INDEX].m_StateSkillList.GetHead();
      KStateControl *pInfo = (KStateControl *)uParam;

      while (pNode) {
        if (pNode->m_SkillID > 0 && pNode->m_SkillID < MAX_SKILL &&
            pNode->m_Level > 0 && pNode->m_Level < MAX_SKILLLEVEL) {
          KSkill *pOrdinSkill = (KSkill *)g_SkillManager.GetSkill(
              pNode->m_SkillID, pNode->m_Level);
          if (pOrdinSkill->GetSkillStyle() == SKILL_SS_Missles ||
              pOrdinSkill->GetSkillStyle() == SKILL_SS_InitiativeNpcState) {
            pInfo->nSkillId = pNode->m_SkillID;
            pInfo->nLeftTime = pNode->m_LeftTime;
            pInfo++;
          }
        }
        pNode = (KStateNode *)pNode->GetNext();
      }
    } else {
      int nCount = 0;
      KStateNode *pNode;
      pNode = (KStateNode *)Npc[CLIENT_PLAYER_INDEX].m_StateSkillList.GetHead();
      while (pNode) {
        if (pNode->m_SkillID > 0 && pNode->m_SkillID < MAX_SKILL &&
            pNode->m_Level > 0 && pNode->m_Level < MAX_SKILLLEVEL) {
          KSkill *pOrdinSkill = (KSkill *)g_SkillManager.GetSkill(
              pNode->m_SkillID, pNode->m_Level);
          if (pOrdinSkill->GetSkillStyle() == SKILL_SS_Missles ||
              pOrdinSkill->GetSkillStyle() == SKILL_SS_InitiativeNpcState) {
            nCount++;
          }
        }
        pNode = (KStateNode *)pNode->GetNext();
      }
      nRet = nCount;
    }
    break;
  }
  return nRet;
}
//---------------------------------end---------------------------------

//--------------------------------------------------------------------------
//	���ܣ�����Ϸ���Ͳ���
//	������unsigned int uDataId --> Core�ⲿ�ͻ���core�Ĳ����������������
//							��ֵΪ÷������GAMEOPERATION_INDEX��ȡֵ֮һ��
//		  unsigned int uParam  --> ����uOperId��ȡֵ�������
//		  int nParam --> ����uOperId��ȡֵ�������
//	���أ�����ɹ����Ͳ������󣬺������ط�0ֵ�����򷵻�0ֵ��
//--------------------------------------------------------------------------
int KCoreShell::OperationRequest(unsigned int uOper, unsigned int uParam,
                                 int nParam) {
  int nRet = 1;
  switch (uOper) {
  case GOI_QUERY_RANK_INFORMATION:
    SendClientCmdQueryLadder(uParam);
    break;
  // case GOI_GET_MATE_NAME:
  // SentClientGetMateName(uParam);
  // break;
  // chan dung
  case GOI_CP_SET_IMAGE_PLAYER:
    SendClientCPSetImageCmd(uParam);
    g_DebugLog("uParam: %d", uParam);
    break;
  // end
  // uParam = (const char*)pszFileName
  case GOI_PLAY_SOUND:
    if (uParam) {
      static KCacheNode *pSndNode = NULL;
      KWavSound *pSound = NULL;
      pSndNode = (KCacheNode *)g_SoundCache.GetNode((char *)uParam,
                                                    (KCacheNode *)pSndNode);
      pSound = (KWavSound *)pSndNode->m_lpData;
      if (pSound) {
        if (pSound->IsPlaying())
          break;
        pSound->Play(0, -10000 + Option.GetSndVolume() * 100, 0);
      }
    }
    break;
  case GOI_PLAYER_RENASCENCE: {
    int nReviveType;
    if (nParam) // bBackTown
    {
      nReviveType = REMOTE_REVIVE_TYPE;
    } else {
      nReviveType = LOCAL_REVIVE_TYPE;
    }
    //			SendClientCmdRevive(nReviveType);
    SendClientCmdRevive();
  } break;
  case GOI_MONEY_INOUT_STORE_BOX: {
    BOOL bIn = (BOOL)uParam;
    int nMoney = nParam;
    int nSrcRoom, nDesRoom;

    if (bIn) {
      nSrcRoom = room_equipment;
      nDesRoom = room_repository;
    } else {
      nDesRoom = room_equipment;
      nSrcRoom = room_repository;
    }
    Player[CLIENT_PLAYER_INDEX].m_ItemList.ExchangeMoney(nSrcRoom, nDesRoom,
                                                         nMoney);
  } break;
    // �뿪��Ϸ
    //  UYTHAC
  case GOI_LIXIAN:
    SendClientCmdLiXian();
    break;
    //	case GOI_LIXIAN:
    //	SendClientCmdLiXian();
    //	break;
    /*	case GOI_AUTOQUAYLAI:
                    if (uParam)
                    {
                            KUiAuToTreoMay* pInfo = (KUiAuToTreoMay*)uParam;
                            SendClientCmdAutoQuayLai(pInfo->LifePoison,pInfo->ManaPoison,pInfo->AllPoison,pInfo->AllPoisonMin,pInfo->bSuaTrangBi,pInfo->bUseTTL,pInfo->bNhatDoChonLoc,pInfo->bQuayLai,pInfo->NumSelect,pInfo->RingSelect,pInfo->WeaSelect);
                    }
                    break;
            case GOI_AUTOLOCDO:
                    {
                            KUiAuToLocDo* pInfo = (KUiAuToLocDo*)uParam;
                            SendClientCmdAutoLocDo(pInfo->Option1,pInfo->Option2,pInfo->Option3,pInfo->Option4,pInfo->Option5,pInfo->Option6,pInfo->Option7,pInfo->Option8,pInfo->Option9,pInfo->Option10,pInfo->Option11,pInfo->Option12,pInfo->Option13,pInfo->Option14,pInfo->Option15,pInfo->Option16,pInfo->Option17,pInfo->Option18,pInfo->Option19,pInfo->Option20,pInfo->Option21,pInfo->Option22,pInfo->Option23,pInfo->Option24,pInfo->Option25,pInfo->Option26,pInfo->Option27,pInfo->Option28,pInfo->Option29,pInfo->Option30,pInfo->Option31,pInfo->Option32,pInfo->Option33,pInfo->Option34,pInfo->Option35,pInfo->Option36,pInfo->Option37,pInfo->Option38,pInfo->Option39);

                    }
                    break;*/

    // END

    // --------------------------- Them auto
    // --------------------------------------------
  case GOI_AUTO_PLAY: {
    switch (uParam) {
    case 0:
      Player[CLIENT_PLAYER_INDEX].m_bBuffSkill[0] = nParam;
      break;
    case 1:
      Player[CLIENT_PLAYER_INDEX].m_bBuffSkill[1] = nParam;
      break;
    case 2:
      Player[CLIENT_PLAYER_INDEX].m_bBuffSkill[2] = nParam;
      break;
    case 3:
      Player[CLIENT_PLAYER_INDEX].m_bFollowPeople = nParam;
      break;
    case 4:
      //	strcpy(Player[CLIENT_PLAYER_INDEX].m_FollowPeopleName,(char*)nParam);
      //	Player[CLIENT_PLAYER_INDEX].m_FollowPeopleIdx =
      //NpcSet.SearchName(Player[CLIENT_PLAYER_INDEX].m_FollowPeopleName);
      break;
    case 5:
      Player[CLIENT_PLAYER_INDEX].m_AutoAttack = nParam;
      break;
    case 6:
      Player[CLIENT_PLAYER_INDEX].m_bAttackAround = nParam;
      if (nParam) {
        Player[CLIENT_PLAYER_INDEX].SendInfoAuto();
      }
      break;
    case 7:
      Player[CLIENT_PLAYER_INDEX].m_RadiusAuto = nParam;
      break;
    case 8:
      Player[CLIENT_PLAYER_INDEX].m_btDurabilityItem = nParam;
      break;
    case 9:
      Player[CLIENT_PLAYER_INDEX].m_btDurabilityValue = nParam;
      break;
    case 10:
      Player[CLIENT_PLAYER_INDEX].m_AuraSkill[0] = nParam;
      break;
    case 11:
      Player[CLIENT_PLAYER_INDEX].m_AuraSkill[1] = nParam;
      break;
    case 12:
      Player[CLIENT_PLAYER_INDEX].m_bActiveSwitchAura = nParam;
      break;
    case 13:
      Player[CLIENT_PLAYER_INDEX].m_ArrayStateSkill[0] = nParam;
      break;
    case 14:
      Player[CLIENT_PLAYER_INDEX].m_AutoLifeReplenish = nParam;
      break;
    case 15:
      Player[CLIENT_PLAYER_INDEX].m_AutoLifeReplenishP = nParam;
      break;
    case 16:
      Player[CLIENT_PLAYER_INDEX].m_AutoMove = nParam;
      break;
    case 17:
      Player[CLIENT_PLAYER_INDEX].m_bPickItem = nParam;
      break;
    case 18:
      Player[CLIENT_PLAYER_INDEX].m_btPickUpKind = nParam;
      break;
    case 19:
      Player[CLIENT_PLAYER_INDEX].m_bFilterEquipment = nParam;
      break;
    case 20: {
      Player[CLIENT_PLAYER_INDEX].m_SaveRAP = nParam;
      Player[CLIENT_PLAYER_INDEX].m_bSaveJewelry = nParam;
      break;
    }
    case 21:
      Player[CLIENT_PLAYER_INDEX].m_EatLife = nParam;
      break;
    case 22:
      Player[CLIENT_PLAYER_INDEX].m_EatMana = nParam;
      break;
    case 23:
      Player[CLIENT_PLAYER_INDEX].m_LifeAutoV = nParam;
      break;
    case 24:
      Player[CLIENT_PLAYER_INDEX].m_LifeTimeUse = nParam;
      break;
    case 25:
      Player[CLIENT_PLAYER_INDEX].m_ManaAutoV = nParam;
      break;
    case 26:
      Player[CLIENT_PLAYER_INDEX].m_ManaTimeUse = nParam;
      break;
    case 27:
      Player[CLIENT_PLAYER_INDEX].m_TPLife = nParam;
      break;
    case 28:
      Player[CLIENT_PLAYER_INDEX].m_TPMana = nParam;
      break;
    case 29:
      Player[CLIENT_PLAYER_INDEX].m_TPLifeV = nParam;
      break;
    case 30:
      Player[CLIENT_PLAYER_INDEX].m_TPManaV = nParam;
      break;
    case 31:
      Player[CLIENT_PLAYER_INDEX].m_TPNotMedicineBlood = nParam;
      break;
    case 32:
      Player[CLIENT_PLAYER_INDEX].m_TPNotMedicineMana = nParam;
      break;
    case 33:
      Player[CLIENT_PLAYER_INDEX].m_TPHightMoney = nParam;
      break;
    case 34:
      Player[CLIENT_PLAYER_INDEX].m_TPHightMoneyV = nParam;
      break;
    case 35:
      Player[CLIENT_PLAYER_INDEX].m_AutoAntiPoison = nParam;
      break;
    case 36:
      Player[CLIENT_PLAYER_INDEX].m_AutoTTL = nParam;
      break;
    case 37:
      Player[CLIENT_PLAYER_INDEX].m_bActiveAutoParty = nParam;
      break;
    case 38:
      Player[CLIENT_PLAYER_INDEX].m_bAutoParty = nParam;
      break;
    case 39:
      Player[CLIENT_PLAYER_INDEX].m_cTeam.m_bAutoAccecpt = nParam;
      break;
    case 40:
      Player[CLIENT_PLAYER_INDEX].m_DistanceAuto = nParam;
      break;
    case 41:
      Player[CLIENT_PLAYER_INDEX].m_bFightDistance = nParam;
      break;
    case 42:
      Player[CLIENT_PLAYER_INDEX].m_ArrayStateSkill[1] = nParam;
      break;
    case 43:
      Player[CLIENT_PLAYER_INDEX].m_ArrayStateSkill[2] = nParam;
      break;
    case 44:
      Player[CLIENT_PLAYER_INDEX].m_bAttackPeople = !nParam;
      Player[CLIENT_PLAYER_INDEX].m_bAttackNpc = nParam;
      break;
    case 45:
      Player[CLIENT_PLAYER_INDEX].m_bAttackPeople = nParam;
      Player[CLIENT_PLAYER_INDEX].m_bAttackNpc = !nParam;
      break;
    case 46:
      Player[CLIENT_PLAYER_INDEX].m_bAttackPeople = nParam;
      Player[CLIENT_PLAYER_INDEX].m_bAttackNpc = nParam;
      break;

    case 47:
      if (nParam) {
        Player[CLIENT_PLAYER_INDEX].GetAutoQDXY((char *)nParam);
        break;
      }
    case eSortItem: {
      Player[CLIENT_PLAYER_INDEX].m_bSortEquipment_Active =
          nParam; // Set tu xep do
      break;
    }
    case eBuyItem: {
      Player[CLIENT_PLAYER_INDEX].m_bBuyEquip = nParam; // Set tu mua do
      break;
    }
    case eInventoryIM: {
      Player[CLIENT_PLAYER_INDEX].m_bInventoryMoney =
          nParam; // Set tu cat item money vao ruong
      Player[CLIENT_PLAYER_INDEX].m_bInventoryItem = nParam;
      break;
    }
    case eRepairEquip: {
      Player[CLIENT_PLAYER_INDEX].m_bRepairEquip = nParam;
      break;
    }
    case eReturnPortal: {
      Player[CLIENT_PLAYER_INDEX].m_bReturnPortal = nParam;
      break;
    }
    case eAutoTuiDuocPham: {
      Player[CLIENT_PLAYER_INDEX].m_Auto_TuiDuocPham = nParam;
      break;
    }
    case eABanItem: {
      Player[CLIENT_PLAYER_INDEX].m_Auto_BanItem = nParam;
      break;
    }
      //  case 55:
      //	        Player[CLIENT_PLAYER_INDEX].m_bActiveAuto =
      //!Player[CLIENT_PLAYER_INDEX].m_bActiveAuto;
      //     	break;
      /*   case 56:
                         Player[CLIENT_PLAYER_INDEX].m_nTPNotEquipment = uParam;
                 break;*/
    default:
      break;
    }
  } break;
  case GOI_EXIT_GAME:
    g_SubWorldSet.Close();
    g_ScenePlace.ClosePlace();
    Player[CLIENT_PLAYER_INDEX].dacheck = FALSE;
    break;
  case GOI_GAMESPACE_DISCONNECTED:
    g_SubWorldSet.Close();
    Player[CLIENT_PLAYER_INDEX].dacheck = FALSE;
    break;
  case GOI_TRADE_NPC_BUY: {
    KUiObjAtContRegion *pObject1 = (KUiObjAtContRegion *)uParam;
    if (CGOG_NPCSELLITEM != pObject1->Obj.uGenre)
      break;

    int nIdx = 0;
    int nuId = 0;
    KItem *pItem = NULL;

    nuId = pObject1->Obj.uId;
    nIdx = BuySell.GetItemIndex(Player[CLIENT_PLAYER_INDEX].m_BuyInfo.m_nBuyIdx,
                                pObject1->Obj.uId);

    pItem = BuySell.GetItem(nIdx);

    int nPrice, nWidth, nHeight, nPriceGold, nPriceTL, nPriceVD;

    nWidth = pItem->GetWidth();
    nHeight = pItem->GetHeight();
    nPrice = pItem->GetPrice();
    nPriceGold = pItem->m_nPriceGold;

    nPriceTL = pItem->m_nPriceTL;
    nPriceVD = pItem->m_nPriceVD;

    if (nPriceGold > 0) {

      if (Player[CLIENT_PLAYER_INDEX].m_cTask.GetSaveVal(99) <
          nPriceGold * nParam) {
        KSystemMessage sMsg;
        strcpy(sMsg.szMessage, MSG_SHOP_NO_MONEY);
        sMsg.eType = SMT_SYSTEM;
        sMsg.byConfirmType = SMCT_CLICK;
        sMsg.byPriority = 1;
        sMsg.byParamSize = 0;
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        return 0;
      }

    }

    else if (nPriceTL > 0) {

      if (Player[CLIENT_PLAYER_INDEX].m_cTask.GetSaveVal(15) <
          nPriceTL * nParam) {
        KSystemMessage sMsg;
        strcpy(sMsg.szMessage, MSG_SHOP_NO_MONEY);
        sMsg.eType = SMT_SYSTEM;
        sMsg.byConfirmType = SMCT_CLICK;
        sMsg.byPriority = 1;
        sMsg.byParamSize = 0;
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        return 0;
      }

    }

    else if (nPriceVD > 0) {

      if (Player[CLIENT_PLAYER_INDEX].m_cTask.GetSaveVal(124) <
          nPriceVD * nParam) {
        KSystemMessage sMsg;
        strcpy(sMsg.szMessage, MSG_SHOP_NO_MONEY);
        sMsg.eType = SMT_SYSTEM;
        sMsg.byConfirmType = SMCT_CLICK;
        sMsg.byPriority = 1;
        sMsg.byParamSize = 0;
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        return 0;
      }

    }

    else {

      if (Player[CLIENT_PLAYER_INDEX].m_ItemList.GetEquipmentMoney() <
          nPrice * nParam) {
        KSystemMessage sMsg;
        strcpy(sMsg.szMessage, MSG_SHOP_NO_MONEY);
        sMsg.eType = SMT_SYSTEM;
        sMsg.byConfirmType = SMCT_CLICK;
        sMsg.byPriority = 1;
        sMsg.byParamSize = 0;
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        return 0;
      }
    }

    Player[CLIENT_PLAYER_INDEX].PlayerStarBuyItemNumber(
        nuId, nIdx, nWidth, nHeight, nPrice, nParam);

  } break;

  case GOI_SHOP_PRICE: {
    KUiObjAtContRegion *pObject1 = (KUiObjAtContRegion *)uParam;

    if (CGOG_ITEM != pObject1->Obj.uGenre)
      break;

    int nIdx = pObject1->Obj.uId;
    if (nIdx > 0 && nIdx < MAX_ITEM) {
      if ((Item[nIdx].GetGenre() == item_equip ||
           Item[nIdx].GetGenre() == item_medicine) &&
          Item[nIdx].m_GeneratorParam.nVersion > 1) {
        KSystemMessage sMsg;
        sprintf(sMsg.szMessage, "Trang b� �� ��nh b�o hi�m, kh�ng th� b�n !");
        sMsg.eType = SMT_NORMAL;
        sMsg.byConfirmType = SMCT_NONE;
        sMsg.byPriority = 0;
        sMsg.byParamSize = 0;
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        return 0;
      } else if (Item[nIdx].GetGenre() == item_equip &&
                 Item[nIdx].GetDurability() == 0) {
        KSystemMessage sMsg;
        sprintf(sMsg.szMessage, "Trang b� �� h�ng, kh�ng th� b�n !");
        sMsg.eType = SMT_NORMAL;
        sMsg.byConfirmType = SMCT_NONE;
        sMsg.byPriority = 0;
        sMsg.byParamSize = 0;
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        return 0;
      }
      SendClientCmdShopPrice(Item[nIdx].GetID(), nParam);
      return 1;
    } else {
      return 0;
    }
  } break;

  case GOI_SHOP_BUY_ITEM: {
    KUiObjAtContRegion *pObject1 = (KUiObjAtContRegion *)uParam;

    if (CGOG_ITEM != pObject1->Obj.uGenre)
      break;

    int nIdx = pObject1->Obj.uId;
    if (nIdx > 0 && nIdx < MAX_ITEM) {

      SendClientCmdShopBuyItem(Item[nIdx].GetID());
      return 1;
    } else {
      return 0;
    }
  } break;

  case GOI_STOP_TRADE_BUY_NPC: {
    Player[CLIENT_PLAYER_INDEX].PlayerStarBuyItemNumber(0, 0, 0, 0, 0, 0);
  } break;

  case GOI_STASK_ITEM: {
    KUiObjAtContRegion *pObject1 = (KUiObjAtContRegion *)uParam;

    if (CGOG_ITEM != pObject1->Obj.uGenre)
      break;

    int nIdx = pObject1->Obj.uId;
    if (nIdx > 0 && nIdx < MAX_ITEM) {
      if (Item[nIdx].GetGenre() != item_task ||
          nParam >= Item[nIdx].GetVersion() || nParam < 1) {
        return 0;
      }

      SendClientCmdStaskItem(Item[nIdx].GetID(), nParam);
      return 1;
    } else {
      return 0;
    }
  } break;

  case GOI_STRING_BOX:
    SendClientCmdStringBox((char *)uParam);
    break;

  case GOI_LOGIN_PW_STORE_BOX:
    SendClientCmdLoginPWStoreBox((char *)uParam);
    break;

  case GOI_PW_STORE_BOX:
    SendClientCmdPWStoreBox((char *)uParam, (char *)nParam);
    break;

  case GOI_NEW_PW_STORE_BOX:
    SendClientCmdNewPWStoreBox((char *)uParam);
    break;

  case GOI_BLOCK_STORE_BOX:
    SendClientCmdBlockStoreBox();
    break;

  case GOI_SHOP_NAME:
    SendClientCmdShopName((char *)uParam);
    break;

  case GOI_CHECK_ITEM_BOX:
    SendClientCmdCheckItemBox();
    break;

  case GOI_SLECT_CHECK_BOX:
    SendClientCmdSlectCheckBox(uParam);
    break;

  case GOI_BUTTON_PG_BOX:
    SendClientCmdButtonPGBox(uParam);
    break;

  case GOI_TRADE_NPC_SELL: {
    KUiObjAtContRegion *pObject1 = (KUiObjAtContRegion *)uParam;

    if (CGOG_ITEM != pObject1->Obj.uGenre)
      break;
    // ����ȥ�Ķ�����Ϊ�գ�������������
    int nIdx =
        pObject1->Obj.uId; // Player[CLIENT_PLAYER_INDEX].m_ItemList.Hand();
    if (nIdx > 0 && nIdx < MAX_ITEM) {
      if (Item[nIdx].GetGenre() == item_task) {
        KSystemMessage sMsg;
        sprintf(sMsg.szMessage, MSG_TRADE_TASK_ITEM);
        sMsg.eType = SMT_NORMAL;
        sMsg.byConfirmType = SMCT_NONE;
        sMsg.byPriority = 0;
        sMsg.byParamSize = 0;
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        return 0;
      } else if ((Item[nIdx].GetGenre() == item_equip ||
                  Item[nIdx].GetGenre() == item_medicine) &&
                 Item[nIdx].m_GeneratorParam.nVersion > 1) {
        KSystemMessage sMsg;
        sprintf(sMsg.szMessage, "Trang b� �� ��nh b�o hi�m kh�ng th� b�n !");
        sMsg.eType = SMT_NORMAL;
        sMsg.byConfirmType = SMCT_NONE;
        sMsg.byPriority = 0;
        sMsg.byParamSize = 0;
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        return 0;
      } else if (Item[nIdx].GetGenre() == item_equip &&
                 Item[nIdx].GetDurability() == 0) {
        KSystemMessage sMsg;
        sprintf(sMsg.szMessage, "Trang b� �� h�ng, kh�ng th� b�n !");
        sMsg.eType = SMT_NORMAL;
        sMsg.byConfirmType = SMCT_NONE;
        sMsg.byPriority = 0;
        sMsg.byParamSize = 0;
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        return 0;
      }

      SendClientCmdSell(Item[nIdx].GetID());
      return 1;
    } else {
      return 0;
    }
  } break;
  case GOI_BLOCK_ITEM: {
    KUiObjAtContRegion *pObject1 = (KUiObjAtContRegion *)uParam;

    if (CGOG_ITEM != pObject1->Obj.uGenre)
      break;

    int nIdx = pObject1->Obj.uId;
    if (nIdx > 0 && nIdx < MAX_ITEM) {
      if (Item[nIdx].GetGenre() != item_equip) {
        KSystemMessage sMsg;
        sprintf(sMsg.szMessage, "Kh�ng th� d�ng t�nh n�ng n�y v�i v�t ph�m "
                                "kh�ng ph�i l� trang b�.!");
        sMsg.eType = SMT_NORMAL;
        sMsg.byConfirmType = SMCT_NONE;
        sMsg.byPriority = 0;
        sMsg.byParamSize = 0;
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        return 0;
      } else if (Item[nIdx].m_GeneratorParam.nVersion == 2) {
        KSystemMessage sMsg;
        sprintf(sMsg.szMessage, "Tr�ng b� �ang trong trang th�i b�o hi�m !");
        sMsg.eType = SMT_NORMAL;
        sMsg.byConfirmType = SMCT_NONE;
        sMsg.byPriority = 0;
        sMsg.byParamSize = 0;
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        return 0;
      }
      SendClientCmdBlockItem(Item[nIdx].GetID());
      return 1;
    } else {
      return 0;
    }
  } break;

  case GOI_UNBLOCK_ITEM: {
    KUiObjAtContRegion *pObject1 = (KUiObjAtContRegion *)uParam;

    if (CGOG_ITEM != pObject1->Obj.uGenre)
      break;

    int nIdx = pObject1->Obj.uId;
    if (nIdx > 0 && nIdx < MAX_ITEM) {
      if (Item[nIdx].GetGenre() != item_equip) {
        KSystemMessage sMsg;
        sprintf(sMsg.szMessage, "V�t ph�m kh�ng ph�i l� trang b� !");
        sMsg.eType = SMT_NORMAL;
        sMsg.byConfirmType = SMCT_NONE;
        sMsg.byPriority = 0;
        sMsg.byParamSize = 0;
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        return 0;
      } else if (Item[nIdx].m_GeneratorParam.nVersion != 2) {
        KSystemMessage sMsg;
        sprintf(sMsg.szMessage, "Tr�ng b� kh�ng trong trang th�i b�o hi�m !");
        sMsg.eType = SMT_NORMAL;
        sMsg.byConfirmType = SMCT_NONE;
        sMsg.byPriority = 0;
        sMsg.byParamSize = 0;
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        return 0;
      }

      SendClientCmdUnBlockItem(Item[nIdx].GetID());
      return 1;
    } else {
      return 0;
    }
  } break;

  case GOI_SHOP_OPEN:
    SendClientCmdOpenShop();
    break;

  case GOI_BUY_SHOP_CLOSE:

    Player[CLIENT_PLAYER_INDEX].m_dwTimeBuyShop = 0;
    SendClientCmdCloseBuyShop();
    break;

  case GOI_TRADE_NPC_REPAIR: {
    KUiObjAtContRegion *pObject1 = (KUiObjAtContRegion *)uParam;

    if (CGOG_ITEM != pObject1->Obj.uGenre)
      break;
    // ����ȥ�Ķ�����Ϊ�գ�������������
    int nIdx =
        pObject1->Obj.uId; // Player[CLIENT_PLAYER_INDEX].m_ItemList.Hand();
    if (nIdx > 0 && nIdx < MAX_ITEM) {
      if (Item[nIdx].GetGenre() != item_equip) {
        /*					KSystemMessage	sMsg;
                                                sprintf(sMsg.szMessage,
           MSG_TRADE_TASK_ITEM); sMsg.eType = SMT_NORMAL; sMsg.byConfirmType =
           SMCT_NONE; sMsg.byPriority = 0; sMsg.byParamSize = 0;
                                                CoreDataChanged(GDCNI_SYSTEM_MESSAGE,
           (unsigned int)&sMsg, 0);*/
        return 0;
      }
      /*else if (Item[nIdx].GetGenre() == item_equip &&
      Item[nIdx].GetDetailType() == equip_mask && Item[nIdx].GetDurability() >=
      0)
      {
              KSystemMessage	sMsg;
              sprintf(sMsg.szMessage, "Kh�ng th� s�a ch�a th�ng th��ng. H�y ��n
      <color=green>Bi�n Kinh 214/193<color> g�p <color=yellow>Th� R�n C�p
      Cao<color> �� ph�c h�i"); sMsg.eType = SMT_NORMAL; sMsg.byConfirmType =
      SMCT_NONE; sMsg.byPriority = 0; sMsg.byParamSize = 0;
              CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
              return 0;
      }*/
      else if (Item[nIdx].GetDurability() == -1 ||
               Item[nIdx].GetDurability() == Item[nIdx].GetMaxDurability()) {
        return 0;
      } else if (Item[nIdx].GetRepairPrice() <=
                 Player[CLIENT_PLAYER_INDEX].m_ItemList.GetEquipmentMoney()) {
        SendClientCmdRepair(Item[nIdx].GetID());
      } else {
        KSystemMessage sMsg;
        sprintf(sMsg.szMessage, MSG_SHOP_NO_MONEY);
        sMsg.eType = SMT_NORMAL;
        sMsg.byConfirmType = SMCT_NONE;
        sMsg.byPriority = 0;
        sMsg.byParamSize = 0;
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        return 0;
      }

      return 1;
    } else {
      return 0;
    }
  } break;
  case GOI_SWITCH_OBJECT:
    // uParam = (KUiObjAtContRegion*)pObject1 -> �������Ʒ����ǰ����Ϣ
    // nParam = (KUiObjAtContRegion*)pObject2 -> ���µ���Ʒ���������Ϣ
    {
      ItemPos P1, P2;
      int PartConvert[itempart_num] = {
          itempart_head,   itempart_weapon, itempart_amulet,
          itempart_cuff,   itempart_body,   itempart_belt,
          itempart_ring1,  itempart_ring2,  itempart_pendant,
          itempart_foot,   itempart_horse,  itempart_mask, // mat na
          itempart_fifong,
      };
      KUiObjAtContRegion *pObject1 = (KUiObjAtContRegion *)uParam;
      KUiObjAtContRegion *pObject2 = (KUiObjAtContRegion *)nParam;

      if (!pObject1 && !pObject2)
        break;

      if (pObject1) {
        switch (pObject1->eContainer) {
        case UOC_STORE_BOX:
          P1.nPlace = pos_repositoryroom;
          P1.nX = pObject1->Region.h;
          P1.nY = pObject1->Region.v;
          break;

        case UOC_RPNEW_BOX:
          P1.nPlace = pos_rpnew;
          P1.nX = pObject1->Region.h;
          P1.nY = pObject1->Region.v;
          break;

        case UOC_CHECK_BOX:
          P1.nPlace = pos_checkbox;
          P1.nX = pObject1->Region.h;
          P1.nY = pObject1->Region.v;
          break;
        case UOC_IMMEDIA_ITEM:
          P1.nPlace = pos_immediacy;
          P1.nX = pObject1->Region.h;
          P1.nY = pObject1->Region.v;
          break;
        case UOC_ITEM_TAKE_WITH:
          P1.nPlace = pos_equiproom;
          P1.nX = pObject1->Region.h;
          P1.nY = pObject1->Region.v;
          break;
        case UOC_EQUIPTMENT: {
          // TODO:��ʱû�еڶ�װ��
          if (pObject1->Region.h == 1)
            break;
          P1.nPlace = pos_equip;
          P1.nX = PartConvert[pObject1->Region.v];
        } break;

        case UOC_PG_BOX: {

          if (pObject1->Region.h == 1)
            break;
          P1.nPlace = pos_pgbox;
          P1.nX = pObject1->Region.v;
        } break;

        case UOC_TO_BE_TRADE:
          P1.nPlace = pos_traderoom;
          P1.nX = pObject1->Region.h;
          P1.nY = pObject1->Region.v;
          break;
        case UOC_NPC_SHOP:
          if (CGOG_NPCSELLITEM != pObject1->Obj.uGenre)
            break;

          int nIdx = 0;
          KItem *pItem = NULL;

          nIdx = BuySell.GetItemIndex(
              Player[CLIENT_PLAYER_INDEX].m_BuyInfo.m_nBuyIdx,
              pObject1->Obj.uId);
          pItem = BuySell.GetItem(nIdx);

          int nWidth, nHeight;
          ItemPos Pos;

          nWidth = pItem->GetWidth();
          nHeight = pItem->GetHeight();
          if (!Player[CLIENT_PLAYER_INDEX].m_ItemList.SearchPosition(
                  nWidth, nHeight, &Pos)) {
            nRet = 0;
            KSystemMessage sMsg;

            strcpy(sMsg.szMessage, MSG_SHOP_NO_ROOM);
            sMsg.eType = SMT_SYSTEM;
            sMsg.byConfirmType = SMCT_CLICK;
            sMsg.byPriority = 1;
            sMsg.byParamSize = 0;
            CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
            break;
          }
          if (Pos.nPlace != pos_equiproom) {
            nRet = 0;
            KSystemMessage sMsg;

            strcpy(sMsg.szMessage, MSG_SHOP_NO_ROOM);
            sMsg.eType = SMT_SYSTEM;
            sMsg.byConfirmType = SMCT_CLICK;
            sMsg.byPriority = 1;
            sMsg.byParamSize = 0;
            CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
            break;
          }
          if (Player[CLIENT_PLAYER_INDEX].m_ItemList.GetEquipmentMoney() <
              pItem->GetPrice()) {
            nRet = 0;
            KSystemMessage sMsg;

            strcpy(sMsg.szMessage, MSG_SHOP_NO_MONEY);
            sMsg.eType = SMT_SYSTEM;
            sMsg.byConfirmType = SMCT_CLICK;
            sMsg.byPriority = 1;
            sMsg.byParamSize = 0;
            CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
            break;
          }
          // �������Ķ�����Ϊ�գ�����������
          SendClientCmdBuy(pObject1->Obj.uId, pos_equiproom, Pos.nX, Pos.nY);
          break;
        }
      }

      if (pObject2) {
        switch (pObject2->eContainer) {
        case UOC_STORE_BOX:
          P2.nPlace = pos_repositoryroom;
          P2.nX = pObject2->Region.h;
          P2.nY = pObject2->Region.v;
          break;

        case UOC_RPNEW_BOX:
          P2.nPlace = pos_rpnew;
          P2.nX = pObject2->Region.h;
          P2.nY = pObject2->Region.v;
          break;

        case UOC_CHECK_BOX:
          P2.nPlace = pos_checkbox;
          P2.nX = pObject2->Region.h;
          P2.nY = pObject2->Region.v;
          break;
        case UOC_IMMEDIA_ITEM:
          P2.nPlace = pos_immediacy;
          P2.nX = pObject2->Region.h;
          P2.nY = pObject2->Region.v;
          break;
        case UOC_ITEM_TAKE_WITH:
          P2.nPlace = pos_equiproom;
          P2.nX = pObject2->Region.h;
          P2.nY = pObject2->Region.v;
          break;
        case UOC_EQUIPTMENT: {
          // TODO:��ʱû�еڶ�װ��
          if (pObject2->Region.h == 1)
            break;
          P2.nPlace = pos_equip;
          P2.nX = PartConvert[pObject2->Region.v];
        } break;

        case UOC_PG_BOX: {
          // TODO:��ʱû�еڶ�װ��
          if (pObject2->Region.h == 1)
            break;
          P2.nPlace = pos_pgbox;
          P2.nX = pObject2->Region.v;
        } break;

        case UOC_TO_BE_TRADE:
          P2.nPlace = pos_traderoom;
          P2.nX = pObject2->Region.h;
          P2.nY = pObject2->Region.v;
          break;
        case UOC_NPC_SHOP:
          break;
        }
      }
      if (!pObject1) {
        memcpy(&P1, &P2, sizeof(P1));
      }
      if (!pObject2) {
        memcpy(&P2, &P1, sizeof(P1));
      }
      Player[CLIENT_PLAYER_INDEX].MoveItem(P1, P2);
    }
    break;

  // ��ҵ���Ի���
  case GOI_INFORMATION_CONFIRM_NOTIFY: {
    PLAYER_SELECTUI_COMMAND command;
    command.nSelectIndex = 0;
    Player[CLIENT_PLAYER_INDEX].OnSelectFromUI(&command, UI_TALKDIALOG);
    break;
  }

  // ����ѡ���
  // nParma = nAnswerIndex
  case GOI_QUESTION_CHOOSE:
    if (g_bUISelLastSelCount == 0)
      break;
    {
      PLAYER_SELECTUI_COMMAND command;
      command.nSelectIndex = nParam;
      Player[CLIENT_PLAYER_INDEX].OnSelectFromUI(&command, UI_SELECTDIALOG);
    }
    break;

  // ʹ����Ʒ
  // uParam = (KUiObjAtRegion*)pInfo -> ��Ʒ�������Լ���Ʒԭ���ڷŵ�λ��
  // nParam = ��Ʒʹ��ǰ���õ�λ�ã�ȡֵΪö������UIOBJECT_CONTAINER��
  case GOI_USE_ITEM:
    // to do: waiting for...
    if (uParam) {
      KUiObjAtRegion *pInfo = (KUiObjAtRegion *)uParam;
      int nPlace = nParam;
      ItemPos Pos;
      switch (nPlace) {
      case UOC_ITEM_TAKE_WITH:
        Pos.nPlace = pos_equiproom;
        break;
      case UOC_IMMEDIA_ITEM:
        Pos.nPlace = pos_immediacy;
        break;
      default:
        Pos.nPlace = -1;
        break;
      }
      Pos.nX = pInfo->Region.h;
      Pos.nY = pInfo->Region.v;
      if (pInfo->Obj.uGenre == CGOG_ITEM && pInfo->Obj.uId > 0 &&
          Pos.nPlace != -1)
        Player[CLIENT_PLAYER_INDEX].ApplyUseItem(pInfo->Obj.uId, Pos);
    }
    break;

  // ����װ��
  // uParam = (KUiObjAtRegion*)pInfo -> װ�������ݺͷ���λ����Ϣ
  //			KUiObjAtRegion::Region::h ��ʾ���ڵڼ���װ��
  //			KUiObjAtRegion::Region::v
  //��ʾ�����ĸ�λ�õ�װ��,��ֵΪ÷������
  //			UI_EQUIPMENT_POSITION��ȡֵ֮һ����ο�UI_EQUIPMENT_POSITION��ע�͡�
  case GOI_WEAR_EQUIP:
    // to do: waiting for...
    if (uParam) {
      KUiObjAtRegion *pInfo = (KUiObjAtRegion *)uParam;
    }
    break;

  // ʩչ�书/����
  // uParam = (KUiGameObject*)pInfo -> ��������
  case GOI_USE_SKILL:
    if (uParam) {
      // to do:wating for...
      KUiGameObject *pInfo = (KUiGameObject *)uParam;
    }
    break;

  // ������������
  // uParam = (KUiGameObject*)pSKill, ������Ϣ
  // nParam = ����λ�ã�0��ʾΪ�Ҽ����ܣ�1��4��ʾΪF1��F4����
  case GOI_SET_IMMDIA_SKILL:
    if (uParam) {
      KUiGameObject *pSkill = (KUiGameObject *)uParam;
      if (nParam == 0)
      // to do : modify;
      {
        if ((int)pSkill->uId > 0)
          Player[CLIENT_PLAYER_INDEX].SetLeftSkill((int)pSkill->uId);
        else if ((int)(pSkill->uId) == -1) // ���õ�ǰ������Ϊ����
        {
          int nDetailType =
              Player[CLIENT_PLAYER_INDEX].m_ItemList.GetWeaponType();
          int nParticularType =
              Player[CLIENT_PLAYER_INDEX].m_ItemList.GetWeaponParticular();

          // ��������
          if (nDetailType == 0) {
            Player[CLIENT_PLAYER_INDEX].SetLeftSkill(
                g_nMeleeWeaponSkill[nParticularType]);
          } // Զ������
          else if (nDetailType == 1) {
            Player[CLIENT_PLAYER_INDEX].SetLeftSkill(
                g_nRangeWeaponSkill[nParticularType]);
          } // ����
          else if (nDetailType == -1) {
            Player[CLIENT_PLAYER_INDEX].SetLeftSkill(g_nHandSkill);
          }
        }
      } else if (nParam == 1) {
        if ((int)pSkill->uId > 0)
          Player[CLIENT_PLAYER_INDEX].SetRightSkill((int)pSkill->uId);
        else if ((int)(pSkill->uId) == -1) {
          int nDetailType =
              Player[CLIENT_PLAYER_INDEX].m_ItemList.GetWeaponType();
          int nParticularType =
              Player[CLIENT_PLAYER_INDEX].m_ItemList.GetWeaponParticular();

          if (nDetailType == 0) {
            Player[CLIENT_PLAYER_INDEX].SetRightSkill(
                g_nMeleeWeaponSkill[nParticularType]);
          } else if (nDetailType == 1) {
            Player[CLIENT_PLAYER_INDEX].SetRightSkill(
                g_nRangeWeaponSkill[nParticularType]);
          } else if (nDetailType == -1) {
            Player[CLIENT_PLAYER_INDEX].SetRightSkill(g_nHandSkill);
          }
        }
      }
    }
    break;

  // ��ǿһ�ּ��ܣ���һ�μ�һ��
  // uParam = ��������
  // nParam = (uint)����id
  case GOI_TONE_UP_SKILL:
    Player[CLIENT_PLAYER_INDEX].ApplyAddSkillLevel((int)nParam, 1);
    break;

    // ��ǿһЩ���Ե�ֵ��һ�μ�һ��
    // uParam = ��ʾҪ��ǿ�����ĸ����ԣ�ȡֵΪUI_PLAYER_ATTRIBUTE��÷��ֵ֮һ
  case GOI_TONE_UP_ATTRIBUTE:
    switch (uParam) {
    case UIPA_STRENGTH: // ����
      Player[CLIENT_PLAYER_INDEX].ApplyAddBaseAttribute(0, nParam);
      break;
    case UIPA_DEXTERITY: // ����
      Player[CLIENT_PLAYER_INDEX].ApplyAddBaseAttribute(1, nParam);
      break;
    case UIPA_VITALITY: // ����
      Player[CLIENT_PLAYER_INDEX].ApplyAddBaseAttribute(2, nParam);
      break;
    case UIPA_ENERGY: // ����
      Player[CLIENT_PLAYER_INDEX].ApplyAddBaseAttribute(3, nParam);
      break;
    }
    break;

  // ��Ӧ/�ܾ���������
  // uParam = (KUiPlayerItem*)pRequestPlayer ������������
  // nParam = (int)(bool)bAccept �Ƿ��������
  case GOI_TRADE_INVITE_RESPONSE:
    if (uParam) {
      KTrade::ReplyInvite(((KUiPlayerItem *)uParam)->nIndex, nParam);
    }
    break;

  // ����һ������������Ʒ
  // uParam = (KUiObjAtRegion*) pObject ->
  // ��Ʒ��Ϣ������������ϢΪ�ڽ��׽����е����� nParam = bAdd ->
  // 0ֵ��ʾ���٣�1ֵ��ʾ���� Remark :
  // �����Ʒ�ǽ�Ǯ�Ļ�����KUiObjAtRegion::Obj::uId��ʾ�ѽ�Ǯ�����Ϊ���ֵ����nParam�����塣
  case GOI_TRADE_DESIRE_ITEM:
    if (uParam) {
      KUiObjAtRegion *pInfo = (KUiObjAtRegion *)uParam;
      if (pInfo->Obj.uGenre != CGOG_MONEY)
        break;
      Player[CLIENT_PLAYER_INDEX].TradeMoveMoney(pInfo->Obj.uId);
    }
    break;

  // ���޽�������
  // nParam = bWilling
  case GOI_TRADE_WILLING:
    if (Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].GetMenuState() ==
        PLAYER_MENU_STATE_TRADEOPEN) {
      Player[CLIENT_PLAYER_INDEX].TradeApplyClose();
    } else {
      Player[CLIENT_PLAYER_INDEX].TradeApplyOpen((char *)uParam, nParam);
    }
    break;

  // ��������
  // nParam = (int)(book)bLock �Ƿ�����
  case GOI_TRADE_LOCK:
    if (!Player[CLIENT_PLAYER_INDEX].CheckTrading())
      break;
    if (Player[CLIENT_PLAYER_INDEX].m_cTrade.m_nTradeLock)
      Player[CLIENT_PLAYER_INDEX].TradeApplyLock(0);
    else
      Player[CLIENT_PLAYER_INDEX].TradeApplyLock(1);
    break;

  // ����
  case GOI_TRADE:
    if (!Player[CLIENT_PLAYER_INDEX].CheckTrading())
      break;
    if (Player[CLIENT_PLAYER_INDEX].m_cTrade.m_nTradeLock != 1 ||
        Player[CLIENT_PLAYER_INDEX].m_cTrade.m_nTradeDestLock != 1)
      break;
    if (Player[CLIENT_PLAYER_INDEX].m_cTrade.m_nTradeState == 0) {
      Player[CLIENT_PLAYER_INDEX].TradeDecision(1); // ����ȷ��
    } else {
      Player[CLIENT_PLAYER_INDEX].TradeDecision(2); // ����ȷ��ȡ��
    }
    break;

  // ����ȡ��
  case GOI_TRADE_CANCEL:
    if (!Player[CLIENT_PLAYER_INDEX].CheckTrading())
      break;
    Player[CLIENT_PLAYER_INDEX].TradeDecision(0); // ����ȡ��
    break;

  // ��ѯ�Ƿ���Զ�ĳ����������Ϸ����
  // uParam = (KUiGameObject*)pObject -> ��Ʒ��Ϣ
  // nParam =
  // ���϶������ĵ�ǰ���꣨�������꣩���������ڵ�16λ���������ڸ�16λ��(���ص�����)
  // Return = �Ƿ���Է���
  case GOI_DROP_ITEM_QUERY:
    // to do : waiting for...
    break;

  case GOI_SEND_MSG:
    if (uParam && nParam)
      Player[CLIENT_PLAYER_INDEX].SendChat((KUiMsgParam *)nParam,
                                           (char *)uParam);
    break;
  case GOI_SET_SEND_CHAT_CHANNEL: // ���õ�ǰ������Ϣ��Ƶ��
    if (uParam) {
      KUiChatChannel *pChannelInfo =
          (KUiChatChannel *)uParam; // pChannelInfo Ҫ���õ�Ƶ������Ϣ
      Player[CLIENT_PLAYER_INDEX].m_cChat.SetCurChannel(
          pChannelInfo->nChannelNo, pChannelInfo->uChannelId,
          pChannelInfo->nChannelIndex);
    }
    break;
  // ���õ�ǰ������Ϣ��Ƶ��Ϊ��ĳ�˵���
  // uParam = (KUiPlayerItem*) pFriend
  case GOI_SET_SEND_WHISPER_CHANNEL:
    if (uParam) {
      if (((KUiPlayerItem *)uParam)->nIndex) {
        int nIdx = NpcSet.SearchName(((KUiPlayerItem *)uParam)->Name);
        if (nIdx > 0) {
          Player[CLIENT_PLAYER_INDEX].m_cChat.SetCurChannel(
              CHAT_CUR_CHANNEL_SCREENSINGLE, Npc[nIdx].m_dwID, 0);
        } else {
          KSystemMessage sMsg;
          sprintf(sMsg.szMessage, MSG_CHAT_FRIEND_NOT_NEAR,
                  ((KUiPlayerItem *)uParam)->Name);
          sMsg.eType = SMT_NORMAL;
          sMsg.byConfirmType = SMCT_NONE;
          sMsg.byPriority = 0;
          sMsg.byParamSize = 0;
          CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
        }
      } else {
        KSystemMessage sMsg;
        sprintf(sMsg.szMessage, MSG_CHAT_FRIEND_NOT_ONLINE,
                ((KUiPlayerItem *)uParam)->Name);
        sMsg.eType = SMT_NORMAL;
        sMsg.byConfirmType = SMCT_NONE;
        sMsg.byPriority = 0;
        sMsg.byParamSize = 0;
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
      }
    }
    break;

  case GOI_SET_RECEIVE_CHAT_CHANNEL: // ���ö���/ȡ����ϢƵ��
    if (uParam) {
      // uParam = (KUiChatChannel*) pChannelInfo Ҫ���õ�Ƶ������Ϣ
      // nParam = (int)(bool) bEnable �Ƿ���
      KUiChatChannel *pChannelInfo =
          (KUiChatChannel *)uParam; // pChannelInfo Ҫ���õ�Ƶ������Ϣ
      if (nParam) {
        Player[CLIENT_PLAYER_INDEX].m_cChat.AddChannel(
            pChannelInfo->nChannelNo);
      } else {
        Player[CLIENT_PLAYER_INDEX].m_cChat.SubChannel(
            pChannelInfo->nChannelNo);
      }
    }
    break;

  // �½����������
  // uParam = (const char*) pGroupName
  // Return = (int)(bool) bSuccessed
  case GOI_CHAT_GROUP_NEW:
    Player[CLIENT_PLAYER_INDEX].m_cChat.AddTeam(
        Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].Name, (char *)uParam);
    CoreDataChanged(GDCNI_CHAT_GROUP, 0, 0);
    break;

  // ���������������
  // uParam = (const char*) pGroupName
  // nParam = nIndex ������
  // Return = (int)(bool) bSuccessed
  case GOI_CHAT_GROUP_RENAME:
    Player[CLIENT_PLAYER_INDEX].m_cChat.RenameTeam(
        nParam, (char *)uParam, Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].Name);
    CoreDataChanged(GDCNI_CHAT_GROUP, 0, 0);
    break;

  // ɾ�����������
  // nParam = nIndex ������
  // Return = (int)(bool) bSuccessed
  case GOI_CHAT_GROUP_DELETE:
    Player[CLIENT_PLAYER_INDEX].m_cChat.DeleteTeam(
        nParam, Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].Name);
    CoreDataChanged(GDCNI_CHAT_GROUP, 0, 0);
    break;

  // ������������
  // uParam = (KUiPlayerItem*)pFriend
  //			KUiPlayerItem::nData = 0
  case GOI_CHAT_FRIEND_ADD: {
    if (g_pClient) {
      size_t pckgsize =
          sizeof(tagExtendProtoHeader) + sizeof(ASK_ADDFRIEND_CMD);

      tagExtendProtoHeader *pExHeader =
          (tagExtendProtoHeader *)_alloca(pckgsize);
      pExHeader->ProtocolType = c2s_extendfriend;
      pExHeader->wLength = pckgsize - 1;

      ASK_ADDFRIEND_CMD *pAafCmd = (ASK_ADDFRIEND_CMD *)(pExHeader + 1);
      pAafCmd->ProtocolFamily = pf_friend;
      pAafCmd->ProtocolID = friend_c2c_askaddfriend;
      pAafCmd->pckgid = -1;
      strncpy(pAafCmd->dstrole, ((KUiPlayerItem *)uParam)->Name, _NAME_LEN);
      g_pClient->SendPackToServer(pExHeader, pckgsize);

      // Player[CLIENT_PLAYER_INDEX].m_cChat.ApplyAddFriend(((KUiPlayerItem*)uParam)->uId);

      KSystemMessage sMsg;
      sprintf(sMsg.szMessage, MSG_CHAT_APPLY_ADD_FRIEND,
              ((KUiPlayerItem *)uParam)->Name);
      sMsg.eType = SMT_NORMAL;
      sMsg.byConfirmType = SMCT_NONE;
      sMsg.byPriority = 0;
      sMsg.byParamSize = 0;
      CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
    }
  } break;
  // ɾ���������
  // uParam = (KUiPlayerItem*)pFriend
  //			KUiPlayerItem::nData = 0
  // nParam = nGroupIndex �������ڵ��������
  // Return = (int)(bool) bSuccessed
  case GOI_CHAT_FRIEND_DELETE: {
    Player[CLIENT_PLAYER_INDEX].m_cChat.ApplyDeleteFriend(
        ((KUiPlayerItem *)uParam)->uId, nParam,
        Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].Name);

    KSystemMessage sMsg;
    sprintf(sMsg.szMessage, MSG_CHAT_DELETE_FRIEND,
            ((KUiPlayerItem *)uParam)->Name);
    sMsg.eType = SMT_NORMAL;
    sMsg.byConfirmType = SMCT_NONE;
    sMsg.byPriority = 0;
    sMsg.byParamSize = 0;
    CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
  } break;

  // �����Ƶ�����
  // uParam = (KUiPlayerItem*)pFriend
  //			KUiPlayerItem::nData = 0
  // nParam = nGroupIndex �������������������
  case GOI_CHAT_FRIEND_MOVE: {
    KUiPlayerItem *pPlayer = (KUiPlayerItem *)uParam;
    int nSrcTeamNo =
        Player[CLIENT_PLAYER_INDEX].m_cChat.GetTeamNo(pPlayer->uId);
    if (nSrcTeamNo == -1) {
      // ʧ�ܣ������Ҫ����Ϣ���ڴ�
      break;
    }
    if (Player[CLIENT_PLAYER_INDEX].m_cChat.OneFriendChangeTeam(
            pPlayer->uId, nSrcTeamNo, nParam)) { // �ɹ�
      CoreDataChanged(GDCNI_CHAT_GROUP, 0, 0);
    } else {
      // ʧ�ܣ������Ҫ����Ϣ���ڴ�
    }
  } break;

  // ��������һ��ѶϢ
  // uParam = (KUiChatMessage*)pMessage ��Ϣ����
  // nParam = (KUiPlayerItem*)pFriend   ����ѶϢ�ĺ���
  case GOI_CHAT_WORDS_TO_FRIEND: {
    char szSentence[MAX_SENTENCE_LENGTH];
    KUiChatMessage *pMsg = (KUiChatMessage *)uParam;
    KUiMsgParam sMsg;

    sMsg.eGenre = MSG_G_CHAT;
    sMsg.szName[0] = 0;
    memset(sMsg.cChatPrefix, 0, sizeof(sMsg.cChatPrefix));
    sMsg.cChatPrefixLen = sizeof(unsigned int);
    sMsg.cChatPrefix[0] = ((char *)(&pMsg->uColor))[3];
    sMsg.cChatPrefix[1] = ((char *)(&pMsg->uColor))[2];
    sMsg.cChatPrefix[2] = ((char *)(&pMsg->uColor))[1];
    sMsg.cChatPrefix[3] = ((char *)(&pMsg->uColor))[0];

    if (pMsg->nContentLen >= MAX_SENTENCE_LENGTH) {
      memcpy(szSentence, pMsg->szContent, MAX_SENTENCE_LENGTH - 1);
      szSentence[MAX_SENTENCE_LENGTH - 1] = 0;
      sMsg.nMsgLength = MAX_SENTENCE_LENGTH - 1;
    } else {
      memcpy(szSentence, pMsg->szContent, pMsg->nContentLen);
      szSentence[pMsg->nContentLen] = 0;
      sMsg.nMsgLength = pMsg->nContentLen;
    }

    Player[CLIENT_PLAYER_INDEX].m_cChat.QQSendSentence(
        ((KUiPlayerItem *)nParam)->uId, ((KUiPlayerItem *)nParam)->nIndex,
        &sMsg, szSentence);
  } break;

  // �Ա���Ҫ���Լ�Ϊ���ѵĻظ�
  // uParam = (KUiPlayerItem*)pRequestPlayer ������������
  // nParam = (int)(bool)bAccept �Ƿ��������
  case GOI_CHAT_FRIEND_INVITE:
    if (uParam) {
      if (g_pClient) {
        size_t pckgsize =
            sizeof(tagExtendProtoHeader) + sizeof(REP_ADDFRIEND_CMD);

        tagExtendProtoHeader *pExHeader =
            (tagExtendProtoHeader *)_alloca(pckgsize);
        pExHeader->ProtocolType = c2s_extendfriend;
        pExHeader->wLength = pckgsize - 1;

        REP_ADDFRIEND_CMD *pRafCmd = (REP_ADDFRIEND_CMD *)(pExHeader + 1);
        pRafCmd->ProtocolFamily = pf_friend;
        pRafCmd->ProtocolID = friend_c2c_repaddfriend;
        pRafCmd->pckgid = -1;
        strncpy(pRafCmd->dstrole, ((KUiPlayerItem *)uParam)->Name, _NAME_LEN);
        pRafCmd->answer = nParam ? answerAgree : answerDisagree;
        g_pClient->SendPackToServer(pExHeader, pckgsize);

        // if (nParam)
        //{
        //	Player[CLIENT_PLAYER_INDEX].ChatAddFriend(((KUiPlayerItem*)uParam)->nIndex);
        // }
        // else
        //{
        //	Player[CLIENT_PLAYER_INDEX].ChatRefuseFriend(((KUiPlayerItem*)uParam)->nIndex);
        // }
      }
    }
    break;

  case GOI_OPTION_SETTING: // ѡ������
    if (uParam == OPTION_DYNALIGHT) {
      g_ScenePlace.EnableDynamicLights(nParam != 0);
      if (g_pRepresent)
        g_pRepresent->SetOption(DYNAMICLIGHT, nParam != 0);
    } else if (uParam == OPTION_PERSPECTIVE) {
      if (g_pRepresent)
        g_pRepresent->SetOption(PERSPECTIVE, nParam != 0);
    } else if (uParam == OPTION_MUSIC_VALUE)
      Option.SetMusicVolume(nParam);
    else if (uParam == OPTION_SOUND_VALUE)
      Option.SetSndVolume(nParam);
    else if (uParam == OPTION_BRIGHTNESS)
      Option.SetGamma(nParam);
    else if (uParam == OPTION_WEATHER)
      g_ScenePlace.EnableWeather(nParam);
    else if (uParam == OPTION_HIDE_PLAYER)
      // Player[CLIENT_PLAYER_INDEX].m_bHidePlayer = nParam;
      Player[CLIENT_PLAYER_INDEX].m_HideGame1 = !nParam;
    else if (uParam == OPTION_HIDE_SKILL)
      Player[CLIENT_PLAYER_INDEX].m_bHideSkill = nParam;
    else if (uParam == OPTION_HIDE_NPC)
      //		Player[CLIENT_PLAYER_INDEX].m_bHideNpc = nParam;
      Player[CLIENT_PLAYER_INDEX].m_HideRes = !nParam;

    break;

  case GOI_VIEW_PLAYERITEM: {
    g_cViewItem.ApplyViewEquip(uParam);
    //			if
    //(Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_FightMode == 0)
    //				g_cViewItem.ApplyViewEquip(uParam);
    //			else
    //			{
    //				KSystemMessage	sMsg;
    //				sprintf(sMsg.szMessage, MSG_CAN_NOT_VIEW_ITEM);
    //				sMsg.eType = SMT_NORMAL;
    //				sMsg.byConfirmType = SMCT_NONE;
    //				sMsg.byPriority = 0;
    //				sMsg.byParamSize = 0;
    //				CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned
    //int)&sMsg, 0);
    //			}
  } break;
  case GOI_VIEW_PLAYERITEM_END:
    g_cViewItem.DeleteAll();
    break;

  case GOI_PLAYER_ACTION: {
    switch (uParam) {
    case PA_RUN:
      Player[CLIENT_PLAYER_INDEX].m_RunStatus =
          !Player[CLIENT_PLAYER_INDEX].m_RunStatus;
      break;
    case PA_SIT:
      if (!Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_bRideHorse) {
        if (Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_Doing != do_sit) {
          Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SendCommand(do_sit);
          SendClientCmdSit(TRUE);
          int nX1, nY1;
          Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].GetMpsPos(&nX1, &nY1);
        } else {
          Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].SendCommand(do_stand);
          SendClientCmdSit(FALSE);
        }
      } else {
        KSystemMessage Msg;
        Msg.byConfirmType = SMCT_CLICK;
        Msg.eType = SMT_PLAYER;
        Msg.byPriority = 1;
        Msg.byParamSize = 0;
        strcpy(Msg.szMessage, "Kh�ng th� ng�i khi �ang � tr�n ng�a !");
        CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&Msg, 0);
      }
      break;
    case PA_RIDE:
      SendClientCmdRide();
      break;
    }
  } break;
  case GOI_PK_SETTING: // ����PK
    // nParam = (int)(bool)bEnable	�Ƿ�����pk
    Player[CLIENT_PLAYER_INDEX].m_cPK.ApplySetNormalPKState(nParam);
    break;

  // ��ɱĳ��
  // uParam = (KUiPlayerItem*) pTarget	��ɱĿ��
  case GOI_REVENGE_SOMEONE:
    if (uParam) {
      KUiPlayerItem *pTarget = (KUiPlayerItem *)uParam;
      // if (Player[CLIENT_PLAYER_INDEX].m_cPK.GetPKValue() <
      // MAX_DEATH_PUNISH_PK_VALUE)
      //{
      Player[CLIENT_PLAYER_INDEX].m_cPK.ApplyEnmityPK(pTarget->uId);
      /*}
      else
      {
      KSystemMessage	sMsg;
      sMsg.eType = SMT_NORMAL;
      sMsg.byConfirmType = SMCT_NONE;
      sMsg.byPriority = 0;
      sMsg.byParamSize = 0;
      sprintf(sMsg.szMessage, "Kh�ng th� c�u s�t khi PK 10 !");
      CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
      }*/
    }
    break;
  // ����ĳ��
  // uParam = (KUiPlayerItem*) pTarget	����Ŀ��
  case GOI_FOLLOW_SOMEONE:
    if (uParam) {
      KUiPlayerItem *pTarget = (KUiPlayerItem *)uParam;
      if (Npc[pTarget->nIndex].m_Kind == kind_player)
        Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_nPeopleIdx =
            pTarget->nIndex;
      Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_nPeopleIdxCheckClient =
          (pTarget->nIndex + 46) * 13 + 15743;
    }
    break;

  // ��ʾ���������
  // nParam = (int)(bool)bShow	�Ƿ���ʾ
  case GOI_SHOW_PLAYERS_NAME:
    NpcSet.SetShowNameFlag(nParam);
    break;

  case GOI_OPEN_SHOP_GOLD:
    SendClientCmdOpenShopGold();
    break;

    //	case GOI_TOADO:// Dich Chuyen
    //		SendClientToaDo(uParam);
    //		break;//toa do

  case GOI_OPEN_TOP_TK_NEW:
    SendClientCmdOpenTopTKNew();
    break;

  // ��ʾ���������
  // nParam = (int)(bool)bShow	�Ƿ���ʾ
  case GOI_SHOW_PLAYERS_LIFE:
    NpcSet.SetShowLifeFlag(nParam);
    break;
  // ��ʾ���������
  // nParam = (int)(bool)bShow	�Ƿ���ʾ
  case GOI_SHOW_PLAYERS_MANA:
    NpcSet.SetShowManaFlag(nParam);
    break;
  case GOI_ADD_UI_CMD_SCRIPT:
    SendUiCmdScript(uParam, (char *)nParam);
    break;
  default:
    nRet = 0;
    break;
  }

  return nRet;
}

//--------------------------------------------------------------------------
//	���ܣ����������豸�����������Ϣ
//--------------------------------------------------------------------------
void KCoreShell::ProcessInput(unsigned int uMsg, unsigned int uParam,
                              int nParam) {
  Player[CLIENT_PLAYER_INDEX].ProcessInputMsg(uMsg, uParam, nParam);
}

int KCoreShell::CheckMapLoiDai() {
  int Map = SubWorld[Npc[CLIENT_PLAYER_INDEX].m_SubWorldIndex].m_SubWorldID;
  if (Map != 258)
    return true;

  return false;
}

int KCoreShell::FindSelectNPC(int x, int y, int nRelation, bool bSelect,
                              void *pReturn, int &nKind) {
  Player[CLIENT_PLAYER_INDEX].FindSelectNpc(x, y, nRelation);
  int nT = Player[CLIENT_PLAYER_INDEX].GetTargetNpc();

  if (!bSelect)
    Player[CLIENT_PLAYER_INDEX].SetTargetNpc(0);

  if (nT > 0) {
    if (pReturn) {
      KUiPlayerItem *p = (KUiPlayerItem *)pReturn;
      strncpy(p->Name, Npc[nT].Name, 32);
      p->nIndex = Npc[nT].m_Index;
      p->uId = Npc[nT].m_dwID;
      p->nData = Npc[nT].GetMenuState();
    }
    nKind = Npc[nT].m_Kind;
    return true;
  }
  return false;
}

int KCoreShell::FindSelectObject(int x, int y, bool bSelect, int &nObjectIdx,
                                 int &nKind) {
  Player[CLIENT_PLAYER_INDEX].FindSelectObject(x, y);
  int nT = Player[CLIENT_PLAYER_INDEX].GetTargetObj();

  if (!bSelect)
    Player[CLIENT_PLAYER_INDEX].SetTargetObj(0);

  if (nT > 0) {
    nObjectIdx = nT;
    nKind = Object[nT].m_nKind;
    return true;
  }
  return false;
}

int KCoreShell::FindSpecialNPC(char *Name, void *pReturn, int &nKind) {
  if (Name == NULL || Name[0] == 0)
    return false;
  for (int nT = 0; nT < MAX_NPC; nT++) {
    if (strcmp(Npc[nT].Name, Name) == 0) {
      if (pReturn) {
        KUiPlayerItem *p = (KUiPlayerItem *)pReturn;
        strncpy(p->Name, Npc[nT].Name, 32);
        p->nIndex = Npc[nT].m_Index;
        p->uId = Npc[nT].m_dwID;
        p->nData = Npc[nT].GetMenuState();
      }
      nKind = Npc[nT].m_Kind;
      return true;
    }
  }
  return false;
}

int KCoreShell::ChatSpecialPlayer(void *pPlayer, const char *pMsgBuff,
                                  unsigned short nMsgLength) {
  KUiPlayerItem *p = (KUiPlayerItem *)pPlayer;
  if (p) {
    if (p->nIndex >= 0 && p->nIndex < MAX_NPC) {
      int nTalker = p->nIndex;
      if (Npc[nTalker].m_Kind == kind_player && Npc[nTalker].m_dwID == p->uId) {
        Npc[nTalker].SetChatInfo(p->Name, pMsgBuff, nMsgLength);
        return true;
      }
    }
  }

  return false;
}

void KCoreShell::ApplyAddTeam(void *pPlayer) {
  KUiPlayerItem *p = (KUiPlayerItem *)pPlayer;
  if (p) {
    if (p->nIndex >= 0 && p->nIndex < MAX_NPC &&
        !Player[CLIENT_PLAYER_INDEX].CheckTrading()) {
      Player[CLIENT_PLAYER_INDEX].ApplyAddTeam(p->nIndex);
    }
  }
}

void KCoreShell::TradeApplyStart(void *pPlayer) {
  KUiPlayerItem *p = (KUiPlayerItem *)pPlayer;
  if (p) {
    if (p->nIndex >= 0 && p->nIndex < MAX_NPC &&
        !Player[CLIENT_PLAYER_INDEX].CheckTrading()) {
      Player[CLIENT_PLAYER_INDEX].TradeApplyStart(p->nIndex);
    }
  }
}

int KCoreShell::UseSkill(int x, int y, int nSkillID) {
  if (Player[CLIENT_PLAYER_INDEX].CheckTrading())
    return 0;

  int nX = x;
  int nY = y;
  int nZ = 0;
  g_ScenePlace.ViewPortCoordToSpaceCoord(nX, nY, nZ);
  int nIndex = Player[CLIENT_PLAYER_INDEX].m_nIndex;

  if (Npc[nIndex].IsCanInput() ||
      (nSkillID == 416 &&
       Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_CurrentLife > 100)) {
    int nIdx = 0;
    g_DebugLog("Su dung skill 416\n");
    nIdx = Npc[nIndex].m_SkillList.FindSame(nSkillID);
    Npc[nIndex].SetActiveSkill(nIdx);
    //	Player[CLIENT_PLAYER_INDEX].m_nAutoStarSkillIDx = nIdx;
  } else {
    g_DebugLog("[skill]return");
    return 0;
  }

  if (Npc[nIndex].m_ActiveSkillID > 0) {
    ISkill *pISkill = g_SkillManager.GetSkill(Npc[nIndex].m_ActiveSkillID, 1);
    if (!pISkill)
      return 0;

    if (pISkill->IsAura())
      return 0;

    int nAttackRange = pISkill->GetAttackRadius();

    int nTargetIdx = 0;
    // ����Object / Enemy / Ally �����ȼ��ҵ���Ҫ��Ķ���id

    if (pISkill->IsTargetAlly()) {
      Player[CLIENT_PLAYER_INDEX].FindSelectNpc(x, y, relation_ally);
      if (Player[CLIENT_PLAYER_INDEX].GetTargetNpc()) {
        g_DebugLog("Test Skill 1\n");
        nTargetIdx = Player[CLIENT_PLAYER_INDEX].GetTargetNpc();
      }
    }

    if (pISkill->IsTargetEnemy()) {
      Player[CLIENT_PLAYER_INDEX].FindSelectNpc(x, y, relation_enemy);
      if (Player[CLIENT_PLAYER_INDEX].GetTargetNpc()) {
        g_DebugLog("Test Skill 2\n");
        nTargetIdx = Player[CLIENT_PLAYER_INDEX].GetTargetNpc();
      }
    }

    if (pISkill->IsTargetObj()) {
      Player[CLIENT_PLAYER_INDEX].FindSelectObject(x, y);
      if (Player[CLIENT_PLAYER_INDEX].GetTargetObj()) {
        g_DebugLog("Test Skill 3\n");
        nTargetIdx = Player[CLIENT_PLAYER_INDEX].GetTargetObj();
      }
    }
    // ������ܱ���ָ�����󣬶���ǰλ���޶���Ļ���ֱ���˳�
    if (pISkill->IsTargetOnly() && !nTargetIdx) {
      Npc[nIndex].m_nPeopleIdx = 0;

      Npc[nIndex].m_nPeopleIdxCheckClient = 0;

      g_DebugLog("Test Skill 4\n");
      Player[CLIENT_PLAYER_INDEX].SetTargetNpc(0);
      return 0;
    }

    if (nIndex == nTargetIdx) {
      Npc[nIndex].m_nPeopleIdx = 0;

      Npc[nIndex].m_nPeopleIdxCheckClient = 0;

      g_DebugLog("Test Skill 5\n");
      Player[CLIENT_PLAYER_INDEX].SetTargetNpc(0);
      return 0;
    }

    if ((!Npc[nIndex].m_SkillList.CanCast(
            Npc[nIndex].m_ActiveSkillID,
            SubWorld[Npc[nIndex].m_SubWorldIndex].m_dwCurrentTime)) ||
        (!Npc[nIndex].Cost(pISkill->GetSkillCostType(),
                           pISkill->GetSkillCost(&Npc[nIndex]), TRUE))) {
      Npc[nIndex].m_nPeopleIdx = 0;

      Npc[nIndex].m_nPeopleIdxCheckClient = 0;

      g_DebugLog("Test Skill 6\n");
      Player[CLIENT_PLAYER_INDEX].SetTargetNpc(0);
      return 0;
    }

    // �޶���ֱ�ӷ�����
    if (!nTargetIdx) {
      int nXa, nYa;

      SubWorld[0].Map2Mps(Npc[nIndex].m_RegionIndex, Npc[nIndex].m_MapX,
                          Npc[nIndex].m_MapY, Npc[nIndex].m_OffX,
                          Npc[nIndex].m_OffY, &nXa, &nYa);

      int distance = SubWorld[0].GetDistance(nXa, nYa, nX, nY);

      if (distance > pISkill->GetAttackRadius() &&
          pISkill->GetAttackRadius() >= 200) {
        return 0;
      }

      g_DebugLog("Test Skill 7\n");
      Npc[nIndex].SendCommand(do_skill, Npc[nIndex].m_ActiveSkillID, nX, nY);
      // Send to Server
      SendClientCmdSkill(Npc[nIndex].m_ActiveSkillID, nX, nY);

    } else {
      int distance = NpcSet.GetDistance(nIndex, nTargetIdx);

      if (distance > pISkill->GetAttackRadius() &&
          pISkill->GetAttackRadius() >= 200) {
        g_DebugLog("Test Skill 8\n");
        Player[CLIENT_PLAYER_INDEX].SetTargetNpc(nTargetIdx);
        return 0;
      }
      //
      if (nIndex == nTargetIdx && pISkill->GetSkillStyle() == SKILL_SS_Missles)
        return 0;
      g_DebugLog("Test Skill 9\n");
      Npc[nIndex].SendCommand(do_skill, Npc[nIndex].m_ActiveSkillID, -1,
                              nTargetIdx);
      // Send to Server
      SendClientCmdSkill(Npc[nIndex].m_ActiveSkillID, -1,
                         Npc[nTargetIdx].m_dwID);
    }
  }
  Npc[nIndex].m_nPeopleIdx = 0;

  Npc[nIndex].m_nPeopleIdxCheckClient = 0;

  return 1;
}

int KCoreShell::LockSomeoneUseSkill(int nTargetIndex, int nSkillID) {
  if (Player[CLIENT_PLAYER_INDEX].CheckTrading())
    return 0;

  int nIndex = Player[CLIENT_PLAYER_INDEX].m_nIndex;

  if (nTargetIndex == nIndex)
    return 0;

  if (Npc[nIndex].IsCanInput() ||
      (nSkillID == 416 &&
       Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_CurrentLife > 100)) {
    int nIdx = 0;
    nIdx = Npc[nIndex].m_SkillList.FindSame(nSkillID);
    g_DebugLog("[skill]Active");

    Npc[nIndex].SetActiveSkill(nIdx);
    Player[CLIENT_PLAYER_INDEX].m_nAutoStarSkillIDx = nIdx;
  } else {
    g_DebugLog("[skill]return");
    return 0;
  }

  int nRelation = NpcSet.GetRelation(nIndex, nTargetIndex);
  if (nRelation == relation_enemy) {
    g_DebugLog("Test Skill 10\n");
    Npc[nIndex].m_nPeopleIdx = nTargetIndex;
    return (nTargetIndex + 46);
  }

  return 0;
}

int KCoreShell::LockSomeoneUseSkillCC(int nTargetIndex) {
  int nIndex = Player[CLIENT_PLAYER_INDEX].m_nIndex;

  if (nIndex <= 0 || nIndex >= MAX_NPC)
    return 0;

  Npc[nIndex].m_nPeopleIdxCheckClient = nTargetIndex;

  return 1;
}

int KCoreShell::LockSomeoneAction(int nTargetIndex) {
  if (Player[CLIENT_PLAYER_INDEX].CheckTrading())
    return 0;

  int nIndex = Player[CLIENT_PLAYER_INDEX].m_nIndex;

  if (nTargetIndex == nIndex)
    return 0;
  if (nTargetIndex <= 0 || nTargetIndex >= MAX_NPC) // ȡ��Lock
  {
    Npc[nIndex].m_nPeopleIdx = 0;
    Npc[nIndex].m_nPeopleIdxCheckClient = 0;
    return 1;
  }

  int nRelation = NpcSet.GetRelation(nIndex, nTargetIndex);
  if (nRelation != relation_enemy) {
    Npc[nIndex].m_nPeopleIdx = nTargetIndex;
    Npc[nIndex].m_nPeopleIdxCheckClient = (nTargetIndex + 46) * 13 + 15743;
    return 1;
  }

  return 0;
}

void KCoreShell::AutoPause() {
  if (Player[CLIENT_PLAYER_INDEX].CheckTrading())
    return;
  Player[CLIENT_PLAYER_INDEX].m_nAutoPause = TRUE;
}

int KCoreShell::LockObjectAction(int nTargetIndex) {
  if (Player[CLIENT_PLAYER_INDEX].CheckTrading())
    return 0;

  int nIndex = Player[CLIENT_PLAYER_INDEX].m_nIndex;

  if (nTargetIndex <= 0) // ȡ��Lock
    Npc[nIndex].m_nObjectIdx = 0;
  else
    Npc[nIndex].m_nObjectIdx = nTargetIndex;

  return 1;
}

void KCoreShell::GotoWhere(int x, int y, int mode) {
  if (mode < 0 || mode > 2)
    return;

  if (Player[CLIENT_PLAYER_INDEX].m_nSendMoveFrames >=
      defMAX_PLAYER_SEND_MOVE_FRAME) {
    int bRun = false;

    if ((mode == 0 && Player[CLIENT_PLAYER_INDEX].m_RunStatus) || mode == 2)
      bRun = true;

    int nX = x;
    int nY = y;
    int nZ = 0;
    g_ScenePlace.ViewPortCoordToSpaceCoord(nX, nY, nZ);
    int nIndex = Player[CLIENT_PLAYER_INDEX].m_nIndex;

    if (!bRun) {
      Npc[nIndex].SendCommand(do_walk, nX, nY);
      // Send to Server
      SendClientCmdWalk(nX, nY);
    } else {
      if (Npc[nIndex].m_CurrentStamina > 0 ||
          Player[CLIENT_PLAYER_INDEX].m_cPK.GetNormalPKState() != 2) {
        Npc[nIndex].SendCommand(do_run, nX, nY);
        SendClientCmdRun(nX, nY);
      } else {
        Npc[nIndex].SendCommand(do_walk, nX, nY);
        SendClientCmdWalk(nX, nY);
      }
    }
    Player[CLIENT_PLAYER_INDEX].m_nSendMoveFrames = 0;
  }
}

void KCoreShell::Goto(int nDir, int mode) {
  if (nDir < 0 || nDir > 63)
    return;

  if (mode < 0 || mode > 2)
    return;

  int bRun = false;

  if ((mode == 0 && Player[CLIENT_PLAYER_INDEX].m_RunStatus) || mode == 2)
    bRun = true;

  int nIndex = Player[CLIENT_PLAYER_INDEX].m_nIndex;

  int nSpeed;
  if (bRun)
    nSpeed = Npc[nIndex].m_CurrentRunSpeed;
  else
    nSpeed = Npc[nIndex].m_CurrentWalkSpeed;

  Player[CLIENT_PLAYER_INDEX].Walk(nDir, nSpeed);

  Player[CLIENT_PLAYER_INDEX].m_nSendMoveFrames = 0;
}

void KCoreShell::Turn(int nDir) {
  if (nDir < 0 || nDir > 3)
    return;

  if (nDir == 0)
    Player[CLIENT_PLAYER_INDEX].TurnLeft();
  else if (nDir == 1)
    Player[CLIENT_PLAYER_INDEX].TurnRight();
  else
    Player[CLIENT_PLAYER_INDEX].TurnBack();
}

int KCoreShell::ThrowAwayItem() {
  return Player[CLIENT_PLAYER_INDEX].ThrowAwayItem();
}

int KCoreShell::GetNPCRelation(int nIndex) {
  return NpcSet.GetRelation(Player[CLIENT_PLAYER_INDEX].m_nIndex, nIndex);
}

BOOL KCoreShell::CheckOpenShop(int nIndex) {
  if (!Player[CLIENT_PLAYER_INDEX].m_dwTimeOpenShop &&
      Npc[nIndex].m_dwTimeOpenShop &&
      !Player[CLIENT_PLAYER_INDEX].m_dwTimeBuyShop)
    return TRUE;

  return FALSE;
}

void KCoreShell::OpenBuyShop(DWORD dwId) {
  Player[CLIENT_PLAYER_INDEX].OpenBuyShop(dwId);
}

//--------------------------------------------------------------------------
//	���ܣ�������Ϸ����
//--------------------------------------------------------------------------
void KCoreShell::DrawGameObj(unsigned int uObjGenre, unsigned int uId, int x,
                             int y, int Width, int Height, int nParam) {
  if (g_pRepresent)
    CoreDrawGameObj(uObjGenre, uId, x, y, Width, Height, nParam);
}

#include "../../Represent/iRepresent/iRepresentshell.h"

//--------------------------------------------------------------------------
//	���ܣ�������Ϸ����
//--------------------------------------------------------------------------
void KCoreShell::DrawGameSpace() {
  if (g_pRepresent) {
    g_ScenePlace.Paint();
    Player[CLIENT_PLAYER_INDEX].DrawSelectInfo();
  }
}

//-----------z---------------------------------------------------------------
//	���ܣ����û�ͼ�ӿ�ʵ����ָ��
//--------------------------------------------------------------------------
void KCoreShell::SetRepresentShell(struct iRepresentShell *pRepresent) {
  g_pRepresent = pRepresent;
  g_ScenePlace.RepresentShellReset();
  if (g_pAdjustColorTab && g_ulAdjustColorCount && g_pRepresent)
    g_pRepresent->SetAdjustColorList(g_pAdjustColorTab, g_ulAdjustColorCount);
}

void KCoreShell::SetMusicInterface(void *pMusicInterface) {
  g_pMusic = (KMusic *)pMusicInterface;
  Option.SetMusicVolume(Option.GetMusicVolume());
}

// �ճ����core���Ҫ���������򷵻�0�����򷵻ط�0ֵ
int KCoreShell::Breathe() {
  g_SubWorldSet.MessageLoop();
  g_SubWorldSet.MainLoop();
  g_ScenePlace.Breathe();
  return true;
}

int KCoreShell::GetProtocolSize(BYTE byProtocol) {
  if (byProtocol <= s2c_clientbegin || byProtocol >= s2c_end)
    return -1;
  return g_nProtocolSize[byProtocol - s2c_clientbegin - 1];
}

#ifdef SWORDONLINE_SHOW_DBUG_INFO
extern int g_bShowObstacle;
extern bool g_bShowGameInfo; // �Ƿ���ʾ��Ϸ����������Ϣ
#endif
int KCoreShell::Debug(unsigned int uDataId, unsigned int uParam, int nParam) {
#ifdef SWORDONLINE_SHOW_DBUG_INFO
  switch (uDataId) {
  case DEBUG_SHOWINFO:
    Player[CLIENT_PLAYER_INDEX].m_DebugMode =
        !Player[CLIENT_PLAYER_INDEX].m_DebugMode;
    g_bShowGameInfo = !g_bShowGameInfo;
    break;
  case DEBUG_SHOWOBSTACLE:
    g_bShowObstacle = !g_bShowObstacle;
    break;
  }
#endif
  return 0;
}

DWORD KCoreShell::GetPing() { return g_SubWorldSet.GetPing(); }

// void KCoreShell::SendPing()
//{
//	SendClientCmdPing();
// }

void KCoreShell::SetRepresentAreaSize(int nWidth, int nHeight) {
  g_ScenePlace.SetRepresentAreaSize(nWidth, nHeight);
}

void KCoreShell::SetClient(LPVOID pClient) { g_SetClient(pClient); }

void KCoreShell::SendNewDataToServer(void *pData, int nLength) {
  if (nLength < 0 || nLength >= 255)
    return;
  if (g_pClient)
    g_pClient->SendPackToServer(pData, nLength);
}

BOOL KCoreShell::GetAutoFlag() {
  return Player[CLIENT_PLAYER_INDEX].GetAutoFlag();
  return TRUE;
}

BOOL KCoreShell::GetFightFlag() {
  return Player[CLIENT_PLAYER_INDEX].GetFightFlag();
  return TRUE;
}

void KCoreShell::SetActiveAutoPlay(BOOL nActive) {
  Player[CLIENT_PLAYER_INDEX].SendInfoAuto();
  Player[CLIENT_PLAYER_INDEX].SetAutoFlag((BOOL)nActive);
  if (nActive)
    SendClientCmdAutoPlay(1, 1);
  else
    SendClientCmdAutoPlay(1, 0);
}

void KCoreShell::SetMoveMap(int nType, int nPos, int nValue) {
  switch (nType) {
  case GAUTO_AUTO_MOVEMPSID:
    if (nPos >= 0 && nPos < defMAX_AUTO_MOVEMPSL)
      Player[CLIENT_PLAYER_INDEX].m_MoveMps[nPos][0] = nValue;
    break;
  case GAUTO_AUTO_MOVEMPSX:
    if (nPos >= 0 && nPos < defMAX_AUTO_MOVEMPSL)
      Player[CLIENT_PLAYER_INDEX].m_MoveMps[nPos][1] = nValue;
    break;
  case GAUTO_AUTO_MOVEMPSY:
    if (nPos >= 0 && nPos < defMAX_AUTO_MOVEMPSL)
      Player[CLIENT_PLAYER_INDEX].m_MoveMps[nPos][2] = nValue;
    break;
  }
}

void KCoreShell::SetSortItem(int nType, int nValue, int nPos) {
  int nIndex = (int)g_MagicDesc.String2MagicID((char *)nType);
  if (nIndex >= magic_skill_begin && nIndex < magic_normal_end) {
    Player[CLIENT_PLAYER_INDEX].m_FilterMagic[nPos][0] = nIndex;
    Player[CLIENT_PLAYER_INDEX].m_FilterMagic[nPos][1] = nValue;
  } else {
    Player[CLIENT_PLAYER_INDEX].m_FilterMagic[nPos][0] = 0;
    Player[CLIENT_PLAYER_INDEX].m_FilterMagic[nPos][1] = 0;
  }
}

int KCoreShell::FindSkillInfo(int nType, int nIndex) {
  if (nType == 0)
    return Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_SkillList.GetSkillState(
        nIndex);
  else if (nType == 1)
    return Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_SkillList.GetSkillFight(
        nIndex);
  else if (nType == 2)
    return Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_SkillList.FindSkillAura(
        nIndex);

  return 0;
}

void KCoreShell::GetSkillName(int nSkillId, char *szSkillName) {
  if (nSkillId) {
    ISkill *pISkill = g_SkillManager.GetSkill(nSkillId, 1);
    if (pISkill)
      strcpy(szSkillName, pISkill->GetSkillName());
  }
}

// ���ͼ��صĲ���
int KCoreShell::SceneMapOperation(unsigned int uOper, unsigned int uParam,
                                  int nParam) {
  int nRet = 0;
  switch (uOper) {
  case GSMOI_SCENE_TIME_INFO:
    if (uParam) {
      KUiSceneTimeInfo *pInfo = (KUiSceneTimeInfo *)uParam;
      g_ScenePlace.GetSceneNameAndFocus(pInfo->szSceneName, pInfo->nSceneId,
                                        pInfo->nScenePos0, pInfo->nScenePos1);
      pInfo->nGameSpaceTime = (SubWorld[0].m_dwCurrentTime / 100) % 1440;

      if (SubWorld[0].m_bCheckTong) {
        memcpy(pInfo->szTongName, SubWorld[0].m_szTongName,
               sizeof(pInfo->szTongName));
        memcpy(pInfo->szTongNameBC, SubWorld[0].m_szTongNameBC,
               sizeof(pInfo->szTongNameBC));
        pInfo->szTongT = SubWorld[0].m_nTongT;
        pInfo->szTongVG = SubWorld[0].m_nTongVG;
      } else {

        memset(pInfo->szTongName, 0, sizeof(pInfo->szTongName));
        memset(pInfo->szTongNameBC, 0, sizeof(pInfo->szTongNameBC));
        pInfo->szTongT = 0;
        pInfo->szTongVG = 0;
      }
    }
    break;
  case GSMOI_SCENE_MAP_INFO:
    nRet = g_ScenePlace.GetMapInfo((KSceneMapInfo *)uParam);
    break;
  case GSMOI_IS_SCENE_MAP_SHOWING:
    g_ScenePlace.SetMapParam(uParam, nParam);
    break;
  case GSMOI_PAINT_SCENE_MAP:
    g_ScenePlace.PaintMap(uParam, nParam);
    break;
  case GSMOI_SCENE_MAP_FOCUS_OFFSET:
    g_ScenePlace.SetMapFocusPositionOffset((int)uParam, nParam);
    break;
  case GSMOI_SCENE_FOLLOW_WITH_MAP: // ���ó����Ƿ����ŵ�ͼ���ƶ����ƶ�
    g_ScenePlace.FollowMapMove(nParam);
    break;

  case GSMOI_DRAW_GREEN_LINE: // toa do
    g_ScenePlace.DrawGreenLine((int)uParam, nParam, false, true);
    break;
  case GSMOI_FIND_POS: // toa do
    g_ScenePlace.FindPos((int)uParam, nParam, true, true);
    break;
  case GSMOI_DELETE_DRAW_LINE:
    g_ScenePlace.DrawGreenLine((int)uParam, nParam, true, false);

  case GSMOI_DELETE_DRAW_POS:
    g_ScenePlace.FindPos((int)uParam, nParam, true, false);

  case GSMOI_SCENE_POST_SEARCH_MAP:
    g_ScenePlace.SearchPos();
  }
  return nRet;
}

// ������صĲ���, uOper��ȡֵ���� GAME_TONG_OPERATION_INDEX
int KCoreShell::TongOperation(unsigned int uOper, unsigned int uParam,
                              int nParam) {
  int nRet = 0;
  switch (uOper) {
  case GTOI_TONG_CREATE: // �������
    // uParam = (const char*) pszTongName ��������
    // nParam = (NPCCAMP)enFaction �����Ӫ
    Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyCreateTong(nParam, (char *)uParam);
    break;
  case GTOI_TONG_CHANGE_CAMP:
    Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyChangeTongCamp(nParam,
                                                            (char *)uParam);
    break;
  case GTOI_TONG_IS_RECRUIT: // ��ѯĳ�˵����˿���
    // uParam = (KUiPlayerItem*) Ҫ��˭
    // Return = (int)(bool)		�Ƿ��ŵ����˿���
    if (uParam) {
      KUiPlayerItem *pItem = (KUiPlayerItem *)uParam;
      nRet = Npc[pItem->nIndex].m_nTongFlag;
    }
    break;
  case GTOI_TONG_RECRUIT: // ���˿���
    // uParam = (int)(bool)bRecruit �Ƿ�Ը������
    break;
  case GTOI_TONG_ACTION: // �԰��ڳ�Ա���Ķ��������Լ�����Ĺ�ϵ�ĸı�
    // uParam = (KTongOperationParam*) pOperParam ����ʱ�Ĳ���
    // nParam = (KTongMemberItem*) pMember ָ���˲���������Ա������
    {
      KTongOperationParam *Oper = (KTongOperationParam *)uParam;
      KTongMemberItem *TargetInfo = (KTongMemberItem *)nParam;
      KUiPlayerItem TargetPlayer;
      int nKind;

      switch (Oper->eOper) {
      case TONG_ACTION_DISMISS:
        Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyKick(
            Oper->nData[0], Oper->nData[1], TargetInfo->Name);
        break;
      case TONG_ACTION_ASSIGN:
        Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyInstate(
            Oper->nData[0], Oper->nData[1], Oper->nData[2], Oper->nData[3],
            TargetInfo->Name);
        break;
      case TONG_ACTION_DEMISE:
        Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyChangeMaster(
            Oper->nData[0], Oper->nData[1], TargetInfo->Name);
        break;
      case TONG_ACTION_LEAVE:
        Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyLeave();
        break;
      case TONG_ACTION_RECRUIT:
        break;
      case TONG_ACTION_APPLY:
        if (!FindSpecialNPC(TargetInfo->Name, &TargetPlayer, nKind)) {
          break;
        }
        Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyAddTong(TargetPlayer.uId);
        break;
      case TONG_ACTION_NAME_FEMALE:
        Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyChangeTitleFeMale(
            Oper->szPassword);

        break;
      case TONG_ACTION_NAME_MALE:
        Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyChangeTitleMale(
            Oper->szPassword);
        break;
      case TONG_ACTION_NAME:
        Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyChangeTitle(Oper->szPassword,
                                                             TargetInfo->Name);
        break;

      case TONG_ACTION_DEPOSIT_MONEY:
        Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyDepositMoney(Oper->szPassword);
        break;

      case TONG_ACTION_TAKE_MONEY:
        Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyTakeMoney(Oper->szPassword);
        break;
      }
    }
    break;

  // ���������Ĵ�
  // uPAram = (KUiPlayerItem *) pTarget   ���뷽
  // nParam : != 0  ͬ��   ==0  �ܾ�
  case GTOI_TONG_JOIN_REPLY:
    if (uParam) {
      KUiPlayerItem *pItem = (KUiPlayerItem *)uParam;
      Player[CLIENT_PLAYER_INDEX].m_cTong.AcceptMember(
          pItem->nIndex, g_FileName2Id(pItem->Name), nParam);
    }
    break;

  case GTOI_REQUEST_PLAYER_TONG: // ��ѯĳ�����İ��
    // uParam = (KUiPlayerItem*) Ҫ��˭
    // nParam = (int)(bool)bReturnTongDetail �Ƿ�Ҫ�����Ǹ�������Ϣ
    if (uParam) {
      KUiPlayerItem *pItem = (KUiPlayerItem *)uParam;
      if (pItem->nIndex == Player[CLIENT_PLAYER_INDEX].m_nIndex) {
        Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyInfo(
            enumTONG_APPLY_INFO_ID_TONG_HEAD, pItem->nIndex, 0, 0);
      } else {
        Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyInfo(
            enumTONG_APPLY_INFO_ID_TONG_HEAD, pItem->nIndex, 0, 0);
      }
    }
    break;
  case GTOI_REQUEST_TONG_DATA: // Ҫ��ĳ�����ĸ�������
    // uParam = (KUiGameObjectWithName*)pTong Ҫ��ѯ�İ��
    // KUiGameObjectWithName::szName ��������
    // KUiGameObjectWithName::nData ���ϵ����ֵ࣬ȡ��ö��TONG_MEMBER_FIGURE
    //			�б��������enumTONG_FIGURE_MASTER�Ļ�����Ҫ����ǰ�����Ѷ��
    // KUiGameObjectWithName::nParam ��ʼ������
    if (uParam) {
      if (Player[CLIENT_PLAYER_INDEX].m_cTong.CheckIn() == 0)
        break;

      KUiGameObjectWithName *pObj = (KUiGameObjectWithName *)uParam;
      char szTongName[32];
      DWORD dwTongNameID;

      szTongName[0] = 0;
      Player[CLIENT_PLAYER_INDEX].m_cTong.GetTongName(szTongName);
      if (!szTongName[0])
        break;

      // ֻ�ܲ�ѯ�Լ������Ϣ
      dwTongNameID = g_FileName2Id(pObj->szName);
      if (dwTongNameID != Player[CLIENT_PLAYER_INDEX].m_cTong.GetTongNameID())
        break;

      switch (pObj->nData) {
      case enumTONG_FIGURE_MASTER:
        Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyInfo(
            enumTONG_APPLY_INFO_ID_TONG_HEAD,
            Player[CLIENT_PLAYER_INDEX].m_nIndex, 0, 0);
        break;
      case enumTONG_FIGURE_DIRECTOR:
        Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyInfo(
            enumTONG_APPLY_INFO_ID_TONG_HEAD,
            Player[CLIENT_PLAYER_INDEX].m_nIndex, 0, 0);
        break;
      case enumTONG_FIGURE_MANAGER:
        if (!Player[CLIENT_PLAYER_INDEX].m_cTong.CanGetManagerInfo(
                dwTongNameID))
          break;
        Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyInfo(
            enumTONG_APPLY_INFO_ID_MANAGER, dwTongNameID, nParam,
            defTONG_ONE_PAGE_MAX_NUM);
        break;
      case enumTONG_FIGURE_MEMBER:
        if (!Player[CLIENT_PLAYER_INDEX].m_cTong.CanGetMemberInfo(dwTongNameID))
          break;
        Player[CLIENT_PLAYER_INDEX].m_cTong.ApplyInfo(
            enumTONG_APPLY_INFO_ID_MEMBER, dwTongNameID, nParam,
            defTONG_ONE_PAGE_MAX_NUM);
        break;
      }
    }
    break;
  }
  return nRet;
}

// �������صĲ�����uOper��ȡֵ���� GAME_TEAM_OPERATION_INDEX
int KCoreShell::TeamOperation(unsigned int uOper, unsigned int uParam,
                              int nParam) {
  int nRet = 0;
  switch (uOper) {
  case TEAM_OI_GD_INFO: // �������ڵĶ�����Ϣ
    if (uParam) {
      KUiPlayerTeam *pTeam = (KUiPlayerTeam *)uParam;
      nRet = Player[CLIENT_PLAYER_INDEX].m_cTeam.GetInfo(pTeam);
    }
    break;
  case TEAM_OI_GD_MEMBER_LIST: // ��ȡ�������ڶ����Ա�б�
    nRet = g_Team[0].GetMemberInfo((KUiPlayerItem *)uParam, nParam);
    break;
  case TEAM_OI_GD_REFUSE_INVITE_STATUS: // ��ȡ�ܾ������״̬
    nRet = Player[CLIENT_PLAYER_INDEX].m_cTeam.GetAutoRefuseState();
    break;
  case TEAM_OI_COLLECT_NEARBY_LIST: // ��ȡ��Χ������б�
    NpcSet.GetAroundOpenCaptain(
        Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_Camp);
    break;
  case TEAM_OI_APPLY: // ����������˶���
    if (uParam)
      Player[CLIENT_PLAYER_INDEX].ApplyAddTeam(
          ((KUiTeamItem *)uParam)->Leader.nIndex);
    break;
  case TEAM_OI_CREATE:                             // �������
    Player[CLIENT_PLAYER_INDEX].ApplyCreateTeam(); //(char*)uParam);
    break;
  case TEAM_OI_APPOINT: // �����ӳ���ֻ�жӳ����ò���Ч��
    Player[CLIENT_PLAYER_INDEX].ApplyTeamChangeCaptain(
        ((KUiPlayerItem *)uParam)->uId);
    break;
  case TEAM_OI_INVITE: // ������˼�����飬ֻ�жӳ����ò���Ч��
    if (uParam) {
      Player[CLIENT_PLAYER_INDEX].TeamInviteAdd(((KUiPlayerItem *)uParam)->uId);

      KSystemMessage sMsg;
      sprintf(sMsg.szMessage, MSG_TEAM_SEND_INVITE,
              ((KUiPlayerItem *)uParam)->Name);
      sMsg.eType = SMT_NORMAL;
      sMsg.byConfirmType = SMCT_NONE;
      sMsg.byPriority = 0;
      sMsg.byParamSize = 0;
      CoreDataChanged(GDCNI_SYSTEM_MESSAGE, (unsigned int)&sMsg, 0);
    }
    break;
  case TEAM_OI_FOLLOW:
    if (uParam) {
      KUiPlayerItem *pTarget = (KUiPlayerItem *)uParam;
      if (Npc[pTarget->nIndex].m_Kind == kind_player)
        Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_nPeopleIdx =
            pTarget->nIndex;
      Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_nPeopleIdxCheckClient =
          (pTarget->nIndex + 46) * 13 + 15743;
    }
  case TEAM_OI_KICK: // �߳������һ����Ա��ֻ�жӳ����ò���Ч��
    Player[CLIENT_PLAYER_INDEX].TeamKickMember(((KUiPlayerItem *)uParam)->uId);
    break;
  case TEAM_OI_LEAVE: // �뿪����
    Player[CLIENT_PLAYER_INDEX].LeaveTeam();
    break;
  case TEAM_OI_CLOSE: // �ر���ӣ�ֻ�жӳ����ò���Ч��
    Player[CLIENT_PLAYER_INDEX].ApplyTeamOpenClose(nParam);
    break;
  case TEAM_OI_REFUSE_INVITE: // �ܾ����������Լ��������
    Player[CLIENT_PLAYER_INDEX].m_cTeam.SetAutoRefuseInvite(nParam);
    break;
  case TEAM_OI_APPLY_RESPONSE: // ��׼���˼�����飬ֻ�жӳ����ò���Ч��
    if (uParam) {
      if (nParam) {
        Player[CLIENT_PLAYER_INDEX].AcceptTeamMember(
            ((KUiPlayerItem *)uParam)->uId);
      } else {
        Player[CLIENT_PLAYER_INDEX].m_cTeam.DeleteOneFromApplyList(
            ((KUiPlayerItem *)uParam)->uId);
        //				Player[CLIENT_PLAYER_INDEX].m_cTeam.UpdateInterface();
      }
    }
    break;
  case TEAM_OI_INVITE_RESPONSE: // ���������Ļظ�
    if (uParam)
      Player[CLIENT_PLAYER_INDEX].m_cTeam.ReplyInvite(
          ((KUiPlayerItem *)uParam)->nIndex, nParam);
    break;
  }
  return nRet;
}

int KCoreShell::PAIOperation(unsigned int uOper, unsigned int uParam,
                             int nParam, int nParam1) {
  int nRet = 0;
  switch (uOper) {
  case GPI_SWITCH_ACTIVE:
    Player[CLIENT_PLAYER_INDEX].m_bActiveAuto =
        !Player[CLIENT_PLAYER_INDEX].m_bActiveAuto;
    //	Player[CLIENT_PLAYER_INDEX].SetSortEquipment(FALSE);
    break;

  case GPI_TP_NOT_EQUIPMENT:
    Player[CLIENT_PLAYER_INDEX].m_bTPNotEquipment = uParam;
    break;
  case GPI_TP_NOT_EQUIPMENTV:
    Player[CLIENT_PLAYER_INDEX].m_nTPNotEquipment = uParam;
    break;
  case GPI_OVER_TARGET:
    Player[CLIENT_PLAYER_INDEX].m_bOverTarget = uParam;
    break;
    // case GPI_AUTO_PARTY:
    //			Player[CLIENT_PLAYER_INDEX].m_bAutoParty = uParam;
    //	break;
  case GPI_FOLLOW_PEOPLE:
    Player[CLIENT_PLAYER_INDEX].m_bFollowPeople = uParam;
    break;
  case GPI_FOLLOW_PEOPLE_NAME:
    strcpy(Player[CLIENT_PLAYER_INDEX].m_szFollowName, (char *)uParam);
    break;
  case GPI_FOLLOW_PEOPLE_RADIUS:
    Player[CLIENT_PLAYER_INDEX].m_nFollowRadius = uParam;
    break;
  case GPI_AUTO_MOVEMPS:
    Player[CLIENT_PLAYER_INDEX].m_bMoveMps = uParam;
    break;
  case GPI_AUTO_MOVEMPSID:
    if (uParam >= 0 && uParam < MAX_AUTO_LIST) {
      if (uParam == 0)
        Player[CLIENT_PLAYER_INDEX].m_nMoveCount = 0;

      Player[CLIENT_PLAYER_INDEX].m_nMoveMps[uParam][0] = nParam;
      if (nParam)
        Player[CLIENT_PLAYER_INDEX].m_nMoveCount++;
    }
    break;
  case GPI_AUTO_MOVEMPSX:
    if (uParam >= 0 && uParam < MAX_AUTO_LIST)
      Player[CLIENT_PLAYER_INDEX].m_nMoveMps[uParam][1] = nParam;
    break;
  case GPI_AUTO_MOVEMPSY:
    if (uParam >= 0 && uParam < MAX_AUTO_LIST)
      Player[CLIENT_PLAYER_INDEX].m_nMoveMps[uParam][2] = nParam;
    break;
  }
  return nRet;
}

//---------------Ken Nguyen--------------------------
int KCoreShell::GetKind(int nItemID) {
  if (!nItemID)
    return 0;
  return Item[nItemID].m_SpecialParam.uItemType;
}
int KCoreShell::GetGenre(int nItemID) {
  if (!nItemID)
    return 0;
  return Item[nItemID].GetGenre();
}
BOOL KCoreShell::IsBlueItem(int nItemID) {
  return Item[nItemID].m_aryMagicAttrib[0].nAttribType ? 1 : 0;
}

int KCoreShell::GetDurabilityItem(int nItemID) {
  return Item[nItemID].GetDurability();
}

int KCoreShell::GetDetailItem2(int nItemID) {
  return Item[nItemID].GetDetailType();
}
// new add
int KCoreShell::SceneMapFindPosOperation(unsigned int uOper,
                                         unsigned int uParam, int nParam,
                                         bool bCalc, bool bLine) {
  int nRet = 0;
  switch (uOper) {
  case GSMOI_PAINT_SCENE_FIND_POS:
    g_ScenePlace.CalcFlagPos(uParam, nParam, bCalc, bLine);
    break;
  case GSMOI_SET_HIDE_REGION:
    g_ScenePlace.SetHideRegion(uParam > 0);
    break;
  case GSMOI_GET_HIDE_REGION:
    nRet = g_ScenePlace.GetHideRegion();
    break;
  }
  return nRet;
}

BOOL KCoreShell::GetPaintFindPos() { return g_ScenePlace.bPaintFlag; }

void KCoreShell::SetPaintFindPos(BOOL nIndex) {
  g_ScenePlace.bPaintFlag = nIndex;
  if (!nIndex)
    g_ScenePlace.CalcFlagPos(0, 0, false, false);
}

void KCoreShell::SetAutoMove(BOOL nIndex) { g_ScenePlace.SetAutoMove(nIndex); }