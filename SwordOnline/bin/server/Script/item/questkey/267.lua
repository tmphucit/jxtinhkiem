function main(idx)
sl = GetItemCount(267)
DelItemIdx(idx);
if GetItemCount(267) == sl - 1 then
		sx = RandomNew(1,10)
		if sx == 3 then
			itemidx = AddEventItem(115)
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(itemidx).."")
		elseif sx == 7 then
			itemidx = AddEventItem(119)
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(itemidx).."")
		else
			itemidx = AddEventItem(random(117,118))
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(itemidx).."")
		end
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end