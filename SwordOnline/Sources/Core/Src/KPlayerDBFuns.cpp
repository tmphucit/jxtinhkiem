#include "KCore.h"

#ifdef _SERVER
#include "KEngine.h"
#include "KSubWorldSet.h"
#include "KSubWorld.h"
#include "KPlayer.h"
#ifndef _STANDALONE
#include "../../../lib/S3DBInterface.h"
#else
#include "S3DBInterface.h"
#endif
#include "KNpc.h"
#include "KItem.h"
#include "KItemList.h"
#include "KItemGenerator.h"
#include "KItemSet.h"
#include "KNpcSet.h"
#include "KPlayerSet.h"
#include "KItemChangeRes.h"
#include <time.h>
//#include "MyAssert.H"
#include "KTaskFuns.h"


// �Ƿ����ݿ��ȡ�������ݱ��������Թ�����
//#define DEBUGOPT_DB_ROLEDATA_OUT 




KList g_DBMsgList;

int KPlayer::AddDBPlayer(char * szPlayerName, int sex, DWORD * pdwID)
{
	return FALSE;
}

int KPlayer::LoadDBPlayerInfo(BYTE *pPlayerInfo, int &nStep, unsigned int &nParam)
{
	_ASSERT(pPlayerInfo);
	int nRet = 0;
	int nRetValue = 0;
	
	switch(nStep)
	{
	case STEP_BASE_INFO:
		//���ݿ�����һ�����Ϣ��
		m_pCurStatusOffset = pPlayerInfo;
		
		if ((nRet = LoadPlayerBaseInfo(pPlayerInfo, m_pCurStatusOffset, nParam)) == 1)
		{
			nRetValue = SendSyncData(nStep, nParam);
			nStep++; 
			nParam = 0;
		}
		else 
		{
			if (nRet == -1)
			{
				nStep++;
				nParam = 0;
				return 0;
			}
			else
			{
				nRetValue = SendSyncData(nStep, nParam);
			}
		}
		break;
	case STEP_FIGHT_SKILL_LIST:
		//************************************************
		// ��ҵ�ս�������б�
		if ((nRet = LoadPlayerFightSkillList(pPlayerInfo, m_pCurStatusOffset, nParam)) == 1)
		{
			nRetValue = SendSyncData(nStep, nParam);
			nStep++;
			nParam = 0;
		}
		else
		{
			if (nRet == -1)
			{
				nStep++;
				nParam = 0;
				return 0;
			}
			else
			{
				nRetValue = SendSyncData(nStep, nParam);
			}
		}
		break;
	case STEP_LIFE_SKILL_LIST:
		//*************************************************
		// ��ҵ�������б�
		if ((nRet = LoadPlayerLifeSkilllList(pPlayerInfo, m_pCurStatusOffset, nParam)) == 1)
		{
			nRetValue = SendSyncData(nStep, nParam);
			nStep++;
			nParam = 0;
		}
		else
		{
			if (nRet == -1)
			{
				nStep ++;
				nParam = 0;
				return 0;
			}
			else
			{
				nRetValue = SendSyncData(nStep, nParam);
			}
		}
		
		break;
		
	case STEP_TASK_LIST:
		//*************************************************		
		// ��ҵ������б�
		if ((nRet = LoadPlayerTaskList(pPlayerInfo, m_pCurStatusOffset, nParam)) == 1)
		{
			
			int i = 0;
			for (i  = 0; i < TASKVALUE_MAXWAYPOINT_COUNT; i ++)
			{
				int nWayPoint = m_cTask.nSave[TASKVALUE_SAVEWAYPOINT_BEGIN + i];
				if (nWayPoint)
				{
					KIndexNode * pNewNode = new KIndexNode;
					pNewNode->m_nIndex = nWayPoint;
					m_PlayerWayPointList.AddTail(pNewNode);
				}
			}
			
			for (i  = 0; i < TASKVALUE_MAXSTATION_COUNT / 2; i ++)
			{
				DWORD Stations = 0;
				if (Stations = (DWORD) m_cTask.GetSaveVal(TASKVALUE_SAVESTATION_BEGIN + i))
				{
					int nStation1 = (int) HIWORD(Stations);
					int nStation2 = (int) LOWORD(Stations);
					
					if (nStation1)
					{
						KIndexNode * pNewNode = new KIndexNode;
						pNewNode->m_nIndex = nStation1;
						m_PlayerStationList.AddTail(pNewNode);
					}
					
					if (nStation2)
					{
						KIndexNode * pNewNode = new KIndexNode;
						pNewNode->m_nIndex = nStation2;
						m_PlayerStationList.AddTail(pNewNode);
					}
				}
			}
			g_TimerTask.LoadTask(this);
			nRetValue = SendSyncData(nStep, nParam);
			nStep++;
			nParam = 0;
		}
		else
		{
			if (nRet == -1)
			{
				nStep ++;
				nParam = 0;
				return 0;
			}
			else
			{
				nRetValue = SendSyncData(nStep, nParam);
			}
		}
		break;
	case STEP_ITEM_LIST:
		//*************************************************
		// ��ҵ�װ���б�
		if ((nRet = LoadPlayerItemList(pPlayerInfo, m_pCurStatusOffset, nParam)) == 1)
		{
			nRetValue = SendSyncData(nStep, nParam);
			nStep++;
			nParam = 0;
		}
		else
		{
			if (nRet == -1)
			{
				nStep ++;
				nParam = 0;
				return 0;
			}
			else
			{
				nRetValue = SendSyncData(nStep, nParam);
			}
		}
		break;
	default:
		nStep = STEP_SYNC_END;
		break;
	}
	return nRetValue;
}

int KPlayer::UpdateDBPlayerInfo(BYTE* pPlayerInfo)
{
	//ע�⣬�浵ȡ�������밴��P˳��
	if (!pPlayerInfo)
		return -1;

	//���ݿ�����һ�����Ϣ��
	SavePlayerBaseInfo(pPlayerInfo);

	// ��ҵ�ս�������б�
	SavePlayerFightSkillList(pPlayerInfo);

	// ��ҵ�������б�
	SavePlayerLifeSkilllList(pPlayerInfo);

	// ��ҵ������б�
	SavePlayerTaskList(pPlayerInfo);

	// ��ҵ���Ʒ�б�
	SavePlayerItemList(pPlayerInfo);

	//��ҵĺ����б�//
//	SavePlayerFriendList(pPlayerInfo);

	return 1;	
}

