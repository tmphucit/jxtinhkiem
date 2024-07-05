// cPlaneVer.h: interface for the cPlaneVer class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_CPLANEVER_H__71A5B7BE_1470_42C0_A910_DEB69B43B27A__INCLUDED_)
#define AFX_CPLANEVER_H__71A5B7BE_1470_42C0_A910_DEB69B43B27A__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "cPlane.h"
#include "GraphicsPublic.h"

class cPlaneVer : public cPlane  
{
public:
	cPlaneVer(cGraphics* p);
	virtual ~cPlaneVer();
	virtual void		Init(bool bCreateBuffer);
///////////////////////////////////////////////////////////////////
//Load and save
///////////////////////////////////////////////////////////////////
//param
	HRESULT				setParam(stObjParam& pm);

	HRESULT				SetPlaneProperty(stTemplateOne* pItem);

//	LPCSTR				GetDefaultTemplate();
	HRESULT				Load(const stSection* p);
	HRESULT				Save(stSection* p);
///////////////	////////////////////////////////////////////////////
//param
///////////////////////////////////////////////////////////////////
	stPlaneVerParam*	GetPlaneVerParam(){return (stPlaneVerParam*) m_pParam;};
	virtual LightedEnum		GetLightedType(){return GetPlaneVerParam()->eLighted;};
	virtual LightingEnum	GetLightingType(){return GetPlaneVerParam()->eLighting;};
	float				GetLightedRadius(){return GetPlaneVerParam()->fLightedRadius;};
	float				GetAngleXY(){return GetPlaneVerParam()->fAngleXY;}
//Ϊ�˼��Ƹ�����һ�䣬��������!
//	SortEnum			GetSortType(){return GetPlaneVerParam()->eSort;}
	virtual SortEnum	GetSortType(){return SORT_VER;}
	float				GetSortOffY(){return GetPlaneVerParam()->fSortOffY;}
	virtual VersortEnum	GetVersortType(){return GetPlaneVerParam()->eVersort;}
	bool				IsSortPoint();//��������������
	bool				IsLightingPoint(); //�����������ܹ⣬����npc,ʹ�������Լһ��

	virtual void		GetLightingSeam(cPoint& p1, cPoint& p2);
	virtual void		GetLightingPoint(cPoint& p);
	virtual void		GetLightedSeam(cPoint& p1, cPoint& p2);
	virtual void		GetLightedPoint(cPoint& p);
	virtual void		GetSortPoint(cPoint& p);
	virtual void		GetSortSeam(cPoint& p1, cPoint& p2);

	virtual void		GetBottomSeam(cPoint& p1, cPoint& p2);
	float				GetArea();//������!
	ePlane2Plane		PositionPlane(cPlane* p);

	BOOL				GetSelectRect(cRect& rc);
	BOOL				ContainedDiamond(cRect rc);

//line function
	BOOL 				ComputeLineFunction(float& k, float& b);
	float				m_fK,m_fB;
	void 				GetLineFunction(float& k, float& b){k = m_fK; b = m_fB;};
	void				SetLineFunction(float k, float b){m_fK = k; m_fB = b;}
	virtual float		GetSortSeamLengthSquare();

//tree
	virtual bool		BeginBuildTree(){return true;};
	virtual bool		EndBuildTree(){return true;}

//lighting and mesh
//	virtual bool		Lighting(cLight* p,const cPoint& p1,const cPoint& p2,bool bLightit = true);	//�����p1,p2���зֵĵ㣬
//	//���ж��ܹ�
//	virtual bool		Lighted(cLight* p, cPoint& p1, cPoint& p2);	//������p1,p2�ǵ����seam

//p1,p2��plane��һ��
	BOOL				IsShow();
	void				GetSubQuadrangle(stVertexGround v[4],cPoint p1,cPoint p2);
	virtual HRESULT		DrawSub(cPoint p1,cPoint p2);
	void				GetSelectVG(stVertexGround v[4], int i);
	HRESULT				DrawSelect();
	HRESULT				DrawTrace();
	HRESULT				DrawNum(cPoint p1,cPoint p2);
//Obstacle
	virtual void		UpdateObstacle(cObstacle* p);	//��������ļ�����Ϣ�������赲

//vertex info
	virtual HRESULT		FillVertexInfo();
	HRESULT FillTextureUV();
	virtual HRESULT		FillVertexInfoNotCallGraphics();

	BOOL				FillVertexInfoVerAngle0(const stTexInfo& info,int iResource ); 						
	BOOL				FillVertexInfoVer(const stTexInfo& info,int iResource );
	BOOL				FillVertexInfoVerFull(const stTexInfo& info,int iResource );
	
//
};

#endif // !defined(AFX_CPLANEVER_H__71A5B7BE_1470_42C0_A910_DEB69B43B27A__INCLUDED_)
