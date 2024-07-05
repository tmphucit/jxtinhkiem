#ifndef KPROTOCOL_H
#define KPROTOCOL_H

#ifndef __linux
#ifdef _STANDALONE
#include "GameDataDef.h"
#else
#include "../Sources/Core/src/GameDataDef.h"
#endif
#else
#include "GameDataDef.h"
#include <string.h>
#endif

#include "KProtocolDef.h"
#include "KRelayProtocol.h"

#pragma pack(push, enter_protocol)
#pragma	pack(1)

#define	PROTOCOL_MSG_TYPE	BYTE
#define PROTOCOL_MSG_SIZE	(sizeof(PROTOCOL_MSG_TYPE))
#define	MAX_PROTOCOL_NUM	250



typedef struct
{
	BYTE	ProtocolType;
	BYTE	WalkSpeed;
	BYTE	RunSpeed;
	BYTE	AttackSpeed;
	BYTE	CastSpeed;
	BYTE	HelmType;
	BYTE	ArmorType;
	BYTE	WeaponType;
	BYTE	HorseType;
	int		MaskType; // MASK
	BYTE	FifongType;
	BYTE	FifongState; //phiphong
	BYTE	RankID;
	DWORD	ID;
	BYTE	m_btSomeFlag;	// 0x01 PKFlag 0x02 FightModeFlag 0x04 SleepModeFlag
//	BYTE	m_btPKFlag;
//	BYTE	m_btFightMode;
//	BYTE	m_SleepMode;
//	char	Name[32];
	
	char	m_TongName[32];
	char	m_TongRank[32];
	BYTE    m_Task139;
	BYTE    m_Task485;

	DWORD	m_dwTime ;
	char    szName[32];
	BYTE 	ImagePlayer;	// chan dung
} PLAYER_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	DWORD	ID;
	BYTE	WalkSpeed;			// �Ƿ�ֻҪ��һ�ݾ͹��ˣ�ֻ�ı�һ������ͬʱ�ı䣩
	BYTE	RunSpeed;
	BYTE	AttackSpeed;
	BYTE	CastSpeed;			// �Ƿ��ǲ��ı�ʩ���ٶȣ���ʩ���ٶȵ��ڹ����ٶ�
	BYTE	HelmType;
	BYTE	ArmorType;
	BYTE	WeaponType;
	BYTE	HorseType;
	BYTE	RankID;
	BYTE	m_btSomeFlag;	// 0x01 PKFlag 0x02 FightModeFlag 0x04 SleepModeFlag 0x08 TongOpenFlag
    BYTE	m_PKValue; 
	BYTE	m_Task139;
	BYTE	m_Task485;
	int		MaskType; // MASK
	BYTE	FifongType;
	BYTE	FifongState; //phiphong
//	BYTE	FightMode;
//	BYTE	m_btPKFlag;
//	BYTE	m_btSleepMode;
	BYTE 	ImagePlayer; // chan dung
} PLAYER_NORMAL_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	Camp;				// ��Ӫ
	BYTE	CurrentCamp;		// ��ǰ��Ӫ
	BYTE	m_bySeries;			// ����ϵ
	int 	CurrentLife;		// �����ٷֱ�
	int 	CurrentLifeMax;
	BYTE	m_btMenuState;		// ��ӡ����׵�״̬
	BYTE	m_Doing;			// ��Ϊ
	BYTE	m_btKind;			// npc����
	DWORD	MapX;				// λ����Ϣ
	DWORD	MapY;				// λ����Ϣ
	DWORD	ID;					// Npc��ΨһID
	int		NpcSettingIdx;		// �ͻ������ڼ��������Դ��������ֵ�趨
	BYTE    m_IsBoss; 
	char	m_szName[32];		// ����
} NPC_SYNC;

typedef struct
{
	BYTE			ProtocolType;
	int				m_nId;
	DWORD	m_dwID;
	short			m_Genre;
	short			m_Detail;
	short			m_Particur;
	BYTE			m_Series;
	BYTE			m_BindItem;
	short			m_Level;
	int				m_nKind;
	KTime			m_Time;
	BYTE			m_nFiFongArmor;
	int			iShopCost;
	int			iNgoaiTrang;
} S2C_ITEM_REFRESH;

typedef struct
{
	BYTE	ProtocolType;
	DWORD	ID;
	DWORD	MapX;
	DWORD	MapY;
	BYTE	Camp;
	int 	CurrentLife;
	int 	CurrentLifeMax;
	BYTE	Doing;
	BYTE	State;
} NPC_NORMAL_SYNC;






typedef struct
{
	BYTE	ProtocolType;
	DWORD	ID;
	DWORD	MapX;
	DWORD	MapY;
	BYTE	Doing;
} NPC_POS_SYNC;



typedef struct	
{
	BYTE	ProtocolType;
	int		nbutton;
} CP_TOADO;


typedef struct
{
	BYTE	ProtocolType;
	//int		m_nRegionID;
	DWORD	m_dwNpcID;
	DWORD	m_dwMapX;
	DWORD	m_dwMapY;
	WORD	m_wOffX;
	WORD	m_wOffY;
	BYTE	m_byDoing;
	BYTE	m_btCamp;	
} NPC_PLAYER_TYPE_NORMAL_SYNC;
                 
typedef struct
{
	BYTE	ProtocolType;
	DWORD	ID;
} NPC_REMOVE_SYNC, NPC_SIT_SYNC, NPC_DEATH_SYNC, NPC_REQUEST_COMMAND, NPC_REQUEST_FAIL;

typedef struct
{
	BYTE	ProtocolType;
	DWORD	ID;
	int		nMpsX;
	int		nMpsY;
} NPC_WALK_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	DWORD	ID;
	BYTE	Type;
} NPC_REVIVE_SYNC;




typedef struct
{
	BYTE	ProtocolType;
	DWORD	ID;
	char    m_TongName[32]; 
	char	m_TongRank[32];		
} NPC_UPDATE_TONG;


typedef struct
{
	BYTE	ProtocolType;
	DWORD	ID;
	DWORD   m_dwTime; 
	char	szName[32];		
} NPC_UPDATE_SHOP;






typedef struct
{
	BYTE	ProtocolType;
	DWORD	ID;
	int		nMpsX;
	int		nMpsY;
} NPC_JUMP_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	DWORD	ID;
	int		nMpsX;
	int		nMpsY;
} NPC_RUN_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	DWORD	ID;
	int		nFrames;
	int		nX;
	int		nY;
} NPC_HURT_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	DWORD	ID;
	BYTE	Camp;
} NPC_CHGCURCAMP_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	DWORD	ID;
	BYTE	Camp;
} NPC_CHGCAMP_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	DWORD	ID;
	int		nSkillID;
	int		nSkillLevel;
	int		nMpsX;
	int		nMpsY;
} NPC_SKILL_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	int		nSkillID;
	int		nMpsX;
	int		nMpsY;
	int		nNpcX;
	int		nNpcY;
	int     nNpcRadius;
} NPC_SKILL_COMMAND;

typedef struct
{
	BYTE	ProtocolType;
	int		nMpsX;
	int		nMpsY;
} NPC_WALK_COMMAND;

typedef struct
{
	BYTE	ProtocolType;
//	BYTE	ReviveType;
} NPC_REVIVE_COMMAND;

typedef struct
{
	BYTE	ProtocolType;
	int		nMpsX;
	int		nMpsY;
} NPC_RUN_COMMAND;

typedef struct
{
	BYTE	ProtocolType;
	int		nShopIndex;
	BYTE    nSlect;
} SALE_BOX_SYNC;

typedef struct 
{
	BYTE	ProtocolType;
	int		nNpcId;
} PLAYER_DIALOG_NPC_COMMAND; //������nNpcId�Ի�������

typedef struct
{
	BYTE	ProtocolType;		// Э������
	int		m_nExp;				// ��ǰ����
} PLAYER_EXP_SYNC;				// ���ͬ������

			

typedef struct
{
	BYTE	ProtocolType;		// Э������
} PLAYER_APPLY_CREATE_TEAM;		// �ͻ�����Ҵ������飬�������������

struct PLAYER_SEND_CREATE_TEAM_SUCCESS
{
	BYTE	ProtocolType;		// Э������
	DWORD	nTeamServerID;		// �����ڷ������ϵ�Ψһ��ʶ
	PLAYER_SEND_CREATE_TEAM_SUCCESS() {nTeamServerID = -1;}
};	// ������֪ͨ��Ҷ��鴴���ɹ�

typedef struct
{
	BYTE	ProtocolType;		// Э������
	BYTE	m_btErrorID;		// ���鴴�����ɹ�ԭ��0 ͬ�� 1 ��ұ����Ѿ�����ĳһ֧���� 3 ��ǰ���ڲ������״̬
} PLAYER_SEND_CREATE_TEAM_FALSE;// ������֪ͨ�ͻ��˶��鴴�����ɹ�

typedef struct
{
	BYTE	ProtocolType;		// Э������
	DWORD	m_dwTarNpcID;		// ��ѯĿ�� npc id
} PLAYER_APPLY_TEAM_INFO;		// �ͻ���������������ѯĳ��npc��������

typedef struct
{
	BYTE	ProtocolType;		// Э������
} PLAYER_APPLY_TEAM_INFO_FALSE;	// ��������֪�ͻ��������ѯĳ��npc��������ʧ��

typedef struct PLAYER_SEND_TEAM_INFO_DATA
{
	BYTE	ProtocolType;		// Э������
	int		m_nCaptain;			// �ӳ� npc id
	int		m_nMember[MAX_TEAM_MEMBER];	// ���ж�Ա npc id
	DWORD	nTeamServerID;		// �����ڷ������ϵ�Ψһ��ʶ
	PLAYER_SEND_TEAM_INFO_DATA() {nTeamServerID = -1;};
} PLAYER_SEND_TEAM_INFO;		// ��������ͻ��˷���ĳ���������Ϣ����

typedef struct PLAYER_SEND_SELF_TEAM_INFO_DATA
{
	BYTE	ProtocolType;							// Э������
	BYTE	m_btState;								// ����״̬
	DWORD	m_dwNpcID[MAX_TEAM_MEMBER + 1];			// ÿ����Ա��npc id ���ӳ����ڵ�һλ��
	char	m_szNpcName[MAX_TEAM_MEMBER + 1][32];	// ÿ����Ա�����֣��ӳ����ڵ�һλ��
	DWORD	nTeamServerID;							// �����ڷ������ϵ�Ψһ��ʶ
	DWORD	m_dwLeadExp;							// ��ҵ�ͳ��������
	BYTE	m_btLevel[MAX_TEAM_MEMBER + 1];			// ÿ����Ա�ĵȼ����ӳ����ڵ�һλ��
	PLAYER_SEND_SELF_TEAM_INFO_DATA() {memset(m_szNpcName, 0, 32 * (MAX_TEAM_MEMBER + 1)); nTeamServerID = -1;};
} PLAYER_SEND_SELF_TEAM_INFO;						// ��������ͻ��˷��Ϳͻ�������������Ϣ����

