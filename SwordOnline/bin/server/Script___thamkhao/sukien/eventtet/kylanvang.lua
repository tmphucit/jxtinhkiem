function OnDeath()

ngay = tonumber(date("%d"))
w,x,y = GetWorldPos()
if w == 2 then
SetGlbMissionV(43 , GetGlbMissionV(43) - 1)
Msg2World("<color=yellow>"..GetName().." �� ti�u di�t Boss K� L�n V�ng ")
Msg2World("S� l��ng Boss K� L�n V�ng c�n l�i: <color=pink>"..GetGlbMissionV(43).." con")
elseif w == 24 then
SetGlbMissionV(44 , GetGlbMissionV(44) - 1)
Msg2World("<color=yellow>"..GetName().." �� ti�u di�t Boss K� L�n V�ng ")
Msg2World("S� l��ng Boss K� L�n V�ng c�n l�i: <color=pink>"..GetGlbMissionV(44).." con")
end

team = GetTeam()

if GetTeamSize() < 3 then
Talk(1,"","T� ��i d��i 3 ng��i, kh�ng nh�n ���c ph�n th��ng")
return
end


if GetItemCount(206) > 0 then
DelItem(206)
AddEventItem(129)
Msg2Player("B�n nh�n ���c 1 <color=pink>Ho�ng Kim S�t")
end
AddEventItem(327)
Msg2Player("B�n nh�n ���c 1 <color=pink>Ph�o Hoa N�m M�i")
idx = PlayerIndex
if GetTeam() ~= nill then
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		w1,x1,y1 = GetWorldPos()
		if GetTeam() == team then
			if w == w1 then
				if floor(GetTask(330) / 1000) ~= ngay then
					SetTask(330 , ngay * 1000)
				end
				if mod ( GetTask(330) , ngay*1000) < 10 then
					AddOwnExp(20000000)
					Msg2Player("B�n nh�n ���c 20.000.000 kinh nghi�m")
					SetTask(330 , GetTask(330) + 1)
					Msg2Player("S� l��ng Boss ti�u di�t trong ng�y: "..mod ( GetTask(330) , ngay*1000).." / 10 con")
					SetTask(484, GetTask(484) + 5)
					Msg2Player("B�n nh�n ���c <color=green>5 �i�m T�ch L�y VIP")
				else
					Talk(1,"","B�n �� ti�u di�t t�i �a 10 Boss K� L�n V�ng trong ng�y h�m nay !")
				end
			else
				Msg2Player("B�n kh�ng c�ng b�n �� Boss n�n kh�ng ���c nh�n ph�n th��ng")
			end
		end
	end
end
PlayerIndex = idx

end

function OnDrop(NpcIdx)

end

