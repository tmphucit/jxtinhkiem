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

	Msg2SubWorld("<color=pink>[R��ng V�ng]: Ch�c m�ng "..GetName().." �� t�m ���c R��ng V�ng � ph�t th� "..phut.." v� nh�n ���c ph�n th��ng "..tenphanthuong(idpt).." ")
	AddOwnExp(2000000)
	Msg2Player("B�n nh�n ���c 2 tri�u kinh nghi�m t�m th�y R��ng V�ng !")
	
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