typedef struct
{
	BYTE	ProtocolType;		// Э������
	BYTE	m_btOpenClose;		// �򿪻�ر�
} PLAYER_TEAM_OPEN_CLOSE;		// ����ӳ�����������뿪�š��رն����Ƿ�������ճ�Ա״̬

typedef struct
{
	BYTE	ProtocolType;		// Э������
	DWORD	m_dwTarNpcID;		// Ŀ�����ӳ�npc id ���� ������ npc id
} PLAYER_APPLY_ADD_TEAM;		// �����������������ĳ��������߷�������ĳ���ӳ�ת��ĳ����ҵļ�������

typedef struct
{
	BYTE	ProtocolType;		// Э������
	DWORD	m_dwNpcID;			// ������������npc id
} PLAYER_ACCEPT_TEAM_MEMBER;	// ���֪ͨ����������ĳ����������

typedef struct PLAYER_TEAM_ADD_MEMBER_DATA
{
	BYTE	ProtocolType;		// Э������
	BYTE	m_btLevel;			// �����ߵȼ�
	DWORD	m_dwNpcID;			// ������npc id
	char	m_szName[32];		// ����������
	PLAYER_TEAM_ADD_MEMBER_DATA() {memset(m_szName, 0, 32);};
} PLAYER_TEAM_ADD_MEMBER;		// ������֪ͨ�����еĸ���������³�Ա����

typedef struct
{
	BYTE	ProtocolType;		// Э������
} PLAYER_APPLY_LEAVE_TEAM;		// �ͻ�������������

typedef struct
{
	BYTE	ProtocolType;		// Э������
	DWORD	m_dwNpcID;			// ���npc id
} PLAYER_LEAVE_TEAM;			// ������֪ͨ����Աĳ�����

typedef struct
{
	BYTE	ProtocolType;		// Э������
	DWORD	m_dwNpcID;			// ���npc id
} PLAYER_TEAM_KICK_MEMBER;		// �ӳ��߳�ĳ����Ա


typedef struct
{
	BYTE	ProtocolType;
	DWORD	m_dwNpcID;
} PLAYER_OPEN_BUY_SHOP;


typedef struct
{
	BYTE	ProtocolType;
} PLAYER_CLOSE_BUY_SHOP;


typedef struct
{
	BYTE	ProtocolType;		// Э������
	DWORD	m_dwNpcID;			// Ŀ��npc id
} PLAYER_APPLY_TEAM_CHANGE_CAPTAIN;// �ӳ��������������Լ��Ķӳ���ݽ�����Ķ�Ա

typedef struct
{
	BYTE	ProtocolType;		// Э������
	DWORD	m_dwCaptainID;		// �¶ӳ�npc id
	DWORD	m_dwMemberID;		// �¶�Աnpc id
} PLAYER_TEAM_CHANGE_CAPTAIN;	// ������֪ͨ����Ա�����ӳ�

typedef struct
{
	BYTE	ProtocolType;		// Э������
} PLAYER_APPLY_TEAM_DISMISS;	// ������������ɢ����

typedef struct
{
	BYTE	ProtocolType;		// Э������
	BYTE	m_btPKFlag;			// pk ����
} PLAYER_SET_PK;				// �����������򿪡��ر�PK

typedef struct
{
	BYTE	ProtocolType;			// Э������
	BYTE	m_btCamp;				// ����Ӫ
	BYTE	m_btCurFaction;			// ��ǰ����
	BYTE	m_btFirstFaction;		// �״μ�������
	int		m_nAddTimes;			// �������ɴ���
} PLAYER_FACTION_DATA;				// �����������ͻ���������Ϣ
// MASK
typedef struct
{
	BYTE	ProtocolType;
	DWORD	ID;
} MASK_SYNC;
// END

typedef struct
{
	BYTE	ProtocolType;			// Э������
} PLAYER_LEAVE_FACTION;				// ������֪ͨ����뿪����

typedef struct
{
	BYTE	ProtocolType;			// Э������
	BYTE	m_btCurFactionID;		// ��ǰ����id
	BYTE	m_btLevel;				// ���ܿ��ŵȼ�
} PLAYER_FACTION_SKILL_LEVEL;		// ������֪ͨ��ҿ��ŵ�ǰ���ɼ��ܵ�ĳ���ȼ�

typedef struct
{
	BYTE	ProtocolType;			// Э������
} PLAYER_APPLY_FACTION_DATA;		// �ͻ������������������

typedef struct PLAYER_SEND_CHAT_DATA_COMMAND
{
	BYTE	ProtocolType;		// Э������
	WORD	m_wLength;
	BYTE	m_btCurChannel;		// ��ǰ����Ƶ��
	BYTE	m_btType;			// MSG_G_CHAT �� MSG_G_CMD �򡭡�
	BYTE	m_btChatPrefixLen;	// ��ʽ�����ַ�����
	WORD	m_wSentenceLen;		// ������䳤��
	DWORD	m_dwTargetID;		// ������� id
	int		m_nTargetIdx;		// ��������ڷ������˵� idx
	char	m_szSentence[MAX_SENTENCE_LENGTH + CHAT_MSG_PREFIX_MAX_LEN];	// �����������
	PLAYER_SEND_CHAT_DATA_COMMAND() {memset(m_szSentence, 0, sizeof(m_szSentence));};
} PLAYER_SEND_CHAT_COMMAND;		// �ͻ����������ݷ��͸�������

typedef struct PLAYER_SEND_CHAT_DATA_SYNC
{
	BYTE	ProtocolType;		// Э������
	WORD	m_wLength;
	BYTE	m_btCurChannel;		// ��ǰ����״̬
	BYTE	m_btNameLen;		// ���ֳ���
	BYTE	m_btChatPrefixLen;	// �����ַ�����
	WORD	m_wSentenceLen;		// ������䳤��
	DWORD	m_dwSourceID;		// 
	char	m_szSentence[32 + CHAT_MSG_PREFIX_MAX_LEN + MAX_SENTENCE_LENGTH];	// �����������
	PLAYER_SEND_CHAT_DATA_SYNC() { memset(m_szSentence, 0, sizeof(m_szSentence)); };
} PLAYER_SEND_CHAT_SYNC;		// �ͻ����������ݷ��͸�������

typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btState;
	int		m_nID;
	int		m_nDataID;
	int		m_nXpos;
	int		m_nYpos;
	int		m_nMoneyNum;
	int		m_nItemID;
	BYTE	m_btDir;
	BYTE	m_btItemWidth;
	WORD	m_wCurFrame;
	BYTE	m_btItemHeight;
	BYTE	m_btColorID;
	BYTE	m_btFlag;
	char	m_szName[32];
} OBJ_ADD_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	BYTE	m_btState;
	int		m_nID;
} OBJ_SYNC_STATE;

typedef struct
{
	BYTE	ProtocolType;
	BYTE	m_btDir;
	int		m_nID;
} OBJ_SYNC_DIR;

typedef struct
{
	BYTE	ProtocolType;
	int		m_nID;
	BYTE	m_btSoundFlag;
} OBJ_SYNC_REMOVE;

typedef struct
{
	BYTE	ProtocolType;
	int		m_nID;
	int		m_nTarX;
	int		m_nTarY;
} OBJ_SYNC_TRAP_ACT;

typedef struct
{
	BYTE	ProtocolType;
	int		m_nID;
} OBJ_CLIENT_SYNC_ADD;

typedef struct
{
	BYTE	ProtocolType;		// Э������
	DWORD	m_dwLeadExp;		// ͳ��������ֵ
} PLAYER_LEAD_EXP_SYNC;			// ͬ��ͳ��������ֵ

typedef struct
{
	BYTE	ProtocolType;		// Э������
	BYTE	m_btLevel;			// ��ǰ�ȼ�
	int		m_nExp;				// ��ǰ����
	int		m_nAttributePoint;	// ʣ�����Ե�
	int		m_nSkillPoint;		// ʣ�༼�ܵ�
	int		m_nBaseLifeMax;		// ��ǰ�������ֵ
	int		m_nBaseStaminaMax;	// ��ǰ�������ֵ
	int		m_nBaseManaMax;		// ��ǰ�������ֵ
} PLAYER_LEVEL_UP_SYNC;			// �������

typedef struct
{
	BYTE	ProtocolType;		// Э������
	BYTE	m_btLevel;			// ��ǰ�ȼ�
	DWORD	m_dwTeammateID;		// ���� npc id
} PLAYER_TEAMMATE_LEVEL_SYNC;	// ���������ʱ��֪ͨ����

typedef struct
{
	BYTE	ProtocolType;		// Э������
	BYTE	m_btAttribute;		// ����(0=Strength 1=Dexterity 2=Vitality 3=Engergy)
	int		m_nAddNo;			// �ӵĵ���
} PLAYER_ADD_BASE_ATTRIBUTE_COMMAND;	// �����ӻ������Ե�

typedef struct
{
	BYTE	ProtocolType;		// Э������
	int		m_nSkillID;			// ����id
	int		m_nAddPoint;		// Ҫ�ӵĵ���
} PLAYER_ADD_SKILL_POINT_COMMAND;// �����������ĳ�����ܵĵ���

typedef struct
{
	BYTE	ProtocolType;		// Э������
	BYTE	m_btAttribute;		// ����(0=Strength 1=Dexterity 2=Vitality 3=Engergy)
	int		m_nBasePoint;		// ��������
	int		m_nCurPoint;		// ��ǰ����
	int		m_nLeavePoint;		// ʣ��δ�������Ե�
} PLAYER_ATTRIBUTE_SYNC;		// ���ͬ�����Ե�

typedef struct
{
	BYTE	ProtocolType;		// Э������
	int		m_nSkillID;			// ����id
	int		m_nSkillLevel;		// ���ܵȼ�
	int		m_nLeavePoint;		// ʣ��δ���似�ܵ�
} PLAYER_SKILL_LEVEL_SYNC;		// ���ͬ�����ܵ�

//typedef struct
//{
//	BYTE	ProtocolType;		// Э������
//	int		m_nItemID;			// ��Ʒid
//	int		m_nSourcePos;		// ��Դλ��
//	int		m_nTargetPos;		// Ŀ��λ��
//} PLAYER_EQUIP_ITEM_COMMAND;	// �������Ҽ����ʹ����Ʒ(װ��)

typedef struct
{
	BYTE	ProtocolType;		// Э������
	BYTE	m_btPlace;			// ҩƷλ��
	BYTE	m_btX;				// ҩƷλ��
	BYTE	m_btY;				// ҩƷλ��
	int		m_nItemID;			// ��Ʒid
} PLAYER_EAT_ITEM_COMMAND;		// �������Ҽ����ʹ����Ʒ(��ҩ)

typedef struct
{
	BYTE	ProtocolType;		// Э������
	int		m_nObjID;			// �������obj��id
	BYTE	m_btPosType;		// λ������
	BYTE	m_btPosX;			// ���� x
	BYTE	m_btPosY;			// ���� y
} PLAYER_PICKUP_ITEM_COMMAND;		// ��һ����Ʒ���������ͼ�ϵ�obj��

typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_ID;				// ��Ʒ��ID
	BYTE			m_Genre;			// ��Ʒ������
	int				m_Detail;			// ��Ʒ�����
	BYTE			m_Particur;			// ��Ʒ����ϸ���
	BYTE			m_Series;			// ��Ʒ������
	BYTE			m_Level;			// ��Ʒ�ĵȼ�
	BYTE			m_btPlace;			// ����
	BYTE			m_btX;				// ����
	BYTE			m_btY;				// ����
	BYTE			m_Luck;				// MF
	int 			m_MagicLevel[6];	// ���ɲ���
	int 			m_Version;			// װ���汾
	int 			m_nFifong;			// װ���汾
	int 			m_nBindItem;			// װ���汾
	WORD			m_Durability;		// �;ö�
	UINT			m_RandomSeed;		// �������
	KTime			m_Time;
	int			iShopCost;
	int			iNgoaiTrang;
} ITEM_SYNC;







typedef struct
{
	BYTE			ProtocolType;
	int				m_ID;				
	BYTE			m_Genre;		
	int				m_Detail;			
	BYTE			m_Particur;		
	BYTE			m_Series;		
	BYTE			m_Level;		
	BYTE			m_btPlace;			
	BYTE			m_btX;		
	BYTE			m_btY;			
	BYTE			m_Luck;				
	int 			m_MagicLevel[6];	
	int 			m_Version;		
	WORD			m_Durability;		
	UINT			m_RandomSeed;
	int             m_nPriceShop;
	int			iNgoaiTrang;

} ITEM_BUY_SHOP_SYNC;


typedef struct
{
	BYTE			ProtocolType;	
	int	m_ID;
	KTime 	m_Time;
}S2C_SYNC_ITEM_PARAM;



typedef struct
{
	BYTE			ProtocolType;		
	char            m_szName[32];

	int             m_nTime;

} BOX_BUY_SHOP_SYNC;









typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_ID;				// ��Ʒ��ID
} ITEM_REMOVE_SYNC;

typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_ID;				// ��Ʒ��ID
} PLAYER_SELL_ITEM_COMMAND;


typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_ID;				// ��Ʒ��ID
	int				m_Price;
} PLAYER_SHOP_PRICE_COMMAND;



typedef struct
{
	BYTE			ProtocolType;	
	int				m_ID;			
} PLAYER_SHOP_BUY_ITEM_COMMAND;




typedef struct
{
	BYTE			ProtocolType;
} PLAYER_SHOP_OPEN_COMMAND;



typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_ID;				// ��Ʒ��ID
} PLAYER_BLOCK_ITEM_COMMAND;


typedef struct
{
	BYTE			ProtocolType;		// Э������
	char			m_szString[32];				// ��Ʒ��ID
} PLAYER_STRING_BOX;







typedef struct
{
	BYTE			ProtocolType;		// Э������
	char			m_szString[32];				// ��Ʒ��ID
} PLAYER_LOGIN_PW_STORE_BOX;



typedef struct
{
	BYTE			ProtocolType;	
	char			m_szString[32];	
	char			m_szStringNew[32];	
} PLAYER_PW_STORE_BOX;




typedef struct
{
	BYTE			ProtocolType;	
	char			m_szString[32];	
} PLAYER_NEW_PW_STORE_BOX;



typedef struct
{
	BYTE			ProtocolType;	
} PLAYER_BLOCK_STORE_BOX;
typedef struct
{
	BYTE			ProtocolType;	
} PLAYER_UNBLOCK_STORE_BOX;

typedef struct
{
	BYTE			ProtocolType;		// Э������
	char			m_szString[32];				// ��Ʒ��ID
} PLAYER_SHOP_NAME;


typedef struct
{
	BYTE			ProtocolType;
} PLAYER_CHECK_ITEM_BOX;


typedef struct
{
	BYTE			ProtocolType;
	BYTE			m_nSlect;
} PLAYER_SLECT_CHECK_BOX;



typedef struct
{
	BYTE			ProtocolType;
	BYTE			m_nSlect;
} PLAYER_BUTTON_PG_BOX;



typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_ID;				// ��Ʒ��ID
    int             m_Number;
} PLAYER_STASK_ITEM_COMMAND;


typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_ID;				// ��Ʒ��ID
} PLAYER_UNBLOCK_ITEM_COMMAND;

typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_ID;				// ��Ʒ��ID
    int			m_Vesion;
} PLAYER_BLOCK_ITEM_RETURN_COMMAND;

typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_ID;				// ��Ʒ��ID
    int			m_Vesion;
} PLAYER_UNBLOCK_ITEM_RETURN_COMMAND;



typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_ID;				// ��Ʒ��ID
    int			    m_Price;
} PLAYER_SHOP_PRICE_RETURN_COMMAND;




typedef struct
{
	BYTE			ProtocolType;		
	DWORD				m_dwTime;			
    char			szName[32];
} PLAYER_SHOP_OPEN_RETURN_COMMAND;





typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_ID;				// ��Ʒ��ID
    int			    m_Price;
} PLAYER_UPDATE_SHOP_PRICE_COMMAND;




typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_ID;				// ��Ʒ��ID
} PLAYER_UNBLOCK_ITEM_NOW_COMMAND;


typedef struct
{
	BYTE			ProtocolType;	
	int				m_ID;	
	int             m_Vesion;
} PLAYER_ITEM_UPDATE_VERSION;








typedef struct
{
	BYTE			ProtocolType;	
	int				m_ID;	
	char            m_Title[32];
} PLAYER_OPEN_STRING_BOX;


typedef struct
{
	BYTE			ProtocolType;
	char            m_TitleBox[32];
	char            m_TitleTex[128];
} PLAYER_OPEN_CHECK_ITEM_BOX;



typedef struct
{
	BYTE			ProtocolType;
	char            m_szId[3];
} PLAYER_OPEN_SLECT_CHECK_BOX;









typedef struct
{
	BYTE			ProtocolType;
	BYTE            m_bBlock;
} PLAYER_BLOCK_BOX;








typedef struct
{
	BYTE			ProtocolType;
} PLAYER_OPEN_PG_BOX_ITEM;





typedef struct
{
	BYTE			ProtocolType;
} PLAYER_OPEN_NEW_PW_BOX_ITEM;












typedef struct
{
	BYTE			m_Phe;
	BYTE			m_Soluong;
	BYTE			m_ThoiGian;
	WORD			m_NguoiChoi;
	WORD			m_TNguoiChoi;
	WORD			m_NPC;
	WORD			m_TNPC;
	WORD			m_LienTramHT;
	WORD			m_TLienTramHT;
	WORD			m_BauVat;
	WORD			m_TBauVat;
	WORD			m_TichLuy;
	WORD			m_TuVong;
	WORD			m_LienTram;

	char			m_szTop1Name[32];
	BYTE			m_Top1Phe;
	WORD			m_Top1TichLuy;
	WORD			m_Top1NguoiChoi;
	WORD			m_Top1NPC;
	WORD			m_Top1TuVong;
	WORD			m_Top1LienTram;
	WORD			m_Top1BaoVat;

	char			m_szTop2Name[32];
	BYTE			m_Top2Phe;
	WORD			m_Top2TichLuy;
	WORD			m_Top2NguoiChoi;
	WORD			m_Top2NPC;
	WORD			m_Top2TuVong;
	WORD			m_Top2LienTram;
	WORD			m_Top2BaoVat;

	char			m_szTop3Name[32];
	BYTE			m_Top3Phe;
	WORD			m_Top3TichLuy;
	WORD			m_Top3NguoiChoi;
	WORD			m_Top3NPC;
	WORD			m_Top3TuVong;
	WORD			m_Top3LienTram;
	WORD			m_Top3BaoVat;

	char			m_szTop4Name[32];
	BYTE			m_Top4Phe;
	WORD			m_Top4TichLuy;
	WORD			m_Top4NguoiChoi;
	WORD			m_Top4NPC;
	WORD			m_Top4TuVong;
	WORD			m_Top4LienTram;
	WORD			m_Top4BaoVat;

	char			m_szTop5Name[32];
	BYTE			m_Top5Phe;
	WORD			m_Top5TichLuy;
	WORD			m_Top5NguoiChoi;
	WORD			m_Top5NPC;
	WORD			m_Top5TuVong;
	WORD			m_Top5LienTram;
	WORD			m_Top5BaoVat;

	char			m_szTop6Name[32];
	BYTE			m_Top6Phe;
	WORD			m_Top6TichLuy;
	WORD			m_Top6NguoiChoi;
	WORD			m_Top6NPC;
	WORD			m_Top6TuVong;
	WORD			m_Top6LienTram;
	WORD			m_Top6BaoVat;

	char			m_szTop7Name[32];
	BYTE			m_Top7Phe;
	WORD			m_Top7TichLuy;
	WORD			m_Top7NguoiChoi;
	WORD			m_Top7NPC;
	WORD			m_Top7TuVong;
	WORD			m_Top7LienTram;
	WORD			m_Top7BaoVat;

	char			m_szTop8Name[32];
	BYTE			m_Top8Phe;
	WORD			m_Top8TichLuy;
	WORD			m_Top8NguoiChoi;
	WORD			m_Top8NPC;
	WORD			m_Top8TuVong;
	WORD			m_Top8LienTram;
	WORD			m_Top8BaoVat;

	char			m_szTop9Name[32];
	BYTE			m_Top9Phe;
	WORD			m_Top9TichLuy;
	WORD			m_Top9NguoiChoi;
	WORD			m_Top9NPC;
	WORD			m_Top9TuVong;
	WORD			m_Top9LienTram;
	WORD			m_Top9BaoVat;

	char			m_szTop10Name[32];
	BYTE			m_Top10Phe;
	WORD			m_Top10TichLuy;
	WORD			m_Top10NguoiChoi;
	WORD			m_Top10NPC;
	WORD			m_Top10TuVong;
	WORD			m_Top10LienTram;
	WORD			m_Top10BaoVat;

} PLAYER_DATA_TOP_TK_NEW;





typedef struct
{
	BYTE			ProtocolType;
    PLAYER_DATA_TOP_TK_NEW			m_DataTop;

} PLAYER_SEND_TOP_TK_NEW;
















typedef struct
{
	BYTE			ProtocolType;		// Э������
	BYTE			m_BuyIdx;			// ��ڼ�������
	BYTE			m_Place;			// ���������ĸ��ط�
	BYTE			m_X;				// ����X
	BYTE			m_Y;				// ����Y
} PLAYER_BUY_ITEM_COMMAND;

typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_nMoney1;			// װ����
	int				m_nMoney2;			// ������
	int				m_nMoney3;			// ������
} PLAYER_MONEY_SYNC;					// ������֪ͨ�ͻ���Ǯ������

