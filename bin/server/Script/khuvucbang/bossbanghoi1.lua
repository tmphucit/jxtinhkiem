function OnDeath()
w,x,y = GetWorldPos()
tongname = GetTongName()
Msg2World("Th�nh vi�n "..GetName().." �� k�t th�c Boss Bang H�i v� mang v� cho Bang "..GetTongName().." r�t nhi�u ph�n th��ng qu� gi� !")
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w1,x1,y1 = GetWorldPos()
	if w == w1 and GetTongName() == tongname then
		AddOwnExp(10000000)
		Msg2Player("B�n nh�n ���c 10.000.000 kinh nghi�m t� Boss Bang H�i !")	
		for k=1,10 do AddEventItem(23) end
		Msg2Player("B�n nh�n ���c 10 Khi�u Chi�n L�nh !")
		sxtt = random(1,100)
		if sxtt < 3 then
			sx2 = random(1,30)
			if sx2 == 1 then
				AddEventItem(0)
				Msg2World("Ch�c m�ng "..GetName().." may m�n nh�n ���c 1 <color=yellow>V� L�m M�t T�ch ")
			elseif sx2 == 2 then
				AddEventItem(1)
				Msg2World("Ch�c m�ng "..GetName().." may m�n nh�n ���c 1 <color=yellow>T�y T�y Kinh ")
			elseif sx2 == 3 then
				AddEventItem(28)
				Msg2World("Ch�c m�ng "..GetName().." may m�n nh�n ���c 1 <color=yellow>Lam Th�y Tinh ")
			elseif sx2 == 4 then
				AddEventItem(29)
				Msg2World("Ch�c m�ng "..GetName().." may m�n nh�n ���c 1 <color=yellow>T� Th�y Tinh ")
			elseif sx2 == 5 then
				AddEventItem(30)
				Msg2World("Ch�c m�ng "..GetName().." may m�n nh�n ���c 1 <color=yellow>L�c Th�y Tinh ")
			elseif sx2 == 6 then
				AddEventItem(31)
				Msg2World("Ch�c m�ng "..GetName().." may m�n nh�n ���c 1 <color=yellow>Tinh H�ng B�o Th�ch ")
			elseif sx2 == 7 or sx2 == 8 or sx2 == 9 or sx2 == 10 then
				AddEventItem(117)
				Msg2World("Ch�c m�ng "..GetName().." may m�n nh�n ���c 1 <color=yellow>Ti�n Th�o L� 1 gi� ")
			elseif sx2 == 11 or sx2 == 12 or sx2 == 13 or sx2 == 14 then
				AddEventItem(117)
				Msg2World("Ch�c m�ng "..GetName().." may m�n nh�n ���c 1 <color=yellow>N� Nhi H�ng 1 gi� ")
			elseif sx2 == 15 or sx2 == 16 then
				AddEventItem(119)
				Msg2World("Ch�c m�ng "..GetName().." may m�n nh�n ���c 1 <color=yellow>Ti�n Th�o L� 3 gi� ")
			elseif sx2 == 17 or sx2 == 18 then
				AddEventItem(115)
				Msg2World("Ch�c m�ng "..GetName().." may m�n nh�n ���c 1 <color=yellow>N� Nhi H�ng 3 gi� ")
			else
				AddEventItem(2)
				Msg2World("Ch�c m�ng "..GetName().." may m�n nh�n ���c 1 <color=yellow>Thi�t La H�n ")	
			end
		else
			tien = random(1,10)
			Earn(tien*10000)
			Msg2Player("B�n nh�n ���c ph�n th��ng ng�u nhi�n: <color=yellow>"..tien.." v�n !")
		end	
		Talk(0,"")
	end	
end
end

function OnDrop()
end