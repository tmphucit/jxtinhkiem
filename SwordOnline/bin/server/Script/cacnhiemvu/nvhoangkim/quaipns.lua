function OnDeath()
if GetTask(103) == 48 then
	if GetTask(104) < 100 then
		SetTask(104,GetTask(104)+1)
		Msg2Player("Nhi�m v� m�n ph�i: B�n �� ti�u di�t "..GetTask(104).."/100 con")
	else
		SetTask(103,49)
		SetTask(104,0)
		Talk(1,"","Nhi�m v� ho�n th�nh, l�n <color=yellow>Tuy�t B�o ��ng<color> ti�u di�t 50 con qu�i !")
		Msg2Player("Nhi�m v� m�n ph�i: Nhi�m v� ho�n th�nh , ti�p t�c l�n Tuy�t B�o ��ng ti�u di�t 50 con qu�i !")
	
	end
end
end
function OnDrop()


end
