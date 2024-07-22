function OnDeath(Launcher)
	PlayerIndex1 = NpcIdx2PIdx(Launcher);
	OrgPlayer = PlayerIndex;
	
	if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	end
	
	SetTaskTemp(1, GetTaskTemp(1) + 1)
	if GetTaskTemp(1) <= 4 then
		AddOwnExp(5000000)
		Msg2Player("B¹n nhËn ®­îc 5.000.000 kinh nghiÖm. Giíi h¹n: "..GetTaskTemp(1).." / 4 ng­êi")
	else
		Msg2Player("V­ît giíi h¹n nhËn kinh nghiÖm: 4 ng­êi")
	end
	
	PlayerIndex = OrgPlayer;
	--Msg2World(""..GetName().." ®· tö n¹n")
				SetDeathScript("");
				SetCurCamp(GetCamp())
				NewWorld(239,1613,3255)
				SetFightState(0)
				BlockPKState(0)
				SetPunish(0);
				SetCreateTeam(1);
	
end