/*******************************************************************************
File        : UiTongCreateSheet.h
Creator     : Fyt(Fan Zhanpeng)
create data : 08-29-2003(mm-dd-yyyy)
Description : �������ı�
********************************************************************************/


#if !defined(AFX_KUITONGCREATESHEET_H__7CC8F62F_9A1C_4AE2_A73B_BC945DE5185F__INCLUDED_)
#define AFX_KUITONGCREATESHEET_H__7CC8F62F_9A1C_4AE2_A73B_BC945DE5185F__INCLUDED_

/*---------------------------*/
#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/*------------------------------------------*/
#include "../elem/wndtext.h"
#include "../elem/wndedit.h"
#include "../elem/wndimage.h"
#include "../elem/wndbutton.h"
#include "../elem/wndlabeledbutton.h"

/*---------------------------------------------------------*/
class KUiTongStringName : KWndImage
{
public:
	KUiTongStringName();
	virtual ~KUiTongStringName();

	static        KUiTongStringName* OpenWindow(int nSelect,char *nString);  //�򿪴���
	static        KUiTongStringName* GetIfVisible();//�������������ʾ���򷵻�ʵ��ָ��
	static void   CloseWindow(bool bDestory = TRUE); //�رմ��ڣ�ͬʱ����ѡ���Ƿ�ɾ������ʵ��
	static void   LoadScheme(const char* pScheme);   //������淽��

public:

	static void   LinkToMainWindow(                 //������������������Ĺ���
		                      KWndWindow *pMain);
private:
	static        KUiTongStringName *ms_pSelf;


private:
	void          Initialize();               //��ʼ��
	                      /*------------------------------------------------*/
	                                          //���ں���
	virtual int   WndProc(unsigned int uMsg, unsigned int uParam, int nParam);

private:
	void          AlignmentButtonCheck(       //����аCheckBox�Ĺ�����
		                               NPCCAMP eSide);

	void          OnDone();                   //��Ӧȷ����ť������

private:

	KWndEdit32    m_EditTongName;  

	KWndText32	  m_StringBoxName;
	KWndEdit32    m_EditTongNumber;

    KWndLabeledButton
		          m_BtnDone, m_BtnCancel; 
	int           m_nSelectTong; 
	char          m_nStringTong[32];
	KWndWindow              *m_pMain;
	
};


#endif // !defined(AFX_KUITONGCREATESHEET_H__7CC8F62F_9A1C_4AE2_A73B_BC945DE5185F__INCLUDED_)
