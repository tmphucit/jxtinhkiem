function OnDeath()

end


function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))
idx = PlayerIndex
numteam = GetTeamSize()
team = GetTeam()
name = GetName()
w1,x1,y1 = GetWorldPos()

if GetTeam() == nill then
	AddOwnExp(500000)
	Msg2Player("B�n ch� s�n boss 1 m�nh, nh�n ���c 500.000 kinh nghi�m")
	-- Msg2SubWorld("��i hi�p ["..GetName().."] �� ��n th�n ti�u di�t boss, nh�n ���c 5.000.000 kinh nghi�m ")

	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if GetName() ~= name then
				if w == w1 and (x > x1-40 and x < x1+40) and (y > y-80 and y < y+80) then
					AddOwnExp(100000)
					Msg2Player("B�n � trong khu v�c s�n boss, nh�n ���c 100.000 kinh nghi�m")
				end
			end
		end
	end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
				if GetTeam() == team then
					AddOwnExp(200000)
					Msg2Player("B�n thu�c nh�m ti�u di�t Boss, nh�n ���c 200.000 kinh nghi�m")

				elseif w == w1 and (x > x1-40 and x < x1+40) and (y > y-80 and y < y+80) then
					AddOwnExp(100000)
					Msg2Player("B�n � trong khu v�c s�n boss, nh�n ���c 100.000 kinh nghi�m")
				end
		end
	end
end
PlayerIndex = idx

end

function OnDeath()
ngay = tonumber(date("%d"))
idx = PlayerIndex
numteam = GetTeamSize()
team = GetTeam()
name = GetName()
w1,x1,y1 = GetWorldPos()
Msg2Player("<color=yellow>��i hi�p ["..GetName().."] ��nh boss l�nh b�i nh�n ���c:")

for t=1,5 do
	if CheckFreeBoxItem(0,3,3,1) ~= 0 then
	sx = RandomNew(1,100)
	if sx < 20 then
		idxitem = AddEventItem(273)
		Msg2Player("- "..GetNameItemBox(idxitem).." ")
	elseif sx < 80 then
		idxitem = AddEventItem(random(28,31))
		Msg2Player("- "..GetNameItemBox(idxitem).." ")
	elseif sx == 50 then
		idxitem = AddEventItem(random(0,2))
		Msg2Player("- "..GetNameItemBox(idxitem).." ")
	else
		idxitem = AddEventItem(random(75,102))
		Msg2Player("- "..GetNameItemBox(idxitem).." ")
	end
	end
end
PlayerIndex = idx
end



function checktenmap(id)
w = id
if w == 53 then
return "Ba L�ng Huy�n"
elseif w == 70 then
return "V� L�ng S�n"
elseif w == 74 then
return "Mi�u L�nh"
elseif w == 54 then
return "Nam Nh�c Tr�n"
elseif w == 11 then
return "��i L� "
elseif w == 18 then
return "Th�nh �� "
elseif w == 16 then
return "D��ng Ch�u"
elseif w == 15 then
return "T��ng D��ng"
elseif w == 9 then
return "Ph��ng T��ng"
elseif w == 17 then
return "Ph��ng T��ng"
elseif w == 3 then
return "Chu Ti�n Tr�n"
elseif w == 8 then
return "Ph�c Ng�u S�n ��ng"
elseif w == 91 then
return "K� Qu�n ��ng"
elseif w == 41 then
return " Ph�c Ng�u S�n T�y"
elseif w == 50 then
return "Thi�n T�m ��ng"
elseif w == 78 then
return "T��ng D��ng M�t ��o"
elseif w == 21 then
return "M�n B�c Th�o Nguy�n"
elseif w == 102 then
return "L�m Du Quan"
elseif w == 104 then
return "Ch�n N�i Tr��ng B�ch"
elseif w == 105 then
return "Tr��ng B�ch S�n B�c"
elseif w == 38 then
return "Thi�t Th�p T�ng 1"
elseif w == 39 then
return "Thi�t Th�p T�ng 2"
elseif w == 92 then
return "Th�c C��ng S�n"
elseif w == 56 then
return "N�i Th�t ��ng"
elseif w == 57 then
return "Th�t S�t ��ng"
elseif w == 13 then
return "Ki�m C�c T�y B�c"
elseif w == 14 then
return "Kim Quang ��ng"
elseif w == 62 then
return "T�a V�n ��ng"
elseif w == 63 then
return "Kinh Ho�ng ��ng"
elseif w == 64 then
return "D��ng Trung ��ng"
elseif w == 65 then
return "C� D��ng ��ng"
elseif w == 79 then
return "M�c Cao Qu�t"
elseif w == 66 then
return "Giang T�n Th�n"
elseif w == 46 then
return "Phong L�ng ��"
elseif w == 67 then
return "Thanh Th�nh S�n"
elseif w == 68 then
return "B�ch V�n ��ng"
elseif w == 73 then
return "Ph�c L�u ��ng"
elseif w == 76 then
return "��o Hoa Nguy�n"
elseif w == 2 then
return "Hoa S�n"
elseif w == 109 then
return "Sa M�c 1"
elseif w == 110 then
return "Sa M�c 2"
elseif w == 24 then
return "Vi S�n ��o"
elseif w == 217 then
return "Tr��ng Ca M�n"
elseif w == 46 then
return "Phong L�ng �� "
elseif w == 22 then
return "Tr��ng B�ch S�n Nam "
elseif w == 107 then
return "Sa M�c ��i Bi�u "
elseif w == 100 then
return "Tuy�t B�o ��ng "
elseif w == 99 then
return "D��c V��ng ��ng "
elseif w == 93 then
return "Ti�n C�c ��ng "
elseif w == 111 then
return "Sa M�c 3 "
else
return "Ch�a ��t T�n"
end
end

