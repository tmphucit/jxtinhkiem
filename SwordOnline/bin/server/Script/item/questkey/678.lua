
function main(idx)
	if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng 2 x 3 «, vui lßng kiÓm tra l¹i")
	return
	end
	if GetTask(489) >= 2000 then
		Talk(1,"","B¹n ®· nhËn MAX sù kiÖn L¸ Cê ChiÕn Th¾ng VIP<enter>Muèn gia h¹n cÇn <color=yellow>10 KNB<color> ®Ó gia h¹n 2000 lÇn !")
		return
	end
	sxnhan = random(1,250)
	if sxnhan == 1 then
		AddEventItem(28)
		Msg2Player("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>Lam Thñy Tinh")
	elseif sxnhan == 2 then
		AddEventItem(29)
		Msg2Player("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>Tö Thñy Tinh")
	elseif sxnhan == 3 then
		AddEventItem(30)
		Msg2Player("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>Lôc Thñy Tinh")
	elseif sxnhan == 4 then
		AddEventItem(175)
		Msg2SubWorld("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>Phóc Duyªn §¹i")
	elseif sxnhan == 5 then
		AddEventItem(175)
		Msg2SubWorld("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>Phóc Duyªn §¹i")
			-- AddItem(0,2,30,10,0,0,0)
		-- Msg2SubWorld("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>1 Mãn §Şnh Quèc Random")
	elseif sxnhan == 6 then
		AddEventItem(119)
		Msg2Player("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>Tiªn Th¶o Lé 3H")
	elseif sxnhan == 7 then
		AddEventItem(654)
		Msg2Player("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>QuÕ Hoa Töu")
	elseif sxnhan == 8 then
		AddEventItem(120)
		Msg2Player("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>Tiªn Th¶o Lé 6H")
	elseif sxnhan == 9 then
		AddEventItem(31)
		Msg2Player("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>Tinh Hång B¶o Th¹ch")
	elseif sxnhan == 10 then
		AddEventItem(270)
		Msg2SubWorld("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>M·nh Nhu T×nh ")
	elseif sxnhan == 11 then
		AddEventItem(271)
		Msg2SubWorld("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>M·nh HiÖp Cèt ")
	end	
	
sxhk = random(1,500)
	if sxhk == 37 then
		AddEventItem(random(283,286))
		Msg2SubWorld("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>M·nh An Bang Ramdom !")
	elseif sxhk == 25 then
		AddEventItem(random(287,291))
		Msg2SubWorld("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>M·nh §Şnh Quèc Ramdom !")
	elseif sxhk == 176 then
		AddEventItem(273)
		Msg2SubWorld("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>M·nh Ngùa ChiÕu D¹ Ngäc Sö Tö  !")
	elseif sxhk == 50 then
		AddEventItem(random(664,665))
		Msg2SubWorld("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>Tinh LuyÖn Th¹ch !")
	-- elseif sxhk == 70 then
		-- AddEventItem(random(39,43))
		 -- Msg2SubWorld("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>Trang BŞ §Şnh Quèc Ramdom !")
	end
	AddOwnExp(1000000)
	SetTask(489,GetTask(489)+1)
	SetTask(612,GetTask(612)+1)
	DelItem(678)
	Msg2Player("Chóc Mõng "..GetName().." nhËn phÇn th­ëng Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc: <color=green>1.000.000 Kinh NghiÖm")
end

