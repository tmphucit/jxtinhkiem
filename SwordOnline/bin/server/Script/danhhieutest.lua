function main(nItemIdx)
dofile ("script\\danhhieutest.lua")
	doEarn(nItemIdx);
end

function doEarn(nItemIdx)
	local nSkillEffectTime = GetSkillEffectTime(503)
	local nAddTime = 60*60*18;
	if (nSkillEffectTime < 1) then
		AddSkillTime(503,1,1,nAddTime,1,1);
	else 
		AddSkillEffect(503,1,1,nSkillEffectTime+nAddTime, 1, 1);
	end
	RemoteItem(nItemIdx,1);
end