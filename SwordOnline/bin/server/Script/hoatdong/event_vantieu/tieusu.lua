-- AlexKing <nv van tieu>
-- Include("\\script\\lib\\lib_vatpham.lua")
-- Include("\\script\\lib\\lib_sukien.lua")
Include("\\script\\lib\\lib_task.lua")
Include("\\script\\hoatdong\\event_vantieu\\lib_vt.lua")

VANTIEUTHANHCONG = "Nhi�m v� ho�n th�nh, nhanh ch�ng tr� v� ph�c m�nh."
TIEUXABIHUY = "Ta kh�ng t�m th�y ti�u xa c�a ng��i."
NONHANNV = "Ng��i ch�a nh�n nhi�m v� �p ti�u."
END_TALK = "Ta ch� gh� ngang qua./no";
NOT_ROAD = "Ng��i �� �i sai l� tr�nh."
function main(nNpcIndex)
	SetTaskTemp(TMP_INDEX_NPC, nNpcIndex)	
	dofile("script/event/event_vantieu/tieusu.lua")
	SayNew("Ng��i t�m ta c� vi�c g� ?",2,
	"Ta ��n giao ti�u xa t� Song �ng ti�u c�c/tratieuxa",
	END_TALK)	
end

function tratieuxa()
	local dwNpcID = GetTask(T_NPCID);
	local nNpcIdx = FindNpcFrID(dwNpcID);
	local nNpcKind = GetTask(T_LOAITIEUXA);
	local nSTP = GetTask(T_NHANNVVTIEU);
	local nParam = GetNpcValue(GetTaskTemp(TMP_INDEX_NPC))
	
	if (nSTP == 0) then
	Talk(1,"",NONHANNV);	
	return end
	
	if (nSTP == 2) then
	Talk(1,"",VANTIEUTHANHCONG);	
	return end	
	
	if (nNpcIdx <= 0) then
	Talk(1,"",TIEUXABIHUY);	
	return end

	if (GetNpcValue(nNpcIdx) ~= nParam) then
	Talk(1,"",NOT_ROAD);	
	return end			
	
	local nNearNpcIdx = FindNearNpc(1,KIND_TIEUXA[nNpcKind][2],750);
	if (nNearNpcIdx ~= nNpcIdx) then
	Talk(1,"",TIEUXABIHUY);
	return end	
	
	SetTask(T_NHANNVVTIEU,2);
	SetTask(T_NPCID,0);	
	SetTask(T_LOAITIEUXA,0);	
	DelNpc(nNpcIdx);
	AddSkillState(509,1,0,108*2,-1)
	TalkEx(VANTIEUTHANHCONG,0);
end

function no()
end;