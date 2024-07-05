// -------------------------------------------------------------------------
//	�ļ���		��	KThread.cpp
//	������		��	����
//	����ʱ��	��	2003-5-1 21:15:58
//	��������	��
//
// -------------------------------------------------------------------------

#include "KThread.h"
#include "StdAfx.h"
#include "process.h"

KThread::KThread() {
  m_hStop = NULL;
  m_hProcessor = NULL;
}

KThread::~KThread() {
  assert(m_hStop == NULL);
  assert(m_hProcessor == NULL);
}

HANDLE KThread::Start() {
  HANDLE hRet = NULL;
  if (NULL != m_hProcessor) // The thread has been running.
  {
    return hRet;
  }
  if (NULL == m_hStop) {
    m_hStop = CreateEvent(NULL, TRUE, FALSE, NULL);
  }

  unsigned dwID = 0;
  m_hProcessor = (HANDLE)_beginthreadex(NULL, 0, KThread::ThreadFun,
                                        (LPVOID)this, 0, &dwID);

  hRet = m_hProcessor;

  return hRet;
}

BOOL KThread::Stop() {
  BOOL bRet = FALSE;

  if (NULL == m_hProcessor || NULL == m_hStop) {
    bRet = TRUE;
    return bRet;
  }

  SetEvent(m_hStop);

  DWORD dwResult = WaitForSingleObject(m_hProcessor, INFINITE);
  if (WAIT_FAILED == dwResult) {
    bRet = FALSE;
  } else if (WAIT_OBJECT_0 == dwResult) {
    bRet = TRUE;
  } else if (WAIT_TIMEOUT == dwResult) // Time out.
  {
    if (TerminateThread(m_hProcessor, 0)) {
      bRet = TRUE;
    } else {
      bRet = FALSE;
    }
  }

  if (bRet) {
    CloseHandle(m_hStop);
    m_hStop = NULL;
    CloseHandle(m_hProcessor);
    m_hProcessor = NULL;
  }

  return bRet;
}

unsigned __stdcall KThread::ThreadFun(void *lpParam) {
  assert(lpParam);
  KThread *pThis = (KThread *)lpParam;
  return pThis->Main(lpParam);
}

K_CS::K_CS() {
  ::InitializeCriticalSection(&m_sect);

  m_bAcquired = FALSE;
}

K_CS::~K_CS() {
  Unlock();

  ::DeleteCriticalSection(&m_sect);
}

BOOL K_CS::Lock() {
  assert(!m_bAcquired);
  ::EnterCriticalSection(&m_sect);
  m_bAcquired = TRUE;
  return m_bAcquired;
}

BOOL K_CS::Unlock() {
  if (m_bAcquired) {
    ::LeaveCriticalSection(&m_sect);
    m_bAcquired = FALSE;
  }

  // successfully unlocking means it isn't acquired
  return !m_bAcquired;
}
