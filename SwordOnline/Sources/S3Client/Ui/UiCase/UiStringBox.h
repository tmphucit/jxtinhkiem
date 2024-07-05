// -------------------------------------------------------------------------
//	�ļ���		��	����ȷ�Ͽ�
//	������		��	Wooy(Wu yue)
//	����ʱ��	��	2003-5-28
// -------------------------------------------------------------------------
#ifndef __UiStringBox_H__
#define __UiStringBox_H__

#include "../elem/wndtext.h"
#include "../elem/wndedit.h"
#include "../elem/wndimage.h"
#include "../elem/wndbutton.h"
#include "../elem/wndlabeledbutton.h"
#include "../../../core/src/gamedatadef.h"



class KUiStringBox : protected KWndImage
{
public:
	//----�������ͳһ�Ľӿں���----
	static KUiStringBox*	OpenWindow(int nId,char* szTitle);	
	static KUiStringBox*	GetIfVisible();				//�������������ʾ���򷵻�ʵ��ָ��
	static void			CloseWindow(bool bDestroy);		//�رմ���
private:
	KUiStringBox();
	~KUiStringBox() {}
	void 	Initialize();								//��ʼ��
	void	Show();
	void	Hide();
	void	LoadScheme(const char* pScheme);			//������淽��
	int		WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
	void	OnCancel();
	void	OnOk();

private:
	static KUiStringBox*	m_pSelf;

	KWndText32	  m_StringBoxName;
	
	KWndEdit32    m_StringEdit;  
	KWndEdit32    m_NumberEdit;

    KWndLabeledButton  m_BtnDone, m_BtnCancel;

	int           m_nID;
	char          m_szTitle[32];

};


#endif // __UiTradeConfirm_H__