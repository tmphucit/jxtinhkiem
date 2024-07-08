function main(idx)
nam = tonumber(date("%y"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
bY,bM,bD,bH = GetHSD(idx)
w,x,y= GetWorldPos()
n = GetItemCount(264)


check = (2000 + nam) * 1000000 + thang * 10000 + ngay * 100 + gio
check1 = bY * 1000000 + bM * 10000 + bD * 100 + bH

delaytime = thang * 30 * 24 * 60 * 60 + ngay * 24 * 60 * 60 + gio * 60 * 60 + phut * 60 + giay

if delaytime < GetTaskTemp(1) then
--Msg2Player("Thêi gian sö dông cßn l¹i: "..(GetTaskTemp(1) - delaytime).." gi©y !")
--return
end


if GetPKState() == 0 or w == 24 or w == 75 or w == 77 or w == 47 or w == 48 or w == 49 then
if check >= check1 then
DelItemIdx(idx);
end
		
		for i=1,20 do
			idx = AddItem(1,2,0,3,0,0,0)
			SetItemLock(idx)
		end
		Msg2Player("B¹n nhËn ®­îc 20 b×nh Thõa Tiªn MËt §¹i")
		
		SetTaskTemp(1, delaytime + 3*60)
		
		Talk(0,"")
	else
	Talk(1,"","VËt phÈm chØ sö dông ®­îc trong tr¹ng th¸i luyÖn c«ng !")
end
end