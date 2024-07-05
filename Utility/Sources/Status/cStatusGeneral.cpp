// cStatusGeneral.cpp: implementation of the cStatusGeneral class.
//
//////////////////////////////////////////////////////////////////////

#include "cStatusGeneral.h"
#include "fileop.h"
#include "iGraphics.h"
#include "status.h"
#include "stdafx.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

const CString c_aStrTrace[] = {
    "Trace_mouse.txt",  "Trace_ground.txt", "Trace_cache.txt",
    "Trace_camera.txt", "Trace_fps.txt",    "",
};

const CString c_aStrShow[] = {
    "��ʾ�˵�.txt",
    "��ʾˮƽ���(Ctrl+Shift+F6).txt",
    "��ʾ��ֱ���(Ctrl+F6).txt",
    "��ʾ��̬���.txt",
    "��ʾ�ƹ�(Ctrl+F5).txt",
    "��ʾ�ϰ�(Ctrl+F7).txt",
    "��ʾ�ر�(Ctrl+F3).txt",
    "��ʾˮƽ�ر����.txt",
    "��ʾˮƽ���ڴ�ֱ���.txt",
    "��ʾˮƽ���ڴ�ֱ���.txt",
    "��ʾС��ͼ��(Ctrl+F2).txt",
    "��ʾ����Ч��(Ctrl+F4).txt",
    "��ʾС��ͼ��(Ctrl+Shift+F2).txt",
    "",
};

cStatusGeneral::cStatusGeneral() {
  m_nShow = 0;
  for (int i = 0; i < MAX_SHOW; i++) {
    m_aShow[i] = TRUE;
    m_aTrace[i] = FALSE;
  }
  m_aShow[4] = FALSE;
  m_aShow[5] = FALSE;
  m_aShow[6] = FALSE;
  m_aShow[10] = FALSE;
  m_aShow[11] = FALSE;
  m_aShow[12] = FALSE;
}

cStatusGeneral::~cStatusGeneral() {}

BOOL cStatusGeneral::Create() {
  cStatus::Create();

  CString sFolder = "��Ϸ��Դ\\General\\setting";
  AppGetFullPath(sFolder);

  // load attribute and settings!
  CString sPathName;
  stSetting set;
  eMaskSetting e;

  int i = 0;
  while (!c_aStrShow[i].IsEmpty()) {
    if (AppFindFile(c_aStrShow[i], sFolder, sPathName)) {
      e = GetFileSetting(sPathName, set);
      ASSERT(e == MASK_BOOL);
      m_aShow[i] = set.b;
    }
    i++;
  }
  m_nShow = i;

  i = 0;
  while (!c_aStrTrace[i].IsEmpty()) {
    if (AppFindFile(c_aStrTrace[i], sFolder, sPathName)) {
      e = GetFileSetting(sPathName, set);
      ASSERT(e == MASK_BOOL);
      m_aTrace[i] = set.b;
    }
    i++;
  }
  m_nTrace = i;

  SetGraphicsShowParam();

  return TRUE;
}

void cStatusGeneral::SetGraphicsTraceParam() {
  long lTraceEnum = 0;
  int bit = 1;
  for (int i = 0; i < m_nTrace; i++) {
    if (m_aTrace[i] == TRUE)
      lTraceEnum |= bit;
    bit = bit << 1;
  }
  iGraphics::stParam param;
  param.mask = iGraphics::MASK_TRACE;
  param.lTraceEnum = lTraceEnum;
  param.eOPTrace = Bit_Set;
  GetGraphics()->SetParam(param);
}

void cStatusGeneral::SetGraphicsShowParam() {
  long lShowEnum = 0;
  int bit = 1;
  for (int i = 0; i < m_nShow; i++) {
    if (m_aShow[i] == TRUE)
      lShowEnum |= bit;
    bit = bit << 1;
  }
  iGraphics::stParam param;
  param.mask = iGraphics::MASK_SHOW;
  param.lShowEnum = lShowEnum;
  param.eOPShow = Bit_Set;
  GetGraphics()->SetParam(param);
}

void cStatusGeneral::OnSelectedSetting(LPCTSTR szFile) {
  CString sPath, sName;
  AppParsePathName(szFile, sPath, sName);
  for (int i = 0; i < m_nShow; i++) {
    if (c_aStrShow[i].IsEmpty())
      break;
    if (sName == c_aStrShow[i]) {
      m_aShow[i] = m_stSetting.b;
      SetGraphicsShowParam();
      return;
    }
  }
  for (i = 0; i < m_nTrace; i++) {
    if (c_aStrTrace[i].IsEmpty())
      break;
    if (sName == c_aStrTrace[i]) {
      m_aTrace[i] = m_stSetting.b;
      SetGraphicsTraceParam();
      return;
    }
  }
}