typedef struct
{
	BYTE			ProtocolType;		// Э������
	BYTE			m_btDownPos;
	BYTE			m_btDownX;
	BYTE			m_btDownY;
	BYTE			m_btUpPos;
	BYTE			m_btUpX;
	BYTE			m_btUpY;
} PLAYER_MOVE_ITEM_COMMAND;

typedef struct
{
	BYTE			ProtocolType;		// Э������
	BYTE			m_btDownPos;
	BYTE			m_btDownX;
	BYTE			m_btDownY;
	BYTE			m_btUpPos;
	BYTE			m_btUpX;
	BYTE			m_btUpY;
} PLAYER_MOVE_ITEM_SYNC;

// s2c_ItemAutoMove
typedef struct
{
	BYTE			ProtocolType;		// Э������
	BYTE			m_btSrcPos;
	BYTE			m_btSrcX;
	BYTE			m_btSrcY;
	BYTE			m_btDestPos;
	BYTE			m_btDestX;
	BYTE			m_btDestY;
} ITEM_AUTO_MOVE_SYNC;

typedef struct
{
	BYTE			ProtocolType;		// Э������
} PLAYER_THROW_AWAY_ITEM_COMMAND;

typedef struct
{
	BYTE			ProtocolType;		// Э������
	short			m_shLife;
	short			m_shStamina;
	short			m_shMana;
	short			m_shAngry;
	BYTE			m_btTeamData;
} CURPLAYER_NORMAL_SYNC;




typedef struct
{
	BYTE			ProtocolType;
	int			    m_Task100;
	int			    m_Task162;
	int			    m_Task191;
	int			    m_Task192;
	int			    m_Task193;
	int			    m_Task140;
	int			    m_Task139;
	int			    m_Task485;
    int			    m_Task128;
	int			    m_Task99;
	int			    m_Task15;
	int			    m_Task124;
} CURPLAYER_HEIGHT_SYNC;




typedef struct
{
	BYTE			ProtocolType;		// Э������
	// npc����
	DWORD			m_dwID;				// Npc��ID
	BYTE			m_btLevel;			// Npc�ĵȼ�
	BYTE			m_btSex;			// �Ա�
	BYTE			m_btKind;			// Npc������
	BYTE			m_btSeries;			// Npc������ϵ
	WORD			m_wLifeMax;			// Npc���������
	WORD			m_wStaminaMax;		// Npc���������
	WORD			m_wManaMax;			// Npc���������
	int				m_HeadImage;
	// player ����
	WORD			m_wAttributePoint;	// δ�������Ե�
	WORD			m_wSkillPoint;		// δ���似�ܵ�
	WORD			m_wStrength;		// ��ҵĻ������������������˺���
	WORD			m_wDexterity;		// ��ҵĻ������ݣ��������С�������
	WORD			m_wVitality;		// ��ҵĻ�������������������������
	WORD			m_wEngergy;			// ��ҵĻ�������������������
	WORD			m_wLucky;			// ��ҵĻ�������ֵ
	int				m_nExp;				// ��ǰ����ֵ(��ǰ�ȼ���npc����)
	DWORD			m_dwLeadExp;		// ͳ��������ֵ

	// ����
	BYTE			m_btCurFaction;		// ��ǰ����
	BYTE			m_btFirstFaction;	// ��һ�μ�������ĸ�����
	int				m_nFactionAddTimes;	// ����������ɵ��ܴ���
	
	// ����
	WORD			m_wWorldStat;		// ��������
	WORD			m_wSectStat;		// ��������

	// Ǯ
	int				m_nMoney1;
	int				m_nMoney2;
	int 			m_btImagePlayer;	// chan dung
} CURPLAYER_SYNC;

#define MAX_SCIRPTACTION_BUFFERNUM 300

typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wProtocolLong;
	BYTE	m_nOperateType;				//��������
	BYTE	m_bUIId, m_bOptionNum, m_bParam1, m_bParam2;// m_bParam1,����Ϣ�����ֱ�ʶ�����ַ�����ʶ, m_bParam2,�Ƿ����������������ѡ�����
	int		m_nParam;
	int		m_nBufferLen;
	char	m_pContent[MAX_SCIRPTACTION_BUFFERNUM];				//�����Ʒ�
} PLAYER_SCRIPTACTION_SYNC;

typedef struct
{
	WORD	SkillId;
	BYTE	SkillLevel;
} SKILL_SEND_ALL_SYNC_DATA;

typedef struct
{
	BYTE						ProtocolType;
	WORD						m_wProtocolLong;
	SKILL_SEND_ALL_SYNC_DATA	m_sAllSkill[80];
} SKILL_SEND_ALL_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	BYTE	WeatherID;
} SYNC_WEATHER;

typedef struct defWORLD_SYNC
{
	BYTE	ProtocolType;
	int		SubWorld;
	int		Region;
	BYTE	Weather;
	DWORD	Frame;
	char    TongName[32];
	char    TongNameBC[32];
	int     TongT;
	int     TongVG;
	BYTE    CheckTong;
} WORLD_SYNC;




typedef struct 
{
	BYTE	ProtocolType;
	int		nSelectIndex;
}PLAYER_SELECTUI_COMMAND;

typedef struct
{
	BYTE			ProtocolType;		// Э������
	DWORD			m_dwTakeChannel;	// ����Ƶ��
} CHAT_SET_CHANNEL_COMMAND;				// �趨����Ƶ��

typedef struct
{
	BYTE			ProtocolType;		// Э������
	WORD			m_wLength;
	DWORD			m_dwTargetNpcID;	// Ŀ�� npc id
	char			m_szInfo[MAX_SENTENCE_LENGTH];// ���Է��Ļ�
} CHAT_APPLY_ADD_FRIEND_COMMAND;		// ������Ӻ���

typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_nSrcPlayerIdx;	// ��Դ player idx
	char			m_szSourceName[32];	// ��Դ�������
	char			m_szInfo[MAX_SENTENCE_LENGTH];// �Է����Ļ�
} CHAT_APPLY_ADD_FRIEND_SYNC;			// ������Ӻ���

typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_nTargetPlayerIdx;	// ������player idx
} CHAT_ADD_FRIEND_COMMAND;				// ���ĳ���Ϊ�������

typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_nTargetPlayerIdx;	// ���ܾ�player idx
} CHAT_REFUSE_FRIEND_COMMAND;			// �ܾ����ĳ���Ϊ�������

typedef struct
{
	BYTE			ProtocolType;		// Э������
	DWORD			m_dwID;				// ����Ӻ��ѵ� id
	int				m_nIdx;				// ����Ӻ����� player �����е�λ��
	char			m_szName[32];		// ����Ӻ��ѵ�����
} CHAT_ADD_FRIEND_SYNC;					// ֪ͨ�ͻ��˳ɹ����һ���������

typedef struct
{
	BYTE			ProtocolType;		// Э������
	WORD			m_wLength;
	char			m_szName[32];		// �ܾ�������
} CHAT_REFUSE_FRIEND_SYNC;				// ֪ͨ�ͻ������������ѵ����뱻�ܾ�

typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_nTargetPlayerIdx;	// ���� player idx (һ������Ǵ�player���߻��߻���������)
} CHAT_ADD_FRIEND_FAIL_SYNC;			// ֪ͨ�ͻ�������������ʧ��

typedef struct
{
	BYTE			ProtocolType;	// c2s_viewequip
	DWORD			m_dwNpcID;
} VIEW_EQUIP_COMMAND;

//�˽ṹ�Ѿ���tagDBSelPlayer�ṹ�滻
/*typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_nSelect;			// 
} DB_PLAYERSELECT_COMMAND;*/

/*
 * { Add by liupeng 2003.05.10
 *
 * #pragma pack( push, 1 )
*/

/*
 * Nonstandard extension used : zero-sized array in struct/union
 */
#pragma warning(disable: 4200)

#define KSG_PASSWORD_MAX_SIZE   64

typedef struct tagKSG_PASSWORD
{
    char szPassword[KSG_PASSWORD_MAX_SIZE];    // ���ڲ���MD5���ַ�����������32���ַ�������ĩβ'\0'����Ҫ����33���ռ䣬���ʹ��64
} KSG_PASSWORD;

#define _NAME_LEN	32

struct tagProtoHeader
{
	BYTE	cProtocol;
};

struct tagResult : public tagProtoHeader
{
	BYTE	cResult;
};

struct tagDBSelPlayer : public tagProtoHeader
{
	char	szRoleName[_NAME_LEN];
	char	szAccountName[_NAME_LEN];
    KSG_PASSWORD    Password;
};

struct tagDBDelPlayer : public tagProtoHeader
{
	char	        szAccountName[_NAME_LEN];
    KSG_PASSWORD    Password;
	char	        szRoleName[_NAME_LEN];
};

//ɾ�����½���ɫ�ķ�����Ϣ��������
struct tagNewDelRoleResponse : public tagDBSelPlayer
{
	bool	bSucceeded;		//�Ƿ�ɹ�
};

// 2003.05.11
struct tagDBSyncPlayerInfo : public tagProtoHeader
{
	size_t	dataLength;
	char	szData[0];
};

/*
 * 2003.06.27
 * s2c_gateway_broadcast
*/

#define	AP_WARNING_ALL_PLAYER_QUIT			1
#define	AP_NOTIFY_GAMESERVER_SAFECLOSE		2
#define	AP_NOTIFY_ALL_PLAYER				3
#define	MAX_GATEWAYBROADCAST_LEN	260
struct tagGatewayBroadCast : public tagProtoHeader
{
	UINT	uCmdType;
	char	szData[MAX_GATEWAYBROADCAST_LEN];
};

/*
 * 2003.05.22
 * s2c_syncgamesvr_roleinfo_cipher
*/
struct tagGuidableInfo : public tagProtoHeader
{
	GUID guid;
	WORD nExtPoint;			//���õĸ��͵�
	WORD nChangePoint;		//�仯�ĸ��͵�
	size_t	datalength;
	char	szData[0];

};

/*
 * c2s_permitplayerlogin
 */
struct tagPermitPlayerLogin : public tagProtoHeader
{
	GUID guid;

	BYTE szRoleName[_NAME_LEN];
	
	/*
	 * Succeeded : true
	 * Failed	 : false
	 */
	bool bPermit;
};

struct tagPermitPlayerExchange
{
	BYTE cProtocol;
	GUID guid;
	DWORD dwIp;
	WORD wPort;
	bool bPermit;
	DWORD dwIp1;
	WORD wPort1;
};
/*
 * c2s_notifyplayerlogin
 */
