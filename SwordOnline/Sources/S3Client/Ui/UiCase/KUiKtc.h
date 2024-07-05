// -------------------------------------------------------------------------
//	�ļ���		��	UiToolsControlBar.h
//	������		��	����
//	����ʱ��	��	2003-7-24 19:39:54
//	��������	��	
//
// -------------------------------------------------------------------------
#ifndef __UIKTC_H__
#define __UIKTC_H__

#pragma once
#include "../Elem/WndToolBar.h"
#include "../Elem/WndButton.h"

class KUiKtc : public KWndToolBar
{
public:
	//----�������ͳһ�Ľӿں���----
	static KUiKtc* OpenWindow();	//�򿪴��ڣ�����Ψһ��һ�������ʵ��
	static void				CloseWindow();		//�رմ���
	static void				LoadScheme(const char* pScheme);//������淽��
	static void				DefaultScheme(const char* pScheme);//���³�ʼ������
	static KUiKtc* GetSelf()	{return m_pSelf;}
private:
	~KUiKtc() {}
	void	Initialize();							//��ʼ��
	void	Breathe();
private:
	static KUiKtc*	m_pSelf;
};
#endif 