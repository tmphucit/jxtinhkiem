function OnDeath()
SetGlbMissionV(44, GetGlbMissionV(44) - 1)
Msg2SubWorld("Sè l­îng Boss cßn l¹i: <color=yellow>"..GetGlbMissionV(44).." con !")
Msg2SubWorld("Chóc mõng nhãm cña <color=green>["..GetName().."] <color=red>®· tiªu diÖt Boss CËu DÇn")

sx = RandomNew(1,100)
if sx < 50 then

		sxitem = RandomNew(1,100)
		if sxitem < 30 then
		idxitem = AddEventItem(RandomNew(900, 903))
		Msg2SubWorld("- "..GetName().." may m¾n nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem).." ")
		else
		idxitem = AddEventItem(RandomNew(895, 899))
		Msg2SubWorld("- "..GetName().." may m¾n nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem).." ")
		end
end

team = GetTeam()

if GetTeam() ~= nill then
		idxp = PlayerIndex
		for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				if GetTeam() == team then
					AddOwnExp(5000000)
					Msg2Player("B¹n nhËn ®­îc 5.000.000 kinh nghiÖm")
					for k=1,5 do AddEventItem(321) end
					Msg2Player("B¹n nhËn ®­îc 5 M©m B¹c")					
				end
		end
		PlayerIndex = idxp
else
	AddOwnExp(5000000)
					Msg2Player("B¹n nhËn ®­îc 5.000.000 kinh nghiÖm")
					for k=1,5 do AddEventItem(321) end
					Msg2Player("B¹n nhËn ®­îc 5 M©m B¹c")			
end
end


function OnDrop()

end