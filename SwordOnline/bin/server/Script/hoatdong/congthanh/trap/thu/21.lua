function main()
if GetCurCamp() == 2 then
KickOutSelf()
end
if GetFightState() == 0 then
	SetFightState(1)
	SetPos(1578,3254)
	SetCamp(1)
	SetCurCamp(1)
else
	SetFightState(0)
	SetPos(1574,3247)
end
end