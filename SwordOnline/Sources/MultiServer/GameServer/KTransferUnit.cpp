// KTransferUnit.cpp: implementation of the KTransferUnit class.
//
//////////////////////////////////////////////////////////////////////
#include "KTransferUnit.h"
#include "stdafx.h" // 这是预编译头文件，请别在上面加#ifndef之类的东西

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

KTransferUnit::KTransferUnit(DWORD dwIp, DWORD dwRelayID) {
  m_dwIp = dwIp;
  m_dwRelayID = dwRelayID;
}

KTransferUnit::~KTransferUnit() {}
