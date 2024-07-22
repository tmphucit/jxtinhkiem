function main(idx)
sl = GetItemCount(266)
DelItemIdx(idx);
if GetItemCount(266) == sl - 1 then
		sx = RandomNew(1,2)
		itemidx = AddEventItem(random(113,114))
		Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(itemidx).."")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end