function OnDeath()
SetGlbMissionV(39,0)
SetGlbMissionV(40,GetGlbMissionV(40)+1)
Msg2World(""..GetName().." �� ti�u di�t Boss !!!")
end
function OnDrop(NpcIdx)
DropEvent(NpcIdx)
end