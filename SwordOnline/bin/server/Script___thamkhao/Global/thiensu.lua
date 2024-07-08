function OnDeath()
end

function OnDrop()
team = GetTeam()
name = GetName()
if GetTeam() ~= nill then
	for i =1,2000 do
		PlayerIndex = i
		if GetTeam() == team then
			for i = 1,20 do AddOwnExp(1000000) end
			Msg2Player("B¹n nhËn ®­îc 20.000.000 kinh nghiÖm ")
			Talk(1,"","Chóc mõng nhãm cña ["..name.."] ®· tiªu diÖt Boss TuyÕt T©m Thiªn Sø ")
			Msg2SubWorld("Chóc mõng ["..GetName().."] tiªu diÖt Boss TuyÕt T©m Thiªn Sø nhËn ®­îc 20.000.000 kinh nghiÖm !!")
		end
	end
else
	for i = 1,20 do AddOwnExp(1000000) end
	Msg2Player("B¹n nhËn ®­îc 20.000.000 kinh nghiÖm ")
	Msg2SubWorld("Chóc mõng ["..GetName().."] tiªu diÖt Boss TuyÕt T©m Thiªn Sø nhËn ®­îc 20.000.000 kinh nghiÖm !!")
end
end