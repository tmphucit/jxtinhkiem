/*******************************************************************************
// FileName			:	KFontData.h
// FileAuthor		:	Wooy
// FileCreateDate	:	2002-9-4
// FileDescription	:	����ͼ��������ͷ�ļ�
// Revision Count	:
*******************************************************************************/
#pragma once

#define CHARASET_GBK

// �ַ����ַ���Ŀ����
#ifdef CHARASET_GBK
#define KFR_MAX_NUM_CHAR 23940 // For GBK (0xFE-0x80)*(0xFE-0x3F-1)=23940
#endif
/*#ifdef CHARASET_GB2132
        #define KFR_MAX_NUM_CHAR	94 * 94		// for GB2132 = 35 KB
#endif
#ifdef CHARASET_BIG5
        #define KFR_MAX_NUM_CHAR	94 * 190	// for BIG5 = 70 KB
#endif*/

// �ֿ��ļ��ļ�ͷ�ṹ
typedef struct _KFontHead {
  char Id[4];            // ��ʶ
  unsigned int Size;     // ��С
  unsigned int Count;    // ����
  unsigned short Width;  // ���
  unsigned short Height; // �߶�
} KFontHead;

// ����ͼ����Դ��
class KFontData {
public:
  // �����ֿ��ļ�
  bool Load(const char *pszFontFile);
  // �������������
  void Terminate();
  // �õ�����Ŀ�ȸ߶�
  void GetInfo(int &nWidth, int &nHeight) const;
  // ȡ�õ����ַ���������
  unsigned char *GetCharacterData(unsigned char cFirst,
                                  unsigned char cNext) const;

  KFontData();
  ~KFontData();

protected:
  unsigned char *m_pFontData;              // �ַ�������Ϣ����
  unsigned int m_dwDataSize;               // �ַ�������Ϣ���ݴ洢�Ĵ�С
  int m_nCharCount;                        // �����ַ�����
  int m_nFontW;                            // �ַ���
  int m_nFontH;                            // �ַ���
  unsigned int m_dwOffs[KFR_MAX_NUM_CHAR]; // ƫ�Ʊ�
};
