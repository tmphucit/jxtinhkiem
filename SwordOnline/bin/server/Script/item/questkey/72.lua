
function main(idx)
	if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� tr�ng 2 x 3 �, vui l�ng ki�m tra l�i")
	return
	end
	if GetTask(490) >= 3500 then
		Talk(1,"","B�n �� nh�n MAX s� ki�n L� C� Chi�n Th�ng th��ng<enter>Mu�n gia h�n c�n <color=yellow>10 KNB<color> �� gia h�n 3500 l�n !")
		return
	end
	sxnhan = random(1,200)
	if sxnhan == 1 then
		AddEventItem(28)
		Msg2Player("Ch�c m�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>Lam Th�y Tinh")
	elseif sxnhan == 2 then
		AddEventItem(29)
		Msg2Player("Ch�c m�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>T� Th�y Tinh")
	elseif sxnhan == 3 then
		AddEventItem(30)
		Msg2Player("Ch�c m�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>L�c Th�y Tinh")
	elseif sxnhan == 4 then
		AddEventItem(173)
		Msg2Player("Ch�c m�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>Ph�c Duy�n Ti�u")
	elseif sxnhan == 5 then
		AddEventItem(174)
		Msg2Player("Ch�c m�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>Ph�c Duy�n Trung")
	elseif sxnhan == 6 then
		AddEventItem(175)
		Msg2Player("Ch�c m�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>Ph�c Duy�n ��i")
	elseif sxnhan == 7 then
		AddEventItem(654)
		Msg2Player("Ch�c m�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>Qu� Hoa T�u")
	elseif sxnhan == 8 then
		AddEventItem(173)
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>Ph�c Duy�n Ti�u")
	end
	AddOwnExp(500000)
	SetTask(490,GetTask(490)+1)
	DelItem(72)
	Msg2Player("Ch�c m�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>500.000 Kinh Nghi�m")
		
end
