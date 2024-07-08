#pragma once

#include "../Elem/UiImage.h"
#include "../Elem/WndImage.h"
#include "../Elem/WndPureTextBtn.h"

class KUiWorldmap : protected KWndImage {
public:
  static KUiWorldmap *OpenWindow(); // �򿪴��ڣ�����Ψһ��һ�������ʵ��
  static void CloseWindow();        // �رմ���
  static KUiWorldmap *GetIfVisible();
  void LoadScheme(const char *pScheme); // ������淽��

private:
  KUiWorldmap() {}
  ~KUiWorldmap() {}
  void Initialize();
  int WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
  void Breathe(); // �����
  void UpdateData();

private:
  static KUiWorldmap *m_pSelf;
  // new add by lzlsky301
  KWndImage m_Country;
  KWndImage m_City;
  KWndImage m_Capital;
  KWndImage m_Tong;
  KWndImage m_Battlefield;
  KWndImage m_Field;
  KWndImage m_Cave;
  KWndImage m_Others;

  KWndPureTextBtn m_fengxiang;
  KWndPureTextBtn m_bianjing;
  KWndPureTextBtn m_yangzhou;
  KWndPureTextBtn m_linan;
  KWndPureTextBtn m_xiangyang;
  KWndPureTextBtn m_chengdu;
  KWndPureTextBtn m_dali;
};