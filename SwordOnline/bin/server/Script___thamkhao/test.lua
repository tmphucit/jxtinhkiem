function main(idx)
DelNpc(idx)
SetGlbMissionV(11, GetGlbMissionV(11) - 1)
Msg2SubWorld("Dem cay: "..GetGlbMissionV(11).."")

end
