//////////////////////////////////////////////////////////////////////////////////////
//	�ļ���			:	PassGen.h
//	������			:	������
//	����ʱ��		:	2003-6-11 11:59:42
//	�ļ�˵��		:	���ļ�ʵ��һ���򵥼��ܺͽ����㷨
//  ʹ�÷���		:	���ܺ���	SimplyEncryptPassword(...)
//						���ܺ���
// SimplyDecryptPassword(...)
// �����ַ�ֵ�ķ�Χ			0x20-0x7E 						֧����ַ��� 20
// ���ɵļ��ܴ�����			32
// �������ַ������������С	64
//
//	��������		:	���ɵļ��ܽ����Զ���� 32 ���ַ�
//						���������ַ�����ʲô���ܽ����Զ����Ӣ�ĺ������Լ��»���
//						���ܹ�����������ܹ���Ψһ��Ҳ���Ƕ���ͬһ���ַ���--
//						----���μ��ܵĽ����ȫ��ͬ�������ܵĽ������ԭ�����ַ���
//
//////////////////////////////////////////////////////////////////////////////////////

#ifndef __PASSGEN_H__
#define __PASSGEN_H__

#ifndef _WINBASE_
#include "winbase.h"
#endif

#include "string.h"

// public use
#define PG_MAXBUFFER 64
#define PG_MAXPASSWORDLEN 20
#define PG_RESULTLENSTD 32

// private use
#define PG_MINPKEYLEN (PG_RESULTLENSTD - PG_MAXPASSWORDLEN - 2)
#define PG_MAXPKEYLEN (PG_RESULTLENSTD - 2)
#define PG_PKEYMASK 151
#define PG_PKEYOFF 7
#define PG_ENOFF 5
#define PG_MINCHAR 0x20
#define PG_MAXCHAR 0x7E
#define PG_CHARCOUNT (PG_MAXCHAR - PG_MINCHAR + 1)

#define PG_VALIDCHAR(c)                                                        \
  ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c == '_') ||           \
   (c >= '0' && c <= '9'))
#define PG_INVALIDCHAR(c) !PG_VALIDCHAR(c)

inline int pgChar2Int(char b) {
  char i = 0;
  __asm {
		mov al, b
		xor al, PG_PKEYMASK
		rol al, PG_PKEYOFF
		mov i, al
		and i, 0x1f
  }
  return i;
}

inline char pgInt2Char(char i, DWORD dwTickCount = 0) {
  char b;
  ASSERT(i >= 0 && i <= PG_RESULTLENSTD - 2);
  for (int index = dwTickCount % PG_CHARCOUNT, nSize = index + PG_CHARCOUNT;
       index < nSize; index++) {
    b = index % PG_CHARCOUNT + PG_MINCHAR;
    if (pgChar2Int(b) == i && PG_VALIDCHAR(b))
      return b;
  }
  for (index = dwTickCount % PG_CHARCOUNT, nSize = index + PG_CHARCOUNT;
       index < nSize; index++) {
    b = index % PG_CHARCOUNT + PG_MINCHAR;
    if (pgChar2Int(b) == i)
      return b;
  }
  ASSERT(0);
  return (char)0xFF;
}

inline int pgStrLen(const char *sz) {
  int i = 0;
  while (sz[i])
    i++;
  return i;
}

inline void pgSwapChars(char *sz) {
  char c;
#define PG_SWAP(n1, n2)                                                        \
  c = sz[n1];                                                                  \
  sz[n1] = sz[n2];                                                             \
  sz[n2] = c

  PG_SWAP(0, 13);
  PG_SWAP(31, 25);
  PG_SWAP(12, 30);
  PG_SWAP(7, 19);
  PG_SWAP(3, 21);
  PG_SWAP(9, 20);
  PG_SWAP(15, 18);
}

inline int pgEncrypt(char *szKey, int nKeyLen, char *szBuffer,
                     const char *szPass, int nStrLen) {
  int i, c, cc;
  for (i = 0; i < nStrLen; i++) {
    cc = szKey[i % nKeyLen];
    c = szPass[i];
    c = (((c - PG_MINCHAR) + (cc - PG_MINCHAR)) % PG_CHARCOUNT) + PG_MINCHAR;
    if (PG_INVALIDCHAR(c)) {
      int nDead = 0;
      do {
        c++;
        if (c > PG_MAXCHAR)
          c = PG_MINCHAR;
        cc++;
        if (cc > PG_MAXCHAR)
          cc = PG_MINCHAR;
        szKey[i % nKeyLen] = cc;

        // ��ѭ��������ʧ��
        if (nDead++ > 255)
          return 0;
      } while (PG_INVALIDCHAR(cc) || PG_INVALIDCHAR(c));
    }
    szBuffer[i] = c;
  }
  return 1;
}

inline void pgDecrypt(char *szKey, int nKeyLen, char *szBuffer,
                      const char *szEnc, int nStrLen) {
  int i, c, cc;
  for (i = 0; i < nStrLen; i++) {
    cc = szKey[i % nKeyLen];
    c = szEnc[i];
    szBuffer[i] =
        ((PG_CHARCOUNT + (c - PG_MINCHAR) - (cc - PG_MINCHAR)) % PG_CHARCOUNT) +
        PG_MINCHAR;
  }
  szBuffer[i] = 0;
}

