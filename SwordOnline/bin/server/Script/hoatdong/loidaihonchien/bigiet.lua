function OnDeath(Launcher)
	PlayerIndex1 = NpcIdx2PIdx(Launcher);
	OrgPlayer = PlayerIndex;
	
	if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	end
	
	SetTaskTemp(1, GetTaskTemp(1) + 1)
	if GetTaskTemp(1) <= 4 then
		AddOwnExp(5000000)
		Msg2Player("B�n nh�n ���c 5.000.000 kinh nghi�m. Gi�i h�n: "..GetTaskTemp(1).." / 4 ng��i")
	else
		Msg2Player("V��t gi�i h�n nh�n kinh nghi�m: 4 ng��i")
	end
	
	PlayerIndex = OrgPlayer;
	--Msg2World(""..GetName().." �� t� n�n")
				SetDeathScript("");
				SetCurCamp(GetCamp())
				NewWorld(239,1613,3255)
				SetFightState(0)
				BlockPKState(0)
				SetPunish(0);
				SetCreateTeam(1);
	
end