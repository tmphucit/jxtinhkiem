-- Author: AlexKing
-- Date: 28/11/2016
Include("\\script\\lib\\lib_task.lua")
Include("\\Script\\Global\\sourcejx49.lua")
Include("\\script\\lib\\lib_vatpham.lua")
Include("\\script\\hoatdong\\event_vantieu\\lib_vt.lua")

END_TALK = "Ta ch� gh� ngang qua./no";
KIND_TIEU_XA = "Ng��i �� ng�u nhi�n nh�n ���c nhi�m v� �p %s %s";
NEED_MONEY = 50000;
NEED_MONEY_GO = 100000;
TIEUXABIHUY = "Ng��i ch�a nh�n nhi�m v� �p ti�u ho�c ti�u xa �� b� ph� hu�."
HUYNHIEMVU = "Hu� nhi�m v� �p ti�u th�nh c�ng."
NOENOUGHMONEY = "Ng��i kh�ng �� %d l��ng."
GO_TIEUSU = "H�y nhanh ch�ng �p ti�u t�i Long M�n Ti�u S� [%s] to� �� (%d/%d), ng��i c� t�i �a 30 ph�t."
MAXVANTIEU = 5;
function main(nNpcIndex)
	dofile("script/hoatdong/event_vantieu/tieudau.lua")
	local nSTP = GetTask(T_NHANNVVTIEU);
	local dwNpcID = GetTask(T_NPCID);
	SetTaskTemp(TMP_INDEX_NPC, nNpcIndex)	
	
	if (nSTP == 0) then			-- chua nhan
	SayNew(12655,3,
	"Nh�n nhi�m v� �p ti�u/vantieu",
	"Ta mu�n mua ��o c� �p ti�u/mua",		
	END_TALK)
	return end		
	
	if (nSTP == 1) and (dwNpcID == 0) then		-- da nhan nv, chua khoi tao npc
	SayNew(12655,4,
	"Ta mu�n d�ng Ho�n Ti�u Ch� l�m m�i nhi�m v� �p ti�u/lammoi",
	"Ta kh�ng mu�n l�m m�i nhi�m v� �p ti�u/go_tieuxa",
	"Ta mu�n s� d�ng u� nhi�m trang nh�n ti�u xa v�ng/uynhiemtrang",
	"H�y cho ta suy ngh� th�m/Exit")	
	return end
	
	if (nSTP == 1) and (dwNpcID > 0) then		-- dang van tieu
	SayNew(12655,5,
	"T� b� nhi�m v� �p ti�u/huytieu",
	"Truy�n t�ng t�i ti�u xa (100000 l��ng)/truyentongtieuxa",
	"H�y ��a ta t�i n�i �p ti�u/dichuyen",	
	"Xem th�ng tin ti�u xa/thongtin",
	END_TALK)	
	return end	

	if (nSTP == 2) then			-- hoan thanh
	SayNew(12655,3,
	"Nh�n th��ng nhi�m v� �p ti�u/thuongtieu",	
	"Ta mu�n mua ��o c� �p ti�u/mua",		
	END_TALK)
	return end	
end 

function vantieu()
	if GetTask(T_NVVTTRONGNGAY) >= MAXVANTIEU then
		Talk(1,"","H�m nay ng��i �� v�n "..MAXVANTIEU.." l�n ti�u r�i.")	
	return end
	OpenCheckItemBox("��t v�o v�t ph�m","Ph� �p ti�u: 1 H� Ti�u L�nh, 50 v�n l��ng","ktdieukien")
end

function ktdieukien()
	if GetCash() < NEED_MONEY then
	Talk(1,"",format(NOENOUGHMONEY,NEED_MONEY))
	return end
	
	-- if GetItemCount(BLUEITEM,0,4,348,0,0,0,ROOMG) == 1 then
		-- DelItem(BLUEITEM,0,4,348,0,0,0,ROOMG,1)
		Pay(NEED_MONEY)
		chitiettieuxa();
		-- EndGiveBox();	-- dong give box
		SetTask(T_NHANNVVTIEU,1);		
	-- else
		-- Talk(1,"","Vui l�ng ��t v�o ch�nh x�c v�t ph�m.")
	-- end	
