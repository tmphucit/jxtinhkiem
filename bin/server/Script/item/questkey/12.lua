

function main(idx)
n = GetItemCount(12)
DelItemIdx(idx);
if GetItemCount(12) == (n-1) then
	if CheckFreeBoxItem(4,4,1,1) == 1 then
		AddEventItem(52)
		Msg2Player("��i Huy�n Tinh m�i th�nh c�ng ! ")
	else
		Talk(1,"","H�nh trang �� ��y ")
	end
end
end
