//---------------------------------------------------------------------------
// Sword3 Core (c) 2002 by Kingsoft
//
// File:	KItem.h
// Date:	2002.08
// Code:	LiXueWu, DongBo
// Desc:	Header File
//---------------------------------------------------------------------------

#ifndef KItemH
#define KItemH

#include "GameDataDef.h"
#include "KBasPropTbl.h"
#include "KMagicAttrib.h"
#ifndef _SERVER
#include "../../Represent/iRepresent/KRepresentUnit.h"
#endif
#include "KTabFile.h"
// #include	"KPlayer.h"
//  them van toi
#include "KSG_StringProcess.h"
class KPlayer;
class KIniFile;

#define IN
#define OUT
// them van toi
// #define		KItemNormalAttrib KMagicAttrib

#define MAX_ITEM_STACK 50

#ifdef _SERVER

#define MAX_ITEM 200000
// #define		MAX_ITEM	70000

#else
#define MAX_ITEM 512
#endif
#define KItemNormalAttrib KMagicAttrib
/*
//װ������������Player�ĺ�������
#define	ID_LIFE		0
#define	ID_MAXLIFE	1
#define	ID_LIEFREPLENISH		2

#define	ID_MANA		3
#define	ID_MAXMANA	4
#define	ID_MANAREPLENISH		5
*/

enum ITEMGENRE {
  item_equip = 0,  // װ��
  item_medicine,   // ҩƷ
  item_mine,       // ��ʯ
  item_materials,  // ҩ��
  item_task,       // ����
  item_townportal, // ������
  item_number,     // ������Ŀ
};

enum EQUIPLEVEL {
  equip_normal = 0, // ��ͨװ��
  equip_magic,      // ħ��װ����1 ~ 2��ħ��ǰ��׺��
  equip_rare,       // ϡ��װ����3 ~ 6��ħ��ǰ��׺��
  equip_unique,     // Ψһװ��
  equip_set,        // ��װ
  equip_number,     // װ���ȼ���Ŀ
  // flying add this item
  equip_gold, // �ƽ�װ��
};

enum EQUIPDETAILTYPE {
  equip_meleeweapon = 0,
  equip_rangeweapon,
  equip_armor,
  equip_ring,
  equip_amulet,
  equip_boots,
  equip_belt,
  equip_helm,
  equip_cuff,
  equip_pendant,
  equip_horse,
  equip_mask, // Mak
  equip_fifong,
  equip_signet, // an
  equip_shipin, // trang suc
  equip_detailnum,
};

enum MEDICINEDETAILTYPE {
  medicine_blood = 0,
  medicine_mana,
  medicine_both,
  medicine_stamina,
  medicine_antipoison,
  medicine_detailnum,
};

typedef struct {
  int nItemGenre;      // �������� (����? ҩƷ? ��ʯ?)
  int nDetailType;     // �ڸ������еľ������
  int nParticularType; // ��ϸ���
  int nObjIdx;         // ��ͼ�ϰڷ�ʱ��Ӧ��������ݱ��
  BOOL bStack;         // �Ƿ�ɵ���
  int nWidth;          // ����������ռ���
  int nHeight;         // ����������ռ�߶�
  int nPrice;          // �۸�
  int nLevel;          // �ȼ�
  int nSeries;         // ��������
  int nBind;           // ��������

  char szItemName[80]; // ����
#ifndef _SERVER
  char szImageName[80]; // �����еĶ����ļ���
  char szIntro[256];    // ˵������

#endif
  // Time Item
  KTime LimitTime;
  // End
  int nNpcImage; // NPCͼ��Ӱ��
  int nIsThrow;
  int nFiFongArmor;
  int iShopCost;
  int iNgoaiTrang;

public:
} KItemCommonAttrib;

typedef struct {
  UINT uRandomSeed;
  int nGeneratorLevel[6];
  int nVersion;
  int nLuck;
} KItemGeneratorParam;

typedef struct {
  int uItemType;
  int uItemGroup;
  int uItemGroupCount;
} KItemSpecialParam;

