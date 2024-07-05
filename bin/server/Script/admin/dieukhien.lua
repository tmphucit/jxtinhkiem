Include("\\script\\Global\\sourcejx49.lua")
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\vuotai\\sugia.lua")
Include("\\script\\pass\\hoatdong.lua")
Include("\\script\\hoadang\\hoadang.lua")
soluong = 0
soluong_max = 50

ksk = {}
klt = {}
mangxh = {}
bientam = {}
hathoangkim = {}
mangcayhuyhoang = {
{2493,3471},
{2499,3480},
{2503,3465},
{2504,3474},
{2510,3491},
{2510,3504},
{2503,3507},
{2492,3504},
{2497,3515},
{2484,3521},
{2518,3506},
{2529,3496},
{2534,3484},
{2532,3468},
{2524,3461},
{2514,3458},
{2516,3478},
{2525,3478},
{2514,3491},
{2544,3467},
{2537,3471},
{2520,3467},
{2510,3465},
{2502,3493},
{2509,3518},
{2521,3492},
{2528,3511},
{2492,3486},
{2501,3427},
{2487,3534},
{2515,3526},
{2525,3543},
{2546,3504},
{2538,3495},
{2543,3477},
{2527,3483},
}


function RunTimer()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
----UpdateNgayThangNam
 if (gio == 0) and (phut == 0) then -- Tuong ung: 0h00
	print("Update Ngay Moi");
	for p=1,GetCountPlayerMax() do
		PlayerIndex = p
		updateNgay()
	end
end




if mod(gio,2) == 0 then
if phut >= 10 and phut < 40 then
	for p=1,GetCountPlayerMax() do
		PlayerIndex = p
		w,x,y = GetWorldPos()
		if w == 47 or w == 48 or w == 49 then
			if GetFightState() == 0 then
				SetFightState(1)
				Msg2Player("ChuyÕn ®i Phong L¨ng §é ®· b¾t ®Çu rêi bÕn , thêi gian di chuyÓn lµ : <color=yellow>30 phót .")
				Msg2Player("H·y cÈn thËn trªn ®­êng ®i sÏ cã Thñy TÆc xuÊt hiÖn .")
			end
		end	
	end
elseif phut >= 40 then
	if GetGlbMissionV(15) > 0 then
	SetGlbMissionV(15,1)
	end
	if GetGlbMissionV(16) > 0 then
	SetGlbMissionV(16,1)
	end
	if GetGlbMissionV(17) > 0 then
	SetGlbMissionV(17,1)
	end


	for p=1,GetCountPlayerMax() do
		PlayerIndex = p
		w,x,y = GetWorldPos()
		if w == 47 then
			SetFightState(1)
			SetCreateTeam(1);
			SetLogoutRV(1);
			NewWorld(46,1145,2963)	-- Map : Phong Lang do
		elseif w == 48 then
			SetFightState(1)
			SetCreateTeam(1);
			SetLogoutRV(1);
			NewWorld(46,1328,2862)	-- Map : Phong Lang do
		elseif w == 49 then
			SetFightState(1)
			SetCreateTeam(1);
			SetLogoutRV(1);
			NewWorld(46,1487,2782)	-- Map : Phong Lang do
		end	
	end	

end
end




print("So luong Acc cung online hien tai la: "..GetPlayerCount().." !");
SetGlbMissionV(11,0)




--if gio == 7 or gio == 9 or gio == 11 or gio == 13 or gio == 15 or gio == 17 or gio == 19 or gio == 21 or gio == 23 then
if mod(gio,2) == 1 then
	if phut > 50 then
	thongbaova()
	elseif phut < 50 and phut > 45 then
	tgva = 50-phut
	AddGlobalCountNews("Sù kiÖn Th¸ch Thøc Thêi Gian sÏ ®­îc b¾t ®Çu sau : <color=yellow>"..tgva.." <color>phót n÷a",1)
	elseif phut == 50 then
	AddGlobalCountNews("Thêi gian b¸o danh Th¸ch Thøc Thêi Gian b¾t ®Çu , c¸c tæ ®éi h·y tranh chñ chuÈn bÞ giê khai cuéc .",1)
	end
else
	if phut == 0 then
		chiendauva()
	elseif phut == 40 then
		vuotaitime()
		AddGlobalCountNews("Sù kiÖn Th¸ch Thøc Thêi Gian ®· kÕt thóc !",1)
	end
end


if gio == 19 then
	if phut >= 5  and phut < 10 then
	thoigian = 10-phut
	AddGlobalCountNews("Sù kiÖn qu¶ huy hoµng s¾p  b¾t ®Çu sau: "..thoigian.." phót n÷a , t¹i b¶n ®å hoa s¬n!",1)	
	Msg2SubWorld("Sù kiÖn qu¶ huy hoµng s¾p  b¾t ®Çu sau: "..thoigian.." phót n÷a , t¹i b¶n ®å hoa s¬n!")
	Msg2Player("Sù kiÖn qu¶ huy hoµng s¾p  b¾t ®Çu sau: "..thoigian.." phót n÷a , t¹i b¶n ®å hoa s¬n!")
	elseif phut == 10 then 
			for i=1,getn(mangcayhuyhoang) do
			cayhuyhoang = AddNpc(919,95,SubWorldID2Idx(2),mangcayhuyhoang[i][1]*32,mangcayhuyhoang[i][2]*32)
			SetNpcScript(cayhuyhoang, "\\script\\huyhoang\\cayhuyhoang.lua")
			SetNpcName(cayhuyhoang,"C©y Huy Hoµng ")
			end
	end
end



if gio ~= 13 or gio ~= 19 or gio ~= 22 or gio ~= 18 then
if phut == 10 then
AddGlobalCountNews("§Ó më khãa r­¬ng c¸c b¹n h·y ®Õn R­¬ng Chøa §å, chän Khãa vµ nhËp MËt KhÈu ®Ó më. §Ó ®æi mËt khÈu r­¬ng chän MËt KhÈu trong r­¬ng chøa ®å",1)
elseif phut == 20 then
AddGlobalCountNews("Tèng Kim §¹i ChiÕn phiªn b¶n míi hÊp dÉn h¬n víi 2 h×nh thøc: Cõu S¸t vµ B¶o VÖ Nguyªn So¸i, diÔn ra vµo 13 giê, 16 giê, 19 giê, 22 giê h»ng ngµy !",1)
elseif phut == 30 then
AddGlobalCountNews("Nh÷ng th¾c m¾c cña c¸c b¹n vui lßng lªn diÔn ®µn ®Ó lËp Topic, Admin vµ Mod sÏ hç trî trùc tiÕp t¹i diÔn ®µn")
elseif phut == 40 then
AddGlobalCountNews("Phiªn b¶n S¬n Hµ X· T¾c, t¸i hiÖn l¹i mét thêi huy hoµng cña Vâ L©m TruyÒn Kú ",1)
elseif phut == 50 then
AddGlobalCountNews("Admin kh«ng hç trî trong game nªn bÊt kú ai trong game nhËn m×nh lµ admin cung cÊp yahoo cho c¸c b¹n liªn hÖ 100% lµ lõa ®¶o !",1)
end
end 

