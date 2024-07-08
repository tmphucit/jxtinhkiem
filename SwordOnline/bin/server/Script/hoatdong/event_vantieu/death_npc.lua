-- AlexKing <Death boss van tieu>
function OnDeath(nNpcIndex,nDamageIndex)
	local nPlayerIndex = NpcIdx2PIdx(nDamageIndex);
	PlayerIndex = nPlayerIndex;
end

function OnRevive(nNpcIndex)
	SetNpcBoss(nNpcIndex,3)
end
