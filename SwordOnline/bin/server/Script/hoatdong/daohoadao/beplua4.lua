function main()
if GetTask(528) == 7 then
		if GetItemCount(662) == 1 and GetItemCount(663) == 1 and GetItemCount(661) == 1 then
			SetTask(528,8)
			Talk(1,"","<color=red>H� Th�ng<color> Ch�c m�ng ��i hi�p, Ch�o L�p B�t �� ho�n th�nh r�i. Quay l�i t�m Ho�ng Dung �� ph�c m�nh")
			Msg2Player("Nh�n nhi�m v�: <color=yellow>quay l�i g�p Ho�ng Dung ph�c m�nh")
		else
			Talk(1,"","Nguy�n li�u n�u ch�o kh�ng ��, c�n ki�m tra l�i")
		end
end
end