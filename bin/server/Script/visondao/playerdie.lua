


function OnDeath(Launcher)
	PlayerIndex1 = NpcIdx2PIdx(Launcher);
	OrgPlayer = PlayerIndex;
	tennguoigiet = GetName()

	if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	end
		
	giet = GetName()
	team = GetTeam()
	name = GetName()
	w,x,y = GetWorldPos()	
	if tennguoigiet ~= giet then
	if GetTeam() == nil then
		if GetTask(172) > 18 then
			AddOwnExp(1000000)
			Msg2Player("B¹n nhËn ®­îc 1.000.000 kinh nghiÖm v× ®ang sö dông Tiªn Th¶o Lé !")
		else
			AddOwnExp(500000)
			Msg2Player("B¹n nhËn ®­îc 500.000 kinh nghiÖm 1!")
		end
	else
		for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			w1,x1,y1 = GetWorldPos()
			if GetName() ~= nil and GetName() ~= "" and GetTeam() == team and w == w1 then
			if GetTask(172) > 18 then
				AddOwnExp(1000000)
				Msg2Player("B¹n nhËn ®­îc 1.000.000 kinh nghiÖm v× ®ang sö dông Tiªn Th¶o Lé !")
			else
				AddOwnExp(500000)
				Msg2Player("B¹n nhËn ®­îc 500.000 kinh nghiÖm 2!")
			end
			end
		end
	end
	end


	PlayerIndex = OrgPlayer;
	
	SetFightState(0);
	if giet == GetName() then
		Msg2World(" ["..GetName().."] ®· bÞ qu¸i vËt ®¸nh träng th­¬ng. ")
		SetTempRevPos(24,1395*32,2783*32)
		SetDeathScript("\\script\\visondao\\playerdie.lua");

	else
		SetDeathScript("");
		Msg2World("[<color=green>"..GetName().."<color=red>] ®· bÞ [<color=yellow>"..giet.."<color=red>] ®¸nh träng th­¬ng, tù ®éng ®­a vÓ Chu Tiªn TrÊn")
		SetRevPos(3)
		KickOutSelf()
	end
	--LeaveTeam()
	--SetDeathScript("");
	--SetPunish(0)

end
function OnDrop()
end