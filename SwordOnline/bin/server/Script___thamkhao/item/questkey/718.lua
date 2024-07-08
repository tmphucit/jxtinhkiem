
function main(idx)

w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))

if floor(GetTask(189)/1000) ~= ngay then
	SetTask(189,ngay*1000)
	Msg2Player("Reset ngµy míi, sè l­îng qu¶ hiÖn t¹i lµ: 0 qu¶ !")
end
soluonggioihan = 5


if GetTask(189) - (ngay*1000) >= soluonggioihan then
Talk(1,"","Sè l­îng qu¶ Huy Hoµng sö dông ngµy h«m nay ®· ®¹t tèi ®a "..soluonggioihan.." qu¶ !")
return
end
n = GetItemCount(718)
DelItemIdx(idx);
if GetItemCount(718) == (n-1) then
		AddOwnExp(4000000)
		Msg2Player("B¹n nhËn ®­îc 4.000.000 kinh nghiÖm !")
		SetTask(189,GetTask(189)+1)
		Msg2Player("Sè l­îng Qu¶ Huy Hoµng hiÖn t¹i ®· sö dông lµ: "..(GetTask(189) - (ngay*1000)).." / "..soluonggioihan.." qu¶ ")
else
	Talk(1,"","hack ha em ")
end

end
