function main()
if GetTask(157) == 9 then
	SetTask(157,10)
	if GetTask(157) == 10 then
	SetTask(156,0)
	Msg2Player("Nhi�m V�: ��n L�m Du Quan ti�u di�t Ninh T��ng Qu�n 226/221")
	Talk(1,"","<color=green>Ph� Nam B�ng<color>: ��n L�m Du Quan ti�u di�t Ninh T��ng Qu�n 226/221")
	end
elseif GetTask(157) == 10 then
	if GetTask(156) == 1 then
		SetTask(157,11)
		if GetTask(157) == 11 then
		SetTask(156,0)
		Msg2Player("Nhi�m V�: ��n Ba L�ng Huy�n t�m Li�u Nam V�n")
		Talk(1,"","<color=green>Ph� Nam B�ng<color>: ��n Ba L�ng Huy�n t�m Li�u Nam V�n. ")	
		end
	else
	Talk(1,"","<color=green>Ph� Nam B�ng<color>: H�y ��n L�m Du Quan ti�u di�t Ph�n �� Ninh T��ng Qu�n 226/221")
	end
elseif GetTask(157) == 11 then
	Talk(1,"","<color=green>Ph� Nam B�ng<color>: ��n Ba L�ng Huy�n t�m Li�u Nam V�n. ")
elseif GetTask(157) == 13 then
	if GetItemCount(21) >= 1 then
	DelItem(21)
	SetTask(157,14)
	Msg2Player("Nhi�m V�: T�m Ng�o V�n T�ng ....")
	Talk(1,"","<color=green>Ph� Nam B�ng<color>: T�m Ng�o V�n T�ng �� ph�c m�nh . ")
	else
	Talk(1,"","<color=green>Ph� Nam B�ng<color>: Ta c�n 1 vi�n Huy�n Tinh 1 Tinh Khi�t. Ng��i c� th� ��nh Nh�m ch�a �� nh�n ���c ")
	end
else
Talk(1,"","<color=green>Ph� Nam B�ng<color>: Hahahaha ! Th�t l� bu�n c��i ...")
end
end