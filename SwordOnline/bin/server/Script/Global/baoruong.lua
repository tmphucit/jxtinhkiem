function main(idx)
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
w,x,y = GetWorldPos()

	DelNpc(idx)
	rnd = random(1,100)
	if rnd < 50 then
		idxitem = AddEventItem(304)
		Msg2World("<color=pink>[R��ng V�ng]: Ch�c m�ng "..GetName().." �� t�m ���c R��ng V�ng nh�n ���c ph�n th��ng <color=blue>"..GetNameItemBox(idxitem).."")
	elseif rnd >= 50 and rnd < 80 then
		idxitem = AddEventItem(305)
		Msg2World("<color=pink>[R��ng V�ng]: Ch�c m�ng "..GetName().." �� t�m ���c R��ng V�ng nh�n ���c ph�n th��ng <color=blue>"..GetNameItemBox(idxitem).."")
	else
		idxitem = AddEventItem(306)
		Msg2World("<color=pink>[R��ng V�ng]: Ch�c m�ng "..GetName().." �� t�m ���c R��ng V�ng nh�n ���c ph�n th��ng <color=blue>"..GetNameItemBox(idxitem).."")
	end
end