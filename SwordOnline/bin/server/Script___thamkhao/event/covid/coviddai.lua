
function OnDeath()
w,x,y = GetWorldPos()
name = GetName()
AddEventItem(687)
Earn(2000000)
AddEventItem(685)
AddEventItem(688)
AddEventItem(688)
AddOwnExp(50000000)
Msg2SubWorld("<color=yellow>Ch�c m�ng ��i hi�p "..GetName().." �� ti�u di�t Boss Covid ��i nh�n ���c: 1 M� B�i 8x, 200 v�n l��ng, 50 tri�u kinh nghi�m, 1 V� tham d� Tuy�t Th� Anh H�ng, 2 B�o R��ng Tuy�t Ph�m")
idxp = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w1,x1,y1 = GetWorldPos()
	if w == w1 and GetName() ~= name then
		AddOwnExp(20000000)
		Msg2Player("B�n nh�n ���c 20.000.000 kinh nghi�m !")
	end
end
PlayerIndex = idxp

end

function OnDrop()

end