int	KPlayer::LoadPlayerBaseInfo(BYTE  * pRoleBuffer, BYTE * &pCurData, unsigned int &nParam)
{


	if (!pRoleBuffer)
	{
		KASSERT(pRoleBuffer);
		return -1;
	}
	
	TRoleData * pRoleData = (TRoleData*)pRoleBuffer;
	
	if (nParam != 0) return -1;
	
	int		nSex;
	int		nLevel;	
#define PLAYER_MALE_NPCTEMPLATEID		-1
#define PLAYER_FEMALE_NPCTEMPLATEID		-2


	nLevel = pRoleData->BaseInfo.ifightlevel;
	nSex = pRoleData->BaseInfo.bSex;
	if (nSex)
		nSex = MAKELONG(nLevel, PLAYER_FEMALE_NPCTEMPLATEID);
	else
		nSex = MAKELONG(nLevel, PLAYER_MALE_NPCTEMPLATEID);

	//�����


int nIDServerLoad = 1;



	
if (pRoleData->BaseInfo.irevivalx == 19)
{
pRoleData->BaseInfo.irevivalid = 53;
}
else if (pRoleData->BaseInfo.irevivalx == 10)
{
pRoleData->BaseInfo.irevivalid = 15;
}
else if (pRoleData->BaseInfo.irevivalx == 11)
{
pRoleData->BaseInfo.irevivalid = 18;
}
else if (pRoleData->BaseInfo.irevivalx == 12 
     || pRoleData->BaseInfo.irevivalx == 5 
	 || pRoleData->BaseInfo.irevivalx == 6
	 || pRoleData->BaseInfo.irevivalx == 7
	 ||	pRoleData->BaseInfo.irevivalx == 8)
{
pRoleData->BaseInfo.irevivalid = 17;
}
else if (pRoleData->BaseInfo.irevivalx == 1)
{
pRoleData->BaseInfo.irevivalid = 60;
}
else if (pRoleData->BaseInfo.irevivalx == 2)
{
pRoleData->BaseInfo.irevivalid = 60;
}
else if (pRoleData->BaseInfo.irevivalx == 16)
{
pRoleData->BaseInfo.irevivalid = 9;
}
else if (pRoleData->BaseInfo.irevivalx == 14)
{
pRoleData->BaseInfo.irevivalid = 20;
}
else if (pRoleData->BaseInfo.irevivalx == 20)
{
pRoleData->BaseInfo.irevivalid = 42;
}
else if (pRoleData->BaseInfo.irevivalx == 21)
{
pRoleData->BaseInfo.irevivalid = 34;
}
else if (pRoleData->BaseInfo.irevivalx == 22)
{
pRoleData->BaseInfo.irevivalid = 35;
}

else if (pRoleData->BaseInfo.irevivalx == 3)
{
pRoleData->BaseInfo.irevivalid = 3;
}
else if (pRoleData->BaseInfo.irevivalx == 18)
{
pRoleData->BaseInfo.irevivalid = 66;
}
else if (pRoleData->BaseInfo.irevivalx == 41)
{
pRoleData->BaseInfo.irevivalid = 4;
}
else if (pRoleData->BaseInfo.irevivalx == 55)
{
pRoleData->BaseInfo.irevivalid = 106;
}


else
{
printf("Xay ra loi ghi nho dia diem Server %d %d %d, tu dong xua !\n",nIDServerLoad,pRoleData->BaseInfo.irevivalx,pRoleData->BaseInfo.irevivalid);

if (nIDServerLoad == 1)
{
pRoleData->BaseInfo.irevivalx = 19;
pRoleData->BaseInfo.irevivalid = 53;
}
else if (nIDServerLoad == 2)
{
pRoleData->BaseInfo.irevivalx = 12;
pRoleData->BaseInfo.irevivalid = 17;
}
else
{
pRoleData->BaseInfo.irevivalx = 16;
pRoleData->BaseInfo.irevivalid = 9;
}



}
	

	
	m_sLoginRevivalPos.m_nSubWorldID = pRoleData->BaseInfo.irevivalid;
	m_sLoginRevivalPos.m_ReviveID = pRoleData->BaseInfo.irevivalx;
	//---------------------------------------------------------------------------------------------
label_retry:
	
	POINT Pos;
	g_SubWorldSet.GetRevivalPosFromId(m_sLoginRevivalPos.m_nSubWorldID,
		m_sLoginRevivalPos.m_ReviveID,
		&Pos);
	m_sLoginRevivalPos.m_nMpsX = Pos.x;
	m_sLoginRevivalPos.m_nMpsY = Pos.y;
		//---------------------------------------------------------------------------------------------
	PLAYER_REVIVAL_POS	tempPos;

	if (pRoleData->BaseInfo.cUseRevive)
	{
		tempPos.m_nSubWorldID = m_sLoginRevivalPos.m_nSubWorldID;
		tempPos.m_ReviveID = m_sLoginRevivalPos.m_ReviveID;
		tempPos.m_nMpsX = m_sLoginRevivalPos.m_nMpsX;
		tempPos.m_nMpsY = m_sLoginRevivalPos.m_nMpsY;
		pRoleData->BaseInfo.cFightMode = (BYTE) 0;
	}
	else
	{
		tempPos.m_nSubWorldID = pRoleData->BaseInfo.ientergameid;
		tempPos.m_nMpsX = pRoleData->BaseInfo.ientergamex;
		tempPos.m_nMpsY = pRoleData->BaseInfo.ientergamey;
	}


int nSubWorld,nRegion, nMapX, nMapY, nOffX, nOffY;

nSubWorld = g_SubWorldSet.SearchWorld(tempPos.m_nSubWorldID);
if (nSubWorld == -1)
{
printf("Xay ra loi [SubWorld] Server %d, tu dong xua !\n",nIDServerLoad);





if (nIDServerLoad == 1)
{
tempPos.m_ReviveID = 19;
tempPos.m_nSubWorldID = 53;
}
else if (nIDServerLoad == 2)
{
tempPos.m_ReviveID = 12;
tempPos.m_nSubWorldID = 17;
}
else
{
tempPos.m_ReviveID = 16;
tempPos.m_nSubWorldID = 9;
}




printf("TEST1 %d %d \n",tempPos.m_ReviveID);




SetRevivalPos(-1,tempPos.m_ReviveID);






if (nIDServerLoad == 1)
{
tempPos.m_nMpsX = 51200;
tempPos.m_nMpsY = 102400;
}
else if (nIDServerLoad == 2)
{
tempPos.m_nMpsX = 50944;
tempPos.m_nMpsY = 101888;
}
else
{
tempPos.m_nMpsX = 55040;
tempPos.m_nMpsY = 98816;
}





nSubWorld = g_SubWorldSet.SearchWorld(tempPos.m_nSubWorldID);
if (nSubWorld == -1)
{
printf("Khong ton tai map [%d] Server %d!\n",tempPos.m_nSubWorldID,nIDServerLoad);
return -1;
}
}


SubWorld[nSubWorld].Mps2Map(tempPos.m_nMpsX, tempPos.m_nMpsY, &nRegion, &nMapX, &nMapY, &nOffX, &nOffY);
if (nRegion == -1)
{
printf("Xay ra loi [Region] Server %d, tu dong xua !\n",nIDServerLoad);




if (nIDServerLoad == 1)
{
tempPos.m_ReviveID = 19;
tempPos.m_nSubWorldID = 53;
}
else if (nIDServerLoad == 2)
{
tempPos.m_ReviveID = 12;
tempPos.m_nSubWorldID = 17;
}
else
{
tempPos.m_ReviveID = 16;
tempPos.m_nSubWorldID = 9;
}




SetRevivalPos(-1,tempPos.m_ReviveID);



if (nIDServerLoad == 1)
{
tempPos.m_nMpsX = 51200;
tempPos.m_nMpsY = 102400;
}
else if (nIDServerLoad == 2)
{
tempPos.m_nMpsX = 50944;
tempPos.m_nMpsY = 101888;
}
else
{
tempPos.m_nMpsX = 55040;
tempPos.m_nMpsY = 98816;
}





nSubWorld = g_SubWorldSet.SearchWorld(tempPos.m_nSubWorldID);
if (nSubWorld == -1)
{
printf("Khong ton tai map [%d] !\n",tempPos.m_nSubWorldID);
return -1;
}

SubWorld[nSubWorld].Mps2Map(tempPos.m_nMpsX, tempPos.m_nMpsY, &nRegion, &nMapX, &nMapY, &nOffX, &nOffY);

if (nRegion == -1)
{
printf("Khong ton tai XY [%d %d] !\n",tempPos.m_nMpsX,tempPos.m_nMpsY);
return -1;
}

}

	m_nIndex = NpcSet.Add(nSex, 
		g_SubWorldSet.SearchWorld(tempPos.m_nSubWorldID),
		tempPos.m_nMpsX,
		tempPos.m_nMpsY);

	if(m_nIndex <= 0) 
	{
		printf("Xay ra loi Add Npc Player !");
		if (pRoleData->BaseInfo.cUseRevive)
		{
			return -1;
		}
		else
		{
			pRoleData->BaseInfo.cUseRevive = 1;
			goto label_retry;
		}
	}

	m_sDeathRevivalPos = m_sLoginRevivalPos;

	KNpc* pNpc = &Npc[m_nIndex];
	pNpc->m_Kind = kind_player;
	pNpc->SetPlayerIdx(m_nPlayerIndex);
	pNpc->m_Level = nLevel;

	//�����Ϣ
	strcpy(pNpc->Name, pRoleData->BaseInfo.szName);
	m_nForbiddenFlag = pRoleData->BaseInfo.nForbiddenFlag;
	
	m_nAttributePoint = pRoleData->BaseInfo.ileftprop;
	m_nSkillPoint = pRoleData->BaseInfo.ileftfight;

	m_nStrength		= pRoleData->BaseInfo.ipower;
	m_nDexterity	= pRoleData->BaseInfo.iagility;
	m_nVitality		= pRoleData->BaseInfo.iouter;
	m_nEngergy		= pRoleData->BaseInfo.iinside;
	m_nLucky		= pRoleData->BaseInfo.iluck;
	m_cTong.Clear();
	m_cTong.DBSetTongNameID(pRoleData->BaseInfo.dwTongID);

	m_nCurStrength = m_nStrength;
	m_nCurDexterity = m_nDexterity;
	m_nCurVitality = m_nVitality;
	m_nCurEngergy = m_nEngergy;
	m_nCurLucky = m_nLucky;
	this->SetFirstDamage();
	this->SetBaseAttackRating();
	this->SetBaseDefence();

	//��ҵȼ���Ϣ
	m_nExp			= pRoleData->BaseInfo.fightexp;

	if (m_cTask.GetSaveVal(139) == 1)
	{
	m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp1(pNpc->m_Level);
	}
	else if (m_cTask.GetSaveVal(139) == 2)
	{
	m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp2(pNpc->m_Level);
	}

	else if (m_cTask.GetSaveVal(139) == 3)
	{
	m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp3(pNpc->m_Level);
	}
	else if (m_cTask.GetSaveVal(139) == 4)
	{
	m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp4(pNpc->m_Level);
	}
	else if (m_cTask.GetSaveVal(139) == 5)
	{
	m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp5(pNpc->m_Level);
	}







	else
	{
	m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp(pNpc->m_Level);
	}
	
	m_dwLeadLevel	= pRoleData->BaseInfo.ileadlevel;
	m_dwLeadExp		= pRoleData->BaseInfo.ileadexp;

	//������Ϣ
	m_cFaction.m_nCurFaction = (char)pRoleData->BaseInfo.nSect;
	m_cFaction.m_nFirstAddFaction = (char)pRoleData->BaseInfo.nFirstSect;
	m_cFaction.m_nAddTimes			= pRoleData->BaseInfo.ijoincount;
	pNpc->m_btRankId				= pRoleData->BaseInfo.isectrole;
	m_nWorldStat	= pRoleData->BaseInfo.nWorldStat;
	m_nSectStat		= pRoleData->BaseInfo.nSectStat;
	m_ImagePlayer   = pRoleData->BaseInfo.ihelmres;	// chan dung
	//�ֽ���������е�Ǯ
	int nCashMoney = 0;
	int nSaveMoney = 0;
    this->m_ItemList.Init(GetPlayerIndex());
	nCashMoney		= pRoleData->BaseInfo.imoney;
	nSaveMoney		= pRoleData->BaseInfo.isavemoney;
	m_ItemList.SetMoney(nCashMoney, nSaveMoney,0);

	pNpc->m_Series	= pRoleData->BaseInfo.ifiveprop;
	pNpc->m_Camp	= pRoleData->BaseInfo.iteam;
	
	pNpc->m_nSex	= pRoleData->BaseInfo.bSex;

	pNpc->m_LifeMax	= pRoleData->BaseInfo.imaxlife;
	pNpc->m_StaminaMax = pRoleData->BaseInfo.imaxstamina;
	pNpc->m_ManaMax = pRoleData->BaseInfo.imaxinner;

	pNpc->m_LifeReplenish = PLAYER_LIFE_REPLENISH;
	pNpc->m_ManaReplenish = PLAYER_MANA_REPLENISH;
	pNpc->m_StaminaGain = PLAYER_STAMINA_GAIN;
	pNpc->m_StaminaLoss = PLAYER_STAMINA_LOSS;

	this->SetBaseResistData();
	SetBaseSpeedAndRadius();
	pNpc->RestoreNpcBaseInfo();
	
	pNpc->m_CurrentLife = pRoleData->BaseInfo.icurlife;
	pNpc->m_CurrentMana = pRoleData->BaseInfo.icurinner;
	pNpc->m_CurrentStamina = pRoleData->BaseInfo.icurstamina;

	// PK��Ϣ
	m_cPK.SetNormalPKStateDB(pRoleData->BaseInfo.cPkStatus);
	m_cPK.SetPKValue(pRoleData->BaseInfo.ipkvalue);
	m_cPK.BlockPKState(FALSE);  

	// ��ʼ���������ݣ���Щ�������ݿⲻ�洢��
	m_BuyInfo.Clear();
	m_cMenuState.Release();
	m_cChat.Release();
	m_cTeam.Release();
	m_cTeam.SetCanTeamFlag(m_nPlayerIndex, TRUE);
	m_nPeapleIdx = 0;
	m_nObjectIdx = 0;
	memset(m_szTaskAnswerFun, 0, sizeof(m_szTaskAnswerFun));
	m_nAvailableAnswerNum = 0;


	m_dwTaskAnswerScriptID = 0;



    memset(m_szFunStringBox, 0, sizeof(m_szFunStringBox));

	m_dwScriptStringBoxID = 0;


    memset(m_szFunCheckItemBox, 0, sizeof(m_szFunCheckItemBox));

	m_dwScriptCheckItemBoxID = 0;


	memset(m_szFunSlectCheckBox, 0, sizeof(m_szFunSlectCheckBox));




	memset(m_szCPUIPName, 0, sizeof(m_szCPUIPName));



	m_dwScriptSlectCheckBoxID = 0;

	m_btSlectCheckBox[0] = 0;
	m_btSlectCheckBox[1] = 0;
	m_btSlectCheckBox[2] = 0;



	m_dwTimeThrowAwayItem = 0;


	m_dwTimeRideHorse = 0;


	m_dwTimeOpenShop = 0;
	m_dwTimeBuyShop = 0;
	m_nPlayerBuyShop = 0;

	m_dwNpcRequestOld = 0;
	m_nNpcRequestOldTime = 0;

	memset(m_szNameOpenShop, 0, sizeof(m_szNameOpenShop));


	Npc[m_nIndex].m_ActionScriptID = 0;
	Npc[m_nIndex].m_TrapScriptID = 0;
	m_nViewEquipTime = 0;

	pNpc->m_Experience = 0;
//	memset(pNpc->m_szChatBuffer, 0, sizeof(pNpc->m_szChatBuffer));
//	pNpc->m_nCurChatTime = 0;

	pNpc->m_WeaponType = g_ItemChangeRes.GetWeaponRes(0, 0, 0);
	pNpc->m_ArmorType = g_ItemChangeRes.GetArmorRes(0, 0);
	pNpc->m_HelmType = g_ItemChangeRes.GetHelmRes(0, 0);
	pNpc->m_HorseType = g_ItemChangeRes.GetHorseRes(0, 0);
	pNpc->m_bRideHorse = FALSE;
	nParam = 1;
	pCurData = (BYTE *)&pRoleData->pBuffer;
	// ������Ϸʱս��ģʽ
	pNpc->m_FightMode = pRoleData->BaseInfo.cFightMode;
	// �Ƿ��Ǵ��ڿ������״̬
	if (pRoleData->BaseInfo.cIsExchange)
	{
	}
	return 1;
}