struct tagNotifyPlayerLogin : public tagPermitPlayerLogin
{
	UINT			nIPAddr0;
	unsigned short	nPort0;
	UINT			nIPAddr1;
	unsigned short	nPort1;
	UINT			nIPAddr2;
	unsigned short	nPort2;
	UINT			nIPAddr3;
	unsigned short	nPort3;
	UINT			nIPAddr4;
	unsigned short	nPort4;
	UINT			nIPAddr5;
	unsigned short	nPort5;
	UINT			nIPAddr6;
	unsigned short	nPort6;
	UINT			nIPAddr7;
	unsigned short	nPort7;
	UINT			nIPAddr8;
	unsigned short	nPort8;
	UINT			nIPAddr9;
	unsigned short	nPort9;
	UINT			nIPAddr10;
	unsigned short	nPort10;
	UINT			nIPAddr11;
	unsigned short	nPort11;
	UINT			nIPAddr12;
	unsigned short	nPort12;
	UINT			nIPAddr13;
	unsigned short	nPort13;
	UINT			nIPAddr14;
	unsigned short	nPort14;
	UINT			nIPAddr15;
	unsigned short	nPort15;
	UINT			nIPAddr16;
	unsigned short	nPort16;
	UINT			nIPAddr17;
	unsigned short	nPort17;
	UINT			nIPAddr18;
	unsigned short	nPort18;
	UINT			nIPAddr19;
	unsigned short	nPort19;
	UINT			nIPAddr20;
	unsigned short	nPort20;
	UINT			nIPAddr21;
	unsigned short	nPort21;
	UINT			nIPAddr22;
	unsigned short	nPort22;
	UINT			nIPAddr23;
	unsigned short	nPort23;
	UINT			nIPAddr24;
	unsigned short	nPort24;
	UINT			nIPAddr25;
	unsigned short	nPort25;
	UINT			nIPAddr26;
	unsigned short	nPort26;
	UINT			nIPAddr27;
	unsigned short	nPort27;
	UINT			nIPAddr28;
	unsigned short	nPort28;
	UINT			nIPAddr29;
	unsigned short	nPort29;
	UINT			nIPAddr30;
	unsigned short	nPort30;
	UINT			nIPAddr31;
	unsigned short	nPort31;
	UINT			nIPAddr32;
	unsigned short	nPort32;
	UINT			nIPAddr33;
	unsigned short	nPort33;
	UINT			nIPAddr34;
	unsigned short	nPort34;
	UINT			nIPAddr35;
	unsigned short	nPort35;
	UINT			nIPAddr36;
	unsigned short	nPort36;
	UINT			nIPAddr37;
	unsigned short	nPort37;
	UINT			nIPAddr38;
	unsigned short	nPort38;
	UINT			nIPAddr39;
	unsigned short	nPort39;
	UINT			nIPAddr40;
	unsigned short	nPort40;
	UINT			nIPAddr41;
	unsigned short	nPort41;
	UINT			nIPAddr42;
	unsigned short	nPort42;
	UINT			nIPAddr43;
	unsigned short	nPort43;
	UINT			nIPAddr44;
	unsigned short	nPort44;
	UINT			nIPAddr45;
	unsigned short	nPort45;
	UINT			nIPAddr46;
	unsigned short	nPort46;
	UINT			nIPAddr47;
	unsigned short	nPort47;
};

/*
 * s2c_querymapinfo
 */
struct tagQueryMapInfo : public tagProtoHeader
{	
};

/*
 * s2c_querygameserverinfo
 */
struct tagQueryGameSvrInfo : public tagProtoHeader
{	
};

/*
 * s2c_notifysvrip
 */
struct tagNotifySvrIp : public tagProtoHeader
{
	WORD	pckgID;

	BYTE	cIPType;
	DWORD	dwMapID;

	DWORD	dwSvrIP;
};

/*
 * s2c_notifyplayerexchange
 */
struct tagNotifyPlayerExchange : public tagProtoHeader
{
	GUID			guid;
	UINT			nIPAddr;
	unsigned short	nPort;
	UINT			nIPAddr1;
	unsigned short	nPort1;

};

/*
 * c2s_requestsvrip
 */

/*
 * BYTE	cIPType
 */
#define INTRANER_IP	0
#define INTERNET_IP 1

struct tagRequestSvrIp : public tagProtoHeader
{
	WORD	pckgID;

	BYTE	cIPType;
	DWORD	dwMapID;
};

/*
 * c2c_notifyexchange
 */
struct tagSearchWay : public tagProtoHeader
{
	int		lnID;
	int		nIndex;
	DWORD	dwPlayerID;
};

/*
 * c2s_updatemapinfo
 */
struct tagUpdateMapID : public tagProtoHeader
{
	/*
	 * For example : Are your clear older information when it 
	 *		update local informatin
	 */
	BYTE cReserve;

	BYTE cMapCount;

	BYTE szMapID[0];	// C4200 warning
};

/*
 * c2s_updategameserverinfo
 */
struct tagGameSvrInfo : public tagProtoHeader
{
	UINT			nIPAddr_Intraner;
	UINT			nIPAddr_Internet;

	UINT			nIPAddr_Foward0;
	UINT			nIPAddr_Foward1;
	UINT			nIPAddr_Foward2;
	UINT			nIPAddr_Foward3;
	UINT			nIPAddr_Foward4;
	UINT			nIPAddr_Foward5;
	UINT			nIPAddr_Foward6;
	UINT			nIPAddr_Foward7;
	UINT			nIPAddr_Foward8;
	UINT			nIPAddr_Foward9;
	UINT			nIPAddr_Foward10;
	UINT			nIPAddr_Foward11;
	UINT			nIPAddr_Foward12;
	UINT			nIPAddr_Foward13;
	UINT			nIPAddr_Foward14;
	UINT			nIPAddr_Foward15;
	UINT			nIPAddr_Foward16;
	UINT			nIPAddr_Foward17;
	UINT			nIPAddr_Foward18;
	UINT			nIPAddr_Foward19;
	UINT			nIPAddr_Foward20;
	UINT			nIPAddr_Foward21;
	UINT			nIPAddr_Foward22;
	UINT			nIPAddr_Foward23;
	UINT			nIPAddr_Foward24;
	UINT			nIPAddr_Foward25;
	UINT			nIPAddr_Foward26;
	UINT			nIPAddr_Foward27;
	UINT			nIPAddr_Foward28;
	UINT			nIPAddr_Foward29;
	UINT			nIPAddr_Foward30;
	UINT			nIPAddr_Foward31;
	UINT			nIPAddr_Foward32;
	UINT			nIPAddr_Foward33;
	UINT			nIPAddr_Foward34;
	UINT			nIPAddr_Foward35;
	UINT			nIPAddr_Foward36;
	UINT			nIPAddr_Foward37;
	UINT			nIPAddr_Foward38;
	UINT			nIPAddr_Foward39;
	UINT			nIPAddr_Foward40;
	UINT			nIPAddr_Foward41;
	UINT			nIPAddr_Foward42;
	UINT			nIPAddr_Foward43;
	UINT			nIPAddr_Foward44;
	UINT			nIPAddr_Foward45;
	UINT			nIPAddr_Foward46;
	UINT			nIPAddr_Foward47;	

	unsigned short	nPort;
	unsigned short	nFowardPort0;
	unsigned short	nFowardPort1;
	unsigned short	nFowardPort2;
	unsigned short	nFowardPort3;
	unsigned short	nFowardPort4;
	unsigned short	nFowardPort5;
	unsigned short	nFowardPort6;
	unsigned short	nFowardPort7;
	unsigned short	nFowardPort8;
	unsigned short	nFowardPort9;
	unsigned short	nFowardPort10;
	unsigned short	nFowardPort11;
	unsigned short	nFowardPort12;
	unsigned short	nFowardPort13;
	unsigned short	nFowardPort14;
	unsigned short	nFowardPort15;
	unsigned short	nFowardPort16;
	unsigned short	nFowardPort17;
	unsigned short	nFowardPort18;
	unsigned short	nFowardPort19;
	unsigned short	nFowardPort20;
	unsigned short	nFowardPort21;
	unsigned short	nFowardPort22;
	unsigned short	nFowardPort23;
	unsigned short	nFowardPort24;
	unsigned short	nFowardPort25;
	unsigned short	nFowardPort26;
	unsigned short	nFowardPort27;
	unsigned short	nFowardPort28;
	unsigned short	nFowardPort29;
	unsigned short	nFowardPort30;
	unsigned short	nFowardPort31;
	unsigned short	nFowardPort32;
	unsigned short	nFowardPort33;
	unsigned short	nFowardPort34;
	unsigned short	nFowardPort35;
	unsigned short	nFowardPort36;
	unsigned short	nFowardPort37;
	unsigned short	nFowardPort38;
	unsigned short	nFowardPort39;
	unsigned short	nFowardPort40;
	unsigned short	nFowardPort41;
	unsigned short	nFowardPort42;
	unsigned short	nFowardPort43;
	unsigned short	nFowardPort44;
	unsigned short	nFowardPort45;
	unsigned short	nFowardPort46;
	unsigned short	nFowardPort47;


	WORD			wCapability;
};

/*
 * s2c_identitymapping
 */
struct tagIdentityMapping : public tagGameSvrInfo
{
	GUID guid;
};

/*
 * c2s_logiclogin
 * s2c_gmgateway2relaysvr
 * s2c_gmnotify
 */
struct tagLogicLogin : public tagProtoHeader
{
	char szName[64];
	GUID guid;
};

/*
 * s2c_logiclogout
 */
struct tagLogicLogout : public tagProtoHeader
{
	BYTE szRoleName[_NAME_LEN];
};

/*
 * c2s_registeraccount
 */
struct tagRegisterAccount : public tagProtoHeader
{
	BYTE szAccountName[_NAME_LEN];
};

/*
 * c2s_entergame
 */
struct tagEnterGame : public tagProtoHeader
{
	/*
	 * Succeeded : content is account name
	 * Failed	 : content is null
	 */

	BYTE szAccountName[_NAME_LEN];
};

struct tagEnterGame2 : public EXTEND_HEADER
{
	char szAccountName[_NAME_LEN];
	char szCharacterName[_NAME_LEN];
	DWORD	dwNameID;
	unsigned long	lnID;
};

/*
 * c2s_leavegame
 */

/*
 * BYTE cCmdType
 */
#define NORMAL_LEAVEGAME	0x0		// lock account
#define HOLDACC_LEAVEGAME	0x1A	// clear resource but don't to unlock account 

struct tagLeaveGame : public tagProtoHeader
{
	BYTE cCmdType;
	WORD nExtPoint;        //��Ҫ�۳��ĸ��͵�
	/*
	 * Succeeded : content is account name
	 * Failed	 : content is null
	 */

	char szAccountName[_NAME_LEN];
};

struct tagLeaveGame2 : public EXTEND_HEADER
{
	BYTE cCmdType;
	char szAccountName[_NAME_LEN];
};
/*
*  c2s_registerfamily
*/
struct tagRegisterFamily : public tagProtoHeader
{
	BYTE bRegister;		//1 is Register, 0 is unRegister
	BYTE nFamily;
	BYTE RelayMethod;
};

/*
 * c2s_gmsvr2gateway_saverole
 */
struct tagGS2GWSaveRole : public tagProtoHeader
{
	size_t	datalength;
	BYTE	szData[0];
};

/*
 * #pragma pack( pop )
 *
 * } End of the struct define
 */

typedef struct
{
	char	szName[32];
	BYTE	Sex;
	BYTE	Series;
//	BYTE	HelmType;
//	BYTE	ArmorType;
//	BYTE	WeaponType;
	BYTE	Level;
} RoleBaseInfo/* client */, S3DBI_RoleBaseInfo /* server */;

