// -------------------------------------------------------------------------
//	�ļ���		��	jxgm2_i.h
//	������		��	����
//	����ʱ��	��	2003-9-17 16:27:41
//	��������	��	
//
// -------------------------------------------------------------------------
#ifndef __JXGM2_I_H__
#define __JXGM2_I_H__

#include "jxgm_i.h"

#define UNFILTER	0x0001		//��Ҫ��������ű�ָ��
#define GMLOGINOUT	0x0002		//Ҫ֪ͨ����GM�ͻ��˵�½�͵ǳ�
#define GMAUTORETURN	0x0004	//Ҫ�Զ��ظ��ͻ��˵Ľű�ִ��


struct ISystemConnect2 : public ISystemConnect
{
	virtual DWORD STDMETHODCALLTYPE GetIP() = 0;
	virtual DWORD STDMETHODCALLTYPE GetRelayID() = 0;
	virtual void STDMETHODCALLTYPE SetFlag(int nFlag) = 0;
};

struct ISystemOnline2: public ISystemOnline
{
	virtual HRESULT STDMETHODCALLTYPE OpenSystemConnect2(DWORD nIP, short nPort, ISystemConnect2** ppConnect) = 0;
};

STDAPI CreateSystemOnline2(ISystemOnline2** ppSystem);

#endif // __JXGM2_I_H__