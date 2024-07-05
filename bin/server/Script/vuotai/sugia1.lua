--Author: KingMax
--Script Vuot Ai Lien hoan

Include("\\script\\Global\\sourcejx49.lua")
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\checkloinhanvat.lua")

SATTHULENH = 151
SOTODOICHOPHEP = 1
quai1 = {}
function OnDrop()
end
function taonpc()
-- Ai 1
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i], "\\script\\vuotai\\sugia1.lua")
end
-- Ai 2
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i+50]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i+50], "\\script\\vuotai\\sugia1.lua")
end
-- Ai 3
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i+100]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i+100], "\\script\\vuotai\\sugia1.lua")
end
-- Ai 4
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i+150]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i+150], "\\script\\vuotai\\sugia1.lua")
end
-- Ai 5
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i+200]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i+200], "\\script\\vuotai\\sugia1.lua")
end
-- Ai 6
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(534,538)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i+250]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i+250], "\\script\\vuotai\\sugia1.lua")
end
ai = SubWorldID2Idx(27)
boss21=AddNpc(594,99,ai,196*8*32,201*16*32)
SetNpcScript(boss21, "\\script\\vuotai\\boss21.lua")
-- Ai 7
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(539,543)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i+300]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i+300], "\\script\\vuotai\\sugia1.lua")
end
ai = SubWorldID2Idx(27)
boss22=AddNpc(595,99,ai,196*8*32,201*16*32)
SetNpcScript(boss22, "\\script\\vuotai\\boss21.lua")
-- Ai 8
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(544,548)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i+350]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i+350], "\\script\\vuotai\\sugia1.lua")
end
ai = SubWorldID2Idx(27)
boss23=AddNpc(596,99,ai,196*8*32,201*16*32)
SetNpcScript(boss23, "\\script\\vuotai\\boss21.lua")
-- Ai 9
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(549,553)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i+400]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i+400], "\\script\\vuotai\\sugia1.lua")
end
ai = SubWorldID2Idx(27)
boss24=AddNpc(597,99,ai,196*8*32,201*16*32)
SetNpcScript(boss24, "\\script\\vuotai\\boss21.lua")
-- Ai 10
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(554,558)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i+450]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i+450], "\\script\\vuotai\\sugia1.lua")
end
ai = SubWorldID2Idx(27)
boss25=AddNpc(598,99,ai,196*8*32,201*16*32)
SetNpcScript(boss25, "\\script\\vuotai\\boss21.lua")
-- Ai 11
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(559,563)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i+500]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i+500], "\\script\\vuotai\\sugia1.lua")
end
-- Ai 12
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(564,568)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i+550]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i+550], "\\script\\vuotai\\sugia1.lua")
end
-- Ai 13
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(569,573)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i+600]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i+600], "\\script\\vuotai\\sugia1.lua")
end
-- Ai 14
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(574,578)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i+650]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i+650], "\\script\\vuotai\\sugia1.lua")
end
ai = SubWorldID2Idx(27)
boss26=AddNpc(599,99,ai,196*8*32,201*16*32)
SetNpcScript(boss26, "\\script\\vuotai\\boss21.lua")
-- Ai 15
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(579,583)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i+700]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i+700], "\\script\\vuotai\\sugia1.lua")
end
ai = SubWorldID2Idx(27)
boss27=AddNpc(random(600,601),99,ai,196*8*32,201*16*32)
SetNpcScript(boss27, "\\script\\vuotai\\boss21.lua")
-- Ai 16
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(584,588)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i+750]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i+750], "\\script\\vuotai\\sugia1.lua")
end
ai = SubWorldID2Idx(27)
boss28=AddNpc(random(602,603),99,ai,196*8*32,201*16*32)
SetNpcScript(boss28, "\\script\\vuotai\\boss21.lua")
-- Ai 17
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(589,593)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i+800]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i+800], "\\script\\vuotai\\sugia1.lua")
end
-- Ai 18
for i=1,50 do
ai = SubWorldID2Idx(27)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai1[i+850]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i+850], "\\script\\vuotai\\sugia1.lua")
end
ai = SubWorldID2Idx(27)
bossid = random(604,613)
bosslvl = 99
	posx = 196*8 * 32
	posy = 201*16 * 32
