function OnDrop(NpcIdx)
Msg2SubWorld("<color=green>[S� Ki�n] <color=red>Boss Ti�u Ho�ng Kim <color=yellow>["..GetNpcName(NpcIdx).."]<color=red> �� b� "..GetName().." ti�u di�t")
team = GetTeam()

sx = RandomNew(1,100)
if sx < 30 then
	idxitem = AddEventItem(RandomNew(895,899))
	Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." nh�n ���c: <color=green>"..GetNameItemBox(idxitem).." ")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/DoPhoAnBangDinhQuoc.txt", "a");
	if LoginLog then
	write(LoginLog,"["..GetNameItemBox(idxitem).."] ["..GetAccount().."] ["..GetName().."] ["..GetLevel().."]- Time: "..thoigian.."\n");
	end
	closefile(LoginLog)

elseif sx < 40 then
	idxitem = AddEventItem(RandomNew(900,903))
	Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." nh�n ���c: <color=green>"..GetNameItemBox(idxitem).." ")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/DoPhoAnBangDinhQuoc.txt", "a");
	if LoginLog then
	write(LoginLog,"["..GetNameItemBox(idxitem).."] ["..GetAccount().."] ["..GetName().."] ["..GetLevel().."]- Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
end

idxp = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		AddOwnExp(1000000)
		Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m")
	end
end
PlayerIndex = idxp

end

function OnDeath()
end