typedef struct
{
	BYTE				ProtocolType;
	RoleBaseInfo		m_RoleList[MAX_PLAYER_IN_ACCOUNT];
} ROLE_LIST_SYNC;

//����RoleDBManager/kroledbheader.h
//�����滻�����ROLE_LIST_SYNC,ROLE_LIST_SYNC�ṹ������Ҫ��
struct TProcessData
{
	unsigned char	nProtoId;
	size_t			nDataLen;//TRoleNetMsgʱ��ʾ��Block��ʵ�����ݳ���,TProcessDataʱ��ʾStream��ʵ�����ݳ���
	unsigned long	ulIdentity;
	bool			bLeave;
	char            szAccountName[_NAME_LEN];
	char			pDataBuffer[1];//ʵ�ʵ�����
};

struct tagRoleEnterGame
{
	BYTE			ProtocolType;
	bool			bLock;
	char			Name[_NAME_LEN];
};

//�½���ɫ����Ϣ�ṹ
//ע�ͣ��½�����Ϣc2s_newplayer�����͵Ĳ���ΪTProcessData�ṹ���������ݣ�����TProcessData::pDataBufferҪ��չΪNEW_PLAYER_COMMAND
struct NEW_PLAYER_COMMAND
{
	BYTE			m_btRoleNo;			// ��ɫ���
	BYTE			m_btSeries;			// ����ϵ
	unsigned short	m_NativePlaceId;	//������ID
	char			m_szName[32];		// ����
};


typedef struct
{
	BYTE			ProtocolType;		// Э������
	DWORD			m_dwID;				// ���� id
	int				m_nPlayerIdx;		// ���� player index
} CHAT_LOGIN_FRIEND_NONAME_SYNC;		// ��ҵ�¼ʱ�����������������ݣ��������֣�

typedef struct
{
	BYTE			ProtocolType;		// Э������
	WORD			m_wLength;
	DWORD			m_dwID;				// ���� id
	int				m_nPlayerIdx;		// ���� player index
	char			m_szName[32];		// ��������
} CHAT_LOGIN_FRIEND_NAME_SYNC;			// ��ҵ�¼ʱ�����������������ݣ������֣�

typedef struct
{
	BYTE			ProtocolType;		// Э������
} CHAT_APPLY_RESEND_ALL_FRIEND_NAME_COMMAND;

typedef struct
{
	BYTE			ProtocolType;		// Э������
	DWORD			m_dwID;				// ���� id
} CHAT_APPLY_SEND_ONE_FRIEND_NAME_COMMAND;	// ����õ����ĳ��������ѵ���������

typedef struct
{
	BYTE			ProtocolType;		// Э������
	DWORD			m_dwID;				// ���� id
	int				m_nPlayerIdx;		// ���� player index
	char			m_szName[32];		// ��������
} CHAT_ONE_FRIEND_DATA_SYNC;			// �������ĳһ������������ݣ������֣�

typedef struct
{
	BYTE			ProtocolType;		// Э������
	DWORD			m_dwID;				// ���� id
	int				m_nPlayerIdx;		// ���� player index
} CHAT_FRIEND_ONLINE_SYNC;				// ֪ͨ�ͻ����к�������

typedef struct
{
	BYTE			ProtocolType;		// Э������
	DWORD			m_dwID;				// ��ɾ��id
} CHAT_DELETE_FRIEND_COMMAND;			// ɾ��ĳ���������

typedef struct
{
	BYTE			ProtocolType;		// Э������
	DWORD			m_dwID;				// ɾ��id
} CHAT_DELETE_FRIEND_SYNC;				// ��ĳ���������ɾ��

typedef struct
{
	BYTE			ProtocolType;		// Э������
	DWORD			m_dwID;				// ��ɾ��id
} CHAT_REDELETE_FRIEND_COMMAND;			// ɾ��ĳ���������

typedef struct 
{
	BYTE			ProtocolType;
	BYTE			m_LogoutType;
} LOGOUT_COMMAND;

typedef struct
{
	BYTE			ProtocolType;
	BYTE			szAccName[32];
} LOGIN_COMMAND;

typedef struct
{
	BYTE			ProtocolType;		// Э������
	DWORD			m_dwID;				// ���� id
} CHAT_FRIEND_OFFLINE_SYNC;				// ֪ͨ�ͻ����к�������

typedef struct
{
	BYTE			ProtocolType;		// Э������
	WORD			m_wLength;
	char			m_szSentence[MAX_SENTENCE_LENGTH];
} TRADE_APPLY_OPEN_COMMAND;

typedef struct
{
	BYTE			ProtocolType;		// Э������
} TRADE_APPLY_CLOSE_COMMAND;

typedef struct
{
	BYTE			ProtocolType;		// Э������
	BYTE			m_btState;			// if == 0 close if == 1 open if == 2 trading
	DWORD			m_dwNpcID;			// ����ǿ�ʼ���ף��Է��� npc id
} TRADE_CHANGE_STATE_SYNC;

typedef struct
{
	BYTE			ProtocolType;		// Э������
	WORD			m_wLength;
	DWORD			m_dwID;
	BYTE			m_btState;
	char			m_szSentence[MAX_SENTENCE_LENGTH];
} NPC_SET_MENU_STATE_SYNC;

typedef struct
{
	BYTE			ProtocolType;		// Э������
	DWORD			m_dwID;
} TRADE_APPLY_START_COMMAND;

// ������ת����������
typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_nDestIdx;			// �������ڷ������˵�player idx
	DWORD			m_dwNpcId;			// �����ߵ� npc id
} TRADE_APPLY_START_SYNC;

// ���ܻ�ܾ����˵Ľ�������
typedef struct
{
	BYTE			ProtocolType;		// Э������
	BYTE			m_bDecision;		// ͬ�� 1 ��ͬ�� 0
	int				m_nDestIdx;			// ���׶Է��ڷ������˵�player idx
} TRADE_REPLY_START_COMMAND;

typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_nMoney;
} TRADE_MOVE_MONEY_COMMAND;		// c2s_trademovemoney

typedef struct
{
	BYTE			ProtocolType;		// Э������
	int				m_nMoney;
} TRADE_MONEY_SYNC;				// s2c_trademoneysync

typedef struct
{
	BYTE			ProtocolType;		// Э������
	BYTE			m_btDecision;		// ȷ������ 1  �˳����� 0  ȡ��ȷ�� 4  �������� 2  ȡ������ 3
} TRADE_DECISION_COMMAND;				// ����ִ�л�ȡ�� c2s_tradedecision

typedef struct
{
	BYTE			ProtocolType;		// Э������
	BYTE			m_btDecision;		// ����ok 1  ����ȡ�� 0  ���� 2  ȡ������ 3
} TRADE_DECISION_SYNC;					// s2c_tradedecision

typedef struct
{
	BYTE			ProtocolType;		
	BYTE			m_byDir;			// ȡǮ�ķ���0�棬1ȡ��
	DWORD			m_dwMoney;			// Ǯ��
} STORE_MONEY_COMMAND;

typedef struct
{
	BYTE			ProtocolType;		// Э������
	WORD			m_wLength;			// ����
	BYTE			m_btError;			// ��������	0 �Է��ر��˴�Ƶ����1 �Ҳ����Է�
	char			m_szName[32];		// �Է�����
} CHAT_SCREENSINGLE_ERROR_SYNC;

typedef struct 
{
	BYTE			ProtocolType;		// Э������
	BYTE			m_btStateInfo[MAX_NPC_RECORDER_STATE];
	DWORD			m_ID;				// Npc��GID
}	NPC_SYNC_STATEINFO;

typedef struct
{
	BYTE			ProtocolType;		// Э������
	DWORD			m_dwNpcID;
} TEAM_INVITE_ADD_COMMAND;

typedef struct
{
	BYTE			ProtocolType;		// Э������
	WORD			m_wLength;			// ����
	int				m_nIdx;
	char			m_szName[32];
} TEAM_INVITE_ADD_SYNC;

typedef struct
{
	BYTE			ProtocolType;		//
	int				m_nAuraSkill;
} SKILL_CHANGEAURASKILL_COMMAND;		//�����⻷����

typedef struct
{
	BYTE			ProtocolType;
	BYTE			m_btResult;
	int				m_nIndex;
} TEAM_REPLY_INVITE_COMMAND;

typedef struct
{
	BYTE			ProtocolType;
	BYTE			m_btSelfLock;
	BYTE			m_btDestLock;
	BYTE			m_btSelfOk;
	BYTE			m_btDestOk;
} TRADE_STATE_SYNC;

typedef struct
{
	BYTE			ProtocolType;
	WORD			m_wLength;
	DWORD			m_dwSkillID;		// ����
	int				m_nLevel;
	int				m_nTime;			// ʱ��
	KMagicAttrib	m_MagicAttrib[MAX_SKILL_STATE];
} STATE_EFFECT_SYNC;

typedef struct
{
	BYTE			ProtocolType;
	DWORD			m_dwTime;
} PING_COMMAND;

typedef struct
{
	BYTE			ProtocolType;
	DWORD			m_dwReplyServerTime;
	DWORD			m_dwClientTime;
} PING_CLIENTREPLY_COMMAND;

typedef struct
{
	BYTE			ProtocolType;
	BYTE			m_btSitFlag;
} NPC_SIT_COMMAND;



typedef struct
{
	BYTE			ProtocolType;
} NPC_RIDE_COMMAND;


typedef struct
{
	BYTE			ProtocolType;
	int				nMpsX;
	int				nMpsY;
} NPC_JUMP_COMMAND;

typedef struct
{
	BYTE			ProtocolType;
	int				m_dwRegionID;
	int				m_nObjID;
} OBJ_MOUSE_CLICK_SYNC;

typedef struct tagSHOW_MSG_SYNC
{
	BYTE			ProtocolType;
	WORD			m_wLength;
	WORD			m_wMsgID;
	LPVOID			m_lpBuf;
	tagSHOW_MSG_SYNC() {m_lpBuf = NULL;};
	~tagSHOW_MSG_SYNC() {Release();}
	void	Release() {if (m_lpBuf) delete []m_lpBuf; m_lpBuf = NULL;}
} SHOW_MSG_SYNC;

typedef struct
{
	BYTE			ProtocolType;
	BYTE			m_btFlag;
} PK_APPLY_NORMAL_FLAG_COMMAND;

typedef struct
{
	BYTE			ProtocolType;
	BYTE			m_btFlag;
} PK_NORMAL_FLAG_SYNC;

typedef struct
{
	BYTE			ProtocolType;
	DWORD			m_dwNpcID;
} PK_APPLY_ENMITY_COMMAND;

typedef struct
{
	BYTE			ProtocolType;
	WORD			m_wLength;
	BYTE			m_btState;
	DWORD			m_dwNpcID;
	char			m_szName[32];
} PK_ENMITY_STATE_SYNC;

