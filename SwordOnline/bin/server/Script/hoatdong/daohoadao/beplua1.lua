function main()
if GetTask(528) == 4 then
		if GetItemCount(662) == 1 and GetItemCount(663) == 1 and GetItemCount(661) == 1 then
			SetTask(528,5)
			Talk(1,"","<color=red>H� Th�ng<color> L�a kh�ng �� l�n �� n�u Ch�o L�p B�t, ng��i h�y th� v�i b�p kh�c xem")
			Msg2Player("Nh�n nhi�m v�: <color=yellow>N�u Ch�o t�i B�p 196/198")
		else
			Talk(1,"","Nguy�n li�u n�u ch�o kh�ng ��, c�n ki�m tra l�i")
		end
end
end