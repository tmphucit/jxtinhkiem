
function OnDeath()
team = GetTeam()

if team == nil then
	Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." ®· tiªu diÖt Boss Covid TiÓu")
	for k=1,5 do AddEventItem(684) end
	AddOwnExp(2000000)
	Msg2Player("B¹n nhËn ®­îc 2.000.000 kinh nghiÖm")
	Msg2Player("B¹n nhËn ®­îc 5 An Cung Ng­u Hoµn")
else
Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." cïng nhãm ®· tiªu diÖt Boss Covid TiÓu")
idxp = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		for k=1,5 do AddEventItem(684) end
		AddOwnExp(2000000)
		Msg2Player("B¹n nhËn ®­îc 2.000.000 kinh nghiÖm")
		Msg2Player("B¹n nhËn ®­îc 5 An Cung Ng­u Hoµn")
	end
end
PlayerIndex = idxp

end

end

function OnDrop()

end