

function main(idx)
n = GetItemCount(58)
if GetItemCount(58) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(58) == (n-1) then
		SetTask(124,GetTask(124)+10)
		Msg2Player("Ban nhan duoc 10 diem vinh du!"); 
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end
