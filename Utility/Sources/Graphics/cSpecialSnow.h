// cSpecialSnow.h: interface for the cSpecialSnow class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_CSPECIALSNOW_H__F5FC91BE_A4C3_4672_8C45_905B4232AE88__INCLUDED_)
#define AFX_CSPECIALSNOW_H__F5FC91BE_A4C3_4672_8C45_905B4232AE88__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "cSpecial.h"


class cSpecialSnow : public cSpecial  
{
public:
	cSpecialSnow(cGraphics* p);
	virtual ~cSpecialSnow();

//load and save
	HRESULT				LoadBinary(CFile& f);
	HRESULT				SaveBinary(CFile& f);

protected:
	enum PathEnum{PATH_DEFAULT,PATH_LINE,PATH_WAVE,PATH_SWING,PATH_CIRCLE,};
	struct stParam
	{
//texture data
		ElementEnum			eElement;
		//ѩ��ͼƬ����һ�ţ����ǿ��ܰ�������ѩ��ͼƬ(��Сһ��)��ͨ���л���ͼ�������л�ͼƬ
		char				szImage[MAX_CHAR];	//ѩ��ͼƬ
		int					nImageFrames;		//��һ�����÷��£�����ʹ��framesȷ���ж�����ѩ��
		CPoint				ptImageSize;		//ѩ��ͼƬһ֡�Ĵ�С,��˿��������ǰ֡����ͼλ��
		int					nImagespeed;		//�л����ٶ�
//phicics data
//		cPoint				ptWindSpeed;		//����ٶ�
		float				fAcceleration;		//�������ٶ�
		float				fInitZ;				//�Ӷ������
		cPoint				ptInitSpeed;		//��ʼ�ٶ�

		PathEnum			ePath;				//�˶��켣

		float				fSize;				//һ���ѩ���ж��
		float				fScale;				//����������
		cColor				color;
		cRect				rcRange;			//ѩ���Ƕ��ĵ�ͼ(������������, z<0 ͬ��)

		int					nNumber;			//���ӵ��ܼ��̶�
		int					nFrameNumber;		//�ڿ�ʼ��ʱ�򣬶��ٵ�����������
	};
	stParam m_param;
	enum	ParamEnum{
		PARAM_NULL = -1,
		PARAM_ELEMENTTYPE,
		PARAM_IMAGE,PARAM_IMAGEFRAME,PARAM_IMAGESIZE,PARAM_IMAGESPEED,
		PARAM_ACCELERATION,PARAM_INITZ,PARAM_INITSPEED,
		PARAM_PATH,PARAM_SIZE,PARAM_SCALE,PARAM_COLOR,PARAM_RANGE,
		PARAM_NUMBER,PARAM_FRAMENUMBER,
		PARAM_NUM,
	};

	struct stSnow
	{
		cPoint ptSpeed;
		cPoint ptPos;
	};
	typedef std::vector<stSnow>	SnowVector;
	typedef SnowVector::iterator itSnow;
	SnowVector			m_aSnow;
//vitrual
	ElementEnum			GetElementType(){return GT_SPECIAL_SNOW;};
	int					GetItemCount(){return PARAM_NUM;};
	virtual HRESULT		GetValue(int index, CString& strValue) ;
	virtual HRESULT		SetParam(int index, LPCSTR szValue) ;

	UINT				m_nStart;//�ֵ���һ��ѩ��������
	void				InitParam();
//buffer and texture
	void				FindTexture();
	void				CreateBuffer();
	LPDIRECT3DVERTEXBUFFER8 m_pVB;
	iTexture*			m_pTextureSnow;
//run
	BOOL				Active();	
	BOOL				Run();
	void				RunSnow(stSnow& snow);			//������snow�˶�
//draw
	cRect				m_rcGround;//��ͼ�ϵķ�Χ
	BOOL				IsDraw(DrawEnum e); //�Ƿ����
	HRESULT				Draw(DrawEnum e);
//device
    HRESULT				InvalidateDeviceObjects();
    HRESULT				RestoreDeviceObjects();
    HRESULT				DeleteDeviceObjects();
    HRESULT				FinalCleanup();
//string
	const CString*		GetItemStringArray();
	const CString*		GetDescriptionStringArray() ;
};

#endif // !defined(AFX_CSPECIALSNOW_H__F5FC91BE_A4C3_4672_8C45_905B4232AE88__INCLUDED_)
