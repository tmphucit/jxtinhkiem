//******************************************************************************
/*! \file       KLEBase.h
 *   \brief      ÿ��Ҫʹ��KLEBase��ģ���Ӧ�ö�Ҫ�������ͷ�ļ�
 *
 *				������һЩ����ĺ꣬������������KLEBaseģ�����õ������е�ͷ�ļ�
 *   \author		LaiLai
 *   \version	1.0
 *   \date		01-4-27 16:07:27
 *   \sa
 *   \todo
 *******************************************************************************/

#ifndef _KLEQUIDENGINE_BASE_
#define _KLEQUIDENGINE_BASE_

// ϵͳ��ͷ�ļ�
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

//! KLE���õ���Short Name�ĳ���
#define KLESNAMELEN 32
//! KLE���õ���Middle Name�ĳ���
#define KLEMNAMELEN 64
//! KLE���õ���Long Name�ĳ���
#define KLELNAMELEN 256

extern KLEBASE_API HANDLE g_hKLEBaseModule;

#ifdef KLE_INCUDE_ALL_BASE_HEADER

// �ڴ��������ͷ�ļ�
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
