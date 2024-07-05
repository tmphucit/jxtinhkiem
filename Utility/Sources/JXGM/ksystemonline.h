// -------------------------------------------------------------------------
//	�ļ���		��	ksystemonline.h
//	������		��	����
//	����ʱ��	��	2003-6-2 19:07:05
//	��������	��
//
// -------------------------------------------------------------------------
#ifndef __KSYSTEMONLINE_H__
#define __KSYSTEMONLINE_H__

#include "Headers\jxgm_i.h"
#include <list>

using namespace std;

class KSystemConnect;

class KSystemOnline : public ISystemOnline {
public:
  static KSystemOnline *Instance();
  static void ReleaseInstance();

  virtual HRESULT STDMETHODCALLTYPE
  OpenSystemConnect(DWORD nIP, short nPort, ISystemConnect **ppConnect);

protected:
  static KSystemOnline *m_pInstance;
  KSystemOnline();
  virtual ~KSystemOnline();
  void Close();
  KSystemConnect *m_pSystemConnect;
};

#endif // __KSYSTEMONLINE_H__