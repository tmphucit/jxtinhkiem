function main(idx)
nam = tonumber(date("%y"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
bY,bM,bD,bH = GetHSD(idx)

if GetLevel() >= 80 then  
Talk(1,"","VËt phÈm chØ sö dông d­íi cÊp 80!")
return end


check = 0
if nam == 16 then
check = 2016 * 1000000 + thang * 10000 + ngay * 100 + gio
elseif nam == 17 then
check = 2017 * 1000000 + thang * 10000 + ngay * 100 + gio
end
check1 = bY * 1000000 + bM * 10000 + bD * 100 + bH
n = GetItemCount(264)
w,x,y= GetWorldPos()
if GetPKState() == 0  or w == 109 or w == 217 or w == 24 or w == 9 or w == 47 or w == 48 or w == 49 or w == 2 or w == 46 then
if check >= check1 then
--DelItemIdx(idx);
end

		for i=1,20 do
			idx = AddItem(1,2,0,3,0,0,0)
			SetItemLock(idx)
		end

		Talk(0,"")
	else
	Talk(1,"","VËt phÈm chØ sö dông ®­îc trong tr¹ng th¸i luyÖn c«ng !")
end
end
