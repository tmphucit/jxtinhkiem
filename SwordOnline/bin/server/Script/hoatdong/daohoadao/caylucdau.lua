function main(idx)
if GetTask(528) == 2 and GetItemCount(662) == 0 then
	sx = random(1,100)
	if sx < 30 then
		idxitem = AddEventItem(662)
		SetBindItem(idxitem, 1)
		Msg2Player("B�n nh�n ���c 1 C�y L�c ��u")
	else
		Talk(1,"","Thu th�p th�t b�i, th� l�i sau 60 gi�y ho�c �i t�m C�y L�c ��u kh�c !")
	end
	SetPropState(1)
end
end