#pragma once

#include "iCommon.h"
#include "iPack1d.h"

///////////////////////////////////////////////////////////
// plane��ģ��,
///////////////////////////////////////////////////////////
struct stTemplateObstacle {
  char eObstacleType;
  char eObstacleNum;
  char eObstacleKind;
  cPoint aPoint[MAX_POINT];
};

struct stTemplateOne {
  float fRadiusLighted;
  //	float fRadiusObstacle;	//the same to fRaduisLighted
  float fAngleXY;
  //	float fAngleZ;			//always 90!
  float fHeight; // it is useful

  char ePlaneType;
  char eLighting;
  char eLighted;
  char eSort;
  char eVersort;
  char eObstacleType;
  char eDynamicType;
  char eKind;
  unsigned short nAnispeed; // ms per frame!
  char bAniLoop;

  //	float fSpeedPerLoop;
  //	float fSpeedPerSecond;

  short nCenterX;
  short nCenterY;

  short nSprWidth;
  short nSprHeight;
  short nSprCenterX;
  short nSprCenterY;

  unsigned char nObstacleNum;
};

///////////////////////////////////////////////////////////
// animation��ģ��,�������еĶ���
///////////////////////////////////////////////////////////
struct stAnimationEvent {
  int iCallbackFrame; // ��������֡of each direction�ص���
  long lCallbackID;   // if != 0 call back it
};

struct stAnimation {
  int nFrames;
  int nDirections;
  int nAniSpeed;       // ms per frame!
  BOOL bAniLoop;       // loop or not
  int nAnimationEvent; // ���ٸ�event
};

///////////////////////////////////////////////////////////
// obj��ģ��,����2����
///////////////////////////////////////////////////////////
struct stObjTemplate {};

///////////////////////////////////////////////////////////
// npc��ģ��,����2����
///////////////////////////////////////////////////////////
struct stNpcTemplate {};

///////////////////////////////////////////////////////////
// ��ͼ�༭���洢��obj����Ϣ,pack�Ժ��
///////////////////////////////////////////////////////////
struct stObjPack {
  char szKind[MAX_NAME];  // һ��ģ�������
  char szEvent[MAX_NAME]; // event + id ����ģ��
  long lID;
  cPoint ptOffset; // offset of the region!
};

_declspec(dllexport) int Template_GetTerrainIndex(LPCSTR szTxt);
