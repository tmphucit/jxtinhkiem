
function main(idx)

w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
if floor(GetTask(189)/1000) ~= ngay then
	SetTask(189,ngay*1000)
	Msg2Player("Reset ngµy míi, sè l­îng qu¶ hiÖn t¹i lµ: 0 qu¶ !")
end
soluonggioihan = 5


if GetTask(189) - (ngay*1000) >= soluonggioihan then
Talk(1,"","Sè l­îng qu¶ Huy Hoµng Kim sö dông ngµy h«m nay ®· ®¹t tèi ®a "..soluonggioihan.." qu¶ !")
return
end
if (GetLevel() < 100)  then
	Talk(1,"","Ng­êi ch¬i v­ët cÊp 100 kh«ng thÓ sö dông  ")
	return 1
	end
n = GetItemCount(265)
DelItemIdx(idx);
if GetItemCount(265) == (n-1) then
	-- if GetLevel() < 100 then
		for i=1,50 do 
			AddOwnExp(200000)
		end
		SetTask(612,GetTask(612)+4)
		Msg2Player("B¹n nhËn ®­îc 4 ®iÓm sù kiÖn")
		Msg2Player("B¹n nhËn ®­îc 10.000.000 kinh nghiÖm !")
		SetTask(189,GetTask(189)+1)
		Msg2Player("Sè l­îng Huy Hoµng Kim hiÖn t¹i ®· sö dông lµ: "..(GetTask(189) - (ngay*1000)).." / "..soluonggioihan.." qu¶ ")

else
	Talk(1,"","hack ha em ")
end

end