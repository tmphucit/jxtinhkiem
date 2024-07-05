function main(idx)
n = GetItemCount(103)
if GetPKState() == 0 then
DelItemIdx(idx);
	if GetItemCount(103) == (n-1) then
		for i=1,20 do
			AddItem(1,2,0,5,0,0,0)
		end
		Msg2Player("B¹n nhËn ®­îc 20 b×nh Ngò Hoa Ngäc Lé Hoµn")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","VËt phÈm chØ sö dông ®­îc trong tr¹ng th¸i luyÖn c«ng !")
end
end