end

function chitiettieuxa()
	local nRand = random(1,50);
	if nRand < 40 then
	SetTask(T_LOAITIEUXA,1);
	Talk(1,"luachon",format(KIND_TIEU_XA,
		KIND_TIEUXA[GetTask(T_LOAITIEUXA)][4],KIND_TIEUXA[GetTask(T_LOAITIEUXA)][3]));
	return end
	
	if nRand < 50 then
	SetTask(T_LOAITIEUXA,2);
	Talk(1,"luachon",format(KIND_TIEU_XA,
		KIND_TIEUXA[GetTask(T_LOAITIEUXA)][4],KIND_TIEUXA[GetTask(T_LOAITIEUXA)][3]));
	return end
	
	if nRand == 50 then
	SetTask(T_LOAITIEUXA,3);
	Talk(1,"luachon",format(KIND_TIEU_XA,
		KIND_TIEUXA[GetTask(T_LOAITIEUXA)][4],KIND_TIEUXA[GetTask(T_LOAITIEUXA)][3]));
	return end	
end

function luachon()
	SayNew(12655,4,
	"Ta mu�n d�ng Ho�n Ti�u Ch� l�m m�i nhi�m v� �p ti�u/lammoi",
	"Ta kh�ng mu�n l�m m�i nhi�m v� �p ti�u/go_tieuxa",
	"Ta mu�n s� d�ng u� nhi�m trang nh�n ti�u xa v�ng/uynhiemtrang",
	"H�y cho ta suy ngh� th�m/Exit")	
end

function lammoi()
	-- if GetItemCount(BLUEITEM,0,4,343,0,0,0,ROOME) >= 1 then
		-- DelItem(BLUEITEM,0,4,343,0,0,0,ROOME,1)
		TimeBox("l�m m�i ti�u xa",5,"chitiettieuxa")
	-- else
		-- Talk(1,"luachon","Ng��i kh�ng c� Ho�n Ti�u Ch�.")
	-- end
end

function uynhiemtrang()
	if GetItemCount(BLUEITEM,0,4,342,0,0,0,ROOME) >= 1 then
		DelItem(BLUEITEM,0,4,342,0,0,0,ROOME,1)
		SetTask(T_LOAITIEUXA,3);
		Talk(1,"go_tieuxa",format(KIND_TIEU_XA,
			KIND_TIEUXA[GetTask(T_LOAITIEUXA)][4],KIND_TIEUXA[GetTask(T_LOAITIEUXA)][3]));
	else
		Talk(1,"luachon","Ng��i kh�ng c� U� Nhi�m Trang.")
	end
end

function go_tieuxa()
	local nParam = GetNpcValue(GetTaskTemp(TMP_INDEX_NPC))
	local nKind = GetTask(T_LOAITIEUXA);
	local nW,nX,nY = GetWorldPos();
--	npc tieu xa
	local nName = GetName();
	local nCamp = GetCurCamp();
	local nNpcName = KIND_TIEUXA[nKind][3];
	local nNpcIdx = AddNpcEx3({KIND_TIEUXA[nKind][2]},1,{0,1,2,3,4},nW,nX*32,nY*32,DROPRATETIEU,ONDEATHTIEU,
		nName..nNpcName,nCamp,0,50000,nil,nil,nil,nil,nil,nil,100);
	SetNpcValue(nNpcIdx,nParam);
	SetNpcBoss(nNpcIdx,nKind);
	SetNpcOwner(nNpcIdx,nName,1);
	SetNpcFindPathTime(nNpcIdx,32400);	-- 30 phut
