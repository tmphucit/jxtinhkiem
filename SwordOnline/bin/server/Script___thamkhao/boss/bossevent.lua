function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))

team = GetTeam()
w,x,y = GetWorldPos()
map = w
Msg2SubWorld("Ch�c m�ng ��i hi�p ["..GetName().."] �� ti�u di�t Boss Ti�u Tinh Linh v� mang 1.000.000 v� cho nh�m c�a m�nh")

DropEvent(NpcIdx)
if GetTeam() == nill then
	for k=1,1000 do AddOwnExp(1000) end
	Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m ti�u di�t Boss Ti�u Tinh Linh")
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then	
			for k=1,1000 do AddOwnExp(1000) end
			Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m")
	end
	end
end
end
