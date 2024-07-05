LOI_DAI = {
{"","","","","","","","",""},
{"","","","","","","","",""}
}


function main()
if GetTeam() == nill then
Talk(1,"","B¹n ph¶i lËp tæ ®éi míi cã thÓ ®¨ng ký tham gia !")
return	
end
if IsCaptain() ~= 1 then
Talk(1,"","B¹n ph¶i lµ tr­ëng nhãm míi cã thÓ ®¨ng ký tham gia !")
return
end
phut = tonumber(date("%M"))
--gio,phut,giay = GetTimeNew()
if (phut >= 3 and phut < 10) or (phut >= 13 and phut < 20) or (phut >= 23 and phut < 30) or (phut >= 33 and phut < 40) or (phut >= 43 and phut < 50) or (phut >= 53) then
Talk(1,"","HiÖn ®ang trong thêi gian thi ®Êu, kh«ng thÓ b¸o danh. Thêi gian b¸o danh tõ phót thø 0 - 3, 10 - 13, 20 - 23, 30 - 33, 40 - 43, 50 - 53 mçi giê !")
return
end

if IsCaptain() == 1 then
	if phut < 3 or (phut >= 10 and phut < 13) or (phut >= 20 and phut < 23) or (phut >= 30 and phut < 33) or (phut >= 40 and phut < 43) or (phut >= 50 and phut < 53) then
	if LOI_DAI[1][1] == "" then
		Say("<color=green>C«ng B×nh Tö <color>: HiÖn t¹i ch­a cã Tæ §éi nµo ®¨ng ký l«i ®µi, sè l­îng thµnh viªn trong nhãm b¹n sÏ quy ®Þnh thÓ lo¹i thi ®Êu ",2,
		"Ta muèn ®¨ng ký thÓ lo¹i thi ®Êu "..GetTeamSize().." vs "..GetTeamSize().." /dangky",
		"Tho¸t./no")
	else
		soluong = tinhtongsoluongthanhvien()
		Say("<color=green>C«ng B×nh Tö <color>: HiÖn t¹i ®· cã Tæ §éi ®¨ng ký h×nh thøc thi ®Êu "..soluong.." vs "..soluong..". B¹n ph¶i cã sè thµnh viªn b»ng sè sè l­îng quy ®Þnh míi vµo ®­îc ",2,
		"Ta sÏ cïng nhãm tham gia thi ®Êu /dangky",
		"Tho¸t./no")
	end
	else
		Talk(1,"","Lçi: HiÖn ®ang trong thêi gian thi ®Êu, kh«ng thÓ b¸o danh. Thêi gian b¸o danh tõ phót thø 0 - 3, 10 - 13, 20 - 23, 30 - 33, 40 - 43, 50 - 53 mçi giê !")
	end
end
end

function tinhtongsoluongthanhvien()
check = 0
for i=1,getn(LOI_DAI) do
	if LOI_DAI[1][i] ~= "" then
		check = check + 1
	end
end
return check
end

function dangky()
if LOI_DAI[1][1] == "" then
	idx = PlayerIndex
	team = GetTeam()
	vt = 1
	Msg2SubWorld("<color=pink>Nhãm cña <color=yellow>"..GetName().." <color=pink>®· ®¨ng ký l«i ®µi h×nh thøc <color=yellow>"..GetTeamSize().." vs "..GetTeamSize()..".<color=pink>§ang chê ®îi nhãm kh¸c tham gia!")
	LOI_DAI[1][9] = GetName()
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if team == GetTeam() then
			SetPunish(1);
			SetFightState(0)
			SetTaskTemp(40,GetCurCamp())
			SetDeathScript("\\script\\loidai\\sugialoidai.lua")
			SetCurCamp(1)
			SetCamp(1)
			SetPKState(1)
			BlockPKState(1)
			SetLogoutRV(0);
			LOI_DAI[1][vt] = GetName()
			vt = vt+1
			NewWorld(45,1625, 3193)
		end
	end
	PlayerIndex = idx
else
	soluong = tinhtongsoluongthanhvien()
	if GetTeamSize() ~= soluong then
	Talk(1,"","HiÖn t¹i thÓ lo¹i ®¨ng ký l«i ®µi lµ: <color=red>"..soluong.." vs "..soluong.." ")
	return
	end
	if LOI_DAI[2][1] ~= "" then
	Talk(1,"","§· cã nhãm ®¨ng ký vµo l«i ®µi !")
	return
	end
	LOI_DAI[2][9] = GetName()
	Msg2SubWorld("<color=pink>Nhãm cña <color=yellow>"..GetName().." <color=pink>®· tham gia l«i ®µi cïng nhãm cña <color=yellow>"..LOI_DAI[1][9].."<color=pink>. H·y cè g¾ng lËp c«ng mang vinh danh vÒ cho ®éi cña m×nh !")
	team = GetTeam()
	idx = PlayerIndex
	vt = 1	
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if team == GetTeam() then
			SetPunish(1);
			SetFightState(0)
			SetTaskTemp(40,GetCurCamp())
			SetDeathScript("\\script\\loidai\\sugialoidai.lua")
			SetCurCamp(2)
			SetCamp(2)
			SetPKState(1)
			BlockPKState(1)
			SetLogoutRV(0);
			LOI_DAI[2][vt] = GetName()
			vt = vt+1
			NewWorld(45,1604, 3195)
		end
	end
	PlayerIndex = idx
	
end
end



