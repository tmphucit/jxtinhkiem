function main()
w,x,y = GetWorldPos()
if GetGlbMissionV(51) == 9999 then
	if GetCurCamp() == 2 then
		SetPosU(1664,3476)
	elseif GetCurCamp() == 1 then
		SetPosU(1658,3468)
	end
end
end