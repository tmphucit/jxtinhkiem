

function main(idx)
n = GetItemCount(56)
if GetItemCount(56) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(56) == (n-1) then
		SetTask(124,GetTask(124)+100)
		Msg2Player("B¹n nhËn ®­îc 100 ®iÓm vinh dù !"); 
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end