typedef struct {
  int m_ItemIdx;
  KItemGeneratorParam m_GeneratorParam;
  KItemCommonAttrib m_CommonAttrib;
} KItemCheck;

class KNpc;

class KItem {
public:
  KItem();
  ~KItem();

  // �����Ǻ��ĳ�Ա����
public:
  KItemCommonAttrib m_CommonAttrib;        // ���ֵ��ߵĹ�ͬ����
  KItemNormalAttrib m_aryBaseAttrib[7];    // ���ߵĻ�������
  KItemNormalAttrib m_aryRequireAttrib[6]; // ���ߵ���������
  KItemNormalAttrib m_aryMagicAttrib[6];   // ���ߵ�ħ������
  // KItemNormalAttrib	m_aryMagicAttrib[i];	// ���ߵ�ħ������

  // �����Ǹ����Եĳ�Ա����
public:
  KItemGeneratorParam m_GeneratorParam; // ���ߵ����ɲ���
  KItemSpecialParam m_SpecialParam;

#ifndef _SERVER
  char m_GroupItemName[11][64];
  int m_ItemLevel;
  int m_Place; // noi tren nguoi
#endif

  int m_GroupItemNameInfo[11][3];

  int m_nPriceShop;
  int m_nPriceGold;

  int m_nPriceTL;
  int m_nPriceVD;

  int m_nPoitAbrate;

private:
  BOOL m_bShow;      // �����ڵ��������е�����
  DWORD m_dwID;      // ������ID�����ڿͻ�����������˵Ľ���
  int m_nCurrentDur; // ��ǰ�;ö�
#ifndef _SERVER
  KRUImage m_Image;
#endif
  // �����Ƕ���ӿ�
public:
  void ApplyMagicAttribToNPC(IN KNpc *, IN int = 0) const;
  void RemoveMagicAttribFromNPC(IN KNpc *, IN int = 0) const;
  void ApplyHiddenMagicAttribToNPC(IN KNpc *, IN int) const;
  void RemoveHiddenMagicAttribFromNPC(IN KNpc *, IN int) const;
  KItemGeneratorParam *GetItemParam() { return &m_GeneratorParam; };
  void SetID(DWORD dwID) { m_dwID = dwID; };
  DWORD GetID() const { return m_dwID; };
  void SetShow(BOOL bShow) { m_bShow = bShow; };
  BOOL GetShow() const { return m_bShow; };
  int GetDetailType() const { return m_CommonAttrib.nDetailType; };
  void SetGenre(int nItemGenre) { m_CommonAttrib.nItemGenre = nItemGenre; };
  void SetParticular(int nParticularType) {
    m_CommonAttrib.nParticularType = nParticularType;
  };
  void SetDetailType(int nDetailType) {
    m_CommonAttrib.nDetailType = nDetailType;
  };
  void SetLevel(int nLevel) { m_CommonAttrib.nLevel = nLevel; };
  int GetGenre() const { return m_CommonAttrib.nItemGenre; };
  int GetParticular() { return m_CommonAttrib.nParticularType; };
  int GetSeries() const { return m_CommonAttrib.nSeries; };
  int GetBindItem() const { return m_CommonAttrib.nBind; };
  void SetBindItem(int nBind) { m_CommonAttrib.nBind = nBind; };
  int GetShopCost() const { return m_CommonAttrib.iShopCost; };
  void SetShopCost(int iShopCost) { m_CommonAttrib.iShopCost = iShopCost; };
  int GetNgoaiTrang() const { return m_CommonAttrib.iNgoaiTrang; };
  void SetNgoaiTrang(int iNgoaiTrang) {
    m_CommonAttrib.iNgoaiTrang = iNgoaiTrang;
  };

