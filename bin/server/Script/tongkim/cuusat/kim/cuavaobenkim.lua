function main()
if (GetTask(12) == 2) then
toadox = 1668
toadoy = 3093
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))
	timehientai = m*60 + s
	if GetTaskTemp(99) == 0 then
		SetTaskTemp(99,timehientai+10)
	end
SetDeathScript("");
SetFightState(0)
SetTask(117,0)




Msg2Player("B¹n ®· trë vÒ doanh tr¹i ")
NewWorld(33, toadox, toadoy);
end
end;