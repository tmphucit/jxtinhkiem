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




SetFightState(0)
Msg2Player("B�n �� tr� v� doanh tr�i ")
NewWorld(61, toadox, toadoy);
end
end;