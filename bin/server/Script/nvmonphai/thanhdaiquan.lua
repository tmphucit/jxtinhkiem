function main()
if GetTask(103) == 29 then
	SetTask(103,30)
	Talk(2,"","<color=red>"..GetName().."<color>: Ch��ng m�n sai ta ��n ��y �� h�i th�m v� T�n V�t M�n Ph�i b� th�t l�c",
	"<color=green>Th�nh ��i Qu�n<color>: Mu�n bi�t t��ng t�n s� vi�c h�y gi�p ta ti�u di�t n� qu�i <color=yellow>Li�u T� T�,<color> �o�t l�i <color=red>Ng� S�c Ng�c B�i")
	Msg2Player("Nhi�m v� m�n ph�i: ��n Chu Ti�n Tr�n ��nh b�i Li�u T� T� 217/180, l�y l�i Ng� S�c Ng�c B�i !")
elseif GetTask(103) == 31 then
	Talk(2,"","<color=red>"..GetName().."<color>: Ng� S�c Ng�c B�i c�a ng��i ��y, h�y nhanh n�i cho ta <color=yellow>T�n V�t M�n Ph�i<color> �ang � ��u?",
	"T�n V�t M�n Ph�i theo nh� ta bi�t �ang n�m trong tay 1 g� �n m�y. Hi�n t�i h�n �ang � <color=yellow>Th�nh �� 384/322<color>, ��n �� h�i th�m th� xem ")
	Msg2Player("Nhi�m v� m�n ph�i: ��n Th�nh �� t�m �n M�y 384/322 ")
	SetTask(103,32)
else
	Talk(1,"","<color=green>Th�nh ��i Qu�n<color>: Ta ch� ��ng ��y ng�m c�nh th�i, ��ng l�m phi�n ta !")
end
end