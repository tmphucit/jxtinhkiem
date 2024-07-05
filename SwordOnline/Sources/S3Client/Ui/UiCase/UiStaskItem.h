// -------------------------------------------------------------------------
//	�ļ���		��	����ȷ�Ͽ�
//	������		��	Wooy(Wu yue)
//	����ʱ��	��	2003-5-28
// -------------------------------------------------------------------------
#ifndef __UiStaskItem_H__
#define __UiStaskItem_H__

#include "../Elem/WndButton.h"
#include "../Elem/WndText.h"
#include "../Elem/WndEdit.h"
#include "../../../core/src/gamedatadef.h"



class KUiStaskItem : protected KWndImage
{
public:
	//----�������ͳһ�Ľӿں���----
	static KUiStaskItem*	OpenWindow(KUiObjAtContRegion* pObj,
			KUiItemBuySelInfo* pPriceInfo);	//�򿪴��ڣ�����Ψһ��һ�������ʵ��
	static KUiStaskItem*	GetIfVisible();				//�������������ʾ���򷵻�ʵ��ָ��
	static void			CloseWindow(bool bDestroy);		//�رմ���
private:
	KUiStaskItem();
	~KUiStaskItem() {}
	int		Initialize();								//��ʼ��
	void	Show();
	void	Hide();
	void	LoadScheme(const char* pScheme);			//������淽��
	int		WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
	void	OnCancel();
	void	OnOk();
	void    UpdateNumber();
private:
	static KUiStaskItem*	m_pSelf;
	KWndText32			m_BoxName;
	KWndText32			m_ItemName;
	KWndImage			m_TextImg;
	KWndButton			m_OkBtn;
	KWndButton			m_CancelBtn;
	KUiObjAtContRegion	m_ItemInfo;
	KUiItemBuySelInfo	m_PriceInfo;
	KWndEdit32			m_BuyNumber;
	unsigned int		m_uNormalPriceColor;
	unsigned int		m_uNotEnoughMoneyPriceColor;
	unsigned int		m_nBuyNumber;
	KWndButton			m_NextNumber;
	KWndButton			m_PrevNumber;
};


#endif // __UiTradeConfirm_H__