inline int pgSameString(const char *s1, const char *s2) {
  char c1, c2;
  for (int i = 0; (c1 = s1[i]) && (c2 = s2[i]); i++) {
    if (c1 != c2)
      return 0;
  }
  if (s1[i] || s2[i])
    return 0;
  return 1;
}

// ���ܣ��ɹ����� 1, ʧ�ܷ��� 0
inline int SimplyDecryptPassword(char *szPass, const char *szEncrypted) {
  int nLen = pgStrLen(szEncrypted), nPKLen = 0, i = 0;
  char szBuffer[PG_RESULTLENSTD + 1];
  if (nLen != PG_RESULTLENSTD)
    return 0;

  for (i = 0; i < PG_RESULTLENSTD; i++)
    szBuffer[i] = szEncrypted[i];
  szBuffer[PG_RESULTLENSTD] = 0;

  pgSwapChars(szBuffer);

  nPKLen = pgChar2Int(szBuffer[0]);
  if (nPKLen < PG_MINPKEYLEN || nPKLen > PG_MAXPKEYLEN)
    return 0;
  nLen = pgChar2Int(szBuffer[nPKLen + 1]);
  if (nLen < 0 || nLen > PG_MAXPASSWORDLEN)
    return 0;
  pgDecrypt(szBuffer + 1, nPKLen, szPass, szBuffer + nPKLen + 2, nLen);

  return 1;
}

// ���ܣ��ɹ����� 1, ʧ�ܷ��� 0
inline int pgEncryptPassword(char *szResult, const char *szPass,
                             DWORD dwTickCount, int &nLevel) {
  nLevel++;
  if (nLevel > 32)
    return 0;

  int nPrimeNumberList[PG_RESULTLENSTD] = {
      1153, 1789, 2797, 3023, 3491, 3617, 4519, 4547, 5261, 5939, 6449,
      7307, 8053, 9221, 9719, 9851, 313,  659,  1229, 1847, 2459, 3121,
      3793, 4483, 5179, 6121, 6833, 7333, 7829, 8353, 9323, 9829,
  };

  int nLen = pgStrLen(szPass), nPKeyLen = 0, i = 0;
  int nFlagEncryptOK = 0;
  if (nLen > PG_MAXPASSWORDLEN)
    return 0;
  for (i = 0; i < nLen; i++) {
    if (szPass[i] < PG_MINCHAR || szPass[i] > PG_MAXCHAR)
      return 0;
  }

  nPKeyLen = PG_RESULTLENSTD - nLen - 2;
  if (nPKeyLen > PG_MINPKEYLEN)
    nPKeyLen =
        (dwTickCount + 10237) % (nPKeyLen - PG_MINPKEYLEN) + PG_MINPKEYLEN;

  szResult[0] = pgInt2Char(nPKeyLen, dwTickCount);

  // public key
  for (i = 0; i < nPKeyLen; i++) {
    DWORD dwRandom = dwTickCount + nPrimeNumberList[i];
    char c = (char)((dwRandom % PG_CHARCOUNT) + PG_MINCHAR);
    if (PG_INVALIDCHAR(c))
      c = (char)((dwRandom & 1) ? 'a' + (dwRandom % 26)
                                : 'A' + (dwRandom % 26));
    szResult[i + 1] = c;
  }

  szResult[nPKeyLen + 1] = pgInt2Char(nLen, dwTickCount);

  nFlagEncryptOK =
      pgEncrypt(szResult + 1, nPKeyLen, szResult + nPKeyLen + 2, szPass, nLen);

  // fill
  for (i = 0; i < PG_RESULTLENSTD - 2 - nPKeyLen - nLen; i++) {
    DWORD dwRandom = (dwTickCount + nPrimeNumberList[PG_RESULTLENSTD - i - 1]);
    char c = (char)((dwRandom % PG_CHARCOUNT) + PG_MINCHAR);
    if (PG_INVALIDCHAR(c))
      c = (char)((dwRandom & 1) ? 'a' + (dwRandom % 26)
                                : 'A' + (dwRandom % 26));
    szResult[PG_RESULTLENSTD - i - 1] = c;
  }
  pgSwapChars(szResult);

  szResult[PG_RESULTLENSTD] = 0;

  char szPassCheck[PG_RESULTLENSTD + 1];
  int nFlagDecryptOK = 0;
  int nDead = 0;

  // recheck password
  if (nFlagEncryptOK)
    nFlagDecryptOK = SimplyDecryptPassword(szPassCheck, szResult);
  if (!nFlagEncryptOK || !nFlagDecryptOK || !pgSameString(szPassCheck, szPass))
    return pgEncryptPassword(szResult, szPass, dwTickCount + 9929, nLevel);

  return 1;
}

inline int SimplyEncryptPassword(char *szResult, const char *szPass) {
  DWORD dwTickCount = ::GetTickCount();
  int nLevel = 0;
  return pgEncryptPassword(szResult, szPass, dwTickCount, nLevel);
}

#endif //__PASSGEN_H__
