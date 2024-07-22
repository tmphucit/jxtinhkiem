function main()
if GetCurCamp() == 1 then
KickOutSelf()
end
if GetFightState() == 0 then
	SetFightState(1)
	SetPos(1859,3593)
	SetCamp(2)
	SetCurCamp(2)
else
	SetFightState(0)
	SetPos(1864,3597)
end
end