int	KPlayer::LoadPlayerItemList(BYTE * pRoleBuffer , BYTE* &pItemBuffer, unsigned int &nParam)
{
	KASSERT(pRoleBuffer);
	
	int nItemCount = ((TRoleData *)pRoleBuffer)->nItemCount;
	TDBItemData * pItemData = (TDBItemData *)pItemBuffer;
	
	if (nItemCount == 0) return 1;
	if (nParam != 0)
//		m_ItemList.Init(m_nPlayerIndex);
//	else 
	{
		//���Ҫ���õ���Ʒ�Ŵ���ʵ�ʵ���Ʒ���������˳�
		if (nParam >= nItemCount )
			return -1;
	}

	char szSection[100];
	char szSubSection[100];
	char szKey[100];
	int nItemClass;
	int nItemBaseInfoCount ;
	int nItemEfficInfoCount;
	int nItemRequireInfoCount;
	int dwItemID = 0; 
	int nDetailType = 0;
	int nParticularType = 0;
	int nSeries = 0;
	int nLevel = 0;
	int nLocal = 0;
	int nItemX = 0;
	int nItemY = 0;
	int	nLucky = 0;
	int nBegin = nParam;
	int nEnd = nParam + DBLOADPERTIME_ITEM;
	
	if ( nEnd > nItemCount)
		nEnd = nItemCount;

	nParam = nEnd;		
	// Time Item
	time_t rawtime;
	struct tm * timeinfo;
	
	time ( &rawtime );
	timeinfo = localtime ( &rawtime );
	// End
	for (int i = nBegin ; i < nEnd; i ++)
	{
		
		KItem NewItem;	
		ZeroMemory(&NewItem, sizeof(KItem));
		
		//���������Ϣ**************************************************************
		nItemClass	= pItemData->iequipclasscode;
		NewItem.m_CommonAttrib.nDetailType		= pItemData->idetailtype;
		NewItem.m_CommonAttrib.nParticularType	= pItemData->iparticulartype;
		NewItem.m_CommonAttrib.nLevel			= pItemData->ilevel;
		NewItem.m_CommonAttrib.nSeries			= pItemData->iseries;
		NewItem.m_CommonAttrib.nBind			= pItemData->ibind;
		

		nItemX			= pItemData->ix;
		nItemY			= pItemData->iy;
		nLocal			= pItemData->ilocal;

		//��������������ItemSet��,�Լ����ӵ������Ʒ�б���**************************************************************
		//NewItem.SetID(dwItemID);
		NewItem.m_GeneratorParam.nGeneratorLevel[0] = pItemData->iparam1;
		NewItem.m_GeneratorParam.nGeneratorLevel[1] = pItemData->iparam2;
		NewItem.m_GeneratorParam.nGeneratorLevel[2] = pItemData->iparam3;
		NewItem.m_GeneratorParam.nGeneratorLevel[3] = pItemData->iparam4;
		NewItem.m_GeneratorParam.nGeneratorLevel[4] = pItemData->iparam5;
		NewItem.m_GeneratorParam.nGeneratorLevel[5] = pItemData->iparam6;
		
		NewItem.m_GeneratorParam.nVersion			= pItemData->iequipversion;
		NewItem.m_GeneratorParam.uRandomSeed		= pItemData->irandseed;
		NewItem.m_GeneratorParam.nLuck				= pItemData->ilucky;

	
		BOOL bGetEquiptResult = 0;
		if (pItemData->iyear)
		if (pItemData->iyear - 1900 < timeinfo->tm_year)
		{
			pItemData ++;
			continue;
		}
		else if (pItemData->iyear - 1900 == timeinfo->tm_year)
		if (pItemData->imonth < timeinfo->tm_mon + 1)
		{
			pItemData ++;
			continue;
		}
		else if (pItemData->imonth == timeinfo->tm_mon + 1)
			if (pItemData->iday < timeinfo->tm_mday)
			{
				pItemData ++;
				continue;
			}
			else if (pItemData->iday == timeinfo->tm_mday)
				if (pItemData->ihour <= timeinfo->tm_hour)
				{
					pItemData ++;
					continue;
				}
		//���ݲ�ͬ��������ͼ���
		//��ͬ�������Դ��Ϣ
		NewItem.m_CommonAttrib.iShopCost			= pItemData->iShopCost;
		NewItem.m_nPriceShop			= pItemData->iShopCost;
		NewItem.m_CommonAttrib.iNgoaiTrang			= pItemData->iNgoaiTrang;
		
		switch(nItemClass)
		{
		case item_equip :			// װ��
			bGetEquiptResult = ItemGen.Gen_ExistEquipment(
				NewItem.m_CommonAttrib.nDetailType, 
				NewItem.m_CommonAttrib.nParticularType,
				NewItem.m_CommonAttrib.nSeries,
				NewItem.m_CommonAttrib.nLevel, 
				NewItem.m_GeneratorParam.nGeneratorLevel, 
				NewItem.m_GeneratorParam.nLuck,
				NewItem.m_GeneratorParam.nVersion,
				&NewItem);
			break;
		case item_medicine:			// ҩƷ
				bGetEquiptResult = ItemGen.Gen_Medicine(
					NewItem.m_CommonAttrib.nDetailType,
					NewItem.m_CommonAttrib.nLevel,
					NewItem.m_GeneratorParam.nVersion, 
					&NewItem);
			break;

		case item_mine:				// ��ʯ
			{
				
			}
			break;
		case item_materials:			// ҩ��
			{
				
			}
			break;
		case item_task:				// ����
			{
				if (NewItem.m_GeneratorParam.nVersion < 1 || NewItem.m_GeneratorParam.nVersion > 50)
				{
					
					printf("Loi Item Xep Trong [%d] [%s] [%s] !\n",NewItem.m_CommonAttrib.nDetailType,m_AccoutName,m_PlayerName);





	try
	{
		KLuaScript * pScript = (KLuaScript* )g_GetScript("\\script\\admin\\accloi.lua");;
		if (pScript)
		{

			int nTopIndex = 0;
			pScript->SafeCallBegin(&nTopIndex);
			pScript->CallFunction("main",0, "dss",NewItem.m_CommonAttrib.nDetailType,m_AccoutName,m_PlayerName);	
			pScript->SafeCallEnd(nTopIndex);	
		}
	}
	catch(...)
	{
		printf("Exception Have Caught When Execute Script[%d]!!!!!", g_FileName2Id("\\script\\admin\\accloi.lua"));
	}


	 

				}


				else

				{

			

				bGetEquiptResult = ItemGen.Gen_Quest(NewItem.m_CommonAttrib.nDetailType, &NewItem,NewItem.m_GeneratorParam.nVersion,NewItem.m_GeneratorParam.nGeneratorLevel,NewItem.m_CommonAttrib.nSeries);

				}


			}
			break;
		case item_townportal:
			{
				bGetEquiptResult = ItemGen.Gen_TownPortal(&NewItem);
			}
			break;
		}

		// �����ɵ�װ�����;öȵ���Ϊ���ݿ��д洢�ġ�
			NewItem.m_CommonAttrib.nFiFongArmor			= pItemData->ififongarmor;
			NewItem.SetDurability(pItemData->idurability);
			NewItem.SetBindItem(pItemData->ibind);
			NewItem.SetTime(pItemData->iyear,pItemData->imonth,pItemData->iday,pItemData->ihour); // Time Item
			NewItem.SetShopCost(pItemData->iShopCost);
			NewItem.SetNgoaiTrang(pItemData->iNgoaiTrang);

		pItemData ++;

		if (!bGetEquiptResult)
			continue;

		
		int nIndex = ItemSet.Add(&NewItem);
		
		if (nIndex <= 0) 
		{
			printf("Xay ra loi gioi han Item, tu dong xua loi !");
			return -1;
		}
	

		if (!m_ItemList.Add(nIndex, nLocal, nItemX, nItemY))
		{


		if (!m_ItemList.Hand())
		{

		if (Item[nIndex].GetGenre() == item_equip && Item[nIndex].m_GeneratorParam.nVersion > 1)
		{
        printf("Not Hand : Load Item Khoa Loi [%s] [%s] [%s] !\n",Item[nIndex].GetName(),m_AccoutName,m_PlayerName);
		}
		else
		{
		printf("Not Hand : Load Item Loi [%s] [%s] [%s] !\n",Item[nIndex].GetName(),m_AccoutName,m_PlayerName);
		}

		m_ItemList.Add(nIndex, pos_hand, 0 ,0);
		}
		else
		{

		if (Item[nIndex].GetGenre() == item_equip && Item[nIndex].m_GeneratorParam.nVersion > 1)
		{
        printf("Hand : Load Item Khoa Loi [%s] [%s] [%s] !\n",Item[nIndex].GetName(),m_AccoutName,m_PlayerName);
	    return -1;
		}
		else
		{
		printf("Hand : Load Item Loi [%s] [%s] [%s] !\n",Item[nIndex].GetName(),m_AccoutName,m_PlayerName);
		}

		}

		}

		
	}

	pItemBuffer	= (BYTE *)pItemData;

	if (nParam >= nItemCount)
		return 1;
	else 
		return 0;
}


