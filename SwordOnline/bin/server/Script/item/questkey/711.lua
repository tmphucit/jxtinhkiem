
idxitem = 711

function main(idx)
n = GetItemCount(idxitem)
if GetItemCount(idxitem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(idxitem) == (n-1) then
	sx = random(1,10)
	if sx < 7 then
		idxitem1 = AddItem(0,3,6,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." më r­¬ng hiÖp cèt <color=green>"..GetNameItemBox(idxitem1).."")
	elseif sx == 7 or sx == 8  then
		idxitem1 = AddItem(0,4,5,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." më r­¬ng hiÖp cèt <color=green>"..GetNameItemBox(idxitem1).."")
	elseif sx == 9 then
		idxitem1 = AddItem(0,9,4,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." më r­¬ng hiÖp cèt <color=green>"..GetNameItemBox(idxitem1).."")
	elseif sx == 10 then
		idxitem1 = AddItem(0,2,31,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." më r­¬ng hiÖp cèt <color=green>"..GetNameItemBox(idxitem1).."")
	end
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end

end
