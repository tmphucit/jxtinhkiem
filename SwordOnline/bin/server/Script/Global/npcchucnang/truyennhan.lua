--hoangnhk
Include("\\script\\header\\fuyuan.lua");
Include("\\script\\header\\taskid.lua");

TASK_THOIGIAN9	= 52 --THOI GIAN nhan danh vong


function main(NpcIndex)
	local END_TALK = "K�t th�c ��i tho�i/no";
	SayNew("LINK:<npc>",random(0,2),11312,5,
	-- "Minh nguy�t tr�n/minhnguyet",
	"Nh�n �i�m ph�c duy�n c�a b�n/nhanpd",
	"Nh�n �i�m danh v�ng (ch�i nhi�u gi�)/nhandv",
	"Ki�m tra th�i gian t�ch l�y Online/tichluy",
	"Li�n quan ��n ph�c duy�n/timhieu",
		END_TALK)
end

function nhanpd()
	if(IsFuYuanAvailable() ~= 1) then
		FuYuan_Start();
		FuYuan_Add(2);
		SayNew("Ng��i m�i s� nh�p giang h�, ��y l� m�t l� v�t nh�, h�y nh�n l�y.",0);
	return end;
	local nResult = FuYuan_Gain();
	if( nResult == 0 ) then
		SayNew("Ng��i x�ng pha giang h� nh�ng v�n ch�a �� gi� t�ch l�y!",0);
	elseif( nResult == 1 ) then
		SayNew("Ng��i x�ng pha giang h� �� l�u, c�ng c� 1 ch�t c�ng lao, ��y ph�n th��ng c�a ng��i.",0);
	end
end;

function nhandv()
if (GetGameTime() - GetTask(TASK_THOIGIAN9) >= 43200) then
	SetTask(TASK_THOIGIAN9,GetGameTime())
	Talk(1,"","Ta nh�n th�y s� c� g�ng � trong m�t c�a ng��i, ng��i ti�n b� ta c�ng r�t vui m�ng. H�y ti�p t�c c� g�ng l�n!")
	i = random(0,99)
	if (i < 19) then
		AddRepute(1)
		Msg2Player("Danh v�ng t�ng l�n 1 �i�m.")
	elseif (i < 36) then
		AddRepute(2)
		Msg2Player("Danh v�ng t�ng l�n 2 �i�m.")
	elseif (i < 51) then
		AddRepute(3)
		Msg2Player("Danh v�ng t�ng l�n 3 �i�m.")
	elseif (i < 64) then
		AddRepute(4)
		Msg2Player("Danh v�ng t�ng l�n 4 �i�m.")
	elseif (i < 75) then
		AddRepute(5)
		Msg2Player("Danh v�ng t�ng l�n 5 �i�m.")
	elseif (i < 84) then
		AddRepute(6)
		Msg2Player("Danh v�ng t�ng l�n 6 �i�m.")
	elseif (i < 91) then
		AddRepute(7)
		Msg2Player("Danh v�ng t�ng l�n 7 �i�m.")
	elseif (i < 96) then
		AddRepute(8)
		Msg2Player("Danh v�ng t�ng l�n 8 �i�m.")
	elseif (i < 99) then
		AddRepute(9)
		Msg2Player("Danh v�ng t�ng l�n 9 �i�m.")
	else
		AddRepute(10)
		Msg2Player("Danh v�ng t�ng l�n 10 �i�m.")
	end
else
	SayNew("Ng��i v�n ch�a �� �i�u ki�n �� nh�n danh v�ng. H�y c� g�ng h�n n�a!",0)
end
end;

function tichluy()
	if(IsFuYuanAvailable() ~= 1) then
		FuYuan_Start();
		FuYuan_Add(2);
		SayNew("Ng��i m�i s� nh�p giang h�, ��y l� m�t l� v�t nh�, h�y nh�n l�y.",0);
	return end;
	local nFYTotalTime, nFYValidTime = FuYuan_GetDepositTime();
	SayNew(format("K� t� l�n nh�n ph�c duy�n tr��c, ng��i �� t�ch l�y <color=Yellow>%d g %d ph�t %d gi�y<color> th�i gian Online",nFYValidTime/60/60/18,mod(nFYValidTime/60/18,60),mod(nFYValidTime/18,60)));
end;

function minhnguyet()
NewWorld(520,1601,3268);
SetFightState(0);
Msg2Player("Xin h�y ng�i y�n, ch�ng ta �i "..GetWorldName(520).." n�o");
end;

function timhieu()
	Talk( 3, "", "Ph�c duy�n t�ch l�y: Th�ng qua t�ch l�y th�i gian ch�i, c� th� ��i �i�m ph�c duy�n. C� th� t�i T��ng D��ng th�n b� th��ng nh�n Li�u �t ��i c�c lo�i v�t ph�m ��c th�.","Ph�c duy�n ��i: t�ch l�y hai gi� online tr� l�n , �i c�c ��i th�nh th� t�m V� L�m Minh Ch� Truy�n Nh�n l� ���c ��i, m�t ng�y ���c ��i 2 l�n, t�ch l�y � tuy�n th�i gian 4 gi� tr� l�n, m�i gi� ��i 1 �i�m ph�c duy�n.", "H�n ch� �i�u ki�n: Ng�i t� kh�ng ���c t�ch l�y �i�m ph�c duy�n." );
end;

function no()
end;