int	KPlayer::LoadPlayerFightSkillList(BYTE * pRoleBuffer, BYTE * &pFightBuffer, unsigned int& nParam)
{
	KASSERT(pRoleBuffer);
	int nSkillCount = 0;
	char szSkillId[100];
	char szSkillLevel[100];
	nSkillCount = ((TRoleData*)(pRoleBuffer))->nFightSkillCount;
	
	if (nSkillCount == 0)	
		return 1;
	
	if (nParam >= nSkillCount )	
		return -1;
	
	int nBegin	= nParam;
	int nEnd	= nBegin + DBLOADPERTIME_SKILL;
	if (nEnd > nSkillCount) 	nEnd = nSkillCount;
	nParam = nEnd;
	TDBSkillData * pSkillData = NULL;
	if (nBegin == 0)
		pSkillData = (TDBSkillData *)((BYTE*)pRoleBuffer + ((TRoleData*)pRoleBuffer)->dwFSkillOffset);
	else
		pSkillData = (TDBSkillData*)pFightBuffer;
	for (int i = nBegin ; i < nEnd; i ++, pSkillData ++ )
	{
		int nSkillId = 0;
		int nSkillLevel = 0;
		nSkillId = pSkillData->m_nSkillId;
		nSkillLevel = pSkillData->m_nSkillLevel;
		Npc[m_nIndex].m_SkillList.Add(nSkillId, nSkillLevel);
	}
	pFightBuffer = (BYTE*) pSkillData;
	if (nParam >= nSkillCount) return 1;
	else 
		return 0;
}

