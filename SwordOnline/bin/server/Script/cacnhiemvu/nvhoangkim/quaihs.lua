function OnDeath()
w,x,y = GetWorldPos();
if GetTask(157) == 7 then
	if GetTask(156) < 100 then
	SetTask(156,GetTask(156)+1)
	Msg2Player("B�n �� ti�u di�t "..GetTask(156).."/100 con")
	if GetTask(156) == 100 then
	Talk(1,"","�� ��t �� s� l��ng Nh�m . H�y t�m Nh�m Ch�a �i !")
	end
	end
elseif GetTask(157) == 41 then
	if GetTask(156) < 5 then
		sx = random(1,20)
		if sx == 10 then
		SetTask(156,GetTask(156)+1)
		Msg2Player("B�n nh�n ���c 1 Th� C�p Nh�m")
		end
	else
	Msg2Player("Nhi�m v� �� ho�n th�nh, h�y tr� v� g�p Long Ng� �� tr� nhi�m v� !")	
	end
end

if GetTask(103) == 1 then
	SetTask(104,GetTask(104)+1)
	Msg2Player("Nhi�m v� m�n ph�i: S� l��ng nh�m ti�u di�t "..GetTask(104).." / 10 con")
	if GetTask(104) >= 10 then
	Msg2Player("S� l��ng ti�u di�t nh�m �� ��, quay l�i Tr��ng M�n �� ph�c m�nh !")
	end
end

end
function OnDrop()


end