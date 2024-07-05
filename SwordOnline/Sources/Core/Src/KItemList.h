#ifndef	KItemListH
#define	KItemListH

#include "KLinkArray.h"
#include "KItem.h"
#define	MAX_ITEM_ACTIVE	2


//#define		EQUIPMENT_ROOM_WIDTH		6
//#define		EQUIPMENT_ROOM_HEIGHT		10
//#define		REPOSITORY_ROOM_WIDTH		6
//#define		REPOSITORY_ROOM_HEIGHT		10
//#define		TRADE_ROOM_WIDTH			6
//#define		TRADE_ROOM_HEIGHT			10


#define	REQUEST_EQUIP_ITEM		1
#define	REQUEST_EAT_MEDICINE	2

typedef struct
{
	int		nPlace;
	int		nX;
	int		nY;
} ItemPos;


class CORE_API KItemList
{
private:
	int			m_PlayerIdx;
	int			m_Hand;
	int			m_nBackHand;
	int			m_EquipItem[itempart_num];						// ���װ���ĵ��ߣ���Ӧ��Ϸ�����е��������������

	int			m_PGBoxItem[MAX_PGBOX_ITEM];



	PlayerItem	m_Items[MAX_PLAYER_ITEM];						// ���ӵ�е����е��ߣ�����װ���ŵĺ�������ŵģ���Ӧ��Ϸ�����е��������������
	PlayerItem	m_sBackItems[MAX_PLAYER_ITEM];					// ���׹����� m_Items �ı���
	static int	ms_ActiveEquip[itempart_num][MAX_ITEM_ACTIVE];	// ĳ�����ֵ�װ���������װ��
	static int	ms_ActivedEquip[itempart_num][MAX_ITEM_ACTIVE];	// ĳ�����ֵ�װ����ʲôװ������
	KLinkArray	m_FreeIdx;
	KLinkArray	m_UseIdx;
	int			m_nListCurIdx;									// ���� GetFirstItem �� GetNextItem
	BOOL		m_nMaskLock; // MASK
#ifndef _SERVER
	BOOL		m_bLockOperation;
#endif
public:
	KInventory	m_Room[room_num];
	int         m_KickAllMacatric;

	BOOL		CheckHaveItem(int nGameIdx);

private:
	int			FindFree();
	int			FindSame(int nGameIdx);							// nGameIdxָ��Ϸ�����е�������ı��
	int			GetEquipPlace(int nType);						// ȡ��ĳ����װ��Ӧ�÷ŵ�λ��
	BOOL		Fit(int nIdx, int nPlace);						// ����Ƿ����װ����
	BOOL		Fit(KItem* pItem, int nPlace);
	int			GetEquipEnhance(int nPlace);					// ȡ��װ���ļ�����������
	int			GetActiveEquipPlace(int nPlace, int nCount);	// ȡ��nPlace��װ������ĵ�nCount��װ��λ��
	void		InfectionNextEquip(int nPlace, BOOL bEquip = FALSE);
	void        CheckDoGroupGoldItem();
	// ��room_equipment�в���ָ��Genre��DetailType����Ʒ���õ�ItemIdx��λ��
	BOOL		FindSameDetailTypeInEquipment(int nGenre, int nDetail, int *pnIdx, int *pnX, int *pnY);
	friend	class KPlayer;

public:
	KItemList();
	~KItemList();
	int			Init(int nIdx);
	int			GetEquipEnhanceP(int nPlace);
	int			GetEquipment(int nIdx) { return m_EquipItem[nIdx]; }
	int			GetItemPGBox(int nIdx) { return m_PGBoxItem[nIdx]; }
	int			GetActiveAttribNum(int nIdx);					// nIdxָ��Ϸ�����е�������ı��
	int			GetWeaponType();								// ȡ�����������ͣ���������(equip_meleeweapon)����Զ������(equip_rangeweapon)
	int			GetWeaponParticular();							// ȡ�������ľ������ͣ����ڼ��㲻ͬ���˺���ǿ
	void		GetWeaponDamage(int* nMin, int* nMax);			// ȡ���������˺�
	int			Add(int nIdx, int nPlace, int nX, int nY);		// nIdxָ��Ϸ�����е�������ı��
	BOOL		Remove(int nIdx,BOOL bcheck = FALSE);								// nIdxָ��Ϸ�����е�������ı��
	void		RemoveAll();
	BOOL		CanEquip(int nIdx, int nPlace = -1);			// nIdxָ��Ϸ�����е�������ı��
	BOOL		CanEquip(KItem* pItem, int nPlace = -1);
	BOOL		EnoughAttrib(void* pData);
	BOOL		Equip(int nIdx, int nPlace = -1);				// nIdxָ��Ϸ�����е�������ı��
	BOOL		UnEquip(int nIdx, int nPlace = -1);				// nIdxָ��Ϸ�����е�������ı��
	BOOL		EatMecidine(int nIdx);							// nIdxָ��Ϸ�����е�������ı��
	PlayerItem*	GetFirstItem();
	PlayerItem*	GetNextItem();
	int			SearchID(int nID);
	void		ExchangeMoney(int nSrcRoom, int DesRoom, int nMoney);
	void		ExchangeItem(ItemPos* SrcPos,ItemPos* DesPos);
	int			GetMoneyAmount();					// �õ���Ʒ���ʹ��������Ǯ��
	int			GetEquipmentMoney();				// �õ���Ʒ���ʹ������Ǯ��
	BOOL		AddMoney(int nRoom, int nMoney);
	BOOL		CostMoney(int nMoney);
	BOOL		DecMoney(int nMoney);
	void		SetMoney(int nMoney1, int nMoney2, int nMoney3);
	void		SetRoomMoney(int nRoom, int nMoney);
	int			GetMoney(int nRoom) { return m_Room[nRoom].GetMoney(); }	// ȡ�ÿռ��Ǯ
	void		SetPlayerIdx(int nIdx);				// �趨�������
	int			Hand() { return m_Hand; };
	void		ClearRoom(int nRoom);
	void	    ClearAll();


