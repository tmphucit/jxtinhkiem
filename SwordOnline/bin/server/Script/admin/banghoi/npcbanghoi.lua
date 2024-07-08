Include("\\script\\congthanh\\dsbang.lua")

longtru1 = 323
longtru2 = 32
longtru3 = 32
longtru11 = 32
longtru22 = 32
longtru33 = 33

function main()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if gio == 18 and phut >= 45 then
Say("<color=green>Qu�n L� Bang H�i<color>: Ta chuy�n qu�n l� nh�ng v�n �� v� Bang h�i ",4,
"T�o Bang h�i/taobang",
"Tham gia C�ng th�nh chi�n /xthamgia", 
"T�m hi�u v� Bang h�i/timhieu",
"Tho�t./no")
elseif gio == 19 or gio == 20 then
Say("<color=green>Qu�n L� Bang H�i<color>: Ta chuy�n qu�n l� nh�ng v�n �� v� Bang h�i ",4,
"T�o Bang h�i/taobang",
"Tham gia C�ng th�nh chi�n /xthamgia", 
"T�m hi�u v� Bang h�i/timhieu",
"Tho�t./no")
else
Say("<color=green>Qu�n L� Bang H�i<color>: Ta chuy�n qu�n l� nh�ng v�n �� v� Bang h�i ",4,
"T�o Bang h�i/taobang",
"Tham gia C�ng th�nh chi�n /xthamgia", 
"T�m hi�u v� Bang h�i/timhieu",
"Tho�t./no")
end
end

function xthamgia()
Talk(1,"","Ch�c n�ng s� Update trong th�i gian s�p t�i !")
end
function taobang()
OpenTong(1)
end

function timhieu()
Talk(3,"","<color=red>�i�u ki�n l�p bang:<color>\n- 1 Nh�c v��ng ki�m\n- Level tr�n 50\n- 1000 v�n l��ng ",
"Hi�n t�i server �� update c�c ch�c n�ng c� b�n c�a 1 Bang h�i ",
"Nh�ng ch�c n�ng s� ���c Update d�n trong nh�ng l�n update ti�p theo ")
end
function thamgia2()
Talk(1,"","<color=green>Qu�n L� Bang H�i<color>: C�ng th�nh chi�n s� b�o danh l�c 18h45 v� di�n ra t� 19h00 - 21h00 ")
end

function no()
end



function TaoLongTru()
npcmapindex = SubWorldID2Idx(36)

longtru1 = AddNpc(776,95,npcmapindex,177*8*32,189*16*32)
SetNpcScript(longtru1, "\\script\\congthanh\\npcbanghoi.lua");
longtru2 = AddNpc(776,95,npcmapindex,184*8*32,185*16*32)
SetNpcScript(longtru2, "\\script\\congthanh\\npcbanghoi.lua");
longtru3 = AddNpc(776,95,npcmapindex,170*8*32,193*16*32)
SetNpcScript(longtru3, "\\script\\congthanh\\npcbanghoi.lua");

longtru11 = AddNpc(778,95,npcmapindex,177*8*32,189*16*32)
SetNpcScript(longtru11, "\\script\\congthanh\\npcbanghoi.lua");
longtru22 = AddNpc(778,95,npcmapindex,184*8*32,185*16*32)
SetNpcScript(longtru22, "\\script\\congthanh\\npcbanghoi.lua");
longtru33 = AddNpc(778,95,npcmapindex,170*8*32,193*16*32)
SetNpcScript(longtru33, "\\script\\congthanh\\npcbanghoi.lua");
SetGlbMissionV(10,0)
end

function OnDeath(idx)
if GetTask(80) == 1 and GetCurCamp() == 2 then 
	if ( longtru11 == tonumber(idx)) then
		HideNpc(longtru11,99999999)
		HideNpc(longtru1,18*30)
		SetGlbMissionV(10,GetGlbMissionV(10)+1)
		Msg2SubWorld("C�ng th�nh binh s� ["..GetName().."] �� ph� h�y L�p D��ng Long Tr�, s� l��ng Long Tr� chi�m ���c b�n c�ng th�nh l� : "..GetGlbMissionV(10).." ")
	elseif tonumber(idx) == longtru22 then 
		HideNpc(longtru22,999999999)
		HideNpc(longtru2,18*30)
		SetGlbMissionV(10,GetGlbMissionV(10)+1)
		Msg2SubWorld("C�ng th�nh binh s� ["..GetName().."] �� ph� h�y ��nh Xuy�n Long Tr�, s� l��ng Long Tr� chi�m ���c b�n c�ng th�nh l� : "..GetGlbMissionV(10).." ")
	elseif tonumber(idx) == longtru33 then 
		HideNpc(longtru33,999999999)
		HideNpc(longtru3,18*30)
		SetGlbMissionV(10,GetGlbMissionV(10)+1)
		Msg2SubWorld("C�ng th�nh binh s� ["..GetName().."] �� ph� h�y B�nh Giang Long Tr�, s� l��ng Long Tr� chi�m ���c b�n c�ng th�nh l� : "..GetGlbMissionV(10).." ")
	end
