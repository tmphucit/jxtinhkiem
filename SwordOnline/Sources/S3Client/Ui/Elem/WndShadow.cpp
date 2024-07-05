/*****************************************************************************************
//	���洰����ϵ�ṹ--�л���ʾ״̬ʱ���ƶ����Ƶ�ͼ�εĴ���
//	Copyright : Kingsoft 2002
//	Author	:   Wooy(Wu yue)
//	CreateTime:	2002-12-17
*****************************************************************************************/
#include "WndShadow.h"
#include "../../../Represent/iRepresent/KRepresentUnit.h"
#include "../../../Represent/iRepresent/iRepresentShell.h"
#include "KIniFile.h"
#include "KWin32.h"
extern iRepresentShell *g_pRepresentShell;

void KWndShadow::Clone(KWndShadow *pCopy) {
  if (pCopy) {
    KWndWindow::Clone(pCopy);
    pCopy->m_uColor = m_uColor;
  }
}

// ��ʼ��
int KWndShadow::Init(KIniFile *pIniFile, const char *pSection) {
  if (KWndWindow::Init(pIniFile, pSection)) {
    char Buff[16];
    pIniFile->GetString(pSection, "ShadowColor", "", Buff, sizeof(Buff));
    m_uColor = (GetColor(Buff) & 0xffffff);
    int nAlpha;
    pIniFile->GetInteger(pSection, "ShadowBoder", 0, &m_bBoder);

    pIniFile->GetString(pSection, "ShadowBoderColor", "", Buff, sizeof(Buff));
    m_uBoderColor = (GetColor(Buff) & 0xffffff);

    pIniFile->GetInteger(pSection, "ShadowColorAlpha", 128, &nAlpha);
    if (nAlpha > 255 || nAlpha < 0)
      m_uColor |= 0x16000000;
    else
      m_uColor |= (((255 - nAlpha) << 21) & 0xff000000);
    return true;
  }
  return false;
}

// �������
void KWndShadow::PaintWindow() {
  KWndWindow::PaintWindow();
  if (m_uColor && g_pRepresentShell) {
    KRUShadow Shadow;
    Shadow.oPosition.nX = m_nAbsoluteLeft;
    Shadow.oPosition.nY = m_nAbsoluteTop;
    Shadow.oEndPos.nX = m_nAbsoluteLeft + m_Width;
    Shadow.oEndPos.nY = m_nAbsoluteTop + m_Height;
    Shadow.Color.Color_dw = m_uColor;
    g_pRepresentShell->DrawPrimitives(1, &Shadow, RU_T_SHADOW, true);
  }

  if (g_pRepresentShell && m_uBoderColor && m_bBoder) {

    KRURect Rect;
    Rect.Color.Color_dw = m_uBoderColor;
    Rect.oPosition.nX = m_nAbsoluteLeft - 1;
    Rect.oPosition.nY = m_nAbsoluteTop - 1;
    Rect.oEndPos.nX = m_nAbsoluteLeft + m_Width + 1;
    Rect.oEndPos.nY = m_nAbsoluteTop + m_Height + 1;
    g_pRepresentShell->DrawPrimitives(1, &Rect, RU_T_RECT, true);
  }
}

// �ж�һ�����Ƿ��ڴ��ڷ�Χ��,������Ǿ�������
int KWndShadow::PtInWindow(int x, int y) { return 0; }

void KWndShadow::SetColor(unsigned int uColor) { m_uColor = uColor; }