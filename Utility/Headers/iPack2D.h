#pragma once
#include "iColor.h"
#include "iPublic.h"

// ����һ��2ά���ݴ��

class iZipRead;

class iPack2D {
public:
  virtual ULONG AddRef() = 0;
  virtual ULONG Release() = 0;
  // ��ͼ��������ʹ��
  virtual BOOL Open(LPCSTR szTemplate, iZipRead *p = NULL) = 0;
  virtual BOOL GetRect(CRect &rc) = 0;
  virtual void *Locate(int x, int y) = 0;
  // ��ת������ʹ��
  virtual void SetConvertRect(CRect rc) = 0;
  virtual BOOL Convert(int x, int y, void *buffer, ULONG len) = 0;
  virtual BOOL Save(LPCSTR szTemplate) = 0;
};

_declspec(dllexport) iPack2D *Common_CreatePack2D();
