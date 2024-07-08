
function main(idx)

w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
if GetLevel() < 90 then
Talk(1,"","Lo¹i qu¶ nµy chØ sö dông cho nh©n vËt 90 trë lªn !")
return
end
if floor(GetTask(189)/1000) ~= ngay then
	SetTask(189,ngay*1000)
	Msg2Player("Reset ngµy míi, sè l­îng qu¶ hiÖn t¹i lµ: 0 qu¶ !")
end
soluonggioihan = 1


if GetTask(189) - (ngay*1000) >= soluonggioihan then
Talk(1,"","Sè l­îng qu¶ Hoµng Kim sö dông ngµy h«m nay ®· ®¹t tèi ®a "..soluonggioihan.." qu¶ !")
return
end
n = GetItemCount(630)
DelItemIdx(idx);
if GetItemCount(630) == (n-1) then
	for i=1,10 do AddOwnExp(500000) end
	Msg2Player("B¹n nhËn ®­îc 5.000.000 kinh nghiÖm !")
	SetTask(189,GetTask(189)+1)
	Msg2Player("Sè l­îng Qu¶ Hoµng Kim hiÖn t¹i ®· sö dông lµ: "..(GetTask(189) - (ngay*1000)).." / "..soluonggioihan.." qu¶ ")
else
	Talk(1,"","hack ha em ")
end

end
