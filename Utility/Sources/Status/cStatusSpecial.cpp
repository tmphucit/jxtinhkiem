// cStatusSpecial.cpp: implementation of the cStatusSpecial class.
//
//////////////////////////////////////////////////////////////////////

#include "cStatusSpecial.h"
#include "iGraphicsutility.h"
#include "stdafx.h"
#include "stringvalue.h"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

cStatusSpecial::cStatusSpecial() { m_pSpecialLeft = NULL; }

cStatusSpecial::~cStatusSpecial() { Clear(); }

void cStatusSpecial::Clear() {
  cStatus::Clear();
  if (m_pSpecialLeft) {
    m_pSpecialLeft->Select(FALSE);
    RELEASE(m_pSpecialLeft);
  }
}

/////////////////////////////////////////////////////////////////////
// create
/////////////////////////////////////////////////////////////////////
BOOL cStatusSpecial::Create() { return cStatus::Create(); }

BOOL cStatusSpecial::OnSetFocus() {
  GU_SetSelectSize(GetSelect(), 0.1f, 0.2f);
  GU_ChangeSelectColor(GetSelect(), cColor(0, 0, 255));

  m_bShowSpecial = SetShow(iGraphics::GS_SPECIAL);

  return TRUE;
}

BOOL cStatusSpecial::OnLostFocus() {
  if (m_bShowSpecial == FALSE)
    ClearShow(iGraphics::GS_SPECIAL);
  return TRUE;
}

/////////////////////////////////////////////////////////////////////
// Special
/////////////////////////////////////////////////////////////////////
void cStatusSpecial::CreateSpecial(CPoint point, iSpecial *&p) {
  if (!IsSelected())
    return;
  if (m_strSelectFile.Find("��") != -1) {
    ElementEnum e = GT_SPECIAL_SNOW;
    GetGraphics()->CreateGraphicsElement(e, &p);
    p->SetParam("image", "system\\spr\\rain.spr");
    p->SetParam("ѩ�ĳ�ʼ�ٶ�", "-0.2f,0.f,-0.02f");
    p->SetParam("ѩ�ļ��ٶ�", "-0.02f");
    p->SetParam("ѩ������Ŀ", "512");
    ASSERT(p);
  }
  if (m_strSelectFile.Find("ѩ��") != -1) {
    ElementEnum e = GT_SPECIAL_SNOW;
    GetGraphics()->CreateGraphicsElement(e, &p);

    ASSERT(p);
  }
  if (m_strSelectFile.Find("·��") != -1) {
    ElementEnum e = GT_SPECIAL_SIGN;
    GetGraphics()->CreateGraphicsElement(e, &p);
    ASSERT(p);
    CString strValue;
    cPoint ptFocus;
    GetCamera()->ScreenToGround(point, ptFocus);
    ValueToString(ptFocus, strValue);
    p->SetParam("sign����ʼ��", strValue);
    p->SetParam("sign���յ�", strValue);
  }
  if (m_strSelectFile.Find("ө���") != -1) {
    ElementEnum e = GT_SPECIAL_FIREFLY;
    GetGraphics()->CreateGraphicsElement(e, &p);
    ASSERT(p);
    CString strValue;
    cPoint ptFocus;
    GetCamera()->ScreenToGround(point, ptFocus);
    ValueToString(ptFocus, strValue);
    p->SetParam("λ��", strValue);
  }
  if (m_strSelectFile.Find("˫�ؾ���") != -1) {
    cPoint ptFocus = GetCameraFocus();
    ElementEnum e = GT_SPECIAL_SCROLL;
    GetGraphics()->CreateGraphicsElement(e, &p);
    ASSERT(p);
    cPoint ptGround;
    CPoint ptUpLeft = CPoint(0, 0);
    GetCamera()->ScreenToGround(ptUpLeft, ptGround);
    CString strValue;
    ValueToString(ptGround, strValue);
    p->SetParam("�������ʼ��", strValue);
    CPoint ptSize(4 * c_nWidthRegion, 2 * c_nHeightRegion);
    ValueToString(ptSize, strValue);
    p->SetParam("����ķ�Χ", strValue);
    p->SetParam("image0", "\\system\\spr\\background.jpg");
    //		p->SetParam("image1","\\system\\spr\\background.spr");
    cPoint speed(16.f, -8.f, 0.f);
    ValueToString(speed, strValue);
    p->SetParam("������ٶ�", strValue);
    BOOL b = TRUE;
    ValueToString(b, strValue);
    p->SetParam("�Ƿ�ѭ������", strValue);
    ValueToString(ptFocus, strValue);
    p->SetParam("camera����ʼ��", strValue);
  }
}

