/*****************************************************************************************
//	����--״̬����
//	Copyright : Kingsoft 2002
//	Author	:   Wooy(Wu yue)
//	CreateTime:	2002-9-2
------------------------------------------------------------------------------------------
        ����11��װ���ڷ�λ�ã�����2��4���·�2��3��ͷ��2��2������2��1��
        ����1��1��Ь��2��2����ָ1��1����׹1��2������1��1����2��3��
*****************************************************************************************/
#pragma once

#include "../../../core/src/gamedatadef.h"
#include "../Elem/WndButton.h"
#include "../Elem/WndShowAnimate.h"
#include "../Elem/WndText.h"
#include "../elem/WndObjContainer.h"

enum UI_PLAYER_ATTRIBUTE;
struct KUiObjAtRegion;

#define _ITEM_COUNT 15

class KUiParadeItem : protected KWndShowAnimate {
public:
  //----�������ͳһ�Ľӿں���----
  static KUiParadeItem *
  OpenWindow(KUiPlayerItem *pDest);     // �򿪴��ڣ�����Ψһ��һ�������ʵ��
  static KUiParadeItem *GetIfVisible(); // �������������ʾ���򷵻�ʵ��ָ��
  static void
  CloseWindow(bool bDestroy); // �رմ��ڣ�ͬʱ����ѡ���Ƿ�ɾ������ʵ��
  static void LoadScheme(const char *pScheme); // ������淽��

  void UpdateData(KUiPlayerItem *pDest);
  static void UpdateMateName(char *szName);

private:
  KUiParadeItem() {}
  ~KUiParadeItem() {}
  void Initialize();                                               // ��ʼ��
  int WndProc(unsigned int uMsg, unsigned int uParam, int nParam); // ���ں���
  void LoadScheme(class KIniFile *pIni);     // ������淽��
  void UpdateBaseData(KUiPlayerItem *pDest); // ���»������ݣ������Ȳ��ױ����ݣ�
  void UpdateAllEquips(KUiPlayerItem *pDest);
  void UpdateEquip(KUiObjAtRegion *pEquip, int bAdd); // װ���仯����
private:
  static KUiParadeItem *m_pSelf;

private:
  KWndWindow m_Face;
  KWndText32 m_Name;
  KWndText32 m_Title;
  KWndText32 m_Repute;
  KWndText32 m_PKValue;
  KWndText32 m_FuYuan;
  KWndText32 m_WorldRank;
  KWndText32 m_TransLife;
  // KWndText32	m_Qh;
  //	KWndText32	m_MateName;

  KWndButton m_Close;
  KWndButton m_Avatar;
  // װ����Ʒ
  KWndObjectBox m_EquipBox[_ITEM_COUNT];
  KWndImage m_EquipExpandImg;

  KUiPlayerItem m_Dest;
};
