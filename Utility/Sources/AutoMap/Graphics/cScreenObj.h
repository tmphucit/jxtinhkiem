// cScreenObj.h: interface for the cScreenObj class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_CSCREENOBJ_H__1CCE2217_3B68_4EC3_B10A_51E62CB0FA7E__INCLUDED_)
#define AFX_CSCREENOBJ_H__1CCE2217_3B68_4EC3_B10A_51E62CB0FA7E__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "cObj.h"

//a groudobj is a obj in the Screen
class cScreenObj : public cObj  
{
public:
	cScreenObj(cGraphics* p);
	virtual ~cScreenObj();
	virtual void				Init(bool bCreateBuffer);

//graphics
	cScreen*					GetScreen();
//Screen
	BOOL						m_bInScreen;
	BOOL						IsInScreen(){return m_bInScreen;}
	BOOL						SetInScreen(BOOL b){m_bInScreen = b;return b;}
	BOOL						IsInGraphics() {return IsInScreen();};

//load and save
	HRESULT						Load(const stSection* p);
	HRESULT						Save(stSection* p);
//param
	stScreenObjParam*			GetScreenObjParam(){return (stScreenObjParam*) GetObjParam();};
	CPoint						GetOffset(){return GetScreenObjParam()->ptOffset;};
	void						SetOffset(const CPoint& pt){GetScreenObjParam()->ptOffset = pt;};
	virtual void				GetOffset(POINT ptScreen,cPoint& ptGround);

	HRESULT	virtual				setParam(stObjParam& pm) ;
	virtual void				Offset(POINT pt);
//display
	bool m_bDisplay;
	bool						IsDisplay(){return m_bDisplay;}
	virtual bool				CheckDisplay(const CRect* rc) {return TRUE;};
	
	//������Ļ��һ����
	virtual BOOL				Contain(POINT pt) {return FALSE;};
	virtual BOOL				Contain(cPoint pt) {return FALSE;};
	//������һ����Ļ������
	virtual BOOL				ContainedScreen(RECT rc) {return FALSE;};
	//������һ����ͼ������
	virtual BOOL				ContainedGround(cRect rc) {return FALSE;};
	//������һ��������
	virtual BOOL				ContainedDiamond(cRect rc) {return FALSE;};

};


#endif // !defined(AFX_CSCREENOBJ_H__1CCE2217_3B68_4EC3_B10A_51E62CB0FA7E__INCLUDED_)
