function OnDeath(Launcher)
		SetFightState(0);
		Msg2World(" "..GetName().." �� b� t� n�n, t� ��ng ��a v� Ba L�ng Huy�n ")
		LeaveTeam()
		SetDeathScript("");
		SetPunish(0)
		if GetTask(534) == 100 then
			SetRevPos(41)
		else
			SetRevPos(19)
		end
		KickOutSelf()
end

function OnDrop()
end

