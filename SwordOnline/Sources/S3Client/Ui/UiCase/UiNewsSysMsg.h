/*****************************************************************************************
//	����--������Ϣ����
//	Copyright : Kingsoft 2003
//	Author	:   Fyt(Fan Zhanpeng)
//	CreateTime:	2003-08-01
------------------------------------------------------------------------------------------
*****************************************************************************************/
#ifndef _UINEWSSYSMSG_H
#define _UINEWSSYSMSG_H 1

#include "../../../Core/Src/GameDataDef.h"
#include "../Elem/WndShadow.h"
#include "../Elem/WndText.h"
#include "KEngine.h"
#include "KIniFile.h"

struct KNewsSysMsg {
  char sMsg[MAX_MESSAGE_LENGTH]; // ��Ϣ����
  int nMsgLen;                   // ��Ϣ���ݴ洢����
  int nCurLen;
  unsigned uTime;
};

struct KNewsSysMsgNode {
  KNewsSysMsgNode *pNext;
  KNewsSysMsg Msg;
};

class KUiNewsSysMsg : public KWndWindow {
public:
  //----�������ͳһ�Ľӿں���----
  static KUiNewsSysMsg *OpenWindow();   // �򿪴��ڣ�����Ψһ��һ�������ʵ��
  static KUiNewsSysMsg *GetIfVisible(); // �������������ʾ���򷵻�ʵ��ָ��
  static void CloseWindow(BOOL bDestory = FALSE); // �رմ���
  static void LoadScheme(const char *pszScheme);  // ������淽��
  static void MessageArrival(const char *pMsg, unsigned short nMsgLength);

private:
  static KUiNewsSysMsg *m_pSelf;

private:
  KUiNewsSysMsg();
  ~KUiNewsSysMsg() {}
  void Initialize();
  void LoadScheme(KIniFile *pIni);      // ������淽��
  virtual int PtInWindow(int x, int y); // ��͸������
  virtual void PaintWindow();
  void ClearAll();
  bool AddMessage(KNewsSysMsg *pMsg);
  // ����Ϣ����-__-||b����ǰ������һ����Ϣ-__-||b
  int GetSystemMessageCount();
  bool RemoveSystemMessage(int nIndex);
  const KNewsSysMsg *GetSystemMessage(int nIndex);

private:
  KNewsSysMsgNode *m_pHead; // ��Ϣ�����е�ͷһ����Ϣ
  static int ms_nSystemMessageCount;

  int m_nIndentH;            // ǰ׺����ʾ��Ϣ���ݷָ�����
  int m_nIndentV;            // ��������ڴ��ڶ�����������������λ�����ص㣩
  int m_nFontSize;           // �����С
  unsigned int m_uTextColor; // ǰ���ַ�����ɫ
  unsigned int m_uTextBorderColor; // ���ֱ�Ե��ɫ
  unsigned int m_uShadowColor;     // ǰ���ַ�����ɫ
  unsigned int m_uShowInterval;    // ͬһ����Ϣ������ʾ֮��ļ��
};

#endif
