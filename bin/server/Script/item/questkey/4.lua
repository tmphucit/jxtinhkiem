

function main(idx)
n = GetItemCount(4)
DelItemIdx(idx);
if GetItemCount(4) == (n-1) then
	if CheckFreeBoxItem(4,4,1,1) == 1 then
		AddEventItem(44)
		Msg2Player("��i Huy�n Tinh m�i th�nh c�ng ! ")
	else
		Talk(1,"","H�nh trang �� ��y ")
	end
end
end
