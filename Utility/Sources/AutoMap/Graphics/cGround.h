// cGround.h: interface for the cGround class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_CGROUND_H__45B2974B_97A6_4AB2_87B2_9CED55E3B184__INCLUDED_)
#define AFX_CGROUND_H__45B2974B_97A6_4AB2_87B2_9CED55E3B184__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "GraphicsPublic.h"
#include "cBtree.h"
#include "iGraphics.h"

typedef std::list<iSpecial *> SpecialList;
typedef SpecialList::iterator itSpecial;

class cColorMap;
class cGroundObj;
typedef std::list<cGroundObj *> cGroundObjList;
typedef cGroundObjList::iterator itcGroundObj;

// Ground��Ψһ��,������������Ϸ��ͼ
// �����Ϸ��ͼ,��ǰ����ֻ��ʾһЩcRegion,
// cRegion��16*16�ĵ�ͼ��λ(512*512����Ļ��λ)
class cScreen;
class cMap;
class cLightMap;
class cMapSmall;

struct stLine;
typedef std::list<stLine *> LineList;
typedef LineList::iterator itLine;
typedef std::vector<stLine *> LineArray;
typedef LineArray::iterator itALine;

class iPack2D;

enum PackFileEnum {
  PACK_NPC,
  PACK_BOX,
  PACK_TRAP,
  PACK_CLIENTONLYNPC,
  PACK_CLIENTONLYBOX,
  PACK_CLIENTONLYTRAP,
  PACK_PLANEVER,
  PACK_PLANEVERBELOWGROUND,
  PACK_PLANEHOR,
  PACK_LIGHT,
  PACK_OBSTACLE,
  PACK_GROUND,
  PACK_REGION,
  PACK_NUM,
};

class iZipRead;
class cMapObstacle;

class cGround : public iGround {
public:
  cGround(cGraphics *p);
  virtual ~cGround();

  //////////////////////////////////////////////////////////////////////
  // game
  //////////////////////////////////////////////////////////////////////
  BOOL IsPlaying() { return m_param.bPlayering || m_pZip != NULL; }
  BOOL IsEditing() { return !IsPlaying(); }
  BOOL Game_Load(LPCSTR szMap, cPoint ptCameraTo);

  //////////////////////////////////////////////////////////////////////
  // com
  //////////////////////////////////////////////////////////////////////
  ULONG m_ulCount;
  virtual ULONG AddRef();
  virtual ULONG Release();

  //////////////////////////////////////////////////////////////////////
  // Graphics
  //////////////////////////////////////////////////////////////////////
  cScreen *GetcScreen();

  cMap *GetcMap();
  cMapSmall *GetcMapSmall();

  cCamera *GetcCamera();
  cSelect *m_pSelect;
  iObj *GetiSelect();
  cGraphics *m_pGraphics;
  cGraphics *GetGraphics() { return m_pGraphics; }
  cMapObstacle *m_pMapObstacle;
  cMapObstacle *GetMapObstacle() { return m_pMapObstacle; }

  //////////////////////////////////////////////////////////////////////
  // thread
  //////////////////////////////////////////////////////////////////////
  // begin and end
  HRESULT BeginThread();
  HRESULT EndThread();
  virtual HRESULT Begin();
  virtual HRESULT End();
  // loop
  virtual HRESULT Run();
  // thread
  cThread *m_pThread;
  static UINT Thread(LPVOID pParam);

  BOOL UpdateNearestRegionTexture();
  BOOL LoadNearestRegion();

  UINT ThreadRun();
  // BOOL UpdateRegionTerrain();
  cRegion *ThreadAddcRegion(int x, int y, LPCSTR szFolder);
  // ��Щregion�Ѿ�������
  CRITICAL_SECTION m_csUpdateRegionPosOrSize;
  BOOL GetNearestUnloadRegion(
      int &x, int &y,
      BOOL bFindNotUpdateTexture); // Ѱ�������һ��region�����������
  void SetLoadedRegion(cRegion *pRegion);
  //////////////////////////////////////////////////////////////////////
  // param
  //////////////////////////////////////////////////////////////////////
  iGround::stParam m_param;
  HRESULT GetParam(stParam &param);
  HRESULT SetParam(stParam &param, bool bRunNow = false);
  HRESULT setParam(const stParam &param);

