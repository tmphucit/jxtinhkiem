// -------------------------------------------------------------------------
//	�ļ���		��	����ȷ�Ͽ�
//	������		��	Wooy(Wu yue)
//	����ʱ��	��	2003-5-28
// -------------------------------------------------------------------------
#ifndef __UiNewPWStoreBox_H__
#define __UiNewPWStoreBox_H__

#include "../elem/wndtext.h"
#include "../elem/wndedit.h"
#include "../elem/wndimage.h"
#include "../elem/wndbutton.h"
#include "../elem/wndlabeledbutton.h"
#include "../../../core/src/gamedatadef.h"



class KUiNewPWStoreBox : protected KWndImage
{
public:
	//----�������ͳһ�Ľӿں���----
	static KUiNewPWStoreBox*	OpenWindow();	
	static KUiNewPWStoreBox*	GetIfVisible();				//�������������ʾ���򷵻�ʵ��ָ��
	static void			CloseWindow(bool bDestroy);		//�رմ���
private:
	KUiNewPWStoreBox();
	~KUiNewPWStoreBox() {}
	void 	Initialize();								//��ʼ��
	void	Show();
	void	Hide();
	void	LoadScheme(const char* pScheme);			//������淽��
	int		WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
	void	OnCancel();
	void	OnOk();

private:
	static KUiNewPWStoreBox*	m_pSelf;

	KWndEdit32    m_NumberEdit;
	KWndEdit32    m_NumberEditTrue;

    KWndLabeledButton  m_BtnDone, m_BtnCancel;


};


#endif // __UiTradeConfirm_H__