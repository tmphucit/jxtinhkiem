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
SayNew("<color=green>Qu¶n Lý Bang Héi<color>: Ta chuyªn qu¶n lý nh÷ng vÊn ®Ò vÒ Bang héi ",4,
"T¹o Bang héi/taobang",
"Tham gia C«ng thµnh chiÕn /xthamgia", 
"T×m hiÓu vÒ Bang héi/timhieu",
"Tho¸t./no")
elseif gio == 19 or gio == 20 then
SayNew("<color=green>Qu¶n Lý Bang Héi<color>: Ta chuyªn qu¶n lý nh÷ng vÊn ®Ò vÒ Bang héi ",4,
"T¹o Bang héi/taobang",
"Tham gia C«ng thµnh chiÕn /xthamgia", 
"T×m hiÓu vÒ Bang héi/timhieu",
"Tho¸t./no")
else
SayNew("<color=green>Qu¶n Lý Bang Héi<color>: Ta chuyªn qu¶n lý nh÷ng vÊn ®Ò vÒ Bang héi ",4,
"T¹o Bang héi/taobang",
"Tham gia C«ng thµnh chiÕn /xthamgia", 
"T×m hiÓu vÒ Bang héi/timhieu",
"Tho¸t./no")
end
end

function xthamgia()
Talk(1,"","Chøc n¨ng sÏ Update trong thêi gian s¾p tíi !")
end
function taobang()
OpenTong(1)
end

function timhieu()
Talk(3,"","<color=red>§iÒu kiÖn lËp bang:<color>\n- 1 Nh¹c v­¬ng kiÕm\n- Level trªn 50\n- 1000 v¹n l­îng ",
"HiÖn t¹i server ®· update c¸c chøc n¨ng c¬ b¶n cña 1 Bang héi ",
"Nh­ng chøc n¨ng sÏ ®­îc Update dÇn trong nh÷ng lÇn update tiÕp theo ")
end
function thamgia2()
Talk(1,"","<color=green>Qu¶n Lý Bang Héi<color>: C«ng thµnh chiÕn sÏ b¸o danh lóc 18h45 vµ diÔn ra tõ 19h00 - 21h00 ")
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
		Msg2SubWorld("C«ng thµnh binh sÜ ["..GetName().."] ®· ph¸ hñy LËp D­¬ng Long Trô, sè l­îng Long Trô chiÕm ®­îc bªn c«ng thµnh lµ : "..GetGlbMissionV(10).." ")
	elseif tonumber(idx) == longtru22 then 
		HideNpc(longtru22,999999999)
		HideNpc(longtru2,18*30)
		SetGlbMissionV(10,GetGlbMissionV(10)+1)
		Msg2SubWorld("C«ng thµnh binh sÜ ["..GetName().."] ®· ph¸ hñy §Þnh Xuyªn Long Trô, sè l­îng Long Trô chiÕm ®­îc bªn c«ng thµnh lµ : "..GetGlbMissionV(10).." ")
	elseif tonumber(idx) == longtru33 then 
		HideNpc(longtru33,999999999)
		HideNpc(longtru3,18*30)
		SetGlbMissionV(10,GetGlbMissionV(10)+1)
		Msg2SubWorld("C«ng thµnh binh sÜ ["..GetName().."] ®· ph¸ hñy B×nh Giang Long Trô, sè l­îng Long Trô chiÕm ®­îc bªn c«ng thµnh lµ : "..GetGlbMissionV(10).." ")
	end
Msg2Player("Sau 30 gi©y sÏ xuÊt hiÖn Long Trô Hån TrÊn !")
	if GetGlbMissionV(10) == 3 then
		Msg2SubWorld("Bªn c«ng thµnh ®· chiÕm ®ñ 3 Long Trô, vµ giµnh chiÕn th¾ng hoµn toµn ")
		kickall()
	end
elseif GetCurCamp() == 1 and GetTask(80) == 2 then -- Ben thu
	if tonumber(idx) == longtru1 then -- tru giua vang
		HideNpc(longtru1,999999999)
		HideNpc(longtru11,18*30)
		SetGlbMissionV(10,GetGlbMissionV(10)-1)
		Msg2SubWorld("Thñ thµnh binh sÜ ["..GetName().."] ®· ph¸ hñy LËp D­¬ng Long Trô, sè l­îng Long Trô bÞ chiÕm bªn c«ng thµnh lµ : "..GetGlbMissionV(10).." ")
	elseif tonumber(idx) == longtru2 then 
		HideNpc(longtru2,999999999)
		HideNpc(longtru22,18*30)
		SetGlbMissionV(10,GetGlbMissionV(10)-1)
		Msg2SubWorld("Thñ thµnh binh sÜ ["..GetName().."] ®· ph¸ hñy LËp D­¬ng Long Trô, sè l­îng Long Trô bÞ chiÕm bªn c«ng thµnh lµ : "..GetGlbMissionV(10).." ")
	elseif tonumber(idx) == longtru3 then 
		HideNpc(longtru3,999999999)
		HideNpc(longtru33,18*30)
		SetGlbMissionV(10,GetGlbMissionV(10)-1)
		Msg2SubWorld("Thñ thµnh binh sÜ ["..GetName().."] ®· ph¸ hñy LËp D­¬ng Long Trô, sè l­îng Long Trô bÞ chiÕm bªn c«ng thµnh lµ : "..GetGlbMissionV(10).." ")
	end
Msg2Player("Sau 30 gi©y sÏ xuÊt hiÖn Long Trô TrÊn Gi÷ !")
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
Talk(1,"","<color=green>Qu¶n lý Bang héi <color>: B¹n ch­a gia nhËp bang kh«ng thÓ tham gia c«ng thµnh !")
return
end

if GetTongName() == TENBANG[1][1] then
	bencong()
elseif GetTongName() == TENBANG[2][1] then
	benthu()
else
Talk(2,"","<color=green>Qu¶n lý Bang héi <color>: Bang héi cña b¹n kh«ng cã tªn trong danh s¸ch c«ng thµnh. ",
	"C«ng thµnh bang ["..TENBANG[1][1].."] - thñ thµnh bang ["..TENBANG[2][1].."] ")
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
Msg2Player("Di chuyÓn ®Õn hËu ph­¬ng bªn C«ng")
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
Msg2Player("Di chuyÓn ®Õn hËu ph­¬ng bªn Thñ ")
end