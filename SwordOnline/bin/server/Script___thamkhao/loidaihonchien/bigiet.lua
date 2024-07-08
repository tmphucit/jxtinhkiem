function OnDeath(Launcher)
	PlayerIndex1 = NpcIdx2PIdx(Launcher);
	OrgPlayer = PlayerIndex;
	
	if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	end
	giet = GetName()
	SetTask(943, GetTask(943) + 1)
	Msg2Player("Bπn Æ∑ Æ∏nh bπi <color=pink>"..GetTask(943).." ng≠Íi")
--	if GetTaskTemp(1) <= 4 then
--		AddOwnExp(5000000)
--		Msg2Player("Bπn nhÀn Æ≠Óc 5.000.000 kinh nghi÷m. GiÌi hπn: "..GetTaskTemp(1).." / 4 ng≠Íi")
--	else
--		Msg2Player("V≠Ót giÌi hπn nhÀn kinh nghi÷m: 4 ng≠Íi")
--	end
	
	PlayerIndex = OrgPlayer;
	Msg2SubWorld("<color=green>[Phong V©n Loπn Chi’n] <color=yellow>"..giet.." <color=red>hπ tr‰ng th≠¨ng <color=yellow>"..GetName().." ")
	SetDeathScript("");
				SetCurCamp(GetCamp())
				SetFightState(0)
				BlockPKState(0)
				SetPunish(0);
				SetCreateTeam(1);
				KickOutSelf()
end