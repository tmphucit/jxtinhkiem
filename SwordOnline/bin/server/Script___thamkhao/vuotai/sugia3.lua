--Author: KingMax
--Script Vuot Ai Lien hoan

Include("\\script\\Global\\sourcejx49.lua")
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\checkloinhanvat.lua")

SATTHULENH = 151
SOTODOICHOPHEP = 1
quai2 = {}
function OnDrop()
end
function taonpc()
-- Ai 1
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i], "\\script\\vuotai\\sugia3.lua")
end
-- Ai 2
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i+50]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i+50], "\\script\\vuotai\\sugia3.lua")
end
-- Ai 3
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i+100]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i+100], "\\script\\vuotai\\sugia3.lua")
end
-- Ai 4
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i+150]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i+150], "\\script\\vuotai\\sugia3.lua")
end
-- Ai 5
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i+200]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i+200], "\\script\\vuotai\\sugia3.lua")
end
-- Ai 6
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(534,538)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i+250]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i+250], "\\script\\vuotai\\sugia3.lua")
end
ai = SubWorldID2Idx(28)
boss31=AddNpc(594,99,ai,196*8*32,201*16*32)
SetNpcScript(boss31, "\\script\\vuotai\\boss31.lua")
-- Ai 7
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(539,543)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i+300]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i+300], "\\script\\vuotai\\sugia3.lua")
end
ai = SubWorldID2Idx(28)
boss32=AddNpc(595,99,ai,196*8*32,201*16*32)
SetNpcScript(boss32, "\\script\\vuotai\\boss31.lua")
-- Ai 8
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(544,548)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i+350]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i+350], "\\script\\vuotai\\sugia3.lua")
end
ai = SubWorldID2Idx(28)
boss33=AddNpc(596,99,ai,196*8*32,201*16*32)
SetNpcScript(boss33, "\\script\\vuotai\\boss31.lua")
-- Ai 9
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(549,553)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i+400]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i+400], "\\script\\vuotai\\sugia3.lua")
end
ai = SubWorldID2Idx(28)
boss34=AddNpc(597,99,ai,196*8*32,201*16*32)
SetNpcScript(boss34, "\\script\\vuotai\\boss31.lua")
-- Ai 10
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(554,558)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i+450]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i+450], "\\script\\vuotai\\sugia3.lua")
end
ai = SubWorldID2Idx(28)
boss35=AddNpc(598,99,ai,196*8*32,201*16*32)
SetNpcScript(boss35, "\\script\\vuotai\\boss31.lua")
-- Ai 11
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(559,563)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i+500]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i+500], "\\script\\vuotai\\sugia3.lua")
end
-- Ai 12
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(564,568)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i+550]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i+550], "\\script\\vuotai\\sugia3.lua")
end
-- Ai 13
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(569,573)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i+600]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i+600], "\\script\\vuotai\\sugia3.lua")
end
-- Ai 14
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(574,578)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i+650]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i+650], "\\script\\vuotai\\sugia3.lua")
end
ai = SubWorldID2Idx(28)
boss36=AddNpc(599,99,ai,196*8*32,201*16*32)
SetNpcScript(boss36, "\\script\\vuotai\\boss31.lua")
-- Ai 15
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(579,583)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i+700]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i+700], "\\script\\vuotai\\sugia3.lua")
end
ai = SubWorldID2Idx(28)
boss37=AddNpc(random(600,601),99,ai,196*8*32,201*16*32)
SetNpcScript(boss37, "\\script\\vuotai\\boss31.lua")
-- Ai 16
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(584,588)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i+750]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i+750], "\\script\\vuotai\\sugia3.lua")
end
ai = SubWorldID2Idx(28)
boss38=AddNpc(random(602,603),99,ai,196*8*32,201*16*32)
SetNpcScript(boss38, "\\script\\vuotai\\boss31.lua")
-- Ai 17
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(589,593)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i+800]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i+800], "\\script\\vuotai\\sugia3.lua")
end
-- Ai 18
for i=1,50 do
ai = SubWorldID2Idx(28)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai2[i+850]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai2[i+850], "\\script\\vuotai\\sugia3.lua")
end
ai = SubWorldID2Idx(28)
bossid = random(604,613)
bosslvl = 99
	posx = 196*8 * 32
	posy = 201*16 * 32
