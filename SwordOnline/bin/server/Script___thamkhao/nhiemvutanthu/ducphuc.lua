function main()
if GetTask(495) == 4 then
	SetTask(495,5)
	Talk(1,"","H�y ��n <color=yellow>B�ch V�n ��ng 232/205<color> ti�u di�t 10 con S�t Ph� Lang")
	Msg2Player("<color=green>[Nhi�m V� T�n Th�]<color=red> Nh�n nhi�m v� qua B�ch V�n ��ng 232/205 ti�u di�t 10 con S�t Ph� Lang")
elseif GetTask(495) == 5 then
	if GetTask(494) >= 10 then
		SetTask(494,0)
		SetTask(495, 6)
		Talk(1,"","C�m �n nh� ng��i �� gi�p ta, quay v� g�p C� Di ��a �� ph�c m�nh")
		Msg2Player("<color=green>[Nhi�m V� T�n Th�]<color=red> Quay v� g�p C� Di ��a �� ph�c m�nh !")
	else
		Talk(1,"","Ng��i h�y ��n B�ch V�n ��ng 232/205 ti�u di�t gi�p ta 10 con S�t Ph� Lang. S� l��ng ho�n th�nh: "..GetTask(494).." / 10")
	end
elseif GetTask(495) == 6 then
	Talk(1,"","Ng��i h�y mau quay v� g�p C� Di ��a �� ph�c m�nh !")
else	
	Talk(1,"","Ng��i bi�t t�i sao ta t�n l� ��c Ph�c kh�ng?")
end
end