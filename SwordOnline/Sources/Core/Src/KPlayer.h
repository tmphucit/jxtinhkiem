#ifndef KPlayerH
#define	KPlayerH
//#include <objbase.h>
#include "KWorldMsg.h"
#include "KMessage.h"
#include "KInventory.h"
#include "KPlayerFaction.h"
#include "KPlayerChat.h"
#include "KPlayerTask.h"
#include "KPlayerMenuState.h"
#include "KPlayerTrade.h"
#include "KPlayerTeam.h"
#include "KPlayerPK.h"
#include "KPlayerTong.h"
#include "KItemList.h"
#include "KNpc.h"
#include "KSkills.h"

#include "KPlayerDef.h"



#define		MAX_ANSWERNUM					50
#define		PLAYER_LIFE_REPLENISH			0
#define		PLAYER_MANA_REPLENISH			0
#define		PLAYER_STAMINA_GAIN				0
#define		PLAYER_STAMINA_LOSS				4

#define		STRENGTH_SET_DAMAGE_VALUE		5
#define		DEXTERITY_SET_DAMAGE_VALUE		5

#define		MAX_AVENGE_NUM					4

#ifndef _SERVER
#define		MAX_AUTO_MANA_WAIL			 2 * 18
#define		MAX_AUTO_LIFE_WAIL			 2 * 18
#define		MAX_AUTO_OBJ_WAIL			 5 * 18
#define		MAX_AUTO_SKILL_BUFFE            3
#endif

enum	UIInfo //�ű�֪ͨ��ʾ�Ľ�������
{
	UI_SELECTDIALOG,
	UI_TRADEDIALOG,
	UI_TALKDIALOG,
	UI_NOTEINFO,
	UI_MSGINFO,//��������ð��������Ϣ
	UI_NEWSINFO,//����
	UI_PLAYMUSIC,
	UI_OPENTONGUI,
};

// ������λ����Ϣ
typedef struct PLAYER_REVIVAL_POS_DATA
{
	int				m_nSubWorldID;		// �������ͼ
	int				m_ReviveID;			// ����������
	int				m_nMpsX;			// �������ͼλ�� x
	int				m_nMpsY;			// �������ͼλ�� y
} PLAYER_REVIVAL_POS;

typedef struct
{
	int				m_nSubWorldId;		// ����������ID
	int				m_nTime;			// �����ű���ʱ��
	int				m_nMpsX;
	int				m_nMpsY;
} PLAYER_TOWNPORTAL_POS;

typedef struct 
{
	DWORD			m_dwMapID;
	int				m_nX;
	int				m_nY;
} PLAYER_EXCHANGE_POS;

typedef struct
{
	int		m_nBuyIdx;
	DWORD	m_SubWorldID;
	int		m_nMpsX;
	int		m_nMpsY;
	void	Clear() {m_nBuyIdx = -1; m_SubWorldID = -1; m_nMpsX = 0; m_nMpsY = 0;}
} BuySellInfo;
class KIniFile;


