function OnDeath()
AddGlobalCountNews("Chóc mõng "..GetName().." cïng nhãm V­ît ¶i thµnh c«ng !!!",3)
for k=1,GetCountPlayerMax() do
PlayerIndex = k
w,X,Y = GetWorldPos()
if GetTaskTemp(26) == 1 and w == 27 then
Msg2Player("Chóc mõng nhãm cña b¹n ®· vuît qua 18 µi sinh tö  !")
AddOwnExp(2000000)
SetTaskTemp(26,0)
SetPunish(0)
SetFightState(0);

	SetTask(493, GetTask(493) + 18)
	Msg2Player("§iÓm TÝch Lòy Sù KiÖn hiÖn t¹i: <color=yellow>"..GetTask(493).."")
AddRepute(3)
Msg2Player("B¹n nhËn ®­îc 3 ®iÓm danh väng ")		
SetTask(484, GetTask(484) + 5)
Msg2Player("B¹n nhËn ®­îc <color=green>5 ®iÓm TÝch Lòy VIP")

SetDeathScript("");

Msg2SubWorld("Chóc mõng "..GetName().." Vuît ¶i thµnh c«ng. Nh©n ®­îc rÊt nhiÒu kinh nghiÖm")

NewWorld(53,200*8,200*16)
end
end
end
function OnDrop(NpcIdx)
DropEvent(NpcIdx)
end