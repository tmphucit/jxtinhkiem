#pragma once

#include "iPublic.h"
#include "stMsg.h"

const int c_nMaxLink = 1000;

#define MAX_MSGSIZE 1024

class iServerLink;
class iNetMsg;

enum {
	MsgIdle,

	Msg_Net_Start,

	//�ͻ�������
	Msg_Net_ClientConnect = Msg_Net_Start,
	//�ͻ��˶���
	Msg_Net_ClientDown,
	//�ͻ��˶��ߵ�ʱ�������
	Msg_Net_Dead, 
	
	//���������
	Msg_Net_ServerConnect,
	//������down
	Msg_Net_ServerDown,

	Msg_Net_End,
};

/////////////////////////////////////////////////////////////
struct stMsgIdle : public stMsg
{
public:
	stMsgIdle():stMsg(MsgIdle){};
};

/////////////////////////////////////////////////////////////
//net �� gameworld ͬ��ͨ�� popMessage ��ͨѶ
//net
struct stMsg_Net_Dead: public stMsg
{
	stMsg_Net_Dead() : stMsg(Msg_Net_Dead){}
};

//net
struct stMsg_Net_ClientConnect: public stMsg
{
	stMsg_Net_ClientConnect() : stMsg(Msg_Net_ClientConnect){}
};

//�쳣����
struct stMsg_Net_ClientDown : public stMsg
{
	stMsg_Net_ClientDown() : stMsg(Msg_Net_ClientDown){}
	long lReason;
};

struct stMsg_Net_ServerConnect : public stMsg
{
	stMsg_Net_ServerConnect() : stMsg(Msg_Net_ServerConnect){}
	BOOL bConnect; //connected or not connnect
};

struct stMsg_Net_ServerDown: public stMsg
{
	stMsg_Net_ServerDown() : stMsg(Msg_Net_ServerDown){}
	long lReason;
};

