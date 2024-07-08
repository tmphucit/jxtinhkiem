function main()
w,x,y = GetWorldPos()
h,m,s = GetTimeNew()

LoginLog = openfile("Data/TestThoat.txt", "a");
if LoginLog then
write(LoginLog,""..GetAccount().." - "..GetName().."\n");
end
closefile(LoginLog)

SetTask(997, GetTask(99) + GetItemCount2(697))
SetTask(950, 0)

timehientai = m*60  + s
if GetGlbMissionV(60) == 500 or GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 2500 or GetGlbMissionV(60) == 3000 then
	if w == 33 or w == 37 then
		if GetTask(128) == 1 or GetTask(128) == 2 then
			if GetTask(12) == 1 then
				SetGlbMissionV(83,GetGlbMissionV(83)-1)
				--DeleteTopTKNew()
			elseif GetTask(12) == 2 then
				SetGlbMissionV(84,GetGlbMissionV(84)-1)
				--DeleteTopTKNew()
			end
		end
	end
elseif GetGlbMissionV(60) == 1500 or GetGlbMissionV(60) == 2000 then
	if w == 33 or w == 37  then
		if GetTask(128) == 1 or GetTask(128) == 2 then
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