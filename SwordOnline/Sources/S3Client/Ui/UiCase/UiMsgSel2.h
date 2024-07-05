// -------------------------------------------------------------------------
//	�ļ���		��	UiMsgSel.h
//	������		��	Wooy(Wu yue)
//	����ʱ��	��	2003-1-6
//	��������	��	������������Ϣѡ��
// -------------------------------------------------------------------------
#ifndef __UiMsgSel2_H__
#define __UiMsgSel2_H__

#include "../Elem/WndMessageListBox.h"
#include "../Elem/WndScrollBar.h"
#include "../Elem/WndShowAnimate.h"
#include "../Elem/WndText.h"

struct KUiQuestionAndAnswer;
struct KUiNpcSpr;

class KUiMsgSel2 : protected KWndShowAnimate {
public:
  //----�������ͳһ�Ľӿں���----
  static KUiMsgSel2 *
  OpenWindow(KUiQuestionAndAnswer *pContent,
             KUiNpcSpr *pImage); // �򿪴��ڣ�����Ψһ��һ�������ʵ��
  static KUiMsgSel2 *GetIfVisible();
  static void LoadScheme(const char *pScheme); // ������淽��
  static void CloseWindow(bool bDestroy);      // �رմ���
private:
  KUiMsgSel2() {}
  ~KUiMsgSel2() {}
  void Show(KUiQuestionAndAnswer *pContent);
  int Initialize(); // ��ʼ��
  int WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
  void OnClickMsg(int nMsg); // ��Ӧ�����Ϣ
  void ChangeCurSel(bool bNext);
  virtual void Breathe();

private:
  static KUiMsgSel2 *m_pSelf;
  KScrollMessageListBox m_MsgScrollList;
  KWndMessageListBox m_InfoText;
  KWndImage m_NpcSpr;
  KWndScrollBar m_InfoScroll;

  bool m_bAutoUp;
  bool m_bAutoDown;
  unsigned int m_uLastScrollTime;
};

#endif // __UiMsgSel2_H__