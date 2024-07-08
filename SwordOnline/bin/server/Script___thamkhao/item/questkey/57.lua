

function main(idx)
n = GetItemCount(57)
if GetItemCount(57) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(57) == (n-1) then
		SetTask(124,GetTask(124)+50)
		Msg2Player("B¹n nhËn ®­îc 50 ®iÓm vinh dù !"); 
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end