  LPCSTR GetDynamic() { return m_param.szDynamic; }
  BOOL IsUpdateRegionTexture() { return m_param.bUpdateRegionTexture; }
  HRESULT UpdateRegionTexture();
  //////////////////////////////////////////////////////////////////////
  // trace
  //////////////////////////////////////////////////////////////////////
  void Trace();

  //////////////////////////////////////////////////////////////////////
  // new load and save
  //////////////////////////////////////////////////////////////////////
  // load
  long GetVerson() { return m_param.lVerson; }

  iZipRead *m_pZip;
  iZipRead *GetZip() { return m_pZip; }
  iPack2D *m_aPack[PACK_NUM];
  iPack2D *GetPack(PackFileEnum e) { return m_aPack[e]; }

  HRESULT LoadWor();
  HRESULT Load(LPCSTR strMapFile);

  HRESULT AskSave();
  HRESULT Save(LPCSTR strMapFile);
  HRESULT New(LPCSTR szFile);
  HRESULT Init(LPCSTR szGround);
  BOOL IsModify();
  HRESULT SaveStatic(CString &strFolder);
  // dynamic
  BOOL FindDynamicNick(LPCSTR szNick);
  HRESULT ClearDynamic();
  BOOL IsDisplayEvent(LPCSTR szEvent);
  LPCSTR GetEvent() { return m_param.szDynamic; }
  // utitily
  void GetGroundFolder(CString &str);
  //	void GetRegionFolder(CString& strFolder, LPCSTR path, int x,int y);
  //////////////////////////////////////////////////////////////////////
  // region function
  ///////////////////////////////////////////////////////////////////////
  // data
  int m_xRegion, m_yRegion; // ��ǰ���ϵ�Region
  bool IsRegionValid() { return m_xRegion >= 0 && m_yRegion >= 0; }
  int m_wRegion, m_hRegion;
  enum {
    MAX_REGION_WIDTH = 7,
    MAX_REGION_HEIGHT = 7,
  };
  cRegion *m_aRegion[MAX_REGION_WIDTH][MAX_REGION_HEIGHT];
  cRegion *GetLinkRegion(cRegion *p, eRegionDirection e);
  enum {
    MAX_REGION = 24,
  };
  cRegionList m_listRegion;
  int GetRegionNum();
  int GetRegionMemory();

  void RepaintTerrain();
  // ��������õ�region��ָ��
  cRegion *GetcRegionByCoordinate(int tx, int ty); // �õ����յ�m_aRegion[x][y]
  cRegion *GetcRegionByRegion(cPoint ptRegion);    // ptRegion��region������
  cRegion *GetcRegionByRegion(int tx, int ty);
  cRegion *GetcRegionByTile(cPoint ptTile);
  cRegion *GetcRegionByGround(cPoint ptGround);
  iRegion *GetiRegion(cPoint ptGround);
  cRegion *GetcRegionByScreen(CPoint ptScreen);
  BOOL IsRegionCoordinateValid(int x, int y);
  cRegion *GetcRegion(int tx, int ty); // tx,tyû��offset

  void RegionToCoordinate(int &tx, int &ty);
  void CoordinateToRegion(int &tx, int &ty);
  void RegionOffset(int &tx, int &ty); // �õ�offset���x,y
  void RegionUnoffset(int &tx, int &ty);

  // region terrain need paint
  bool IsCoordinateInPaint(int x, int y);
  // the plane of the region need paint
  bool IsCoordinateInPaint2(int x, int y);

  cRegion *GetFocusRegion(); // �õ�cameraָ���region

