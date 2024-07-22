

function main(idx)
n = GetItemCount(249)

if GetItemCount(249) >= 1 then

DelItemIdx(idx);
if GetItemCount(249) == (n-1) then

			sx2 = random(1,100)
			if sx2 < 60 then
				sx5 = random(1,100)
				if sx5 < 50 then
					idxitem = AddEventItem(116)
					Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")		
				else
					idxitem = AddEventItem(120)
					Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")					
				end
			elseif sx2 < 70 then
					idxitem = AddEventItem(random(698,699))
					Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")					
			elseif sx2 < 76 then
					idxitem = AddEventItem(692)
					Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")		
			elseif sx2 < 79 then
					idxitem = AddEventItem(694)
					Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")		
			elseif sx2 < 80 then
					idxitem = AddEventItem(691)
					Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")		
			else
					idxitem = AddEventItem(687)
					Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).."")		
			end

		Talk(0,"")
else
	Talk(1,"","Hack Ha Em")
end
end

end
