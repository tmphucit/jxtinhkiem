/*******************************************************************************
// FileName			:	KFont.h
// FileAuthor		:	Wooy
// FileCreateDate	:	2002-9-5
// FileDescription	:	������
// Revision Count	:	
*******************************************************************************/
#include "KFont.h"
#include "string.h"

/*!*****************************************************************************
// Purpose		:  ���캯��
*****************************************************************************/
KFont::KFont()
{
	m_nFontWidth	= 16;
	m_nFontHeight	= 16;
	m_nLastPosH		= 0;
	m_nLastPosV		= 0;
	m_pDevice		= 0;
	m_bLoaded		= false;
}

/*!*****************************************************************************
// Purpose		:  ��������
*****************************************************************************/
KFont::~KFont()
{
	Terminate();
}

/*!*****************************************************************************
// Function		: KFont::Init
// Purpose		: ��ʼ��
// Return		: bool �Ƿ�ɹ�
// Argumant		: void* pDrawDevice -> �ӿڵ�ʵ����ָ��
*****************************************************************************/
bool KFont::Init(void* pDrawDevice)
{
	Terminate();
	if ((m_pDevice = pDrawDevice) == 0)
		return false;
	RestoreDeviceObjects();
	return true;
}

/*!*****************************************************************************
// Function		: KFont::Init
// Purpose		: �ͷŽӿ�ʵ������
*****************************************************************************/
void KFont::Release()
{
	delete this;
}

/*!*****************************************************************************
// Function		: KFont::Terminate
// Purpose		: �������������
*****************************************************************************/
void KFont::Terminate()
{
	m_pDevice = 0;
	m_bLoaded = false;
	m_Resources.Terminate();
}

/*!*****************************************************************************
// Function		: KFont::Load
// Purpose		: �����ֿ�
// Return		: bool �Ƿ�ɹ�
// Argumant		: cosnt char *pszFontFile �ֿ��ļ���
*****************************************************************************/
bool KFont::Load(const char* pszFontFile)
{
	m_Resources.Terminate();
	m_bLoaded = false;
	if (m_pDevice)
	{
		//��ʼ�������ֿ���Դ
		if (m_Resources.Load(pszFontFile))
		{
			m_Resources.GetInfo(m_nFontWidth, m_nFontHeight);
			m_bLoaded = true;
			return true;
		}
	}
	return false;
}

/*!*****************************************************************************
// Function		: KFont::TextOut
// Purpose		: ��ʾ�ַ���
// Argumant		: cosnt char *pszText �ַ���
// Argumant		: int nCount  �ַ����ĳ���(BYTE)��Ĭ��ֵΪ-1����ʾ���ַ�������'\0'��β��
// Argumant		: int nX	  �ַ�����ʾ�������X���������ֵΪKF_FOLLOW��
//							  ����ַ����������ϴ��ַ��������λ��֮��
// Argumant		: int nY      �ַ�����ʾ�������Y, �������ֵΪKF_FOLLOW��
//							  ���ַ�����ǰһ������ַ�����ͬһ�е�λ�á�
// Argumant		: uint nColor �ַ�����ʾ��ɫ��Ĭ��Ϊ��ɫ����32bit����ARGB�ĸ�
//							  ʽ��ʾ��ɫ��ÿ������8bit��
// Argumant     : nLineWidth  �Զ����е��п����ƣ������ֵС��һ��ȫ���ַ����
//							  �����Զ����д���Ĭ��ֵΪ0���Ȳ����Զ����д���
*****************************************************************************/
void KFont::TextOut(const char* pszText, int nCount/*= KF_ZERO_END*/,
					int nX/*=KF_FOLLOW*/, int nY/*=KF_FOLLOW*/,
					unsigned int nColor/*=0xff000000*/, int nLineWidth/*=0*/)
{
	if (!pszText || !m_bLoaded)
		return;

	unsigned char*	lpByte = (unsigned char*) pszText;
	int				nL, h;
	int				nPos = 0;

	if (nCount == KF_ZERO_END)
		nCount = strlen(pszText);
	if (nX == KF_FOLLOW)
		nX = m_nLastPosH;
	if (nY == KF_FOLLOW)
		nY = m_nLastPosV;

	h = 0;

	if (nLineWidth < m_nFontWidth + m_nFontWidth)
		nLineWidth = 0; //�����Զ����д���

	while (nPos < nCount)
	{
		//*********�ַ����ж��봦��*********
		if (lpByte[nPos] > 0x80 && nPos + 1 < nCount)
		{
			DrawCharacter(nX + h, nY, lpByte[nPos], lpByte[nPos + 1]);
			nPos += 2;
			h += m_nFontWidth;
		}
		else	//�����ַ�
		{
			nL = lpByte[nPos++];
			if (nL > 0x20 && nL < 0x5F)
				DrawCharacter(nX + h, nY, 0xa3, (0x20 + nL));
			else if (nL >= 0x5F && nL < 0x7F)
				DrawCharacter(nX + h, nY, 0xa3, (0x21 + nL));
			
			if (nL != 0x0a)
				h += m_nFontWidth / 2;
			else
			{
				h = 0;
				nY += m_nFontHeight;
			}
		}
		if (nLineWidth && h > nLineWidth)
		{
			if (nPos < nCount && lpByte[nPos] == 0x0a)	//�����Զ�����λ�ú�ǡ�ý���һ�����з���
				nPos++;
			h = 0;
			nY += m_nFontHeight;
		}
	}
	m_nLastPosH = nX + h;
	m_nLastPosV = nY;
}

/*!*****************************************************************************
// Function		: KFont::TextOut
// Purpose		: ���Ƶ����ַ�
// Argumant		: unsigned char cFirst �ַ������ǰ���ֽ�
// Argumant		: unsigned char cNext  �ַ�����ĺ���ֽ�
*****************************************************************************/
void KFont::DrawCharacter(int x, int y, unsigned char cFirst, unsigned char cNext) const
{
	if (m_pDevice && m_bLoaded)
	{
		//ȡ���ַ����ֿ����������ָ��
		m_Resources.GetCharacterData(cFirst, cNext);
//		unsigned char* pCharacterData = 
//		if (pCharacterData)
		{
			//to be finished
		}
	}
}

/*!*****************************************************************************
// Function		: KFont::TextOut
// Purpose		: ��Device��lost state�ָ�Ϊoperational state��KFont��Device������ݵĻָ�������
*****************************************************************************/
bool KFont::RestoreDeviceObjects()
{
	return true;
}

/*!*****************************************************************************
// Function		: KFont::RestoreDeviceObjects
// Purpose		: ʹDevice״̬�л�����Ӱ��Ļ�ͼ�豸�������ʧЧ
*****************************************************************************/
void KFont::InvalidateDeviceObjects()
{
}