function OnDeath()
if GetTask(157) == 1 then
	if GetTask(156) < 3 then
	sx = random(1,3)
	if sx == 1 then
	SetTask(156,GetTask(156)+1)
	if GetTask(156) == 3 then
	Msg2Player("Nhi�m v� ho�n th�nh, h�y tr� v� g�p Long Ng� �� tr� nhi�m v� !")
	end
	Msg2Player("B�n nh�n ���c 1 th� c�p Nh�m")
	else
	Msg2Player("Xin chia bu�n! B�n ch�a thu�n ph�c ���c Nh�m")
	end	
	else
	Msg2Player("Nhi�m v� ho�n th�nh, h�y tr� v� g�p Long Ng� �� tr� nhi�m v� !")
	end
end


end

function OnDrop()
end