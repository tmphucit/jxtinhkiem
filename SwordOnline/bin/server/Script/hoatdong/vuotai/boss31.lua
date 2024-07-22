function OnDeath()
SetGlbMissionV(31,0)
SetGlbMissionV(32,GetGlbMissionV(32)+1)
Msg2World(""..GetName().." ®· tiªu diÖt Boss !!!")
end
function OnDrop(NpcIdx)
DropEvent(NpcIdx)
end