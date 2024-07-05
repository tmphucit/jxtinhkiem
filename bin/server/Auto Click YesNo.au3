While 1
if WinExists("Info") then
ProcessClose("Bishop.exe")
EndIf

If (WinExists("Microsoft Visual C++ Runtime Library")) Then
ProcessClose("Gameserver.exe")
EndIf

If Not ProcessExists("Gameserver.exe") Then
Run("D:\Server\GameServer.exe")
EndIf

If Not ProcessExists("bishop.exe") Then

Sleep(1000)
ProcessClose("bishop.exe")
WinWaitClose("Bishop - [Enable]")
Run("D:\Server\bishop.exe")
Sleep(200);
While (Not WinActive("Login"))
WinActivate ("Login")
WEnd
ControlSend("Login", "", "Edit1",  "tinhkiem");n
While (Not WinActive("Login"))
WinActivate ("Login")
WEnd
ControlSend("Login", "", "Edit2", "123456");
While (Not WinActive("Login"))
WinActivate ("Login")
WEnd
ControlClick("Login","OK",1)
Sleep(200);
WinWaitActive("Bishop - [Disable]")
While (Not WinActive("Bishop - [Disable]"))
WinActivate ("Bishop - [Disable]")
WEnd
ControlClick("Bishop - [Disable]","Startup",1)


EndIf
WEnd