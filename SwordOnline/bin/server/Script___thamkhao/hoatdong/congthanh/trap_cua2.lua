function main()
w,x,y = GetWorldPos()
if GetGlbMissionV(52) == 9999 then
	if GetCurCamp() == 2 then
		SetPosU(1730,3411)
	elseif GetCurCamp() == 1 then
		SetPosU(1725,3407)
	end
end
end