#include "ManualResetEvent.h"
#include "stdafx.h"

/*
 * namespace OnlineGameLib::Win32
 */

namespace OnlineGameLib {
namespace Win32 {

CManualResetEvent::CManualResetEvent(bool initialState /* = false */)
    : CEvent(0, true, initialState) {}

CManualResetEvent::CManualResetEvent(const char *pName,
                                     bool initialState /* = false */)
    : CEvent(0, true, initialState, pName) {}

} // namespace Win32
} // namespace OnlineGameLib