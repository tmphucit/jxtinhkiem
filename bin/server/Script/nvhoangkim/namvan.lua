function main()
if GetTask(157) == 11 then
	SetTask(157,12)
	SetTask(156,0)
	Msg2Player("Nhi�m V�: Ti�u di�t L� Thi�n Tr��ng � Xi V�u ��ng 223/202")
	Talk(1,"","<color=green>Li�u Nam V�n: <color> ��n Xi V�u ��ng ti�u di�t L�u Thi�n Tr��ng...")
elseif GetTask(157) == 12 then	
	if GetTask(156) == 1 then
	Talk(1,"","<color=green>Li�u Nam V�n: <color>: H�y t�m 1 vi�n <color=blue>Huy�n Tinh 1 Tinh Khi�t <color> giao cho Ph� Nam B�ng...")
	Msg2Player("L�n Hoa S�n ti�u di�t Nh�m Ch�a �� t�m Huy�n Tinh 1 Tinh Khi�t sau �� qua T��ng D��ng t�m Ph� N�m B�ng")


		SetTask(157,13)
		SetTask(156,0)
	else
	Talk(1,"","<color=green>Li�u Nam V�n: <color> ��n Xi V�u ��ng ti�u di�t L�u Thi�n Tr��ng...")
	end
elseif GetTask(157) == 13 then
Talk(1,"","<color=green>Li�u Nam V�n: <color>: Qua T��ng D��ng t�m Ph� Nam B�ng ...")
else
Talk(1,"","<color=green>Li�u Nam V�n :<color> C�c h� ��n ��y c� vi�c g� kh�ng? ")
end
end