#ifdef TOOLVERSION
class CORE_API KPlayer
#else
class KPlayer
#endif
{
private:

#ifndef _SERVER
	int				m_nLeftSkillID;
	int				m_nLeftSkillLevel;
	int				m_nRightSkillID;
	int				m_nRightSkillLevel;
	BOOL			m_MouseDown[2];

#endif

#ifdef _SERVER
	PLAYER_REVIVAL_POS		m_sLoginRevivalPos;	// ����������λ�ã�����̣�
	PLAYER_REVIVAL_POS		m_sDeathRevivalPos;	// ���������㣨Ĭ��Ϊ���������㣬�����̣�
	PLAYER_TOWNPORTAL_POS	m_sPortalPos;		// ������λ��
	BOOL			m_bUseReviveIdWhenLogin;
	int				m_nExtPoint;				// �����
	int				m_nChangeExtPoint;			// �䶯�ĵ���
#endif
	int				m_nPhysicsSkillID;		//��ǰ��ҵ�����������
	int				m_nPeapleIdx;
	int				m_nObjectIdx;
	int				m_nPickObjectIdx;
	int				m_nPlayerIndex;				// ��ʵ���� Player �����е�λ��
	KCacheNode *	m_pLastScriptCacheNode;

public:
#ifdef _SERVER
	PLAYER_EXCHANGE_POS		m_sExchangePos;
	KTimerTaskFun	m_TimerTask;
	BOOL			m_bIsQuiting;
	UINT			m_uMustSave;
	DWORD			m_ulLastSaveTime;
	DWORD			m_dwLoginTime;
//	DWORD			m_uLastPingTime;
	char			m_AccoutName[32];				
	void*			m_pStatusLoadPlayerInfo;	//���������Ϣʱ��
	BYTE*			m_pCurStatusOffset;			//������ʱ����¼����ָ��λ����
	BOOL			m_bFinishLoading;			//��ɼ���
	BYTE			m_SaveBuffer[64 * 1024];	//���滺��
	int				m_nLastNetOperationTime;	//���һ���������ʱ��


	int				m_timetancong;
	int				m_nNumberNetPaketKT;




	BOOL			m_bSleepMode;
	KList			m_PlayerWayPointList;		//
	KList			m_PlayerStationList;
	int				m_nViewEquipTime;			// ���һ�β쿴����װ����ʱ��
	int				m_nPrePayMoney;
	enum
	{
		FF_CHAT = 0x01,
	};
	int				m_nForbiddenFlag;			// ��ֹ��־
	int				m_nLiXian;					// UYTHAC
	int				m_nLiXian2;					// UYTHAC

	// Auto Play
	
	int				m_AutoLifePoison;
	int				m_AutoManaPoison;
	int				m_AutoAllPoison;
	int				m_AutoAllPoisonMin;
	BOOL			m_AutoSuaTrangBi;
	BOOL			m_AutoGuiTien;
	BOOL			m_AutoBanTrangBi;
	BOOL			m_AutoNhatDoChonLoc;

	BOOL			m_AutoTTL;
	BOOL			m_AutoQuayLai;
	
	int				Auto_LuuMap;
	int				Auto_LuuThanhThi;
	int				Auto_LuuX;
	int				Auto_LuuY;
	int				Auto_DemTime;
	int				CheckViTriTrong;
	// Auto Loc Do
	int 			MangOption[39][2];
	int				MangDropItem[30];
	int				m_AutoNumSelect;
	BOOL			m_AutoRingSelect;
	BOOL			m_AutoWeaSelect;


	int 			CheckOption(int Type, int Value);
	// END

	char			m_szFunStringBox[32];
	DWORD			m_dwScriptStringBoxID;

	DWORD			m_dwScriptCheckItemBoxID;
	char			m_szFunCheckItemBox[32];

	DWORD			m_dwScriptSlectCheckBoxID;
	char			m_szFunSlectCheckBox[32];
	BYTE            m_btSlectCheckBox[3];

	DWORD			m_dwTaskAnswerScriptID;


	char			m_szCPUIPName[64];


	int             m_nPlayerBuyShop;

	DWORD           m_dwNpcRequestOld;
	int             m_nNpcRequestOldTime;

#endif

	DWORD			m_dwTimeThrowAwayItem;

	DWORD			m_dwTimeRideHorse;


	BOOL            m_bBlock;
	int             m_bTempBlock;


	char			m_szNameOpenShop[32];
	DWORD			m_dwTimeOpenShop;
	DWORD			m_dwTimeBuyShop;

	


	

#ifndef _SERVER
	int				m_RunStatus;				// ���ܻ�����
	DWORD			m_dwNextLevelLeadExp;		// ͳ������һ������ֵ
	int				m_nSendMoveFrames;			// ���ڿ��ƿͻ���������������ƶ�(�߻���)Э���Ƶ�ʣ�ʹ֮���ܷ��ʹ������ƶ�Э�飬��С����ѹ��
   
	// Update Them
	BOOL			m_HideRes;
	BOOL			m_HideMissle;
	BOOL			m_HideMissle2;
	BOOL			m_HideGame1;
	BOOL			m_HideGame2;
	BOOL			m_HideGame3;
	BOOL			m_AutoHorse;
	BOOL			m_QuanhDiem;
	BOOL			m_TargetPlayer;
	BOOL			m_TheoSau;
	BOOL			m_TuVe;
	BOOL			m_checkTargetPlayer;
	int				timeAutoInvite;
	BOOL			m_bUseTTL;
	BOOL			m_bUseTDP;

	BOOL			m_bNgaMy1;
	BOOL			m_bNgaMy2;
	BOOL			m_bNgaMy3;
	BOOL			m_bNgaMy4;
	BOOL			m_bNgaMy5;
	
	BOOL		m_bHidePlayer1;
	BOOL		m_bHidePlayer2;
	int			m_eHidePlayer3;
	int			m_eBoQuaPK;
	// Ket thuc update	
	int			TK_PK1;
	int			TK_PK2;
	int			TK_PK3;
	int			TK_PK4;
	
	int 			MangQuai[500][2];
	int             m_nBuyNumberUId;
	int             m_nBuyNumberIdx;
	int             m_nBuyNumberWidth;
	int             m_nBuyNumberHeigh;
	int             m_nBuyNumberPrice;
	int             m_nBuyNumberNum;
	BOOL            m_nAutoPlay;
	int             m_nAutoTimeNextNpc;
	int             m_nAutoTimeNextObj;
	int             m_nAutoTimeNextMana;
	int             m_nAutoTimeNextLife;
	BOOL            m_nAutoPause;
	int             m_nAutoOldCurenLifeActive;
    int             m_nAutoStarNpcX;
    int             NgaMiSkill1;
    int             NgaMiSkill2;
	int             m_nAutoStarNpcY;
	int             m_nAutoStarSkillIDx;
	int             m_nAutoLife;
	int             m_nNgaMyBuff;
	int             m_nAutoMana;
	int             m_nAutoReturn;
	int             m_nAutoAtack;
	int             m_nTempAutoAtack;
	int             m_nAutoRange;
	int             m_nAutoNAtack;
	int             m_nPhamViTuVe;
	BOOL			m_bMoneyObj;
	BOOL			m_bItemObj;
	BOOL			m_bItemSelect;
	BOOL			m_bPropObj;
	int 			checktoado;
	
	int             m_nAutoTimeNextLBMana;
	int             m_nAutoTimeNextLBLife;
	int             m_nAutoTimeNextLBMaLi;


#endif

	KIndexNode		m_Node;
	GUID			m_Guid;
	BOOL			m_bExchangeServer;
	int				m_DebugMode;
	DWORD			m_dwID;						// ��ҵ�32λID
	int				m_nIndex;					// ��ҵ�Npc���
	int				m_nNetConnectIdx;			// �ڼ�����������
	KItemList		m_ItemList;					// ��ҵ�װ���б�
	BuySellInfo		m_BuyInfo;					// ���еĽ����б�
	KPlayerMenuState	m_cMenuState;			// �Ƿ��ڽ��׻���鿪��״̬
	KTrade			m_cTrade;					// ����ģ��
	int				m_nAttributePoint;			// δ�������Ե�
	int				m_nSkillPoint;				// δ���似�ܵ�

	int				m_nStrength;				// ��ҵĻ������������������˺���
	int				m_nDexterity;				// ��ҵĻ������ݣ��������С�������
	int				m_nVitality;				// ��ҵĻ�������������������������
	int				m_nEngergy;					// ��ҵĻ�������������������
	int				m_nLucky;					// ��ҵĻ���������Ӱ��õ�װ���ĺû���
	BYTE			m_btChatSpecialChannel;		

	int				m_nCurStrength;				// ��ҵĵ�ǰ���������������˺���
	int				m_nCurDexterity;			// ��ҵĵ�ǰ���ݣ��������С�������
	int				m_nCurVitality;				// ��ҵĵ�ǰ����������������������
	int				m_nCurEngergy;				// ��ҵĵ�ǰ����������������
	int				m_nCurLucky;				// ��ҵĵ�ǰ������Ӱ��õ�װ���ĺû���
	void 			SetExp(int nExpAdd);
	int				m_nExp;						// ��ǰ����ֵ(��ǰ�ȼ���npc����)
	int				m_nNextLevelExp;			// ��һ������ֵ
	//BOOL 			Check_AcceptAutoName;
	DWORD			m_dwLeadExp;				// ͳ��������ֵ
	DWORD			m_dwLeadLevel;				// ͳ�����ȼ�
	char			m_PlayerName[32];

	
	KPlayerTeam		m_cTeam;					// ��ҵ������Ϣ
	KPlayerFaction	m_cFaction;					// ��ҵ�������Ϣ

	KPlayerChat		m_cChat;

	KPlayerTask		m_cTask;					// �������ϵͳ(����)

	KPlayerPK		m_cPK;						// PK��ϵ����

	KPlayerTong		m_cTong;					// �Լ��İ����Ϣ

	DWORD			m_dwDeathScriptId;			// 

	char			m_szTaskAnswerFun[MAX_ANSWERNUM][32];
	int				m_nAvailableAnswerNum;//��ǰѡ������£����ش�����
	bool			m_bWaitingPlayerFeedBack;	//��ǰ�Ƿ����ȴ�����ڿͻ��˵ķ�������״̬�£���ǰ�ű����ÿ�.��ʽ�Ի�ѡ�����
//	DWORD			m_dwOutOfDateFeedBackTime;	//��ǰ�ȴ������������ű�����������޶�ʱ�̣����������Ϸʱ����������δ�����������ϡ�
	BYTE			m_btTryExecuteScriptTimes;	//
	//char			m_CurScriptName[128];
	int				m_nWorldStat;
	int				m_nSectStat;
	int				m_ImagePlayer;	// chan dung
public:
	KPlayer();
	~KPlayer();

	void			SetPlayerIndex(int nNo);					// �趨 m_nPlayerIndex
	void			GetAboutPos(KMapPos *pMapPos);			// �����Ҹ���һ����λ��
	int				GetPlayerIndex();							// ��ñ�ʵ���� Player �����е�λ��
	DWORD			GetPlayerID(){return m_dwID;};
	void			GetFactionName(char *lpszName, int nSize);	// ��õ�ǰ�������� not end
	
	
	void			ChatFriendOnLine(DWORD dwID, int nFriendIdx);// ���֪ͨĳ����������
	BOOL			ExecuteScript(char * ScriptFileName, char * szFunName, int nParam = 0);
	BOOL			ExecuteScript(char * ScriptFileName, char * szFunName, char * szParams);
	BOOL			ExecuteScript(DWORD dwScriptId, char * szFunName, char *  szParams);
	BOOL			ExecuteScript(DWORD dwScriptId,  char * szFunName, int nParam);



	BOOL			ExecuteScriptNew(char * ScriptFileName, char * szFunName, char * szParams, char * szParamsNew);
	BOOL			ExecuteScriptNew(DWORD dwScriptId, char * szFunName, char *  szParams, char * szParamsNew);



	BOOL			DoScript(char * ScriptCommand);				//ִ��ĳ���ű�ָ��

	void			ChangeCurStrength(int nData);			// �ı䵱ǰ����(�� nData С�� 0 ʱ������)
	void			ChangeCurDexterity(int nData);			// �ı䵱ǰ����(�� nData С�� 0 ʱ������)
	void			ChangeCurVitality(int nData);			// �ı䵱ǰ����(�� nData С�� 0 ʱ������)
	void			ChangeCurEngergy(int nData);			// �ı䵱ǰ����(�� nData С�� 0 ʱ������)
	BOOL			ExecuteScript(char * ScriptFileName);
	void			Release();
	void			Active();								// ���ÿ����Ϸѭ������Ҫ����Ķ���
	void			ProcessMsg(KWorldMsgNode *lpMsg);		// ����������Ϣ��תΪNPC����
	
	LPSTR			GetPlayerName() { return m_PlayerName; };
//	LPSTR			GetNameComputer() { return m_szCPUIPName; };

	BOOL			NewPlayerGetBaseAttribute(int Series);	// ����ҵ�½ʱ�����������Բ��� ���� ���� ���� ���� ������ֵ
	void			AddBaseLucky(int nData);				// ���ӻ�������

	void			AddExp(int nExp, int nTarLevel,BOOL bCheck = FALSE);		// ���Ӿ���(ԭʼ���ݣ���δ��������)
	void			AddSelfExp(int nExp, int nTarLevel);	// ���Ӿ���(����Ҫ�پ����������Ĵ�������Ҫ���Ǳ�����npc�ĵȼ�)
	void			DirectAddExp(int nExp);					// ֱ�����Ӿ���ֵ����������������
	void			LevelUp();								// ��һ��
	void	        SetLevel(int nLevel);
	
	void			AddLeadExp(int nExp);					// ����ͳ��������
	void			UpdataCurData();
	void			ReCalcEquip();							// ���¼������ϵ�װ��
	void			ReCalcState();							// ���¼������ϵ�״̬

	void			ChangePlayerCamp(int nCamp);			// �ı������Ӫ
	void			Revive(int nType);						// ����	

	BOOL			CheckTrading();
	BOOL			CheckShopOpen();
	BOOL			CheckShopBuyOpen();
	void			SetFirstDamage();
	void			SetBaseAttackRating();
	void			SetBaseDefence();
	void			SetBaseResistData();
	void			SetBaseSpeedAndRadius();
	int				GetPhysicsSkillId(){return m_nPhysicsSkillID;};
	void			SetPhysicsSkillId(int nPhysicsSkillID)
	{
		if (nPhysicsSkillID <= 0) return ;
		ISkill * pISkill =  g_SkillManager.GetSkill(nPhysicsSkillID, 1);
		if (!pISkill) 
            return ;
		
        if (nPhysicsSkillID > 0 && pISkill->IsPhysical())
			m_nPhysicsSkillID = nPhysicsSkillID;
	};

#ifndef _SERVER
	int				GetTargetNpc() { return m_nPeapleIdx; };
	int				GetTargetObj() { return m_nObjectIdx; };
	void			SetTargetNpc(int n) { m_nPeapleIdx = n; };
	void			SetTargetObj(int n) { m_nObjectIdx = n; };
	void			FindSelectNpc(int x, int y, int nRelation);
	void			FindSelectObject(int x, int y);
	void			Walk(int nDir, int nSpeed);	
	void			TurnLeft();
	void			TurnRight();
	void			TurnBack();
	void			DrawSelectInfo();
	BOOL			ConformIdx(int nIdx);
	
	void            OpenBuyShop(DWORD dwId);

	void			GetEchoDamage(int* nMin, int* nMax, int nType);// ��ȡ������Ҫ��ʾ���˺�ֵ
	void			GetEchoAttack(int* nAttack, int nType);
	void			ProcessInputMsg(UINT uMsg, WPARAM wParam, LPARAM lParam);// ������������Ϣ
	void			RecvSyncData();								// ����ͬ������

	void			ApplyTeamInfo(DWORD dwNpcID);				// ������������ѯĳ��npc���ڶ������Ϣ
	void			ApplySelfTeamInfo();						// ������������ѯ�������Ķ������
	BOOL			ApplyCreateTeam();//char *lpszTeamName);		// �������������봴������
	BOOL			ApplyTeamOpenClose(BOOL bFlag);				// �ӳ�����������뿪�š��رն����Ƿ���������Ա״̬
	void			ApplyAddTeam(int nNpcIndex);				// �����������������ĳ������
	void			AcceptTeamMember(DWORD dwNpcID);			// ���֪ͨ����������ĳ��npcΪ�����Ա
	void			TeamDropApplyOne(DWORD dwNpcID);			// �ӳ�ɾ��������������б��е�ĳ��npc
	void			LeaveTeam();								// ֪ͨ������������뿪����
	void			TeamKickMember(DWORD dwNpcID);				// �ӳ�֪ͨ�������߳�ĳ����Ա
	void			ApplyTeamChangeCaptain(DWORD dwNpcID);		// �ӳ��������������Լ��Ķӳ���ݽ�����Ķ�Ա
	void			ApplyTeamDismiss();							// �ӳ�������������ɢ����
	void			ApplySetPK(BOOL bPK);						// ��������������򿪡��ر�pk����
	void			ApplyFactionData();							// ����������������������
	void			SendChat(KUiMsgParam *pMsg, char *lpszSentence);// �ͻ��˷�����������������
	void			ApplyAddBaseAttribute(int nAttribute, int nNo);// �ӳ��������������������������ĳһ��ĵ���(0=Strength 1=Dexterity 2=Vitality 3=Engergy)
	BOOL			ApplyAddSkillLevel(int nSkillID, int nAddPoint);// �����������ĳ����������
	BOOL			ApplyUseItem(int nItemID, ItemPos SrcPos);	// �����������ʹ��ĳ����Ʒ������Ҽ��������Ʒ��
	void			PickUpObj(int nObjIndex);					// �ͻ��������obj����ĳ����Ʒ�������������Ϣ
	void			ObjMouseClick(int nObjIndex);				// �ͻ��������obj�������������Ϣ
	void			MoveItem(ItemPos DownPos, ItemPos UpPos);	// DownPos �������֣�UpPos ��������
	int				ThrowAwayItem();
	void			ChatAddFriend(int nPlayerIdx);				// �ͻ���ͨ�����˵����������ѵ�����
	void			ChatRefuseFriend(int nPlayerIdx);			// �ͻ��˾ܾ����˵����������ѵ�����
	void			TradeApplyOpen(char *lpszSentence, int nLength);
	void			TradeApplyClose();
	void			TradeApplyStart(int nNpcIdx);
	BOOL			TradeMoveMoney(int nMoney);					// ����ʱ�����Լ���Ǯ	
	void			TradeDecision(int nDecision);				// if nDecision == 0 �Ƴ�����  if nDecision == 1 ȷ������  if nDecision == 2 ȡ������ȷ��
	void			TradeApplyLock(int nLockOrNot);				// ����������ȡ������

	void			SetChatCurChannel(int nChannelNo);			// �趨��ǰ����Ƶ��
	void			TeamInviteAdd(DWORD dwNpcID);				// ����������

	void			SetLeftSkill(int nSkillID);
	void			SetRightSkill(int nSkillID);
	void			UpdateWeaponSkill();
	int				GetLeftSkill(){return m_nLeftSkillID;};
	int				GetRightSkill(){return m_nRightSkillID;};
	void			SetDefaultImmedSkill();
	void			s2cApplyAddTeam(BYTE* pProtocol);			// �յ�������֪ͨ��������������
	void			s2cTradeChangeState(BYTE* pMsg);
	void			s2cTradeMoneySync(BYTE* pMsg);
	void			s2cTradeDecision(BYTE* pMsg);				// �յ�������֪ͨ������ɻ�ȡ��
	void			SyncCurPlayer(BYTE* pMsg);
	BOOL			dacheck;
	void			s2cLevelUp(BYTE* pMsg);
	void			s2cGetCurAttribute(BYTE* pMsg);
	void			s2cSetExp(int nExp);
	void			s2cSyncMoney(BYTE* pMsg);
	void			s2cTradeApplyStart(BYTE* pMsg);
	void			CheckObject(int nIdx);
    void			PlayerStarBuyItemNumber(int nuId,int nIdx,int nWidth,int nHeight,int nPrice,int nNum = 1);
    void			PlayerSetAuto(int nLife,int nMana, int nReturn, int nAtack,int nRange, int nNAtack, BOOL bcheck, BOOL bMoneyObj, BOOL bItemObj, BOOL bPropObj, BOOL bItemSelect, int nNgaMyBuff, int nPhamViTuVe);
	void			PlayerAutoOn();
	BOOL 			PlayerAutoOnStolen();
	BOOL 			PlayerAutoOnSkill();
	BOOL 			PlayerAutoOnSkillTheoSau();
	BOOL			PlayerAutoPK();
	BOOL			CheckAutoTuVe();
	BOOL			AutoTheoSau();
	BOOL			QuayLaiDiaDiemCu();
	BOOL			QuayLaiDiaDiemCu2();
	BOOL 			PlayerAutoOnBuffE();
	BOOL 			PlayerAutoOnBuffL();
	BOOL 			PlayerAutoOnBuffH();
	BOOL			PlayerAutoTeam();
	BOOL			PlayerAutoLocDo();
	void			CheckRideHouse(BOOL);
	void				SendShopCost();
	BOOL 			PlayerAutoOnObj();
#endif

#ifdef _SERVER
	void	        FixPlayer();
    void            PlayerAutoUnBlock();
    void            PlayerRestAP(int nsuc_manh_goc,int nthan_phap_goc,int nsinh_khi_goc,int nnoi_cong_goc);
	void			SetExtPoint(int nPoint, int nChangePoint);
	int				GetExtPoint();
	BOOL			PayExtPoint(int nPoint);
	int				GetExtPointChanged();
	void			RepairItem(DWORD dwItemID);
	BOOL			PrePay(int nMoney);
	void			SetLastNetOperationTime(int nTime);
	int				FindAroundPlayer(DWORD dwNpcID);		// Ѱ�������Χ��ĳ��ָ��npc id��player index
	int				FindAroundNpc(DWORD dwNpcID);			// Ѱ�������Χ��ĳ��ָ��npc id��npc index
	BOOL			CheckPlayerAround(int nPlayerIdx);		// �ж�ĳ����Ƿ�����Χ
	BOOL			IsExchangingServer();
	void			TobeExchangeServer(DWORD dwMapID, int nX, int nY);
//	void			UpdateEnterGamePos(DWORD dwSubWorldID, int nX, int nY, int nFightMode);
	BOOL			IsWaitingRemove();
	BOOL			IsLoginTimeOut();
	void			WaitForRemove();
	void			LoginTimeOut();
	void			UseTownPortal(int bCheck = 0);
	void			BackToTownPortal();
	void			GetTownPortal(int *lpnSubWorld, int *lpnMpsX, int *lpnMpsY);
	void			GetRevID(int *lpnRevID);

	void			GetLoginRevivalPos(int *lpnSubWorld, int *lpnMpsX, int *lpnMpsY);		// ��ȡ��ҵ���������λ��
	void			GetDeathRevivalPos(int *lpnSubWorld, int *lpnMpsX, int *lpnMpsY);		// ��ȡ�������������λ��
	void			SetRevivalPos(int nSubWorld, int nRevalId);								// �趨���������ID
	BOOL			Save();									// �����������
	BOOL			CanSave();

	BOOL			CheckSaveRsul();

	void			ProcessUser();
	BOOL			SendSyncData(int &nStep, unsigned int &nParam);	// ����ͬ������
	BOOL			SendSyncData_Skill();					// ����ͬ������ - ����
	void			SendCurNormalSyncData();				// ����ƽʱ���Լ���ͬ������
	void			SendCurHeightSyncData();
	void			SetChatForbiddenFlag(int nFlag)
	{
		m_nForbiddenFlag = nFlag;
	};

	BOOL			AddFaction(char *lpszFactionName);		// ��������
	BOOL			AddFaction(int nFactionID);				// ��������
	BOOL			LeaveCurFaction();						// �뿪����
	BOOL			CurFactionOpenSkill(int nLevel);		// ���ŵ�ǰ����ĳ���ȼ��ļ���

	void			TaskClearTempVal();						// ���������ʱ����
	int				TaskGetSaveVal(int nNo);				// �õ�����������
	void			TaskSetSaveVal(int nNo, BOOL bFlag);	// �趨����������
	int				TaskGetClearVal(int nNo);				// �õ�������ʱ���̿��Ʊ���ֵ
	void			TaskSetClearVal(int nNo, int nVal);		// �趨������ʱ���̿��Ʊ���ֵ

	//void			SetTimeTaskTime(DWORD time){m_dwTimeTaskTime = time;};
	void			BuyItem(BYTE* pProtocol);
	void			SellItem(BYTE* pProtocol);
	void			StaskItem(BYTE* pProtocol);
	void			StringBox(BYTE* pProtocol);

	void			LoginPWStoreBox(BYTE* pProtocol);
	void			PWStoreBox(BYTE* pProtocol);
	void			BlockStoreBox(BYTE* pProtocol);
	void			UnBlockStoreBox(BYTE* pProtocol);

	void			NewPWStoreBox(BYTE* pProtocol);

	void			CheckItemBox(BYTE* pProtocol);
	void			SlectCheckBox(BYTE* pProtocol);
	void            ButtonPGBox(BYTE* pProtocol);

	void            ShopName(BYTE* pProtocol);
	void            ShopPrice(BYTE* pProtocol);

	void            ShopOpen(BYTE* pProtocol);

	void            OpenBuyShop(BYTE* pProtocol);
	void            ShopBuyItem(BYTE* pProtocol);
	void            CloseBuyShop(BYTE* pProtocol);


	void			BlockItem(BYTE* pProtocol);
	void			UnBlockItem(BYTE* pProtocol);
	void			QuitGame(int nQuitType);				// �˳���Ϸ
	void			S2CSendTeamInfo(BYTE* pProtocol);		// �յ��ͻ��˲�ѯĳ��npc�����Ϣ�������������ͻ��˷��Ͷ�����Ϣ
	void			SendSelfTeamInfo();						// ��������ͻ��˷��Ͷ�����Ϣ
	BOOL			CreateTeam(BYTE* pProtocol);			// �յ��ͻ������󴴽�һ֧����
	BOOL			SetTeamState(BYTE* pProtocol);			// �յ��ͻ������󿪷š��رձ�player�����Ƿ������Ա����״̬
	BOOL			S2CSendAddTeamInfo(BYTE* pProtocol);	// �յ��ͻ����������һ֧����
	BOOL			AddTeamMember(BYTE* pProtocol);			// �ӳ�֪ͨ����������ĳ��npcΪ�����Ա
	void			LeaveTeam(BYTE* pProtocol);				// �յ��ͻ��˶�Ա֪ͨ�뿪����
	void			TeamKickOne(BYTE* pProtocol);			// �յ��ͻ��˶ӳ�֪ͨ�߳�ĳ����Ա
	void			TeamChangeCaptain(BYTE* pProtocol);		// �յ��ͻ��˶ӳ�֪ͨ�Ѷӳ���ݽ���ĳ����Ա
	void			TeamDismiss(BYTE* pProtocol);			// �յ��ͻ��˶ӳ������ɢ����
	void			SetPK(BYTE* pProtocol);					// �յ��ͻ��������趨PK״̬
	void			SendFactionData(BYTE* pProtocol);		// �յ��ͻ�����������������
	void			ServerSendChat(BYTE* pProtocol);		// �յ��ͻ��˷������������
	void			AddBaseAttribute(BYTE* pProtocol);		// �յ��ͻ���Ҫ�����ӻ������Ե�(0=Strength 1=Dexterity 2=Vitality 3=Engergy)
	void			AddSkillPoint(BYTE* pProtocol);			// �յ��ͻ���Ҫ������ĳ�����ܵĵ���
	BOOL			ServerPickUpItem(BYTE* pProtocol);		// �յ��ͻ�����Ϣ�����ĳ��obj����װ�����Ǯ
	void			EatItem(BYTE* pProtocol);				// �յ��ͻ�����Ϣ��ҩ
	void			ServerMoveItem(BYTE* pProtocol);		// �յ��ͻ�����Ϣ�ƶ���Ʒ
	void			ServerThrowAwayItem(BYTE* pProtocol);	// �յ��ͻ�����Ϣ������Ʒ
	void			ChatSetTakeChannel(BYTE* pProtocol);	// �յ��ͻ�����Ϣ�趨���충��Ƶ��
	void			ChatTransmitApplyAddFriend(BYTE* pProtocol);// �յ��ͻ�������ת��������Ӻ�����Ϣ
	BOOL			ChatAddFriend(BYTE* pProtocol);			// �յ��ͻ�����Ϣ����������
	void			ChatRefuseFriend(BYTE* pProtocol);		// �յ��ͻ�����Ϣ�ܾ�����������
	void			ChatResendAllFriend(BYTE* pProtocol);
	void			ChatSendOneFriendData(BYTE* pProtocol);
	void			ChatDeleteFriend(BYTE* pProtocol);		// �յ��ͻ�������ɾ��ĳ���������
	void			ChatRedeleteFriend(BYTE* pProtocol);	// �յ��ͻ��������ٴ�ɾ��ĳ���������
	void			TradeApplyOpen(BYTE* pProtocol);		// �յ��ͻ���������������״̬
	void			TradeApplyClose(BYTE* pProtocol);		// �յ��ͻ�������ȡ��������״̬
	void			TradeApplyStart(BYTE* pProtocol);		// �յ��ͻ������뿪ʼ����
	void			TradeMoveMoney(BYTE* pProtocol);		// �յ��ͻ������뽻����money�ĸı�
	void			TradeDecision(BYTE* pProtocol);			// �յ��ͻ������뽻��ȷ����ȡ��
	void			c2sTradeReplyStart(BYTE* pProtocol);
	void			SyncTradeState();						// ������˫���Ŀͻ��˷��ͽ���״̬��Ϣ
	void			SendEquipItemInfo(int nTargetPlayer);	// �����Լ�װ�������ϵ�װ����Ϣ�����˿�
	PLAYER_REVIVAL_POS* GetDeathRevivalPos() 
	{
		return &m_sDeathRevivalPos;
	};
	BOOL			IsUseReviveIdWhenLogin() { return m_bUseReviveIdWhenLogin; };
	void			SetLoginType(BOOL bUseReviveId) { m_bUseReviveIdWhenLogin = bUseReviveId; };

	BOOL			CreateTong(int nCamp, char *lpszTongName, char *lpszTitle);
	void			SetNumImg(int nNumber);
	void	        LoginTong(int nFigure,int nCamp,char* szName,char* szTitle,char* szTongName,char* szMaster);

    void            SendTongInfo(int nSlect,int nPlayerSect,int nNumberDirector,int nNumberManager,int nNumberMember,char *szTongName,int nCamp,int nLevel,int nMoney,char *szListMember);

    void		    MemberAddTong(int nCamp,char* szTitle,char* lpszTongName,char* lpszTongMaster);
	void		    DeleteTong();
	void		    UpdateTong(int dwTongId);

	int             GetIdxItemBox();
	int             GetIdxItemBox2();
	int             GetIdxItemBoxUpdateItem();
	int             GetIdxItemBoxUpdateItem2();
	int             GetIdxItemBoxUpdateItem3();
	int				GetIdxItemBoxQuestKey(int GetIdxItemBoxQuestKey);
	int				DelEquipItemQuestKey(int IdQuestKey);


	int             CheckMagicItem(int nItemIdx,int nMagicId,int nMagicNumber1,int nMagicNumber2);
	int             GetLevelItem(int nItemIdx);
	int             GetDetailTypeItem(int nItemIdx);
	int             GetClassItem(int nItemIdx);
	int             GetParticularItem(int nItemIdx);
	int             GetSeriItem(int nItemIdx);
	int             GetGenreItem(int nItemIdx);
	int				GetTimeItem(int nItemIdx);

	int             IsBlockItem(int nItemIdx);

	int             GetIdxPGBoxItem(int nPage,int nLocation);

	int             GetIdMagicEventItem(int nItemIdx);
	int             GetLevelMagicEventItem(int nItemIdx);
	int             GetRequirementMagicEventItem(int nItemIdx);
	int             GetItemType(int nItemIdx);
	int             GetEquipMagicId(int nItemIdx,int nItemNum);
	int             GetEquipMagicLevel(int nItemIdx,int nItemNum);
	int             GetEquipMagicPoint(int nItemIdx,int nItemNum);

	int             GetEquipMagicLucky(int nItemIdx,int nItemNum);
	int             GetItemBoxLucky(int nItemIdx);

	int             GetGetEquipMagicRandomSeed(int nItemIdx);

	int             GetNumberNameInCpuTK();


	void            AddPropObj(int nId);
	void            AddPropObjPos(int nId, int nIdMap, int nPosX, int nPosY);

#endif

private:
//	void			CalcCurStrength();						// ���㵱ǰ����
//	void			CalcCurDexterity();						// ���㵱ǰ����
//	void			CalcCurVitality();						// ���㵱ǰ����
//	void			CalcCurEngergy();						// ���㵱ǰ����
	void			CalcCurLucky();							// ���㵱ǰ����
	void			LevelAttriBaseLifeMax();					// �ȼ���һ�����������������
	void			LevelAttriBaseManaMax();					// �ȼ���һ�����������������
	void			LevelAttriBaseStaminaMax();				// �ȼ���һ�����������������

	void			SendFactionData();						// ��ͻ��˷�����������

	void			AddBaseStrength(int nData);				// ���ӻ�������
	void			AddBaseDexterity(int nData);			// ���ӻ�������
	void			AddBaseVitality(int nData);				// ���ӻ�������
	void			AddBaseEngergy(int nData);				// ���ӻ�������
	void			SetNpcPhysicsDamage();					// �ɵ�ǰ���������Ӧnpc�������˺�(PhysicsDamage)
	void			SetNpcAttackRating();					// �ɵ�ǰ���ݼ����Ӧnpc�Ĺ���������(AttackRating)
	void			SetNpcDefence();						// �ɵ�ǰ���ݼ����Ӧnpc�ķ�����
//	void			SetNpcWalkSpeed();						// �ɵ�ǰ���ݼ����Ӧnpc�������ٶ�
//	void			SetNpcRunSpeed();						// �ɵ�ǰ���ݼ����Ӧnpc���ܲ��ٶ�

#ifndef _SERVER
	void			ProcessMouse(int x, int y, int Key, MOUSE_BUTTON nButton);
	void			OnButtonUp(int x,int y,MOUSE_BUTTON nButton);				// ��������̧��
	void			OnButtonDown(int x,int y,int Key,MOUSE_BUTTON nButton);		// ������������
	void			OnButtonMove(int x,int y,int Key,MOUSE_BUTTON nButton);		// �����������º��ƶ�
	void			OnMouseMove(int x,int y);									// ��������ƶ�
	int				NetCommandPlayerTalk(BYTE* pProtocol);

	//Question:Ϊ�������԰�ʹ��
	friend			LuaInitStandAloneGame(Lua_State * L);
#endif


// �����Ķ���
private:
	void			S2CExecuteScript(char * ScriptName, char * szParam);

#ifdef _SERVER
//���ݿ�ģ�麯��-----------------
private:
	int				LoadPlayerBaseInfo(BYTE * pRoleBuffer, BYTE * &pRoleBaseBuffer, unsigned int &nParam );
	int				LoadPlayerItemList(BYTE * pRoleBuffer, BYTE * &pItemBuffer, unsigned int &nParam );
	int				LoadPlayerFightSkillList(BYTE * pRoleBuffer, BYTE * &pSkillBuffer, unsigned int &nParam);
	int				LoadPlayerLifeSkilllList(BYTE * pRoleBuffer, BYTE * &pSkillBuffer, unsigned int &nParam);
	int				LoadPlayerFriendList(BYTE * pRoleBuffer, BYTE * &pFriendBuffer, unsigned int &nParam);
	int				LoadPlayerTaskList(BYTE * pRoleBuffer, BYTE * &pTaskBuffer, unsigned int &nParam);
	int				SavePlayerBaseInfo(BYTE * pRoleBuffer);
	int				SavePlayerItemList(BYTE * pRoleBuffer);
	int				SavePlayerFightSkillList(BYTE * pRoleBuffer);
	int				SavePlayerLifeSkilllList(BYTE * pRoleBuffer);
	int				SavePlayerFriendList(BYTE * pRoleBuffer);
	int				SavePlayerTaskList(BYTE * pRoleBuffer);
#endif

public:
	void			SetNpcDamageAttrib();
	void			DoScriptAction(PLAYER_SCRIPTACTION_SYNC * pUIInfo); //֪ͨ�ÿͻ�����ʾĳ��UI����
	void			ProcessPlayerSelectFromUI(BYTE* pProtocol);			// ������Ҵ�ѡ��˵�ѡ��ĳ��ʱ�Ĳ���
#ifndef _SERVER
	void			DialogNpc(int nIndex);
	void			OnSelectFromUI(PLAYER_SELECTUI_COMMAND * pSelectUI, UIInfo eUIInfo);//����Ҵ�ѡ�����ѡ��ĳ��󣬽������������			
	void			OnScriptAction(PLAYER_SCRIPTACTION_SYNC * );
#endif
#ifdef _SERVER
	void			RestoreLiveData();						//������ָ���ҵĻ�������
	void			SetTimer(DWORD nTime, int nTimeTaskId);//ʱ������ű���������ʱ��
	void			CloseTimer();							//�ر�ʱ���ʱ��

	int				AddDBPlayer(char * szPlayerName, int sex, DWORD * pdwID );
	int				LoadDBPlayerInfo(BYTE * pPlayerInfo,  int &nStep, unsigned int &nParam);
	BOOL			GetNewPlayerFromIni(KIniFile * pIniFile, BYTE * pRoleBuffer);
	int				UpdateDBPlayerInfo(BYTE * pPlayerInfo);
	int				DeletePlayer(char * szPlayerName = NULL);//ע�⣺���������������ʺţ���������������
	void			LaunchPlayer();
	BOOL			Pay(int nMoney);
	BOOL			Earn(int nMoney);
	void			DialogNpc(BYTE * pProtocol);

	int				AddTempTaskValue(void* pData);
#endif
};

#ifdef TOOLVERSION
extern CORE_API KPlayer	Player[MAX_PLAYER];
#else
extern KPlayer	Player[MAX_PLAYER];
#endif
#endif //KPlayerH

