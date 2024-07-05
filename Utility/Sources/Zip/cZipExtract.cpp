// cZipExtract.cpp: implementation of the cZipExtract class.
//
//////////////////////////////////////////////////////////////////////

#include "cZipExtract.h"
#include "stdafx.h"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

bool cZipExtract::load(LPCSTR szZipFile) {
  return m_unzipper.OpenZip(szZipFile) != FALSE;
}

bool cZipExtract::load_buffer(char *buffer) { return false; }

bool cZipExtract::extract(LPCSTR szFolder) {
  return m_unzipper.UnzipTo(szFolder) != FALSE;
}

DWORD cZipExtract::get_uncompressedsize() {
  return m_unzipper.GetUncompressedSize();
}