boss29=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(boss29, "\\script\\vuotai\\boss25.lua")
end


function main()
if check() ~= 0 then
xuly()
return
end
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
if phut >= 50 then
	bdvuotai()
else
vuotaichuatoi()
end
end;
function vuotaichuatoi()
Say("<color=green>Sö gi¶ V­ît ¶i<color>: C¸c h¹ gÆp ta cã chuyÖn g× nhê v¶ ch¨ng",5,
"T×m hiÓu thêi gian v­ît ¶i/xemtime",
"§iÒu kiÖn v­ît ¶i/xemtime",
"Xem thêi gian cßn l¹i/xemtime",
"T×m hiÓu phÇn th­ëng/xemtime",
"Tho¸t/no")
end

function xemtime(nsel)
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
i = nsel+1
if i == 1 then
Talk(3,"","<color=red>B¸o danh<color>: Phót thø 50 mçi giê",
"<color=red>B¾t ®Çu<color>: 8h00, 10h00, 12h00, 14h00,16h00, 18h00, 20h00, 22h00, 24h00",
"Mçi trËn kÐo dµi <color=red>40 phót<color>. Thêi gian b¸o danh ®Õn khi b¾t ®Çu lµ  <color=red>15 phót")
elseif i == 2 then
Talk(3,"","Tæ ®éi cã <color=red>6<color> thµnh viªn trë lªn, §¼ng cÊp yªu cÇu <color=red>80<color> trë lªn",
"Tr­ëng nhãm ph¶i mang theo <color=red>5<color> s¸t thñ gi¶n",
"Trong nhãm kh«ng cã ai ®· tõng ®i vuît ¶i 1 lÇn trong ngµy")
elseif i == 3 then
a = 49-phut
b = 60-giay
Talk(1,"","Thêi gian v­ît ¶i cßn: <color=red>"..a.."<color> phót <color=red>"..b.."<color> gi©y")

elseif i == 4 then
Talk(3,"","§¸nh qu¸i v­ît ¶i nhËn ®­îc <color=red>2500<color> kinh nghiÖm. X¸c suÊt thÊp nhËn ®­îc <color=cyan>HuyÒn tinh",
"Qua 1 ¶i sÏ nhËn ®­îc kh¸ nhiÒu kinh nghiÖm + 30% nhËn ®­îc <color=cyan>HuyÒn tinh",
"V­ît hÕt ¶i thø 18 sÏ nhËn ®­îc <color=red>500.000.000<color> kinh nghiÖm vµ 1 <color=cyan>Hép lÔ vËt v­ît ¶i")
end
end



function bdvuotai()
if GetGlbMissionV(34) == 0 then
Say("<color=green>Sö gi¶ V­ît ¶i<color>: C¸c h¹ gÆp ta cã chuyÖn g× nhê v· ch¨ng",2,
"Tham gia V­ît ¶i./tmctddva",
"Tho¸t./no")
else
Talk(1,"","<color=green>Sö gi¶ V­ît ¶i<color>: §· cã 1 tæ ®é kh¸c vµo tr­íc nhãm b¹n")
end
end


function tmctddva()
if GetGlbMissionV(34) == 0 then
if GetTeam() ~= nil then
	if GetTeamSize() >= 6 then
		if IsCaptain() == 1 then
			Say("<color=green>Sö gi¶ V­ît ¶i<color>: V­ît ¶i sÏ cÇn cã <color=red>5 S¸t thñ gi¶n<color> vµ tÊt c¶ thµnh viªn level trªn <color=red>80<color>. H·y t×m nhanh ®i !",2,
				"Ta ®· chuÈn bÞ ®ñ/tmctddva1",
				"§Ó ta t×m nã/no")		
		else
		Talk(1,"","Ng­¬i kh«ng ph¶i lµ<color=red> tr­ëng nhãm<color>, kh«ng thÓ ®­a tæ ®éi ®i")
		end
	else
	Talk(1,"","Tæ ®éi ph¶i cã <color=red>6 ng­êi trë lªn<color> h·y t×m thªm ng­êi råi ®Õn gÆp ta")
	end
