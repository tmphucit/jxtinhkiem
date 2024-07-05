// -------------------------------------------------------------------------
//	�ļ���		��	UiTrade.h
//	������		��	Wooy(Wu yue)
//	����ʱ��	��	2002-12-21
//	��������	��	npc����ϵͳ����
// -------------------------------------------------------------------------
#pragma once

#include "../Elem/WndShowAnimate.h"
#include "../Elem/WndText.h"
#include "../elem/wndObjContainer.h"
#include "../elem/wndbutton.h"

struct KUiObjAtContRegion;

class KUiMarket : protected KWndShowAnimate {
public:
  //----�������ͳһ�Ľӿں���----
  static KUiMarket *OpenWindow();   // �򿪴��ڣ�����Ψһ��һ�������ʵ��
  static KUiMarket *GetIfVisible(); // �������������ʾ���򷵻�ʵ��ָ��
  static void CloseWindow();        // �رմ��ڣ�ͬʱ����ѡ���Ƿ�ɾ������ʵ��
  static void LoadScheme(const char *pScheme); // ������淽��
  static void CancelTrade();
  void UpdateData();
  int WndProc(unsigned int uMsg, unsigned int uParam, int nParam); // ���ں���
private:
  KUiMarket();
  ~KUiMarket() {}
  void SetPage(int nIndex);
  void Clear();
  void OnClickButton(KWndButton *pWnd, int bCheck);
  void OnBuyItem(KUiDraggedObject *pItem, bool bDoImmed);
  void Initialize(); // ��ʼ��
private:
  static KUiMarket *m_pSelf;

private:
  KUiObjAtContRegion *m_pObjsList;
  int m_nObjCount;
  int m_nPageCount;
  int m_nCurrentPage;
  KWndObjectMatrix m_ItemsBox; // ��Ʒ��
  KWndButton m_BuyBtn;
  KWndButton m_PhanLoai;
  KWndButton m_PreBtn;
  KWndButton m_NextBtn;
  KWndButton m_CloseBtn;
};