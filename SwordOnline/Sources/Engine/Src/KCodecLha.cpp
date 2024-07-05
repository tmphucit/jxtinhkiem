//---------------------------------------------------------------------------
// Sword3 Engine (c) 1999-2000 by Kingsoft
//
// File:	KCodecLha.cpp
// Date:	2000.08.08
// Code:	WangWei(Daphnis)
// Desc:	LHA Encode and Decode Algorithm
//---------------------------------------------------------------------------
#include "KCodecLha.h"
#include "KDebug.h"
#include "KWin32.h"
#include "lhalib.h"
//---------------------------------------------------------------------------
// ����:	Encode
// ����:	ѹ��
// ����:	pCodeInfo	��ѹ������ָ��
// ����:	TRUE		�ɹ�
//			FALSE		ʧ��
//---------------------------------------------------------------------------
BOOL KCodecLha::Encode(TCodeInfo *pCodeInfo) {
  lha_encode(pCodeInfo->lpData, pCodeInfo->dwDataLen, pCodeInfo->lpPack,
             &pCodeInfo->dwPackLen);
  return TRUE;
}
//---------------------------------------------------------------------------
// ����:	Decode
// ����:	��ѹ��
// ����:	pCodeInfo	ѹ������ָ��
// ����:	TRUE		�ɹ�
//			FALSE		ʧ��
//---------------------------------------------------------------------------
BOOL KCodecLha::Decode(TCodeInfo *pCodeInfo) {
  lha_decode(pCodeInfo->lpPack, pCodeInfo->dwPackLen, pCodeInfo->lpData,
             &pCodeInfo->dwDataLen);
  return TRUE;
}
//---------------------------------------------------------------------------