int	KPlayer::LoadPlayerLifeSkilllList(BYTE * pRoleBuffer, BYTE * &pFriendBuffer, unsigned int& nParam)
{
	KASSERT(pRoleBuffer);
	int nSkillCount = 0;
	char szSkillId[100];
	char szSkillLevel[100];
	nSkillCount = ((TRoleData*)(pRoleBuffer))->nLiveSkillCount;
	
	if (nSkillCount == 0)
		return 1;

	if (nParam >= nSkillCount )		return -1;
	int nBegin	= nParam;
	int nEnd	= nBegin + DBLOADPERTIME_SKILL;
	if (nEnd > nSkillCount) 	nEnd = nSkillCount;
	nParam = nEnd;

	TDBSkillData * pSkillData = (TDBSkillData*)pFriendBuffer;
	for (int i = nBegin ; i < nEnd; i ++, pSkillData ++ )
	{
		int nSkillId = 0;
		int nSkillLevel = 0;
		nSkillId = pSkillData->m_nSkillId;
		nSkillLevel = pSkillData->m_nSkillLevel;
		Npc[m_nIndex].m_SkillList.Add(nSkillId, nSkillLevel);
	}
	pFriendBuffer = (BYTE*) pSkillData;

	if (nParam >= nSkillCount) return 1;
	else 
		return 0;

}

