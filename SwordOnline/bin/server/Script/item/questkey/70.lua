idxitem = 70

function main(idx)
num = 0
for i=1,GetItemCount(idxitem) do
	if GetItemCount(idxitem) > 0 then
	DelItem(idxitem)
	num = num + 1
	end
end

for p=1,num do
	AddEventItem(idxitem)
end
	Msg2Player("B�n �� x�p ch�ng th�nh c�ng <color=yellow>"..num.." "..GetNameItemBox(idx).."")
end

