/*****************************************************************************************
//	����--���������
//	Copyright : Kingsoft 2003
//	Author	:   Wooy(Wu yue)
//	CreateTime:	2003-4-21
------------------------------------------------------------------------------------------
*****************************************************************************************/
#pragma once

#include "../Elem/WndShowAnimate.h"
#include "../elem/WndButton.h"
#include "../elem/WndObjContainer.h"
#include "../elem/WndText.h"

struct KUiObjAtRegion;

class KUiStoreBox : protected KWndShowAnimate {
public:
  static KUiStoreBox *OpenWindow();   // �򿪴��ڣ�����Ψһ��һ�������ʵ��
  static KUiStoreBox *GetIfVisible(); // �������������ʾ���򷵻�ʵ��ָ��
  static void CloseWindow();          // �رմ���
  static void LoadScheme(const char *pScheme);      // ������淽��
  void UpdateItem(KUiObjAtRegion *pItem, int bAdd); // ��Ʒ�仯����
  static void UpdateClientDT();

private:
  KUiStoreBox() {}
  ~KUiStoreBox() {}
  void Initialize();                                               // ��ʼ��
  int WndProc(unsigned int uMsg, unsigned int uParam, int nParam); // ���ں���
  void UpdateData();
  void OnItemPickDrop(ITEM_PICKDROP_PLACE *pPickPos,
                      ITEM_PICKDROP_PLACE *pDropPos);
  void OnLeftShiftClickItem(KUiDraggedObject *pItem);
  void OnGetMoney(int nMoney);

private:
  static KUiStoreBox *m_pSelf;

private:
  int m_nMoney;
  KWndText32 m_Money;
  KWndButton m_GetMoneyBtn;
  KWndButton m_CloseBtn;

  KWndButton m_BlockBox1;
  KWndButton m_BlockBox2;

  KWndButton m_PassWordBox;
  KWndButton m_OpenBox;

  KWndObjectMatrix m_ItemBox;
};