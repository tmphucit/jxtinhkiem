// -------------------------------------------------------------------------
//	�ļ���		��	jxgm_i.h
//	������		��	����
//	����ʱ��	��	2003-6-2 18:59:12
//	��������	��
//
// -------------------------------------------------------------------------
#ifndef __JXGM_I_H__
#define __JXGM_I_H__

struct IGWConnect;
struct ISystemConnect;

struct ISystemOnline {
  virtual HRESULT STDMETHODCALLTYPE
  OpenSystemConnect(DWORD nIP, short nPort, ISystemConnect **ppConnect) = 0;
};

struct ISystemEvent {
  virtual void STDMETHODCALLTYPE
  GWLogin(char *szGWName, DWORD nIP) = 0; // ��S3Relay���������Ϣ
  virtual void STDMETHODCALLTYPE
  GWLogout(char *szGWName, DWORD nIP) = 0; // ��S3Relay�˳������Ϣ
  virtual void STDMETHODCALLTYPE GWRelayID(
      char *szGWName,
      DWORD
          nRelayID) = 0; // ��S3Relay�������Relay�ܷ����������ķ�����RelayID��Ϣ,������ָ��S3Reay����ExecuteAction��
  virtual void STDMETHODCALLTYPE GWSubLogout(
      DWORD nGWIP, DWORD nSubIP) = 0; // ��S3Relay�µ�ĳ̨GameWorld�˳������Ϣ
  virtual void STDMETHODCALLTYPE
  Ping(DWORD nTick) = 0; // Relay�ܷ�����������Ping��Ϣ
  virtual void STDMETHODCALLTYPE ConnectClosed() = 0; // ��Relay�ܷ�����������Ϣ
  virtual void STDMETHODCALLTYPE
  PlayerMessage(char *szAccountFrom, char *szRole, char *szMessage, int nMsgLen,
                DWORD dwGWIP) = 0; // �ض���Ҵ��ض�λ�÷��͵���Ϣ
  virtual void STDMETHODCALLTYPE
  LosePlayer(char *szAccount,
             DWORD dwGWIP) = 0; // ��ExecuteAction��û���ҵ�ָ��Ŀ��ʱ�Ļ���

  // ������Ϣ��ֱ����ISystemConnect��ص��õķ�����Ϣ,ע��Operate�뷢����Operate��һ�µ�
  virtual void STDMETHODCALLTYPE AccountUserReturn(DWORD Operate,
                                                   char *szAccount,
                                                   int nReturn) = 0;
  virtual void STDMETHODCALLTYPE OnlinePlayerCount(DWORD Operate,
                                                   char *szGWName,
                                                   DWORD nCount) = 0;
  virtual void STDMETHODCALLTYPE RegisterUserCount(DWORD Operate,
                                                   DWORD nCount) = 0;
};

struct ISystemConnect {
  virtual HRESULT STDMETHODCALLTYPE
  Login(char *szGMAccount, char *szPassword,
        ISystemEvent *pEvent) = 0;               // ����Relay�ܷ�����
  virtual void STDMETHODCALLTYPE Close() = 0;    // �����˳�ʱ����
  virtual void STDMETHODCALLTYPE SendPing() = 0; // ���ڷ���Ping,����ʧȥ����
  // ��ָ���ʺŵ�������ҷ���ָ��,δ�ҵ����յ�LosePlayer��Ϣ
  // szScript���Ȳ�����128,szScript�е��ַ�������ȫ����������������ס[[]]
  // nReturn!=0����ϣ���з�����Ϣ,PlayerMessage("GM", nReturn, ���)
  virtual void STDMETHODCALLTYPE ExecuteAction(char *szAccount, char *szScript,
                                               DWORD nReturn) = 0;
  // ��ָ��S3Relay�ͽ�ɫ����������ҷ���ָ��,δ�ҵ����յ�LosePlayer��Ϣ
  ////szScript���Ȳ�����128,szScript�е��ַ�������ȫ����������������ס[[]]
  // nReturn!=0����ϣ���з�����Ϣ,PlayerMessage("GM", nReturn, ���)
  virtual void STDMETHODCALLTYPE ExecuteAction(char *szRole, DWORD nRelayID,
                                               char *szScript,
                                               DWORD nReturn) = 0;
  // ��ָ��S3Relay����ָ��
  ////szScript���Ȳ�����128,szScript�е��ַ�������ȫ����������������ס[[]]
  // nReturn!=0����ϣ���з�����Ϣ,PlayerMessage("GM", nReturn, ���)
  // nSendIP = 0����ֱ����S3Relay��ִ��,nSendIP =
  // INADDR_BROADCAST����Ҫ��������������㲥,�������������������ĳ��game����
  virtual void STDMETHODCALLTYPE ExecuteAction(DWORD nRelayID, char *szScript,
                                               DWORD nReturn,
                                               DWORD nSendIP) = 0;

  // ������Ϣ��ֱ�ӷ��͸�Relay�ܷ�������,ע��Operate���뷵�ص�Operate��һ�µ�
  virtual void STDMETHODCALLTYPE UnlockPlayerAccount(
      DWORD Operate,
      char *
          szAccount) = 0; // �������ݿ��е������,ע��˺���Ҫ����ʹ��,һ��Ҫȷ����Ҳ�����,������������ɵ����߸���
  virtual void STDMETHODCALLTYPE FreezePlayerAccount(
      DWORD Operate,
      char *szAccount) = 0; // �������ݿ��е������,ͬʱ���������
  virtual void STDMETHODCALLTYPE GetOnlinePlayerCount(
      DWORD Operate, char *szGWName) = 0; // ���ָ��S3Relay����������
  virtual void STDMETHODCALLTYPE
  GetRegisterUserCount(DWORD Operate) = 0; // �����ע������
};

STDAPI CreateSystemOnline(ISystemOnline **ppSystem);
STDAPI DestroySystemOnline();

#endif // __JXGM_I_H__