int	KPlayer::LoadPlayerFriendList(BYTE * pRoleBuffer, BYTE * &pFriendBuffer, unsigned int &nParam)
{
	KASSERT(pRoleBuffer);

	if (nParam == 1)
		return 0;
	if (nParam == 2)
		return 1;

	int		nFriendCount;
	DWORD	dwID;
	char	szBuffer[32], szName[32];
	nFriendCount = ((TRoleData*)pRoleBuffer)->nFriendCount;
	if (nFriendCount == 0)
	{
		nParam = 2;
		return 1;
	}
	char * pCurFriend = (char *)pFriendBuffer;
	for (int i = 0; i < nFriendCount; i++)
	{
		
		strcpy(szName, (char *)pFriendBuffer);
		if (!szName[0])
			continue;
		dwID = g_FileName2Id(szName);
		m_cChat.DataBaseAddOne(this->m_nPlayerIndex, dwID, szName);
		pFriendBuffer += (strlen(szName) + 1);
	}
	this->m_cChat.StartSendFriendData();

	nParam = 1;
	return 0;
}

int	KPlayer::LoadPlayerTaskList(BYTE * pRoleBuffer, BYTE * &pTaskBuffer, unsigned int& nParam)
{
	KASSERT(pRoleBuffer);
	while(m_PlayerStationList.GetHead())
	{
		KIndexNode * pNode = (KIndexNode * ) m_PlayerStationList.GetHead();
		m_PlayerStationList.RemoveHead();
		delete pNode;
	}
	while(m_PlayerWayPointList.GetHead())
	{
		KIndexNode * pNode = (KIndexNode * ) m_PlayerWayPointList.GetHead();
		m_PlayerWayPointList.RemoveHead();
		delete pNode;
	}

	if(nParam == 0)	m_cTask.Release();

	int nTaskCount = 0;
	int nTaskId = 0;
	int nTaskDegee = 0;
	char szTaskIDKey[100];
	char szTaskValueKey[100];
	nTaskCount = ((TRoleData* )pRoleBuffer)->nTaskCount;

	if (nTaskCount == 0) return 1;
	if (nParam >= nTaskCount ) return -1;
	int nBegin	= nParam;
	int nEnd	= nBegin + DBLOADPERTIME_TASK;
	if (nEnd > nTaskCount) nEnd = nTaskCount;
	nParam = nEnd;
	TDBTaskData * pTaskData = (TDBTaskData*) pTaskBuffer;
	for (int i = nBegin; i < nEnd; i ++ , pTaskData ++)
	{
		nTaskId = pTaskData->m_nTaskId;
		nTaskDegee = pTaskData->m_nTaskValue;
		if (nTaskId >= MAX_TASK) 
		{
			KASSERT(0);
			continue;//����ID���������ˣ�
		}
		m_cTask.SetSaveVal(nTaskId, nTaskDegee);
		PLAYER_TONGKIM_SYNC     IDC;

		IDC.ProtocolType = s2c_playertongkimsync;
		IDC.nValueIndex = nTaskId; //nTaskID ma
		IDC.nValue = nTaskDegee;
		//IDC.bCheck = 0;
		if (g_pServer)
			 g_pServer->PackDataToClient(m_nNetConnectIdx, &IDC, sizeof(PLAYER_TONGKIM_SYNC));	
	}
	pTaskBuffer = (BYTE*) pTaskData;










if (m_nIndex > 0)
{

	if (m_cTask.GetSaveVal(139) == 1)
	{
	m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp1(Npc[m_nIndex].m_Level);
	}
	else if (m_cTask.GetSaveVal(139) == 2)
	{
	m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp2(Npc[m_nIndex].m_Level);
	}

	else if (m_cTask.GetSaveVal(139) == 3)
	{
	m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp3(Npc[m_nIndex].m_Level);
	}
	else if (m_cTask.GetSaveVal(139) == 4)
	{
	m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp4(Npc[m_nIndex].m_Level);
	}
	else if (m_cTask.GetSaveVal(139) == 5)
	{
	m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp5(Npc[m_nIndex].m_Level);
	}





	else
	{
	m_nNextLevelExp = PlayerSet.m_cLevelAdd.GetLevelExp(Npc[m_nIndex].m_Level);
	}
}
	if (nParam >= nTaskCount) return 1;
	else 
	return 0;
}