void cStatusSpecial::SelectSpecial(CPoint point, iSpecial *&p) {
  p = GetGround()->SelectiSpecial(point);
}

/////////////////////////////////////////////////////////////////////
// input
/////////////////////////////////////////////////////////////////////
#include "SpecialDlg.h"

BOOL cStatusSpecial::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) {
  cStatus::OnKeyDown(nChar, nRepCnt, nFlags);

  switch (nChar) {
  case VK_DELETE:
  case VK_ESCAPE:
    if (m_pSpecialLeft) {
      m_pSpecialLeft->Select(FALSE);
      GetGround()->RemoveiSpecial(m_pSpecialLeft);
      RELEASE(m_pSpecialLeft);
    }
    break;
  case 'P': {
    if (m_pSpecialLeft) {
      CSpecialDlg dlg;
      dlg.SetSpecial(m_pSpecialLeft);
      dlg.DoModal();
    }
  } break;
  }
  return TRUE;
}

BOOL cStatusSpecial::OnLButtonDown(UINT nFlags, CPoint point) {
  if (m_pSpecialLeft) {
    m_pSpecialLeft->Select(FALSE);
    RELEASE(m_pSpecialLeft);
    return TRUE;
  }
  if (IsSelected()) {
    CreateSpecial(point, m_pSpecialLeft);
    if (m_pSpecialLeft) {
      m_pSpecialLeft->Select(TRUE);
      GetGround()->AddiSpecial(m_pSpecialLeft);
    }
    ClearSelect();
    m_strSelectFile.Empty();
  } else {
    SelectSpecial(point, m_pSpecialLeft);
    if (m_pSpecialLeft) {
      m_pSpecialLeft->Select(TRUE);
    }
  }
  return TRUE;
}

BOOL cStatusSpecial::OnRButtonDown(UINT nFlags, CPoint point) {
  if (m_pSpecialLeft) {
    m_pSpecialLeft->Select(FALSE);
    RELEASE(m_pSpecialLeft);
    return TRUE;
  }
  if (!IsSelected()) {
    SelectSpecial(point, m_pSpecialLeft);
    if (m_pSpecialLeft) {
      m_pSpecialLeft->Select(TRUE);
    }
  }
  return TRUE;
}

/////////////////////////////////////////////////////////////////////
// select
/////////////////////////////////////////////////////////////////////
BOOL cStatusSpecial::MoveSelect(CPoint point) {
  if (IsSelected())
    MoveiSelect(SELECT_SQUARE, point);
  return TRUE;
}

BOOL cStatusSpecial::OnCameraMove(CPoint point) { return MoveSelect(point); }

BOOL cStatusSpecial::OnMouseMove(UINT nFlags, CPoint point) {
  cStatus::OnMouseMove(nFlags, point);
  MoveSelect(point);
  return TRUE;
}

/////////////////////////////////////////////////////////////////////
// on select
/////////////////////////////////////////////////////////////////////
BOOL cStatusSpecial::OnSelectedFile(LPCTSTR szFile, int nFrame) {
  CString aString[] = {
      "˫�ؾ���", "ѩ��", "��", "ө���", "·��", "",
  };
  CString s = szFile;
  int i = 0;
  do {
    if (aString[i].IsEmpty())
      break;
    if (s.Find(aString[i]) != -1) {
      SetSelectFile(szFile, nFrame);
      return TRUE;
    }
    i++;
  } while (1);

  return FALSE;
}
