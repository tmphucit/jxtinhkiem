/*****************************************************************************************
//	����--���߽���
//	Copyright : Kingsoft 2002
//	Author	:   Wooy(Wu yue)
//	CreateTime:	2002-9-2
------------------------------------------------------------------------------------------
*****************************************************************************************/
#pragma once

#include "../Elem/WndShowAnimate.h"
#include "../elem/WndButton.h"
#include "../elem/WndObjContainer.h"
#include "../elem/WndText.h"

struct KUiObjAtRegion;

class KUiItem : public KWndShowAnimate {
public:
  static KUiItem *OpenWindow();   // �򿪴��ڣ�����Ψһ��һ�������ʵ��
  static KUiItem *GetIfVisible(); // �������������ʾ���򷵻�ʵ��ָ��
  static void
  CloseWindow(bool bDestroy); // �رմ��ڣ�ͬʱ����ѡ���Ƿ�ɾ������ʵ��
  static void LoadScheme(const char *pScheme); // ������淽��
  static void OnNpcTradeMode(bool bTrue);
  void UpdateItem(KUiObjAtRegion *pItem, int bAdd); // ��Ʒ�仯����
  void Breathe();                                   // �����

  static void UpdateButton(int nCheck);

private:
  KUiItem() {}
  ~KUiItem() {}
  void Initialize();                                               // ��ʼ��
  int WndProc(unsigned int uMsg, unsigned int uParam, int nParam); // ���ں���
  void UpdateData();
  void OnClickItem(KUiDraggedObject *pItem, bool bDoImmed);
  void OnLeftShiftClickItem(KUiDraggedObject *pItem);
  void OnRepairItem(KUiDraggedObject *pItem);
  void OnItemPickDrop(ITEM_PICKDROP_PLACE *pPickPos,
                      ITEM_PICKDROP_PLACE *pDropPos);
  void OnGetMoney(int nMoney);

private:
  static KUiItem *m_pSelf;

private:
  int m_nMoney;
  KWndText256 m_Money;

  int m_nGold;
  KWndText256 m_Gold;

  KWndButton m_GetMoneyBtn;
  KWndButton m_CloseBtn;
  KWndObjectMatrix m_ItemBox;
  KWndButton m_OpenStatusPadBtn;

  KWndButton m_MakeAdv;
  KWndButton m_MarkPrice;
  KWndButton m_MakeStall;
};