function main()
	if GetTask(496) == 5 then
		
		SetTask(496,6)
		Talk(1,"","H�y ��n Th�t S�t ��ng ti�u di�t D� Tr� mang 10 M�nh Th�t v� cho ta !")
		Msg2Player("<color=green>[Nhi�m V� T�n Th�] <color=red>Qua Th�t S�t ��ng 188/199 ti�u di�t D� Tr� nh�t 10 M�nh Th�t")
	elseif GetTask(496) == 6 then
		if GetItemCount(633) >= 10 then
			for p=1,GetItemCount2(633) do DelAllItem(633) end 
			SetTask(496,7)
			Msg2Player("C�m �n ng��i �� mang �� s� th�t ta c�n, v� g�p L�u Qu� �� ph�c m�nh")
		else
			Talk(1,"","Ng��i kh�ng mang �� 10 m�nh th�t, kh�ng th� ho�n th�nh nhi�m v� !")
		end
	else
	Talk(1,"","Nh� ta �ang ��i ti�c, ng��i ��n g�p vui nh� !")
end	
end