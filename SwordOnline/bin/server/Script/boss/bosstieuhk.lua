function OnDrop_(NpcIdx)
w,x,y = GetWorldPos()
Msg2SubWorld("Boss Ti�u Ho�ng Kim <color=green>["..GetNpcName(NpcIdx).."] � "..checktenmap(w).."<color=white> �� b� nh�m c�a <color=yellow>"..GetName().." <color=red>ti�u di�t")
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))
idx = PlayerIndex
numteam = GetTeamSize()
team = GetTeam()
name = GetName()
w1,x1,y1 = GetWorldPos()

Msg2SubWorld("<color=green>[S� Ki�n] <color=white>Boss Ti�u Ho�ng Kim <color=yellow>["..GetNpcName(NpcIdx).."]<color=white> �� b� nh�m c�a "..GetName().." ti�u di�t")

--sxhk = RandomNew(1,100)
--if ngay == 3 and GetGlbMissionV(26) == 0 and sxhk < 50 and CheckFreeBoxItem(0,9,19,1) ~= 0 then
--	SetGlbMissionV(26, 999)
--	idxitem = AddItem(0,9,19,1,0,0,0)
--	Msg2SubWorld("- <color=pink>"..GetNameItemBox(idxitem).."")
--end
if GetTeam() == nill then
	AddOwnExp(5000000)
	Msg2Player("B�n ch� s�n boss 1 m�nh, nh�n ���c 5.000.000 kinh nghi�m")
	Msg2SubWorld("��i hi�p ["..GetName().."] �� ��n th�n ti�u di�t boss, nh�n ���c 5.000.000 kinh nghi�m ")

	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if GetName() ~= name then
				if w == w1 and (x > x1-40 and x < x1+40) and (y > y-80 and y < y+80) then
					AddOwnExp(1000000)
					Msg2Player("B�n � trong khu v�c s�n boss, nh�n ���c 1.000.000 kinh nghi�m")
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
					AddOwnExp(2000000)
					Msg2Player("B�n thu�c nh�m ti�u di�t Boss, nh�n ���c 2.000.000 kinh nghi�m")

				elseif w == w1 and (x > x1-40 and x < x1+40) and (y > y-80 and y < y+80) then
					AddOwnExp(1000000)
					Msg2Player("B�n � trong khu v�c s�n boss, nh�n ���c 1.000.000 kinh nghi�m")
				end
		end
	end
end
PlayerIndex = idx

end

function OnDeath_()
end

function OnDeath()
ngay = tonumber(date("%d"))
idx = PlayerIndex
numteam = GetTeamSize()
team = GetTeam()
name = GetName()
w1,x1,y1 = GetWorldPos()
Msg2SubWorld("<color=yellow>��i hi�p ["..GetName().."] nh�n ���c:")

for t=1,5 do
	if CheckFreeBoxItem(0,3,3,1) ~= 0 then
	sx = RandomNew(1,100)
	if sx < 50 then
		idxitem = AddEventItem(random(207,243))
		Msg2SubWorld("- "..GetNameItemBox(idxitem).." ")
	elseif sx < 80 then
		idxitem = AddEventItem(random(75,102))
		Msg2SubWorld("- "..GetNameItemBox(idxitem).." ")
	elseif sx < 95 then
		idxitem = AddEventItem(653)
		Msg2SubWorld("- "..GetNameItemBox(idxitem).." ")
	else
		idxitem = AddEventItem(random(28,31))
		Msg2SubWorld("- "..GetNameItemBox(idxitem).." ")
	end
	end
end

sxhk = RandomNew(1,100)
if ngay == 16 and GetGlbMissionV(26) == 0 and sxhk < 50 and CheckFreeBoxItem(0,3,36,1) ~= 0 then
	SetGlbMissionV(26, 999)
	sxthienhoang2 = random(1,9)
	if sxthienhoang2 == 1 then
		idxitem = AddItem(0,4,19,1,0,0,0)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 2 then
		idxitem = AddItem(0,2,79,1,0,0,0)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 3 then
		idxitem = AddItem(0,6,26,1,0,0,0)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 4 then
		idxitem = AddItem(0,5,24,1,0,0,0)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 5 then
		idxitem = AddItem(0,8,22,1,0,0,0)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 6 then
		idxitem = AddItem(0,7,41,1,0,0,0)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 7 then
		idxitem = AddItem(0,9,19,1,0,0,0)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 8 then
		idxitem = AddItem(0,3,35,1,0,0,0)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 9 then
		idxitem = AddItem(0,3,36,1,0,0,0)
		Msg2SubWorld("��i hi�p "..GetName().."  may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	end
	Msg2SubWorld("- <color=pink>"..GetNameItemBox(idxitem).."")
	
end


if GetTeam() == nill then
	AddOwnExp(1000000)
	Msg2Player("B�n ch� s�n boss 1 m�nh, nh�n ���c 1.000.000 kinh nghi�m")
	Msg2SubWorld("��i hi�p ["..GetName().."] �� ��n th�n ti�u di�t boss, nh�n ���c 1.000.000 kinh nghi�m ")
	
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if GetName() ~= name then
				if w == w1 and (x > x1-40 and x < x1+40) and (y > y-80 and y < y+80) then
					AddOwnExp(500000)
					Msg2Player("B�n � trong khu v�c s�n boss, nh�n ���c 500.000 kinh nghi�m")
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
					AddOwnExp(1000000)
					Msg2Player("B�n thu�c nh�m ti�u di�t Boss, nh�n ���c 1.000.000 kinh nghi�m")
				elseif w == w1 and (x > x1-40 and x < x1+40) and (y > y-80 and y < y+80) then
					AddOwnExp(500000)
					Msg2Player("B�n � trong khu v�c s�n boss, nh�n ���c 500.000 kinh nghi�m")
				end
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