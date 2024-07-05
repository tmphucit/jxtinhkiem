//---------------------------------------------------------------------------
// Sword3 Engine (c) 1999-2000 by Kingsoft
//
// File:	KEngine.h
// Date:	2000.08.08
// Code:	WangWei(Daphnis)
// Desc:	Header File
//---------------------------------------------------------------------------
#ifndef KEngine_H
#define KEngine_H
//---------------------------------------------------------------------------
#include "KDebug.h"
#include "KWin32.h"
#ifndef _SERVER
#include "KDDraw.h"
#include "KDInput.h"
#include "KDSound.h"
#endif
#include "KFile.h"
#include "KFilePath.h"
#ifndef _SERVER
#include "KFileDialog.h"
#endif
#include "KMemBase.h"
#include "KRandom.h"
#include "KTimer.h"
// #include "KPakList.h"
#include "KIniFile.h"
#include "KPakFile.h"
#ifndef _SERVER
#include "KCanvas.h"
#include "KFont.h"
#include "KSprite.h"
#include "KWin32App.h"
#endif
#include "KList.h"
//---------------------------------------------------------------------------
ENGINE_API BOOL g_InitEngine();
ENGINE_API void g_ExitEngine();
//---------------------------------------------------------------------------
#endif
