function main()
if GetTask(493) == 3 then
	SetTask(493,4)
	Talk(1,"","��n <color=yellow>V� L�ng S�n 179/166<color> h�i cho ta 20 C�y T�m Th�o")
	Msg2Player("<color=green>[Nhi�m V� T�n Th�]<color=red> Nh�n nhi�m v� ��n V� L�ng S�n 179/166 h�i 20 C�y T�m Th�o")
elseif GetTask(493) == 4 then
	if GetItemCount(636) >= 20 then
		for p=1,20 do DelItem(636) end
		SetTask(493,5)
		Talk(1,"","C�m �n ng��i �� gi�p ta vi�c n�y, quay v� g�p Tam T��ng �i nh� ")
		Msg2Player("<color=green>[Nhi�m V� T�n Th�]<color=red> Quay v� g�p Tam N��ng �� ph�c m�nh")
	else
		Talk(1,"","Ng��i kh�ng mang �� cho ta 20 c�y T�m Th�o kh�ng th� ho�n th�nh nhi�m v� ")
	end
else
	Talk(1,"","T�m D��c Th�o v� ch� th�nh thu�c l� nhi�m v� c�a ta. Ta l� ng��i t�o ra nh�ng m�n h�ng cho D��c �i�m b�n")
end
end