function main(idx)
if GetTask(496) == 1 then
	HideNpc(idx, 60*18)
	idxitem = AddEventItem(632)
	SetBindItem(idxitem , 1)
	Msg2Player("B¹n thu ho¹ch ®­îc 1 Lôc §Ëu. Thêi gian håi phôc: <color=yellow>60 gi©y")
else
	Msg2Player("B¹n ch­a nhËn nhiÖm vô T©n Thñ Th«n, kh«ng thÓ thu ho¹ch")
end
end