function main(nPlayerIndex)
	PlayerIndex = nPlayerIndex;
	if (GetLevel() >= 10) then
	local dwNpcID = GetTask(T_NPCID);
	local nNpcIdx = FindNpcFrID(dwNpcID);	
	if (nNpcIdx > 0) then
		NpcNewWorld(nNpcIdx,29, 1651,3571)
	end		
	NewWorld(29, 1651,3571)		
	SetFightState(1)
	else
	Talk(1,"",15645)--phia truoc nguy hiem
	end		
end;
