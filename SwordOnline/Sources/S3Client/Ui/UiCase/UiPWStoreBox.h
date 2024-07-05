// -------------------------------------------------------------------------
//	�ļ���		��	����ȷ�Ͽ�
//	������		��	Wooy(Wu yue)
//	����ʱ��	��	2003-5-28
// -------------------------------------------------------------------------
#ifndef __UiPWStoreBox_H__
#define __UiPWStoreBox_H__

#include "../../../core/src/gamedatadef.h"
#include "../elem/wndbutton.h"
#include "../elem/wndedit.h"
#include "../elem/wndimage.h"
#include "../elem/wndlabeledbutton.h"
#include "../elem/wndtext.h"

class KUiPWStoreBox : protected KWndImage {
public:
  //----�������ͳһ�Ľӿں���----
  static KUiPWStoreBox *OpenWindow();
  static KUiPWStoreBox *GetIfVisible();   // �������������ʾ���򷵻�ʵ��ָ��
  static void CloseWindow(bool bDestroy); // �رմ���
private:
  KUiPWStoreBox();
  ~KUiPWStoreBox() {}
  void Initialize(); // ��ʼ��
  void Show();
  void Hide();
  void LoadScheme(const char *pScheme); // ������淽��
  int WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
  void OnCancel();
  void OnOk();

private:
  static KUiPWStoreBox *m_pSelf;

  KWndEdit32 m_NumberPW;
  KWndEdit32 m_NumberEdit;
  KWndEdit32 m_NumberEditTrue;

  KWndLabeledButton m_BtnDone, m_BtnCancel;
};

#endif // __UiTradeConfirm_H__