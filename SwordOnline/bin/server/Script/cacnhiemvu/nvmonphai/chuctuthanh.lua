function main()
if GetTask(103) == 36 then
	Talk(3,"","<color=green>Ch�c T� Thanh<color>: Th� ra l� v�y, ta �� bi�t k� �� b�t c�c cha l� ai r�i ",
	"Nh�ng, <color=yellow>��ch H�o Nhi�n<color> n�y v� ngh� tinh th�ng, v�i s�c c�a ng��i th� kh�ng n�i ��u ",
	"H�y ��n <color=yellow>T��ng D��ng<color> g�p <color=red>H� M� Tuy�t 191/206<color> �� nh� h�n nh� !")
	Msg2Player("Nhi�m v� m�n ph�i: ��n T��ng D��ng t�m H� M� Tuy�t 191/206 ")
	SetTask(103,37)
elseif GetTask(103) == 39 then
	SetTask(103,40)
	Talk(2,"","<color=red>"..GetName().."<color>: Ta �� c� g�ng h�t s�c nh�ng v�n kh�ng  c�u ���c cha ng��i ",	
	"C�m �n tr�ng s�, ng��i h�y �em c�i <color=red>Tr�m C�i T�c<color> c�a ta trao cho <color=yellow>Tr� B� B�,<color> ng��i s� gi�p ng��i ")
	Msg2Player("Bi�t ���c tin cha m�nh qua ��i, N�ng kh�c than th�m thi�t r�i trao m�t chi�c Tr�m C�i T�c ")
	Msg2Player("H�y giao t�n v�t n�y cho Tr� B� B� !")
else
	Talk(1,"","<color=green>Ch�c T� Thanh<color>: V� L�m FC , th� gian n�y v�n h�u t�nh ��y ")
end
end