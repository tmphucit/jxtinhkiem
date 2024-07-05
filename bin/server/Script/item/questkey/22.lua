

function main(idx)
ngay = tonumber(date("%d"))

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
	kn = GetLevelExp()
	if GetLevel() < 80 then
		a = random(10,20)
	elseif GetLevel() >= 80 and GetLevel() < 90 then
		a = random(5,10)
	elseif GetLevel() >= 90 and GetLevel() < 100 then
		a = random(3,8)
	elseif GetLevel() >= 100 and GetLevel() < 110 then
		a = random(1,5)
	else
		a = random(1,3)
	end
	kncx = a*kn/100
	AddOwnExp(kncx)
	Msg2Player("B¹n nhËn ®­îc "..kncx..".000.000 kinh nghiÖm !")
	SetTask(189,GetTask(189)+1)
	Msg2Player("Sè l­îng Qu¶ Hoµng Kim hiÖn t¹i ®· sö dông lµ: "..(GetTask(189) - (ngay*1000)).." / 5 qu¶ ")
else
	Talk(1,"","hack ha em ")
end

--Msg2Player("Test task: "..GetTask(189).." ")
end
