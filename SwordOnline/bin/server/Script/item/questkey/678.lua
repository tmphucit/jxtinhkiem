
function main(idx)
	if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� tr�ng 2 x 3 �, vui l�ng ki�m tra l�i")
	return
	end
	if GetTask(489) >= 2000 then
		Talk(1,"","B�n �� nh�n MAX s� ki�n L� C� Chi�n Th�ng VIP<enter>Mu�n gia h�n c�n <color=yellow>10 KNB<color> �� gia h�n 2000 l�n !")
		return
	end
	sxnhan = random(1,250)
	if sxnhan == 1 then
		AddEventItem(28)
		Msg2Player("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>Lam Th�y Tinh")
	elseif sxnhan == 2 then
		AddEventItem(29)
		Msg2Player("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>T� Th�y Tinh")
	elseif sxnhan == 3 then
		AddEventItem(30)
		Msg2Player("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>L�c Th�y Tinh")
	elseif sxnhan == 4 then
		AddEventItem(175)
		Msg2SubWorld("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>Ph�c Duy�n ��i")
	elseif sxnhan == 5 then
		AddEventItem(175)
		Msg2SubWorld("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>Ph�c Duy�n ��i")
			-- AddItem(0,2,30,10,0,0,0)
		-- Msg2SubWorld("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>1 M�n ��nh Qu�c Random")
	elseif sxnhan == 6 then
		AddEventItem(119)
		Msg2Player("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>Ti�n Th�o L� 3H")
	elseif sxnhan == 7 then
		AddEventItem(654)
		Msg2Player("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>Qu� Hoa T�u")
	elseif sxnhan == 8 then
		AddEventItem(120)
		Msg2Player("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>Ti�n Th�o L� 6H")
	elseif sxnhan == 9 then
		AddEventItem(31)
		Msg2Player("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>Tinh H�ng B�o Th�ch")
	elseif sxnhan == 10 then
		AddEventItem(270)
		Msg2SubWorld("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>M�nh Nhu T�nh ")
	elseif sxnhan == 11 then
		AddEventItem(271)
		Msg2SubWorld("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>M�nh Hi�p C�t ")
	end	
	
sxhk = random(1,500)
	if sxhk == 37 then
		AddEventItem(random(283,286))
		Msg2SubWorld("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>M�nh An Bang Ramdom !")
	elseif sxhk == 25 then
		AddEventItem(random(287,291))
		Msg2SubWorld("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>M�nh ��nh Qu�c Ramdom !")
	elseif sxhk == 176 then
		AddEventItem(273)
		Msg2SubWorld("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>M�nh Ng�a Chi�u D� Ng�c S� T�  !")
	elseif sxhk == 50 then
		AddEventItem(random(664,665))
		Msg2SubWorld("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>Tinh Luy�n Th�ch !")
	-- elseif sxhk == 70 then
		-- AddEventItem(random(39,43))
		 -- Msg2SubWorld("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>Trang B� ��nh Qu�c Ramdom !")
	end
	AddOwnExp(1000000)
	SetTask(489,GetTask(489)+1)
	SetTask(612,GetTask(612)+1)
	DelItem(678)
	Msg2Player("Ch�c M�ng "..GetName().." nh�n ph�n th��ng S� Ki�n L� C� Chi�n Th�ng nh�n ���c: <color=green>1.000.000 Kinh Nghi�m")
end

