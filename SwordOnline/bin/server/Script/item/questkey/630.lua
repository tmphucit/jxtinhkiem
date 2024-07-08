function main(idx)

w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
if GetLevel() < 100 then
Talk(1,"","Lo¹i qu¶ nµy chØ sö dông cho nh©n vËt 100 trë lªn !")
return
end
if floor(GetTask(188)/1000) ~= ngay then
	SetTask(188,ngay*1000)
	Msg2Player("Reset ngµy míi, sè l­îng qu¶ hiÖn t¹i lµ: 0 qu¶ !")
end
soluonggioihan = 1


if GetTask(188) - (ngay*1000) >= soluonggioihan then
Talk(1,"","Sè l­îng qu¶ Hoµng Kim sö dông ngµy h«m nay ®· ®¹t tèi ®a "..soluonggioihan.." qu¶ !")
return
end
n = GetItemCount(630)
DelItemIdx(idx);
if GetItemCount(630) == (n-1) then
	for i=1,30 do AddOwnExp(1000000) end
	Msg2Player("B¹n nhËn ®­îc 30.000.000 kinh nghiÖm !")
	SetTask(612,GetTask(612)+10)
	Msg2Player("B¹n nhËn ®­îc 10 ®iÓm sù kiÖn")
	SetTask(188,GetTask(188)+1)
	Msg2Player("Sè l­îng Qu¶ Hoµng Kim hiÖn t¹i ®· sö dông lµ: "..(GetTask(188) - (ngay*1000)).." / "..soluonggioihan.." qu¶ ")
else
	Talk(1,"","hack ha em ")
end

end
