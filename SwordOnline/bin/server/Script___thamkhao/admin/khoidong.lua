Include("\\script\\Pass\\blh.lua")
Include("\\script\\Pass\\quaicacmap.lua")
Include("\\script\\Pass\\boss.lua");
Include("\\Script\\Pass\\hoatdong.lua");
Include("\\script\\tongkim\\addquaitongkim.lua");
Include("\\script\\Pass\\daotaytuy.lua");
Include("\\script\\hoadang\\hoadang.lua");

mangst = {}



function main()
taoquahuyhoang()
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
return "Ti�n Th�o L� 6 Gi� "
elseif i == 2 then
return "N� Nhi H�ng 6 Gi� "
elseif i == 3 then
return "V� L�m M�t T�ch"
elseif i == 4 then
return "T�y T�y Kinh"
elseif i == 5 then
return "Kim Nguy�n B�o"
elseif i == 6 then
return "Ti�n Th�o L� 3 Gi� "
elseif i == 7 then
return "N� Nhi H�ng 3 Gi� "
elseif i == 8 then
return "Th�y Tinh"
elseif i == 9 then
return "50 V�n L��ng"
elseif i == 10 then
return "10 V�ng"
elseif i == 11 then
return "Ti�n Th�o L� 1 Gi� "
elseif i == 12 then
return "N� Nhi H�ng 1 Gi� "
elseif i == 13 then
return "Tinh H�ng B�o Th�ch"
elseif i == 14 then
return "20 V�n L��ng"
elseif i == 15 then
return "5 V�ng"
else
return "2 tri�u kinh nghi�m"
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
return "Ba L�ng Huy�n"
elseif id == 15 then
return "T��ng D��ng"
elseif id == 17 then
return "Ph��ng T��ng"
elseif id == 9 then
return "Bi�n Kinh"
elseif id == 18 then -- CHUA ADD NE
return "Th�nh ��"
elseif id == 66 then
return "Giang T�n Th�n"
elseif id == 3 then
return "Chu Ti�n Tr�n"
elseif id == 2 then
return "Hoa S�n"
elseif id == 8 then
return "Ph�c Ng�u S�n"
elseif id == 100 then
return "Tuy�t B�o ��ng"
elseif id == 101 then
return "D��c V��ng ��ng"
elseif id == 187 then
return "T�n L�ng"
else
return "Map L�i"
end
end