else
Talk(1,"","Ng­¬i cÇn ph¶i cã <color=red>tæ ®éi<color>, h·y t×m cho m×nh mét tæ ®éi råi ®Õn gÆp ta")
end
else
Talk(1,"","<color=green>Sö gi¶ V­ît ¶i<color>: §· cã mét tæ ®éi kh¸c vµo tr­íc nhãm b¹n")
end
end

function tinhngay()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
tinhngay1 = 0
for k=1,getn(mang) do
	if thang > mang[k][1] then
	tinhngay1 = tinhngay1 + mang[k][2]
	end
end
tinhngay1 = tinhngay1 + ngay
return tinhngay1
end

mang = {
{1,31},
{2,29},
{3,31},
{4,30},
{5,31},
{6,30},
{7,31},
{8,31},
{9,30},
{10,31},
{11,30},
{12,31},
}

function OnStart()

end
function tmctddva1()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
thoigianhide = (60-phut)*(60-giay)*18

if GetGlbMissionV(34) == 0 then
idtd = GetTeam()

name = GetName()
if (idtd ~= nil) then
if (GetTeamSize() >= 6) then
if (IsCaptain() == 1) then
yc = 0
idbt = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
if (GetTeam() == idtd) then
if (GetTask(185) == ngay) or check() ~= 0 then
yc = 1
end
end
end
PlayerIndex = idbt
if (yc == 0) then
if (GetItemCount(156) >= 2) then
DelItem(156)
DelItem(156)
idbt = PlayerIndex
SetGlbMissionV(34,1)
a = 60-phut
if GetGlbMissionV(2) == 0 then
SetGlbMissionV(2,1)
taonpc()
end

for q=1,900 do
HideNpc(quai1[q],99999999)
end
HideNpc(boss21,99999999)
HideNpc(boss22,99999999)
HideNpc(boss23,99999999)
HideNpc(boss24,99999999)
HideNpc(boss25,99999999)
HideNpc(boss26,99999999)
HideNpc(boss27,99999999)
HideNpc(boss28,99999999)
HideNpc(boss29,99999999)
for i=1,50 do
HideNpc(quai1[i],thoigianhide)
end
Msg2SubWorld("Nhãm cña "..name.." ®· ®¨ng ký V­ît ¶i - Thµnh §« thµnh c«ng!")
for k=1,GetCountPlayerMax() do
PlayerIndex = k
if (GetTeam() == idtd) then
SetTaskTemp(26,1)
SetPunish(1)
SetFightState(0)
SetRevPos(19);
SetGlbMissionV(37,0)
SetGlbMissionV(36,0)
SetGlbMissionV(35,0)
SetTempRevPos(53,200*8*32,200*16*32);
SetLogoutRV(1)
toadox = 1569 - 8 + random(0,16)
toadoy = 3217 - 16 + random(0,32)
SetGlbMissionV(34,1)
SetTask(185,ngay)
SetDeathScript("\\script\\vuotai\\playerdie.lua");
AddGlobalCountNews("Nhãm cña "..name.." ®· ®¨ng ký V­ît ¶i thµnh c«ng !",1)
Msg2Player("B¹n vµ tæ ®éi ®· vµo khu vùc b¸o danh v­ît ¶i!");
Msg2Player("Tr¹ng th¸i hiÖn t¹i: LuyÖn c«ng")
Msg2Player("Cßn "..a.." phót n÷a trÈn chiÕn sÏ b¾t ®Çu!!")
NewWorld(27, toadox, toadoy);
end
end
else
Talk(1,"no","Ng­¬i kh«ng cã ®ñ 1 <color=red>LÖnh Bµi V­ît ¶i<color> kh«ng thÓ ®­a tæ ®éi ®i")
end
else
Talk(1,"no","Trong tæ ®éi ®· cã thµnh viªn ®i V­ît ¶i 1 lÇn trong ngµy hoÆc bÞ lçi nh©n vËt råi. H·y chän ng­êi kh¸c ®i")
end
else
Talk(1,"no","Ng­¬i kh«ng ph¶i lµ <color=red>Tr­ëng nhãm,<color> kh«ng thÓ ®­a tæ ®éi ®i")
end

