function main()
if GetTask(103) == 41 then
	SetTask(103,42)
	Talk(2,"","<color=green>C� D� T�u<color>: Ch�ng trai tr� m� b�n l�nh r�t cao c��ng, ta s� gi�p ng��i ph�t huy h�t kh� n�ng c�a m�nh",
	"��n <color=yellow>Ph��ng T��ng<color> g�p <color=red>V� L�m Minh Ch� 201/189<color> �� l�nh h�i v� ngh� nh�m ti�u di�t �c b� tr� h�i cho d�n ")
	Msg2Player("��n Ph��ng T��ng 201/189 g�p  V� L�m Minh Ch� !")
else
	Talk(1,"","<color=green>C� D� T�u<color> B�n l�nh c�a ng��i c�ng kh�ng nh� ��u, h�y t� ph�t huy kh� n�ng �� nh� !")
end
end