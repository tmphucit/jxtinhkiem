Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\lib\\lib_server.lua")
-- Include("\\script\\lib\\lib_map.lua")
Include("\\script\\addnpccacmap\\addnpc.lua")
Include("\\script\\addnpccacmap\\quaicacmap.lua")
Include("\\script\\addnpccacmap\\boss.lua");
Include("\\script\\addnpccacmap\\hoatdong.lua");
Include("\\script\\addnpccacmap\\addquai\\addquai_head.lua");
Include("\\script\\hoatdong\\tongkim\\addquaitongkim.lua");
Include("\\script\\addnpccacmap\\daotaytuy.lua");
Include("\\script\\hoatdong\\event_vantieu\\lib_vt.lua")

mangst = {}



function main()
-- AddBaLangHuyenQuai()
addnpcblh()
addquai()
addboss()
addquaitongkim()
daotaytuy()
-- addnpcvantieu()
-- addtrapvantieu()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
SetTimeNew(gio,phut,giay);
print(" "..gio.." "..phut.." "..giay.." ")
end;




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
return "Ph­îng T­êng"
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

