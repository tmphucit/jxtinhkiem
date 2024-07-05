#pragma once

//����һ��2ά���ݴ��

class iZipRead;

class iPack1D
{
public:
	virtual ULONG AddRef() = 0;
	virtual ULONG Release() = 0;
//��ͼ��������ʹ��
	virtual BOOL Open(LPCSTR szTemplate,LPCSTR szIndex,iZipRead* p = NULL) = 0;
	virtual void* LocateToFrame(LPCSTR szFile,int frame) = 0;

	virtual void Refresh(LPCSTR szTemplate) = 0;

	virtual void* LocateTo(LPCSTR szFile) = 0;
//��ת������ʹ��
	virtual void SetConvertNum(int n) = 0;
	virtual BOOL Convert(LPCSTR szTxt) = 0;
	virtual BOOL Save(LPCSTR szTemplate) = 0;
};

enum Pack1DEnum{Pack1D_Plane,Pack1D_Animation,
				Pack1D_Obj,
				Pack1D_Npc,};

_declspec(dllexport) iPack1D* Common_CreatePack1D(Pack1DEnum e);
_declspec(dllexport) iPack1D* Common_GetPack1D(Pack1DEnum e);
