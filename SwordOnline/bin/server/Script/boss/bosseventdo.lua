function OnDeath()
	idxitem = AddEventItem(random(28,31))
	Msg2SubWorld("<color=green>Chóc mõng "..GetName().." Dame KÕt Thóc nhËn ®­îc: "..GetNameItemBox(idxitem).."")
bang = GetTongName()
if bang ~= "" then
	Msg2SubWorld("Toµn bé thµnh viªn bang héi ["..bang.."] nhËn ®­îc 5.000.000 kinh nghiÖm")
end
if bang ~= "" then
	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w1,x1,y1 = GetWorldPos()
		if GetTongName() == bang then
				AddOwnExp(5000000)
				Msg2Player("B¹n nhËn ®­îc 5.000.000 kinh nghiÖm")
				if GetTongFigure() == 3 then
					Earn(2000000)
					Msg2SubWorld("Bang chñ "..GetName().." nhËn ®­îc 200 v¹n l­îng")
				end
		end
	end
	PlayerIndex = idxplayer
else
Msg2Player("Ng­¬i kh«ng cã bang héi, kh«ng nhËn thªm phÇn th­ëng kh¸c ")
end
end

function OnDrop(NpcIdx)
	idxitem = AddEventItem(random(28,31))
	Msg2SubWorld("<color=green>Chóc mõng "..GetName().." Dame NhiÒu NhÊt vµo Boss nhËn ®­îc: "..GetNameItemBox(idxitem).."")
end

