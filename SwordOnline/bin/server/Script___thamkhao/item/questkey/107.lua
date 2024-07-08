function main(idx)


n = GetItemCount(107)

w,x,y = GetWorldPos()
if GetPKState() == 0  or w == 75 then
DelItemIdx(idx);
	if GetItemCount(107) == (n-1) then
		for i=1,20 do
			idx = AddItem(1,2,0,2,0,0,0)
			SetItemLock(idx)
		end
		Msg2Player("B¹n nhËn ®­îc 20 b×nh Thõa Tiªn MËt Trung")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","VËt phÈm chØ sö dông ®­îc trong tr¹ng th¸i luyÖn c«ng !")
end
end