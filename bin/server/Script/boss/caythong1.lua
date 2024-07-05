function OnDeath()
if GetTask(102) < 50 then
Talk(1,"","Giíi h¹n c©y th«ng ®¹t møc tèi ®a !")
return
end

name = GetName()
AddOwnExp(1000000)
Msg2Player("B¹n nhËn ®­îc 1.000.000 kinh nghiÖm rung c©y th«ng ®Æc biÖt !")

for i=1,GetCountPlayerMax() do
PlayerIndex = i
w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
if GetTask(135) ~= ngay then
SetTask(135,ngay)
SetTask(102,0)
end

if w == 2 then
SetTask(102,GetTask(102)+1)
Msg2Player("Sè l­îng c©y th«ng t×m ®­îc ®­îc: "..GetTask(102).." / 50 ")
AddOwnExp(1000000)
Msg2Player("B¹n nhËn ®­îc 1.000.000 kinh nghiÖm tõ c©y th«ng ®Æc biÖt do ["..name.."] rung")

end

end

end

function OnDrop()
end