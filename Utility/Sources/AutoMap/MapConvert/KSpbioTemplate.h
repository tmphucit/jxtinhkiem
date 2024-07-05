// ***************************************************************************************
// ������ͼ���ڽ�����ģ���������
// Copyright : Kingsoft 2002
// Author    : wooy(wu yue)
// CreateTime: 2002-11-18
// ---------------------------------------------------------------------------------------
// ***************************************************************************************

#ifndef KSPBIOTEMPLATE_H_HEADER_INCLUDED_C222B712
#define KSPBIOTEMPLATE_H_HEADER_INCLUDED_C222B712

struct KBuildinObj;

#define PI 3.14159265f
#define PI_PER_ANGLE_DEGREE 0.0174532925f
#define ONE_OF_COS_30 1.1547005383792515290182975610039

// ##ModelId=3DDC990003BA
// ##Documentation
// ## ������ͼ���ڽ������ģ��
class KSpbioTemplate {
public:
  // ##ModelId=3DDD1236014C
  KSpbioTemplate();

  // ##ModelId=3DDD1BD60159
  // ##Documentation
  // ## ���ļ���������
  bool Load(
      // ##Documentation
      // ## �ļ���
      const char *pszFile,
      // ##Documentation
      // ## ����ģ���ļ���ĵڼ���ģ��
      int nIndex);

  // ##ModelId=3DDD33C103B6
  // ##Documentation
  // ## ��֪��ģ��������ĸ���ģ��
  inline int GetIndex() const { return m_nIndex; }

  // ##ModelId=3DE1385502EA
  // ##Documentation
  // ## ����ģ�����ݵ�һ������ʵ��
  void Instance(
      // ##Documentation
      // ## ָ��ʵ���ṹ��ָ��
      KBuildinObj *pInstance, int &nCentreX, int &nCentreY);

private:
  // ##ModelId=3DDD1F4D00B4
  // ##Documentation
  // ## ��ini��һ�������ȡ����
  bool LoadFromIniSection(
      // ##Documentation
      // ## ini�ļ�
      class KIniFile *pIni,
      // ##Documentation
      // ## ������
      const char *pszSection, const char *pszPath);

private:
  // ##ModelId=3DDCA2E10149
  // ##Documentation
  // ## ���õ�ͼ���ļ�������
  char m_szImageFile[128];

  // ##ModelId=3DDCA42601F1
  // ##Documentation
  // ## ͼ�ε�����
  unsigned int m_uProps;

  // ##ModelId=3DDD11A9030C
  // ##Documentation
  // ## ���ĵ������
  short m_nCentreX;

  // ##ModelId=3DDD11C00265
  // ##Documentation
  // ## ���ĵ�������
  short m_nCentreY;

  short m_nImgWidth;
  short m_nImgHeight;

  // ##ModelId=3DDCA3E3037B
  // ##Documentation
  // ## �˶�������ͼ�ζ�����֡��Ŀ
  short m_nNumFrames;

  short m_bSetSortManner;

  // ##ModelId=3DDD335900B4
  // ##Documentation
  // ## ģ���ļ��������ģ������
  short m_nIndex;

  // ##ModelId=3DE2940D038B
  // ##Documentation
  // ## ������x��ļн�
  float m_fAngleXY;

  unsigned short m_nAniSpeed;
};

#endif /* KSPBIOTEMPLATE_H_HEADER_INCLUDED_C222B712 */