  // �õ�region�ķ�Χ
  cRect GetRectGround();       // �õ����ǵ�ǰ��ground������rect
  cRect GetRectGroundFormat(); // �õ����ǵ�ǰ��ground��������Ч��rect
  cRect GetRectTile();
  cRect GetRectTileFormat();
  void GetRegionSize(int &wRegion, int &hRegion);
  void ComputeRegionSize(int &wRegion,
                         int &hRegion); // ���㵱ǰ��camera������region�ĳ���
  void ComputeRegionPosBySize(int &x, int &y, int w, int h,
                              const cRect &r); // ����w,h��r�������������ʼ��!
  void RecomputeRegionPos(int &x, int &y);     // ���¼���m_xRegion��m_yRegion
  cPoint GetCenterTileByRegion(); // get center according to m_xRegion,m_yRegion
                                  // and m_wRegion,m_hRegion
  bool IsRegionCoverScreen();     // region�Ƿ񸲸�����Ļ
  // region clear
  HRESULT ClearRegion(cRegion *pRegion);
  HRESULT RemoveRegion(cRegion *pRegion);
  HRESULT ClearAllRegion();
  HRESULT ClearGround();
  HRESULT ClearRegionList(cRegionList &rlist);
  HRESULT ClearFarestRegion(); // ����camera��λ�þ�����Զ��һ��region������
  HRESULT ClearFarestRegion(cPoint ptFocusTile);
  HRESULT UpdateRegion();

  BOOL m_bRebuildRegion;
  HRESULT RebuildRegion();
  HRESULT OffsetRegion();
  // ����Region�е�һЩԪ��

  HRESULT BackFile(int xRegion, int yRegion, LPCSTR szFile);
  HRESULT RestoreFile(int xRegion, int yRegion, LPCSTR szFile);

  HRESULT UpdateVertex(int x, int y, stVertexGround v);

  HRESULT GetRegionTile(int x, int y, stTile &resTile); //
  HRESULT SetRegionTile(int x, int y, const stTile &resTile);
  HRESULT FillRegion(CRect rcFill, LPCSTR szSprFile);
  HRESULT FillRegion(int x, int y, LPCSTR szSprFile);
  HRESULT SetRegionDraw(float fx, float fy, BOOL bDraw);
  HRESULT SetRegionFormat(float x, float y, int nFormat);
  HRESULT SetRegionColor(float x, float y, cColor cr);
  HRESULT GetRegionColor(float x, float y, cColor &cr);
  int GetPlaneNum();
  int GetLightNum();

  //////////////////////////////////////////////////////////////////////
  // �ӵ�ͼ�ϻ�ȡԪ��
  //////////////////////////////////////////////////////////////////////
  // �õ��Զ�ƴ�ӵĵ�
  BOOL GetLinkOffsetTile(cPoint &ptOffset, cPoint ptPlane, float &fMinDis);
  BOOL GetLinkOffsetVer(cPoint &ptOffset, cPlaneVer *p, int eLink,
                        cPoint ptPlane, float &fMinDis);
  BOOL GetLinkOffset(cPoint &ptOffset, cPlane *pExcept, int eLink,
                     cPoint ptPlane, float &fMinDis);
  BOOL GetLinkOffset(cPoint &ptOldOffset, iObj *pPlane, int eLink);
  //////////////////////////////////////////////////////////////////////
  // �õ������Ϣ�ĵ�
  //////////////////////////////////////////////////////////////////////
  HRESULT GetiObj(int nID, iObjList &iList);
  HRESULT GetiLight(stSelect &st, iObjList &tlist);
  HRESULT GetiObstacle(stSelect &st, iObjList &tlist);
  HRESULT GetiPlane(stSelect &st, iObjList &tlist);
  HRESULT GetiPlaneByPoint(POINT ptScreen, iObjList &tlist);
  HRESULT GetiObstacleByPoint(POINT ptScreen, iObjList &tlist);
  HRESULT GetiLightByPoint(POINT ptScreen, iObjList &tlist);
  HRESULT GetiPlaneByRect(cRect rcGround, iObjList &tlist);
  HRESULT GetiObstacleByRect(cRect rcGround, iObjList &tlist);
  HRESULT GetiLightByRect(cRect rcGround, iObjList &tlist);
  HRESULT GetiPlaneByDiamond(cRect rcGround, iObjList &tlist);
  HRESULT GetiObstacleByDiamond(cRect rcGround, iObjList &tlist);
  HRESULT GetiLightByDiamond(cRect rcGround, iObjList &tlist);

