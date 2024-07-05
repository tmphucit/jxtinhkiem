// cLight.h: interface for the cLight class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_CLIGHT_H__76A4CE54_48AD_48B8_BC48_BBBD041493D6__INCLUDED_)
#define AFX_CLIGHT_H__76A4CE54_48AD_48B8_BC48_BBBD041493D6__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "iGraphics.h"

//����ֻ֧�ֵ��Դ

#include "cGroundObj.h"

class cLight : public cGroundObj
{
public:
	cLight(cGraphics* p);
	virtual ~cLight();
	virtual void			Init(bool bCreateBuffer);
//////////////////////////////
//common//
//////////////////////////////
//save and load
	HRESULT					Load(stSection* p);
	HRESULT					Save(stSection* p);
	HRESULT					LoadBinary(CFile& file);
	HRESULT					LoadPack(void** pParam);
//param	
	virtual ElementEnum		GetElementByType(){return GT_LIGHT;};
	float m_fRangeSquare;
	stLightParam*			GetLightParam(){return (stLightParam*) m_pParam;};
	HRESULT					setParam(stObjParam& pm) ;
	HRESULT					OnCommand(long eCommand, stObjParam& param);
	float					GetRange(){return GetLightParam()->fRange;}
	bool					IsMainLight(){return GetLightParam()->bMainlight;}
	float					GetRangeSquare(){return m_fRangeSquare;}
/**************************************************************************/
//the below are different between 2d and 3d
/**************************************************************************/
//utility
//in screen?
	bool					CheckDisplay(const cRect* pRc);
//paint loop
	BOOL					IsShow();
	HRESULT					Draw();
//for obstacle
	bool					Light(const stVertexGround& v, cColor& cr, BOOL bStrict);
	bool					Light(const cPoint& p, cColor& cr, BOOL bStrict);
	bool					CrossAbstacle(const cPoint& pt, BOOL bStrict);//�Ƿ��赲��ס��?
	bool					CanLight(const stVertexGround& v, BOOL bStrict);
	bool					CanLight(const cPoint& pt, BOOL bStrict);
	bool					InRange(const cPoint& pt);
	void					GetLightRect(cRect& r);
	//�����ϰ��жϵ�����
	void					Lighting(const stVertexGround& p, cColor& cr);
	void					Lighting(const cPoint& p, cColor& cr);

	bool					BeginLighting(cColor cr);
	bool					Lighting();
	bool					EndLighting();

	void					GetSortPoint(cPoint& pt);
//contain
	//������Ļ��һ����
	virtual BOOL			Contain(POINT pt);
	virtual BOOL			Contain(cPoint pt);
	//������һ����Ļ������
	BOOL					ContainedScreen(RECT rc);
	//������һ����ͼ������
	virtual BOOL			ContainedGround(cRect rc);
	//������һ��������
	virtual BOOL			ContainedDiamond(cRect rc);

//Callback
	int m_nFrame;
	bool m_bEnlarge;

	cPoint m_ptInitPos;
	bool m_bOut;

	float m_fInitRange;

	bool m_bEnable;
	int m_nDarkStartFrame;
	virtual void			EnableLight(bool b){m_bEnable = b;};
	bool					IsEnable(){return m_bEnable;}
	virtual void			SetOffset(const cPoint& pt){GetGroundObjParam()->ptOffset = pt; m_ptInitPos = pt;};
};

#endif // !defined(AFX_CLIGHT_H__76A4CE54_48AD_48B8_BC48_BBBD041493D6__INCLUDED_)