int	KPlayer::SavePlayerBaseInfo(BYTE * pRoleBuffer)
{
	_ASSERT(pRoleBuffer);
	if (m_nIndex <= 0) return -1;

	KNpc * pNpc = &Npc[m_nIndex];
	TRoleData * pRoleData = (TRoleData*)pRoleBuffer;
	//�����Ϣ
	memset(pRoleData, 0, sizeof(TRoleData));
	pRoleData->bBaseNeedUpdate = 1;
	strcpy(pRoleData->BaseInfo.szName, m_PlayerName);
//	strcpy(pRoleData->BaseInfo.szName, "asdsdmmbbcc");
	if (m_AccoutName[0])
		strcpy(pRoleData->BaseInfo.caccname, m_AccoutName);
	pRoleData->BaseInfo.nForbiddenFlag = m_nForbiddenFlag;
	pRoleData->BaseInfo.ileftprop = m_nAttributePoint;
	pRoleData->BaseInfo.ileftfight = m_nSkillPoint;
	pRoleData->BaseInfo.ipower = m_nStrength;
	pRoleData->BaseInfo.iagility = m_nDexterity;
	pRoleData->BaseInfo.iouter = m_nVitality;
	pRoleData->BaseInfo.iinside	=  m_nEngergy;
	pRoleData->BaseInfo.iluck = m_nLucky;
	pRoleData->BaseInfo.dwTongID = m_cTong.GetTongNameID();

	//��ҵ���ʾ��Ϣ	-- remark by spe because client ui display changed 2003/07/21
//	pRoleData->BaseInfo.ihelmres = pNpc->m_HelmType;
//	pRoleData->BaseInfo.iarmorres = pNpc->m_ArmorType;
//	pRoleData->BaseInfo.iweaponres = pNpc->m_WeaponType;
	
	//��ҵȼ���Ϣ
	pRoleData->BaseInfo.fightexp = m_nExp;
	pRoleData->BaseInfo.ifightlevel = pNpc->m_Level;
	
	pRoleData->BaseInfo.ileadlevel = m_dwLeadLevel;
	pRoleData->BaseInfo.ileadexp =	m_dwLeadExp;


	pRoleData->BaseInfo.szAlias[0] = m_cTask.GetSaveVal(139);

	pRoleData->BaseInfo.szAlias[1] = 9;
	pRoleData->BaseInfo.szAlias[2] = m_cTask.GetSaveVal(115);;


	//������Ϣ
	pRoleData->BaseInfo.nSect =		m_cFaction.m_nCurFaction;
	pRoleData->BaseInfo.nFirstSect = 	m_cFaction.m_nFirstAddFaction;
	pRoleData->BaseInfo.ijoincount = m_cFaction.m_nAddTimes;
	pRoleData->BaseInfo.isectrole = pNpc->m_btRankId;
	pRoleData->BaseInfo.nWorldStat	= m_nWorldStat;
	pRoleData->BaseInfo.nSectStat	= m_nSectStat;
	pRoleData->BaseInfo.ihelmres =  m_ImagePlayer;	// chan dung
	
	//�ֽ���������е�Ǯ
	int nCashMoney = 0;
	int nSaveMoney = 0;
	
	nCashMoney  = m_ItemList.GetMoney(room_equipment);
	nSaveMoney	= m_ItemList.GetMoney(room_repository);
	pRoleData->BaseInfo.imoney			= nCashMoney;
	pRoleData->BaseInfo.isavemoney		= nSaveMoney;
	pRoleData->BaseInfo.ifiveprop		= pNpc->m_Series;
	pRoleData->BaseInfo.iteam			= pNpc->m_Camp;
	pRoleData->BaseInfo.bSex			= pNpc->m_nSex;
	pRoleData->BaseInfo.imaxlife		= pNpc->m_LifeMax;
	pRoleData->BaseInfo.imaxstamina		= pNpc->m_StaminaMax;
	pRoleData->BaseInfo.imaxinner		= pNpc->m_ManaMax;
	pRoleData->BaseInfo.icurlife		= pNpc->m_CurrentLife;
	pRoleData->BaseInfo.icurinner		= pNpc->m_CurrentMana;
	pRoleData->BaseInfo.icurstamina		= pNpc->m_CurrentStamina;

	//�����
	pRoleData->BaseInfo.irevivalid = 	m_sLoginRevivalPos.m_nSubWorldID;
	pRoleData->BaseInfo.irevivalx = 	m_sLoginRevivalPos.m_ReviveID;
	pRoleData->BaseInfo.irevivaly = 	0;

	if (m_bExchangeServer)	// ׼������������Ѵ��̵���ΪĿ���
	{
		pRoleData->BaseInfo.cUseRevive = 0;
		pRoleData->BaseInfo.ientergameid = m_sExchangePos.m_dwMapID;
		pRoleData->BaseInfo.ientergamex = m_sExchangePos.m_nX;
		pRoleData->BaseInfo.ientergamey = m_sExchangePos.m_nY;
		pRoleData->BaseInfo.cFightMode = (BYTE)pNpc->m_FightMode;
	}
	else if (pNpc->m_SubWorldIndex >= 0 && pNpc->m_RegionIndex >= 0 && pNpc->m_Doing != do_death && pNpc->m_Doing != do_revive)
	{
		pRoleData->BaseInfo.cUseRevive = m_bUseReviveIdWhenLogin;
		pRoleData->BaseInfo.ientergameid = SubWorld[pNpc->m_SubWorldIndex].m_SubWorldID;
		pNpc->GetMpsPos(&pRoleData->BaseInfo.ientergamex, &pRoleData->BaseInfo.ientergamey);
		pRoleData->BaseInfo.cFightMode = (BYTE)pNpc->m_FightMode;
	}
	else
	{
		pRoleData->BaseInfo.cUseRevive = 1;
		pRoleData->BaseInfo.cFightMode = 0;
		if (pNpc->m_Doing == do_death || pNpc->m_Doing == do_revive)
		{
			pRoleData->BaseInfo.icurlife = pNpc->m_LifeMax;
			pRoleData->BaseInfo.icurinner = pNpc->m_ManaMax;
			pRoleData->BaseInfo.icurstamina = pNpc->m_StaminaMax;
		}
	}

	//PK���
	pRoleData->BaseInfo.cPkStatus = (BYTE)m_cPK.GetNormalPKState();
	pRoleData->BaseInfo.ipkvalue = m_cPK.GetPKValue();
	pRoleData->dwFSkillOffset = (BYTE * )pRoleData->pBuffer - (BYTE *)pRoleBuffer;

	return 1;
	
}

int	KPlayer::SavePlayerItemList(BYTE * pRoleBuffer)
{
	_ASSERT(pRoleBuffer);

	TRoleData * pRoleData = (TRoleData*) pRoleBuffer;

	TDBItemData * pItemData = (TDBItemData*) ((BYTE*)pRoleData +  pRoleData->dwItemOffset);

	int	nItemCount = 0;
	char szSection[100];
	char szKey[100];

	int nIdx = 0;
	while(1)
	{
		nIdx = m_ItemList.m_UseIdx.GetNext(nIdx);
		if (nIdx == 0 )
			break;
		int nItemIndex = m_ItemList.m_Items[nIdx].nIdx;
		
		sprintf(szSection, "%s%d", SECTION_ITEM, nItemCount + 1);
		//��һ�����Ϣ*****************************************************************8	
		pItemData->iequipclasscode =  Item[nItemIndex].m_CommonAttrib.nItemGenre;
		pItemData->iequipcode =  Item[nItemIndex].GetID();
		pItemData->idetailtype =  Item[nItemIndex].m_CommonAttrib.nDetailType;
		pItemData->iparticulartype =  Item[nItemIndex].m_CommonAttrib.nParticularType;
		pItemData->ilevel =  Item[nItemIndex].m_CommonAttrib.nLevel;
		pItemData->iseries =  Item[nItemIndex].m_CommonAttrib.nSeries;
		pItemData->ibind =  Item[nItemIndex].m_CommonAttrib.nBind;
		pItemData->iShopCost =  Item[nItemIndex].m_nPriceShop;
		pItemData->iNgoaiTrang =  Item[nItemIndex].m_CommonAttrib.iNgoaiTrang;
		pItemData->ilocal =  m_ItemList.m_Items[nIdx].nPlace;
		pItemData->ix =  m_ItemList.m_Items[nIdx].nX;
		pItemData->iy =  m_ItemList.m_Items[nIdx].nY;
		pItemData->iequipversion = Item[nItemIndex].GetItemParam()->nVersion;
		pItemData->irandseed = Item[nItemIndex].GetItemParam()->uRandomSeed;
		pItemData->iparam1 =  Item[nItemIndex].GetItemParam()->nGeneratorLevel[0];
		pItemData->iparam2 =  Item[nItemIndex].GetItemParam()->nGeneratorLevel[1];
		pItemData->iparam3 =  Item[nItemIndex].GetItemParam()->nGeneratorLevel[2];
		pItemData->iparam4 =  Item[nItemIndex].GetItemParam()->nGeneratorLevel[3];
		pItemData->iparam5 =  Item[nItemIndex].GetItemParam()->nGeneratorLevel[4];
		pItemData->iparam6 =  Item[nItemIndex].GetItemParam()->nGeneratorLevel[5];
		pItemData->ilucky = 	 Item[nItemIndex].GetItemParam()->nLuck;
		pItemData->idurability = Item[nItemIndex].GetDurability();
		pItemData->iidentify = 0;
		// Time Item
		pItemData->iyear = Item[nItemIndex].GetTime()->bYear;
		pItemData->imonth = Item[nItemIndex].GetTime()->bMonth;
		pItemData->iday = Item[nItemIndex].GetTime()->bDay;
		pItemData->ihour = Item[nItemIndex].GetTime()->bHour;
		//End
		pItemData->ififongarmor = Item[nItemIndex].GetFiFongArmor();
		
		//*****************************************************************************8

		pItemData++;
		nItemCount ++;
	}
	
	pRoleData->nItemCount = nItemCount;
	
	pRoleData->dwFriendOffset = (BYTE *)pItemData - (BYTE * )pRoleData;
	pRoleData->dwDataLen = (BYTE*)pItemData - (BYTE*)pRoleBuffer;

	return 1;
}

