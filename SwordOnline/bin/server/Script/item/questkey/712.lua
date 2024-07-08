
idxitem = 712

function main(idx)
n = GetItemCount(idxitem)
if GetItemCount(idxitem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(idxitem) == (n-1) then
	sx = random(1,10)
	if sx < 8 then
		idxitem1 = AddItem(0,3,5,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." më b¶o r­¬ng nhu t×nh  <color=green>"..GetNameItemBox(idxitem1).."")
	elseif sx == 8 or sx == 9 then
		idxitem1 = AddItem(0,4,4,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." më b¶o r­¬ng nhu t×nh  <color=green>"..GetNameItemBox(idxitem1).."")
	elseif sx == 10 then
		idxitem1 = AddItem(0,9,5,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." më b¶o r­¬ng nhu t×nh  <color=green>"..GetNameItemBox(idxitem1).."")
	end
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end

end
