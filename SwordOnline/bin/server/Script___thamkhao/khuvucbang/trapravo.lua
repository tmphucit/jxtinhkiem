function main()
w,x,y = GetWorldPos()
SetPunish(1);
SetTempRevPos(w,(x+5)*32,(y+5)*32)

if GetFightState() == 0 then
	SetFightState(1)
	SetPos(1588,3181)
else
	SetFightState(0)
	SetPos(1592,3185)
end
end