int	KPlayer::SavePlayerFightSkillList(BYTE * pRoleBuffer)
{
	_ASSERT(pRoleBuffer);
	if (m_nIndex <= 0) 
		return FALSE;
	TRoleData * pRoleData = (TRoleData *)pRoleBuffer;
	TDBSkillData * pSkillData = (TDBSkillData *) (pRoleBuffer + pRoleData->dwFSkillOffset);
	int nCount = Npc[m_nIndex].m_SkillList.UpdateDBSkillList((BYTE *)pSkillData);
	if (nCount > 0)
	{
		pRoleData->nFightSkillCount = nCount;
		pRoleData->dwLSkillOffset = (BYTE*)pSkillData - pRoleBuffer + sizeof(TDBSkillData) * nCount;
	}
	else
	{
		pRoleData->nFightSkillCount  = 0;
		pRoleData->dwLSkillOffset = (BYTE*)pSkillData - pRoleBuffer;
	}


	return 1;
}

int	KPlayer::SavePlayerLifeSkilllList(BYTE * pRoleBuffer)
{
	_ASSERT(pRoleBuffer);
	TRoleData * pRoleData = (TRoleData *)pRoleBuffer;
	TDBSkillData * pSkillData = (TDBSkillData *) (pRoleBuffer + pRoleData->dwLSkillOffset);
	pRoleData->dwTaskOffset = (BYTE*)pSkillData - pRoleBuffer;

	return 1;
}

int	KPlayer::SavePlayerFriendList(BYTE * pRoleBuffer)
{
	_ASSERT(pRoleBuffer);

	int		nFriendNo;
	char	szBuffer[32];
	CChatFriend	*pFriend;
	TRoleData * pRoleData = (TRoleData *)pRoleBuffer;

	nFriendNo = m_cChat.m_cFriendTeam[0].m_nFriendNo;
	char * pCurFriend = (char *)((BYTE *)pRoleData + pRoleData->dwFriendOffset);
	int nTotalFriendNo  = 0;
	pFriend = (CChatFriend*)m_cChat.m_cFriendTeam[0].m_cEveryOne.GetHead();
	while (pFriend)
	{
		nTotalFriendNo++;
		strcpy(pCurFriend, pFriend->m_szName);
		pCurFriend += strlen(pFriend->m_szName) + 1;
		pFriend = (CChatFriend*)pFriend->GetNext();
	}
	pRoleData->nFriendCount = nTotalFriendNo;
	_ASSERT(nTotalFriendNo == nFriendNo);
	pRoleData->dwDataLen = (BYTE*)pCurFriend - (BYTE*)pRoleBuffer;
	return 1;
}


int	KPlayer::SavePlayerTaskList(BYTE * pRoleBuffer)
{
	_ASSERT(pRoleBuffer);
	TRoleData * pRoleData = (TRoleData *) pRoleBuffer;
	int nTaskCount = 0;
	int nTaskId = 0;
	int nTaskDegee = 0;
	char szTaskIDKey[100];
	char szTaskValueKey[100];

	KIndexNode * pNode = (KIndexNode*)m_PlayerStationList.GetHead();
	int n = 0;
	memset(&m_cTask.nSave[TASKVALUE_SAVESTATION_BEGIN], 0, (TASKVALUE_MAXSTATION_COUNT / 2) * sizeof(int));
	memset(&m_cTask.nSave[TASKVALUE_SAVEWAYPOINT_BEGIN], 0, TASKVALUE_MAXWAYPOINT_COUNT * sizeof(int));

	while(pNode)
	{
		if (n >= TASKVALUE_MAXSTATION_COUNT) break;
		DWORD dwValue = m_cTask.nSave[TASKVALUE_SAVESTATION_BEGIN + n / 2];
		DWORD OrValue = pNode->m_nIndex ;
		OrValue = OrValue << ((n % 2) * 16);
		dwValue = dwValue | OrValue;
		m_cTask.nSave[TASKVALUE_SAVESTATION_BEGIN + n / 2] = dwValue;
		n++;
		pNode = (KIndexNode*)pNode->GetNext();
	}
	
	n = 0;
	pNode = (KIndexNode*) m_PlayerWayPointList.GetHead();
	while(pNode)
	{
		if (n >= TASKVALUE_MAXWAYPOINT_COUNT) break;
		if (pNode->m_nIndex == 0) continue;
		m_cTask.nSave[TASKVALUE_SAVEWAYPOINT_BEGIN + n] = pNode->m_nIndex;
		n++;
		pNode = (KIndexNode*)pNode->GetNext();
	}
	
	
	g_TimerTask.SaveTask(this);


	TDBTaskData * pTaskData = (TDBTaskData *)(pRoleBuffer + pRoleData->dwTaskOffset);
	for (int i = 0; i < MAX_TASK; i ++)
	{
		if (!m_cTask.nSave[i]) continue;
		
		pTaskData->m_nTaskId = i;
		pTaskData->m_nTaskValue = m_cTask.GetSaveVal(i);
		nTaskCount ++;
		pTaskData ++;
	}
		
	pRoleData->nTaskCount = nTaskCount;
	pRoleData->dwItemOffset = (BYTE *)pTaskData - pRoleBuffer;

	return 1;
}
#endif

