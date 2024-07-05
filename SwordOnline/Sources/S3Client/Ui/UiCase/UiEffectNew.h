// -------------------------------------------------------------------------
//	�ļ���		��	UiToolsControlBar.h
//	������		��	����
//	����ʱ��	��	2003-7-24 19:39:54
//	��������	��	
//
// -------------------------------------------------------------------------
#ifndef __UIEFFECTNEW_H__
#define __UIEFFECTNEW_H__

#pragma once
#include "../Elem/WndToolBar.h"
#include "../Elem/WndButton.h"

class KUiEffectNew1 : public KWndToolBar
{
public:
	//----�������ͳһ�Ľӿں���----
	static KUiEffectNew1* OpenWindow();	//�򿪴��ڣ�����Ψһ��һ�������ʵ��
	static void				CloseWindow();		//�رմ���
	static void				LoadScheme(const char* pScheme);//������淽��
	static void				DefaultScheme(const char* pScheme);//���³�ʼ������
	static KUiEffectNew1* GetSelf()	{return m_pSelf;}
private:
	~KUiEffectNew1() {}
	void	Initialize();							//��ʼ��
	void	Breathe();
private:
	static KUiEffectNew1*	m_pSelf;
};
#endif // __UITOOLSCONTROLBAR_H__