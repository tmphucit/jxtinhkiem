function OnDeath()

thang = tonumber(date("%m"))
ngay = tonumber(date("%d"))
AddGlobalCountNews("Ch�c m�ng "..GetName().." c�ng nh�m V��t �i th�nh c�ng !!!",3)
idxp = PlayerIndex
for k=1,GetCountPlayerMax() do
PlayerIndex = k
w,X,Y = GetWorldPos()
if GetTaskTemp(27) == 1 and w == 28 then
Msg2Player("Ch�c m�ng nh�m c�a b�n �� vu�t qua 18 �i sinh t�  !")
AddOwnExp(4000000)
SetTaskTemp(27,0)
SetPunish(0)
SetFightState(0);
AddRepute(3)
Msg2Player("B�n nh�n ���c 3 �i�m danh v�ng ")
AddEventItem(150)
Msg2Player("B�n nh�n ���c 1 H�p L� V�t V��t �i")


SetDeathScript("");



Msg2SubWorld("Ch�c m�ng "..GetName().." c�ng nh�m vu�t �i th�nh c�ng !")
NewWorld(53,200*8,200*16)
end
end


PlayerIndex = idxp
end
function OnDrop(NpcIdx)
DropEvent(NpcIdx)
end



mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function AddLaThu1Ngay()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

		ngay = ngay + 1
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
			thang = thang + 1
		end
		itemidx = AddEventItem(657)
		SetHSD(itemidx, 2021 , thang, ngay, gio )
		Msg2Player("B�n nh�n ���c 1 L� Th� G�i M� ")
end