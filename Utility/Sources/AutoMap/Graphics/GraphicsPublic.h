#pragma once

#define RELEASE(a)                                                             \
  if (a) {                                                                     \
    a->Release();                                                              \
    a = NULL;                                                                  \
  }
#define ASSERTHR(hr) ASSERT(!FAILED(hr));
#define ASSERT_HR(hr) ASSERT(!FAILED(hr));
#define assert_hr(hr, str) ASSERT(!FAILED(hr));

/////////////////////////////////////////////////////////////////////////////
// CGraphicsApp
// See Graphics.cpp for the implementation of this class
//
#include "iColor.h"

class cGround;
class cScreen;
class cTile;

// void Graphics_SetGraphics(iGraphics*);

// iTexture* Graphics_GetDefaultGround();
// iTexture* Graphics_GetDefaultWall();
extern char g_strError[];
#define DX_ERROR(hr)                                                           \
  if (FAILED(hr))                                                              \
  DXTRACE_ERR(g_strError, hr)
#define TrimAB(t, a, b)                                                        \
  if ((t) < a)                                                                 \
    t = a;                                                                     \
  else if ((t) >= b)                                                           \
    t = b - 1;
float FloatToInt(float a);

enum eRegionDirection { D_0, D_1, D_3, D_5, D_6, D_7, D_9, D_11, D_12 };

enum eNotifyType {
  NOTIFY_NULL,
  NOTIFY_POSITION_CHANGING, // λ�ý�Ҫ�ı���
  NOTIFY_POSITION_CHANGED,  // λ�øı���
  NOTIFY_MOVING_CHANGING,   // ����Ļ״̬��Ҫ�ı�
  NOTIFY_MOVING_CHANGED,    // ����Ļ״̬�ı���

  //	NOTIFY_LAYER,				//���������ı�
};

const int c_nMaxPlaneHeight = 6;

typedef std::list<cPoint> cPointList;
typedef cPointList::iterator itcPoint;
