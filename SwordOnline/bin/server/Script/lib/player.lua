if not PLAYER_HEAD then
PLAYER_HEAD = 1

function TRUE(value)
	return value ~=0 and value ~=nil 
end

function FALSE(value)
	return value == 0 or value==nil
end

function getPlayerInfo(playerIndex,baseInfo,task,tasktmp)
	if(not playerIndex or FALSE(playerIndex)) then
		return nil
	end
	local oldPid = PlayerIndex
	PlayerIndex = playerIndex
	local tab = {}
	if(type(baseInfo)=="table") then
		for i=1,getn(baseInfo) do
			if(baseInfo[i]=="pid") then
				tab.pid = PlayerIndex
			elseif(baseInfo[i]=="name") then
				tab.name = GetName()
			elseif(baseInfo[i]=="sex") then
				tab.sex = GetSex()
			elseif(baseInfo[i]=="level") then
				tab.level = GetLevel()
			elseif(baseInfo[i]=="faction") then
				--tab.faction = GetLastFactionNumber()
				tab.faction = GetFaction()
			elseif(baseInfo[i]=="teamid") then
			--[[dsfsdf
			tab.teamid = GetTeam()
			--]]
					if( GetTeam() == nil ) then tab.teamid = -1
					else tab.teamid = GetTeam()
					end;
			end
		end
	end
	if(type(task)=="table") then
		tab.task = {}
		for i=1,getn(task) do
			tab.task[task[i]] = GetTask(task[i])
		end
	end
	if(type(tasktmp)=="table") then
		tab.tasktmp = {}
		for i=1,getn(tasktmp) do
			tab.tasktmp[tasktmp[i]] = GetTaskTemp(tasktmp[i])
		end
	end
	PlayerIndex = oldPid
	return tab
end

function getTeamInfo(playerIndex,baseInfo,task,tasktmp)
	local size = callPlayerFunction(playerIndex,GetTeamSize)
	if size== 0 then return nil end --玩家不在队伍中
	local me,others,all = getPlayerInfo(playerIndex,baseInfo,task,tasktmp),{},{}
	local j=1
	for i=1,size do
		local plyIdx = callPlayerFunction(playerIndex,GetTeamMember,i)
		all[i] = getPlayerInfo(plyIdx,baseInfo,task,tasktmp)
		if(plyIdx ~= playerIndex) then
			others[j] = all[i]
			j = j+1
		end
	end
	return me,others,all
end

function sex2Word(sex)
	if(sex == 0) then
		return "男"
	else
		return "女"
	end
end

function sendMessage(playerIndex,msg)
	if(not playerIndex or FALSE(playerIndex)) then
		return
	end
	local oldPid = PlayerIndex
	PlayerIndex = playerIndex
	Msg2Player(msg)
	PlayerIndex = oldPid
end

function setPlayerTask(pid,tab)
	if(type(tab) ~="table") then
		return
	end
	local oldPid = PlayerIndex
	PlayerIndex = pid
	for k,v in tab do
		SetTask(k,v)
	end
	PlayerIndex = oldPid
	return
end

function setPlayerTaskTemp(pid,tab)
	if(type(tab) ~="table") then
		return
	end
	local oldPid = PlayerIndex
	PlayerIndex = pid
	for k,v in tab do
		SetTaskTemp(k,v)
	end
	PlayerIndex = oldPid
	return
end

function callPlayerFunction(pid,fun,...)
	local oldPid = PlayerIndex
	PlayerIndex = pid
	local ret = call(fun,arg)
	PlayerIndex = oldPid
	return ret
end


function SearchPlayer(inName)
oldPid = PlayerIndex
baseInfo = {"pid","name"}
for i=1,GetPlayerCount() do
PlayerIndex = i 
sTab = getPlayerInfo(PlayerIndex,baseInfo)
if( sTab.name == inName ) then 
print(i)
PlayerIndex = oldPid
return i 
end;
end;
PlayerIndex = oldPid
return 0
end;









end	
