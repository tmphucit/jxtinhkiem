

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
	Msg2Player("B¹n ®· xÕp chång thµnh c«ng <color=yellow>"..num.." Cùc PhÈm Tinh Th¹ch")
end

