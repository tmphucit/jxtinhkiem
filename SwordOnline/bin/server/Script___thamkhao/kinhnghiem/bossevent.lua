function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))

team = GetTeam()
w,x,y = GetWorldPos()
map = w
if GetTeamSize() < 3 then
Talk(1,"","Kh�ng �� 3 th�nh vi�n nh�m, ko nh�n ���c v�t ph�m !")
return
end



DropEvent(NpcIdx)
if GetTeam() ~= nill then	
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
	if GetTeam() == team and w == map then	
		if floor(GetTask(135)/1000) ~= ngay then
		SetTask(135,ngay*1000)
		end
		if mod(GetTask(135),1000) < 20 then
		AddOwnExp(20000000)
		Msg2Player("B�n nh�n ���c 20.000.000 kinh nghi�m!")
		SetTask(135,GetTask(135) + 1)
		Msg2Player("Gi�i h�n boss: "..mod(GetTask(135),1000).." / 20")
		else
			Talk(1,"","B�n �� �� 20 con boss trong ng�y !")
		end
	end
	end
end
end
