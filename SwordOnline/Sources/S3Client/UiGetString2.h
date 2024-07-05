// -------------------------------------------------------------------------
//	�ļ���		��	UiGetString.h
//	������		��	Wooy(Wu yue)
//	����ʱ��	��	2003-3-18
//	��������	��	����ִ�����
// -------------------------------------------------------------------------
#ifndef __UiGetString_H__
#define __UiGetString_H__

#include "../Elem/WndButton.h"
#include "../Elem/WndEdit.h"
#include "../Elem/WndImage.h"

enum GET_STRING_ACTION {
  GSA_NORMAL,
  GSA_ADV,
  GSA_PW,
  GSA_FOLK,
  GSA_INPUT,
};

class KUiGetString : protected KWndImage {
public:
  //----�������ͳһ�Ľӿں���----
  static KUiGetString *
  OpenWindow(GET_STRING_ACTION eAction, const char *pszTitle,
             const char *pszInitString, KWndWindow *pRequester,
             unsigned int uParam, int nMaxNum = 0, int nMinLen = 0,
             int nMaxLen = 16); // �򿪴��ڣ�����Ψһ��һ�������ʵ��
  static KUiGetString *GetIfVisible();
  static void LoadScheme(const char *pScheme); // ������淽��
  static void CloseWindow(bool bDestroy);      // �رմ���
private:
  KUiGetString();
  ~KUiGetString() {}
  void Initialize(); // ��ʼ��
  void Show();
  void Hide();
  int WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
  void OnCancel();
  void OnSend();
  void OnCheckInput();
  void Breathe();

private:
  static KUiGetString *m_pSelf;
  GET_STRING_ACTION m_eAction;
  KWndText32 m_Title;
  KWndImage m_Normal, m_Adv;
  short m_nMinLen, m_nMaxLen, m_nMaxNum;
  KWndEdit32 m_StringEdit;
  KWndButton m_OkBtn;
  KWndButton m_CancelBtn;
  KWndWindow *m_pRequester;
  unsigned int m_uRequesterParam;
};

#endif // __UiGetString_H__