else
Talk(1,"no","Tæ ®éi ph¶i cã <color=red>6 ng­êi trë lªn,<color> ng­¬i h·y t×m thªm ng­êi råi ®Õn gÆp ta")
end

else
Talk(1,"no","Ng­¬i cÇn ph¶i cã <color=red>tæ ®éi,<color> h·y t×m cho m×nh tæ ®éi råi ®Õn gÆp ta")
end

else
Talk(1,"","<color=green>Sö gi¶ V­ît ¶i<color>: §· cã mét tæ ®éi kh¸c vµo tr­íc nhãm b¹n")
end
end;




function no()

end;








toadomap = {
{1569,3194},
{1572,3197},
{1576,3205},
{1579,3206},
{1577,3200},
{1572,3214},
{1569,3207},
{1561,3206},
{1559,3201},
{1557,3205},
{1554,3212},
{1550,3209},
{1545,3220},
{1540,3223},
{1537,3222},
{1537,3227},
{1540,3239},
{1545,3239},
{1551,3247},
{1555,3250},
{1560,3253},
{1565,3256},
{1577,3265},
{1583,3263},
{1581,3259},
{1576,3272},
{1572,3251},
{1572,3245},
{1578,3242},
{1580,3235},
{1588,3231},
{1587,3224},
{1574,3241},
{1585,3238},
{1585,3233},
{1589,3232},
{1584,3223},
{1573,3207},
{1571,3199},
{1569,3190},
{1578,3214},
{1569,3210},
{1568,3201},
{1563,3228},
{1558,3227},
{1551,3217},
{1553,3211},
{1553,3241},
{1548,3235},
{1569,3237}
}

function quaai()
SetGlbMissionV(36,0)
for q=1,GetCountPlayerMax() do
PlayerIndex = q
	w,X,Y = GetWorldPos()
	if GetTaskTemp(26) == 1 and w == 27 then
		Msg2Player("Nhãm cña b¹n ®· v­ît qua ¶i thø : "..GetGlbMissionV(37).." - "..mangten[GetGlbMissionV(37)][2].."")
		if GetGlbMissionV(35) ~= 0 then
		Msg2Player("Boss "..mangboss[GetGlbMissionV(35)][2].." xuÊt hiÖn. H·y tiªu diÖt nhanh!!!")
		end
	a = GetGlbMissionV(37)
	AddRepute(1)
	Msg2Player("B¹n nhËn ®­îc 1 ®iÓm danh väng ")
	b = a*mangexp[level()][2]/2
	AddOwnExp(b)
	Msg2Player("B¹n nhËn ®­îc "..b.." Kinh nghiÖm")
	s = random(1,5)
	if s == 3 then
	AddEventItem(44)
	Msg2Player("B¹n nhËn ®­îc 1 viªn HuyÒn tinh")
	end
	end
