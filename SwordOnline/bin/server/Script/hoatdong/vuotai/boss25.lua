function OnDeath()
AddGlobalCountNews("Chóc mõng "..GetName().." cïng nhãm V­ît ¶i thµnh c«ng !!!",3)
for k=1,GetCountPlayerMax() do
PlayerIndex = k
w,X,Y = GetWorldPos()
if GetTaskTemp(26) == 1 and w == 27 then
Msg2Player("Chóc mõng nhãm cña b¹n ®· vuît qua 18 µi sinh tö  !")
AddEventItem(150)
for i = 1,3 do AddEventItem(random(27,30)) end
for i=1,50 do AddOwnExp(1000000) end
Msg2Player("B¹n nhËn ®­îc 50.000.000 kinh nghiÖm v× tham Vuît ¶i !")

SetTaskTemp(26,0)
SetPunish(0)
SetFightState(0);

AddRepute(3)
SetTask(612,GetTask(612)+50)
Msg2Player("B¹n nhËn ®­îc 50 ®iÓm sù kiÖn")
Msg2Player("B¹n nhËn ®­îc 3 Thñy Tinh Random")
Msg2Player("B¹n nhËn ®­îc 3 ®iÓm danh väng ")	


SetDeathScript("");

Msg2SubWorld("Chóc mõng "..GetName().." Vuît ¶i thµnh c«ng. Nh©n ®­îc rÊt nhiÒu kinh nghiÖm")

NewWorld(53,200*8,200*16)
end
end
end
function OnDrop(NpcIdx)
DropEvent(NpcIdx)
end