function RunTimer()
gio,phut,giay = GetTimeNew()
if LOI_DAI[1][1] ~= "" then
if phut == 3 or phut == 13 or phut == 23 or phut == 33 or phut == 43 or phut == 53 then
	Msg2WorldById("Thêi gian thi ®Êu cßn l¹i lµ: <color=yellow>1 phót ",45)
	checka = 0
	checkb = 0
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 45 then
			if GetCurCamp() == 1 then
				checka = checka + 1
			elseif GetCurCamp() == 2 then
				checkb = checkb + 1
			end
		end
	end

	if checka <= 0 or checkb <= 0 then
		Msg2WorldById("TrËn ®Êu kÕt thóc v× nhãm cña b¹n kh«ng cã ®èi thñ ",45)
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 45 then
			SetPunish(0);
			SetFightState(0)
			SetDeathScript("")
			SetCurCamp(GetTaskTemp(40))
			SetCamp(GetTaskTemp(40))
			SetPKState(0)
			BlockPKState(0)
			SetLogoutRV(0);
			NewWorld(53,200*8,200*16)
		end
	end	

		for i=1,9 do
			LOI_DAI[1][i] = ""
			LOI_DAI[2][i] = ""
		end
	end
end


if phut == 4 or phut == 14 or phut == 24 or phut == 34 or phut == 44 or phut == 54 then
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 45 then
			SetFightState(1)
			Msg2Player("TrËn ®Êu b¾t ®Çu, thêi gian thi ®Êu: 6 phót ")
		end
	end
end

if (phut > 4 and phut < 9) or (phut > 14 and phut < 19) or (phut > 24 and phut < 29) or (phut > 34 and phut < 39) or (phut > 44 and phut < 49) or (phut > 54 and phut < 59) then
	checka = 0
	checkb = 0
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 45 then
			if GetCurCamp() == 1 then
				checka = checka + 1
			elseif GetCurCamp() == 2 then
				checkb = checkb + 1
			end
		end
	end

	
	if checka <= 0 then
		Msg2WorldById("TrËn ®Êu kÕt thóc, nhãm <color=yellow>"..LOI_DAI[2][9].." <color=red>giµnh chiÕn th¾ng v× tiªu diÖt hÕt ®èi thñ ",45)
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 45 then
			SetPunish(0);
			SetFightState(0)
			SetDeathScript("")
			SetCurCamp(GetTaskTemp(40))
			SetCamp(GetTaskTemp(40))
			SetPKState(0)
			BlockPKState(0)
			SetLogoutRV(0);
			NewWorld(53,200*8,200*16)
		end
		end
	elseif checkb <= 0 then
		Msg2WorldById("TrËn ®Êu kÕt thóc, nhãm <color=yellow>"..LOI_DAI[1][9].." <color=red>giµnh chiÕn th¾ng v× tiªu diÖt hÕt ®èi thñ ",45)
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 45 then
			SetPunish(0);
			SetFightState(0)
			SetDeathScript("")
			SetCurCamp(GetTaskTemp(40))
			SetCamp(GetTaskTemp(40))
			SetPKState(0)
			BlockPKState(0)
			SetLogoutRV(0);
			NewWorld(53,200*8,200*16)
		end
		end
	end	

	for i=1,9 do
		LOI_DAI[1][i] = ""
		LOI_DAI[2][i] = ""
	end
end

if phut == 9 or phut == 19 or phut == 29 or phut == 39 or phut == 49 or phut == 59 then
	checka = 0
	checkb = 0
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 45 then
			if GetCurCamp() == 1 then
				checka = checka + 1
			elseif GetCurCamp() == 2 then
				checkb = checkb + 1
			end
		end
	end
	
	if checka == checkb and checka ~= 0 then
		Msg2WorldById("TrËn ®Êu kÕt thóc, kÕt qu¶: <color=yellow>: Hßa ",45)
	elseif checka > checkb then
		Msg2WorldById("TrËn ®Êu kÕt thóc, kÕt qu¶: <color=yellow>: §éi "..LOI_DAI[1][9].." <color=red> giµnh chiÕn th¾ng v× cã sè l­îng thµnh viªn nhiÒu h¬n",45)
	elseif checka < checkb then
		Msg2WorldById("TrËn ®Êu kÕt thóc, kÕt qu¶: <color=yellow>: §éi "..LOI_DAI[2][9].." <color=red> giµnh chiÕn th¾ng v× cã sè l­îng thµnh viªn nhiÒu h¬n",45)
	end

	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == 45 then
		SetPunish(0);
		SetFightState(0)
		SetDeathScript("")
		SetCurCamp(GetTaskTemp(40))
		SetCamp(GetTaskTemp(40))
		SetPKState(0)
		BlockPKState(0)
		SetLogoutRV(0);
		NewWorld(53,200*8,200*16)
	end
	end
	for i=1,9 do
		LOI_DAI[1][i] = ""
		LOI_DAI[2][i] = ""
	end
end
end
end

function OnDeath(Launcher)
PlayerIndex1 = NpcIdx2PIdx(Launcher);
OrgPlayer = PlayerIndex;
die_name = GetName()

if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
end
giet = GetName()

Msg2World("§¹i hiÖp <color=yellow>"..giet.." <color=red>®· ®¸nh b¹i <color=yellow>"..die_name.." <color=red>!")

PlayerIndex = OrgPlayer;
SetDeathScript("");
SetCurCamp(GetTaskTemp(40))
SetCamp(GetTaskTemp(40))
SetFightState(0)
SetPKState(0)
BlockPKState(0)
SetLogoutRV(0);

end

function OnDrop()
end


function OnDrop()
end
function no()
end