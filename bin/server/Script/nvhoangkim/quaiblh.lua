function OnDeath()
w,x,y = GetWorldPos();
if GetTask(157) == 3 then
	if GetTask(156) < 200 then
	SetTask(156,GetTask(156)+1)
	Msg2Player("B�n �� ti�u di�t "..GetTask(156).."/200 con")
	else
	Msg2Player("Nhi�m v� ho�n th�nh, h�y tr� v� g�p Long Ng� �� tr� nhi�m v� !")
	end
elseif GetTask(157) == 40 then
	if GetTask(156) < 5 then
		sx = random(1,20)
		if sx == 10 then
		SetTask(156,GetTask(156)+1)
		Msg2Player("B�n nh�n ���c 1 Th� C�p H��u")
		end
	else
	Msg2Player("Nhi�m v� �� ho�n th�nh, h�y tr� v� g�p Long Ng� �� tr� nhi�m v� !")	
	end
end

end

function OnDrop()


end