function OnDeath()
Msg2Player("B�n �� b� t� n�ni !")
Msg2World(" "..GetName().." �� b� t� n�n ")
LeaveTeam()
SetDeathScript("");
SetPunish(0)
SetFightState(0);
SetRevPos(19)
KickOutSelf()
end