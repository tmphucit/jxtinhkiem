function main(idx)
n = GetItemCount(304)
if GetItemCount(304) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(304) == (n-1) then
	xs = random(1,100)
	if xs < 90 then
		idxitem = AddEventItem(random(117,118))
		Msg2SubWorld("<color=green>"..GetName().." më r­¬ng Tèng Kim nhËn ®­îc "..GetNameItemBox(idxitem).."")
	elseif xs >= 90 and xs < 95 then
		idxitem = AddEventItem(119)
		Msg2SubWorld("<color=green>"..GetName().." më r­¬ng Tèng Kim nhËn ®­îc "..GetNameItemBox(idxitem).."")
	else
		idxitem = AddEventItem(115)
		Msg2SubWorld("<color=green>"..GetName().." më r­¬ng Tèng Kim nhËn ®­îc "..GetNameItemBox(idxitem).."")
		end
			
	else
		Talk(1,"","Hack ha em")
	end
end
end