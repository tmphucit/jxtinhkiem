function OnDeath()
end

function OnDrop(NpcIdx)
--if GetTeam() == nil then
--Talk(1,"","B�n ch�a l�p nh�m, kh�ng th� h�i c�y")
--return
--end

--if GetTeamSize() < 3 then
--Talk(1,"","T� ��i kh�ng �� 3 th�nh vi�n, kh�ng th� h�i c�y")
--return
--end

SetGlbMissionV(42, GetGlbMissionV(42) - 1)
Msg2SubWorld("C�y b�ch qu� c�n l�i: "..GetGlbMissionV(42).."")
map,_,_ = GetWorldPos()
team = GetTeam()
Msg2World("<color=yellow>- "..GetName().." �� h�i c�y b�ch qu� ")
idxplayer = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i 
	w,x,y = GetWorldPos()
	if w == map and GetTeam() == team then
			AddEventItem(random(318,320))
			Msg2Player("B�n nh�n ���c 1 ch� trong b� Ph�c L�c Th� ")
	end
end
PlayerIndex = idxplayer
end