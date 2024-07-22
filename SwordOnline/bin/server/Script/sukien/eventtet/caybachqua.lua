function OnDeath()
end

function OnDrop(NpcIdx)
--if GetTeam() == nil then
--Talk(1,"","B¹n ch­a lËp nhãm, kh«ng thÓ h¸i c©y")
--return
--end

--if GetTeamSize() < 3 then
--Talk(1,"","Tæ ®éi kh«ng ®ñ 3 thµnh viªn, kh«ng thÓ h¸i c©y")
--return
--end

SetGlbMissionV(42, GetGlbMissionV(42) - 1)
Msg2SubWorld("C©y b¸ch qu¶ cßn l¹i: "..GetGlbMissionV(42).."")
map,_,_ = GetWorldPos()
team = GetTeam()
Msg2World("<color=yellow>- "..GetName().." ®· h¸i c©y b¸ch qu¶ ")
idxplayer = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i 
	w,x,y = GetWorldPos()
	if w == map and GetTeam() == team then
			AddEventItem(random(318,320))
			Msg2Player("B¹n nhËn ®­îc 1 ch÷ trong bé Phóc Léc Thä ")
	end
end
PlayerIndex = idxplayer
end