function OnDeath()
SetGlbMissionV(27,0)
SetGlbMissionV(28,GetGlbMissionV(28)+1)
Msg2World(""..GetName().." �� ti�u di�t Boss !!!")
end
function OnDrop(NpcIdx)
DropEvent(NpcIdx)
end