--	hoan thanh xong nhan nhiem vu
	local dwNpcID = GetNpcID(nNpcIdx);
	SetTask(T_NPCID,dwNpcID);
	local str = format(GO_TIEUSU,GetMapName(NPC_TALKTIEU[nParam][9]),floor(NPC_TALKTIEU[nParam][10]/8),floor(NPC_TALKTIEU[nParam][11]/16));
	Talk(1,"",str);
	str = format("<color=green>Xa Ti�u:<color> t�i %s %d/%d. ",GetMapName(NPC_TALKTIEU[nParam][9]),floor(NPC_TALKTIEU[nParam][10]/8),floor(NPC_TALKTIEU[nParam][11]/16));
	AddNote(1,str);	
end

function dichuyen()
	if GetItemCount(BLUEITEM,0,4,342,0,0,0,ROOME) < 1 then
	Talk(1,"","Ng��i kh�ng mang theo 'U� nhi�m trang'.");	
	return end
	local nParam = GetNpcValue(GetTaskTemp(TMP_INDEX_NPC))
	local dwNpcID = GetTask(T_NPCID);
	local nNpcIdx = FindNpcFrID(dwNpcID);
	if (nNpcIdx > 0) then
	NpcNewWorld(nNpcIdx,NPC_TALKTIEU[nParam][9],NPC_TALKTIEU[nParam][10],NPC_TALKTIEU[nParam][11]);
	NewWorld(NPC_TALKTIEU[nParam][9],NPC_TALKTIEU[nParam][10],NPC_TALKTIEU[nParam][11]);
	SetFightState(1);
	return end
	DelItem(BLUEITEM,0,4,342,0,0,0,ROOME,1)
	Talk(1,"","Ng��i ch�a nh�n nhi�m v� �p ti�u.");
end

function truyentongtieuxa()	
	if GetCash() < NEED_MONEY_GO then
	Talk(1,"",format(NOENOUGHMONEY,NEED_MONEY_GO))
	return end

	local dwNpcID = GetTask(T_NPCID);
	local nNpcIdx = FindNpcFrID(dwNpcID);
	
	if (nNpcIdx > 0) then
	local nValue = GetNpcFightState(nNpcIdx);
	local nW,nX,nY = GetNpcWorldPos(nNpcIdx);
	NewWorld(nW,nX,nY);
	if (nValue > 0) then
	SetFightState(1);
	end
	Pay(NEED_MONEY_GO);
	return end	
	
	Talk(1,"",TIEUXABIHUY);	
end

function thongtin()
	local dwNpcID = GetTask(T_NPCID);
	local nNpcIdx = FindNpcFrID(dwNpcID);
	if (nNpcIdx > 0) then
	local nW,nX,nY = GetNpcWorldPos(nNpcIdx);
	local nKind = GetNpcBoss(nNpcIdx);
	local nColor = KIND_TIEUXA[nKind][4];
	local nNpcName = KIND_TIEUXA[nKind][3];
	local nMapName = GetMapName(nW);
	nX,nY = floor(nX/8),floor(nY/16);
	Msg2Player("Th�ng tin ti�u xa:"..nColor..""..nNpcName.." <color>v� tr� "..nMapName.." "..nX.."/"..nY.."");
	return end
	Talk(1,"",TIEUXABIHUY);
end

function huytieu()
	local dwNpcID = GetTask(T_NPCID);
	local nNpcIdx = FindNpcFrID(dwNpcID);	
	if (nNpcIdx > 0) then
	DelNpc(nNpcIdx);
	end
	SetTask(T_NPCID,0);	
	SetTask(T_LOAITIEUXA,0);	
	SetTask(T_NHANNVVTIEU,0);
	SetTask(T_NVVTTRONGNGAY,GetTask(T_NVVTTRONGNGAY)+1);		
	Talk(1,"",HUYNHIEMVU);		
end

function thuongtieu()	
	SetTask(T_NHANNVVTIEU,0);
	SetTask(T_NVVTTRONGNGAY,GetTask(T_NVVTTRONGNGAY)+1);	
end;

function mua()

end

function no()
	Talk(1,"",12245)
end;

function Exit()
end;