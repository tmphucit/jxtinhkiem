

function main(idx)
n = GetItemCount(57)
if GetItemCount(57) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(57) == (n-1) then
		SetTask(124,GetTask(124)+50)
		Msg2Player("B�n nh�n ���c 50 �i�m vinh d� !"); 
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end
