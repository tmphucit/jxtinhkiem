function OnDeath()

ngay = tonumber(date("%d"))
SetGlbMissionV(42 , GetGlbMissionV(42) - 1)
Msg2World("<color=yellow>"..GetName().." �� ti�u di�t Boss Gi�c Ngo�i X�m")
Msg2World("S� l��ng Boss Gi�c Ngo�i X�m c�n l�i: <color=pink>"..GetGlbMissionV(42).." con")
team = GetTeam()

if GetTeamSize() < 3 then
Talk(1,"","T� ��i d��i 3 ng��i, kh�ng nh�n ���c ph�n th��ng")
return
end

idx = PlayerIndex
if GetTeam() ~= nill then
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
		if GetTeam() == team and w == 2 then
		
			if floor(GetTask(330) / 1000) ~= ngay then
				SetTask(330 , ngay * 1000)
			end
			if mod ( GetTask(330) , ngay*1000) < 10 then
				AddOwnExp(1000000)
				Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m")
				SetTask(100, GetTask(100) + 1)
				Msg2Player("B�n nh�n ���c 1 �i�m danh v�ng ")
				AddEventItem(660)
				Msg2Player("B�n nh�n ���c 1 Cu�n Len")
				SetTask(330 , GetTask(330) + 1)
				Msg2Player("S� l��ng Boss ti�u di�t trong ng�y: "..mod ( GetTask(330) , ngay*1000).." / 10 con")
			else
				Talk(1,"","B�n �� ti�u di�t t�i �a 10 Boss Gi�c Ngo�i X�m trong ng�y h�m nay !")
			end
		end
	end
end
PlayerIndex = idx

end

function OnDrop(NpcIdx)
DropEvent(NpcIdx)
end