	#ifdef _SERVER
	int 	    FindNumberInAll(int nIdx);
	#endif

	#ifdef _SERVER
	BOOL        CheckItemInAll(int nIdx);
	
	void		UpdateCurItem(int nGameIdx);
	#endif


	void		BackupTrade();
	void		RecoverTrade();
	void		StartTrade();
	// MASK
	BOOL		GetMaskLock() {return m_nMaskLock;};
	void		SetMaskLock(BOOL bFlag);	
	// END
#ifdef	_SERVER
	void		Abrade(int nType);
	void		TradeMoveMoney(int nMoney);			// ���ô˽ӿڱ��뱣֤�����nMoney��һ����Ч��(�����Ҳ���������Ǯ��)
	void		SendMoneySync();					// ��������moneyͬ����Ϣ���ͻ���
	BOOL		IsTaskItemExist(int nDetailType);
	int			GetTaskItemNum(int nDetailType);
	int			GetTaskItemBind(int nDetailType);
	int			GetTaskItemNum2(int nDetailType);
	int			GetTaskItemNumBox(int nDetailType);

	int			GetAllItemInCheckBoxNum();
	int			GetItemInCheckBoxNum(int nGenre,int nDetailType,int nParticulType,int nLevel);
	int			CheckItemCountAll(int nGenre,int nDetailType,int nParticulType, int nLevel);
	int			CheckItemBlockInCheckBox(int nGenre,int nDetailType,int nParticulType,int nLevel);
	int			CheckTimeItemCount(int nTimeItem);
	int			CheckTimeItemCountAndGold(int nTimeItem);
	int			CheckTrangSucInBox();
	int			DeleteAllItemInCheckBox();
	int			DelPhiPhong();
	int			CheckDelItemPoison(int nGenre,int nDetailType,int nParticulType,int nLevel);

	int			GetItemIdxInCheckBoxByNum(int nGenre,int nDetailType,int nParticulType,int nLevel,int nNum);
	int			SetAutoRepair();



	int			GetPlayerItemNum();
	int			GetPlayerItemBlueNum();
	int			GetPlayerItemIdxByNum(int nId);
	int			GetPlayerItemPostIdx(int nIdxItem, int nValua);


	int		    GetIdxTaskItemHaveFreeStask(int nDetailType);
	BOOL		RemoveTaskItem(int nDetailType);
	BOOL		RemoveTaskItem2(int nDetailType);
	void		SetBindAllItem();
	BOOL		RemoveTaskItemBox(int nDetailType);
	BOOL		SetItemTimeBox(int idxitem, int time);
	BOOL		SetHSD(int idxitem, int year, int month, int day, int hour);
	int		GetHSD(int idxitem, int inum);
	BOOL		SetItemTimeOpenBlock(int time);
	void		UpdateItem(int nIdx);
	
	void		GetTradeRoomItemInfo();				// �����а� trade room �е� item �� idx width height ��Ϣд�� itemset �е� m_psItemInfo ��ȥ
	BOOL		TradeCheckCanPlace();				// �������ж��������Ʒ�ܲ�����ȫ�Ž��Լ�����Ʒ��
	BOOL		CheckCanPlaceInEquipment(int nWidth, int nHeight, int *pnX, int *pnY);// �ж�һ���������Ʒ�ܷ�Ž���Ʒ��
	BOOL		EatMecidine(int nPlace, int nX, int nY);		// ��ʲô�ط���ҩ
	// �Զ���һ��ҩƷ��room_equipment�ƶ���room_immediacy
	BOOL		AutoMoveMedicine(int nItemIdx, int nSrcX, int nSrcY, int nDestX, int nDestY);
	// ��ʧ������Ʒ
	void		AutoLoseItemFromEquipmentRoom(int nRate);
	void		AutoDurationItem(int nRate);
	// ��ʧһ���������ϵ�װ��(�����)
	void		AutoLoseEquip();
	// Time Item
	void			CheckItemTime();
	//End
	BOOL		SearchPosition(int nWidth, int nHeight, ItemPos* pPos);


	BOOL		CheckItemEquipCS();
	BOOL		CheckItemEquipMateBoy();
	BOOL		CheckItemEquipMateGirl();
	BOOL		CheckItemEquipMateGuest();


#endif

#ifndef	_SERVER
	void        RemoveMagicDurability(int nIdx);
	int			UseItem(int nIdx);					
	BOOL		SearchPosition(int nWidth, int nHeight, ItemPos* pPos);
	BOOL		AutoMoveItem(ItemPos SrcPos,ItemPos DesPos);
	//void		DropItemIdx(int nIdx);
	void		MenuSetMouseItem();
	void		RemoveAllInOneRoom(int nRoom);
	void		LockOperation();										// �����ͻ��˶�װ���Ĳ���
	void		UnlockOperation();
	BOOL		IsLockOperation() { return m_bLockOperation; };
	int			GetSameDetailItemNum(int nImmediatePos);
#endif
};
#endif
