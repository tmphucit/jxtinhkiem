function OnDeath()
SetFightState(0);
Msg2World(" "..GetName().." �� b� t� n�n, t� ��ng ��a v� Chu Ti�n Tr�n ")
LeaveTeam()
SetDeathScript("");
SetPunish(0)
SetRevPos(3)
KickOutSelf()
end