  // �õ�obstacle������,
  // bytile:ʹ�ø��ӵ㻹���߶�,
  ObstacleTypeEnum GetObstacleType() { return m_param.eObstalceType; }
  ObstacleEnum CheckObstacle(cPoint pt, cPoint &vSpeed, bool bClockWise);
  // �ж��Ƿ��Ǳ��赲,
  BOOL BlockObstacle(cPoint pt, ObstacleEnum e);
  HRESULT GetTileType(cPoint ptGround, long &l);

  // ��Ӻ�ɾ��Ԫ��

  // ��ͼ�༭��ѡ�����ƶ���ͼ��,��Ҫ��Ϊ���ƶ������Ч��

  cBTree *m_pTree;
  // ��ͼ�༭������
  cPlaneHorList m_listMovingObj;   // ���и����򵥵����򼴿�
  cGroundObjList m_listDynamicObj; // ���и����򵥵����򼴿�

  cPlaneVerList m_listPlaneVer;
  cPlaneVerList m_listPlaneVerPoint;
  cPlaneVerList m_listPlaneVerSeam;
  LineArray m_aLine;
  //	BOOL			m_bBuildTree;
  HRESULT RebuildTree();

  cPlaneList m_listPlaneAboveVer; // ���ڵر��Ԫ��Ҳͳһ����
  cLightList m_listLight;

  BOOL AddVer(cPlaneVer *p);
  BOOL RemoveVer(cPlaneVer *p);
  BOOL AddPlaneAbove(cPlane *p);
  BOOL RemovePlaneAbove(cPlane *p);

  HRESULT AddiObj(iObj *p, bool bRunNow);
  HRESULT RemoveiObj(iObj *p, bool bRunNow);
  HRESULT AddcObj(iObj *p);
  HRESULT RemovecObj(iObj *p);
  HRESULT AddcPlane(cPlane *p);
  HRESULT RemovecPlane(cPlane *p);
  // if bToRegion = true ��ʾ���plane����������Ҫ����Region��ȥ
  // �������plane��region�����
  void AddPlane(cPlane *p, cRegion *pRegion, BOOL bToRegion);
  void RemovePlane(cPlane *p, cRegion *pRegion);

  HRESULT AddcObstacle(cObstacle *p);
  HRESULT RemovecObstacle(cObstacle *p);

  HRESULT AddClientOnlyNpc(cPlane *p);
  HRESULT RemoveClientOnlyNpc(cPlane *p);
  HRESULT AddVerBelowGround(cPlane *p);
  HRESULT RemoveVerBelowGround(cPlane *p);

  void AddLight(cLight *p);
  void RemoveLight(cLight *p);
  HRESULT AddcLight(cLight *p);
  HRESULT RemovecLight(cLight *p);
  // notify
  HRESULT ObjNotify(cGroundObj *p, eNotifyType eType, long lParam = 0);
  HRESULT CameraNotify(cCamera *p, eNotifyType eType, long lParam);

  //////////////////////////////////////////////////////////////////////
  // light
  //////////////////////////////////////////////////////////////////////
  void BeginLighting();
  void GetLightMap();
  void EndLighting();
  cColorMap *m_pColorMap;
  cColorMap *GetColorMap() { return m_pColorMap; }
  bool GetColor(const stVertexGround &v, DWORD &value);
  bool GetColor(cPoint ptGround, DWORD &value);
  bool GetLightParam(const stVertexGround &v, stLightParam &param);
  bool GetLightParam(cPoint ptGround, stLightParam &param);
  void RebuildColorMap();

