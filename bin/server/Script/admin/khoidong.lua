Include("\\script\\Pass\\blh.lua")
Include("\\script\\Pass\\quaicacmap.lua")
Include("\\script\\Pass\\boss.lua");
Include("\\Script\\Pass\\hoatdong.lua");
Include("\\script\\tongkim\\addquaitongkim.lua");
Include("\\script\\Pass\\daotaytuy.lua");
Include("\\script\\hoadang\\hoadang.lua");

mangst = {}



function main()
--taoquahuyhoang()
addnpcblh()
addquai()
addboss()
addquaitongkim()
daotaytuy()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
SetTimeNew(gio,phut,giay);
print(" "..gio.." "..phut.." "..giay.." ")
end;



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

function checkmap(vt)
if vt == 1 then
	return random(1,129)
elseif vt == 2 then
	return random(130,223)
elseif vt == 3 then
	return random(224,304)
elseif vt == 4 then
	return random(305,433)
elseif vt == 5 then
	return random(434,473)
elseif vt == 6 then
	return random(474,587)
elseif vt == 7 then
	return random(588,621) -- add them
elseif vt == 8 then
	return random(622,652)
elseif vt == 9 then
	return random(653,655)
elseif vt == 10 then
	return random(656,664)
elseif vt == 11 then
	return random(665,683)
else
	return 1
end
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

