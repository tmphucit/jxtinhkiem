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
	Msg2Player("Bπn chÿ s®n boss 1 m◊nh, nhÀn Æ≠Óc 500.000 kinh nghi÷m")
	-- Msg2SubWorld("ßπi hi÷p ["..GetName().."] Æ∑ Æ¨n th©n ti™u di÷t boss, nhÀn Æ≠Óc 5.000.000 kinh nghi÷m ")

	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if GetName() ~= name then
				if w == w1 and (x > x1-40 and x < x1+40) and (y > y-80 and y < y+80) then
					AddOwnExp(100000)
					Msg2Player("Bπn Î trong khu v˘c s®n boss, nhÀn Æ≠Óc 100.000 kinh nghi÷m")
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
					Msg2Player("Bπn thuÈc nh„m ti™u di÷t Boss, nhÀn Æ≠Óc 200.000 kinh nghi÷m")

				elseif w == w1 and (x > x1-40 and x < x1+40) and (y > y-80 and y < y+80) then
					AddOwnExp(100000)
					Msg2Player("Bπn Î trong khu v˘c s®n boss, nhÀn Æ≠Óc 100.000 kinh nghi÷m")
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
Msg2Player("<color=yellow>ßπi hi÷p ["..GetName().."] Æ∏nh boss l÷nh bµi nhÀn Æ≠Óc:")

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
return "Ba L®ng Huy÷n"
elseif w == 70 then
return "VÚ L®ng S¨n"
elseif w == 74 then
return "Mi™u L‹nh"
elseif w == 54 then
return "Nam Nhπc Tr n"
elseif w == 11 then
return "ßπi L˝ "
elseif w == 18 then
return "Thµnh ß´ "
elseif w == 16 then
return "D≠¨ng Ch©u"
elseif w == 15 then
return "T≠¨ng D≠¨ng"
elseif w == 9 then
return "Ph≠Óng T≠Íng"
elseif w == 17 then
return "Ph≠Óng T≠Íng"
elseif w == 3 then
return "Chu Ti™n Tr n"
elseif w == 8 then
return "PhÙc Ng≠u S¨n ß´ng"
elseif w == 91 then
return "K™ Qu∏n ßÈng"
elseif w == 41 then
return " PhÙc Ng≠u S¨n T©y"
elseif w == 50 then
return "Thi™n T©m ßÈng"
elseif w == 78 then
return "T≠¨ng D≠¨ng MÀt ßπo"
elseif w == 21 then
return "Mπn Bæc Th∂o Nguy™n"
elseif w == 102 then
return "L©m Du Quan"
elseif w == 104 then
return "Ch©n NÛi Tr≠Íng Bπch"
elseif w == 105 then
return "Tr≠Íng Bπch S¨n Bæc"
elseif w == 38 then
return "Thi’t Th∏p T«ng 1"
elseif w == 39 then
return "Thi’t Th∏p T«ng 2"
elseif w == 92 then
return "ThÙc C≠¨ng S¨n"
elseif w == 56 then
return "NÈi Th t ßÈng"
elseif w == 57 then
return "Th t S∏t ßÈng"
elseif w == 13 then
return "Ki’m C∏c T©y Bæc"
elseif w == 14 then
return "Kim Quang ßÈng"
elseif w == 62 then
return "T·a V©n ßÈng"
elseif w == 63 then
return "Kinh Hoµng ßÈng"
elseif w == 64 then
return "D≠¨ng Trung ßÈng"
elseif w == 65 then
return "CÊ D≠¨ng ßÈng"
elseif w == 79 then
return "Mπc Cao QuÀt"
elseif w == 66 then
return "Giang T©n Th´n"
elseif w == 46 then
return "Phong L®ng ßÈ"
elseif w == 67 then
return "Thanh Thµnh S¨n"
elseif w == 68 then
return "Bπch V©n ßÈng"
elseif w == 73 then
return "PhÙc L≠u ßÈng"
elseif w == 76 then
return "ßµo Hoa Nguy™n"
elseif w == 2 then
return "Hoa S¨n"
elseif w == 109 then
return "Sa Mπc 1"
elseif w == 110 then
return "Sa Mπc 2"
elseif w == 24 then
return "Vi S¨n ß∂o"
elseif w == 217 then
return "Tr≠Íng Ca M´n"
elseif w == 46 then
return "Phong L®ng ßÈ "
elseif w == 22 then
return "Tr≠Íng Bπch S¨n Nam "
elseif w == 107 then
return "Sa Mπc ßπi Bi”u "
elseif w == 100 then
return "Tuy’t B∏o ßÈng "
elseif w == 99 then
return "D≠Óc V≠¨ng ßÈng "
elseif w == 93 then
return "Ti’n CËc ßÈng "
elseif w == 111 then
return "Sa Mπc 3 "
else
return "Ch≠a ß∆t T™n"
end
end

