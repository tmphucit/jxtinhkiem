function main(idx)
if GetTask(496) == 1 then
	HideNpc(idx, 60*18)
	idxitem = AddEventItem(632)
	SetBindItem(idxitem , 1)
	Msg2Player("B�n thu ho�ch ���c 1 L�c ��u. Th�i gian h�i ph�c: <color=yellow>60 gi�y")
else
	Msg2Player("B�n ch�a nh�n nhi�m v� T�n Th� Th�n, kh�ng th� thu ho�ch")
end
end