// -------------------------------------------------------------------------
//	�ļ���		��	UiToolsControlBar.h
//	������		��	����
//	����ʱ��	��	2003-7-24 19:39:54
//	��������	��
//
// -------------------------------------------------------------------------
#ifndef __UITOOLSCONTROLBAR_H__
#define __UITOOLSCONTROLBAR_H__

#pragma once
#include "../Elem/WndButton.h"
#include "../Elem/WndToolBar.h"

class KUiToolsControlBar : public KWndToolBar {
public:
  //----�������ͳһ�Ľӿں���----
  static KUiToolsControlBar *OpenWindow(); // �򿪴��ڣ�����Ψһ��һ�������ʵ��
  static void CloseWindow();               // �رմ���
  static void LoadScheme(const char *pScheme);    // ������淽��
  static void DefaultScheme(const char *pScheme); // ���³�ʼ������
  static KUiToolsControlBar *GetSelf() { return m_pSelf; }
  //	static void	SwitchPKPopup();
  //	static void	SwitchFastPK();

private:
  ~KUiToolsControlBar() {}
  void Initialize(); // ��ʼ��
  void Breathe();
  //	int		WndProc(unsigned int uMsg, unsigned int uParam, int
  //nParam);
  void SwitchPKProcess(int nAction);

private:
  static KUiToolsControlBar *m_pSelf;
  // KWndButton	m_Friend;
  // KWndButton	m_Options;
  enum CHOICE_PK {
    Exercises = 0,
    Fighting,
    Murder,
    Tongwar,
  };
};
#endif // __UITOOLSCONTROLBAR_H__