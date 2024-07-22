function OnDrop(NpcIdx)
Msg2SubWorld("<color=green>[S˘ Ki÷n] <color=red>Boss Ti”u Hoµng Kim <color=yellow>["..GetNpcName(NpcIdx).."]<color=red> Æ∑ bﬁ "..GetName().." ti™u di÷t")
team = GetTeam()

sx = RandomNew(1,100)
if sx < 30 then
	idxitem = AddEventItem(RandomNew(895,899))
	Msg2SubWorld("ChÛc mıng Æπi hi÷p "..GetName().." nhÀn Æ≠Óc: <color=green>"..GetNameItemBox(idxitem).." ")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/DoPhoAnBangDinhQuoc.txt", "a");
	if LoginLog then
	write(LoginLog,"["..GetNameItemBox(idxitem).."] ["..GetAccount().."] ["..GetName().."] ["..GetLevel().."]- Time: "..thoigian.."\n");
	end
	closefile(LoginLog)

elseif sx < 40 then
	idxitem = AddEventItem(RandomNew(900,903))
	Msg2SubWorld("ChÛc mıng Æπi hi÷p "..GetName().." nhÀn Æ≠Óc: <color=green>"..GetNameItemBox(idxitem).." ")
	
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
		Msg2Player("Bπn nhÀn Æ≠Óc 1.000.000 kinh nghi÷m")
	end
end
PlayerIndex = idxp

end

function OnDeath()
end