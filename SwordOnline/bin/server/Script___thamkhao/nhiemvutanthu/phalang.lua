function OnDeath()
if GetTask(495) == 5 then
	if GetTask(494) < 10 then
		SetTask(494, GetTask(494) +1)
		Msg2Player("S� l��ng nhi�m v� ho�n th�nh:<color=yellow> "..GetTask(494).." / 10 con")
	else
		Talk(1,"","Ng��i �� ho�n th�nh nhi�m v�, quay v� g�p V��ng ��c Ph�c �� ph�c m�nh")
		Msg2Player("<color=green>[Nhi�m V� T�n Th�]<color=red> Quay v� g�p V��ng ��c Ph�c �� ph�c m�nh !")
	end
end
end

function OnDrop()

end