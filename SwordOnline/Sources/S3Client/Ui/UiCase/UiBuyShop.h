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

class KUiBuyShop : protected KWndShowAnimate {
public:
  static KUiBuyShop *OpenWindow(char *szTitleBox);
  static KUiBuyShop *GetIfVisible();
  static void CloseWindow();
  static void LoadScheme(const char *pScheme);
  void UpdateItem(KUiObjAtRegion *pItem, int bAdd);

private:
  KUiBuyShop() {}
  ~KUiBuyShop() {}
  void Initialize();                                               // ��ʼ��
  int WndProc(unsigned int uMsg, unsigned int uParam, int nParam); // ���ں���
  void OnItemPickDrop(ITEM_PICKDROP_PLACE *pPickPos,
                      ITEM_PICKDROP_PLACE *pDropPos);

private:
  static KUiBuyShop *m_pSelf;

private:
  KWndButton m_CloseBtn;
  KWndObjectMatrix m_ItemBox;

  KWndText32 m_TitleBox;
};