function OnDeath()
end

function OnDrop(NpcIdx)
sx = random(1,100)
if sx < 40 then
DropEvent(NpcIdx)
Msg2Player("B¹n nhËn ®­îc <color=yellow>Trang BÞ Xanh")
elseif sx >= 40 and sx < 70 then
	soluong = random(1,5)
	for p=1,soluong do AddEventItem(414) end
	Msg2Player("B¹n nhËn ®­îc <color=yellow>"..soluong.." Ngäc C­êng Hãa")
else
	soluong = random(1,5)
	for p=1,soluong do AddEventItem(415) end
	Msg2Player("B¹n nhËn ®­îc <color=yellow>"..soluong.." Ngäc T¸i T¹o")
end

AddEventItem(327)
Msg2Player("B¹n nhËn ®­îc 1 <color=pink>Ph¸o Hoa N¨m Míi")

end

