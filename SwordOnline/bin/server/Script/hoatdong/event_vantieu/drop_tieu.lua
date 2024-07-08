-- AlexKing <droprate van tieu>
Include("\\script\\lib\\lib_vatpham.lua")
Include("\\script\\lib\\lib_task.lua")

function DropRate(nNpcIndex,nPlayerIndex)
	PlayerIndex = nPlayerIndex;
	local nTask = GetTask(T_CUOPTIEU);
	if (nTask > MAX_CUOP_TIEU) then
	return end
	DropNpcItemEx1(nNpcIndex,4,349,0,0,0,0,0);
end