function main(idx)
if GetTask(495) == 8 then
	if GetItemCount(635) < 20 then
	HideNpc(idx, 10*18)
	idxitem = AddEventItem(635)
	SetBindItem(idxitem , 1)
	Msg2Player("Ban tim duoc 1 Khoang Vat. Thoi gian phuc hoi: 10 giay")
	else
		Msg2Player("Ban da thu thap du 20 Khoang Vat, khong the thu thap them")
	end
else
	Msg2Player("Ban chua nhan nhiem vu tan thu thon, khong the mo bao ruong")
end
end