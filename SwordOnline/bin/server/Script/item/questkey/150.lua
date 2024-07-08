
function main(idx)
n = GetItemCount(150)
if GetItemCount(150) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(150) == (n-1) then
	vp = RandomNew(1,100)
	if vp < 50 then
	AddEventItem(653)
	Msg2Player("B¹n nhËn ®­îc 1 Thiªn S¬n B¶o Lé ")
	elseif vp < 70 then
	AddEventItem(653)
	Msg2Player("B¹n nhËn ®­îc 1 Thiªn S¬n B¶o Lé")
	elseif vp < 86 then
	AddEventItem(664)
	Msg2Player("B¹n nhËn ®­îc 1 An Bang Tinh LuyÖn Th¹ch")
	else
	AddEventItem(665)
	Msg2Player("B¹n nhËn ®­îc 1 §Þnh Quèc Tinh LuyÖn Th¹ch")
	end
	Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end
