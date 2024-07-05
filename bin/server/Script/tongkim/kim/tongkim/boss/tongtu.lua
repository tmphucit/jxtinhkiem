Include("\\script\\tongkim\\headtime.lua")

function OnDeath(Launcher)
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))
if GetGlbMissionV(60) == 2000 then
	PlayerIndex1 = NpcIdx2PIdx(Launcher);
	OrgPlayer = PlayerIndex;
	die_name = GetName()
	die_dh = GetTask(19)

	if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	end
	giet = GetName()
	kill_dh = GetTask(19)

	if (GetTask(12) == 2) then
		tongdiem = 0
		SetTask(11,GetTask(11)+1) -- Player
		SetTask(13,GetTask(13)+danhhieu[die_dh][4]) -- tich luy nguoi choi
		tongdiem = tongdiem + danhhieu[die_dh][4]

		SetTask(21,GetTask(21)+1) -- Lien Tram
		
		diemlientram = 0
		if GetTask(21) >= 20 then
		diemlientram = 100
		else
		diemlientram = GetTask(21) * 5
		end
		SetTask(24,GetTask(24)+diemlientram) -- Tich Luy Lien 
		tongdiem = tongdiem +diemlientram
		
		SetTask(31,GetTask(31)+tongdiem)
		SetTask(15,GetTask(15)+tongdiem)
		SetGlbMissionV(82,GetGlbMissionV(82)+tongdiem)
		if (GetTask(31) >= danhhieu[GetTask(19)+1][2]) then
			SetTask(19,GetTask(19)+1)
			qh = GetTask(19)
			AddMagic(413,qh)
			AddRepute(danhhieu[qh][5])
			SetRank(220+qh*2)
			Msg2Player("B¹n nhËn ®­îc "..danhhieu[qh][5].." ®iÓm danh väng")
			Msg2Player("Qu©n hµm cña b¹n ®· t¨ng lªn"..danhhieu[qh][1]..", xin chóc mõng !")
			Msg2World("Qu©n Kim, ng­êi ch¬i "..GetName().." ®­îc phong hµm "..danhhieu[qh][1]..", chóc mõng !")
		end
		
		if GetTask(21) > GetTask(29) then
			SetTask(29,GetTask(21)) -- Set Lien Tram Cao Nhat
		end
		Msg2World("Ng­êi ch¬i ["..danhhieu[GetTask(19)][1].."] "..giet.." h¹ träng th­¬ng ng­êi ch¬i ["..danhhieu[die_dh][1].."] "..die_name..", tæng PK "..GetTask(11)..", ®iÓm tİch lòy "..GetTask(31)..", liªn tr¶m "..GetTask(21).." ")
		Msg2Player("B¹n ®· ®¸nh träng th­¬ng Tèng Binh "..danhhieu[die_dh][1].." "..die_name.." nhËn ®­îc "..tongdiem.." ®iÓm tİch luü, liªn tr¶m "..GetTask(21)..", sè ng­êi giÕt ®­îc "..GetTask(11)..", tİch luü hiÖn t¹i "..GetTask(31).." ®iÓm")
		UpdateTopTKNew()
	end
	PlayerIndex = OrgPlayer;
	SetTask(28,GetTask(28)+1) -- Tu Vong
	SetTask(21,0) -- Reset Lien Tram
	timehientai = m*60 + s
	if GetTaskTemp(99) == 0 then
		SetTaskTemp(99,timehientai+10)
	end

	tinhtime = timehientai - GetTaskTemp(18)
	if GetGlbMissionV(60) == 1000 then
	SetTask(118,GetTask(118) + tinhtime)
	end


	SetTaskTemp(18,0) -- Reset Task Time


	SetDeathScript("");
	if giet == GetName() then
		Msg2Player("B¹n ®· bŞ qu¸i vËt ®¸nh träng th­¬ng, liªn tr¶m trë vÒ 0 !")
	else
		Msg2Player("B¹n ®· bŞ ["..danhhieu[kill_dh][1].."] "..giet.." ®¸nh träng th­¬ng, liªn tr¶m trë vÒ  0")
	end
	UpdateTopTKNew()
end
end


function OnDrop()
end