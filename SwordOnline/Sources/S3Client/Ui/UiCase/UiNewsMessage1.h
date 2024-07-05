/*****************************************************************************************
//	����--������Ϣ����
//	Copyright : Kingsoft 2003
//	Author	:   Fyt(Fan Zhanpeng)
//	CreateTime:	2003-08-01
------------------------------------------------------------------------------------------
*****************************************************************************************/
#ifndef _UINEWSMESSAGE1_H
#define _UINEWSMESSAGE1_H 1

#include "../../../Core/Src/GameDataDef.h"
#include "../Elem/WndShadow.h"
#include "../Elem/WndText.h"
#include "KEngine.h"
#include "KIniFile.h"

struct KNewsMessageNode1 : public KNewsMessage1 {
  unsigned int uTime; // һ����Ϣ-�����̶�Ϊ0����������Ϣ-��ʾ�������ĺ�����
                      // ��ʱ��Ϣ����ʱʱ���ޣ�(time()��ʱ����)
  union {
    unsigned int uShowTimes;    // ����Ϣ�Ѿ���ʾ�Ĵ���������һ����Ϣ��
    unsigned int uStartTime;    // ����ʱ��ʼ��ʱ�䣨���ڵ���ʱ��Ϣ��
    unsigned int uLastShowTime; // ���һ����ʾ��ʱ�䣨���ڶ�ʱ��Ϣ��
  };
  KNewsMessageNode1 *pNext;
};

class KUiNewsMessage1 : protected KWndShadow {
public:
  //----�������ͳһ�Ľӿں���----
  static KUiNewsMessage1 *OpenWindow();   // �򿪴��ڣ�����Ψһ��һ�������ʵ��
  static KUiNewsMessage1 *GetIfVisible(); // �������������ʾ���򷵻�ʵ��ָ��
  static void CloseWindow(BOOL bDestory = FALSE); // �رմ���
  static void LoadScheme(const char *pszScheme);  // ������淽��
  static void MessageArrival1(KNewsMessage1 *pMsg, SYSTEMTIME *pTime);
  static void EnableIdleMsg(BOOL bEnable);

private:
  static KUiNewsMessage1 *m_pSelf;
  static BOOL ms_bEnableIdleMsg;

private:
  KUiNewsMessage1();
  ~KUiNewsMessage1() {}
  void Initialize();
  void LoadScheme(KIniFile *pIni);      // ������淽��
  virtual void Breathe();               // ��Ҫ���������Ϣ����-____-|||b��
  virtual int PtInWindow(int x, int y); // ��͸������
  virtual void PaintWindow();

  bool AddMessage(KNewsMessage1 *pMsg, unsigned int uTime,
                  unsigned int uTimeParam = 0);
  // ����Ϣ����-__-||b����ǰ������һ����Ϣ-__-||b
  KNewsMessageNode1 *
  SeparateMsg(); // ��m_pHandling��ָ����Ϣ����������������������
  void AddToTail(KNewsMessageNode1 *pNode); // ��pNode��ָ����Ϣ�ӵ�����ĩ�ˣ�
  bool
  PickAMessage(); // �ڶ����У�Ѱ���Ƿ��з�����ʾ��������Ϣ�����Ҹ���ɾ����ʱ��Ϣ
  void Reset();   // ������Ϣ����ʾ״̬
  bool ScrollMsg();       // ������ǰ��Ϣ
  void PickFromIni();     // ��Ini�ļ��������ȡһ����Ϣ�������
  void Clear();           // ������е���Ϣ
  void ConvertMsg();      // ת����Ϣ��������ʾ����
  bool MakeCountingMsg(); // ���ɵ���ʱ��Ϣ����ʾ����

private:
  KNewsMessageNode1 *m_pHead;     // ��Ϣ�����е�ͷһ����Ϣ
  KNewsMessageNode1 *m_pHandling; // ������ʾ/�����������Ϣ

  KIniFile m_IniFile; // ��¼Ini�ļ���Ҫ�������ʾ��һЩ��Ϣ

  int m_nIndentH;            // ǰ׺����ʾ��Ϣ���ݷָ�����
  int m_nIndentV;            // ��������ڴ��ڶ�����������������λ�����ص㣩
  int m_nFontSize;           // �����С
  unsigned int m_uTextColor; // ǰ���ַ�����ɫ
  unsigned int m_uTextBorderColor; // ���ֱ�Ե��ɫ
  int m_nVisionWidth;              // ��ʾ��Ϣ�Ŀռ�����ؿ��
  int m_nCharasVisibleLimitNum;    // ���ɵ��ַ�������
  int m_nFontHalfWidth[2];         // �ַ�������һ����

  unsigned int m_uMaxIdleTime;    // �����Ϣ����ʱ��
  unsigned int m_uShowInterval;   // ͬһ����Ϣ������ʾ֮��ļ��
  unsigned int m_uScrollInterval; // �ַ�������ʱ����

  unsigned int m_uLastShowTime; // ��һ����ʾ��Ϣ��ʱ��
  KNewsMessage1 m_CurrentMsg;   // ��ǰ��ʾ����Ϣ����
  int m_nLineLen;               // ��ǰ��ʾ��Ϣ������ʾ�ַ�������

  unsigned int m_uLastScrollTime; // �ϴι�����ʱ��
  bool m_bJustIncoming;           // ��Ϣ���ڽ���,(ͷ)��δ��ʼ�뿪��ʾ����
  int m_nCharIndex;               // ��Ϣ�ַ��Ĺ����±�
  int m_nTextPosX;                // ��Ϣ��ʾ��������Ͻ�X����(���)
  int m_nHalfIndex;               // �ַ���������
  int m_nInsertPlace;             // ֻ�Ե�������Ϣ��Ч
};

#endif
