function main()
if GetCurCamp() == 1 then
KickOutSelf()
end
if GetFightState() == 0 then
	SetFightState(1)
	SetPos(1862,3562)
	SetCamp(2)
	SetCurCamp(2)
else
	SetFightState(0)
	SetPos(1866,3568)
end
end