

function main(idx)
n = GetItemCount(56)
if GetItemCount(56) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(56) == (n-1) then
		SetTask(124,GetTask(124)+100)
		Msg2Player("B�n nh�n ���c 100 �i�m vinh d� !"); 
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end
