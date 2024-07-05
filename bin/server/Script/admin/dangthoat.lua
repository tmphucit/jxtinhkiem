function main()
w,x,y = GetWorldPos()
h,m,s = GetTimeNew()
timehientai = m*60  + s
if GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 500 then
	if w == 33 then
		if GetTask(128) == 1 then
			if GetTask(12) == 1 then
				SetGlbMissionV(83,GetGlbMissionV(83)-1)
				--DeleteTopTKNew()
			elseif GetTask(12) == 2 then
				SetGlbMissionV(84,GetGlbMissionV(84)-1)
				--DeleteTopTKNew()
			end
		end
	end
elseif GetGlbMissionV(60) == 2000 or GetGlbMissionV(60) == 1500 then
	if w == 61 then
		if GetTask(128) == 1 then
			if GetTask(12) == 1 then
				SetGlbMissionV(83,GetGlbMissionV(83)-1)
				--DeleteTopTKNew()
			elseif GetTask(12) == 2 then
				SetGlbMissionV(84,GetGlbMissionV(84)-1)
				--DeleteTopTKNew()
			end
		end
	end
end

if GetTaskTemp(22) == 1 then
	if w == 42 then
		SetGlbMissionV(12,GetGlbMissionV(12)-1)
	end
end

end