// cObstacle.h: interface for the cObstacle class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_COBSTACLE_H__33C052FA_ADF6_416E_8139_AE54392CF70F__INCLUDED_)
#define AFX_COBSTACLE_H__33C052FA_ADF6_416E_8139_AE54392CF70F__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "cGroundObj.h"
#include "iGraphics.h"

class cObstacle : public cGroundObj {
public:
  cObstacle(cGraphics *p);
  virtual ~cObstacle();
  virtual void Init(bool bCreateBuffer);
  void SetOffset(const cPoint &pt);
  BOOL IsInScreen(cPoint ptOffset);

  // save and load
  HRESULT Load(const stSection *p);
  HRESULT Save(stSection *p);

  // param
  virtual ElementEnum GetElementByType() { return GT_OBSTACLE; };
  stObstacleParam *GetObstacleParam() { return (stObstacleParam *)m_pParam; };
  HRESULT GetParam(stObjParam &pm);
  HRESULT setParam(stObjParam &param);
  int GetPointNum() { return GetObstacleParam()->nPoint; }
  ObstacleEnum GetType() { return GetObstacleParam()->eObstacle; }

  cPoint *GetPointArray() { return GetObstacleParam()->aPoint; }
  cPoint GetPoint(int i) { return GetObstacleParam()->aPoint[i]; }
  BOOL IsPoint() { return GetPointNum() == 1; }
  BOOL IsPolygon();
  BOOL IsSeam() { return GetPointNum() == 2; }
  // �õ�������ȷ��length,�ṩ��С��ͼʹ��
  float GetLength();

  //	void				OffsetToZero(cPoint pt);
  // virtual
  bool CheckDisplay(const cRect *rc);
  static cColor GetObstacleColor(ObstacleEnum e, BYTE brightness);
  HRESULT Draw();
  HRESULT DrawTile(int brightness);
  HRESULT Draw(cPoint ptOffset);
  void DrawLine(cPoint p1, cPoint p2, cColor cr);
  void DrawPoint(cPoint pt, cColor cr, float fRadius = 0.2f);
  BOOL IsShow();

  ElementEnum GetElementType() { return GT_OBSTACLE; };
  // contain
  // ������Ļ��һ����
  virtual BOOL Contain(POINT pt);
  virtual BOOL Contain(cPoint pt);
  // ������һ����Ļ������
  BOOL ContainedScreen(RECT rc);
  // ������һ����ͼ������
  virtual BOOL ContainedGround(cRect rc);
  // ������һ��������
  virtual BOOL ContainedDiamond(cRect rc);

  BOOL IsBlock(cPoint pt, cPoint &p1, cPoint &p2);
  BOOL BlockObstacle(cPoint pt, ObstacleEnum e);
  ObstacleEnum CheckObstacle(cPoint pt, cPoint &vSpeed, bool bClockWise);

  std::list<cPoint> m_listTile;
  HRESULT UpdateTileList();
  HRESULT RemoveTileList();
  HRESULT CreateTileList();
  BOOL SetInGround(BOOL b);
};

#endif // !defined(AFX_COBSTACLE_H__33C052FA_ADF6_416E_8139_AE54392CF70F__INCLUDED_)
