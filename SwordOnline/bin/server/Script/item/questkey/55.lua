

function main(idx)
n = GetItemCount(55)
if GetItemCount(55) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(55) == (n-1) then
		SetTask(124,GetTask(124)+500)
		Msg2Player("B¹n nhËn ®­îc 500 ®iÓm vinh dù !"); 
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end