typedef struct
{
	BYTE			ProtocolType;
	WORD			m_wLength;
	BYTE			m_btState;
	DWORD			m_dwNpcID;
	char			m_szName[32];
} PK_EXERCISE_STATE_SYNC;

typedef struct
{
	BYTE			ProtocolType;
	int				m_nPKValue;
} PK_VALUE_SYNC;

typedef struct
{
	int		m_nID;				// ��Ʒ��ID
	BYTE	m_btGenre;			// ��Ʒ������
	BYTE	m_btDetail;			// ��Ʒ�����
	BYTE	m_btParticur;		// ��Ʒ����ϸ���
	BYTE	m_btSeries;			// ��Ʒ������
	BYTE	m_btLevel;			// ��Ʒ�ĵȼ�
	BYTE	m_btLuck;			// MF
	int 	m_btMagicLevel[6];	// ���ɲ���
	WORD  	m_wVersion;			// װ���汾
	DWORD	m_dwRandomSeed;		// �������
	int		iNgoaiTrang;
} SViewItemInfo;

typedef struct
{
	BYTE			ProtocolType;
	DWORD			m_dwNpcID;
	SViewItemInfo	m_sInfo[itempart_num];
	int             m_Task100;
	int             m_Task162;
	int             m_Task139;
	int             m_WorldStat;
	int             m_PKValue;

} VIEW_EQUIP_SYNC;				// s2c_viewequip

typedef struct//�ýṹ����ͳ�Ƶ���ҵĻ�������
{
	char	Name[20];
	int		nValue;
	BYTE	bySort;
	int     nHeightValue;
}TRoleList;

// ��Ϸͳ�ƽṹ
typedef struct
{
	TRoleList MoneyStat[10];			//��Ǯ��������б�ʮ����ң����ɴﵽ100����
	TRoleList LevelStat[10];			//������������б�ʮ����ң����ɴﵽ100����
	TRoleList KillerStat[10];			//ɱ����������б�
	
	//[���ɺ�][�����]������[0]��û�м������ɵ����
	TRoleList MoneyStatBySect[11][10];	//�����ɽ�Ǯ��������б�
	TRoleList LevelStatBySect[11][10];	//�����ɼ�����������б�

	//[���ɺ�]������[0]��û�м������ɵ����
	int SectPlayerNum[11];				//�������ɵ������
	int SectMoneyMost[11];				//�Ƹ�����ǰһ������и�������ռ������
	int SectLevelMost[11];				//��������ǰһ������и�������ռ������
}  TGAME_STAT_DATA;

typedef struct
{
	BYTE	ProtocolType;
	BYTE	bSleep;
	DWORD	NpcID;
} NPC_SLEEP_SYNC;

//////////////
//�������
typedef struct
{
	BYTE		ProtocolType;
	DWORD		dwLadderID;
	TRoleList	StatData[10];
} LADDER_DATA;

typedef struct
{
	BYTE		ProtocolType;
	WORD		wSize;
	int			nCount;
	DWORD		dwLadderID[0];
} LADDER_LIST;

typedef struct
{
	BYTE		ProtocolType;
	DWORD		dwLadderID;
} LADDER_QUERY;


///////////////////
//chat ���

typedef struct
{
	BYTE	ProtocolType;
	WORD	wSize;
	DWORD	packageID;
	char	someone[_NAME_LEN];
	BYTE	sentlen;
} CHAT_SOMEONECHAT_CMD, CHAT_SOMEONECHAT_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	WORD	wSize;
	DWORD	packageID;
	BYTE	filter;
	DWORD	channelid;
	BYTE	cost;	//0: �����ƣ�1: 10Ԫ/�䣬2: <10Lv ? ����˵ : MaxMana/2/��, 3: MaxMana/10/��,4: <20Lv ? ����˵ : MaxMana*4/5/��
	BYTE	sentlen;
	BYTE		figure;

} CHAT_CHANNELCHAT_CMD;

typedef struct
{
	BYTE	ProtocolType;
	WORD	wSize;
	DWORD	packageID;
	char	someone[_NAME_LEN];
	DWORD	channelid;
	BYTE	sentlen;
	BYTE	figure;
} CHAT_CHANNELCHAT_SYNC;

enum {codeSucc, codeFail, codeStore};
typedef struct
{
	BYTE	ProtocolType;
	DWORD	packageID;
	BYTE	code;
} CHAT_FEEDBACK;

typedef struct
{
	BYTE	ProtocolType;
	WORD	wSize;
	WORD	wChatLength;
} CHAT_EVERYONE;


typedef struct
{
	BYTE	ProtocolType;
	WORD	wSize;
	WORD	wChatLength;
	BYTE	byHasIdentify;
	WORD	wPlayerCount;
} CHAT_GROUPMAN;


typedef struct
{
	BYTE	ProtocolType;
	WORD	wSize;
	DWORD	nameid;
	unsigned long lnID;
	WORD	wChatLength;
} CHAT_SPECMAN;


enum { tgtcls_team, tgtcls_kim, tgtcls_fac, tgtcls_tong, tgtcls_scrn, tgtcls_bc};
typedef struct
{
	BYTE	ProtocolType;
	WORD	wSize;
	DWORD	nFromIP;
	DWORD	nFromRelayID;
	DWORD	channelid;
	BYTE	TargetCls;
	DWORD	TargetID;
	WORD	routeDateLength;
} CHAT_RELEGATE;


///////////////////////////////////////
// tong ���

typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
} S2C_TONG_HEAD;

typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
} STONG_PROTOCOL_HEAD;

typedef struct
{
	int		m_nPlayerIdx;
	int		m_nCamp;
	char	m_szTongName[defTONG_NAME_MAX_LENGTH + 1];
} STONG_SERVER_TO_CORE_APPLY_CREATE;

typedef struct
{
	int		m_nPlayerIdx;
	int		m_nCamp;
	char	m_szTongName[defTONG_NAME_MAX_LENGTH + 1];
} STONG_SERVER_TO_CORE_APPLY_CHANGE;


typedef struct
{
	int		m_nPlayerIdx;
	DWORD	m_dwNpcID;
} STONG_SERVER_TO_CORE_APPLY_ADD;

typedef struct
{
	int		m_nSelfIdx;
	int		m_nTargetIdx;
	DWORD	m_dwNameID;
} STONG_SERVER_TO_CORE_CHECK_ADD_CONDITION;

typedef struct
{
	int		m_nCamp;
	int		m_nPlayerIdx;
	DWORD	m_dwPlayerNameID;
	char	m_szTongName[64];
} STONG_SERVER_TO_CORE_CREATE_SUCCESS;

typedef struct
{
	int		m_nSelfIdx;
	int		m_nTargetIdx;
	DWORD	m_dwNameID;
} STONG_SERVER_TO_CORE_REFUSE_ADD;

typedef struct
{
	int		m_nSelfIdx;
	int		m_nInfoID;
	int		m_nParam1;
	int		m_nParam2;
	int		m_nParam3;
	char	m_szName[32];
} STONG_SERVER_TO_CORE_GET_INFO;

typedef struct
{
	int		m_nCamp;
	int		m_nPlayerIdx;
	DWORD	m_dwPlayerNameID;
	char	m_szTongName[32];
	char	m_szMasterName[32];
	char	m_szTitleName[32];
} STONG_SERVER_TO_CORE_ADD_SUCCESS;

typedef struct
{
	int		m_nPlayerIdx;
	BYTE	m_btFigure;
	BYTE	m_btPos;
	char	m_szTitle[32];
	char	m_szName[32];
} STONG_SERVER_TO_CORE_BE_INSTATED;

typedef struct
{
	int		m_nPlayerIdx;
	BYTE	m_btFigure;
	BYTE	m_btPos;
	char	m_szName[32];
} STONG_SERVER_TO_CORE_BE_KICKED;

typedef struct
{
	int		m_nPlayerIdx;
	BOOL	m_bSuccessFlag;
	char	m_szName[32];
} STONG_SERVER_TO_CORE_LEAVE;

typedef struct
{
	int		m_nPlayerIdx;
	BYTE	m_btFigure;
	BYTE	m_btPos;
	DWORD	m_dwTongNameID;
	char	m_szName[32];
} STONG_SERVER_TO_CORE_CHECK_GET_MASTER_POWER;

typedef struct
{
	int		m_nPlayerIdx;
	BYTE	m_btFigure;
	BYTE	m_btPos;
	DWORD	m_dwTongNameID;
	char	m_szTitle[32];
	char	m_szName[32];
} STONG_SERVER_TO_CORE_CHANGE_AS;

typedef struct
{
	DWORD	m_dwTongNameID;
	char	m_szName[32];
} STONG_SERVER_TO_CORE_CHANGE_MASTER;

typedef struct
{
	DWORD	m_dwParam;
	int		m_nFlag;
	int		m_nCamp;
	int		m_nFigure;
	int		m_nPos;
	char	m_szTongName[32];
	char	m_szTitle[32];
	char	m_szMaster[32];
	char	m_szName[32];
} STONG_SERVER_TO_CORE_LOGIN;

// ������뽨����� ����չЭ��
typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	BYTE	m_btCamp;
	char	m_szName[defTONG_NAME_MAX_LENGTH + 1];
} TONG_APPLY_CREATE_COMMAND;

typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	BYTE	m_btCamp;
	char	m_szName[defTONG_NAME_MAX_LENGTH + 1];
} TONG_APPLY_CHANGE_COMMAND;


// ������������ ����չЭ��
typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	DWORD	m_dwNpcID;
} TONG_APPLY_ADD_COMMAND;

// ������������ ����չЭ��
typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	DWORD	m_dwTongNameID;
	BYTE	m_btCurFigure;
	BYTE	m_btCurPos;
	BYTE	m_btNewFigure;
	BYTE	m_btNewPos;
	char	m_szName[32];
} TONG_APPLY_INSTATE_COMMAND;

// ��Ὠ��ʧ�� ��չЭ��
typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	BYTE	m_btFailId;
} TONG_CREATE_FAIL_SYNC;

// ת������������ ��չЭ��
typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	int		m_nPlayerIdx;
	char	m_szName[32];
} TONG_APPLY_ADD_SYNC;

// ֪ͨ��ҽ������ɹ� ����ͨЭ��
typedef struct
{
	BYTE	ProtocolType;
	BYTE	m_btCamp;
	char	m_szName[defTONG_NAME_MAX_LENGTH + 1];
} TONG_CREATE_SYNC;

// ֪ͨ��Ҽ����� ����չЭ��
typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	BYTE	m_btCamp;
	char	m_szTongName[32];
	char	m_szTitle[32];
	char	m_szMaster[32];
} TONG_Add_SYNC;

// ��������ɢ��� ����չЭ��
typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
} TONG_APPLY_DISMISS_COMMAND;

