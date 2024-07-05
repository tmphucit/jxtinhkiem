#pragma once

#include "../Elem/WndButton.h"
#include "../Elem/WndEdit.h"
#include "../elem/WndObjContainer.h"
#include "../Elem/WndShowAnimate.h"
#include "../Elem/WndLabeledButton.h"

struct KUiObjAtRegion;
class KUiGetString3 : protected KWndImage
{
public:
	//----�������ͳһ�Ľӿں���----
	static KUiGetString3* OpenWindow(int nPoint, int nMaxPoint, const char* pszTitle, KWndWindow* pRequester, unsigned int uParam);
	static KUiGetString3*	GetIfVisible();
	static void			LoadScheme(const char* pScheme);	//������淽��
	static void			CloseWindow(bool bDestroy);		//�رմ���
private:
	KUiGetString3();
	~KUiGetString3() {}
	void	Initialize();								//��ʼ��
	void	Show();
	void	Hide();
	int		WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
	void	OnCancel();
	void	OnOk();
	void	OnCheckInput();
	void 	OnIncrease();
	void 	OnDecrease();	
private:
	static KUiGetString3*	m_pSelf;
	KWndEdit512				m_StringEdit;
	KWndLabeledButton		m_OkBtn;
	KWndLabeledButton		m_CancelBtn;
	KWndButton				m_Increase;
	KWndButton				m_Decrease;	
	unsigned int			m_uRequesterParam;
	KWndWindow*				m_pRequester;	
	KWndText32				m_Title;
	char					szTitle[16];
	int						m_nMaxPoint;	
};

