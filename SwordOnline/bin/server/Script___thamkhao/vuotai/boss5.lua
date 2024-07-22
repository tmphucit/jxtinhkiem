function OnDeath()
thang = tonumber(date("%m"))
ngay = tonumber(date("%d"))
AddGlobalCountNews("Chóc mõng "..GetName().." cïng nhãm V­ît ¶i thµnh c«ng !!!",3)
idxp = PlayerIndex
for k=1,GetCountPlayerMax() do
PlayerIndex = k
w,X,Y = GetWorldPos()
if GetTaskTemp(25) == 1 and w == 26 then
Msg2Player("Chóc mõng nhãm cña b¹n ®· vuît qua 18 µi sinh tö  !")
AddOwnExp(4000000)
SetTaskTemp(25,0)
SetPunish(0)
SetFightState(0);
AddRepute(3)
Msg2Player("B¹n nhËn ®­îc 3 ®iÓm danh väng ")
AddEventItem(150)
Msg2Player("B¹n nhËn ®­îc 1 Hép LÔ VËt V­ît ¶i")


SetDeathScript("");


Msg2SubWorld("Chóc mõng "..GetName().." cïng nhãm vuît ¶i thµnh c«ng !")
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
		Msg2Player("B¹n nhËn ®­îc 1 L¸ Th­ Göi MÑ ")
end