  //////////////////////////////////////////////////////////////////////
  // paint loop
  //////////////////////////////////////////////////////////////////////
  virtual void Paint();
  void CheckDisplay();
  void Draw();
  void PaintOthers();
  // to get how much plane draw?
  int m_nPlaneDraw;
  int GetPlaneDrawNum() { return m_nPlaneDraw++; }

  /**************************************************************************/
  // the below are different between 2d and 3d
  /**************************************************************************/

  // vertex buffer
  // device
  virtual HRESULT InitDeviceObjects();
  virtual HRESULT RestoreDeviceObjects();
  virtual HRESULT InvalidateDeviceObjects();
  virtual HRESULT DeleteDeviceObjects();
  virtual HRESULT FinalCleanup();

  // Environment
  virtual HRESULT SetEnvironment() { return S_OK; };
  virtual HRESULT ClearEnvironment() { return S_OK; };
  //	DWORD GetBrightness(){return m_param.crColor.a;}
  cColor GetColor() { return m_param.crColor; }
  cPoint GetWindSpeed() { return m_param.ptWindSpeed; }

  // draw
  virtual HRESULT SetTexture(iTexture *pTex, int frame = 0) = 0;

  // ��ĺ���
  virtual void Draw3Vertex(stVertexGround &v1, stVertexGround &v2,
                           stVertexGround &v3) = 0;
  virtual void Draw4Vertex(stVertexGround &v1, stVertexGround &v2,
                           stVertexGround &v3, stVertexGround &v4) = 0;
  virtual void DrawQuadrangle(stVertexGround *pV) = 0;
  virtual void DrawTriangle(stVertexGround *pV) = 0;
  virtual void DrawQuadrangle(stVertexGround *pV, int time) = 0;
  BOOL IsCreateObstacle() { return IsEditing(); }

  // ���ߵĺ���
  virtual void DrawPolygon(stVertexGround *pV, int num, cColor cr) = 0;
  virtual void DrawRect(cRect r, cColor cr, float fZ = 0.f) = 0;
  virtual void DrawRect(stVertexGround *pV, cColor cr) = 0;
  virtual void DrawLine(cPoint pt1, cPoint pt2, cColor cr) = 0;
  virtual void DrawLine(stVertexGround *pV, int n) = 0;

  virtual void DrawPoint(cPoint pt, cColor cr) = 0;
  virtual void DrawPoint(std::list<cPoint> &ptlist, cColor cr) = 0;
  virtual void DrawPoint(cPoint *aPoint, int nPoint, cColor cr) = 0;
  virtual void DrawPointAsRect(std::list<cPoint> &ptlist, cColor cr) = 0;

public:
  // ����任
  float GetGroundHeight(cPoint ptGround);
  HRESULT ScreenToGround(CPoint ptScreen, cPoint &ptGround);
  HRESULT ScreenToGround(POINT ptScreen, cPoint &ptGround) {
    return ScreenToGround(CPoint(ptScreen.x, ptScreen.y), ptGround);
  };

  // special
  SpecialList m_listSpecial;
  HRESULT AddiSpecial(iSpecial *p);
  HRESULT RemoveiSpecial(iSpecial *p);
  void LoadSpecial(LPCSTR szFile);
  void SaveSpecial(LPCSTR szFile);
  void DrawSpecial();
  iSpecial *SelectiSpecial(POINT ptScreen); // һ��ֻ��ѡ��һ��
  friend class cGraphics;

  BOOL FindWalkPath(std::list<cPoint> &list, cPoint ptStart, cPoint ptEnd);
};

BOOL AddPlaneVerToLineArray(LineArray &m_aLine, cPlaneVer *p);
void SortLineArray(LineArray &aline);

#endif // !defined(AFX_CGROUND_H__45B2974B_97A6_4AB2_87B2_9CED55E3B184__INCLUDED_)
