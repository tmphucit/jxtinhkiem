function main()
Msg2Player("TRAP 31")
if GetCurCamp() == 2 then
KickOutSelf()
end
if GetFightState() == 0 then
	SetFightState(1)
	NewWorld(36,1600,3199)
	SetCamp(1)
	SetCurCamp(1)
else
	SetFightState(0)
	NewWorld(36,1579,3235)
end
end