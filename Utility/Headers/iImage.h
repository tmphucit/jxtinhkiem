#pragma once

#include "iColor.h"
#include "iPublic.h"

enum eImage { IMAGE_NULL, IMAGE_BMP, IMAGE_TGA, IMAGE_SPR, IMAGE_PSD };

struct stImageRender {
  UINT nFrame; // src frame
  CRect rcSrc; // src rect

  void *buffer;        // des buffer
  UINT nPitch;         // des buffer pitch
  CPoint ptDes;        // des point
  eImageFormat format; // des format

  eRenderOp eOp; // op
};

struct stImageInfo {
  ULONG nDirections;
  ULONG nFrames;
  eImageFormat format;
  int bytes_per_pixel;

  ULONG size;
  BYTE *buffer;
  ULONG width, height;
  int x, y;
  stImageInfo() {
    nDirections = 0;
    nFrames = 0;
    format = IMAGE_FORMAT_NULL;
    bytes_per_pixel = 0;
    size = 0;
    buffer = NULL;
    width = 0;
    height = 0;
    x = 0;
    y = 0;
  }
};

struct stFrameInfo {
  ULONG size;
  BYTE *buffer;
  ULONG width, height;
  int x, y;
  int xCenterToUpleft, yCenterToUpleft;
  stFrameInfo() {
    size = 0;
    buffer = NULL;
    width = 0;
    height = 0;
    x = 0;
    y = 0;
    xCenterToUpleft = 0;
    yCenterToUpleft = 0;
  }
};

struct stDivide {
  int eDoodadType;   // ver, verandhor
  int eGeometryType; // 45, any
  int nHeight;
  int nPoint;
  CPoint aPoint[MAX_POINT];
  int nWide, nHigh;
  int eObstacleType;
};

class iImage {
public:
  // Com
  virtual ULONG AddRef() = 0;
  virtual ULONG Release() = 0;
  // Load and Save
  virtual BOOL DivideTo(UINT wDivide, UINT hDivide) = 0;
  virtual BOOL DivideTo(LPCSTR szFile, stDivide &divide) = 0;
  virtual BOOL DivideTo(LPCSTR szFile, UINT wDivide, UINT hDivide) = 0;

  virtual HRESULT LoadFile(const char *filename) = 0;
  virtual HRESULT LoadFileInfo(const char *filename) = 0;
  virtual ULONG AddImage(iImage *p) = 0;
  virtual HRESULT SaveFile(const char *filename, stImageInfo *info = NULL) = 0;
  // info of a image
  virtual void GetImageInfo(stImageInfo &info) = 0;
  virtual void GetFrameInfo(stFrameInfo &info, ULONG nFrame = 0) = 0;
  // render to target
  virtual HRESULT Render(stImageRender &render) = 0;
  virtual CBitmap *ImageToBitmap(ULONG nFrame = 0, int nDepth = 16) = 0;
  virtual CBitmap *ImageAlphaToBitmap(int nFrame = 0, int nDepth = 16) = 0;
  // �ı�����
  //	virtual HRESULT		SetCenter(int nFrame,int x,int y) = 0;
  virtual HRESULT GetCenterToUpleft(int nFrame, int &x, int &y) = 0;
  virtual HRESULT SetCenterToUpleft(int nFrame, int x, int y) = 0;
  // �ӵ׿�ʼ�õ���һ��alpha������0�ĵ�
  virtual HRESULT GetAlphaBottom(int nFrame, int &x, int &y) = 0;
  // ����Ƿ�alphaֵ����
  virtual BOOL IsAlphaBad() = 0;
  // �õ�alpha��Ϊ��ĵ����ɫֵ
  virtual HRESULT AlphaFormat() = 0;
  // ��ͼƬ����Ϣ��������С
  virtual HRESULT MakeSmallestImage(BOOL bRemoveShadow) = 0;
  // ����4�����ɫֵ����֤ͼƬ�����з�
  virtual ULONG SetAlpha1() = 0;
  // ��һ�����ӵ�ͼƬ
  virtual HRESULT CreateGrid(LPCSTR szFile, int width, int height, int wTile,
                             int hTile) = 0;
  // �洢ͼ��
  virtual HRESULT CreateFile(const char *filename, const stImageInfo &info) = 0;

  virtual HRESULT RemoveShadow() = 0;
};

_declspec(dllexport) iImage *Image_CreateImage(LPCSTR s);
