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

class KUiCheckItemBox : protected KWndShowAnimate {
public:
  static KUiCheckItemBox *
  OpenWindow(char *szTitleBox,
             char *szTitleTex);           // �򿪴��ڣ�����Ψһ��һ�������ʵ��
  static KUiCheckItemBox *GetIfVisible(); // �������������ʾ���򷵻�ʵ��ָ��
  static void CloseWindow();              // �رմ���
  static void LoadScheme(const char *pScheme);      // ������淽��
  void UpdateItem(KUiObjAtRegion *pItem, int bAdd); // ��Ʒ�仯����
private:
  KUiCheckItemBox() {}
  ~KUiCheckItemBox() {}
  void Initialize();                                               // ��ʼ��
  int WndProc(unsigned int uMsg, unsigned int uParam, int nParam); // ���ں���
  void UpdateData();
  void OnItemPickDrop(ITEM_PICKDROP_PLACE *pPickPos,
                      ITEM_PICKDROP_PLACE *pDropPos);

private:
  static KUiCheckItemBox *m_pSelf;

private:
  KWndButton m_CloseBtn;
  KWndButton m_OkBtn;
  KWndObjectMatrix m_ItemBox;

  KWndText32 m_TitleBox;

  KWndText256 m_TitleTex;
};