function OnDeath()
ngay = tonumber(date("%d"))
w,x,y = GetWorldPos()
tongname = GetTongName()
Msg2World("Thµnh viªn "..GetName().." ®· kÕt thóc Boss Bang Héi vµ mang vÒ cho Bang "..GetTongName().." rÊt nhiÒu phÇn th­ëng quý gi¸ !")
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w1,x1,y1 = GetWorldPos()
		if w == w1 and GetTongName() == tongname and GetTask(472) ~= ngay then
		SetTask(472 , ngay)
		AddOwnExp(8000000)
		Msg2Player("B¹n nhËn ®­îc 8.000.000 kinh nghiÖm tù Boss Bang Héi !")	
		for k=1,15 do AddEventItem(23) end
		Msg2Player("B¹n nhËn ®­îc 15 Khiªu ChiÕn LÖnh !")
		sxtt = random(1,100)
		if sxtt < 8 then
			sx2 = random(1,30)
			if sx2 == 1 then
				AddEventItem(0)
				Msg2World("Chóc mõng "..GetName().." may m¾n nhËn ®­îc 1 <color=yellow>Vâ L©m MËt TÞch ")
			elseif sx2 == 2 then
				AddEventItem(1)
				Msg2World("Chóc mõng "..GetName().." may m¾n nhËn ®­îc 1 <color=yellow>TÈy Tñy Kinh ")
			elseif sx2 == 3 then
				AddEventItem(28)
				Msg2World("Chóc mõng "..GetName().." may m¾n nhËn ®­îc 1 <color=yellow>Lam Thñy Tinh ")
			elseif sx2 == 4 then
				AddEventItem(29)
				Msg2World("Chóc mõng "..GetName().." may m¾n nhËn ®­îc 1 <color=yellow>Tö Thñy Tinh ")
			elseif sx2 == 5 then
				AddEventItem(30)
				Msg2World("Chóc mõng "..GetName().." may m¾n nhËn ®­îc 1 <color=yellow>Lôc Thñy Tinh ")
			elseif sx2 == 6 then
				AddEventItem(31)
				Msg2World("Chóc mõng "..GetName().." may m¾n nhËn ®­îc 1 <color=yellow>Tinh Hång B¶o Th¹ch ")
			elseif sx2 == 7 or sx2 == 8 or sx2 == 9 or sx2 == 10 then
				AddEventItem(117)
				Msg2World("Chóc mõng "..GetName().." may m¾n nhËn ®­îc 1 <color=yellow>Tiªn Th¶o Lé 1 giê ")
			elseif sx2 == 11 or sx2 == 12 or sx2 == 13 or sx2 == 14 then
				AddEventItem(117)
				Msg2World("Chóc mõng "..GetName().." may m¾n nhËn ®­îc 1 <color=yellow>N÷ Nhi Hång 1 giê ")
			elseif sx2 == 15 or sx2 == 16 then
				AddEventItem(119)
				Msg2World("Chóc mõng "..GetName().." may m¾n nhËn ®­îc 1 <color=yellow>Tiªn Th¶o Lé 3 giê ")
			elseif sx2 == 17 or sx2 == 18 then
				AddEventItem(115)
				Msg2World("Chóc mõng "..GetName().." may m¾n nhËn ®­îc 1 <color=yellow>N÷ Nhi Hång 3 giê ")
			else
				AddEventItem(2)
				Msg2World("Chóc mõng "..GetName().." may m¾n nhËn ®­îc 1 <color=yellow>ThiÕt La H¸n ")	
			end
		else
			tien = random(1,10)
			Earn(tien*10000)
			Msg2Player("B¹n nhËn ®­îc phÇn th­ëng ngÉu nhiªn: <color=yellow>"..tien.." v¹n !")
		end	
		Talk(0,"")
	end	
end
end

function OnDrop()
end