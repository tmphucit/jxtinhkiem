function main()
if GetTask(496) == 3 then
	if GetItemCount(632) >= 5 then
		for p=1,5 do
			DelItem(632)
		end
		Talk(1,"","Ta �� nh�n �� 5 L�c ��u, h�y v� g�p L�u Qu� �� ph�c m�nh")
		Msg2Player("<color=green>[Nhi�m V� T�n Th�] <color=red>Quay v� g�p L�u Qu� �� ph�c m�nh")
		SetTask(496,4)
	else
		Talk(1,"","Ta c�n 5 L�c ��u, ng��i kh�ng mang �� y�u c�u c�a ta !")
	end
else
	Talk(1,"","N�i th�m s�n c�ng c�c n�y ch� c� m�nh ta � ��y")
end
end