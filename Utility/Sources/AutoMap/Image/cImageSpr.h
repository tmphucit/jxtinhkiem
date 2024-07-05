// cImageSpr.h: interface for the cImageSpr class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_CIMAGESPR_H__27F9E036_AA37_4437_9D7C_DC8B75F90317__INCLUDED_)
#define AFX_CIMAGESPR_H__27F9E036_AA37_4437_9D7C_DC8B75F90317__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "cImage.h"

class cImageSpr : public cImage {
  typedef struct {
    BYTE Comment[4];  // ע������(SPR\0)
    WORD Width;       // ͼƬ���
    WORD Height;      // ͼƬ�߶�
    WORD CenterX;     // ���ĵ�ˮƽλ��
    WORD CenterY;     // ���ĵĴ�ֱλ��
    WORD Frames;      // ��֡��
    WORD Colors;      // ��ɫ��
    WORD Directions;  // ������
    WORD Interval;    // ÿ֡���������Ϸ֡Ϊ��λ��
    WORD Reserved[6]; // �����ֶΣ����Ժ�ʹ�ã�
  } SPRHEAD;
  //---------------------------------------------------------------------------
  typedef struct {
    DWORD Offset; // ÿһ֡��ƫ��
    DWORD Length; // ÿһ֡�ĳ���
  } SPROFFS;
  //---------------------------------------------------------------------------
  typedef struct {
    WORD Width;     // ֡��С���
    WORD Height;    // ֡��С�߶�
    WORD OffsetX;   // ˮƽλ�ƣ������ԭͼ���Ͻǣ�
    WORD OffsetY;   // ��ֱλ�ƣ������ԭͼ���Ͻǣ�
    BYTE Sprite[1]; // RLEѹ��ͼ������
  } SPRFRAME;

  typedef struct {
    BYTE Blue;  // ��ɫ����
    BYTE Green; // ��ɫ����
    BYTE Red;   // ��ɫ����
    BYTE Alpha; // ͸������
  } KPAL32;     // 32λɫ��
  //---------------------------------------------------------------------------
  typedef struct {
    BYTE Red;   // ��ɫ����
    BYTE Green; // ��ɫ����
    BYTE Blue;  // ��ɫ����
  } KPAL24;     // 24λɫ��

  typedef WORD KPAL16; // 16λɫ��

public:
  cImageSpr();
  virtual ~cImageSpr();

  //////////////////////////////////////////////////////////////////////
  // load and save
  CString m_strName;
  HRESULT LoadFile(const char *filename);
  HRESULT LoadFileInfo(const char *filename);
  enum {
    MAX_IMAGE = 256,
  };
  //	stImageInfo m_aInfo[MAX_IMAGE];
  stImageInfo m_info;
  int m_nFrameInfo;
  stFrameInfo m_aFrameInfo[MAX_IMAGE];
  ULONG AddImage(iImage *p);
  HRESULT SaveFile(const char *filename, stImageInfo *pInfo);
  HRESULT SaveFile888(const char *filename, stImageInfo *pInfo);
  HRESULT SaveFile8888(const char *filename, stImageInfo *pInfo);

  // ��������

  //////////////////////////////////////////////////////////////////////
  // info of a image
protected:
  ULONG m_size;
  ULONG GetSize(); // get memory size;
  HRESULT GetOffset(ULONG nFrame, int &x, int &y);
  HRESULT SetOffset(int nFrame, int x, int y);
  void GetSize(ULONG nFrame, ULONG &width, ULONG &height);

public:
  void GetFrameInfo(stFrameInfo &info, ULONG nFrame);
  void GetImageInfo(stImageInfo &info);
  HRESULT GetAlphaBottom(int nFrame, int &x, int &y);
  HRESULT GetCenterToUpleft(int nFrame, int &x, int &y);
  HRESULT SetCenterToUpleft(int nFrame, int x, int y);

  //////////////////////////////////////////////////////////////////////
  // render
protected:
  HRESULT RenderToA4R4G4B4(stImageRender &render);
  HRESULT RenderToA4R4G4B4Alpha(stImageRender &render);
  HRESULT RenderToA4R4G4B4Alpha2(stImageRender &render);
  HRESULT RenderToR5G6B5(stImageRender &render);
  HRESULT RenderToR5G6B5Alpha(stImageRender &render);

public:
  CBitmap *ImageToBitmap(ULONG nFrame, int nDepth);
  HRESULT Render(stImageRender &render);

private:
  BYTE *m_Buffer;
  BYTE *m_Palette;
  KPAL24 *m_pPal24;
  KPAL16 *m_pPal16;
  SPROFFS *m_pOffset;
  PBYTE m_pSprite;
  int m_nWidth;
  int m_nHeight;
  int m_nCenterX;
  int m_nCenterY;
  ULONG m_nFrames;
  int m_nColors;
  ULONG m_nDirections;
  int m_nInterval;
  int m_nColorStyle;
  int m_nLum;

public:
  BOOL Load(LPCSTR FileName);
  BOOL LoadInfo(LPCSTR FileName);
  BOOL Save();
  //	BOOL		LoadFor3D(LPCSTR  FileName);
  void Free();
  void MakePalette();
  void Make4444Palette();
  void MakePaletteLum32();
  void SetColorStyle(int nStyle, int nLum);
  void SetStyle(int nStyle);
  UINT NextFrame(UINT nFrame);
  int GetWidth() { return m_nWidth; };
  int GetHeight() { return m_nHeight; };
  int GetCenterX() { return m_nCenterX; };
  int GetCenterY() { return m_nCenterY; };
  ULONG GetFrames() { return m_nFrames; };
  PVOID GetFrame(UINT nFrame);
  ULONG GetDirections() { return m_nDirections; };
  int GetInterval() { return m_nInterval; };
  int GetPixelAlpha(UINT nFrame, int x, int y);
  PVOID GetPalette() { return m_Palette; };
  PVOID Get24Palette() { return m_pPal24; };
  BOOL IsAlphaBad();

public:
  //	BOOL		SaveIt();
  //	HRESULT		RemoveShadow();
};

#endif // !defined(AFX_CIMAGESPR_H__27F9E036_AA37_4437_9D7C_DC8B75F90317__INCLUDED_)