--if mod(phut,5) == 0 then
if phut == 5 then
Msg2SubWorld("<color=green>CËp nhËt Tin tøc:\n- HiÖn t¹i ®ang diÔn ra event like share facebook nhËn giftcode chi tiÕt xem t¹i diÔn ®µn\n - Trong qu¸ tr×nh test nÕu ph¸t hiÖn lçi vui lßng gãp ý lªn diÔn ®µn , xin c¸m ¬n c¸c b¹n .")
elseif phut == 15 then
Msg2SubWorld("<color=yellow>Trong thêi gian ®ua top sÏ kh«ng më <color=cyan>kú tr©n b¶o vËt <color>, riªng tiªn th¶o lé vµ kÝnh hoa lé c¸c b¹n kiÕm ®­îc th× sÏ sö dông ®­îc !")
elseif phut == 25 then
Msg2SubWorld("<color=yellow>BQT - Admin kh«ng hç trî trong game nªn bÊt kú ai trong game nhËn m×nh lµ admin cung cÊp yahoo cho c¸c b¹n liªn hÖ 100% lµ lõa ®¶o !")
elseif phut == 35 then
Msg2SubWorld("<color=yellow>Mäi th¾c m¾c vÒ game c¸c b¹n cã thÓ liªn hÖ vÒ HotLine hç trî 24/24 : <color=cyan>..... <color>®Ó ®­îc hç trî phóc vô tèt nhÊt .",1)
elseif phut == 45 then
Msg2SubWorld("<color=green>BQT sÏ cËp nhËt c¸c tÝnh n¨ng , event theo lÞch tr×nh , khi cã th«ng b¸o trªn trang chñ , cam kÕt kh«ng më ®¹i më thõa , t¹o 1 céng ®ång game lµnh m¹nh , l©u dµi .",1)
--end
--end 
end
 

bosshk()
--addnpcevent()
--bossrandom()

end



function checkmp()
	if GetFaction() == "Thieu Lam Phai" then
	return "TL"
	elseif GetFaction() == "Thien Vuong Bang" then
	return "TVB"
	elseif GetFaction() == "Duong Mon" then
	return "DM"
	elseif GetFaction() == "Ngu Doc Giao" then
	return "ND"
	elseif GetFaction() == "Nga My Phai" then
	return "NM"
	elseif GetFaction() == "Thuy Yen Mon" then
	return "TY"
	elseif GetFaction() == "Cai Bang" then
	return "CB"
	elseif GetFaction() == "Thien Nhan Giao" then
	return "TN"
	elseif GetFaction() == "Vo Dang Phai" then
	return "VD"
	elseif GetFaction() == "Con Lon Phai" then
	return "CL"
	else
	return 0
	end
end;



function checkmap(vt)
if vt == 1 then
	return random(1,129)
elseif vt == 2 then
	return random(130,223)
elseif vt == 3 then
	return random(224,304)
elseif vt == 4 then
	return random(305,433)
elseif vt == 5 then
	return random(434,473)
elseif vt == 6 then
	return random(474,587)
elseif vt == 7 then
	return random(588,621) -- add them
elseif vt == 8 then
	return random(622,652)
elseif vt == 9 then
	return random(653,655)
elseif vt == 10 then
	return random(656,664)
elseif vt == 11 then
	return random(665,683)
else
	return 1
end
end

