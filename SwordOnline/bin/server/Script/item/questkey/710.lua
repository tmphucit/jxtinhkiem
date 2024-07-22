
idxitem = 710

function main(idx)
n = GetItemCount(idxitem)
if GetItemCount(idxitem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(idxitem) == (n-1) then
		sx = random(1,9)
		if sx == 1 then
		idxitem1 = AddItem(0,4,19,1,0,0,0)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  ®· më b¶o r­¬ng thiªn hoµng nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem1).." ")
	    elseif sx == 2 then
		idxitem1 = AddItem(0,2,79,1,0,0,0)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  ®· më b¶o r­¬ng thiªn hoµng nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem1).." ")
	    elseif sx == 3 then
		idxitem1 = AddItem(0,6,26,1,0,0,0)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  ®· më b¶o r­¬ng thiªn hoµng nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem1).." ")
	    elseif sx == 4 then
		idxitem1 = AddItem(0,5,24,1,0,0,0)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  ®· më b¶o r­¬ng thiªn hoµng nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem1).." ")
	    elseif sx == 5 then
		idxitem1 = AddItem(0,8,22,1,0,0,0)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  ®· më b¶o r­¬ng thiªn hoµng nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem1).." ")
	    elseif sx == 6 then
		idxitem1 = AddItem(0,7,41,1,0,0,0)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  ®· më b¶o r­¬ng thiªn hoµng nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem1).." ")
	    elseif sx == 7 then
		idxitem1 = AddItem(0,9,19,1,0,0,0)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  ®· më b¶o r­¬ng thiªn hoµng nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem1).." ")
	    elseif sx == 8 then
	  	idxitem1 = AddItem(0,3,35,1,0,0,0)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  ®· më b¶o r­¬ng thiªn hoµng nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem1).." ")
	    elseif sx == 9 then
		idxitem1 = AddItem(0,3,36,1,0,0,0)
		Msg2SubWorld("§¹i hiÖp "..GetName().."  ®· më b¶o r­¬ng thiªn hoµng nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem1).." ")
	end
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end

end
