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
		
		ngay = tonumber(date("%d"))
		if floor(GetTask(131)/1000) ~= ngay then
		SetTask(131,ngay*1000)
		Msg2Player("Reset gi�i h�n Boss K� Ham Ch�i qua ng�y m�i !")
		end
		
		if mod(GetTask(131),1000) >= 20 then
		Talk(1,"","B�n �� nh�n �� 20 l�n ph�n th��ng boss trong ng�y h�m nay !")
		return
		end

		SetTask(131,GetTask(131) + 1)
		for k=1,5 do AddOwnExp(1000000) end
		Msg2Player("B�n nh�n ���c 5.000.000 kinh nghi�m !")
		Msg2Player("Gi�i h�n boss: "..mod(GetTask(131),1000).." / 20 con !")
	end
	end
end
end
