// -------------------------------------------------------------------------
//	�ļ���		��	KConnect.cpp
//	������		��	����
//	����ʱ��	��	2003-6-3 16:43:47
//	��������	��
//
// -------------------------------------------------------------------------

#include "stdafx.h"

#include "kconnect.h"

#include "WinSock.h"

#include "Buffer.h"
#include "IClient.h"
using OnlineGameLib::Win32::CBuffer;

#include "KGMProtocol.h"
#include "KProtocolDef.h"

DWORD KConnect::m_s_ClientIndex = 0;

KConnect::KConnect() {
  m_pClient = NULL;
  m_nClientID = 0;

  m_nIP = 0;
  m_nPort = 0;
}

KConnect::~KConnect() { UnInitClient(); }

DWORD KConnect::CreateClientID() { return ++m_s_ClientIndex; }

IClient *CreateClient(const size_t &maxFreeBuffers, const size_t &bufferSize);

BOOL KConnect::InitClient(const size_t &maxFreeBuffers,
                          const size_t &bufferSize) {
  UnInitClient();
  IClient *pClient = CreateClient(maxFreeBuffers, bufferSize);
  if (pClient) {
    m_pClient = pClient;

    pClient->Startup();
    pClient->RegisterMsgFilter(this, ClientEventNotify);

    return TRUE;
  }

  return FALSE;
}

BOOL KConnect::ConnectTo(DWORD nIP, short nPort) {
  if (m_pClient) {
    m_nIP = nIP;
    m_nPort = nPort;
    in_addr addr;
    addr.s_addr = nIP;
    return SUCCEEDED(m_pClient->ConnectTo(inet_ntoa(addr), nPort));
  }
  return FALSE;
}

void KConnect::UnInitClient() {
  if (m_pClient) {
    m_pClient->Shutdown();
    m_pClient->Cleanup();

    m_pClient->Release();
    m_pClient = NULL;
  }

  m_nClientID = 0;
}

void __stdcall KConnect::ClientEventNotify(LPVOID lpParam,
                                           const unsigned long &ulnEventType) {
  switch (ulnEventType) {
  case enumServerConnectCreate:
    if (lpParam) {
      ((KConnect *)lpParam)->ConnectCreate();
    }

    break;

  case enumServerConnectClose:
    if (lpParam) {
      ((KConnect *)lpParam)->ConnectClose();
    }
    break;
  }
}

void KConnect::ConnectCreate() { m_nClientID = CreateClientID(); }

void KConnect::ConnectClose() { m_nClientID = 0; }

void KConnect::ConnectIdle() {}

void KConnect::ConnectData(const void *pData, size_t dataLength) {
  if (pData == NULL || dataLength <= 0)
    return;

  WORD nProtocol = *((WORD *)pData);
  FUN_PROCESS_PROTOCOL func = m_ProtocolTable[nProtocol];
  if (func)
    func(this, ((char *)pData), dataLength);
}

DWORD KConnect::Main(LPVOID lpParam) {
  if (m_pClient) {
    while (WaitForSingleObject(m_hStop, 0) == WAIT_TIMEOUT) {
      size_t dataLength = 0;

      const void *pData = m_pClient->GetPackFromServer(dataLength);

      if (!pData || 0 == dataLength) {
        ConnectIdle();
        Sleep(1);
        continue;
      }

      ConnectData(pData, dataLength);
    }
  }

  UnInitClient();
  return 0;
}

CBuffer::Allocator g_theGlobalAllocator(1024 * 1024, 10);

void KConnect::SendData(const void *const pSrcData1, const size_t &datalength1,
                        const void *const pSrcData2,
                        const size_t &datalength2) {
  if (m_pClient == NULL || pSrcData1 == NULL || datalength1 == 0)
    return;

  CBuffer *pBuffer = g_theGlobalAllocator.Allocate();

  BYTE *pData = const_cast<BYTE *>(pBuffer->GetBuffer());

  memcpy(pData, pSrcData1, datalength1);

  if (pSrcData2 && datalength2 > 0)
    memcpy(pData + datalength1, pSrcData2, datalength2);

  pBuffer->Use(datalength1 + datalength2);

  m_pClient->SendPackToServer((const void *)pData, datalength1 + datalength2);

  if (pBuffer)
    pBuffer->Release();
}

void KConnect::SendRelayData(char *szAccount, const void *const pSrcData1,
                             const size_t &datalength1,
                             const void *const pSrcData2,
                             const size_t &datalength2) {
  if (m_pClient == NULL || szAccount == NULL || pSrcData1 == NULL ||
      datalength1 == 0)
    return;

  RELAY_ASKWAY_DATA relay;
  relay.ProtocolFamily = pf_relay;
  relay.ProtocolID = relay_c2c_askwaydata;
  relay.nFromIP = 0;
  relay.nFromRelayID = 0;
  relay.seekRelayCount = 0;
  relay.seekMethod = rm_account_id;
  relay.wMethodDataLength = defACCOUNT_STRING_LENGTH;
  relay.routeDateLength = datalength1 + datalength2;

  CBuffer *pBuffer = g_theGlobalAllocator.Allocate();

  BYTE *pData = const_cast<BYTE *>(pBuffer->GetBuffer());

  BYTE *pDataOrg = pData;
  memcpy(pData, &relay, sizeof(relay));
  pData += sizeof(relay);

  strncpy((char *)pData, szAccount, defACCOUNT_STRING_LENGTH);
  pData += relay.wMethodDataLength;

  memcpy(pData, pSrcData1, datalength1);
  pData += datalength1;

  if (pSrcData2 && datalength2 > 0)
    memcpy(pData, pSrcData2, datalength2);

  pBuffer->Use(sizeof(relay) + relay.wMethodDataLength + relay.routeDateLength);

  m_pClient->SendPackToServer((const void *)pDataOrg,
                              sizeof(relay) + relay.wMethodDataLength +
                                  relay.routeDateLength);

  if (pBuffer)
    pBuffer->Release();
}

void KConnect::SendProtocol(BYTE nProtocol, const void *const pSrcData1,
                            const size_t &datalength1,
                            const void *const pSrcData2,
                            const size_t &datalength2) {
  if (m_pClient == NULL || pSrcData1 == NULL || datalength1 == 0)
    return;

  CBuffer *pBuffer = g_theGlobalAllocator.Allocate();

  BYTE *pData = const_cast<BYTE *>(pBuffer->GetBuffer());

  *pData = pf_normal;
  *(pData + 1) = nProtocol;
  memcpy(pData + 2, pSrcData1, datalength1);

  if (pSrcData2 && datalength2 > 0)
    memcpy(pData + 2 + datalength1, pSrcData2, datalength2);

  pBuffer->Use(2 + datalength1 + datalength2);

  m_pClient->SendPackToServer((const void *)pData,
                              2 + datalength1 + datalength2);

  if (pBuffer)
    pBuffer->Release();
}