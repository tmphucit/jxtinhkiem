

function main(idx)
n = GetItemCount(687)

if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ 2 x 3 chç trèng, kh«ng thÓ sö dông !")
	return
end


if GetItemCount(687) >= 1 then

DelItemIdx(idx);
if GetItemCount(687) == (n-1) then

			sx2 = RandomNew(1,100)
			if sx2 < 25 then
				idxitem = AddItem(0,10,5,1,0,0,0)
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." më M· Bµi 80 nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 < 50 then
				idxitem = AddItem(0,10,5,3,0,0,0)
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." më M· Bµi 80 nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 < 75 then
				idxitem = AddItem(0,10,5,4,0,0,0)
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." më M· Bµi 80 nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 < 90 then
				idxitem = AddItem(0,10,5,2,0,0,0)
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." më M· Bµi 80 may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).."")		
			else
				idxitem = AddItem(0,10,5,5,0,0,0)
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." më M· Bµi 80 may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).."")		
			end
		Talk(0,"")
else
	Talk(1,"","Hack Ha Em")
end
end

end