Msg2Player("Sau 30 gi�y s� xu�t hi�n Long Tr� H�n Tr�n !")
	if GetGlbMissionV(10) == 3 then
		Msg2SubWorld("B�n c�ng th�nh �� chi�m �� 3 Long Tr�, v� gi�nh chi�n th�ng ho�n to�n ")
		kickall()
	end
elseif GetCurCamp() == 1 and GetTask(80) == 2 then -- Ben thu
	if tonumber(idx) == longtru1 then -- tru giua vang
		HideNpc(longtru1,999999999)
		HideNpc(longtru11,18*30)
		SetGlbMissionV(10,GetGlbMissionV(10)-1)
		Msg2SubWorld("Th� th�nh binh s� ["..GetName().."] �� ph� h�y L�p D��ng Long Tr�, s� l��ng Long Tr� b� chi�m b�n c�ng th�nh l� : "..GetGlbMissionV(10).." ")
	elseif tonumber(idx) == longtru2 then 
		HideNpc(longtru2,999999999)
		HideNpc(longtru22,18*30)
		SetGlbMissionV(10,GetGlbMissionV(10)-1)
		Msg2SubWorld("Th� th�nh binh s� ["..GetName().."] �� ph� h�y L�p D��ng Long Tr�, s� l��ng Long Tr� b� chi�m b�n c�ng th�nh l� : "..GetGlbMissionV(10).." ")
	elseif tonumber(idx) == longtru3 then 
		HideNpc(longtru3,999999999)
		HideNpc(longtru33,18*30)
		SetGlbMissionV(10,GetGlbMissionV(10)-1)
		Msg2SubWorld("Th� th�nh binh s� ["..GetName().."] �� ph� h�y L�p D��ng Long Tr�, s� l��ng Long Tr� b� chi�m b�n c�ng th�nh l� : "..GetGlbMissionV(10).." ")
	end
Msg2Player("Sau 30 gi�y s� xu�t hi�n Long Tr� Tr�n Gi� !")
end
end

function OnDrop()
end


function kickall()
for i=1,GetCountPlayerMax() do
PlayerIndex = i
w,x,y = GetWorldPos()
	if w == 36 then
		if GetTask(80) == 1 then
			NewWorld(34, 201*8, 200*16);
		elseif GetTask(80) == 2 then
			NewWorld(35, 1566, 3233);
		end	
	end
end
end

function thamgia()


if GetGlbMissionV(9) == 0 then
SetGlbMissionV(9,1)
TaoLongTru()
HideNpc(longtru1,999999999)
HideNpc(longtru2,999999999)
HideNpc(longtru3,999999999)
end

if GetTongNameID() == 0 then
Talk(1,"","<color=green>Qu�n l� Bang h�i <color>: B�n ch�a gia nh�p bang kh�ng th� tham gia c�ng th�nh !")
return
end

if GetTongName() == TENBANG[1][1] then
	bencong()
elseif GetTongName() == TENBANG[2][1] then
	benthu()
else
Talk(2,"","<color=green>Qu�n l� Bang h�i <color>: Bang h�i c�a b�n kh�ng c� t�n trong danh s�ch c�ng th�nh. ",
	"C�ng th�nh bang ["..TENBANG[1][1].."] - th� th�nh bang ["..TENBANG[2][1].."] ")
end


end

function bencong()
SetTask(140,GetCamp())
LeaveTeam()
NewWorld(34, 201*8, 200*16);
SetRevPos(21)
SetCurCamp(2)
SetCamp(2)
SetTask(80,1) -- TaskCongThanh
SetCreateTeam(0);
SetFightState(0)
SetLogoutRV(0)
SetRank(215)
Msg2Player("Di chuy�n ��n h�u ph��ng b�n C�ng")
end

function benthu()
SetTask(140,GetCamp())
LeaveTeam()
NewWorld(35, 1566, 3233);
SetRevPos(22)
SetCurCamp(1)
SetCamp(1)
SetTask(80,2) -- TaskCongThanh
SetCreateTeam(0);
SetFightState(0)
SetRank(216)
SetLogoutRV(0)
Msg2Player("Di chuy�n ��n h�u ph��ng b�n Th� ")
end