-- AlexKing <Death tieu xa>
Include("\\script\\hoatdong\\event_vantieu\\lib_vt.lua")
Include("\\script\\lib\\lib_task.lua")

function OnDeath(nNpcIndex,nDamageIndex)
	local nPlayerIndex = NpcIdx2PIdx(nDamageIndex);
	if (nPlayerIndex == 0) then	-- neu la quai vat thi ngung
	DelNpc(nNpcIndex);
	return end		
	PlayerIndex = nPlayerIndex;
	local nTask = GetTask(T_CUOPTIEU);
	if (nTask > MAX_CUOP_TIEU) then
		Talk(1,"","Ng­¬i ®· c­íp "..MAX_CUOP_TIEU.." lÇn tiªu");
	return end
	SetTask(T_CUOPTIEU,GetTask(T_CUOPTIEU)+1);
	Msg2Player("Thµnh c«ng c­íp tiªu lÇn "..nTask.."/"..MAX_CUOP_TIEU.."!");
end

function OnRevive(nNpcIndex)

end
