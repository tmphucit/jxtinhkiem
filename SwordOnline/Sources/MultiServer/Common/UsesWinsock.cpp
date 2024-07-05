#include "UsesWinsock.h"
#include "Win32Exception.h"
#include "stdafx.h"

/*
 * namespace OnlineGameLib::Win32
 */

namespace OnlineGameLib {
namespace Win32 {

CUsesWinsock::CUsesWinsock() {
  WORD wVersionRequested = 0x202;

  if (0 != ::WSAStartup(wVersionRequested, &m_data)) {
    throw CWin32Exception(_T("CUsesWinsock::CUsesWinsock()"),
                          ::WSAGetLastError());
  }
}

CUsesWinsock::~CUsesWinsock() { ::WSACleanup(); }

} // namespace Win32
} // namespace OnlineGameLib