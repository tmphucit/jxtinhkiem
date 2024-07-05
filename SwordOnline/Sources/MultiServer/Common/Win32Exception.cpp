#include "Win32Exception.h"
#include "Utils.h"
#include "stdafx.h"

/*
 * namespace OnlineGameLib::Win32
 */

namespace OnlineGameLib {
namespace Win32 {

CWin32Exception::CWin32Exception(const _tstring &where, DWORD error)
    : CException(where, GetLastErrorMessage(error)), m_error(error) {}

} // namespace Win32
} // namespace OnlineGameLib