

function main(idx)
n = GetItemCount(8)
DelItemIdx(idx);
if GetItemCount(8) == (n-1) then
	if CheckFreeBoxItem(4,4,1,1) == 1 then
		AddEventItem(48)
		Msg2Player("��i Huy�n Tinh m�i th�nh c�ng ! ")
	else
		Talk(1,"","H�nh trang �� ��y ")
	end
end
end
