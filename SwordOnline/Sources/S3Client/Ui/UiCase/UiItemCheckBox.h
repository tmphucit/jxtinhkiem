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

class KUiItemCheckBox : protected KWndShowAnimate
{
public:
	static KUiItemCheckBox* OpenWindow();		//�򿪴��ڣ�����Ψһ��һ�������ʵ��
	static KUiItemCheckBox* GetIfVisible();		//�������������ʾ���򷵻�ʵ��ָ��
	static void			CloseWindow();		//�رմ���
	static void			LoadScheme(const char* pScheme);//������淽��
	void			UpdateItem(KUiObjAtRegion* pItem, int bAdd);//��Ʒ�仯����
private:
	KUiItemCheckBox() {}
	~KUiItemCheckBox() {}
	void	Initialize();							//��ʼ��
	int		WndProc(unsigned int uMsg, unsigned int uParam, int nParam);//���ں���
	void	UpdateData();
	void	OnItemPickDrop(ITEM_PICKDROP_PLACE* pPickPos, ITEM_PICKDROP_PLACE* pDropPos);
	void    OnLeftShiftClickItem(KUiDraggedObject* pItem);
	void	OnGetMoney(int nMoney);
private:
	static KUiItemCheckBox*		m_pSelf;
private:

	KWndButton			m_CloseBtn;
	KWndObjectMatrix	m_ItemBox;
};