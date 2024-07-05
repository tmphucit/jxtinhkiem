function main(idx)
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
w,x,y = GetWorldPos()

	
	HideNpc(idx,999999999)
	
	if phut < 5 then
		idpt = randomphanthuong(1)
	elseif phut >= 5 and phut < 10 then
		idpt = randomphanthuong(2)
	elseif phut >= 10 and phut < 15 then
		idpt = randomphanthuong(3)
	else
		idpt = randomphanthuong(4)
	end

	SetGlbMissionV(44,0)
	SetGlbMissionV(45,0)

	inloglixi(""..phut..": "..GetAccount().." - "..GetName().." - "..idpt.." - "..tenphanthuong(idpt).." ["..w..","..x..","..y.."]")

	Msg2SubWorld("<color=pink>[R­¬ng Vµng]: Chóc mõng "..GetName().." ®· t×m ®­îc R­¬ng Vµng ë phót thø "..phut.." v¸ nhËn ®­îc phÇn th­ëng "..tenphanthuong(idpt).." ")
	AddOwnExp(2000000)
	Msg2Player("B¹n nhËn ®­îc 2 triÖu kinh nghiÖm t×m thÊy R­¬ng Vµng !")
	
end

	
function checktenmap(id)
if id == 53 then
return "Ba L¨ng HuyÖn"
elseif id == 15 then
return "T­¬ng D­¬ng"
elseif id == 17 then
return "Ph­îng T­êng"
elseif id == 9 then
return "BiÖn Kinh"
elseif id == 18 then -- CHUA ADD NE
return "Thµnh §«"
elseif id == 66 then
return "Giang T©n Th«n"
elseif id == 3 then
return "Chu Tiªn TrÊn"
elseif id == 2 then
return "Hoa S¬n"
elseif id == 8 then
return "Phôc Ng­u S¬n"
elseif id == 100 then
return "TuyÕt B¸o §éng"
elseif id == 101 then
return "D­îc V­¬ng §éng"
elseif id == 187 then
return "TÇn L¨ng"
else
return "Map Lçi"
end
end


function tenphanthuong(i)
if i == 1 then
return "Tiªn Th¶o Lé 6 Giê "
elseif i == 2 then
return "N÷ Nhi Hång 6 Giê "
elseif i == 3 then
return "Vâ L©m MËt TÞch"
elseif i == 4 then
return "TÈy Tñy Kinh"
elseif i == 5 then
return "Kim Nguyªn B¶o"
elseif i == 6 then
return "Tiªn Th¶o Lé 3 Giê "
elseif i == 7 then
return "N÷ Nhi Hång 3 Giê "
elseif i == 8 then
return "Thñy Tinh"
elseif i == 9 then
return "50 V¹n L­îng"
elseif i == 10 then
return "10 Vµng"
elseif i == 11 then
return "Tiªn Th¶o Lé 1 Giê "
elseif i == 12 then
return "N÷ Nhi Hång 1 Giê "
elseif i == 13 then
return "Tinh Hång B¶o Th¹ch"
elseif i == 14 then
return "20 V¹n L­îng"
elseif i == 15 then
return "5 Vµng"
else
return "2 triÖu kinh nghiÖm"
end
end


function inloglixi(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/RuongVang.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function randomphanthuong(id)
if id == 1 then
	sx = random(1,100)
	if sx < 30 then
		AddEventItem(120)
		return 1
	elseif sx >= 30 and sx < 80 then
		AddEventItem(116)
		return 2
	elseif sx >= 80 and sx < 90 then
		AddEventItem(0)
		return 3
	elseif sx >= 90 and sx < 99 then
		AddEventItem(1)
		return 4
	else
		AddEventItem(17)
		return 5
	end
elseif id == 2 then
	sx = random(1,100)
	if sx < 20 then
		AddEventItem(119)
		return 6
	elseif sx >= 20 and sx < 40 then
		AddEventItem(115)
		return 7
	elseif sx >= 40 and sx < 50 then
		AddEventItem(random(28,30))
		return 8
	elseif sx >= 50 and sx < 99 then
		Earn(500000)
		return 9
	else
		SetTask(99,GetTask(99)+10)
		SetTask(101,GetTask(101)+10)
		return 10
	end
elseif id == 3 then
		sx = random(1,100)
	if sx < 20 then
		AddEventItem(117)
		return 11
	elseif sx >= 20 and sx < 40 then
		AddEventItem(118)
		return 12
	elseif sx >= 40 and sx < 50 then
		AddEventItem(31)
		return 13
	elseif sx >= 50 and sx < 99 then
		Earn(200000)
		return 14
	else
		SetTask(99,GetTask(99)+5)
		SetTask(101,GetTask(101)+5)
		return 15
	end
elseif id == 4 then
	AddOwnExp(2000000)
	return 16
end
end
