function main()
if GetCurCamp() == 1 then
KickOutSelf()
end
if GetFightState() == 0 then
	SetFightState(1)
	SetPos(1904,3544)
	SetCamp(2)
	SetCurCamp(2)
else
	SetFightState(0)
	SetPos(1907,3554)
end
end