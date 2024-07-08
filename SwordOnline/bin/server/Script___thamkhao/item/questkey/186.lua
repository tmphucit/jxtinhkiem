
function main(idx)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

sl = GetItemCount(186)
DelItemIdx(idx);
if GetItemCount(186) == (sl-1) then
	itemidx = AddItem(0,11,0,random(1,25),0,0,0)
	if thang == 12 then
		SetHSD(itemidx,2019,1,ngay,gio)
	else
		SetHSD(itemidx,2018,thang+1,ngay,gio)
	end
	Msg2Player("B¹n nhËn ®­îc 1 c¸i  <color=yellow>MÆt N¹ [1 Th¸ng]")
	Talk(0,"")
else
Talk(1,"","Hack ha em ")
end
end

