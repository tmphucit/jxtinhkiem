

function main(idx)
num = 0
for i=1,GetItemCount(568) do
	if GetItemCount(568) > 0 then
	DelItem(568)
	num = num + 1
	end
end

for p=1,num do
	AddEventItem(568)
end
	Msg2Player("B�n �� x�p ch�ng th�nh c�ng <color=yellow>"..num.." C�c Ph�m Tinh Th�ch")
end

