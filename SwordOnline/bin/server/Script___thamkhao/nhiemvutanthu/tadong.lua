function main()
if GetTask(495) == 7 then
	SetTask(495, 8)
	Talk(1,"","Ng��i h�y qua Ph�c L�u ��ng ki�m cho ta nguy�n li�u �� r�n c�y �ao")
	Msg2Player("<color=green>[Nhi�m V� T�n Th�]<color=red> ��n Ph�c L�u ��ng 188/177 t�m v� m� B�o R��ng l�y 20 Kho�ng V�t")
elseif GetTask(495) == 8 then
	if GetItemCount(635) >= 20 then
		for p=1,20 do DelItem(635) end
		SetTask(495,9)
		Talk(1,"","Quay v� g�p C� Di ��a �� ph�c m�nh")
		Msg2Player("<color=green>[Nhi�m V� T�n Th�]<color=red> Quay v� g�p C� Di ��a �� ph�c m�nh")
	else
		Talk(1,"","Qua Ph�c L�u ��ng 188/177 t�m 20 Kho�ng V�t. S� l��ng ho�n th�nh: <color=yellow>"..GetItemCount(635).." / 20")
	end
else

end
end