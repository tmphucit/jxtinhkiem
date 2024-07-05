#ifndef IPUBLIC_H
#define IPUBLIC_H

//***************************************************
// class
//***************************************************/
#pragma warning(disable : 4786)
#pragma warning(disable : 4503)

#include <algorithm>
#include <functional>
#include <list>
#include <map>
#include <string>
#include <vector>

typedef void stSection;
/*
typedef std::map<std::string,std::string> stSection;
typedef stSection::iterator itSection;
typedef stSection::const_iterator c_itSection;
*/

//***************************************************
// const
//***************************************************/

const int MAX_CHAR = 128;
const int MAX_NAME = 32;
const int MAX_POINT = 32;
#define MASK_ALL 0xffffffff

//***************************************************
// define
//***************************************************/
#define RELEASE(a)                                                             \
  if (a) {                                                                     \
    a->Release();                                                              \
    a = NULL;                                                                  \
  }
#define SAFE_DELETE(a)                                                         \
  if (a) {                                                                     \
    delete a;                                                                  \
    a = NULL;                                                                  \
  }
#define SUCCEED(Status) ((HRESULT)(Status) >= 0)
#define FAIL(Status) ((HRESULT)(Status) < 0)
#define cast_int(a) (*((int *)(&a)))

template <class Collection, class Function>
Function for_all(Collection &c, const Function &f) {
  return std::for_each(c.begin(), c.end(), f);
}

template <class Collection, class Function>
void for_allinmap(Collection &c, const Function &f) {
  for (Collection::iterator it = c.begin(); it != c.end(); ++it) {
    f((*it).second);
  }
}

#define ITOA(NUMBER) #NUMBER
#define __TEXT_LINE__(LINE) ITOA(LINE)
#ifdef _DEBUG
#define ATTENTION(MSG)                                                         \
  __FILE__ "("__TEXT_LINE__(__LINE__) ") : ��ATTENTION�� �� " #MSG
#else
#define ATTENTION(MSG)                                                         \
  __FILE__ "("__TEXT_LINE__(__LINE__) ") : ATTENTION!! error: " #MSG
#endif

template <class T> class wrap_ptr {
  T *p;

public:
  wrap_ptr(T *p_) : p(p_) {}
  ~wrap_ptr(void) {
    if (p)
      p->Release();
  }
  operator T *(void) { return p; }
  T &operator*(void) { return *p; }
  T *operator->(void) { return p; }
};

/************************************************************
//graphics
/************************************************************/
// mapedit
enum MapeditParamEnum {
  Mapedit_None = 0x00,
  Mapedit_Select = 0x01,
  Mapedit_Active = 0x02,
  Mapedit_Grid = 0x04,
  Mapedit_Trace = 0x08,
  Mapedit_Moving = 0x10, // �����moving!
};

enum BitOPEnum {
  Bit_Add,
  Bit_Remove,
  Bit_Set,
  Bit_Toggle,
  Bit_Clear,
};

// element
enum ElementEnum {
  GT_UNKNOW = -1,
  GT_GRAPHICS,
  GT_SCREEN,
  GT_GROUND,
  GT_CAMERA,

  GT_OBJ_OLD,
  GT_PLANEHOR_OLD,
  GT_PLANEVER_OLD,
  GT_OBSTACLE_OLD,
  GT_LIGHT_OLD,

  GT_OBJ = 1000,
  GT_PLANEHORNORMAL,
  GT_PLANEHORMESH,
  GT_PLANEVERNORMAL,
  GT_PLANEVERMESH,
  GT_PLANEVERDYNAMIC,

  GT_OBSTACLE = 10000,
  GT_LIGHT = 20000,
  GT_SELECT = 30000,
  GT_PICTURE = 40000,
  GT_MAP = 50000,
  GT_SMALLMAP = 60000,

  GT_SYSTEM = 1000000,
  GT_TEXTUREVIDEO,
  GT_TEXTUREONE,
  GT_TEXTUREMEMORY,
  GT_TEXTURESPR,
  GT_TEXTUREVIDEOOTHER,

  GT_FONT = 2000000,
  GT_MESH = 3000000,

  GT_SPECIAL = 4000000,
  GT_SPECIAL_SCROLL,
  GT_SPECIAL_SNOW,
  GT_SPECIAL_FIREFLY,
  GT_SPECIAL_SIGN,
};

enum ObstacleEnum {
  OBSTACLE_NULL,
  OBSTACLE_CANWALK = OBSTACLE_NULL,
  OBSTACLE_NORMAL,
  OBSTACLE_CANFLY,
  OBSTACLE_CANJUMP,
  OBSTACLE_CANFLYJUMP,
  //	OBSTACLE_BLOCK = 0x111,
  OBSTACLE_BLOCKFLY = 0x20,
  OBSTACLE_BLOCKWALK = 0x40,
  OBSTACLE_BLOCKJUMP = 0x80,
  OBSTACLE_NUM,
};

enum LightingEnum // �����ܹ�
{
  LIGHTING_NULL = -1,
  LIGHTING_NOLIGHTING, // ���ܹ�
  LIGHTING_SEAM,       // ���ݵױ����ܹ⣬����ǽ
  LIGHTING_POINT,      // ���������ܹ⣬����npc
};

enum LightedEnum // �������⣬HOR��������
{
  LIGHTED_NULL = -1,
  LIGHTED_NOLIGHTED, // ������
  LIGHTED_SEAM,      // ���ݵױ�������
  LIGHTED_POINT,     // �������ĵ���
};

