// KTransferUnit.cpp: implementation of the KTransferUnit class.
//
//////////////////////////////////////////////////////////////////////
#include "KTransferUnit.h"
#include "stdafx.h" // ����Ԥ����ͷ�ļ�������������#ifndef֮��Ķ���

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

KTransferUnit::KTransferUnit(DWORD dwIp, DWORD dwRelayID) {
  m_dwIp = dwIp;
  m_dwRelayID = dwRelayID;
}

KTransferUnit::~KTransferUnit() {}
