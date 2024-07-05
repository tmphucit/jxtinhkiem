/*******************************************************************************
// FileName			:	KFontData.h
// FileAuthor		:	Wooy
// FileCreateDate	:	2002-9-4
// FileDescription	:	����ͼ��������ͷ�ļ�
// Revision Count	:	
*******************************************************************************/
#include "KFontData.h"
#include "../../../../SwordOnline/Sources/Engine/Src/KWin32.h"
#include "../../../../SwordOnline/Sources/Engine/Src/KPakFile.h"

/*!*****************************************************************************
// Purpose		:  ���캯��
*****************************************************************************/
KFontData::KFontData()
{
	m_pFontData = NULL;
	m_dwDataSize = 0;
	m_nFontW = 0;
	m_nFontH = 0;
	memset(m_dwOffs, 0, sizeof(m_dwOffs));
}

/*!*****************************************************************************
// Purpose		:  ��������
*****************************************************************************/
KFontData::~KFontData()
{
	Terminate();
}

/*!*****************************************************************************
// Function		: KFontData::Init
// Purpose		: �����ֿ��ļ�
// Return		: �Ƿ�ɹ�
// Argumant		: const char* pszFontFile      -> �ֿ��ļ���
*****************************************************************************/
bool KFontData::Load(const char* pszFontFile)
{
	Terminate();
	if (pszFontFile == NULL)
		return false;

	KPakFile	File;
	KFontHead	Header;

	//���ֿ��ļ�
	if (!File.Open((char*)pszFontFile))
		return false;

	//���ֿ��ļ�ͷ�ṹ
	File.Read(&Header, sizeof(Header));

	//����ֿ��ļ�ID
		//����ֿ��ļ�ID
	if (memcmp(Header.Id, "ASF", 4))
		return false;

	//�õ�������Ϣ
	m_dwDataSize = Header.Size;
	m_nCharCount = Header.Count;
	m_nFontW = Header.Width;
	m_nFontH = Header.Height;

	//�����ַ�������Ϣ���ݵĴ洢�ռ�
	if ((m_pFontData = (unsigned char*)malloc(m_dwDataSize)) == NULL)
		return false;		

	//��ȡƫ�Ʊ�
	if (m_nCharCount <= KFR_MAX_NUM_CHAR)
	{
		File.Read(m_dwOffs, m_nCharCount * 4);
	}
	else
	{
		File.Read(m_dwOffs, KFR_MAX_NUM_CHAR * 4);
		m_nCharCount = KFR_MAX_NUM_CHAR;
		File.Seek((m_nCharCount - KFR_MAX_NUM_CHAR) * 4, FILE_CURRENT);
	}

	//��ȡ�ֿ��������
	File.Read(m_pFontData, m_dwDataSize);

	//�ر��ֿ��ļ�
	File.Close();

	return true;
}

/*!*****************************************************************************
// Function		: KFontData::GetInfo
// Purpose		: �õ�����Ŀ�ȸ߶ȣ���ͼ���Ի�����ַ��ĸ���
// Argumant		: int &nWidth	�ַ���
// Argumant		: int &nHeight	�ַ���
*****************************************************************************/
void KFontData::GetInfo(int &nWidth, int &nHeight) const
{
	nWidth  = m_nFontW;
	nHeight = m_nFontH;
}

/*!*****************************************************************************
// Function		: KFontData::Terminate
// Purpose		: �������������
*****************************************************************************/
void KFontData::Terminate()
{
	if (m_pFontData)
	{
		free(m_pFontData);
		m_pFontData = NULL;
	}
	m_nCharCount = 0;
	m_dwDataSize = 0;
}

/*!*****************************************************************************
// Function		: KFontData::GetCharacterData
// Purpose		: ȡ�õ����ַ���������
*****************************************************************************/
unsigned char*	KFontData::GetCharacterData(unsigned char cFirst, unsigned char cNext) const
{
	if (m_pFontData)
	{
		int		nCharIndex;	//�ַ����ֿ��������
		//GBK���뷽ʽ����������
		nCharIndex = (cFirst - 0x81) * 190 + (cNext - 0x40) - (cNext >> 7);
		if (nCharIndex >= 0 && nCharIndex < m_nCharCount && m_dwOffs[nCharIndex])
			return (m_pFontData + m_dwOffs[nCharIndex]);
	}
	return NULL;
}