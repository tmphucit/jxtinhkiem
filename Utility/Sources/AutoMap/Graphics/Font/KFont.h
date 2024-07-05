/*****************************************************************************
                                        ����Direct3D������ʾϵͳ֮����ӿ�

Ӧ�ã�
        ����ϵͳ����ӿڣ�KFont��
        �ⲿ�ͻ�ֱ�����ô�ϵͳҪ����ͷ�ļ�KFont.h��

�ӿڹ��ܣ�
        ������ʾ�ַ�����

ʹ�ã�
        �ӿ�ʹ��ǰ�ĳ�ʼ����
                ʹ�ýӿ�ǰ���ȵ�����ӿڷ���Init����ʼ��ʱ�ṩDirect3D
Device�ӿڵ� ʵ����ָ�롣����ʱ���������Direct3D Device�ѳ�ʼ��֮��
                ��ʼ����ʹ�Ѿ������ֿ����ݶ�ʧ��

����������Ϲ�ϵ��
        *����M$ DirectX 8.0*

���ػ���
        �ı�KFR_MAX_NUM_CHARֵ�Ķ��壬����ӦĿ�������ַ������ַ���Ŀ��

    ���Ҫͬʱ���ڶ���ַ��������Կ��ǰ�KFR_MAX_NUM_CHAR�ĳ�KFontRes�����ݳ�Ա��
        �������ֿ��ļ�ʱ��̬ȷ����ͬʱ��̬����KFontRes::m_dwOffs�Ŀռ䣬������һЩ����Ķ���

        ���Ŀ���ַ���Ҫ������ַ���Ŀ���٣����Ե�СDESIRE_TEXTURE_SIDE_WIDTHֵ�Ķ��塣

        ��ϵͳ��Ҫ�����ṩ�˻�����ƣ������ַ���Ŀ�ܴ���ַ�����ֻ����ͼ��ά��һЩ
        �����ַ�����ͼ�����Ŀ�������ַ������ַ���Ŀ���٣�����Ҫ������ƣ���������
        ��ϵͳ�����ص�Ļ������Կ��Ǹ���KCharSet����KMRU���������

        ��ֻ֧�����ģ�˫�ֽڱ�������ֶ�֧�֡�
        ���ֽڱ��������Ҳ���Թ̶��Ѹ��ֽ����㣬��չ��˫�ֽ�ʹ�ô�ϵͳ��
        Ҳ���Ը����֧�ֵ��ֽڻ������ֽڱ�������֣��ı����ַ��������Լ��ַ�����
        ������Ŀ��صĽṹ���ݡ��ӿڲ����������Լ������ǵ���ز�����

        KFontD3D::TextOut�С��ַ����ж��봦���Լ�KFontRes�Ķ���ӿڷ���Update�����
        ������صģ�Ҫ���ݱ������ֵı�������Ӧ���޸ġ�

�ļ���
        ��ϵͳ��ǰ��������ͷ�ļ���
                KFontD3D.h, KFontRes.h, KMRU.h, KCharSet.h
        ��������ʵ�ִ����ļ���
                KFontD3D.cpp, KFontRes.cpp, KMRU.cpp, KCharSet.cpp

*******************************************************************************/

/*******************************************************************************
// FileName			:	KFont.h
// FileAuthor		:	Wooy
// FileCreateDate	:	2002-9-5
// FileDescription	:	������
// Revision Count	:
*******************************************************************************/
#pragma once
#include "KFontData.h"
#include "iFont.h"

class KFont : public iKFont {
public:
  //--------iKFont�ӿڷ���---------
  // ��ʼ��
  bool Init(void *pDrawDevice);
  // �����ֿ�
  bool Load(const char *pszFontFile);
  // �������������
  void Terminate();
  // ��ʾ�ַ���
  void TextOut(const char *pszText, int nCount = KF_ZERO_END,
               int nX = KF_FOLLOW, int nY = KF_FOLLOW,
               unsigned int nColor = 0xff000000, int nLineWidth = 0);
  // ʹDevice״̬�л�����Ӱ��Ļ�ͼ�豸�������ʧЧ
  void InvalidateDeviceObjects();
  // ��Device��lost state�ָ�Ϊoperational
  // state��KFont��Device������ݵĻָ�������
  bool RestoreDeviceObjects();
  // �ͷŽӿ�ʵ������
  void Release();

  KFont();

private:
  // �����ַ�
  void DrawCharacter(int x, int y, unsigned char cFirst,
                     unsigned char cNext) const;
  ~KFont();

private:
  bool m_bLoaded;        // �Ƿ��Ѿ������ֿ�
  KFontData m_Resources; // ������Դ
  int m_nFontWidth;      // ����Ŀ�
  int m_nFontHeight;     // ����ĸ�

  int m_nLastPosH; // �ϴ����ֻ��ƺ�ĺ�������ˮƽֵ
  int m_nLastPosV; // �ϴ����ֻ��ƺ�ĺ������괹ֱֵ

  void *m_pDevice; // �����豸ָ��
};
