// -------------------------------------------------------------------------
//	�ļ���		��	UiToolsControlBar.h
//	������		��	����
//	����ʱ��	��	2003-7-24 19:39:54
//	��������	��
//
// -------------------------------------------------------------------------
#ifndef __UIAUTO_H__
#define __UIAUTO_H__

#pragma once
#include "../Elem/WndButton.h"
#include "../Elem/WndToolBar.h"

class KUiAuto : public KWndToolBar {
public:
  //----�������ͳһ�Ľӿں���----
  static KUiAuto *OpenWindow(); // �򿪴��ڣ�����Ψһ��һ�������ʵ��
  static void CloseWindow();    // �رմ���
  static void LoadScheme(const char *pScheme);    // ������淽��
  static void DefaultScheme(const char *pScheme); // ���³�ʼ������
  static KUiAuto *GetSelf() { return m_pSelf; }

private:
  ~KUiAuto() {}
  void Initialize(); // ��ʼ��
  void Breathe();

private:
  static KUiAuto *m_pSelf;
};
#endif