function OnDeath(Launcher)
	PlayerIndex1 = NpcIdx2PIdx(Launcher);
	OrgPlayer = PlayerIndex;
	
	if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	end
	giet = GetName()
	SetTask(943, GetTask(943) + 1)
	Msg2Player("B�n �� ��nh b�i <color=pink>"..GetTask(943).." ng��i")
--	if GetTaskTemp(1) <= 4 then
--		AddOwnExp(5000000)
--		Msg2Player("B�n nh�n ���c 5.000.000 kinh nghi�m. Gi�i h�n: "..GetTaskTemp(1).." / 4 ng��i")
--	else
--		Msg2Player("V��t gi�i h�n nh�n kinh nghi�m: 4 ng��i")
--	end
	
	PlayerIndex = OrgPlayer;
	Msg2SubWorld("<color=green>[Phong V�n Lo�n Chi�n] <color=yellow>"..giet.." <color=red>h� tr�ng th��ng <color=yellow>"..GetName().." ")
	SetDeathScript("");
				SetCurCamp(GetCamp())
				SetFightState(0)
				BlockPKState(0)
				SetPunish(0);
				SetCreateTeam(1);
				KickOutSelf()
end