

function main(idx)
num = 0
for i=1,GetItemCount(567) do
	if GetItemCount(567) > 0 then
	DelItem(567)
	num = num + 1
	end
end

for p=1,num do
	AddEventItem(567)
	Msg2Player("B�n �� x�p ch�ng th�nh c�ng <color=yellow>"..num.." Ho�n M� Tinh Th�ch")
end
end

