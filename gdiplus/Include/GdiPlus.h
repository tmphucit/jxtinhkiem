/**************************************************************************\
*
* Copyright (c) 1998-2000, Microsoft Corp.  All Rights Reserved.
*
* Module Name:
*
*   Gdiplus.h
*
* Abstract:
*
*   GDI+ Native C++ public header file
*
\**************************************************************************/

#ifndef _GDIPLUS_H
#define _GDIPLUS_H

struct IDirectDrawSurface7;

typedef signed short INT16;
typedef unsigned short UINT16;

#ifndef DCR_REMOVE_INTERNAL

#ifndef DCR_USE_NEW_105760
#define DCR_USE_NEW_105760
#endif
#ifndef DCR_USE_NEW_127084
#define DCR_USE_NEW_127084
#endif
#ifndef DCR_USE_NEW_135429
#define DCR_USE_NEW_135429
#endif
#ifndef DCR_USE_NEW_140782
#define DCR_USE_NEW_140782
#endif
#ifndef DCR_USE_NEW_140855
#define DCR_USE_NEW_140855
#endif
#ifndef DCR_USE_NEW_140857
#define DCR_USE_NEW_140857
#endif
#ifndef DCR_USE_NEW_140861
#define DCR_USE_NEW_140861
#endif
#ifndef DCR_USE_NEW_145135
#define DCR_USE_NEW_145135
#endif
#ifndef DCR_USE_NEW_145138
#define DCR_USE_NEW_145138
#endif
#ifndef DCR_USE_NEW_145139
#define DCR_USE_NEW_145139
#endif
#ifndef DCR_USE_NEW_145804
#define DCR_USE_NEW_145804
#endif
#ifndef DCR_USE_NEW_146933
#define DCR_USE_NEW_146933
#endif
#ifndef DCR_USE_NEW_152154
#define DCR_USE_NEW_152154
#endif
#ifndef DCR_USE_NEW_175866
#define DCR_USE_NEW_175866
#endif

#ifndef DCR_USE_NEW_188922
#define DCR_USE_NEW_188922
#endif
#ifndef DCR_USE_NEW_137252
#define DCR_USE_NEW_137252
#endif
#ifndef DCR_USE_NEW_202903
#define DCR_USE_NEW_202903
#endif
#ifndef DCR_USE_NEW_197819
#define DCR_USE_NEW_197819
#endif
#ifndef DCR_USE_NEW_186091
#define DCR_USE_NEW_186091
#endif
#ifndef DCR_USE_NEW_125467
#define DCR_USE_NEW_125467
#endif
#ifndef DCR_USE_NEW_168772
#define DCR_USE_NEW_168772
#endif
#ifndef DCR_USE_NEW_186764
#define DCR_USE_NEW_186764
#endif
#ifndef DCR_USE_NEW_174340
#define DCR_USE_NEW_174340
#endif
#ifndef DCR_USE_NEW_186151
#define DCR_USE_NEW_186151
#endif

#ifndef DCR_USE_NEW_235072
#define DCR_USE_NEW_235072
#endif

#endif // DCR_REMOVE_INTERNAL

namespace Gdiplus {
namespace DllExports {
#include "GdiplusMem.h"
};

#include "GdiplusBase.h"

// The following headers are used internally as well
#include "GdiplusColor.h"
#include "GdiplusColorMatrix.h"
#include "GdiplusEnums.h"
#include "GdiplusImaging.h"
#include "GdiplusInit.h"
#include "GdiplusMetaHeader.h"
#include "GdiplusPixelFormats.h"
#include "GdiplusTypes.h"

// The rest of these are used only by the application

#include "GdiplusGpStubs.h"
#include "GdiplusHeaders.h"

namespace DllExports {
#include "GdiplusFlat.h"
};

#include "GdiplusBitmap.h"
#include "GdiplusBrush.h"
#include "GdiplusCachedBitmap.h"
#include "GdiplusFont.h"
#include "GdiplusFontCollection.h"
#include "GdiplusFontFamily.h"
#include "GdiplusGraphics.h"
#include "GdiplusImageAttributes.h"
#include "GdiplusImageCodec.h"
#include "GdiplusLineCaps.h"
#include "GdiplusMatrix.h"
#include "GdiplusMetafile.h"
#include "GdiplusPath.h"
#include "GdiplusPen.h"
#include "GdiplusRegion.h"
#include "GdiplusStringFormat.h"

}; // namespace Gdiplus

#endif // !_GDIPLUS_HPP
