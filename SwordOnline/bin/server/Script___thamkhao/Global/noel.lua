function OnDeath()
end

function OnDrop()
team = GetTeam()
name = GetName()
Msg2SubWorld("Ch�c m�ng nh�m c�a ["..name.."] �� ti�u di�t Boss �ng Gi� Noel v� mang v� cho m�nh nhi�u v�t ph�m gi� tr� !")
if GetTeam() ~= nill then
	for i =1,2000 do
		PlayerIndex = i
		if GetTeam() == team then
			if GetTask(135) == 0 then
				for i = 1,40 do AddOwnExp(1000000) end
				Msg2Player("B�n nh�n ���c 40.000.000 kinh nghi�m ")
				SetTask(135,9999)
				Msg2Player("B�n nh�n ���c nh�n ��i x�c su�t r�t h�p qu� ��n khi k�t th�c event  ")
				Msg2SubWorld("Ch�c m�ng ["..GetName().."] ti�u di�t Boss �ng Gi� Noel nh�n ���c nh�n ��i t�c �� r�t H�p Qu� Gi�ng Sinh v� 40.000.000 kinh nghi�m ")
				
			else
				for i = 1,40 do AddOwnExp(1000000) end
				Msg2Player("B�n nh�n ���c 40.000.000 kinh nghi�m ")
				Msg2SubWorld("Ch�c m�ng ["..GetName().."] ti�u di�t Boss �ng Gi� Noel nh�n ���c 40.000.000 kinh nghi�m !")
			end
		end
	end
else
	if GetTask(135) == 0 then
		for i = 1,40 do AddOwnExp(1000000) end
		Msg2Player("B�n nh�n ���c 40.000.000 kinh nghi�m ")
		SetTask(135,9999)
		Msg2Player("B�n nh�n ���c nh�n ��i x�c su�t r�t h�p qu� ��n khi k�t th�c event  ")	
		Msg2SubWorld("Ch�c m�ng ["..GetName().."] ti�u di�t Boss �ng Gi� Noel nh�n ���c nh�n ��i t�c �� r�t H�p Qu� Gi�ng Sinh v� 40.000.000 kinh nghi�m ")
	else
		for i = 1,40 do AddOwnExp(1000000) end
		Msg2Player("B�n nh�n ���c 40.000.000 kinh nghi�m ")
		Msg2SubWorld("Ch�c m�ng ["..GetName().."] ti�u di�t Boss �ng Gi� Noel nh�n ���c 40.000.000 kinh nghi�m !")	
	end
end
end