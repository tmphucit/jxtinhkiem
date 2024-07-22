function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))

team = GetTeam()
w,x,y = GetWorldPos()
map = w
Msg2SubWorld("Chóc mõng ®¹i hiÖp ["..GetName().."] ®· tiªu diÖt Boss TiÓu Tinh Linh vµ mang 1.000.000 vÒ cho nhãm cña m×nh")

DropEvent(NpcIdx)
if GetTeam() == nill then
	for k=1,1000 do AddOwnExp(1000) end
	Msg2Player("B¹n nhËn ®­îc 1.000.000 kinh nghiÖm tiªu diÖt Boss TiÓu Tinh Linh")
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then	
			for k=1,1000 do AddOwnExp(1000) end
			Msg2Player("B¹n nhËn ®­îc 1.000.000 kinh nghiÖm")
	end
	end
end
end
