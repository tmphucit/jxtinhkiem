function main()
if GetTask(103) == 23 then
	SetTask(103,24)
	Talk(1,"","Ng��i �� ��n tr�n 1 b��c, ��i S� Tr� Tr� �i <color=yellow>Kim Quang ��ng<color> v�n ch�a v� ",
	"Ng��i h�y ��n �� t�m gi�p ta nh� !")
	Msg2Player("�i Kim Quang ��ng v� bi�t ���c n�i ��y c� m�t t�n ph�n t�ng ho�nh h�nh b� ��o t�n l� Th�nh Kh�n 179/185, 204/190. C� th� Tr� Tr� �ang g�p nguy hi�m")
elseif GetTask(103) == 25 then
	SetTask(103,26)
	Talk(2,"","C�m �n ng��i �� ��a Tr� Tr� v� an to�n, n�i v�i Ch��ng M�n ta s� l�m vi�c m� ng��i giao ph� ",
	"Quay v� g�p Ch��ng M�n �� ho�n th�nh nhi�m v� !")
	 Msg2Player("Quay v� g�p Ch��ng M�n �� ho�n th�nh nhi�m v� !")
else
	Talk(1,"","A di �� ph�t, b�n t�ng ch� � ��y �� tu h�nh, kh�ng mu�n b� th� gian l�m phi�n !")
end
end