function main()
if GetFightState() == 0 then
	SetPos(1607,3181)
	SetFightState(1)
else
	SetPos(1599,3179)
	SetFightState(0)
end
end