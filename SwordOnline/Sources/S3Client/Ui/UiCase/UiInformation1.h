/*****************************************************************************************
//	����--��Ϣ����
//	Copyright : Kingsoft 2002
//	Author	:   Wooy(Wu yue)
//	CreateTime:	2002-8-14
------------------------------------------------------------------------------------------
*****************************************************************************************/
#pragma once

#include "../Elem/WndImage.h"
#include "../Elem/WndPureTextBtn.h"
#include "../Elem/WndShowAnimate.h"
#include "../Elem/WndText.h"

class KUiInformation1 : protected KWndShowAnimate {
public:
  void Initialize();                    // ��ʼ��
  void LoadScheme(const char *pScheme); // ������淽��
  void Show(const char *pInformation, int nMsgLen = -1,
            const char *pszFirstBtnText = "��ng �",
            const char *pszSecondBtnText = 0, KWndWindow *pCallerWnd = 0,
            unsigned int uParam = 0, const char *pszImage = 0,
            int nLeftTime = -1); // ��ʾ����
  void SpeakWords(KUiInformationParam *pWordDataList, int nCount,
                  int nLeftTime = -1); // ��ʾ�Ի�����
  void Close();                        // �رմ��ڣ���֪ͨ���ô���
  KUiInformation1();

private:
  void Hide(int nBtnIndex);                                        // ���ش���
  int WndProc(unsigned int uMsg, unsigned int uParam, int nParam); // ���ں���
  void PaintWindow();
  void Breathe();

private:
  KUiInformationParam *m_pWordDataList;
  KWndText256 m_Information;
  KWndPureTextBtn m_FirstBtn;
  KWndPureTextBtn m_SecondBtn;
  KWndImage m_MsgIcon;
  KWndWindow *m_pCallerWnd;
  unsigned int m_uCallerParam;
  int m_nMsgIconFrame;
  unsigned int m_uLastShowMessage;
  int m_nLeftTime;
};

void UIMessageBox1(const char *pMsg, int nMsgLen = -1, KWndWindow *pCaller = 0,
                   const char *pszFirstBtnText = "��ng �",
                   const char *pszSecondBtnText = 0, unsigned int uParam = 0,
                   const char *pszImage = 0, int nLeftTime = -1);
void UiCloseMessageBox1();

extern KUiInformation1 g_UiInformation1;