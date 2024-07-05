#pragma once

#include "cGroundObj.h"

class cSelect : public cGroundObj {
public:
  cSelect(cGraphics *p);
  virtual ~cSelect();
  virtual void Init(bool bCreateBuffer);

  stSelectParam &GetSelectParam() { return *((stSelectParam *)m_pParam); };
  HRESULT setParam(stObjParam &pm);
  SelectEnum GetType() { return GetSelectParam().eSelect; }
  float GetSelectWidth() { return GetSelectParam().wSelect; }
  float GetSelectHeight() { return GetSelectParam().hSelect; }
  cPoint GetOffsetEnd() { return GetSelectParam().ptOffsetEnd; }
  // Draw
  BOOL IsShow() { return TRUE; }
  HRESULT Draw();
  bool CheckDisplay(const cRect *rc);

  virtual BOOL Contain(POINT pt) { return FALSE; }
  virtual BOOL Contain(cPoint pt) { return FALSE; }
  // ������һ����Ļ������
  BOOL ContainedScreen(RECT rc) { return FALSE; }
  // ������һ����ͼ������
  virtual BOOL ContainedGround(cRect rc) { return FALSE; }
  // ������һ��������
  virtual BOOL ContainedDiamond(cRect rc) { return FALSE; }
};
