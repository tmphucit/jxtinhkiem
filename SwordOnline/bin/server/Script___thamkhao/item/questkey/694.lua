
iditem = 694

function main(idx)
	if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
	return
	end

n = GetItemCount(iditem)
if GetItemCount(iditem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(iditem) == (n-1) then
	
item = RandomNew(1,9)
	if item == 1 then	
		idxitem = AddItem(0,4,19,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®· më B¶o R­¬ng Thiªn Hoµng nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
	elseif item == 2 then
		idxitem = AddItem(0,2,79,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®· më B¶o R­¬ng Thiªn Hoµng nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
	elseif item == 3 then
		idxitem = AddItem(0,5,24,1,0,0,0)
	
		Msg2SubWorld("Chóc mõng "..GetName().." ®· më B¶o R­¬ng Thiªn Hoµng nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
	elseif item == 4 then
		idxitem = AddItem(0,8,22,1,0,0,0)
	
		Msg2SubWorld("Chóc mõng "..GetName().." ®· më B¶o R­¬ng Thiªn Hoµng nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
	elseif item == 5 then
		idxitem = AddItem(0,7,41,1,0,0,0)
	
		Msg2SubWorld("Chóc mõng "..GetName().." ®· më B¶o R­¬ng Thiªn Hoµng nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
	elseif item == 6 then
		idxitem = AddItem(0,6,26,1,0,0,0)
	
		Msg2SubWorld("Chóc mõng "..GetName().." ®· më B¶o R­¬ng Thiªn Hoµng nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
	elseif item == 7 then
		idxitem = AddItem(0,9,19,1,0,0,0)
	
		Msg2SubWorld("Chóc mõng "..GetName().." ®· më B¶o R­¬ng Thiªn Hoµng nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
	elseif item == 8 then
		idxitem = AddItem(0,3,35,1,0,0,0)
	
		Msg2SubWorld("Chóc mõng "..GetName().." ®· më B¶o R­¬ng Thiªn Hoµng nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
	elseif item == 9 then
		idxitem = AddItem(0,3,36,1,0,0,0)
	
		Msg2SubWorld("Chóc mõng "..GetName().." ®· më B¶o R­¬ng Thiªn Hoµng nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
	end	

			
	else
		Talk(1,"","Hack Ha Em")
	end
end

end