end
end
mangexp = {
{1,75000},
{2,100000},
{3,125000},
{4,150000},
{5,250000},
{6,400000},
{7,500000}
}
function level()
if GetLevel() < 100 then
return 1
elseif GetLevel() >= 100 and GetLevel() < 110 then
return 2
elseif GetLevel() >= 110 and GetLevel() < 120 then
return 3
elseif GetLevel() >= 120 and GetLevel() < 130 then
return 4
elseif GetLevel() >= 130 and GetLevel() < 140 then
return 5
elseif GetLevel() >= 140 and GetLevel() < 150 then
return 6
elseif GetLevel() >= 150 then
return 7
else
return 1
end
end
mangboss = {
{1,"Thñ lÜnh ¶i - HÖ Kim"},
{2,"Thñ lÜnh ¶i - HÖ Méc"},
{3,"Thñ lÜnh ¶i - HÖ Thuû"},
{4,"Thñ lÜnh ¶i - HÖ Ho¶"},
{5,"Thñ lÜnh ¶i - HÖ Thæ"},
{6,"Thñ lÜnh ¶i - Cao CÊp"},
{7,"Thñ lÜnh ¶i - Cao CÊp"},
{8,"Thñ lÜnh ¶i - Cao CÊp"},
}
mangten = {
{1,"Qu¸i Nh©n Th­êng"},
{2,"Qu¸i Nh©n Th­êng"},
{3,"Qu¸i Nh©n Th­êng"},
{4,"Qu¸i Nh©n Th­êng"},
{5,"Qu¸i Nh©n HÖ Kim"},
{6,"Qu¸i Nh©n HÖ Méc"},
{7,"Qu¸i Nh©n HÖ Thuû"},
{8,"Qu¸i Nh©n HÖ Ho¶"},
{9,"Qu¸i Nh©n HÖ Thæ"},
{10,"Qu¸i Buff Bïa Gi¶m Kh¸ng"},
{11,"Qu¸i Buff Gi¶m Tèc §é"},
{12,"Qu¸i Buff Cho¸ng"},
{13,"Qu¸i HÖ Kim CÊp Cao"},
{14,"Qu¸i HÖ Méc - Thuû CÊp Cao"},
{15,"Qu¸i HÖ Ho¶ - Thæ CÊp Cao"},
{16,"Qu¸i Ph¶n Dame"},
{17,"Boss NhiÕp ThÝ TrÇn"}
}

function OnDeath()
w,X,Y = GetWorldPos()
if GetGlbMissionV(36) >= 49 and GetGlbMissionV(37) == 0 then
for i=1,50 do
HideNpc(quai1[i+50],0)
end
SetGlbMissionV(37,1)
quaai()
elseif GetGlbMissionV(36) >= 49 and GetGlbMissionV(37) == 1 then
for i=1,50 do
HideNpc(quai1[i+50],99999999)
HideNpc(quai1[i+100],0)
end
SetGlbMissionV(37,2)
quaai()
elseif GetGlbMissionV(36) >= 49 and GetGlbMissionV(37) == 2 then
for i=1,50 do
HideNpc(quai1[i+100],99999999)
HideNpc(quai1[i+150],0)
end
SetGlbMissionV(37,3)
quaai()
elseif GetGlbMissionV(36) >= 49 and GetGlbMissionV(37) == 3 then
for i=1,50 do
HideNpc(quai1[i+150],99999999)
HideNpc(quai1[i+200],0)
end
SetGlbMissionV(37,4)
quaai()
elseif GetGlbMissionV(36) >= 49 and GetGlbMissionV(37) == 4 then
for i=1,50 do
HideNpc(quai1[i+200],99999999)
HideNpc(quai1[i+250],0)
end
SetGlbMissionV(36,250)
HideNpc(boss21,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(26) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(26) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss21,GetName())
	break
	end
end
end
SetGlbMissionV(35,1)
SetGlbMissionV(37,5)
quaai()
elseif GetGlbMissionV(36) >= 49 and GetGlbMissionV(37) == 5 then
for i=1,50 do
HideNpc(quai1[i+250],99999999)
HideNpc(quai1[i+300],0)
end
SetGlbMissionV(36,300)
HideNpc(boss22,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(26) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(26) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss22,GetName())
	break
	end
end
end
SetGlbMissionV(35,2)
SetGlbMissionV(37,6)
quaai()
elseif GetGlbMissionV(36) >= 49 and GetGlbMissionV(37) == 6 then
for i=1,50 do
HideNpc(quai1[i+300],99999999)
HideNpc(quai1[i+350],0)
end
SetGlbMissionV(36,350)
HideNpc(boss23,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(26) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(26) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss23,GetName())
	break
	end
