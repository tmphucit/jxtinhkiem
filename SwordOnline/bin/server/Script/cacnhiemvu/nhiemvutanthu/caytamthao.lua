function main(idx)
if GetTask(493) == 4 then
	if GetItemCount(636) < 20 then
	HideNpc(idx, 10*18)
	idxitem = AddEventItem(636)
	SetBindItem(idxitem , 1)
	Msg2Player("B�n thu th�p ���c 1 C�y T�m Th�o. Th�i gian ph�c h�i: <color=yellow>10 gi�y")
	else
		Talk(1,"","Nhi�m v� ho�n th�nh, quay v� g�p Tr��ng C�nh �� ph�c m�nh")
	end
else
	Msg2Player("B�n ch�a nh�n nhi�m v� T�n Th� Th�n, kh�ng th� thu ho�ch")
end
end