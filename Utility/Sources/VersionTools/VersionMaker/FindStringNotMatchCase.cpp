// FindStringNotMatchCase.cpp: implementation of the FindStringNotMatchCase
// class.
//
//////////////////////////////////////////////////////////////////////

#include "FindStringNotMatchCase.h"
#include "VersionMaker.h"
#include "stdafx.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

FindStringNotMatchCase::FindStringNotMatchCase(const string &Target)
    : m_Target(Target) {}

FindStringNotMatchCase::~FindStringNotMatchCase() {}
