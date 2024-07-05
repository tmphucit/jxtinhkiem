/*
 * File:     UiWorldMap.h
 * Desc:     �����ͼ
 * Author:   flying
 * Creation: 2003/7/22
 */
//-----------------------------------------------------------------------------
#pragma once

#include "../Elem/UiImage.h"
#include "../Elem/WndImage.h"

class KUiMapCave : protected KWndImage {
public:
  static KUiMapCave *OpenWindow(); // �򿪴��ڣ�����Ψһ��һ�������ʵ��
  static void CloseWindow();       // �رմ���
  static KUiMapCave *GetIfVisible();
  void LoadScheme(const char *pScheme); // ������淽��

private:
  KUiMapCave() {}
  ~KUiMapCave() {}
  void Initialize();
  int WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
  void Breathe(); // �����
  void UpdateData();

private:
  static KUiMapCave *m_pSelf;
  KWndImage m_Sign;
};