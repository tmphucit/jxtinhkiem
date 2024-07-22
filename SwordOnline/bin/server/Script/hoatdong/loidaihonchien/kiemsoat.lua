function main()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i trèng 2 x 3 míi cã thÓ kiÓm so¸t !")
	return
end
if (gio == 21 or gio == 11) and phut >= 40 then

idx = PlayerIndex
num = 0
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == 59 then
		num = num + 1
	end
end
PlayerIndex = idx

if num == 1 then
	SetDeathScript("");
				SetCurCamp(GetCamp())
				NewWorld(54,1666, 3152)
				SetFightState(0)
				BlockPKState(0)
				SetPunish(0);
				SetCreateTeam(1);
		Msg2SubWorld("TrËn L«i §µi Hçn ChiÕn ngµy h«m nay ®· kÕt thóc. PhÇn th¾ng thuéc vÒ: <color=yellow>"..GetName().." ")		
		Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." nhËn ®­îc:")
		idxitem = AddEventItem(random(35,43))
		Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
		idxitem = AddEventItem(44)
		Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
		idxitem = AddEventItem(412)
		Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
else
	Talk(1,"","HiÖn t¹i vÉn cßn "..num.." ng­êi ch¬i trong b¶n ®å, khi nµo cßn m×nh nhµ ng­¬i h·y ®Õn gÆp ta ")
end

else
	Talk(1,"","Thêi gian kiÓm so¸t: 11h40 - 12h00, 21h40 - 22h00")
end
end