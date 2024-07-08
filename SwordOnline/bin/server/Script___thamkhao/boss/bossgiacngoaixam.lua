function OnDeath()

ngay = tonumber(date("%d"))
SetGlbMissionV(42 , GetGlbMissionV(42) - 1)
Msg2World("<color=yellow>"..GetName().." ®· tiªu diÖt Boss Ph¶n §å ")
Msg2World("Sè l­îng Boss KÎ Ph¶n §å cßn l¹i: <color=pink>"..GetGlbMissionV(42).." con")
team = GetTeam()

if GetTeamSize() < 3 then
Talk(1,"","Tæ ®éi d­íi 3 ng­êi, kh«ng nhËn ®­îc phÇn th­ëng")
return
end

sx = random(1,100)
if sx < 10 then
	idxitem = AddEventItem(random(28,30))
	Msg2SubWorld("<color=green>Chóc mõng "..GetName().." tiªu diÖt Boss Ph¶n §å nhËn ®­îc "..GetNameItemBox(idxitem).."")
end

sx = random(1,100)
if sx < 5 then
	idxitem = AddEventItem(406)
	Msg2SubWorld("<color=green>Chóc mõng "..GetName().." tiªu diÖt Boss Ph¶n §å nhËn ®­îc "..GetNameItemBox(idxitem).."")
end


idx = PlayerIndex
if GetTeam() ~= nill then
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetTeam() == team then
			if floor(GetTask(330) / 1000) ~= ngay then
				SetTask(330 , ngay * 1000)
			end
			if mod ( GetTask(330) , ngay*1000) < 10 then
				AddOwnExp(5000000)
				Msg2Player("B¹n nhËn ®­îc 5000000 kinh nghiÖm")
				SetTask(330 , GetTask(330) + 1)
				Msg2Player("Sè l­îng Boss tiªu diÖt trong ngµy: "..mod ( GetTask(330) , ngay*1000).." / 10 con")
			else
				Talk(1,"","B¹n ®· tiªu diÖt tèi ®a 10 Boss KÎ Ph¶n §å trong ngµy h«m nay !")
			end
		end
	end
end
PlayerIndex = idx

end

function OnDrop(NpcIdx)

end

