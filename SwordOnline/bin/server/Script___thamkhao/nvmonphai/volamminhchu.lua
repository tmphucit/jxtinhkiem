function main()
if GetTask(103) == 42 then
	Talk(2,"","<color=green>V� L�m Minh Ch� <color>: V� c�ng l� �� gi�p ��i, gi�p ng��i kh�ng ph�i �� ch�ng minh b�n th�n",
	"Ng��i h�y thay ta �i ti�u di�t <color=yellow>T�o H�ng 168/142<color>, m�t t�n ph�n qu�c b�n n��c c�u vinh th� ta m�i truy�n th� tinh hoa v� h�c ")
	Msg2Player("Nhi�m v� m�n ph�i: ��n Ch�n N�i Tr��ng B�ch 168/142 ti�u di�t T�o H�ng ")
	SetTask(103,43)
elseif GetTask(103) == 44 then
	Talk(2,"","<color=green>V� L�m Minh Ch� <color>: T�t c� nh�ng g� m� ta mu�n d�y ng��i l� v�y, h�y v�n d�ng n� ch� kh�ng ph�i ch� d�ng v� c�ng c�a m�nh",
	"<color=green>V� L�m Minh Ch� <color>: v� Ch��ng M�n �� h�c tuy�t k� �i")
	Msg2Player("Nhi�m v� m�n ph�i: Quay v� g�p Ch��ng M�n �� ph�c m�nh !")
	SetTask(103,45)
else
	Talk(1,"","<color=green>V� L�m Minh Ch� <color>: �� l�m ���c V� L�m Minh Ch� kh�ng ph�i ch� c� s�c m�nh l� �� ��u ")
end
end