boss39=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(boss39, "\\script\\vuotai\\boss35.lua")
end


function main()

if check() ~= 0 then
xuly()
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
if ngay == 2 and thang == 1 then
Talk(1,"","V­ît ¶i b¾t ®Çu vµo 0h00 ngµy 03/01/2022")
return
end


if gio == 16 then
Talk(1,"","S¾p tíi thêi gian b¶o tr× ®Þnh kú cña server, kh«ng thÓ tham gia v­ît ¶i")
return
end
if  mod(gio,2) == 1 and phut >= 50 then
	bdvuotai()
else
	vuotaichuatoi()
end
end;
function vuotaichuatoi()
SayNew("<color=green>Sö gi¶ V­ît ¶i<color>: C¸c h¹ gÆp ta cã chuyÖn g× nhê v¶ ch¨ng",5,
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
Talk(3,"","Tæ ®éi cã <color=red>6<color> thµnh viªn trë lªn, §¼ng cÊp yªu cÇu <color=red>70<color> trë lªn",
"TÊt c¶ thµnh viªn nhãm ph¶i mang theo <color=red>1<color> LÖnh Bµi V­ît ¶i",
"Trong nhãm kh«ng cã ai ®· tõng ®i vuît ¶i 1 lÇn trong ngµy")
elseif i == 3 then
a = 49-phut
b = 60-giay
Talk(1,"","Thêi gian v­ît ¶i cßn: <color=red>"..a.."<color> phót <color=red>"..b.."<color> gi©y")

elseif i == 4 then
Talk(3,"","§¸nh qu¸i v­ît ¶i nhËn ®­îc <color=red>2500<color> kinh nghiÖm.",
"Qua 1 ¶i sÏ nhËn ®­îc 300.000 kinh nghiÖm",
"V­ît hÕt ¶i thø 18 sÏ nhËn ®­îc <color=red>2.000.000<color> kinh nghiÖm")
end
end


function bdvuotai()
if GetGlbMissionV(30) == 0 then
SayNew("<color=green>Sö gi¶ V­ît ¶i<color>: C¸c h¹ gÆp ta cã chuyÖn g× nhê v· ch¨ng",2,
"Tham gia V­ît ¶i./tmctddva",
"Tho¸t./no")
else
Talk(1,"","<color=green>Sö gi¶ V­ît ¶i<color>: §· cã 1 tæ ®é kh¸c vµo tr­íc nhãm b¹n")
end
end


function tmctddva()
if GetGlbMissionV(30) == 0 then
if GetTeam() ~= nil then
	if GetTeamSize() >= 4 then
		if IsCaptain() == 1 then
			SayNew("<color=green>Sö gi¶ V­ît ¶i<color>: V­ît ¶i sÏ cÇn cã <color=red>5 S¸t thñ gi¶n<color> vµ tÊt c¶ thµnh viªn level trªn <color=red>80<color>. H·y t×m nhanh ®i !",2,
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
{2,28},
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

if GetGlbMissionV(30) == 0 then
idtd = GetTeam()

name = GetName()
if (idtd ~= nil) then
if (GetTeamSize() >= 4) then
if (IsCaptain() == 1) then
yc = 0
idbt = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
if (GetTeam() == idtd) then
if (GetTask(185) == ngay) or check() ~= 0 or GetItemCount(156) == 0 then
	if (GetTask(185) == ngay) then
	Msg2World(""..GetName().." ®· di v­ît ¶i trong ngµy råi")
	end
	if GetItemCount(156) == 0 then
	Msg2World(""..GetName().." kh«ng mang LÖnh Bµi V­ît ¶i")
	end
	yc = 1
end
end
end
PlayerIndex = idbt
if (yc == 0) then
idbt = PlayerIndex
SetGlbMissionV(30,1)
a = 60-phut

if GetGlbMissionV(7) == 0 then
SetGlbMissionV(7,1)
taonpc()
end

for q=1,900 do
HideNpc(quai2[q],99999999)
end
HideNpc(boss31,99999999)
HideNpc(boss32,99999999)
HideNpc(boss33,99999999)
HideNpc(boss34,99999999)
HideNpc(boss35,99999999)
HideNpc(boss36,99999999)
HideNpc(boss37,99999999)
HideNpc(boss38,99999999)
HideNpc(boss39,99999999)
for i=1,50 do
HideNpc(quai2[i],thoigianhide)
end
Msg2SubWorld("Nhãm cña "..name.." ®· ®¨ng ký V­ît ¶i - §¹i Lý thµnh c«ng!")
for k=1,GetCountPlayerMax() do
PlayerIndex = k
if (GetTeam() == idtd) then
SetTaskTemp(27,1)
SetPunish(1)
SetFightState(0)
SetGlbMissionV(33,0)
SetGlbMissionV(32,0)
SetGlbMissionV(31,0)
SetLogoutRV(1)
toadox = 1569 - 8 + random(0,16)
toadoy = 3217 - 16 + random(0,32)
SetGlbMissionV(30,1)
SetTask(185,ngay)
DelItem(156)
SetDeathScript("\\script\\vuotai\\playerdie.lua");
AddGlobalCountNews("Nhãm cña "..name.." ®· ®¨ng ký V­ît ¶i thµnh c«ng !",1)
Msg2Player("B¹n vµ tæ ®éi ®· vµo khu vùc b¸o danh v­ît ¶i!");
Msg2Player("Tr¹ng th¸i hiÖn t¹i: LuyÖn c«ng")
Msg2Player("Cßn "..a.." phót n÷a trÈn chiÕn sÏ b¾t ®Çu!!")
NewWorld(28, toadox, toadoy);
end
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
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
SetGlbMissionV(32,0)
idxp = PlayerIndex
for q=1,GetCountPlayerMax() do
PlayerIndex = q	
	w,X,Y = GetWorldPos()
	if GetTaskTemp(27) == 1 and w == 28 then
	Msg2Player("Nhãm cña b¹n ®· v­ît ®Õn ¶i thø : <color=yellow>"..(GetGlbMissionV(33)+1).." - "..mangten[GetGlbMissionV(33)][2].."")
	if GetGlbMissionV(31) ~= 0 then
	Msg2Player("Boss "..mangboss[GetGlbMissionV(31)][2].." xuÊt hiÖn. H·y tiªu diÖt nhanh!!!")
	end
	a = GetGlbMissionV(33)
	AddRepute(1)
	Msg2Player("B¹n nhËn ®­îc 1 ®iÓm danh väng ")
	b = 280000 * a
	
	AddOwnExp(b)
	Msg2Player("B¹n nhËn ®­îc "..b.." Kinh nghiÖm")

	end
end
PlayerIndex = idxp
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
if GetGlbMissionV(32) >= 45 and GetGlbMissionV(33) == 0 then
for i=1,50 do
HideNpc(quai2[i+50],0)
end
SetGlbMissionV(33,1)
quaai()
elseif GetGlbMissionV(32) >= 45 and GetGlbMissionV(33) == 1 then
for i=1,50 do
HideNpc(quai2[i+50],99999999)
HideNpc(quai2[i+100],0)
end
SetGlbMissionV(33,2)
quaai()
elseif GetGlbMissionV(32) >= 45 and GetGlbMissionV(33) == 2 then
for i=1,50 do
HideNpc(quai2[i+100],99999999)
HideNpc(quai2[i+150],0)
end
SetGlbMissionV(33,3)
quaai()
elseif GetGlbMissionV(32) >= 45 and GetGlbMissionV(33) == 3 then
for i=1,50 do
HideNpc(quai2[i+150],99999999)
HideNpc(quai2[i+200],0)
end
SetGlbMissionV(33,4)
quaai()
elseif GetGlbMissionV(32) >= 45 and GetGlbMissionV(33) == 4 then
for i=1,50 do
HideNpc(quai2[i+200],99999999)
HideNpc(quai2[i+250],0)
end
SetGlbMissionV(32,250)
HideNpc(boss31,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(27) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(27) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss31,GetName())
	break
	end
end
end
SetGlbMissionV(31,1)
SetGlbMissionV(33,5)
quaai()
elseif GetGlbMissionV(32) >= 45 and GetGlbMissionV(33) == 5 then
for i=1,50 do
HideNpc(quai2[i+250],99999999)
HideNpc(quai2[i+300],0)
end
SetGlbMissionV(32,300)
HideNpc(boss32,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(27) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(27) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss32,GetName())
	break
	end
end
end
SetGlbMissionV(31,2)
SetGlbMissionV(33,6)
quaai()
elseif GetGlbMissionV(32) >= 45 and GetGlbMissionV(33) == 6 then
for i=1,50 do
HideNpc(quai2[i+300],99999999)
HideNpc(quai2[i+350],0)
end
SetGlbMissionV(32,350)
HideNpc(boss33,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(27) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(27) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss33,GetName())
	break
	end
end
end
SetGlbMissionV(31,3)
SetGlbMissionV(33,7)
quaai()
elseif GetGlbMissionV(32) >= 45 and GetGlbMissionV(33) == 7 then
for i=1,50 do
HideNpc(quai2[i+350],99999999)
HideNpc(quai2[i+400],0)
end
SetGlbMissionV(32,400)
HideNpc(boss34,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(27) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(27) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss34,GetName())
	break
	end
end
end
SetGlbMissionV(31,4)
SetGlbMissionV(33,8)
quaai()
elseif GetGlbMissionV(32) >= 45 and GetGlbMissionV(33) == 8 then
for i=1,50 do
HideNpc(quai2[i+400],99999999)
HideNpc(quai2[i+450],0)
end
SetGlbMissionV(32,450)
HideNpc(boss35,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(27) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(27) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss35,GetName())
	break
	end
end
end

SetGlbMissionV(31,5)
SetGlbMissionV(33,9)
quaai()
elseif GetGlbMissionV(32) >= 45 and GetGlbMissionV(33) == 9 then
for i=1,50 do
HideNpc(quai2[i+450],99999999)
HideNpc(quai2[i+500],0)
end
SetGlbMissionV(33,10)
quaai()
elseif GetGlbMissionV(32) >= 45 and GetGlbMissionV(33) == 10 then
for i=1,50 do
HideNpc(quai2[i+500],99999999)
HideNpc(quai2[i+550],0)
end
SetGlbMissionV(33,11)
quaai()
elseif GetGlbMissionV(32) >= 45 and GetGlbMissionV(33) == 11 then
for i=1,50 do
HideNpc(quai2[i+550],99999999)
HideNpc(quai2[i+600],0)
end
SetGlbMissionV(33,12)
quaai()
elseif GetGlbMissionV(32) >= 45 and GetGlbMissionV(33) == 12 then
for i=1,50 do
HideNpc(quai2[i+600],99999999)
HideNpc(quai2[i+650],0)
end
ai = SubWorldID2Idx(28)
SetGlbMissionV(32,650)
HideNpc(boss36,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(27) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(27) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss36,GetName())
	break
	end
end
end
SetGlbMissionV(31,6)
SetGlbMissionV(33,13)
quaai()
elseif GetGlbMissionV(32) >= 45 and GetGlbMissionV(33) == 13 then
for i=1,50 do
HideNpc(quai2[i+650],99999999)
HideNpc(quai2[i+700],0)
end
ai = SubWorldID2Idx(28)
SetGlbMissionV(32,700)
HideNpc(boss37,0)

dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(27) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(27) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss37,GetName())
	break
	end
end
end
SetGlbMissionV(31,7)
SetGlbMissionV(33,14)
quaai()
elseif GetGlbMissionV(32) >= 45 and GetGlbMissionV(33) == 14 then
for i=1,50 do
HideNpc(quai2[i+700],99999999)
HideNpc(quai2[i+750],0)
end
ai = SubWorldID2Idx(28)
SetGlbMissionV(32,750)
HideNpc(boss38,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(27) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(27) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss38,GetName())
	break
	end
end
end
SetGlbMissionV(31,8)
SetGlbMissionV(33,15)
quaai()
elseif GetGlbMissionV(32) >= 45 and GetGlbMissionV(33) == 15 then
for i=1,50 do
HideNpc(quai2[i+750],99999999)
HideNpc(quai2[i+800],0)
end
SetGlbMissionV(33,16)
quaai()
elseif GetGlbMissionV(32) >= 5 and GetGlbMissionV(33) == 16 then
for i=1,50 do
HideNpc(quai2[i+800],99999999)
HideNpc(quai2[i+850],0)
end
HideNpc(boss39,0)
SetGlbMissionV(33,17)
quaai()
Msg2World("Boss NhiÕp ThÝ TrÇn XuÊt HiÖn  !!!!!")
end
SetGlbMissionV(32,GetGlbMissionV(32)+1)
end;

