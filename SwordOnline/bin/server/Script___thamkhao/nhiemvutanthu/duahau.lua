function main()
if GetTask(495) == 1 then
	SetTask(495,2)
	Talk(1,"","Hi�n t�i K�n K�n �ang ph� ho�i v��n D�a H�u c�a ta. Ng��i h�y gi�p ta ti�u di�t ch�ng")
	Msg2Player("<color=green>[Nhi�m V� T�n Th�]<color=red> Ti�u di�t 15 con K�n K�n � Thanh Th�nh S�n")
elseif GetTask(495) == 2 then
	if GetTask(494) >= 15 then
		idxitem = AddEventItem(634)
		SetBindItem(idxitem , 1)
		SetTask(495, 3)
		SetTask(494,0)
		Talk(1,"","C�m �n ng��i �� gi�p ta �u�i ��m K�n K�n n�y �i. T�ng ng��i <color=yellow>1 Qu� H�a H�u")
		Msg2Player("<color=green>[Nhi�m V� T�n Th�]<color=red> Mang d�a h�u v� g�p C� Di ��a")
	else
		Talk(1,"","Ng��i ch�a ti�u di�t �� 15 con K�n K�n th� quay l�i g�p ta �� l�m g�? ")
	end
else
	Talk(1,"","Ta l� k� b�n d�a c� ��c nh�t th� gian, nh� ta c�ng � g�n ��y, ng��i c� ng��i t�i ch�i kh�ng?")
end	
end