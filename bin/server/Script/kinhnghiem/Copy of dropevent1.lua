function OnDrop()
end

function OnDeath()
item = random(1,3)
if item == 2 then

sx = random(1,20)
if sx == 15 then
	sx2 = random(1,4)
	if sx2 == 1 then
		AddEventItem(67)
		Msg2Player("B¹n nhËn ®­îc 1 Long §Çu ")
	elseif sx2 == 2 then
		AddEventItem(68)
		Msg2Player("B¹n nhËn ®­îc 1 Th©n Rång !")
	elseif sx2 == 3 then
		AddEventItem(69)
		Msg2Player("B¹n nhËn ®­îc 1 X­¬ng Rång !")
	else
		AddEventItem(70)
		Msg2Player("B¹n nhËn ®­îc 1 §u«i Rång !")
	end
end

else

sx = random(1,20)
if sx == 15 then
	sx2 = random(1,3)
	if sx2 == 1 then
		AddEventItem(71)
		Msg2Player("B¹n nhËn ®­îc 1 M¸i ChÌo ")
	elseif sx2 == 2 then
		AddEventItem(72)
		Msg2Player("B¹n nhËn ®­îc 1 B¸nh L¸i !")
	else
		AddEventItem(73)
		Msg2Player("B¹n nhËn ®­îc 1 Trèng !")
	end
end
end

end