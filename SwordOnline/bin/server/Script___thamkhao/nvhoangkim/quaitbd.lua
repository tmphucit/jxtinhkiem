

function OnDeath()
if GetTask(157) == 34 then
	if GetTask(156) < 200 then
	SetTask(156,GetTask(156)+1)
	Msg2Player("B�n �� ti�u di�t "..GetTask(156).."/200 con")
	if GetTask(156) == 200 then
	Talk(1,"","�� ��t �� s� l��ng Tuy�t B�o . H�y t�m Th� L�nh ��o T�c �i !")
	end
	end
elseif GetTask(157) == 42 then
	if GetTask(156) < 5 then
		sx = random(1,20)
		if sx == 10 then
		SetTask(156,GetTask(156)+1)
		Msg2Player("B�n nh�n ���c 1 Th� C�p B�o")
		end
	else
	Msg2Player("Nhi�m v� �� ho�n th�nh, h�y tr� v� g�p Long Ng� �� tr� nhi�m v� !")	
	end
end


end
function OnDrop()


end
