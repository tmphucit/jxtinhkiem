// -------------------------------------------------------------------------
//	�ļ���		��	UiToolsControlBar.h
//	������		��	����
//	����ʱ��	��	2003-7-24 19:39:54
//	��������	��	
//
// -------------------------------------------------------------------------
#ifndef __UITOOLSCONTROLBAR_H__
#define __UITOOLSCONTROLBAR_H__

#pragma once
#include "../Elem/WndToolBar.h"
#include "../Elem/WndButton.h"

class KUiToolsControlBar : public KWndToolBar
{
public:
	//----�������ͳһ�Ľӿں���----
	static KUiToolsControlBar* OpenWindow();	//�򿪴��ڣ�����Ψһ��һ�������ʵ��
	static void				CloseWindow();		//�رմ���
	static void				LoadScheme(const char* pScheme);//������淽��
	static void				DefaultScheme(const char* pScheme);//���³�ʼ������
	static KUiToolsControlBar* GetSelf()	{return m_pSelf;}
	void	PopUpPK();
	void	ProcessPopUpPK(int nAction);
private:
	~KUiToolsControlBar() {}
	void	Initialize();							//��ʼ��
	void	Breathe();
	int		WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
private:
	static KUiToolsControlBar*	m_pSelf;
	KWndButton	m_PK;
	
	enum CHOICE_PK
	{
		Exercises = 0,
		Fighting,
		Murder,
	};
};
#endif // __UITOOLSCONTROLBAR_H__