end
end
SetGlbMissionV(35,3)
SetGlbMissionV(37,7)
quaai()
elseif GetGlbMissionV(36) >= 49 and GetGlbMissionV(37) == 7 then
for i=1,50 do
HideNpc(quai1[i+350],99999999)
HideNpc(quai1[i+400],0)
end
SetGlbMissionV(36,400)
HideNpc(boss24,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(26) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(26) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss24,GetName())
	break
	end
end
end
SetGlbMissionV(35,4)
SetGlbMissionV(37,8)
quaai()
elseif GetGlbMissionV(36) >= 49 and GetGlbMissionV(37) == 8 then
for i=1,50 do
HideNpc(quai1[i+400],99999999)
HideNpc(quai1[i+450],0)
end
SetGlbMissionV(36,450)
HideNpc(boss25,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(26) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(26) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss25,GetName())
	break
	end
end
end

SetGlbMissionV(35,5)
SetGlbMissionV(37,9)
quaai()
elseif GetGlbMissionV(36) >= 49 and GetGlbMissionV(37) == 9 then
for i=1,50 do
HideNpc(quai1[i+450],99999999)
HideNpc(quai1[i+500],0)
end
SetGlbMissionV(37,10)
quaai()
elseif GetGlbMissionV(36) >= 49 and GetGlbMissionV(37) == 10 then
for i=1,50 do
HideNpc(quai1[i+500],99999999)
HideNpc(quai1[i+550],0)
end
SetGlbMissionV(37,11)
quaai()
elseif GetGlbMissionV(36) >= 49 and GetGlbMissionV(37) == 11 then
for i=1,50 do
HideNpc(quai1[i+550],99999999)
HideNpc(quai1[i+600],0)
end
SetGlbMissionV(37,12)
quaai()
elseif GetGlbMissionV(36) >= 49 and GetGlbMissionV(37) == 12 then
for i=1,50 do
HideNpc(quai1[i+600],99999999)
HideNpc(quai1[i+650],0)
end
ai = SubWorldID2Idx(27)
SetGlbMissionV(36,650)
HideNpc(boss26,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(26) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(26) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss26,GetName())
	break
	end
end
end
SetGlbMissionV(35,6)
SetGlbMissionV(37,13)
quaai()
elseif GetGlbMissionV(36) >= 49 and GetGlbMissionV(37) == 13 then
for i=1,50 do
HideNpc(quai1[i+650],99999999)
HideNpc(quai1[i+700],0)
end
ai = SubWorldID2Idx(27)
SetGlbMissionV(36,700)
HideNpc(boss27,0)

dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(26) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(26) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss27,GetName())
	break
	end
end
end
SetGlbMissionV(35,7)
SetGlbMissionV(37,14)
quaai()
elseif GetGlbMissionV(36) >= 49 and GetGlbMissionV(37) == 14 then
for i=1,50 do
HideNpc(quai1[i+700],99999999)
HideNpc(quai1[i+750],0)
end
ai = SubWorldID2Idx(27)
SetGlbMissionV(36,750)
HideNpc(boss28,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(26) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(26) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss28,GetName())
	break
	end
end
end
SetGlbMissionV(35,8)
SetGlbMissionV(37,15)
quaai()
elseif GetGlbMissionV(36) >= 49 and GetGlbMissionV(37) == 15 then
for i=1,50 do
HideNpc(quai1[i+750],99999999)
HideNpc(quai1[i+800],0)
end
SetGlbMissionV(37,16)
quaai()
elseif GetGlbMissionV(36) >= 5 and GetGlbMissionV(37) == 16 then
for i=1,50 do
HideNpc(quai1[i+800],99999999)
HideNpc(quai1[i+850],0)
end
HideNpc(boss29,0)
SetGlbMissionV(37,17)
quaai()
Msg2World("Boss NhiÕp ThÝ TrÇn XuÊt HiÖn  !!!!!")
end
SetGlbMissionV(36,GetGlbMissionV(36)+1)
end;

