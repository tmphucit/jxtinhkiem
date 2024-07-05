#pragma once

#include "iNet.h"

class iNetMsg;
class iEncode;
class iPack;

typedef UINT (*HandleMessageFunc)(stMsg *pMsg, DWORD msgSize, void *pPlayer,
                                  iServerLink *pLink);

class iServerLink {
public:
  virtual DWORD AddRef() = 0;
  virtual DWORD Release() = 0;
  virtual void BindPlayer(void *pPlayer) = 0;
  virtual void *GetPlayer() = 0;

  // send msg to a client
  //	virtual BOOL SendMessage(iNetMsg* pMsg) = 0;

  virtual BOOL SendMessage(stMsg *pMsg, DWORD size) = 0;

  virtual BOOL CloseClient() = 0;
  virtual BOOL Create() = 0;
  virtual BOOL IsConnect() = 0;
};

class iServer {
public:
  virtual DWORD AddRef() = 0;
  virtual DWORD Release() = 0;

  virtual void Bind(iEncode *pEncode, iPack *pPack) = 0;

  // call it once but should beforce any create!
  // if return false please close the server!
  virtual BOOL InitSocket() = 0;
  // call it after close all server
  virtual BOOL CleanSocket() = 0;

  virtual SOCKET GetListener() = 0;
  virtual BOOL Create(int nPort) = 0;
  virtual BOOL RunThread() = 0;
  virtual BOOL Close() = 0;

  // send msg to all client
  virtual BOOL SendMessage(stMsg *pMsg, DWORD size) = 0;
  //	virtual stBindMsg* PopMessage() = 0;
  //	virtual void	PushMessage(stBindMsg* pMsg) = 0;
  virtual UINT HandleClientMessage(stMsg *pMsg, DWORD size, void *pPlayer,
                                   iServerLink *pLink) = 0;
  virtual UINT HandleNetMessage(stMsg *pMsg, DWORD size, void *pPlayer,
                                iServerLink *pLink) = 0;
  // ����˳���
  virtual BOOL QuitLink(iServerLink *pLink) = 0;

  // �ͻ��˵���Ϣ
  virtual void RegisterClientHandle(HandleMessageFunc func) = 0;
  // �������Ϣ
  virtual void RegisterNetHandle(HandleMessageFunc func) = 0;

  virtual HRESULT GetLastError() = 0;
};

enum VersonEnum {
  SOCKET_SingleThread, // ֻʹ��һ���߳�
  // advance
  SOKCET_IOOverlap,    // IOOverlap
  SOKCET_IOCompletion, // IOCompletion
  // dx
  DirectPlay8, // use directplay
  // ÿ��socketʹ��һ���߳�
  SOCKET_WSAAsyncSelect, // ʹ��mfc��CAsyncSocket,Ҳ��ʹWSAAsyncSelect
  SOCKET_WSAEventSelect, // ��CAsyncSocket����,����ʹ��WSAEventSelect
  SOCKET_MultiThread,    // ��thread��ʹ��select������ѡ��
};

_declspec(dllexport) iServer *
Net_CreateServer(VersonEnum verson = SOCKET_SingleThread);

void CALLBACK DoneIO(DWORD dwErrorCode, DWORD dwNumberOfBytesTransferred,
                     LPOVERLAPPED lpOverlapped);
