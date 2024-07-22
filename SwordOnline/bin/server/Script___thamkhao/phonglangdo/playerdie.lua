function OnDeath(Launcher)
ngay = tonumber(date("%d"))
	PlayerIndex1 = NpcIdx2PIdx(Launcher);
	OrgPlayer = PlayerIndex;
	
	if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	end
	giet = GetName()
	w,x,y = GetWorldPos()
	if w == 47 or w == 48 or w == 49 then
			if floor(GetTask(487)/1000) ~= ngay then
				SetTask(487, ngay * 1000)
			end
			if mod(GetTask(487),1000) < 5 then
				AddOwnExp(4000000)
				Msg2Player("B¹n nhËn ®­îc 4.000.000 kinh nghiÖm v× tiªu diÖt ng­êi ch¬i kh¸c ")
				SetTask(487, GetTask(487) +1)
				Msg2Player("Sè l­îng tiªu diÖt ng­êi ch¬i nhËn kinh nghiÖm trong ngµy: <color=green>"..mod(GetTask(487),1000).." / 5")
			else
				Msg2Player("B¹n ®· ®¹t tèi ®a sè l­îng giÕt ng­êi trong ngµy")
			end
	end
PlayerIndex = OrgPlayer;

		Msg2World("[<color=green>"..GetName().."<color=red>] ®· bÞ [<color=yellow>"..giet.."<color=red>] ®¸nh träng th­¬ng, tù ®éng ®­a vÒ Chu Tiªn TrÊn")
		SetFightState(0);
		LeaveTeam()
		SetDeathScript("");
		SetPunish(0)
		KickOutSelf()
end

function OnDrop()
end

