function main()
if GetTask(103) == 13 then
	Talk(2,"","��i hi�p qu� th�t gan d�, <color=red>Huy�t Ma H� <color>�� � ��y r�t nhi�u n�m tr�i g�y h�a cho ng��i d�n v�ng n�y",
	"H�y ��n <color=yellow>Mi�u L�nh 236/215, 257/216, 267/220<color> �� ti�u di�t H� d� !")
	Msg2Player("<color=green>Nhi�m v� m�n ph�i:<color=red> �i Mi�u L�nh 236/215, 257/216, 267/220 quy�t h� cho b�ng ���c H� d� tr� h�a cho d�n !")
	SetTask(103,14)
elseif GetTask(103) == 15 then
	SetTask(103,16)
	Talk(2,"","<color=green>T�ng Vi�n Thanh<color>: �a t� ��i hi�p �� ra tay c�u gi�p d�n l�ng ch�ng t�i ",
	"G�i l�i c�m �n c�a ta ��n <color=yellow>Ch��ng M�n<color> c�a ��i hi�p n�a nh�. ")
	Msg2Player("<color=green>Nhi�m v� m�n ph�i:<color=red> Quay v� g�p Ch��ng M�n �� ph�c m�nh ")
else
	Talk(1,"","H�nh nh� ta �� t�ng g�p ng��i !")
end
end