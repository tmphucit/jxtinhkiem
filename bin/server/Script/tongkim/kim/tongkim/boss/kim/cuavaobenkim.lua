function main()
if (GetTask(12) == 2) then
toadox = 2037
toadoy = 2603

h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))
timehientai = m*60 + s
if GetTaskTemp(99) == 0 then
	SetTaskTemp(99,timehientai+10)
end

SetDeathScript("");
SetTask(117,0) -- Ket thuc bat tu

tinhtime = timehientai - GetTaskTemp(18)
if GetGlbMissionV(60) == 1000 then
	SetTask(118,GetTask(118) + tinhtime)
end

SetTaskTemp(18,0) -- Reset Task Time


SetFightState(0)
Msg2Player("B¹n ®· trë vÒ doanh tr¹i ")
NewWorld(61, toadox, toadoy);
end
end;