function OnDeath()

ngay = tonumber(date("%d"))
SetGlbMissionV(42 , GetGlbMissionV(42) - 1)
Msg2World("<color=yellow>"..GetName().." �� ti�u di�t Boss Ph�n �� ")
Msg2World("S� l��ng Boss K� Ph�n �� c�n l�i: <color=pink>"..GetGlbMissionV(42).." con")
team = GetTeam()

if GetTeamSize() < 3 then
Talk(1,"","T� ��i d��i 3 ng��i, kh�ng nh�n ���c ph�n th��ng")
return
end

sx = random(1,100)
if sx < 10 then
	idxitem = AddEventItem(random(28,30))
	Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." ti�u di�t Boss Ph�n �� nh�n ���c "..GetNameItemBox(idxitem).."")
end

sx = random(1,100)
if sx < 5 then
	idxitem = AddEventItem(406)
	Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." ti�u di�t Boss Ph�n �� nh�n ���c "..GetNameItemBox(idxitem).."")
end


idx = PlayerIndex
if GetTeam() ~= nill then
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetTeam() == team then
			if floor(GetTask(330) / 1000) ~= ngay then
				SetTask(330 , ngay * 1000)
			end
			if mod ( GetTask(330) , ngay*1000) < 10 then
				AddOwnExp(5000000)
				Msg2Player("B�n nh�n ���c 5000000 kinh nghi�m")
				SetTask(330 , GetTask(330) + 1)
				Msg2Player("S� l��ng Boss ti�u di�t trong ng�y: "..mod ( GetTask(330) , ngay*1000).." / 10 con")
			else
				Talk(1,"","B�n �� ti�u di�t t�i �a 10 Boss K� Ph�n �� trong ng�y h�m nay !")
			end
		end
	end
end
PlayerIndex = idx

end

function OnDrop(NpcIdx)

end