function inlogbaoruong(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/ToaDoRuongVang.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogspam(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/InLogAutoSpam.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
	
function checktenmap(id)
if id == 53 then
return "Ba L¨ng HuyÖn"
elseif id == 15 then
return "T­¬ng D­¬ng"
elseif id == 17 then
return "Ph­îng T­êng"
elseif id == 9 then
return "BiÖn Kinh"
elseif id == 18 then -- CHUA ADD NE
return "Thµnh §«"
elseif id == 66 then
return "Giang T©n Th«n"
elseif id == 3 then
return "Chu Tiªn TrÊn"
elseif id == 2 then
return "Hoa S¬n"
elseif id == 8 then
return "Phôc Ng­u S¬n"
elseif id == 100 then
return "TuyÕt B¸o §éng"
elseif id == 101 then
return "D­îc V­¬ng §éng"
elseif id == 187 then
return "TÇn L¨ng"
else
return "Map Lçi"
end
end

function checkkhuvuc(id)
if id == 53 or id == 66 or id == 3 then
return "Khu Vùc Th«n Lµng"
elseif id == 15 or id == 17 or id == 18 or id == 9 then
return "Khu Vùc Thµnh ThÞ"
elseif id == 2 or id == 8 or id == 100 or id == 101 or id == 187 then
return "Khu Vùc LuyÖn C«ng 1x - 5x"
else
return "Map Lçi"
end
end

function inloglixi(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logBaoLiXi.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function checknhonhat()
max = TOP_TUAN[1][2]
point_max = 1
for i=1,getn(TOP_TUAN) do 
if max < TOP_TUAN[i][2] then
	max = TOP_TUAN[i][2]
	point_max = i
end
end
return point_max
end

function checkhang2(num)
if num == 1 then
max = TOP_TUAN[2][2]
point_max = 2
else
max = TOP_TUAN[1][2]
point_max = 1
end


for i=1,getn(TOP_TUAN) do 
if max < TOP_TUAN[i][2] and i ~= num then
	max = TOP_TUAN[i][2]
	point_max = i
end
end
return point_max
end

function checkhang3(num,num2)
point = 0
for i=1,3 do
if i ~= num and i ~= num2 then
point = i
break;
end
end
return point
end

function tinhdiem()
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTaskTemp(149) == 1 then
dem = dem + 1
end
end
return dem
end

mangboss = {
{2,323,228,"Hoa S¬n"},
{2,314,218,"Hoa S¬n"},
{8,213,217,"Phôc Ng­u S¬n"},
{8,235,218,"Phôc Ng­u S¬n"},
{100,198,204,"TuyÕt B¸o §éng"},
{101,218,198,"D­îc V­¬ng §éng"},
{187,200,214,"TÇn L¨ng"}
}
function bosshk()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if gio == 21 and phut == 1  then
AddGlobalCountNews("Nghe nãi Boss Hoµng Kim ®· xuÊt hiÖn ë nhiÒu n¬i. §¹o Thanh Ch©n Nh©n ë Thµnh §« - Cæ B¸ch ë Xi V­u §éng - Hoµng LiÖt ë T­¬ng D­¬ng - §oµn Méc DuÖ ë Ch©n Nói Tr­êng B¹ch - Chung Linh Tö ë Ph­îng T­êng" ,1)
bosshk1 = AddNpc(637,95,SubWorldID2Idx(18),413*8*32,326*16*32)
SetNpcScript(bosshk1, "\\script\\boss\\bosshk1.lua")
bosshk2 = AddNpc(638,95,SubWorldID2Idx(75),214*8*32,193*16*32)
SetNpcScript(bosshk2, "\\script\\boss\\bosshk2.lua")
bosshk3 = AddNpc(639,95,SubWorldID2Idx(15),167*8*32,207*16*32)
SetNpcScript(bosshk3, "\\script\\boss\\bosshk3.lua")
bosshk4 = AddNpc(640,95,SubWorldID2Idx(104),162*8*32,186*16*32)
SetNpcScript(bosshk4, "\\script\\boss\\bosshk4.lua")
bosshk5 = AddNpc(641,95,SubWorldID2Idx(17),178*8*32,190*16*32)
SetNpcScript(bosshk5, "\\script\\boss\\bosshk5.lua")
bosshk6 = AddNpc(642,95,SubWorldID2Idx(102),215*8*32,218*16*32)
SetNpcScript(bosshk6, "\\script\\boss\\bosshk6.lua")
bosshk7 = AddNpc(643,95,SubWorldID2Idx(2),314*8*32,217*16*32)
SetNpcScript(bosshk7, "\\script\\boss\\bosshk7.lua")
bosshk8 = AddNpc(644,95,SubWorldID2Idx(101),218*8*32,198*16*32)
SetNpcScript(bosshk8, "\\script\\boss\\bosshk8.lua")
bosshk9 = AddNpc(645,95,SubWorldID2Idx(8),232*8*32,184*16*32)
SetNpcScript(bosshk9, "\\script\\boss\\bosshk9.lua")
bosshk10 = AddNpc(646,95,SubWorldID2Idx(100),199*8*32,203*16*32)
SetNpcScript(bosshk10, "\\script\\boss\\bosshk10.lua")
bosshk12 = AddNpc(648,95,SubWorldID2Idx(187),201*8*32,214*16*32)
SetNpcScript(bosshk12, "\\script\\boss\\bosshk12.lua")
bosshk13 = AddNpc(649,95,SubWorldID2Idx(22),186*8*32,185*16*32)
SetNpcScript(bosshk13, "\\script\\boss\\bosshk13.lua")
bosshk14 = AddNpc(650,95,SubWorldID2Idx(53),189*8*32,206*16*32)
SetNpcScript(bosshk14, "\\script\\boss\\bosshk14.lua")
bosshk15 = AddNpc(652,95,SubWorldID2Idx(105),207*8*32,203*16*32)
SetNpcScript(bosshk15, "\\script\\boss\\bosshk15.lua")

elseif gio == 21 and phut == 2 then
AddGlobalCountNews("Boss Hoµng Kim l¹i hoµng lo¹t xuÊt hiÖn: Hµ Linh Phiªu ë L©m Du Quan - V­¬ng T¸ ë Hoa S¬n - HuyÒn Gi¸c §¹i S­ ë D­îc V­¬ng §éng - §­êng BÊt NhiÔm ë Phôc Ng­u S¬n - B¹ch Doanh Doanh ë TuyÕt B¸o §éng ",1 )
elseif gio == 21 and phut == 3 then
AddGlobalCountNews("L¹i cã tin ®ån xuÊt hiÖn Boss Hoµng Kim:Yªn HiÓu Th¸i ë TÇn L¨ng - Hµ Nh©n Ng· ë Truêng B¹ch nam - §¬n Tö Nam ë Ba L¨ng HuyÖn - Hµn Méng ë Tr­êng B¹ch S¬n B¾c",1)
end
end;
function thongbaova()
w,x,y = GetWorldPos();
	a = 60 - phut
	for o=1,GetCountPlayerMax() do
	PlayerIndex = o
	if GetTaskTemp(25) == 1 or GetTaskTemp(26) == 1 or GetTaskTemp(27) == 1 or GetTaskTemp(28) == 1 then
	Msg2Player("Sù kiÖn vuît ¶i cßn: "..a.." phót n÷a sÏ b¾t ®Çu !")
	end	
	end
end


function chiendauva()
w,x,y = GetWorldPos();
for u = 1,GetCountPlayerMax() do
PlayerIndex = u
if GetTaskTemp(25) == 1 or GetTaskTemp(26) == 1 or GetTaskTemp(27) == 1 or GetTaskTemp(28) == 1 then
SetFightState(1)
Msg2Player("Sù kiÖn V­ît ¶i b¾t ®Çu. Nhãm cña b¹n cã 45 phót ®Ó v­ît qua !")
end
end
end
function vuotaitime()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

SetGlbMissionV(38,0)
SetGlbMissionV(34,0)
SetGlbMissionV(30,0)
SetGlbMissionV(26,0)
for q = 1,GetCountPlayerMax() do
PlayerIndex = q
if GetTaskTemp(25) == 1 or GetTaskTemp(26) == 1 or GetTaskTemp(27) == 1 or GetTaskTemp(28) == 1 then
SetTaskTemp(25,0)
SetTaskTemp(26,0)
SetTaskTemp(27,0)
SetTaskTemp(28,0)
SetDeathScript("");
SetFightState(0);
SetPunish(0)
Msg2Player("Sù kiÖn V­ît ¶i kÕt thóc, B¹n ®· qu¸ 40 phót nh­ng vÉn toµn m¹ng. Tuy nhiªn, vÉn kh«ng ®ñ ®Ó chiÕn th¾ng !")
NewWorld(53, 200*8, 200*16);
KickOutSelf()
end
end
end


Include("\\Script\\global\\sourcejx49.lua");
function bossrandom()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if gio == 21 and phut == 0 then
AddGlobalCountNews("Boss TiÓu Hoµng Kim ®· xuÊt hiÖn t¹i Hoa S¬n. H·y nhanh ch©n ®i tiªu diÖt nµo!!!!!!",3)
Msg2SubWorld("Boss TiÓu Hoµng Kim ®· xuÊt hiÖn t¹i Hoa S¬n. H·y nhanh ch©n ®i tiªu diÖt nµo!!!!!! ")
Msg2SubWorld("Boss TiÓu Hoµng Kim ®· xuÊt hiÖn t¹i Hoa S¬n. H·y nhanh ch©n ®i tiªu diÖt nµo!!!!!! ")
Msg2SubWorld("Boss TiÓu Hoµng Kim ®· xuÊt hiÖn t¹i Hoa S¬n. H·y nhanh ch©n ®i tiªu diÖt nµo!!!!!! ")
Msg2SubWorld("Boss TiÓu Hoµng Kim ®· xuÊt hiÖn t¹i Hoa S¬n. H·y nhanh ch©n ®i tiªu diÖt nµo!!!!!! ")
Msg2SubWorld("Boss TiÓu Hoµng Kim ®· xuÊt hiÖn t¹i Hoa S¬n. H·y nhanh ch©n ®i tiªu diÖt nµo!!!!!! ")
Msg2SubWorld("Boss TiÓu Hoµng Kim ®· xuÊt hiÖn t¹i Hoa S¬n. H·y nhanh ch©n ®i tiªu diÖt nµo!!!!!! ")
Msg2SubWorld("Boss TiÓu Hoµng Kim ®· xuÊt hiÖn t¹i Hoa S¬n. H·y nhanh ch©n ®i tiªu diÖt nµo!!!!!! ")
Msg2SubWorld("Boss TiÓu Hoµng Kim ®· xuÊt hiÖn t¹i Hoa S¬n. H·y nhanh ch©n ®i tiªu diÖt nµo!!!!!! ")
Msg2SubWorld("Boss TiÓu Hoµng Kim ®· xuÊt hiÖn t¹i Hoa S¬n. H·y nhanh ch©n ®i tiªu diÖt nµo!!!!!! ")
Msg2SubWorld("Boss TiÓu Hoµng Kim ®· xuÊt hiÖn t¹i Hoa S¬n. H·y nhanh ch©n ®i tiªu diÖt nµo!!!!!! ")

bossthk1 = AddNpc(653,95,SubWorldID2Idx(2),323*8*32,228*16*32)
SetNpcScript(bossthk1, "\\script\\bosstieuhk.lua")
bossthk2 = AddNpc(654,95,SubWorldID2Idx(2),312*8*32,219*16*32)
SetNpcScript(bossthk2, "\\script\\bosstieuhk.lua")
bossthk3 = AddNpc(658,95,SubWorldID2Idx(2),318*8*32,234*16*32)
SetNpcScript(bossthk3, "\\script\\bosstieuhk.lua")
bossthk4 = AddNpc(655,95,SubWorldID2Idx(2),319*8*32,227*16*32)
SetNpcScript(bossthk4, "\\script\\bosstieuhk.lua")
bossthk5 = AddNpc(659,95,SubWorldID2Idx(2),312*8*32,226*16*32)
SetNpcScript(bossthk5, "\\script\\bosstieuhk.lua")
bossthk6 = AddNpc(660,95,SubWorldID2Idx(2),312*8*32,233*16*32)
SetNpcScript(bossthk6, "\\script\\bosstieuhk.lua")
bossthk7 = AddNpc(656,95,SubWorldID2Idx(2),315*8*32,218*16*32)
SetNpcScript(bossthk7, "\\script\\bosstieuhk.lua")
bossthk8 = AddNpc(657,95,SubWorldID2Idx(2),316*8*32,230*16*32)
SetNpcScript(bossthk8, "\\script\\bosstieuhk.lua")
bossthk9 = AddNpc(661,95,SubWorldID2Idx(2),301*8*32,231*16*32)
SetNpcScript(bossthk9, "\\script\\bosstieuhk.lua")
end
end;

function tenboss(i)
if i == 637 then
return "§¹o Thanh Ch©n Nh©n"
elseif i == 638 then
return "Cæ B¸ch"
elseif i == 639 then
return "Hoµng LiÖt"
elseif i == 640 then
return "§oµn Méc DuÖ"
elseif i == 641 then
return "Chung Linh Tö"
elseif i == 642 then
return "Hµ Linh Phiªu"
elseif i == 643 then
return "V­¬ng T¸"
elseif i == 644 then
return "HuyÒn Gi¸c §¹i S­"
elseif i == 645 then
return "§­êng BÊt NhiÔm"
elseif i == 646 then
return "B¹ch Doanh Doanh"
elseif i == 647 then
return "Thanh TuyÖt S­ Th¸i"
elseif i == 648 then
return "Yªn HiÓu Th¸i"
elseif i == 649 then
return "Hµ Nh©n Ng·"
elseif i == 650 then
return "§¬n Tö Nam"
elseif i == 651 then
return "TuyÒn C« Tö"
elseif i == 652 then
return "Hµn Méng"
end
end
function addbosshk()
for i=637,652 do
k = random(1,getn(mangtoado))
tenmap = mangtoado[k][2]
wmap = mangtoado[k][1]
tdx = random(mangtoado[k][3],mangtoado[k][4])
tdy = random(mangtoado[k][5],mangtoado[k][6])
bossthk9 = AddNpc(i,95,SubWorldID2Idx(wmap),tdx*8*32,tdy*16*32)
SetNpcScript(bossthk9, "\\script\\boss\\bosshkdie.lua")
Msg2SubWorld("Boss "..tenboss(i).." XuÊt HiÖn ë "..tenmap.." "..tdx.."/"..tdy.."")
end
end
mangtoado = {
{53,"Ba L¨ng HuyÖn",177,192,203,208},
{53,"Ba L¨ng HuyÖn",174,233,183,188},
{53,"Ba L¨ng HuyÖn",212,223,188,195},
{53,"Ba L¨ng HuyÖn",212,216,200,214},
{2,"Hoa S¬n",292,327,218,254},
{8,"Phôc Ng­u S¬n",203,206,216,220},
{8,"Phôc Ng­u S¬n",206,214,215,218},
{8,"Phôc Ng­u S¬n",212,223,219,230},
{8,"Phôc Ng­u S¬n",223,242,226,230},
{100,"TuyÕt B¸o §éng",198,202,204,207},
{100,"TuyÕt B¸o §éng",199,204,200,203},
{101,"D­îc Vu¬ng §éng",197,221,125,144},
{187,"TÇn L¨ng",177,208,199,221},
{75,"Xi V­u §éng",197,235,187,209},
{102,"L©m Du Quan",204,250,201,224},
{103,"Phong Vò §¶o",148,195,151,190},
{104,"Ch©n Nói Tr­êng B¹ch",142,197,143,196}
}

bosskylan = {}
dscauthu = {}
bossvltk = 0

function addnpcevent()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if gio == 12 and phut == 40 then
satthu=AddNpc(random(1029,1033),99,SubWorldID2Idx(46),1201*32,2773*32)
	SetNpcScript(satthu, "\\script\\boss\\bossphonglangdo.lua");
	Msg2SubWorld("Boss Phong L¨ng §é §¹o TÆc ®· xuÊt hiÖn t¹i ®· xuÊt hiÖn t¹i Phong L¨ng §é 150/173, c¸c vÞ anh hïng h·y tiªu diÖt nµo !")
	AddGlobalCountNews("Boss Phong L¨ng §é §¹o TÆc ®· xuÊt hiÖn t¹i ®· xuÊt hiÖn t¹i Phong L¨ng §é 150/173, c¸c vÞ anh hïng h·y tiªu diÖt nµo ",1)

elseif gio == 19 and phut == 30 then
	
	--satthu1=AddNpc(random(1034,1038),99,SubWorldID2Idx(33),181*8*32,208*16*32)
	satthu1=AddNpc(random(1034,1038),99,SubWorldID2Idx(33),181*8*32,208*16*32)
	SetNpcScript(satthu1, "\\script\\boss\\bossvolamtinhkiem.lua");
	bossvltk = satthu1
	Msg2SubWorld("<color=yellow>Boss Vâ L©m TruyÒn CÇn ®· xuÊt hiÖn t¹i ChiÕn Tr­êng Tèng Kim, c¸c vÞ anh hïng h·y tiªu diÖt nµo !")
	AddGlobalCountNews("Boss Vâ L©m TruyÒn CÇn ®· xuÊt hiÖn t¹i ChiÕn Tr­êng Tèng Kim, c¸c vÞ anh hïng ra tay tiªu diÖt nµo ",1)
elseif gio == 20 and phut == 0 then
	DelNpc(bossvltk)
elseif gio == 20 and phut == 30 then

	satthu1=AddNpc(random(1034,1038),99,SubWorldID2Idx(4),195*8*32,216*16*32)
	SetNpcScript(satthu1, "\\script\\boss\\bossvolamtinhnghia.lua");
	SetNpcName(satthu1,"Vâ L©m T×nh NghÜa")

	Msg2SubWorld("<color=yellow>Boss Vâ L©m T×nh NghÜa ®· xuÊt hiÖn t¹i Long TuyÒn Th«n 195/216. C¸c b¹n hay nhanh ch©n di chuyÓn qua Long TuyÒn Th«n ®Ó tiªu diÖt Boss !")
	AddGlobalCountNews("Boss Vâ L©m T×nh NghÜa ®· xuÊt hiÖn t¹i Long TuyÒn Th«n 195/216. C¸c b¹n hay nhanh ch©n di chuyÓn qua Long TuyÒn Th«n ®Ó tiªu diÖt Boss ",1)

	satthu=AddNpc(random(1029,1033),99,SubWorldID2Idx(46),1201*32,2773*32)
	SetNpcScript(satthu, "\\script\\boss\\bossphonglangdo.lua");
	Msg2SubWorld("Boss Phong L¨ng §é §¹o TÆc ®· xuÊt hiÖn t¹i ®· xuÊt hiÖn t¹i Phong L¨ng §é 150/173, c¸c vÞ anh hïng h·y tiªu diÖt nµo !")
	AddGlobalCountNews("Boss Phong L¨ng §é §¹o TÆc ®· xuÊt hiÖn t¹i ®· xuÊt hiÖn t¹i Phong L¨ng §é 150/173, c¸c vÞ anh hïng h·y tiªu diÖt nµo ",1)

end
end


ruongvang = {
{53,1570,3301}, -- 1
{53,1557,3304},
{53,1535,3298},
{53,1533,3275},
{53,1536,3254},
{53,1526,3243},
{53,1502,3228},
{53,1492,3203},
{53,1479,3208},
{53,1445,3193},
{53,1432,3183},
{53,1439,3110},
{53,1436,3095},
{53,1430,3081},
{53,1419,3073},
{53,1413,3061},
{53,1414,3035},
{53,1406,3008},
{53,1395,2984},
{53,1390,2964},
{53,1392,2950},
{53,1392,2929},
{53,1406,2928},
{53,1423,2931},
{53,1438,2922},
{53,1448,2933},
{53,1470,2940},
{53,1480,2944},
{53,1500,2936},
{53,1547,2960},
{53,1538,2981},
{53,1566,2963},
{53,1574,2936},
{53,1592,2934},
{53,1612,2937},
{53,1626,2956},
{53,1646,2948},
{53,1653,2961},
{53,1680,2976},
{53,1692,2947},
{53,1710,2908},
{53,1723,2948},
{53,1736,2967},
{53,1747,2948},
{53,1769,2940},
{53,1794,2919},
{53,1797,2969},
{53,1780,2996},
{53,1777,3033},
{53,1764,3047},
{53,1756,3058},
{53,1743,3085},
{53,1724,3079},
{53,1710,3102},
{53,1704,3114},
{53,1687,3123},
{53,1674,3114},
{53,1694,3145},
{53,1704,3149},
{53,1729,3169},
{53,1733,3191},
{53,1735,3206},
{53,1736,3228},
{53,1776,3244},
{53,1785,3252},
{53,1793,3285},
{53,1804,3299},
{53,1799,3315},
{53,1794,3331},
{53,1790,3356},
{53,1794,3374},
{53,1802,3410},
{53,1800,3444},
{53,1778,3439},
{53,1761,3437},
{53,1737,3429},
{53,1721,3433},
{53,1705,3404},
{53,1725,3384},
{53,1709,3369},
{53,1690,3390},
{53,1684,3429},
{53,1663,3424},
{53,1648,3451},
{53,1633,3452},
{53,1622,3437},
{53,1604,3418},
{53,1603,3388},
{53,1593,3392},
{53,1564,3386},
{53,1552,3387},
{53,1562,3434},
{53,1538,3439},
{53,1520,3429},
{53,1497,3442},
{53,1478,3431},
{53,1469,3403},
{53,1487,3366},
{53,1458,3362},
{53,1447,3336},
{53,1429,3340},
{53,1414,3356},
{53,1404,3385},
{53,1425,3409},
{53,1422,3426},
{53,1418,3449},
{53,1449,3437},
{53,1444,3404},
{53,1418,3288},
{53,1404,3271},
{53,1396,3261},
{53,1389,3243},
{53,1391,3209},
{53,1393,3184},
{53,1394,3166},
{53,1401,3138},
{53,1411,3114},
{53,1430,3139},
{53,1438,3180},
{53,1472,3175},
{53,1494,3101},
{53,1497,3087},
{53,1511,3065},
{53,1538,3042},
{53,1568,3038},
{53,1584,3059},
{53,1601,3038},
{53,1616,3059},
{53,1641,3093},
{15,1469,3111}, -- 2
{15,1422,3168},
{15,1410,3183},
{15,1394,3198},
{15,1377,3184},
{15,1374,3171},
{15,1349,3164},
{15,1326,3164},
{15,1306,3156},
{15,1312,3122},
{15,1322,3093},
{15,1336,3079},
{15,1356,3070},
{15,1403,3107},
{15,1411,3100},
{15,1411,3099},
{15,1442,3089},
{15,1444,3040},
{15,1417,3012},
{15,1430,2984},
{15,1440,2976},
{15,1456,2946},
{15,1469,2921},
{15,1480,2953},
{15,1502,2992},
{15,1530,2985},
{15,1555,2958},
{15,1589,2948},
{15,1623,2991},
{15,1637,2999},
{15,1661,3007},
{15,1682,3034},
{15,1697,3055},
{15,1714,3062},
{15,1732,3078},
{15,1781,3116},
{15,1787,3139},
{15,1800,3154},
{15,1811,3180},
{15,1824,3202},
{15,1842,3233},
{15,1854,3261},
{15,1849,3274},
{15,1839,3296},
{15,1830,3320},
{15,1814,3364},
{15,1801,3381},
{15,1790,3337},
{15,1764,3324},
{15,1738,3292},
{15,1753,3284},
{15,1772,3252},
{15,1773,3223},
{15,1779,3197},
{15,1821,3241},
{15,1822,3284},
{15,1719,3318},
{15,1673,3322},
{15,1651,3366},
{15,1688,3346},
{15,1674,3349},
{15,1677,3383},
{15,1663,3387},
{15,1648,3409},
{15,1620,3437},
{15,1594,3463},
{15,1578,3513},
{15,1551,3530},
{15,1510,3519},
{15,1520,3474},
{15,1513,3491},
{15,1503,3499},
{15,1464,3568},
{15,1451,3489},
{15,1429,3515},
{15,1386,3539},
{15,1347,3547},
{15,1333,3511},
{15,1325,3488},
{15,1314,3440},
{15,1298,3450},
{15,1297,3394},
{15,1286,3381},
{15,1286,3349},
{15,1326,3261},
{15,1322,3215},
{15,1311,3189},
{15,1354,3221},
{15,1355,3243},
{15,1355,3243},
{15,1361,3272},
{15,1356,3295},
{15,1383,3302},
{15,1402,3312},
{17,1684,3097}, -- 3
{17,1705,3073},
{17,1717,3111},
{17,1715,3129},
{17,1721,3154},
{17,1740,3151},
{17,1765,3118},
{17,1772,3120},
{17,1781,3140},
{17,1777,3152},
{17,1784,3164},
{17,1785,3165},
{17,1785,3165},
{17,1785,3165},
{17,1785,3165},
{17,1809,3197},
{17,1823,3174},
{17,1823,3174},
{17,1846,3244},
{17,1849,3232},
{17,1865,3223},
{17,1865,3223},
{17,1869,3260},
{17,1866,3271},
{17,1867,3290},
{17,1868,3312},
{17,1869,3344},
{17,1871,3378},
{17,1867,3410},
{17,1871,3435},
{17,1870,3460},
{17,1860,3483},
{17,1847,3484},
{17,1824,3485},
{17,1803,3478},
{17,1762,3418},
{17,1757,3454},
{17,1735,3461},
{17,1731,3459},
{17,1686,3470},
{17,1667,3473},
{17,1646,3459},
{17,1613,3436},
{17,1592,3452},
{17,1582,3482},
{17,1548,3467},
{17,1543,3492},
{17,1520,3489},
{17,1497,3495},
{17,1475,3484},
{17,1460,3469},
{17,1435,3469},
{17,1415,3473},
{17,1386,3463},
{17,1353,3479},
{17,1333,3483},
{17,1322,3448},
{17,1333,3432},
{17,1358,3416},
{17,1373,3388},
{17,1396,3393},
{17,1406,3395},
{17,1422,3428},
{17,1431,3419},
{17,1443,3394},
{17,1454,3364},
{17,1473,3323},
{17,1465,3370},
{17,1475,3371},
{17,1473,3367},
{17,1498,3359},
{17,1513,3368},
{17,1521,3350},
{17,1547,3302},
{17,1540,3359},
{17,1572,3361},
{17,1590,3369},
{17,1602,3383},
{17,1600,3400},
{17,1618,3402},
{17,1634,3389},
{9,1908,2854}, --4
{9,1923,2830},
{9,1949,2789},
{9,1978,2751},
{9,1994,2706},
{9,2008,2664},
{9,2021,2627},
{9,2034,2603},
{9,2058,2559},
{9,2052,2506},
{9,2065,2474},
{9,2085,2462},
{9,2068,2588},
{9,2049,2694},
{9,2037,2738},
{9,1976,2781},
{9,1981,2813},
{9,1998,2841},
{9,2021,2802},
{9,2052,2825},
{9,2028,2870},
{9,2059,2871},
{9,2083,2880},
{9,2098,2892},
{9,2111,2943},
{9,2121,2973},
{9,2107,3010},
{9,2104,3065},
{9,2077,3077},
{9,2083,3111},
{9,2077,3133},
{9,2046,3118},
{9,2013,3097},
{9,1996,3117},
{9,1981,3153},
{9,1958,3189},
{9,1924,3246},
{9,1901,3280},
{9,1886,3293},
{9,1855,3353},
{9,1853,3396},
{9,1888,3454},
{9,1875,3491},
{9,1852,3532},
{9,1845,3574},
{9,1863,3594},
{9,1894,3615},
{9,1899,3639},
{9,1838,3685},
{9,1890,3699},
{9,1936,3734},
{9,1790,3393},
{9,1759,3417},
{9,1764,3359},
{9,1700,3441},
{9,1667,3471},
{9,1646,3456},
{9,1614,3443},
{9,1586,3467},
{9,1601,3494},
{9,1623,3522},
{9,1644,3536},
{9,1686,3526},
{9,1606,3615},
{9,1564,3576},
{9,1548,3622},
{9,1572,3659},
{9,1545,3701},
{9,1518,3690},
{9,1524,3612},
{9,1492,3600},
{9,1469,3613},
{9,1416,3617},
{9,1391,3586},
{9,1349,3526},
{9,1330,3462},
{9,1323,3441},
{9,1318,3397},
{9,1334,3311},
{9,1352,3285},
{9,1406,3277},
{9,1424,3293},
{9,1447,3326},
{9,1514,3299},
{9,1567,3240},
{9,1536,3260},
{9,1373,3257},
{9,1364,3198},
{9,1347,3145},
{9,1326,3164},
{9,1283,3073},
{9,1250,3090},
{9,1219,3127},
{9,1194,3170},
{9,1309,3016},
{9,1316,2945},
{9,1272,2913},
{9,1246,2953},
{9,1240,2800},
{9,1288,2845},
{9,1316,2802},
{9,1339,2773},
{9,1273,2725},
{9,1318,2737},
{9,1379,2701},
{9,1345,2634},
{9,1370,2609},
{9,1412,2643},
{9,1405,2588},
{9,1432,2556},
{9,1461,2520},
{9,1474,2494},
{9,1504,2550},
{9,1548,2628},
{9,1584,2587},
{9,1580,2532},
{9,1535,2510},
{9,1585,2446},
{9,1622,2594},
{9,1653,2667},
{9,1720,2647},
{9,1690,2587},
{9,1614,2501},
{9,1630,2366},
{9,1753,2578},
{9,1760,2517},
{9,1736,2482},
{9,1689,2432},
{9,1675,2372},
{66,3438,6021}, -- 5
{66,3475,6012},
{66,3511,5975},
{66,3429,5894},
{66,3463,5899},
{66,3541,5966},
{66,3580,5972},
{66,3623,5950},
{66,3595,5907},
{66,3543,5880},
{66,3509,5870},
{66,3467,5842},
{66,3440,5807},
{66,3450,5754},
{66,3480,5707},
{66,3515,5699},
{66,3545,5698},
{66,3592,5691},
{66,3619,5740},
{66,3635,5792},
{66,3656,5839},
{66,3670,5863},
{66,3686,5917},
{66,3761,6005},
{66,3798,6003},
{66,3807,6069},
{66,3764,6145},
{66,3765,6275},
{66,3746,6348},
{66,3714,6292},
{66,3701,6287},
{66,3676,6283},
{66,3657,6278},
{66,3642,6302},
{66,3615,6335},
{66,3548,6346},
{66,3512,6386},
{66,3539,6446},
{66,3554,6300},
{66,3577,6279},
{3,1718,3066}, --6
{3,1705,3020},
{3,1693,3028},
{3,1642,3033},
{3,1640,2939},
{3,1695,2932},
{3,1709,2945},
{3,1748,2933},
{3,1751,2881},
{3,1837,2992},
{3,1891,3029},
{3,1895,3045},
{3,1862,3076},
{3,1842,3121},
{3,1823,3144},
{3,1778,3182},
{3,1814,3238},
{3,1843,3257},
{3,1873,3252},
{3,1904,3310},
{3,1893,3353},
{3,1866,3414},
{3,1823,3416},
{3,1787,3411},
{3,1768,3395},
{3,1745,3387},
{3,1721,3365},
{3,1686,3374},
{3,1631,3373},
{3,1617,3410},
{3,1592,3440},
{3,1560,3430},
{3,1513,3412},
{3,1479,3426},
{3,1460,3443},
{3,1360,3423},
{3,1325,3411},
{3,1316,3325},
{3,1360,3300},
{3,1373,3222},
{3,1382,3174},
{3,1366,3111},
{3,1315,3064},
{3,1535,3118},
{3,1561,3085},
{3,1591,3058},
{3,1612,3024},
{3,1569,3307},
{3,1579,3375},
{3,1599,3388},
{3,1617,3415},
{3,1652,3451},
{3,1658,3454},
{3,1658,3454},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1661,3456},
{3,1846,3398},
{3,1892,3393},
{3,1925,3203},
{3,1891,3104},
{3,1880,3078},
{3,1866,3023},
{3,1820,3009},
{3,1786,2996},
{3,1767,3018},
{3,1737,3065},
{3,1708,3074},
{3,1680,3049},
{3,1651,3039},
{3,1588,2985},
{3,1541,3020},
{3,1531,3090},
{3,1504,3116},
{3,1426,3129},
{3,1424,3187},
{3,1419,3232},
{3,1387,3219},
{3,1395,3294},
{3,1403,3327},
{3,1405,3370},
{3,1426,3376},
{3,1460,3403},
{3,1504,3438},
{3,1535,3442},
{2,2603,3527}, --8
{2,2558,3490},
{2,2529,3463},
{2,2495,3505},
{2,2480,3551},
{2,2448,3580},
{2,2426,3509},
{2,2400,3527},
{2,2403,3589},
{2,2376,3626},
{2,2363,3568},
{2,2352,3500},
{2,2362,3623},
{2,2411,3700},
{2,2405,3739},
{2,2413,3837},
{2,2380,3853},
{2,2339,3899},
{2,2499,3804},
{2,2509,3885},
{2,2541,3948},
{2,2569,4008},
{2,2614,3967},
{2,2583,3890},
{2,2556,3849},
{2,2539,3828},
{2,2498,3955},
{2,2453,4031},
{2,2375,4019},
{2,2403,3987},
{2,2427,3942},
{2,2381,3941},
{2,2348,3983},
{2,2317,4080},
{8,1643,3545}, --9
{8,1682,3465},
{8,1750,3627},
{8,1770,3666},
{8,1821,3663},
{8,1855,3651},
{8,1893,3624},
{8,1933,3578},
{8,1994,3471},
{8,2030,3379},
{8,2021,3319},
{8,2010,3279},
{8,1978,3210},
{8,1924,3103},
{8,1896,3035},
{8,1860,2956},
{8,1810,3014},
{8,1757,2948},
{8,1738,3013},
{8,1748,3040},
{8,1735,3076},
{8,1706,3093},
{8,1807,3105},
{8,1780,3153},
{8,1744,3178},
{8,1730,3211},
{8,1689,3271},
{8,1655,3317},
{8,1599,3312},
{8,1564,3208},
{8,1598,3199},
{100,1606,3296}, -- 10
{100,1628,3219},
{100,1530,3302},
{101,1630,3201}, -- 11
{101,1670,3204},
{101,1707,3204},
{101,1751,3172},
{101,1706,3121},
{101,1747,3077},
{101,1684,3098},
{101,1622,3064},
{101,1674,3026},
{187,1645,3242}, -- 12
{187,1681,3280},
{187,1602,3200},
{187,1620,3289},
{187,1661,3381},
{187,1582,3387},
{187,1615,3422},
{187,1523,3366},
{187,1470,3431},
{187,1522,3490},
{187,1545,3471},
{187,1580,3528},
{187,1492,3325},
{187,1464,3258},
{187,1517,3207},
{187,1561,3245},
{187,1598,3266},
{187,1549,3311},
{187,1574,3342},

}


toadoct = {

{2,2605,3561},
{2,2613,3569},
{2,2606,3576},
{2,2610,3586},
{2,2604,3597},
{2,2613,3598},
{2,2604,3605},
{2,2594,3613},
{2,2599,3624},
{2,2589,3629},
{2,2597,3639},
{2,2587,3647},
{2,2576,3645},
{2,2566,3636},
{2,2558,3630},
{2,2551,3626},
{2,2552,3638},
{2,2551,3652},
{2,2546,3665},
{2,2542,3678},
{2,2533,3679},
{2,2525,3678},
{2,2520,3665},
{2,2518,3650},
{2,2521,3638},
{2,2527,3625},
{2,2534,3614},
{2,2542,3617},
{2,2544,3627},
{2,2528,3607},
{2,2524,3610},
{2,2518,3600},
{2,2520,3587},
{2,2528,3577},
{2,2522,3569},
{2,2521,3552},
{2,2523,3538},
{2,2525,3521},
{2,2527,3505},
{2,2537,3499},
{2,2546,3503},
{2,2533,3481},
{2,2543,3470},
{2,2552,3473},
{2,2534,3466},
{2,2520,3462},
{2,2507,3464},
{2,2496,3469},
{2,2504,3472},
{2,2514,3482},
{2,2502,3485},
{2,2521,3490},
{2,2510,3496},
{2,2499,3495},
{2,2503,3502},
{2,2511,3512},
{2,2503,3514},
{2,2495,3513},
{2,2488,3516},
{2,2494,3522},
{2,2485,3532},
{2,2483,3542},
{2,2479,3558},
{2,2477,3568},
{2,2468,3578},
{2,2477,3578},
{2,2482,3596},
{2,2491,3601},
{2,2498,3608},
{2,2507,3602},
{2,2490,3617},
{2,2502,3616},
{2,2493,3628},
{2,2486,3635},
{2,2501,3631},
{2,2510,3637},
{2,2498,3643},
{2,2490,3642},
{2,2471,3643},
{2,2469,3655},
{2,2469,3670},
{2,2466,3683},
{2,2476,3686},
{2,2485,3696},
{2,2490,3685},
{2,2493,3676},
{2,2494,3657},
{2,2525,3692},
{2,2523,3706},
{2,2522,3715},
{2,2519,3728},
{2,2510,3734},
{2,2499,3727},
{2,2487,3727},
{2,2486,3706},
{2,2477,3741},
{2,2470,3752},
{2,2459,3748},
{2,2447,3744},
{2,2443,3757},
{2,2494,3733},
{2,2501,3740},
{2,2520,3738},
{2,2533,3747},
{2,2542,3753},
{2,2557,3767},
{2,2564,3775},
{2,2580,3782},
{2,2588,3802},
{2,2591,3825},
{2,2586,3837},
{2,2584,3765},
{2,2577,3743},
{2,2576,3724},
{2,2575,3704},
{2,2564,3707},
{2,2559,3723},
{2,2552,3746},
{2,2556,3732},
{2,2584,3690},
{2,2585,3674},
{2,2585,3655},
{2,2551,3689},
{2,2558,3697},
{2,2436,3738},
{2,2425,3730},
{2,2417,3716},
{2,2420,3706},
{2,2430,3696},
{2,2441,3694},
{2,2453,3698},
{2,2470,3692},
{2,2433,3679},
{2,2433,3662},
{2,2437,3647},
{2,2433,3632},
{2,2431,3614},
{2,2437,3600},
{2,2443,3588},
{2,2453,3587},
{2,2463,3582},
{2,2433,3578},
{2,2431,3566},
{2,2424,3550},
{2,2424,3532},
{2,2428,3518},
{2,2429,3497},
{2,2433,3485},
{2,2439,3470},
{2,2437,3445},
{2,2419,3466},
{2,2418,3482},
{2,2401,3491},
{2,2398,3506},
{2,2400,3526},
{2,2404,3541},
{2,2407,3561},
{2,2404,3577},
{2,2400,3593},
{2,2406,3602},
{2,2419,3608},
{2,2406,3617},
{2,2405,3632},
{2,2405,3649},
{2,2394,3629},
{2,2394,3606},
{2,2385,3614},
{2,2378,3621},
{2,2367,3623},
{2,2358,3612},
{2,2357,3596},
{2,2358,3577},
{2,2367,3564},
{2,2369,3548},
{2,2366,3534},
{2,2359,3513},
{2,2355,3501},
{2,2347,3496},
{2,2354,3483},
{2,2354,3465},
{2,2352,3451},
{2,2364,3435},
{2,2338,3445},
{2,2406,3723},
{2,2398,3732},
{2,2386,3735},
{2,2383,3710},
{2,2394,3702},
{2,2407,3699},
{2,2407,3680},
{2,2405,3663},
{2,2377,3743},
{2,2367,3755},
{2,2357,3762},
{2,2363,3773},
{2,2341,3777},
{2,2330,3785},
{2,2333,3800},
{2,2338,3815},
{2,2340,3829},
{2,2340,3842},
{2,2333,3856},
{2,2328,3872},
{2,2333,3888},
{2,2339,3904},
{2,2354,3888},
{2,2366,3876},
{2,2375,3858},
{2,2373,3841},
{2,2372,3820},
{2,2370,3805},
{2,2369,3787},
{2,2386,3853},
{2,2395,3854},
{2,2406,3850},
{2,2414,3852},
{2,2421,3857},
{2,2434,3862},
{2,2443,3864},
{2,2419,3833},
{2,2410,3815},
{2,2429,3813},
{2,2439,3813},
{2,2449,3815},
{2,2458,3808},
{2,2470,3803},
{2,2483,3801},
{2,2492,3791},
{2,2497,3800},
{2,2510,3803},
{2,2519,3812},
{2,2533,3819},
{2,2543,3831},
{2,2555,3844},
{2,2561,3852},
{2,2569,3861},
{2,2577,3872},
{2,2585,3884},
{2,2592,3897},
{2,2599,3907},
{2,2603,3920},
{2,2603,3934},
{2,2604,3947},
{2,2610,3960},
{2,2612,3971},
{2,2606,3981},
{2,2596,3990},
{2,2590,4004},
{2,2581,4013},
{2,2571,4014},
{2,2560,4020},
{2,2549,4030},
{2,2540,4040},
{2,2528,4051},
{2,2517,4054},
{2,2502,4048},
{2,2565,3996},
{2,2558,3980},
{2,2553,3960},
{2,2541,3949},
{2,2528,3964},
{2,2516,3976},
{2,2494,3988},
{2,2479,3992},
{2,2474,3967},
{2,2481,3964},
{2,2496,3955},
{2,2514,3962},
{2,2524,3839},
{2,2523,3852},
{2,2524,3861},
{2,2527,3877},
{2,2529,3883},
{2,2538,3900},
{2,2542,3913},
{2,2542,3932},
{2,2498,3931},
{2,2495,3909},
{2,2506,3893},
{2,2500,3873},
{2,2500,3855},
{2,2498,3836},
{2,2496,3809},
{2,2506,3807},
{2,2517,3887},
{2,2528,3894},
{2,2483,3910},
{2,2471,3924},
{2,2459,3933},
{2,2450,3947},
{2,2434,3949},
{2,2428,3982},
{2,2437,3992},
{2,2449,3967},
{2,2440,4010},
{2,2447,4022},
{2,2455,4034},
{2,2466,4045},
{2,2447,4044},
{2,2437,4046},
{2,2423,4043},
{2,2412,4033},
{2,2403,3977},
{2,2402,3993},
{2,2402,4015},
{2,2396,4035},
{2,2379,4045},
{2,2376,4031},
{2,2377,4011},
{2,2361,4044},
{2,2419,3934},
{2,2405,3932},
{2,2393,3931},
{2,2380,3937},
{2,2371,3949},
{2,2361,3961},
{2,2354,3973},
{2,2347,3989},
{2,2333,3988},
{2,2337,4002},
{2,2332,4017},
{2,2323,4030},
{2,2326,4045},
{2,2328,4060},
{2,2325,4075},
{2,2534,3624},


}


toadohh = {
{8,1778,3341},
{8,1772,3326},
{8,1778,3308},
{8,1786,3296},
{8,1796,3289},
{8,1764,3336},
{8,1751,3346},
{8,1740,3346},
{8,1732,3348},
{8,1784,3363},
{8,1789,3373},
{8,1793,3388},
{8,1819,3396},
{8,1823,3407},
{8,1823,3417},
{8,1825,3430},
{8,1823,3440},
{8,1821,3447},
{8,1819,3456},
{8,1816,3464},
{8,1808,3392},
{8,1799,3390},
{8,1779,3348},
{8,1775,3329},
{8,1782,3297},
{8,1791,3288},
{8,1802,3284},
{8,1758,3340},
{8,1830,3384},
{8,1837,3376},
{8,1844,3365},
{8,1851,3355},
{8,1860,3351},
{8,1868,3344},
{8,1877,3335},
{8,1883,3324},
{8,1892,3326},
{8,1899,3331},
{8,1903,3338},
{8,1908,3346},
{8,1914,3355},
{8,1922,3363},
{8,1932,3355},
{8,1785,3394},
{8,1777,3401},
{8,1825,3388},
{8,1773,3410},
{8,1769,3413},
{8,1765,3418},
{8,1794,3393},
{8,1789,3379},
{8,1786,3364},
{8,1780,3352},
{8,1776,3332},
{8,1768,3328},
{8,1745,3344},
{8,1757,3346},
{8,1771,3332},
{8,1774,3314},
{8,1802,3392},
{8,1813,3392},
{8,1826,3394},
{8,1833,3377},
{8,1840,3368},
{8,1847,3357},
{8,1856,3350},
{8,1864,3344},
{8,1872,3336},
{8,1879,3328},
{8,1887,3321},
{8,1883,3312},
{8,1876,3316},
{8,1799,3397},
{8,1807,3397},
{8,1815,3399},
{8,1819,3424},
{8,1818,3409},
{8,1818,3468},
{8,1815,3470},
{8,1834,3388},
{8,1840,3379},
{8,1849,3365},
{8,1856,3357},
{8,1862,3355},
{8,1869,3347},
{8,1876,3341},
{8,1881,3314},
{8,1887,3327},
{8,1835,3362},
{8,1825,3398},
{8,1778,3356},
{8,1771,3338},
{8,1750,3351},
{8,1743,3350},
{8,1737,3351},
{8,1793,3294},
{8,1804,3290},
{8,1814,3277},
{8,1813,3298},
{8,1811,3282},
{102,1648,3561},
{102,1645,3564},
{102,1650,3568},
{102,1656,3569},
{102,1662,3564},
{102,1667,3566},
{102,1668,3572},
{102,1670,3573},
{102,1675,3577},
{102,1681,3573},
{102,1685,3565},
{102,1691,3564},
{102,1695,3568},
{102,1701,3561},
{102,1705,3548},
{102,1707,3553},
{102,1703,3551},
{102,1704,3561},
{102,1700,3565},
{102,1697,3571},
{102,1702,3574},
{102,1703,3581},
{102,1709,3581},
{102,1707,3588},
{102,1710,3594},
{102,1715,3600},
{102,1710,3604},
{102,1719,3607},
{102,1725,3604},
{102,1732,3599},
{102,1733,3589},
{102,1735,3583},
{102,1726,3610},
{102,1725,3617},
{102,1717,3615},
{102,1710,3609},
{102,1678,3547},
{102,1673,3536},
{102,1680,3528},
{102,1681,3535},
{102,1682,3538},
{102,1675,3553},
{102,1671,3548},
{102,1666,3540},
{102,1669,3553},
{102,1661,3549},
{102,1650,3541},
{102,1646,3531},
{102,1646,3522},
{102,1645,3518},
{102,1640,3507},
{102,1639,3493},
{102,1632,3500},
{102,1618,3503},
{102,1614,3509},
{102,1608,3517},
{102,1614,3515},
{102,1616,3529},
{102,1618,3537},
{102,1615,3549},
{102,1613,3561},
{102,1619,3553},
{102,1624,3547},
{102,1631,3547},
{102,1634,3553},
{102,1640,3549},
{102,1637,3563},
{102,1627,3551},
{102,1644,3617},
{102,1650,3613},
{102,1661,3613},
{102,1647,3619},
{102,1655,3616},
{102,1645,3629},
{102,1641,3621},
{102,1640,3608},
{102,1646,3604},
{102,1645,3597},
{102,1646,3586},
{102,1649,3576},
{102,1637,3574},
{102,1640,3583},
{102,1652,3581},
{102,1659,3576},
{102,1676,3590},
{102,1678,3598},
{102,1671,3596},
{102,1677,3559},
{102,1732,3604},
{102,1636,3514},
{102,1631,3506},
{102,1624,3506},
{102,1643,3551},
{102,1653,3551},
{102,1658,3553},
{102,1653,3556},
{102,1644,3569},
{102,1668,3620},
{102,1664,3619},
{102,1641,3634},
}



mangtam_duatop = {}

function check_min_mangtam_duatop_duatop()
min = mangtam_duatop[1][2]
vt_min = 1
for i=2,getn(mangtam_duatop) do
	if min > mangtam_duatop[i][2] then	
		min = mangtam_duatop[i][2]
		vt_min = i
	end
end
return vt_min
end
tam_duatop = {"",0,0}
function SapXepHangDuaTop()
for i=1,getn(mangtam_duatop) do
	for j=1,getn(mangtam_duatop) do
		if mangtam_duatop[i][2] > mangtam_duatop[j][2] then
			tam_duatop = mangtam_duatop[i]
			mangtam_duatop[i] = mangtam_duatop[j]
			mangtam_duatop[j] = tam_duatop
		elseif mangtam_duatop[i][2] == mangtam_duatop[j][2] then
			if mangtam_duatop[i][3] > mangtam_duatop[j][3] then
				tam_duatop = mangtam_duatop[i]
				mangtam_duatop[i] = mangtam_duatop[j]
				mangtam_duatop[j] = tam_duatop
			end
		end
	end
end

end
