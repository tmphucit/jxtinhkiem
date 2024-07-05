

function main(idx)
n = GetItemCount(4)
DelItemIdx(idx);
if GetItemCount(4) == (n-1) then
	if CheckFreeBoxItem(4,4,1,1) == 1 then
		AddEventItem(44)
		Msg2Player("§æi HuyÒn Tinh míi thµnh c«ng ! ")
	else
		Talk(1,"","Hµnh trang ®· ®Çy ")
	end
end
end
