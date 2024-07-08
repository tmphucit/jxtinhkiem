

function main(idx)
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end

n = GetItemCount(249)

if GetItemCount(249) >= 1 then

DelItemIdx(idx);
if GetItemCount(249) == (n-1) then

		sxtt = random(1,63)
		if sxtt < 10 then
				idxitem = AddEventItem(120)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).." ")	
		elseif  sxtt < 20 then
				idxitem = AddEventItem(116)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).." ")	
		elseif  sxtt < 32 then
				idxitem = AddEventItem(random(28,31))
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).." ")	
		elseif  sxtt < 35 then
				idxitem = AddEventItem(random(0,1))
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).." ")	
		elseif  sxtt < 40 then
				idxitem = AddItem(0,10,5,random(3,4),0,0,0)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).." ")	
		elseif  sxtt < 50 then
				sl = random(5,10)
				for i=1,sl do AddEventItem(273) end 
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..sl.." M·nh XÝch Thè ")	
		elseif  sxtt < 55 then
				sl = random(1,5)
				for i=1,sl do AddEventItem(274) end 
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..sl.." M·nh ChiÕu D¹ ")	
		elseif  sxtt < 60 then
				sl = random(1,2)
				for i=1,sl do AddEventItem(275) end 
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..sl.." M·nh Phi V©n ")	
		elseif  sxtt < 62 then
			loai = RandomNew(1,100)
			if loai < 25 then
				idxitem = AddItem(0,4,random(4,5),1,0,0,0)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).." ")	
			elseif loai < 40 then
				idxitem = AddItem(0,2,31,1,0,0,0)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).." ")	
			elseif loai < 70 then
				idxitem = AddItem(0,9,random(4,5),1,0,0,0)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).." ")	
			else
				idxitem = AddItem(0,3,random(5,6),1,0,0,0)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).." ")	
			end
		elseif  sxtt <= 63 then
				idxitem = AddEventItem(19)
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red> më C«ng Thµnh ChiÕn LÔ Bao may m¾n nhËn ®­îc 1 <color=green>"..GetNameItemBox(idxitem).." ")	
		end
		Talk(0,"")
else
	Talk(1,"","Hack Ha Em")
end
end

end
