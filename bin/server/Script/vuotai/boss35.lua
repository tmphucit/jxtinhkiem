function OnDeath()

AddGlobalCountNews("Chóc mõng "..GetName().." cïng nhãm V­ît ¶i thµnh c«ng !!!",3)
for k=1,GetCountPlayerMax() do
PlayerIndex = k
w,X,Y = GetWorldPos()
if GetTaskTemp(27) == 1 and w == 28 then
Msg2Player("Chóc mõng nhãm cña b¹n ®· vuît qua 18 µi sinh tö  !")
AddOwnExp(250000/2)
AddEventItem(random(44,45))
SetTaskTemp(27,0)
SetPunish(0)
SetFightState(0);
AddRepute(3)
	Msg2Player("B¹n nhËn ®­îc 3 ®iÓm danh väng ")

SetDeathScript("");
AddEventItem(150)
AddEventItem(150)
Msg2SubWorld("Chóc mõng "..GetName().." Vuît ¶i thµnh c«ng. Nh©n ®­îc 1 hép lÔ vËt v­ît ¶i")

Msg2Player("B¹n nhËn ®­îc kinh nghiÖm, vËt phÈm. Cßn chê g× n÷a mµ kh«ng mì hép lÓ vËt vuît ¶i ra xem cã g×  !")
NewWorld(53,200*8,200*16)
end
end
end
function OnDrop(NpcIdx)
DropEvent(NpcIdx)
end