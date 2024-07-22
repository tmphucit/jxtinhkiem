function OnDeath()
Msg2Player("B¹n ®· bÞ tö n¹ni !")
Msg2World(" "..GetName().." ®· bÞ tö n¹n ")
LeaveTeam()
SetDeathScript("");
SetPunish(0)
SetFightState(0);
SetRevPos(19)
KickOutSelf()
end