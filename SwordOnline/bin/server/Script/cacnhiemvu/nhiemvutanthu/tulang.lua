function main()
if GetTask(493) == 7 then
	if GetItemCount(638) >= 1 then
		SetTask(493,8)
		DelItem(638)
		Talk(1,"","C�m �n ��i hi�p �� mang c�m ��n cho ta, ng��i c� th� quay v� ���c r�i")
		Msg2Player("<color=green>[Nhi�m V� T�n Th�]<color=red> Quay v� g�p Con G�i V� S� ")
	else
		Talk(1,"","C�m c�a ta ��u, ch�ng l� ng��i �n h�t r�i sao?")
	end
else
	Talk(1,"","T�nh ra b�y gi� ta c�ng ch� l� m�t g� ti�u phu ")
end
end