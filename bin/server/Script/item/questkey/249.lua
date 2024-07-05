

function main(idx)
n = GetItemCount(249)

if GetItemCount(249) >= 1 then

DelItemIdx(idx);
if GetItemCount(249) == (n-1) then

		sxtt = random(1,100)
		if sxtt < 20 then
			sx2 = random(1,30)
			if sx2 == 1 then
				AddEventItem(0)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>Vâ L©m MËt TÞch ")
			elseif sx2 == 2 then
				AddEventItem(1)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>TÈy Tñy Kinh ")
			elseif sx2 == 3 then
				AddEventItem(28)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>Lam Thñy Tinh ")
			elseif sx2 == 4 then
				AddEventItem(29)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>Tö Thñy Tinh ")
			elseif sx2 == 5 then
				AddEventItem(30)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>Lôc Thñy Tinh ")
			elseif sx2 == 6 then
				AddEventItem(31)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>Tinh Hång B¶o Th¹ch ")
			elseif sx2 == 7 or sx2 == 8 or sx2 == 9 or sx2 == 10 then
				AddEventItem(117)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>Tiªn Th¶o Lé 1 giê ")
			elseif sx2 == 11 or sx2 == 12 or sx2 == 13 or sx2 == 14 then
				AddEventItem(117)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>N÷ Nhi Hång 1 giê ")
			elseif sx2 == 15 or sx2 == 16 then
				AddEventItem(119)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>Tiªn Th¶o Lé 3 giê ")
			elseif sx2 == 17 or sx2 == 18 then
				AddEventItem(115)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>N÷ Nhi Hång 3 giê ")
			else
				AddEventItem(2)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>ThiÕt La H¸n ")	
			end
			else
				tien = random(1,30)
				for k=1,tien do AddOwnExp(1000000) end
				Msg2Player("B¹n nhËn ®­îc phÇn th­ëng ngÉu nhiªn: <color=yellow>"..tien..".000.000 kinh nghiÖm !")
			end	
		Talk(0,"")
else
	Talk(1,"","Hack Ha Em")
end
end

end
