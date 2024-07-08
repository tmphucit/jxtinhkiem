function main()
w,x,y = GetWorldPos()
if GetGlbMissionV(53) == 9999 then
	if GetCurCamp() == 1 then
		SetPosU(1793,3341)
	elseif GetCurCamp() == 2 then
		SetPosU(1797,3345)
	end
end
end