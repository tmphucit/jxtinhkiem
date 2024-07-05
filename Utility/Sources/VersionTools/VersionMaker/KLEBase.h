//******************************************************************************
/*! \file       KLEBase.h
 *   \brief      每个要使用KLEBase的模块的应用都要包含这个头文件
 *
 *				定义了一些必须的宏，常量，包含了KLEBase模块中用到的所有的头文件
 *   \author		LaiLai
 *   \version	1.0
 *   \date		01-4-27 16:07:27
 *   \sa
 *   \todo
 *******************************************************************************/

#ifndef _KLEQUIDENGINE_BASE_
#define _KLEQUIDENGINE_BASE_

// 系统的头文件
#include <assert.h>
#include <io.h>
#include <iostream>
#include <math.h>
#include <memory.h>
#include <new.h>
#include <new>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <tchar.h>
#include <time.h>
#include <windows.h>

#ifdef KLEBASE_EXPORTS
#define KLEBASE_API __declspec(dllexport)
#else
#define KLEBASE_API __declspec(dllimport)
#endif

#define SAFE_DELETE(p)                                                         \
  {                                                                            \
    if (p) {                                                                   \
      delete (p);                                                              \
      (p) = NULL;                                                              \
    }                                                                          \
  }
#define SAFE_DELGRP(p)                                                         \
  {                                                                            \
    if (p) {                                                                   \
      delete[] p;                                                              \
      (p) = NULL;                                                              \
    }                                                                          \
  }
#define SAFE_RELEASE(p)                                                        \
  {                                                                            \
    if (p) {                                                                   \
      (p)->Release();                                                          \
      (p) = NULL;                                                              \
    }                                                                          \
  }

//! KLE中用到的Short Name的长度
#define KLESNAMELEN 32
//! KLE中用到的Middle Name的长度
#define KLEMNAMELEN 64
//! KLE中用到的Long Name的长度
#define KLELNAMELEN 256

extern KLEBASE_API HANDLE g_hKLEBaseModule;

#ifdef KLE_INCUDE_ALL_BASE_HEADER

// 内存管理器的头文件
#include "KLEDynamicArray.h"
#include "KLEFile.h"
#include "KLEFileEnumerate.h"
#include "KLEFilePathMgr.h"
#include "KLEHashTable.h"
#include "KLEList.h"
#include "KLELogMgr.h"
#include "KLEMemoryMgr.h"
#include "KLEStack.h"
#include "KLEStaticArray.h"
#include "KLEString.h"
#include "KLETimer.h"

#endif

#endif
