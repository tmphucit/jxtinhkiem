function OnDeath()
	idxitem = AddEventItem(random(28,31))
	Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." Dame K�t Th�c nh�n ���c: "..GetNameItemBox(idxitem).."")
bang = GetTongName()
if bang ~= "" then
	Msg2SubWorld("To�n b� th�nh vi�n bang h�i ["..bang.."] nh�n ���c 5.000.000 kinh nghi�m")
end
if bang ~= "" then
	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w1,x1,y1 = GetWorldPos()
		if GetTongName() == bang then
				AddOwnExp(5000000)
				Msg2Player("B�n nh�n ���c 5.000.000 kinh nghi�m")
				if GetTongFigure() == 3 then
					Earn(2000000)
					Msg2SubWorld("Bang ch� "..GetName().." nh�n ���c 200 v�n l��ng")
				end
		end
	end
	PlayerIndex = idxplayer
else
Msg2Player("Ng��i kh�ng c� bang h�i, kh�ng nh�n th�m ph�n th��ng kh�c ")
end
end

function OnDrop(NpcIdx)
	idxitem = AddEventItem(random(28,31))
	Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." Dame Nhi�u Nh�t v�o Boss nh�n ���c: "..GetNameItemBox(idxitem).."")
end

