function main()
if GetFightState() == 0 then
	SetPos(1634,3240)
	SetFightState(1)
else
	SetPos(1627,3247)
	SetFightState(0)
end
end