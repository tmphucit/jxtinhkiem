function OnDeath()
SetGlbMissionV(35,0)
SetGlbMissionV(36,GetGlbMissionV(36)+1)
Msg2World(""..GetName().." ®· tiªu diÖt Boss !!!")
end
function OnDrop(NpcIdx)
DropEvent(NpcIdx)
end