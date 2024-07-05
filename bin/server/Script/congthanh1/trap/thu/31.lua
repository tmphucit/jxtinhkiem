function main()
if GetCurCamp() == 2 then
KickOutSelf()
end
if GetFightState() == 0 then
	SetFightState(1)
	SetPos(1583,3224)
	SetCamp(1)
	SetCurCamp(1)
else
	SetFightState(0)
	SetPos(1579,3226)
end
end