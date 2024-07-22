function main()
if GetCurCamp() == 2 then
KickOutSelf()
end
if GetFightState() == 0 then
	SetFightState(1)
	SetPos(1539,3280)
	SetCamp(1)
	SetCurCamp(1)
else
	SetFightState(0)
	SetPos(1537,3270)
end
end