  void SetSeries(int nSeries) { m_CommonAttrib.nSeries = nSeries; };
  int GetLevel() { return m_CommonAttrib.nLevel; };
  int GetWidth() const { return m_CommonAttrib.nWidth; };
  int GetHeight() const { return m_CommonAttrib.nHeight; };
  int GetPrice() const { return m_CommonAttrib.nPrice; };
  int GetIsThrow() const { return m_CommonAttrib.nIsThrow; };
  char *GetName() const { return (char *)m_CommonAttrib.szItemName; };
  int GetObjIdx() { return m_CommonAttrib.nObjIdx; };
  void *GetRequirement(IN int);
  int GetMaxDurability();
  int GetTotalMagicLevel();
  int GetRepairPrice();
  int GetVersion() { return m_GeneratorParam.nVersion; };
  void SetVersion(int nVersion) { m_GeneratorParam.nVersion = nVersion; };
  BOOL IsStack() const { return m_CommonAttrib.bStack; };
  void Remove();
  void Add();

  int GetFiFongArmor() { return m_CommonAttrib.nFiFongArmor; };
  void SetFiFongArmor(int nID) { m_CommonAttrib.nFiFongArmor = nID; };

  BOOL SetBaseAttrib(IN const KItemNormalAttrib *);
  BOOL IsItemMagic() {
    if (m_aryMagicAttrib[0].nAttribType)
      return true;

    return false;
  }

  int CheckMagicItem(int nMagicId, int nMagicNumber1, int nMagicNumber2);

  BOOL SetRequireAttrib(IN const KItemNormalAttrib *);
  BOOL SetMagicAttrib(IN const KItemNormalAttrib *);
  void SetDurability(IN const int nDur) { m_nCurrentDur = nDur; };
  int GetDurability() { return m_nCurrentDur; };
  KItemGeneratorParam *GetGeneratorParam() { return &m_GeneratorParam; }
  int Abrade(IN const int nRange);
  BOOL CanBeRepaired();
  // Time Item
  void SetTime(int bYear, BYTE bMonth, BYTE bDay, BYTE bHour);
  int GetTimeItem(int iNum);
  KTime *GetTime() { return &m_CommonAttrib.LimitTime; };
  BOOL CheckItemTime();
  // End

  int GetBaseMagic() const { return m_aryBaseAttrib[0].nValue[0]; }; // MASK
  int GetKind() { return m_SpecialParam.uItemType; };
  int GetItemGroup() { return m_SpecialParam.uItemGroup; };
  int GetBaseMagicAttribType(int i = 0) const {
    return m_aryBaseAttrib[i].nAttribType;
  };
#ifndef _SERVER
  void Paint(int nX, int nY);
  void GetDesc(char *pszMsg, bool bShowPrice = false, int nPriceScale = 1,
               int nActiveAttrib = 0, bool bActiveDes = false);
  void ReturnSupportSeries(int nSeries, LPSTR lpRString);
#endif

  // �����Ǹ����ӿ�
  friend class KItemGenerator;
  friend class KPlayer;
  friend class KItemList;

private:
// cai doan ma ban phai khai bao trong class moi hoat dong dc
#ifndef _SERVER
  void FindMagic(int nPropKind, int *nMin, int *nMax);
#endif
  BOOL SetAttrib_CBR(IN const KBASICPROP_EQUIPMENT *);
  BOOL SetAttrib_MA(IN const KItemNormalAttrib *);
  BOOL SetAttrib_MA(IN const KMACP *);
  void operator=(const KBASICPROP_EQUIPMENT &);
  void operator=(const KBASICPROP_MEDMATERIAL &);
  void operator=(const KBASICPROP_MINE &);
  void operator=(const KBASICPROP_MEDICINE &);
  void operator=(const KBASICPROP_QUEST &);
  void operator=(const KBASICPROP_TOWNPORTAL &);
  void operator=(const KBASICPROP_EQUIPMENT_UNIQUE &);
  // flying add this overload operator.
  void operator=(const KBASICPROP_EQUIPMENT_GOLD &);
  BOOL Gen_Equipment_Unique(const KBASICPROP_EQUIPMENT *,
                            const KBASICPROP_EQUIPMENT_UNIQUE *);

  // �����Ǹ�������
private:
  BOOL SetAttrib_Base(const KEQCP_BASIC *);
  BOOL SetAttrib_Req(const KEQCP_REQ *);
};

extern KItem Item[MAX_ITEM];

#endif
