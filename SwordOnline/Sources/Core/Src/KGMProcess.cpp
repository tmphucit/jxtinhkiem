#include "KCore.h"
#include "KEngine.h"
#ifndef _STANDALONE
#include "../../Headers/IClient.h"
#else
#include "IClient.h"
#endif
#include "KBuySell.h"
#include "KItemSet.h"
#include "KNewProtocolProcess.h"
#include "KNpc.h"
#include "KNpcSet.h"
#include "KObjSet.h"
#include "KPlayer.h"
#include "KPlayerFaction.h"
#include "KPlayerSet.h"
#include "KPlayerTeam.h"
#include "KSkills.h"
#include "KSubWorld.h"
#include "KSubWorldSet.h"
#include "LuaFuns.h"
// #include "MyAssert.h"
#include "KMath.h"
#include "Scene/ObstacleDef.h"
#ifndef _STANDALONE
#include "..\..\..\Headers\KGmProtocol.h"
#include "CoreShell.h"
#else
#include "KGmProtocol.h"
#endif
BOOL TextMsgProcessGMCmd(int nPlayerIdx, const char *pGMCmd, int nLen);
void KNewProtocolProcess::P_ProcessGMExecute(IClient *pTransfer, DWORD dwFromIP,
                                             DWORD dwFromRelayID,
                                             int nPlayerIndex, BYTE *pData,
                                             int nDataSize) {}

void KNewProtocolProcess::P_ProcessGMFindPlayer(IClient *pTransfer,
                                                DWORD dwFromIP,
                                                DWORD dwFromRelayID,
                                                int nPlayerIndex, BYTE *pData,
                                                int nDataSize) {}

void KNewProtocolProcess::ExecuteLocalServer(const void *const pData,
                                             const size_t datalength) {}
