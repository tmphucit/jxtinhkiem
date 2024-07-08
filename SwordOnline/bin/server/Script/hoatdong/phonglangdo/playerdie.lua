function OnDeath(Launcher)
		SetFightState(0);
		Msg2World(" "..GetName().." ®· bÞ tö n¹n, tù ®éng ®­a vÓ Ba L¨ng HuyÖn ")
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

