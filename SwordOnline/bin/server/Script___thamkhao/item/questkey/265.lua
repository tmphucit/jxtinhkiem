
function main(idx)

w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
if GetLevel() < 80 then
Talk(1,"","Lo¹i qu¶ nµy chØ sö dông cho nh©n vËt 80 trë lªn !")
return
end
if floor(GetTask(902)/1000) ~= ngay then
	SetTask(902,ngay*1000)
	Msg2Player("Reset ngµy míi, sè l­îng qu¶ hiÖn t¹i lµ: 0 qu¶ !")
end
soluonggioihan = 1


if GetTask(902) - (ngay*1000) >= soluonggioihan then
Talk(1,"","Sè l­îng qu¶ Hoµng Kim sö dông ngµy h«m nay ®· ®¹t tèi ®a "..soluonggioihan.." qu¶ !")
return
end
n = GetItemCount(265)
DelItemIdx(idx);
if GetItemCount(265) == (n-1) then
	AddOwnExp(20000000)
	Msg2Player("B¹n nhËn ®­îc 20.000.000 kinh nghiÖm !")
	SetTask(902,GetTask(902)+1)
	Msg2Player("Sè l­îng Qu¶ Hoµng Kim hiÖn t¹i ®· sö dông lµ: "..(GetTask(902) - (ngay*1000)).." / "..soluonggioihan.." qu¶ ")
else
	Talk(1,"","hack ha em ")
end

end
