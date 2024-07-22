
function main(idx)
	if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng 2 x 3 «, vui lßng kiÓm tra l¹i")
	return
	end
	if GetTask(490) >= 3500 then
		Talk(1,"","B¹n ®· nhËn MAX sù kiÖn L¸ Cê ChiÕn Th¾ng th­êng<enter>Muèn gia h¹n cÇn <color=yellow>10 KNB<color> ®Ó gia h¹n 3500 lÇn !")
		return
	end
	sxnhan = random(1,200)
	if sxnhan == 1 then
		AddEventItem(28)
		Msg2Player("Chóc mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>Lam Thñy Tinh")
	elseif sxnhan == 2 then
		AddEventItem(29)
		Msg2Player("Chóc mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>Tö Thñy Tinh")
	elseif sxnhan == 3 then
		AddEventItem(30)
		Msg2Player("Chóc mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>Lôc Thñy Tinh")
	elseif sxnhan == 4 then
		AddEventItem(173)
		Msg2Player("Chóc mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>Phóc Duyªn TiÓu")
	elseif sxnhan == 5 then
		AddEventItem(174)
		Msg2Player("Chóc mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>Phóc Duyªn Trung")
	elseif sxnhan == 6 then
		AddEventItem(175)
		Msg2Player("Chóc mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>Phóc Duyªn §¹i")
	elseif sxnhan == 7 then
		AddEventItem(654)
		Msg2Player("Chóc mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>QuÕ Hoa Töu")
	elseif sxnhan == 8 then
		AddEventItem(173)
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>Phóc Duyªn TiÓu")
	end
	AddOwnExp(500000)
	SetTask(490,GetTask(490)+1)
	DelItem(72)
	Msg2Player("Chóc mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>500.000 Kinh NghiÖm")
		
end
