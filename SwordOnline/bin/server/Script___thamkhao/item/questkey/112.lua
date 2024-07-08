function main(idx)
n = GetItemCount(112)
w,x,y = GetWorldPos()
if GetPKState() == 0  or w == 75 then
DelItemIdx(idx);
	if GetItemCount(112) == (n-1) then
		for i=1,20 do
			AddItem(1,1,0,2,0,0,0)
		end
		Msg2Player("B¹n nhËn ®­îc 20 b×nh Ng­ng ThÇn §an Trung")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","VËt phÈm chØ sö dông ®­îc trong tr¹ng th¸i luyÖn c«ng !")
end
end