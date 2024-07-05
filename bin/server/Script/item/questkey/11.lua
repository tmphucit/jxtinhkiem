

function main(idx)
n = GetItemCount(11)
DelItemIdx(idx);
if GetItemCount(11) == (n-1) then
	if CheckFreeBoxItem(4,4,1,1) == 1 then
		AddEventItem(51)
		Msg2Player("§æi HuyÒn Tinh míi thµnh c«ng ! ")
	else
		Talk(1,"","Hµnh trang ®· ®Çy ")
	end
end
end
