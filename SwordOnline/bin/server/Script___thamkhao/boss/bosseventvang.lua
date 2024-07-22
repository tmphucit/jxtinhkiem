function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))
SetGlbMissionV(42, GetGlbMissionV(42) - 1)
Msg2World("<color=green>[Sù KiÖn] <color=red>Sè l­îng Boss Kú L©n Vµng hiÖn t¹i cßn l¹i: "..GetGlbMissionV(42).." con")


team = GetTeam()
w,x,y = GetWorldPos()
map = w
if GetTeam() ~= nill then
if GetTeamSize() >= 0 then
DropEvent(NpcIdx)
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
			if (floor(GetTask(455)/1000) ~= ngay) then
				SetTask(455, ngay*1000)
				Msg2Player("Reset Boss Kú L©n ngµy míi !")
			end
			if mod(GetTask(455),1000) < 5 then
				SetTask(455, GetTask(455) + 1)
				AddOwnExp(2000000)
				Msg2Player("B¹n nhËn ®­îc 2.000.000 kinh nghiÖm")
				Msg2Player("Giíi h¹n Boss Kú L©n Vµng: <color=green>"..mod(GetTask(455),1000).." / 5 con")
				
				sx = random(1,100)
				if sx < 30 then
					idxitem = AddEventItem(random(173,175))
					Msg2World(""..GetName().." s¨n Boss Kú L©n Vµng nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
				elseif sx >= 30 and sx < 33 then
					idxitem = AddEventItem(650)
					Msg2World(""..GetName().." s¨n Boss Kú L©n Vµng nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
				end
			else
				Msg2Player("Ng­¬i ®· ®¹t ®ñ sè l­îng 5 Boss Kú L©n Vµng ngµy h«m nay, kh«ng thÓ nhËn thªm")
			end
	end
	end

else
Talk(1,"","<color=red>HÖ Thèng<color> Tæ ®éi cÇn cã <color=yellow>3<color> ng­êi trë lªn")
end
else
Talk(1,"","<color=red>HÖ Thèng<color>: B¹n ch­a lËp tæ ®éi ")
end
end

