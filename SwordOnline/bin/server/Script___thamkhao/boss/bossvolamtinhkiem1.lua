function OnDeath()
ngay = tonumber(date("%d"))
Msg2World("<color=yellow>"..GetName().." ®· tiªu diÖt Boss Vâ L©m Håi øc ")
team = GetTeam()
tong = GetTongName()
	idxitem = AddItem(0,10,5,2,0,0,0)
	Msg2SubWorld("<color=green>Chóc mõng "..GetName().." tiªu diÖt Boss Vâ L©m Håi øc nhËn ®­îc "..GetNameItemBox(idxitem).."")


idx = PlayerIndex
if GetTongName() ~= "" then
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetTongName() == tong then
				AddOwnExp(1000000)
				Msg2Player("B¹n nhËn ®­îc 1.000.000 kinh nghiÖm")
		end
	end
elseif GetTeam() ~= nill then
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetTeam() == team then
				AddOwnExp(1000000)
				Msg2Player("B¹n nhËn ®­îc 1.000.000 kinh nghiÖm")
		end
	end
else
				AddOwnExp(1000000)
				Msg2Player("B¹n nhËn ®­îc 1.000.000 kinh nghiÖm")
end
PlayerIndex = idx

end

function OnDrop(NpcIdx)

end

