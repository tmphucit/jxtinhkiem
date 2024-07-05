// ompStringNotMatchCase.cpp: implementation of the CompStringNotMatchCase
// class.
//
//////////////////////////////////////////////////////////////////////

#include "ompStringNotMatchCase.h"
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

CompStringNotMatchCase::CompStringNotMatchCase(const string &Target)
    : m_Target(Target) {}

CompStringNotMatchCase::~CompStringNotMatchCase() {}
