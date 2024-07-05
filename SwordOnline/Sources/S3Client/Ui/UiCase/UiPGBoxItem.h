/*****************************************************************************************
//	����--���ܴ���
//	Copyright : Kingsoft 2002
//	Author	:   Wooy(Wu yue)
//	CreateTime:	2002-8-28
------------------------------------------------------------------------------------------
*****************************************************************************************/
#pragma once

#include "../elem/wndpage.h"
#include "../Elem/WndImagePart.h"
#include "../elem/wndbutton.h"
#include "../elem/wndtext.h"
#include "../elem/WndObjContainer.h"
#include "../../../core/src/gamedatadef.h"



class KUiPGBoxItemPage1 : public KWndPage
{
public:
	void	Initialize();				
	void	LoadScheme(const char* pScheme);

	void	UpdateDataP(KUiObjAtRegion* Equips);
	void	UpdateEquip(KUiObjAtRegion* pEquip, int bAdd);

private:
	int		WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
	void	OnEquiptChanged(ITEM_PICKDROP_PLACE* pPickPos, ITEM_PICKDROP_PLACE* pDropPos);
private:

	KWndObjectBox	m_ItemBox[3];

	KWndText32	        m_Tex1;
	KWndText32	        m_Tex2;
	KWndText32	        m_Tex3;

	KWndText256	        m_MainTex;

	KWndButton	 	    m_bButton;


};

class KUiPGBoxItemPage2 : public KWndPage
{
public:
	void	Initialize();				
	void	LoadScheme(const char* pScheme);			
    void	UpdateDataP(KUiObjAtRegion* Equips);
	void	UpdateEquip(KUiObjAtRegion* pEquip, int bAdd);

private:
	int		WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
	void	OnEquiptChanged(ITEM_PICKDROP_PLACE* pPickPos, ITEM_PICKDROP_PLACE* pDropPos);
private:

	KWndObjectBox	m_ItemBox[11];

	KWndText32	        m_Tex1;
	KWndText32	        m_Tex2;
	KWndText32	        m_Tex3;
	KWndText32	        m_Tex4;

	KWndText256	        m_MainTex;

	KWndButton	 	    m_bButton;
};



class KUiPGBoxItemPage3 : public KWndPage
{
public:
	void	Initialize();				
	void	LoadScheme(const char* pScheme);			
    void	UpdateDataP(KUiObjAtRegion* Equips);
	void	UpdateEquip(KUiObjAtRegion* pEquip, int bAdd);

private:
	int		WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
	void	OnEquiptChanged(ITEM_PICKDROP_PLACE* pPickPos, ITEM_PICKDROP_PLACE* pDropPos);
private:

	KWndObjectBox	m_ItemBox[2];

	KWndText32	        m_Tex1;
	KWndText32	        m_Tex2;

	KWndText256	        m_MainTex;

	KWndButton	 	    m_bButton;

};



class KUiPGBoxItemPage4 : public KWndPage
{
public:
	void	Initialize();				
	void	LoadScheme(const char* pScheme);			
    void	UpdateDataP(KUiObjAtRegion* Equips);
	void	UpdateEquip(KUiObjAtRegion* pEquip, int bAdd);

private:
	int		WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
	void	OnEquiptChanged(ITEM_PICKDROP_PLACE* pPickPos, ITEM_PICKDROP_PLACE* pDropPos);
private:

	KWndObjectBox	m_ItemBox[11];

	KWndText32	        m_Tex1;
	KWndText32	        m_Tex2;
	KWndText32	        m_Tex3;
	KWndText32	        m_Tex4;

	KWndText256	        m_MainTex;

	KWndButton	 	    m_bButton;

};




class KUiPGBoxItemPage5 : public KWndPage
{
public:
	void	Initialize();				
	void	LoadScheme(const char* pScheme);			

private:
	int		WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
private:

};




class KUiPGBoxItem : public KWndPageSet
{
public:
	static KUiPGBoxItem* OpenWindow();							//�򿪴��ڣ�����Ψһ��һ�������ʵ��
	static KUiPGBoxItem* GetIfVisible();						//�������������ʾ���򷵻�ʵ��ָ��
	static void		 CloseWindow(bool bDestroy);			//�رմ��ڣ�ͬʱ����ѡ���Ƿ�ɾ������ʵ��
	static void		 LoadScheme(const char* pScheme);		//������淽��
	static void      UpdateData();
	static void	     UpdateEquip(KUiObjAtRegion* pEquip, int bAdd);
private:
	KUiPGBoxItem(){}
	~KUiPGBoxItem() {}
	void	Initialize();							//��ʼ��
	int		WndProc(unsigned int uMsg, unsigned int uParam, int nParam);//���ں���

private:
	static KUiPGBoxItem*		m_pSelf;
private:

	KWndButton		        m_bPage1;
	KUiPGBoxItemPage1		m_pPage1;

	KWndButton		        m_bPage2;
	KUiPGBoxItemPage2		m_pPage2;

	KWndButton		        m_bPage3;
	KUiPGBoxItemPage3		m_pPage3;

	KWndButton		        m_bPage4;
	KUiPGBoxItemPage4		m_pPage4;

	KWndButton		        m_bPage5;
	KUiPGBoxItemPage5		m_pPage5;

	KWndButton	 	        m_bClose;
};
