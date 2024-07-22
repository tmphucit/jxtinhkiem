
function OnDrop(idx)
w,x,y = GetWorldPos()
bang = GetTongName()
team = GetTeam()
name = GetName()
tenboss = GetNpcName(idx)
if bang == "" then
Msg2SubWorld("<color=yellow>[H÷ ThËng] <color=red>ChÛc mıng Æπi hi÷p ["..name.."] Æ∑ ti™u di÷t <color=green>"..tenboss.."")
else
Msg2SubWorld("<color=yellow>[H÷ ThËng] <color=red>ChÛc mıng Æπi hi÷p ["..name.."] - Bang hÈi ["..bang.."] Æ∑ ti™u di÷t <color=green>"..tenboss.."")
end

sxthienhoang = RandomNew(1,100)
if sxthienhoang < 70 then -- 14%
	sxthienhoang2 = random(1,9)
	if sxthienhoang2 == 1 then
		idxitem = AddItem(0,7,15,random(5,10),0,0,0)
		Msg2SubWorld("ßπi hi÷p "..GetName().."  may mæn nhÀn Æ≠Óc: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 2 then
		idxitem = AddItem(0,2,30,random(5,10),0,0,0)
		Msg2SubWorld("ßπi hi÷p "..GetName().."  may mæn nhÀn Æ≠Óc: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 3 then
		idxitem = AddItem(0,8,3,random(5,10),0,0,0)
		Msg2SubWorld("ßπi hi÷p "..GetName().."  may mæn nhÀn Æ≠Óc: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 4 then
		idxitem = AddItem(0,6,3,random(5,10),0,0,0)
		Msg2SubWorld("ßπi hi÷p "..GetName().."  may mæn nhÀn Æ≠Óc: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 5 then
		idxitem = AddItem(0,5,5,random(5,10),0,0,0)
		Msg2SubWorld("ßπi hi÷p "..GetName().."  may mæn nhÀn Æ≠Óc: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 6 then
		idxitem = AddEventItem(710)
		Msg2SubWorld("ßπi hi÷p "..GetName().."  may mæn nhÀn Æ≠Óc: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 7 then
		idxitem = AddEventItem(711)
		Msg2SubWorld("ßπi hi÷p "..GetName().."  may mæn nhÀn Æ≠Óc: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 8 then
		idxitem = AddEventItem(712)
		Msg2SubWorld("ßπi hi÷p "..GetName().."  may mæn nhÀn Æ≠Óc: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif sxthienhoang2 == 9 then
		idxitem = AddEventItem(243)
		Msg2SubWorld("ßπi hi÷p "..GetName().."  may mæn nhÀn Æ≠Óc: <color=pink>"..GetNameItemBox(idxitem).." ")
	end
end	

end

function OnDeath()
ngay = tonumber(date("%d"))
idx = PlayerIndex
numteam = GetTeamSize()
team = GetTeam()
name = GetName()
w1,x1,y1 = GetWorldPos()
Msg2SubWorld("<color=yellow>ßπi hi÷p ["..GetName().."] nhÀn Æ≠Óc:")



for t=1,6 do
	if CheckFreeBoxItem(0,3,3,1) ~= 0 then
	sx = RandomNew(1,100)
		if sx < 10 then
		idxitem = AddEventItem(random(0,1))
		Msg2SubWorld("- "..GetNameItemBox(idxitem).." ")
	elseif sx < 50 then
		idxitem = AddEventItem(655)
		Msg2SubWorld("- "..GetNameItemBox(idxitem).." ")
	elseif sx < 75 then
		idxitem = AddEventItem(random(28,31))
		Msg2SubWorld("- "..GetNameItemBox(idxitem).." ")
	elseif sx < 95 then
		idxitem = AddEventItem(random(389,400))
		Msg2SubWorld("- "..GetNameItemBox(idxitem).." ")
	else
		idxitem = AddEventItem(random(283,286))
		Msg2SubWorld("- "..GetNameItemBox(idxitem).." ")
	end
	end
end

sxhk = RandomNew(1,100)
if ngay == 24 and GetGlbMissionV(26) == 0 and sxhk < 50 and CheckFreeBoxItem(0,3,36,1) ~= 0 then
	SetGlbMissionV(26, 999)
	idxitem = AddItem(0,3,36,1,0,0,0)
	Msg2SubWorld("- <color=pink>"..GetNameItemBox(idxitem).."")
	
end


if GetTeam() == nill then
	AddOwnExp(10000000)
	Msg2Player("Bπn chÿ s®n boss 1 m◊nh, nhÀn Æ≠Óc 10.000.000 kinh nghi÷m")
	Msg2SubWorld("ßπi hi÷p ["..GetName().."] Æ∑ Æ¨n th©n ti™u di÷t boss, nhÀn Æ≠Óc 10.000.000 kinh nghi÷m ")
	
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if GetName() ~= name then
				if w == w1 and (x > x1-40 and x < x1+40) and (y > y-80 and y < y+80) then
					AddOwnExp(5000000)
					Msg2Player("Bπn Î trong khu v˘c s®n boss, nhÀn Æ≠Óc 5.000.000 kinh nghi÷m")
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
					AddOwnExp(10000000)
					Msg2Player("Bπn thuÈc nh„m ti™u di÷t Boss, nhÀn Æ≠Óc 10.000.000 kinh nghi÷m")
				elseif w == w1 and (x > x1-40 and x < x1+40) and (y > y-80 and y < y+80) then
					AddOwnExp(5000000)
					Msg2Player("Bπn Î trong khu v˘c s®n boss, nhÀn Æ≠Óc 5.000.000 kinh nghi÷m")
				end
		end
	end
end
PlayerIndex = idx
end
