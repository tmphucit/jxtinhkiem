function main(idx)
if GetTask(493) == 4 then
	if GetItemCount(636) < 20 then
	HideNpc(idx, 10*18)
	idxitem = AddEventItem(636)
	SetBindItem(idxitem , 1)
	Msg2Player("B¹n thu thËp ®­îc 1 C©y T©m Th¶o. Thêi gian phôc håi: <color=yellow>10 gi©y")
	else
		Talk(1,"","NhiÖm vô hoµn thµnh, quay vÒ gÆp Tr­¬ng C¶nh ®Ó phôc mÖnh")
	end
else
	Msg2Player("B¹n ch­a nhËn nhiÖm vô T©n Thñ Th«n, kh«ng thÓ thu ho¹ch")
end
end