// ��Ұ�ᱻ��ɢ ����ͨЭ��
typedef struct
{
	BYTE	ProtocolType;
} TONG_DISMISS_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	int	m_bLifePoison;
	int m_bManaPoison;
	int m_bAllPoison;
	int m_bAllPoisonMin;
	BOOL m_bSuaTrangBi;
	BOOL m_bUseTTL;
	BOOL m_bNhatDoChonLoc;
	BOOL m_bGuiTien;
	BOOL m_bQuayLai;
	int m_NumSelect;
	BOOL m_RingSelect;
	BOOL m_WeaSelect;
} AUTO_QUAYLAI;

typedef struct
{
	BYTE	ProtocolType;
	int	m_Option1;
	int m_Option2;
	int m_Option3;
	int m_Option4;
	int m_Option5;
	int m_Option6;
	int m_Option7;
	int m_Option8;
	int m_Option9;
	int m_Option10;
	int	m_Option11;
	int m_Option12;
	int m_Option13;
	int m_Option14;
	int m_Option15;
	int m_Option16;
	int m_Option17;
	int m_Option18;
	int m_Option19;
	int m_Option20;
	int	m_Option21;
	int m_Option22;
	int m_Option23;
	int m_Option24;
	int m_Option25;
	int m_Option26;
	int m_Option27;
	int m_Option28;
	int m_Option29;
	int m_Option30;
	int	m_Option31;
	int m_Option32;
	int m_Option33;
	int m_Option34;
	int m_Option35;
	int m_Option36;
	int m_Option37;
	int m_Option38;
	int m_Option39;
} AUTO_LOCDO;


typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	int		m_nPlayerIdx;
	DWORD	m_dwNameID;
	BYTE	m_btFlag;			// �Ƿ���� TRUE ���� FALSE ������
} TONG_ACCEPT_MEMBER_COMMAND;

typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	BYTE	m_btInfoID;
	int		m_nParam1;
	int		m_nParam2;
	int		m_nParam3;
	char	m_szBuf[64];
} TONG_APPLY_INFO_COMMAND;

typedef struct
{
	BYTE	m_btFigure;
	BYTE	m_btPos;
	char	m_szTitle[32];
	char	m_szName[32];
	BYTE	m_nStatus;
	BYTE	m_PlayerLevel;
	BYTE	m_PlayerPoint;
	int	m_PlayerTime;
	int	m_PlayerTimeEnd;

} TONG_ONE_LEADER_INFO;

typedef struct
{
	char	m_szName[32];
	char	m_szTitle[32];
	int		m_nStatus;
	int		m_PlayerLevel;
	int		m_PlayerPoint;
	int		m_PlayerTime;
	int		m_PlayerTimeEnd;
} TONG_ONE_MEMBER_INFO;

typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	DWORD	m_dwNpcID;
	DWORD	m_dwMoney;
	int		m_nCredit;
	BYTE	m_btCamp;
	BYTE	m_btLevel;
	BYTE	m_btDirectorNum;
	BYTE	m_btManagerNum;
	DWORD	m_dwMemberNum;
	char	m_szTongName[32];
	TONG_ONE_LEADER_INFO	m_sMember[1 + defTONG_MAX_DIRECTOR];
} TONG_HEAD_INFO_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	DWORD	m_dwMoney;
	int		m_nCredit;
	BYTE	m_btCamp;
	BYTE	m_btLevel;
	BYTE	m_btDirectorNum;
	BYTE	m_btManagerNum;
	DWORD	m_dwMemberNum;
	BYTE	m_btStateNo;
	BYTE	m_btCurNum;
	char	m_szTongName[32];
	TONG_ONE_LEADER_INFO	m_sMember[defTONG_ONE_PAGE_MAX_NUM];
} TONG_MANAGER_INFO_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	DWORD	m_dwMoney;
	int		m_nCredit;
	BYTE	m_btCamp;
	BYTE	m_btLevel;
	BYTE	m_btDirectorNum;
	BYTE	m_btManagerNum;
	DWORD	m_dwMemberNum;
	BYTE	m_btStateNo;
	BYTE	m_btCurNum;
	char	m_szTitle[32];
	char	m_szTongName[32];
	TONG_ONE_MEMBER_INFO	m_sMember[defTONG_ONE_PAGE_MAX_NUM];
} TONG_MEMBER_INFO_SYNC;

// ��������ڰ���е���Ϣ ����չЭ��
typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	BYTE	m_btJoinFlag;
	BYTE	m_btFigure;
	BYTE	m_btCamp;
	char	m_szTongName[32];
	char	m_szTitle[32];
	char	m_szMaster[32];
} TONG_SELF_INFO_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	DWORD	m_dwTongNameID;
	BYTE	m_btSuccessFlag;
	BYTE	m_btOldFigure;
	BYTE	m_btOldPos;
	BYTE	m_btNewFigure;
	BYTE	m_btNewPos;
	char	m_szTitle[32];
	char	m_szName[32];
} TONG_INSTATE_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	DWORD	m_dwTongNameID;
	BYTE	m_btFigure;
	BYTE	m_btPos;
	char	m_szName[32];
} TONG_APPLY_KICK_COMMAND;

typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	DWORD	m_dwTongNameID;
	BYTE	m_btSuccessFlag;
	BYTE	m_btFigure;
	BYTE	m_btPos;
	char	m_szName[32];
} TONG_KICK_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	DWORD	m_dwTongNameID;
	BYTE	m_btFigure;
	BYTE	m_btPos;
	char	m_szName[32];
} TONG_APPLY_LEAVE_COMMAND;

typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	DWORD	m_dwTongNameID;
	BYTE	m_btFigure;
	BYTE	m_btPos;
	char	m_szName[32];
} TONG_APPLY_CHANGE_MASTER_COMMAND;

typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	DWORD	m_dwTongNameID;
	char	m_szTitle[32];
} TONG_APPLY_CHANGE_TITLE_FEMALE;

typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	DWORD	m_dwTongNameID;
	char	m_szTitle[32];

} TONG_APPLY_CHANGE_TITLE_MALE;





typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	DWORD	m_dwTongNameID;
	int 	m_nMoney;
} TONG_APPLY_DEPOSIT_MONEY;



typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	DWORD	m_dwTongNameID;
	int 	m_nMoney;
} TONG_APPLY_TAKE_MONEY;




typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	DWORD	m_dwTongNameID;
	char	m_szName[32];
	char	m_szTitle[32];
} TONG_APPLY_CHANGE_TITLE;



typedef struct
{
	BYTE	ProtocolType;
	WORD	m_wLength;
	BYTE	m_btMsgId;
	DWORD	m_dwTongNameID;
	BYTE	m_btFailID;
	char	m_szName[32];
} TONG_CHANGE_MASTER_FAIL_SYNC;

// tong ��� end
typedef struct
{
	BYTE	ProtocolType;
	DWORD	m_dwNpcID;
	WORD	m_wGoldFlag;
} NPC_GOLD_CHANGE_SYNC;

typedef struct
{
	BYTE	ProtocolType;
	DWORD	dwItemID;
	int		nChange;
} ITEM_DURABILITY_CHANGE;

typedef struct
{
	BYTE	ProtocolType;
	DWORD	dwItemID;
} ITEM_REPAIR;



typedef struct
{
	BYTE	ProtocolType;
} OPEN_SHOP_GOLD;



typedef struct
{
	BYTE	ProtocolType;
} OPEN_TOP_TK_NEW;

typedef struct	
{
	BYTE	ProtocolType;
	int	nNum;
} SET_IMAGE;

typedef struct	
{
	BYTE	ProtocolType;
	int 	nValueIndex;
	int 	nValue;
	BOOL 	bCheck;
} PLAYER_TONGKIM_SYNC;

// �ڵ�����֧����֮ǰ�����ж��Ƿ��ڽ���״̬��������ڽ��ף����ܵ�����֧����
void SendClientCmdSell(int nID);

void SendClientCmdBlockItem(int nID);

void SendClientCmdStaskItem(int nID,int nNumber);
void SendClientCmdStringBox(char* szString);



void SendClientCmdLoginPWStoreBox(char* szString);
void SendClientCmdPWStoreBox(char* szString,char* szStringNew);
void SendClientCmdBlockStoreBox();


void SendClientCmdNewPWStoreBox(char* szString);



void SendClientCmdCheckItemBox();
void SendClientCmdSlectCheckBox(int nSlect);

void SendClientCmdButtonPGBox(int nSlect);

void SendClientCmdShopName(char* szString);

void SendClientCmdShopPrice(int nID, int nPrice);

void SendClientCmdOpenShop();

void SendClientCmdCloseBuyShop();


void SendClientCmdShopBuyItem(int nID);

void SendClientCmdUnBlockItem(int nID);

// �ڵ�����֧����֮ǰ�����ж��Ƿ��ڽ���״̬��������ڽ��ף����ܵ�����֧����
BOOL SendClientCmdBuy(int nBuyIdx, int nPlace, int nX, int nY);
// �ڵ�����֧����֮ǰ�����ж��Ƿ��ڽ���״̬��������ڽ��ף����ܵ�����֧����
void SendClientCmdRun(int nX, int nY);
// �ڵ�����֧����֮ǰ�����ж��Ƿ��ڽ���״̬��������ڽ��ף����ܵ�����֧����
void SendClientCmdWalk(int nX, int nY);
// �ڵ�����֧����֮ǰ�����ж��Ƿ��ڽ���״̬��������ڽ��ף����ܵ�����֧����
void SendClientCmdSkill(int nSkillID, int nX, int nY,int nX0 = -1, int nY0 = -1,int nRadius = -1);
//void SendClientCmdPing();
void SendClientCmdSit(int nSitFlag);
void SendClientCmdRide();
void SendClientCmdMoveItem(void* pDownPos, void* pUpPos);
void SendClientCmdQueryLadder(DWORD	dwLadderID);
void SendClientCmdRequestNpc(int nID);
void SendClientCmdJump(int nX, int nY);
void SendClientCmdStoreMoney(int nDir, int nMoney);
//void SendClientCmdRevive(int nReviveType);
void SendClientCmdRevive();
void SendObjMouseClick(int nObjID, DWORD dwRegionID);
void SendClientCmdRepair(DWORD dwID);

void SendClientCmdOpenShopGold();
void SendClientCmdOpenTopTKNew();
void SendClientToaDo(int nstt);
void SendClientCPSetImageCmd(int nNumber);
void SendClientCmdLiXian(); // UY THAC
void SendClientCmdAutoQuayLai(int n1, int n2, int n3, int n4, BOOL n5, BOOL n6, BOOL n7, BOOL n8, int numselect, BOOL ringselect, BOOL weaselect);
void SendClientCmdAutoLocDo(int n1,int n2,int n3,int n4,int n5,int n6,int n7, int n8, int n9, int n10,int n11,int n12,int n13,int n14,int n15,int n16,int n17, int n18, int n19, int n20,int n21,int n22,int n23,int n24,int n25,int n26,int n27, int n28, int n29, int n30,int n31,int n32,int n33,int n34,int n35,int n36,int n37, int n38, int n39);
extern	int	g_nProtocolSize[MAX_PROTOCOL_NUM];
#pragma pack(pop, enter_protocol)
#endif
