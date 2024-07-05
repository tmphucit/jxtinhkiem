

function main(idx)
ngay = tonumber(date("%d"))
if GetTask(115) == 15000 then
Talk(1,"","Nhan vat dua top khong duoc su dung !")
return
end

if floor(GetTask(189)/1000) ~= ngay then
	SetTask(189,ngay*1000)
	Msg2Player("Reset ngµy míi, sè l­îng qu¶ hiÖn t¹i lµ: 0 qu¶ !")
end
if GetTask(189) - (ngay*1000) >= 5 then
Talk(1,"","Sè l­îng qu¶ hoµng kim sö dông ngµy h«m nay ®· ®¹t tèi ®a 5 qu¶ !")
return
end

n = GetItemCount(22)
DelItemIdx(idx);
if GetItemCount(22) == (n-1) then
	exp = random(10,30)
	AddOwnExp(exp*1000000)
	Msg2Player("B¹n nhËn ®­îc "..exp..".000.000 kinh nghiÖm !")
	SetTask(189,GetTask(189)+1)
	Msg2Player("Sè l­îng Qu¶ Hoµng Kim hiÖn t¹i ®· sö dông lµ: "..(GetTask(189) - (ngay*1000)).." / 5 qu¶ ")
else
	Talk(1,"","hack ha em ")
end

--Msg2Player("Test task: "..GetTask(189).." ")
end
