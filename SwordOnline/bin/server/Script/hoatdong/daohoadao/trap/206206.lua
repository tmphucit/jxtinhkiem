function main()
if GetFightState() == 0 then
	SetPos(1653,3305)
	SetFightState(1)
else
	SetPos(1646,3313)
	SetFightState(0)
end
end