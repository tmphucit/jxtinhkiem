// stdafx.h : include file for standard system include files,
//  or project specific include files that are used frequently, but
//      are changed infrequently
//

#if !defined(AFX_STDAFX_H__FEBDA588_DB4E_4514_B350_BFB623CECD0F__INCLUDED_)
#define AFX_STDAFX_H__FEBDA588_DB4E_4514_B350_BFB623CECD0F__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#define VC_EXTRALEAN // Exclude rarely-used stuff from Windows headers

#include <afxext.h> // MFC extensions
#include <afxwin.h> // MFC core and standard components

#ifndef _AFX_NO_OLE_SUPPORT
#include <afxdisp.h>  // MFC Automation classes
#include <afxodlgs.h> // MFC OLE dialog classes
#include <afxole.h>   // MFC OLE classes
#endif                // _AFX_NO_OLE_SUPPORT

#ifndef _AFX_NO_DB_SUPPORT
#include <afxdb.h> // MFC ODBC database classes
#endif             // _AFX_NO_DB_SUPPORT

#ifndef _AFX_NO_DAO_SUPPORT
#include <afxdao.h> // MFC DAO database classes
#endif              // _AFX_NO_DAO_SUPPORT

#include <afxdtctl.h> // MFC support for Internet Explorer 4 Common Controls
#ifndef _AFX_NO_AFXCMN_SUPPORT
#include <afxcmn.h> // MFC support for Windows Common Controls
#endif              // _AFX_NO_AFXCMN_SUPPORT

#pragma warning(disable : 4786)
#pragma warning(disable : 4503)

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before
// the previous line.

#endif // !defined(AFX_STDAFX_H__FEBDA588_DB4E_4514_B350_BFB623CECD0F__INCLUDED_)
