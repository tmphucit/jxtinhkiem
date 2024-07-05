function OnDeath()
ngay = tonumber(date("%d"))
if GetTask(135) ~= ngay then
SetTask(135,ngay)
SetTask(102,0)
end

if GetTask(102) < 50 then
	SetTask(102,GetTask(102)+1)
	Msg2Player("Sè l­îng c©y th«ng t×m ®­îc ®­îc: "..GetTask(102).." / 50 ")		
	AddOwnExp(400000)
	Msg2Player("B¹n nhËn ®­îc 400.000 kinh nghiÖm ")
	if GetItemCount(201) > 0 then
	DelItem(201)
	AddOwnExp(400000)
	Msg2Player("B¹n nhËn ®­îc thªm 400.000 kinh nghiÖm tõ c©y th«ng ")
	end
	

else
Talk(1,"","Sè l­îng c©y th«ng trong ngµy ®· ®¹t giíi h¹n ")
end

end

function OnDrop()
end