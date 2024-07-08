-- Include("\\script\\addnpccacmap\\trap\\mangtrap.lua")
-- function main(sel)
-- dichuyen(76)
-- NewWorld(8, 1649, 3567)
-- local dwNpcID = GetTask(8);
	-- local nNpcIdx = FindNpcFrID(dwNpcID);	
	-- if (nNpcIdx > 0) then
		-- NpcNewWorld(nNpcIdx,8, 1649, 3567)
	-- end	
-- end
Include("\\script\\lib\\lib_task.lua")
function main(nPlayerIndex)
	PlayerIndex = nPlayerIndex;
	if (GetLevel() >= 10) then	
	local dwNpcID = GetTask(T_NPCID);
	local nNpcIdx = FindNpcFrID(dwNpcID);	
	if (nNpcIdx > 0) then
		NpcNewWorld(nNpcIdx,8, 1649, 3567)
	end	
	NewWorld(8, 1649, 3567)
	SetFightState(1)	
	else
	Talk(1,"",15645)--phia truoc nguy hiem
	end
end;
