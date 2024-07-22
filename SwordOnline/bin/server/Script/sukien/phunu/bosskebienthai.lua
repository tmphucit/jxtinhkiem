
function OnDeath()
end

function OnDrop(NpcIdx)
w1,x1,y1 = GetWorldPos()
ngay = tonumber(date("%d"))
Msg2World("Boss KÎ BiÕn Th¸i ®· bÞ nhãm cña <color=yellow>"..GetName().."<color=red> tiªu diÖt.")

sx = RandomNew(1,100)
if sx < 20 then
	idxitem = AddEventItem(random(698,699))
	Msg2SubWorld("- "..GetName().." nhËn ®­îc 1 "..GetNameItemBox(idxitem).."")
end
team = GetTeam()
if team == nil then

	name = GetName()
	AddOwnExp(10000000)
	Msg2Player("B¹n nhËn ®­îc 10.000.000 kinh nghiÖm")
	for k=1,20 do AddEventItem(732) end
	Msg2Player("B¹n nhËn ®­îc 20 Nô Hång Mong Manh")
	
	idxp = PlayerIndex
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == w1 and GetName() ~= name then
			AddOwnExp(5000000)
			Msg2Player("B¹n nhËn ®­îc 5.000.000 kinh nghiÖm")
		end
	end
	PlayerIndex = idxp		
else
	idxp = PlayerIndex
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		w,x,y = GetWorldPos()
		if team == GetTeam() then
			AddOwnExp(10000000)
			Msg2Player("B¹n nhËn ®­îc 10.000.000 kinh nghiÖm")
			for k=1,20 do AddEventItem(732) end
			Msg2Player("B¹n nhËn ®­îc 20 Nô Hång Mong Manh")
		elseif w == w1 then
			AddOwnExp(5000000)
			Msg2Player("B¹n nhËn ®­îc 5.000.000 kinh nghiÖm")
		end
	end
	PlayerIndex = idxp
end
end