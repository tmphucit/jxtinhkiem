function main()
if (GetTask(12) == 1) then
toadox = 1657
toadoy = 3135

h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))
timehientai = m*60 + s
if GetTaskTemp(99) == 0 then
	SetTaskTemp(99,timehientai+10)
end

SetDeathScript("");
SetFightState(0)

tinhtime = timehientai - GetTaskTemp(18)
if GetGlbMissionV(60) == 1000 then
	SetTask(118,GetTask(118) + tinhtime)
end

SetTaskTemp(18,0) -- Reset Task Time

SetTask(117,0) -- Het bat tu
Msg2Player("B�n �� tr� v� doanh tr�i ")
NewWorld(61, toadox, toadoy);
end
end;