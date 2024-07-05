// cSpecialFirefly.h: interface for the cSpecialFirefly class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_CSPECIALFIREFLY_H__16751551_A0C3_4ECA_85D2_F2923A6E4927__INCLUDED_)
#define AFX_CSPECIALFIREFLY_H__16751551_A0C3_4ECA_85D2_F2923A6E4927__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "cSpecial.h"

class cSpecialFirefly : public cSpecial  
{
public:
	cSpecialFirefly(cGraphics* p);
	virtual ~cSpecialFirefly();

//load and save
	struct stParam
	{
		ElementEnum			eElement;
		char				szImage[MAX_CHAR];	//ͼƬ

		int					nNumber;			//���ӵ��ܼ��̶�
		float				fMinZ,fMaxZ;			

		float				fSize;				//һ���ѩ���ж��
		float				fScale;				//����������
		cColor				color;
		cPoint				ptFocus;
		cRect				rcRange;			//���Ƕ��ĵ�ͼ(������������, z<0 ͬ��)
	};
	stParam m_param;
	enum	ParamEnum{
		PARAM_NULL = -1,
		PARAM_ELEMENTTYPE,
		PARAM_IMAGE,PARAM_NUMBER,PARAM_MINZ,PARAM_MAXZ,
		PARAM_SIZE,PARAM_SCALE,PARAM_COLOR,PARAM_FOCUS,PARAM_RANGE,
		PARAM_NUM,
	};

	enum eFlyStatus{STATUS_WAIT,STATUS_MOVE_SLIGHT,STATUS_MOVE};
	struct stFly
	{
		//���near focus point���ͻ����status_move��״̬
		cPoint	ptInitPos;
		eFlyStatus	nStatus;		//״̬
		cPoint	ptPos;
		float	fSpeed;
		float	fSpeedVerMul;
		float	fSpeedDiv;

		cPoint	ptSpeed;
		int		nFrame;
		int		nFlash;			//��˸��Ƶ��
		int		nAlpha;			//255
		BOOL	bAddAlpha;
	};
	typedef std::vector<stFly>	FlyVector;
	typedef FlyVector::iterator itFly;
	FlyVector			m_aFly;
	cPoint				m_ptFocus;

//load and save
	HRESULT				LoadBinary(CFile& f);
	HRESULT				SaveBinary(CFile& f);
//run
	BOOL				Active();	
	BOOL				Run();
	void				RunSnow(stFly& fly);			//������snow�˶�
//draw
	cPoint				GetDrawPoint();
	BOOL				IsDraw(DrawEnum e); //�Ƿ����
	HRESULT				Draw(DrawEnum e);

//param
	ElementEnum			GetElementType(){return GT_SPECIAL_FIREFLY;};
	int					GetItemCount(){return PARAM_NUM;};
	virtual HRESULT		GetValue(int index, CString& strValue) ;
	virtual HRESULT		SetParam(int index, LPCSTR szValue) ;
	virtual	void		InitParam();
	
//device
    HRESULT				InvalidateDeviceObjects();
    HRESULT				RestoreDeviceObjects();
    HRESULT				DeleteDeviceObjects();
    HRESULT				FinalCleanup();
//texture and buffer
	LPDIRECT3DVERTEXBUFFER8 m_pVB;
	iTexture*			m_pTextureSnow;
	void				FindTexture();
	void				CreateBuffer();
//string
	const CString*		GetItemStringArray();
	const CString*		GetDescriptionStringArray() ;
};

#endif // !defined(AFX_CSPECIALFIREFLY_H__16751551_A0C3_4ECA_85D2_F2923A6E4927__INCLUDED_)
