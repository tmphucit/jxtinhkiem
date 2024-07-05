/*****************************************************************************************
//	����--���������
//	Copyright : Kingsoft 2003
//	Author	:   Wooy(Wu yue)
//	CreateTime:	2003-4-21
------------------------------------------------------------------------------------------
*****************************************************************************************/
#pragma once

#include "../elem/WndButton.h"
#include "../elem/WndText.h"
#include "../elem/WndObjContainer.h"
#include "../Elem/WndShowAnimate.h"

struct KUiObjAtRegion;

class KUiSlectBoxCheck : protected KWndShowAnimate
{
public:
	static KUiSlectBoxCheck* OpenWindow(int nId1,int nId2,int nId3);		//�򿪴��ڣ�����Ψһ��һ�������ʵ��
	static KUiSlectBoxCheck* GetIfVisible();		//�������������ʾ���򷵻�ʵ��ָ��
	static void			CloseWindow();		//�رմ���
	static void			LoadScheme(const char* pScheme);//������淽��
private:
	KUiSlectBoxCheck() {}
	~KUiSlectBoxCheck() {}
	void	Initialize();							//��ʼ��
	int		WndProc(unsigned int uMsg, unsigned int uParam, int nParam);//���ں���

private:
	static KUiSlectBoxCheck*		m_pSelf;
private:

	KWndButton			m_Button1Btn;
	KWndButton			m_Button2Btn;
	KWndButton			m_Button3Btn;
	char                m_szImage[6][128];
};