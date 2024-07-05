#ifndef KItemSetH
#define	KItemSetH

#include "KLinkArray.h"
#include "KItem.h"

#define		IN
#define		OUT
class	KItem;

enum enumAbrade
{
	enumAbradeAttack = 0,
	enumAbradeDefend,
	enumAbradeMove,
	enumAbradeNum,
};
// ���֮�佻�׽���ʱ�������ж������Ʒ���ܷ�����������Ʒ
typedef struct
{
	int		m_nIdx;
	int		m_nX;
	int		m_nY;
	int		m_nWidth;
	int		m_nHeight;
} TRADE_ITEM_INFO;

typedef struct
{
	int		nPriceScale;
	int		nMagicScale;
} REPAIR_ITEM_PARAM;

class KItemSet
{
private:
	DWORD			m_dwIDCreator;		//	ID�����������ڿͻ�����������˵Ľ���
    int             m_nNextAddItem;
	int             m_nRemoteItem[MAX_ITEM];




public:
	int				m_nItemAbradeRate[enumAbradeNum][itempart_num];
	REPAIR_ITEM_PARAM	m_sRepairParam;


#ifdef _SERVER
	int             m_checkdel;
#endif


#ifdef _SERVER
	// ���֮�佻�׽���ʱ�������ж������Ʒ���ܷ�����������Ʒ
	TRADE_ITEM_INFO		*m_psItemInfo;
	// ���֮�佻�׽���ʱ�������ж������Ʒ���ܷ�����������Ʒ
	TRADE_ITEM_INFO		*m_psBackItemInfo;
	// copy m_psItemInfo to m_psBackItemInfo
	void			BackItemInfo();
	// ������ұ�PK������ĳͷ����㣬����������Ʒ
	PlayerItem		m_sLoseItemFromEquipmentRoom[EQUIPMENT_ROOM_WIDTH * EQUIPMENT_ROOM_HEIGHT];
	// ������ұ�PK������ĳͷ����㣬���䴩�����ϵ�װ��
	PlayerItem		m_sLoseEquipItem[itempart_num];
#endif

public:
	KItemSet();
	~KItemSet();
	void			Init();
	int				GetItemCount(IN int nItemGenre = -1);
	int				SearchID(IN DWORD dwID);
	int				Add(KItem* pItem);
	BOOL            Get_SizeItem(IN int nItemGenre,
								  IN int nDetailType,
								   IN int nParticularType,
								   IN int nLevel,
								   IN OUT int* nWidth,
								   IN OUT int* nHeight
								   );

	int				Add(IN int nItemGenre, IN int nSeries, IN int nLevel, IN int nLuck, IN int nDetail = -1, IN int nParticular = -1, IN int* pnMagicLevel = NULL, IN int nVersion = 0, IN UINT nRandomSeed = 0, IN int nYear = 0, IN int nMonth = 0, IN int nDay = 0, IN int nHour = 0, IN int iNgoaiTrang = 0);
	int				AddExit(IN int nItemGenre, IN int nSeries, IN int nLevel, IN int nLuck, IN int nDetail = -1, IN int nParticular = -1, IN int* pnMagicLevel = NULL, IN int nVersion = 0, IN UINT nRandomSeed = 0, IN int nYear = 0, IN int nMonth = 0, IN int nDay = 0, IN int nHour = 0);
	void			Remove(IN int nIdx,IN BOOL bcheck = FALSE);
	int				GetAbradeRange(IN int nType, IN int nPart);
private:
	void			SetID(IN int nIdx);
	int				FindFree();
};

extern KItemSet	ItemSet;
#endif
