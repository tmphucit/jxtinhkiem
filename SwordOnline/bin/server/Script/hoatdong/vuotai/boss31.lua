function OnDeath()
SetGlbMissionV(31,0)
SetGlbMissionV(32,GetGlbMissionV(32)+1)
Msg2World(""..GetName().." �� ti�u di�t Boss !!!")
end
function OnDrop(NpcIdx)
DropEvent(NpcIdx)
end