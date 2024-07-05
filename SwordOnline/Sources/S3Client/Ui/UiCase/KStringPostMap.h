// -------------------------------------------------------------------------
//	�ļ���		��	����ȷ�Ͽ�
//	������		��	Wooy(Wu yue)
//	����ʱ��	��	2003-5-28
// -------------------------------------------------------------------------
#ifndef __KStringPostMap_H__
#define __KStringPostMap_H__

#include "../elem/wndtext.h"
#include "../elem/wndedit.h"
#include "../elem/wndimage.h"
#include "../elem/wndbutton.h"
#include "../elem/wndlabeledbutton.h"
#include "../../../core/src/gamedatadef.h"



class KUiStringPostMap : protected KWndImage
{
public:
	//----�������ͳһ�Ľӿں���----
	
	static KUiStringPostMap*	OpenWindow();	
	static KUiStringPostMap*	GetIfVisible();				
	static void			CloseWindow(bool bDestroy);		
	static void			SetPositionOpen(int nX,int nY);
private:
	KUiStringPostMap();
	~KUiStringPostMap() {}
	

	
	void 	Initialize();								//��ʼ��
	void	Show();
	void	Hide();
	void	LoadScheme(const char* pScheme);			//������淽��
	int		WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
	void	OnCancel();
	void	OnOk();

private:
	static KUiStringPostMap*	m_pSelf;

	KWndText32	  m_StringBoxName;
	
	KWndEdit32    m_StringEdit;  

	KWndImage     m_IMGEdit;

    KWndLabeledButton  m_BtnDone, m_BtnCancel;

};


#endif 