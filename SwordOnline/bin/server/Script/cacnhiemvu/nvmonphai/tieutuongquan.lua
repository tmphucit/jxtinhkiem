function main()
if GetTask(103) == 20 then
	SetTask(103,21)
	Talk(1,"","Ng��i l�m r�t t�t, m�t h�m n�y l� c�a t�n n�i gi�n Kim Qu�c c��p ���c, n�u l�t ra ngo�i h�u h�a kh� l��ng ",
	"H�y quay v� g�p Ch��ng M�n �� ph�c m�nh !")
	Msg2Player("Nhi�m v� m�n ph�i: Nhi�m v� ho�n th�nh, quay v� g�p Ch��ng M�n �� ph�c m�nh !")
else
	Talk(1,"","Nh�ng k� ph�m phu t�c t� nh� ng��i th� bi�t g�, �i ra kh�i ��y mau !")
end
end