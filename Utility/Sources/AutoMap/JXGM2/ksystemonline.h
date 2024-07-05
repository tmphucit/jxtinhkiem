// -------------------------------------------------------------------------
//	�ļ���		��	ksystemonline.h
//	������		��	����
//	����ʱ��	��	2003-6-2 19:07:05
//	��������	��
//
// -------------------------------------------------------------------------
#ifndef __KSYSTEMONLINE_H__
#define __KSYSTEMONLINE_H__

#include "Headers\jxgm2_i.h"
#include <list>

using namespace std;

class KSystemConnect;

class KSystemOnline : public ISystemOnline2 {
public:
  static KSystemOnline *Instance();
  static void ReleaseInstance();

  virtual HRESULT STDMETHODCALLTYPE
  OpenSystemConnect(DWORD nIP, short nPort, ISystemConnect **ppConnect);
  virtual HRESULT STDMETHODCALLTYPE
  OpenSystemConnect2(DWORD nIP, short nPort, ISystemConnect2 **ppConnect);

protected:
  static KSystemOnline *m_pInstance;
  KSystemOnline();
  virtual ~KSystemOnline();
  void Close();
  KSystemConnect *m_pSystemConnect;
};

#endif // __KSYSTEMONLINE_H__