enum VersortEnum {
  VERSORT_NULL = -1,
  VERSORT_POINT, // ������ָ������ӵ����壬���뵽�����߱ߵ�list�м�
  VERSORT_SEAM, // ָ�������ӵ����壬�ڹ̶�����������赲��������Щ�����������ཻ����������������ôƴͼ��
  VERSORT_TREE, // ������ָǽ����һ���͵�������������һ������úܳ������һ��໥�ཻ
};

enum SortEnum {
  SORT_NULL = -1,
  SORT_VERBELOWGROUND,
  SORT_HORGROUND,
  SORT_HORBELOWVER,
  SORT_VER,
  SORT_HORABOVEVER,
  SORT_HORSKY,
  SORT_AFTERALL, // ���Ǳ���ס��ʱ�򣬿���Ҫ����Alpha = 50��һ��
  SORT_NUM,
};

enum KindEnum {
  KIND_NULL = -1,
  KIND_NORMAL,
  KIND_DIAMOND, // ���ڵر�
  KIND_ROAD,    // ��·
  KIND_WALL,    // ǽ��
  KIND_TREE,
  KIND_HILL, // ɽ��ɽ��

  KIND_FOREST,
  KIND_HOUSE,
  KIND_FLAT,
  KIND_RIVER,
  KIND_MOUTAIN,

  KIND_GROUP_VER,
  KIND_GROUP_SHADOW,

  KIND_CLIENTONLYNPC,
  KIND_SOUND = KIND_CLIENTONLYNPC,
  KIND_FLYBIRD,

  KIND_NUM,
};

enum MeshEnum {
  MESH_HOR,
  MESH_VER,
};

enum PlaneEnum {
  PLANE_HORNORMAL,
  PLANE_HORMESH,
  PLANE_VERNORMAL,
  PLANE_VERMESH,
  PLANE_VERDYNAMIC,
};

enum DynamicEnum {
  DYNAMIC_STATIC,
  DYNAMIC_NPC,
  DYNAMIC_BOX,
  DYNAMIC_TRAP,
  DYNAMIC_CLIENTONLYNPC,
  DYNAMIC_CLIENTONLYBOX,
  DYNAMIC_CLIENTONLYTRAP,
  DYNAMIC_PLAYER,
  DYNAMIC_NOSAVE, // ���ش���
};

enum SelectEnum {
  SELECT_NULL,
  SELECT_SQUARE,
  SELECT_DIAMOND,
  SELECT_LINE,
  SELECT_PARALLELOGRAM,
};

// select
enum SelectTypeEnum {
  SelectType_Default,
  SelectType_Sort,
  SelectType_Kind,
  SelectType_Dynamic, // ��̬����̬��
};

enum SelectFilterParamEnum {
  SelectFilterParam_Default,
  SelectFilterParam_Min,
  SelectFilterParam_Max,
  SelectFilterParam_Near, // ǰ
  SelectFilterParam_Far,  // ��
  SelectFilterParam_Middle,
};

enum SelectFilterEnum {
  SelectFilter_All,
  SelectFilter_Default,
  SelectFilter_OneByY,       // ����yֵ
  SelectFilter_OneByArea,    // �������
  SelectFilter_OneByOffset,  // ����offset�ľ���
  SelectFilter_OneByZ,       // ����zֵ
  SelectFilter_OneByDisplay, // ������ʾ��˳��
  SelectFilter_First,        // ��һ������Ҫ���
};

enum SelectPointEnum {
  SelectPoint_Default,

  SelectPoint_OneByScreen,
  SelectPoint_OneByGround,
  SelectPoint_OneByTile,
  SelectPoint_OneByDiamond,

  SelectPoint_RectByScreen,
  SelectPoint_RectByGround,
  SelectPoint_RectByTile,
  SelectPoint_RectByDiamond,
};

/************************************************************
//dirtree
/************************************************************/
enum eOutputType {
  OUTPUT_NULL = -1,
  OUTPUT_OK,
  OUTPUT_SUCCEED,
  OUTPUT_FAILURE,
  OUTPUT_WARNNING,
  OUTPUT_ERROR,
  OUTPUT_HINT,
  OUTPUT_HELP,
  OUTPUT_CHAT,
  OUTPUT_NEXT,
  OUTPUT_NEW,
  OUTPUT_NUM,
};

/************************************************************
//item
/************************************************************/
enum eTablePlane {
  TP_PLANETYPE,
  TP_LIGHTING,
  TP_LIGHTED,
  TP_RADIUS,
  TP_SORT,
  TP_ANGLEXY,
  TP_ANGLEZ,
  TP_CENTERX,
  TP_CENTERY,
  TP_HEIGHT,
  TP_OBSTACLETYPE,
  TP_DYNAMICTYPE,
  TP_TEXTUREUSE,
  TP_KIND,
  TP_VERSORT,
  TP_ANISPEED,
  TP_ANILOOP,

  TP_SPRWIDTH,
  TP_SPRHEIGHT,
  TP_SPRCENTERX,
  TP_SPRCENTERY,
  TP_OBSTACLENUM,
  TP_NUM,
};
enum eTableDoodad {
  TD_DOODADTYPE,
  TD_GEOMETRY,
  TD_HEIGHT,
  TD_OBSTACLE,
  TD_NUM,
};

/////////////////////////////////////////////////////////////
// Render
/////////////////////////////////////////////////////////////
enum eImageFormat {
  IMAGE_FORMAT_NULL,
  IMAGE_8888,
  IMAGE_888,
  IMAGE_565,
  IMAGE_4444,
  IMAGE_256,
};

enum eRenderOp {
  Render_Copy,  // just copy, ����src������
  Render_Alpha, // alpha operator!
};

#endif