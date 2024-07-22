Include("\\script\\addnpccacmap\\daotaytuy.lua");
Include("\\script\\addnpccacmap\\trap\\mangtrap.lua")
Include("\\script\\checkloinhanvat.lua")
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\cacnhiemvu\\datau\\diadochi\\head_datau.lua")
Include("\\script\\npcchucnang\\xaphu.lua")



TRAIN_ARRAY1= {
[1] = {
	"Hoa S¬n [10]/selluyen1",
	"Vò L¨ng S¬n [20]/selluyen1",
	"B¹ch V©n §éng [20]/selluyen1",
	"Miªu LÜnh [30]/selluyen1",
	"Phôc L­u §éng [30]/selluyen1",
	"Phôc Ng­u T©y [40]/selluyen1",
	"KiÕm C¸c T©y B¾c [40]/selluyen1",
	"Trang kÕ/luyencong2",
	"Ta kh«ng muèn ®i/no"
	},
[2] = {
	{10,2,2607,3558},
	{20,70,1608,3230},
	{20,68,1759,3365},
	{30,74,2030,3242},
	{30,73,1599,2803},
	{40,41,2078,2805},
	{40,13,1159,3715},
	}
};
TRAIN_ARRAY2= {
[1] = {
	"Kª Qu¸n §éng [50]/selluyen2",
	"Kim Quang §éng [50]/selluyen2",
	"Thiªn T©m §éng [60]/selluyen2",
	"Kinh Hoµng §éng [60]/selluyen2",
	"L©m Du Quan [70]/selluyen2",
	"Ch©n Nói Tr­êng B¹ch[80]/selluyen2",
	"Sa M¹c §¹i BiÓu [80]/selluyen2",
	"Cæ D­¬ng Déng [80]/selluyen2",
	"Trang kÕ/luyencong3",
	"Ta kh«ng muèn ®i/no"
	},
[2] = {
	{50,91,1598,3208},
	{50,14,1596,3282},
	{60,50,1585,3215},
	{60,62,1822,3473},
	{70,102,1622,3598},
	{80,104,1144,3116},
	{80,107,1616,3211},
	{80,65,1610,3170},

	}
};
TRAIN_ARRAY3= {
[1] = {
	"D­¬ng Trung §éng [80]/selluyen3",
	"Sa M¹c 1 [90]/samac1haha",
	"Sa M¹c 2 [90]/selluyen3",
	"Sa M¹c 3 [90]/selluyen3",
	"C¸n Viªn §éng [90]/selluyen3",
	"TiÕn Cóc §éng [90]/selluyen3",
	"D­îc V­¬ng §éng [90]/selluyen3",
	"TuyÕt B¸o §éng [90]/selluyen3",
	"M¹c Cao QuËt [90]/selluyen3",
	"Tr­êng B¹ch S¬n Nam [90]/selluyen3",
	"Tr­êng B¹ch S¬n B¾c [90]/selluyen3",
	"Ta kh«ng muèn ®i/no"
	},
[2] = {
	{80,64,1698,3405},
	{90,109,1473,3270},
	{90,110,1818,3414},
	{90,111,1592,3240},
	{90,94,1673,3420},
	{90,93,1526,3170},
	{90,99,1591,3105},
	{90,100,1561,3244},
	{90,79,1861, 3447},
	{90,22,1570, 3133}, --Map : TBSN
	{90,105,2022, 4098}, --Map : TBSB
	
	}
};

function samac1haha()
SayNew("§Ó tr¸nh viÖc chÆn cæng, b¹n cã thÓ chän cæng ®Ó vµo Sa M¹c 1",6,
"Cæng 1 /samac11",
"Cæng 2 /samac11",
"Cæng 3 /samac11",
"Cæng 4 /samac11",
"Cæng 5 /samac11",
"Tho¸t./no")
end
function samac11(nsel)
i = nsel + 1
if GetCash() < 10000 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 1 v¹n l­îng, kh«ng thÓ lªn b¶n ®å nµy")
return
end
if GetLevel() < 90 then
Talk(1,"","Ng­¬i kh«ng ®ñ cÊp 90, kh«ng thÓ lªn b¶n ®å nµy")
return
end
		Msg2Player("Ngåi yªn, chóng ta ®i Sa M¹c S¬n §éng 1..........");
		Pay(10000)
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		
		-- AddSkillEffect(504,1,5*18)
		if i == 1 then
		NewWorld(109,1580,3189)
		elseif i == 2 then
		NewWorld(109,1680,3285)
		elseif i == 3 then
		NewWorld(109,1475,3275)
		elseif i == 4 then
		NewWorld(109,1424,3105)	
		elseif i == 5 then
		NewWorld(109,1261,3242)
		end
		
end;

function main()
 dofile("script\\item\\questkey\\709.lua")
if GetLevel() < 5 then
Talk(1,"","PhÝa tr­íc nguy hiÓm, h·y quay l¹i tu luyÖn thªm ®i !")
return
end
w,X,Y = GetWorldPos()	
if w == 42 or w == 43 or w == 34 or w == 35 or w == 37 or w == 46 or w == 60 or w == 47 or w == 48 or w == 258 or w == 49 or w == 26 or w == 27 or w == 28 or w == 29 or w == 33 or w == 20 or w == 106 then
Msg2Player("B¹n kh«ng thÓ sö dông ThÇn Hµnh Phï ë ®©y")
return
end
if w == 5 or w == 59 or w == 24 then
Msg2Player("B¹n kh«ng thÓ sö dông ThÇn Hµnh Phï ë ®©y")
return
end
if w >= 116 and w <= 134 then
Msg2Player("Kh«ng thÓ sö dông ThÇn Hµnh Phï trong L·nh §Þa Bang Héi !")
return
end
				--SayNew("<color=blue>ThÇn Hµnh Phï:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",6,
				--"§i Phong L¨ng §é /pld",
				--"Khu vùc thµnh thÞ/thanhthi",
				--"Khu vùc luyÖn c«ng/luyencong1",
				--"§i Hoa S¬n C¶nh Kü Tr­êng /hoasoncanhky",
				--"§i ®Õn n¬i lµm nhiÖm vô D· TÈu/dichuyendatau",
				--"Tho¸t./no");
				SayNew("<color=blue>ThÇn Hµnh Phï:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",8,
	--"ThiÕt ®Æt ®iÓm håi sinh ®Ó sö dông thæ ®Þa phï./diemphucsinh",
	"Sö dông thuËt thÇn hµnh ®i ®Õn n¬i chØ ®Þnh./chondiadiem",
	"Khu vùc luyÖn c«ng/luyencong1",
	--"§i Hoa S¬n C¶nh Kü Tr­êng /hoasoncanhky",
	"B¶n ®å Sù KiÖn /sukien1",
	"§Õn r­¬ng chøa ®å /ruong",
	--"§Õn hiÖu thuèc/hieuthuoc",
	"§Õn cong thanh/congthanh2",
	"§Õn t¹p hãa/taphoa",
	"Quay l¹i n¬i cò /quaylai",
	SELECT_OUT
	)
				
end;

function sukien1()
	SayNew("<color=blue>ThÇn Hµnh Phï:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",3,
	"§µo Hoa Nguyªn/move_daonguyenthon",
	"Minh NguyÖt TrÊn/move_minhnguyettran",
	SELECT_OUT
	)
end


function move_daonguyenthon()
NewWorld(55,1621,3223);
end


function move_minhnguyettran()
--NewWorld(58,1599,3267);
NewWorld(36,1599,3267);
end



function congthanh2()
--SetFightState(0)
NewWorld(36,1866,3412);
end


--===========================================
SELECT_GO = "ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn."
SELECT_REVIVE = "ThiÕt ®Æt ®iÓm håi sinh cho lÇn sau sö dông thæ ®Þa phï."
SELECT_OUT = "Rêi khái/no"
SUCCESS = "ThiÕt ®Æt ®iÓm håi sinh t¹i %s thµnh c«ng."
PLACE_TOGO = "H·y lùa chän n¬i cÇn ®Õn"

RUONG_ARRAY=
{
{{1571,3118},{1571,3118},{1658,3156},{1545,3218},{1630,3260}},--phuong tuong
{{3155,5075},{3185,5180},{3001,5104},{3052,4981},{3236,5028}},--thanh do
{{1576,3133},{1625,3151}},--dai ly
{{1722,3081},{1613,3013},{1694,3207},{1853,2955}},--bien kinh
{{1565,3219},{1576,3342},{1452,3262},{1481,3164},{1686,3235}},--tuong duong
{{1756,3006},{1661,2985},{1626,3176},{1709,3227},{1856,3032}},--duong chau
{{1573,2933},{1687,3277},{1391,3312}}--lam an
};

THUOC_ARRAY=
{
{1603,3193},--phuong tuong
{3140,5133},--thanh do
{1497,3209},--dai ly
{1776,3091},--bien kinh
{1610,3245},--tuong duong
{1775,3080},--duong chau
{1616,2978}--lam an
};

TAPHOA_ARRAY=
{
{1561,3205},--phuong tuong
{3094,5136},--thanh do
{1537,3203},--dai ly
{1786,3101},--bien kinh
{1629,3262},--tuong duong
{1701,3021},--duong chau
{1339,3167}--lam an
};

function useitem(nItemIndex)
local curstationid = 0; --id Ba Lang Huyen = 10
	SetTaskTemp(SEL_MOVEARRAY, 0);
	local w,x,y = GetWorldPos();
	for i=1,getn(STATION_ARRAY) do
		if(w == STATION_ARRAY[i][2]) then
		curstationid = i;
		SetTaskTemp(SEL_MOVEARRAY, i);
		end
	end
	if(CheckMapForTP() == 1) then
	Msg2Player("N¬i ®©y kh«ng thÓ sö dông thÇn hµnh phï!")
	return end;
	Say(10195,7,
	"ThiÕt ®Æt ®iÓm håi sinh ®Ó sö dông thæ ®Þa phï./diemphucsinh",
	"Sö dông thuËt thÇn hµnh ®i ®Õn n¬i chØ ®Þnh./chondiadiem",
	"§Õn r­¬ng chøa ®å /ruong",
	"§Õn hiÖu thuèc/hieuthuoc",
	"§Õn t¹p hãa/taphoa",
	"Quay l¹i n¬i cò /quaylai",
	SELECT_OUT
	)
end;

function quaylai()
	BackOldPlace()
end;





function ruong()
	--if(GetFightState() == 1) then
	--Talk(1,"",10196)
	--return end
	local w,x,y = GetWorldPos();
	local nRand;
	if(w == 1) then --phuong tuong
		nRand = random(1,getn(RUONG_ARRAY[1]));
		SetPos(RUONG_ARRAY[1][nRand][1],RUONG_ARRAY[1][nRand][2]);
	elseif(w == 11) then	--thanh do
		nRand = random(1,getn(RUONG_ARRAY[2]));
		SetPos(RUONG_ARRAY[2][nRand][1],RUONG_ARRAY[2][nRand][2]);
	elseif(w == 162) then	--dai ly
		nRand = random(1,getn(RUONG_ARRAY[3]));
		SetPos(RUONG_ARRAY[3][nRand][1],RUONG_ARRAY[3][nRand][2]);
	elseif(w == 37) then	--bien kinh
		nRand = random(1,getn(RUONG_ARRAY[4]));
		SetPos(RUONG_ARRAY[4][nRand][1],RUONG_ARRAY[4][nRand][2]);
	elseif(w == 78) then	--tuong duong
		nRand = random(1,getn(RUONG_ARRAY[5]));
		SetPos(RUONG_ARRAY[5][nRand][1],RUONG_ARRAY[5][nRand][2]);
	elseif(w == 80) then	--duong chau
		nRand = random(1,getn(RUONG_ARRAY[6]));
		SetPos(RUONG_ARRAY[6][nRand][1],RUONG_ARRAY[6][nRand][2]);
	elseif(w == 176) then	--lam an
		nRand = random(1,getn(RUONG_ARRAY[7]));
		SetPos(RUONG_ARRAY[7][nRand][1],RUONG_ARRAY[7][nRand][2]);
	else
	Talk(1,"",10196)
	return end
end;

function hieuthuoc()
	--if(GetFightState() == 1) then
	--Talk(1,"",10196)
	--return end
	local w,x,y = GetWorldPos();
	if(w == 1) then --phuong tuong
		SetPos(THUOC_ARRAY[1][1],THUOC_ARRAY[1][2]);
	elseif(w == 11) then	--thanh do
		SetPos(THUOC_ARRAY[2][1],THUOC_ARRAY[2][2]);
	elseif(w == 162) then	--dai ly
		SetPos(THUOC_ARRAY[3][1],THUOC_ARRAY[3][2]);
	elseif(w == 37) then	--bien kinh
		SetPos(THUOC_ARRAY[4][1],THUOC_ARRAY[4][2]);
	elseif(w == 78) then	--tuong duong
		SetPos(THUOC_ARRAY[5][1],THUOC_ARRAY[5][2]);
	elseif(w == 80) then	--duong chau
		SetPos(THUOC_ARRAY[6][1],THUOC_ARRAY[6][2]);
	elseif(w == 176) then	--lam an
		SetPos(THUOC_ARRAY[7][1],THUOC_ARRAY[7][2]);
	else
	Talk(1,"",10196)
	return end
end;

function taphoa()
	--if(GetFightState() == 1) then
	--Talk(1,"",10196)
	--return end
	local w,x,y = GetWorldPos();
	if(w == 1) then --phuong tuong
		SetPos(TAPHOA_ARRAY[1][1],TAPHOA_ARRAY[1][2]);
	elseif(w == 11) then	--thanh do
		SetPos(TAPHOA_ARRAY[2][1],TAPHOA_ARRAY[2][2]);
	elseif(w == 162) then	--dai ly
		SetPos(TAPHOA_ARRAY[3][1],TAPHOA_ARRAY[3][2]);
	elseif(w == 37) then	--bien kinh
		SetPos(TAPHOA_ARRAY[4][1],TAPHOA_ARRAY[4][2]);
	elseif(w == 78) then	--tuong duong
		SetPos(TAPHOA_ARRAY[5][1],TAPHOA_ARRAY[5][2]);
	elseif(w == 80) then	--duong chau
		SetPos(TAPHOA_ARRAY[6][1],TAPHOA_ARRAY[6][2]);
	elseif(w == 176) then	--lam an
		SetPos(TAPHOA_ARRAY[7][1],TAPHOA_ARRAY[7][2]);
	else
	Talk(1,"",10196)
	return end
end;


function chondiadiem()
	Say(SELECT_GO,7,
	SELECT_OUT,
	"Thµnh thÞ /thanhthi",
	"Th«n trang/thontran99",
	--"Khu vùc Th«n/thontran99",
	"M«n ph¸i/monphai",
	"ChiÕn tr­êng Tèng Kim/tongkim",
	"B¶n ®å cÊp 90/bando",
	--"§Õn Map Vip LuyÖn C«ng/mapvip1",
	"§µo Hoa Nguyªn/daohoanguyen"
	)
end;




--===== thanh thi=====================
function thanhthi()
	if (GetLevel() < 10) then
        Msg2Player("B¹n ph¶i ®¹t cÊp 10 míi cã thÓ ®i ®Õn Thµnh ThÞ ");
	return end; 
	local count = 1;
	local CityTab = {};
	Say(SELECT_GO,8,
	SELECT_OUT,
	"Ph­îng T­êng phñ /phuongtuong",
	"Thµnh §« phñ/thanhdo",
	"§¹i Lý phñ/daily",
	"BiÖn Kinh phñ/bienkinh",
	"T­¬ng D­¬ng phñ/tuongduong",
	"D­¬ng Ch©u phñ/duongchau",
	"L©m An phñ/laman"
	)
end

function tuongduong()
		Say(SELECT_GO,6,
	"T­¬ng D­¬ng trung t©m/tuongduongtrungtam",
	"T­¬ng D­¬ng §«ng/tuongduongdong",
	"T­¬ng D­¬ng Nam/tuongduongnam",
	"T­¬ng D­¬ng T©y/tuongduongtay",
	"T­¬ng D­¬ng B¾c/tuongduongbac",
	SELECT_OUT
	)
end
function phuongtuong()
	Say(SELECT_GO,6,
	"Ph­îng T­êng trung t©m/phuongtuongtrungtam",
	"Ph­îng T­êng §«ng/phuongtuongdong",
	"Ph­îng T­êng Nam/phuongtuongnam",
	"Ph­îng T­êng T©y/phuongtuongtay",
	"Ph­îng T­êng B¾c/phuongtuongbac",
	SELECT_OUT
	)
end
function thanhdo()
	Say(SELECT_GO,6,
	"T­¬ng D­¬ng trung t©m/thanhdotrungtam",
	"T­¬ng D­¬ng §«ng/thanhdodong",
	"T­¬ng D­¬ng Nam/thanhdonam",
	"T­¬ng D­¬ng T©y/thanhdotay",
	"T­¬ng D­¬ng B¾c/thanhdobac",
	SELECT_OUT
	)
end
function daily()
	Say(SELECT_GO,5,
	"§¹i Lý Trung T©m/daily4",
	"§¹i Lý Nam/daily1",
	"§¹i Lý §«ng/daily2",
	"§¹i Lý B¾c/daily3",
	SELECT_OUT
	)
end
function bienkinh()
	Say(SELECT_GO,5,
	"BiÖn Kinh trung t©m/bienkinh3",
	"BiÖn Kinh §«ng/bienkinh2",
	"BiÖn Kinh T©y/bienkinh1",
	"BiÖn Kinh B¾c/bienkinh4",
	SELECT_OUT
	)
end
function duongchau()
	Say(SELECT_GO,6,
	"D­¬ng Ch©u trung t©m/duongchautrungtam",
	"D­¬ng Ch©u §«ng/duongchaudong",
	"D­¬ng Ch©u Nam/duongchaunam",
	"D­¬ng Ch©u T©y/duongchautay",
	"D­¬ng Ch©u B¾c/duongchaubac",
	SELECT_OUT
	)
end
function laman()
	Say(SELECT_GO,5,
	--"L©m An trung t©m/lamantrungtam",
	"L©m An §«ng/lamandong",
	"L©m An Nam/lamannam",
	"L©m An T©y/lamantay",
	"L©m An B¾c/lamanbac",
	SELECT_OUT
	)
end
--===========tuongduong========================

function tuongduongbac()
SetFightState(0)
NewWorld(15,1695,3235);
end
function tuongduongtay()
SetFightState(0)
NewWorld(15,1479,3176);
end
function tuongduongnam()
SetFightState(0)
NewWorld(15,1463,3253);
end
function tuongduongdong()
SetFightState(0)
NewWorld(15,1575,3353);
end
function tuongduongtrungtam()
SetFightState(0)
NewWorld(15,1573,3230);
end


--===============phuongtuonng======================
function phuongtuongbac()
NewWorld(17,1662,3159);
end
function phuongtuongtay()
NewWorld(17,1571,3120);
end
function phuongtuongnam()
NewWorld(17,1544,3221);
end
function phuongtuongdong()
NewWorld(17,1630,3263);
end
function phuongtuongtrungtam()
NewWorld(17,1591,3174);
end
--============thanhdo=============

function thanhdobac()
NewWorld(18,3240,5027);
end
function thanhdotay()
SetFightState(0)
NewWorld(18,3048,4983);
end
function thanhdonam()
SetFightState(0)
NewWorld(18,3005,5106);
end
function thanhdodong()
SetFightState(0)
NewWorld(18,3180,5179);
end
function thanhdotrungtam()
SetFightState(0)
NewWorld(18,3148,5078);
end
--===========dai ly===================
function daily1()
NewWorld(11,1471,3275);
end
function daily2()
NewWorld(11,1695,3280);
end
function daily3()
NewWorld(11,1667,3131);
end
function daily4()
NewWorld(11,1582,3137);
end
--===========bien kinh===================
function bienkinh1()
SetFightState(0)
NewWorld(9,1610,3015);
end
function bienkinh2()
SetFightState(0)
NewWorld(9,1695,3210);
end
function bienkinh3()
SetFightState(0)
NewWorld(9,1722,3084);
end
function bienkinh4()
SetFightState(0)
NewWorld(9,1853,2959);
end
--==========duong chau====================
function duongchaubac()
SetFightState(0)
NewWorld(16,1862,3033);
end
function duongchautay()
SetFightState(0)
NewWorld(16,1661,2987);
end
function duongchaunam()
SetFightState(0)
NewWorld(16,1619,3178);
end
function duongchaudong()
SetFightState(0)
NewWorld(16,1712,3230);
end
function duongchautrungtam()
SetFightState(0)
NewWorld(16,1762,3020);
end
--===========lam an===================
function lamanbac()
SetFightState(0)
NewWorld(63,1580,2943);
end
function lamantay()
SetFightState(0)
NewWorld(63,1358,3017);
end
function lamannam()
SetFightState(0)
NewWorld(63,1395,3320);
end
function lamandong()
SetFightState(0)
NewWorld(63,1685,3287);
end


--==end thanh ======================



function daohoanguyen()
	NewWorld(55,RANDOM(2010,2029), RANDOM(4496,4517))
	--NewWorld(55,2015,4490);
end;

function monphai()
	if(1 == 1) then
	Talk(1,"","Chøc n¨ng t¹m thêi ch­a më!");
	return end
	local count = 1;
	local CityTab = {};
	
	for i=1,getn(MONPHAI_ARRAY) do
		CityTab[count] = MONPHAI_ARRAY[i][2] .."/chonmonphai";
		count = count + 1;
	end
	if(count == 1) then
	return end
	CityTab[count] = SELECT_OUT;
	Say(SELECT_GO,count,CityTab)
end;

function chonmonphai(nNo)
	local nSel = nNo +1;
	local x,y = GetRevPos(MONPHAI_ARRAY[nSel][3],MONPHAI_ARRAY[nSel][1]);
	if(x ~= nil and x > 0) then
		if(NewWorld(MONPHAI_ARRAY[nSel][1],floor(x/32),floor(y/32))==1) then
		SetFightState(0)
		end
	end;
end;

-- function tongkim()
	-- Talk(1,"","Chøc n¨ng t¹m b¶o tr×, vui lßng quay l¹i sau!")
-- end;

function tongkim()
	Say(PLACE_TOGO,3,
	SELECT_OUT,
	"§iÓm b¸o danh bªn Tèng/ditong",
	"§iÓm b¸o danh bªn Kim/dikim"
	)
end;

function ditong()
	if(NewWorld(325,1539,3186) == 1) then
		SetFightState(0)
	end
end;

function dikim()
	if(NewWorld(325,1581,3093) == 1) then
		SetFightState(0)
	end
end;

function bando()
	if (GetLevel() < 70) then
          Msg2Player("B¹n ch­a ®ñ ®¼ng cÊp ®i ®Õn n¬i luyÖn c«ng cÊp cao");
	return end;  
	local count = 1;
	local CityTab = {};
	
	for i=1,getn(PLACES_ARRAY) do
		CityTab[count] = GetWayPointName(PLACES_ARRAY[i]).."/chonbando";
		count = count + 1;
	end
	if(count == 1) then
	return end
	CityTab[count] = SELECT_OUT;
	Say(PLACE_TOGO,count,CityTab)
end;

function chonbando(nNo)
	local nSel = nNo + 1;
	local w,x,y = GetWayPointPos(PLACES_ARRAY[nSel]);
	if(NewWorld(w,x,y) == 1) then
	SetFightState(1)
	end;
end;

function diemphucsinh()
	Say(SELECT_REVIVE,3,
	SELECT_OUT,
	"Thµnh thÞ /psthanhthi",
	"Th«n trang/psthon"
	--"M«n ph¸i/psmonphai"
	)
end;

function psthanhthi()
	local count = 1;
	local CityTab = {};
	
	for i=1,getn(THANH_ARRAY) do
		CityTab[count] = THANH_ARRAY[i][2] .."/pschonthanh";
		count = count + 1;
	end
	if(count == 1) then
	return end
	CityTab[count] = SELECT_OUT;
	Say(SELECT_REVIVE,count,CityTab)
end;

function pschonthanh(nNo)
	local nSel = nNo + 1;
	local count = 1;
	local CityPosTab = {};
	SetTaskTemp(SEL_MOVEARRAY,nSel);
	for i=1,getn(THANH_ARRAY[nSel][3]) do
		CityPosTab[count] = THANH_ARRAY[nSel][3][i][2] .."/psposthanh";
		count = count + 1;
	end
	if(count == 1) then
	return end
	CityPosTab[count] = SELECT_OUT;
	Say(SELECT_REVIVE,count,CityPosTab)
end;

function psposthanh(nNo)
	local nSel = nNo + 1;
	local nMoveAR = GetTaskTemp(SEL_MOVEARRAY);
	SetRevPos(THANH_ARRAY[nMoveAR][3][nSel][1],THANH_ARRAY[nMoveAR][1]);
	Talk(1,"", format(SUCCESS,THANH_ARRAY[nMoveAR][3][nSel][2]))
end;

function psthon()
local count = 1;
	local CityTab = {};
	for i=1,getn(THON_ARRAY) do
		CityTab[count] = THON_ARRAY[i][2] .."/pschonthon";
		count = count + 1;
	end
	if(count == 1) then
	return end
	CityTab[count] = SELECT_OUT;
	Say(SELECT_REVIVE,count,CityTab)
end;

function pschonthon(nNo)
	local nSel = nNo + 1;
	SetRevPos(THON_ARRAY[nSel][3],THON_ARRAY[nSel][1]);
	Talk(1,"", format(SUCCESS,THON_ARRAY[nSel][2]))
end;

function psmonphai()
	if(1 == 1) then
	Talk(1,"","Chøc n¨ng t¹m thêi ch­a më!");
	return end
	local count = 1;
	local CityTab = {};
	
	for i=1,getn(MONPHAI_ARRAY) do
		CityTab[count] = MONPHAI_ARRAY[i][2] .."/pschonmonphai";
		count = count + 1;
	end
	if(count == 1) then
	return end
	CityTab[count] = SELECT_OUT;
	Say(SELECT_REVIVE,count,CityTab)
end;

function pschonmonphai(nNo)
	local nSel = nNo + 1;
	SetRevPos(MONPHAI_ARRAY[nSel][3],MONPHAI_ARRAY[nSel][1]);
	Talk(1,"", format(SUCCESS,MONPHAI_ARRAY[nSel][2]))
end;
function mapvip1()
        --if GetTask(300) > 1 then --Check Trung Sinh
       --Talk(1,"","<bclr=blue> B¹n §· ChuyÓn Sinh Cao, H·y Xuèng Nói Tu LuyÖn !!!")
        --return end;
	--if(GetLevel() >= 195) then --Check Level
       --Talk(1, "", "<color=yellow> B¹n cã level trªn 195, h·y xuèng nói tu luyÖn mét thêi gian nhÐ !!!")
	--return end;
	--if(CheckMapForTP() == 1 or GetNumber(GetTask(TASK_LINHTINH),2) > 0) then
	--Msg2Player("N¬i ®©y kh«ng thÓ dïng vËt phÈm")
	--return end;
        if (GetItemCount(52,3)>0) then --Check Lenh Bai
	Say("B¹n cÇn ph¶i d­íi Level 195 vµ Trïng Sinh d­íi 2 míi cã thÓ lªn Map Vip luyÖn c«ng",8,
	--"ThiÕt ®Æt ®iÓm håi sinh ®Ó sö dông thæ ®Þa phï./diemphucsinh",
	"B·i Train T©ng 1/map1",
	"B·i Train T©ng 2/map2",
	"B·i Train T©ng 3/map3",
	"B·i Train T©ng 4/map4",
	"B·i Train T©ng 5/map5",
	--"B·i Train T©ng 6/map6",
	"Ta suy nghÜ l¹i /quaylai",
	SELECT_OUT
	)
        else
 		Talk(1,"","B¹n ThiÕu <color=green>LÖnh Bµi Train Map Vip <color> råi, mau ®Õn LÔ Quan mua th«i!")
end
end;

function map1()
	         NewWorld(996,1591,3178);
		SetFightState(1);
end;
function map2()
	         NewWorld(997,1591,3178);
		SetFightState(1);
end;
function map3()
	         NewWorld(998,1591,3178);
		SetFightState(1);
end;
function map4()
	         NewWorld(999,1591,3178);
		SetFightState(1);
end;
function map5()
	         NewWorld(1000,1591,3178);
		SetFightState(1);
end;



THANH_ARRAY = {
{1 ,	"Ph­îng T­êng phñ "	,{
		{0	,"Ph­îng T­êng trung t©m"},
		{1	,"Ph­îng T­êng §«ng"},
		{2	,"Ph­îng T­êng T©y"},
		{3	,"Ph­îng T­êng Nam"},
		{4	,"Ph­îng T­êng B¾c"}
}},
{11 ,	"Thµnh §« phñ "	,{
		{5 	,"Thµnh §« trung t©m"},
		{6 	,"Thµnh §« §«ng"},
		{7 	,"Thµnh §« T©y"},
		{8 	,"Thµnh §« Nam"},
		{9 	,"Thµnh §« B¾c"}
}},
{162 ,	"§¹i Lý phñ "	,{
		{63 	,"§¹i Lý trung t©m"},
		{64	,"§¹i Lý B¾c"}
}},
{37 ,	"BiÖn Kinh phñ "	,{
		{23	,"BiÖn Kinh trung t©m"},
		{24	,"BiÖn Kinh §«ng"},
		{25	,"BiÖn Kinh T©y"},
		{26	,"BiÖn Kinh B¾c"}
		
		
		
}},
{78 ,	"T­¬ng D­¬ng phñ "	,{
		{29	,"T­¬ng D­¬ng trung t©m"},
		{30	,"T­¬ng D­¬ng §«ng"},
		{31	,"T­¬ng D­¬ng Nam"},
		{32	,"T­¬ng D­¬ng T©y"},
		{33	,"T­¬ng D­¬ng B¾c"}
}},
{80 ,	"D­¬ng Ch©u phñ "	,{
		{34	,"D­¬ng Ch©u trung t©m"},
		{35	,"D­¬ng Ch©u §«ng"},
		{36	,"D­¬ng Ch©u B¾c"},
		{37	,"D­¬ng Ch©u Nam"},
		{38	,"D­¬ng Ch©u T©y"}
}},
{63 ,	"L©m An phñ "	,{
		{67	,"L©m An Nam"},
		{68	,"L©m An §«ng"},
		{69	,"L©m An B¾c"}
}}
};
--diem phuc sinh thon tran
THON_ARRAY = {
{20 ,	"Giang T©n Th«n"	,10},
{121 ,	"Long M«n TrÊn"	,55},
{53 ,	"Ba L¨ng HuyÖn"	,19}
--{54 ,	"Nam Nh¹c TrÊn"	,17},
--{174 ,	"Long TuyÒn Th«n"	,66},
--{101 ,	"§¹o H­¬ng Th«n"	,47},
--{99 ,	"VÜnh L¹c TrÊn"	,43},
--{100 ,	"Chu Tiªn TrÊn"	,45},
--{153 ,	"Th¹ch Cæ TrÊn"	,59},
--{175 ,	"T©y S¬n Th«n"		,1}
};
--diem phuc sinh mon phai
MONPHAI_ARRAY = {
{103	,	"ThiÕu L©m ph¸i"			,52},
{59		,	"Thiªn V­¬ng bang"	,21},
{25		,	"§­êng M«n"				,15},
{183	,	"Ngò §éc gi¸o"				,71},
{13		,	"Nga My ph¸i"				,13},
{154	,	"Thóy Yªn m«n"			,61},
{115	,	"C¸i Bang"						,53},
{49		,	"Thiªn NhÉn gi¸o"		,28},
{81		,	"Vâ §ang ph¸i"				,40},
{131	,	"C«n L«n ph¸i"				,57}
};
--noi den ban do cac loai
PLACES_ARRAY = {
201,		--Tr­êng B¹ch s¬n b¾c
198,		--Tr­êng B¹ch S¬n Nam
74,		--Kháa Lang ®éng
226,		--Sa M¹c 1
227,		--Sa M¹c 2
228,		--Sa M¹c 3
10,		--Phong L¨ng ®é
225,		--M¹c Cao QuËt
147,		--TiÕn cóc ®éng
539,            --Truong Ca Mon
--221,		--C¸n viªn ®éng maps 
};




--============================checkmap
tbCD_MAP = {380}	--khong co dung o chien truong tong kim
tbCD_MAPNEW = {380,221}	-- khong cho dung chien truong tong kim, cong thanh chien
tbCD_MAP_TP = {380,242,197,480,481,482,483,484,485,486,487,488,489,396,397,399,401,403,405,407,409,411,413,415,
535,536,537,538,541,543,545,547,549,551,553,555,557,559,337,221,960,989,990,991,992,393,993,967};	--tho dia phu

function CheckMap()
	local nMapId,X,Y = GetWorldPos();
	
	for i = 1, getn(tbCD_MAP) do
		if (nMapId == tbCD_MAP[i]) then
			return 1
		end
	end
	Talk(1,"","VËt phÈm nµy kh«ng thÓ sö dông t¹i ®©y.")
	return 0;
end

function CheckMapNew()
	local nMapId,X,Y = GetWorldPos();
	
	for i = 1, getn(tbCD_MAPNEW) do
		if (nMapId == tbCD_MAPNEW[i]) then
			return 1
		end
	end
	Talk(1,"","VËt phÈm nµy kh«ng thÓ sö dông t¹i ®©y.")
	return 0;
end

function CheckMapForTP()
	local nMapId,X,Y = GetWorldPos();
	
	for i = 1, getn(tbCD_MAP_TP) do
		if (nMapId == tbCD_MAP_TP[i]) then
			return 1
		end
	end
	
	return 0;
end

--============================

STATION_ARRAY = {
{1 ,1  ,10072},
{2 ,11 ,15647},
{3 ,162,15648},
{4 ,37 ,10072},
{5 ,78 ,15646},
{6 ,80 ,15649},
{7 ,63,10072},
{8 ,20 ,10072},
{9 ,121,10072},
{10,53 ,15652},
{11,54 ,10072},
{12,174,15650},
{13,101,10072},
{14,99 ,10072},
{15,100,10072},
{16,153,15651}
};

GO_DIADOCHI={
{3, 1159, 3715},
{19, 3084, 3975},
{90, 1649, 3567},
{41, 2078, 2804},
{70, 1608, 3230},
{193, 1937, 2851},
{122, 1612, 3328},
{179, 1738, 2559},
{140, 2429, 3731},
{145,1613,3313},
{125,1809,3217},
{9, 2404, 5539},
{56, 1491, 3534},
{7, 2235, 2847},
{224,1628,3211},
{319, 1612, 3612},
{123, 1698, 3363},
{340, 1853, 3446},
{320, 1137, 3151},
{321, 966, 2296},
{322, 2048,4120},
{336, 1112, 3189},
{75, 1671, 3345},
{225,1472,3264},
{226,1557,3177},
{227,1522,3275},
{124, 1672, 3420}
};

NO_PLACE = "Ng­¬i hiÖn kh«ng cã nhiÖm vô nµo cÇn ph¶i ®i!"
KIEMTRA 	= "H·y l¹i NPC T©n Thñ ThÇn Sø ®Ó kÝch ho¹t chøc n¨ng!"


function LuyenCong()
	Say(10072,9,
	"Hoa S¬n TuyÖt §Ønh [10]/HoaSon",
	"B¶n ®å luyÖn c«ng [10]/LuyenCong10",
	"KiÕm C¸c T©y B¾c [20]/KiemCacTayBac",
	"Vò L¨ng S¬n [20]/VuLangSon",
	"Thôc C­¬ng s¬n [30]/ThucCuongSon",
	"Phôc Ng­u s¬n  nam [30]/PhucNguuSon",
	"Phôc Ng­u s¬n  b¾c [40]/PhucNguuSonBac",
	"Trang tiÕp theo/LuyenCong1",
	"Tho¸t/no")
end;

function LuyenCong1()
	Say(10072,10,
	"Hoµng Hµ Nguyªn §Çu [40]/HoangHaNguyenDau",
	"L­u Tiªn ®éng [50]/LuuTienDong",
	"¸c B¸ §Þa §¹o [50]/AcBaDiaDao",
	"Tr­êng Giang Nguyªn §Çu [60]/TruongGiang",
	"Hoµnh s¬n [60]/HanhSonPhai",
	"L©m Du Quan [70]/LamDuQuan",
	"L·o Hæ ®éng [70]/LaoHoDong",
	"Sa M¹c §Þa BiÓu [80]/SaMacDiaBieu",
	"Ch©n nói Tr­êng B¹ch [80]/ChanNuiTruongBach",
	"Trang tiÕp theo/LuyenCong2",
	"Tho¸t/no")
end;

function LuyenCong2()
	Say(10072,11,
	"Phong L¨ng ®é [90]/BoBacPLD",
	"M¹c Cao QuËt [90]/MacCaoQuat",
	"Tr­êng B¹ch s¬n Nam [90]/TruongBachNam",
	"Tr­êng B¹ch s¬n B¾c [90]/TruongBachBac",
	"Kho¶ Lang ®éng [90]/KhoaLangDong",
	"Sa M¹c 1 [90]/SaMac1",
	"Sa M¹c 2 [90]/SaMac2",
	"Sa M¹c 3 [90]/SaMac3",
	"C¸n Viªn ®éng [90]/CanVienDong",
	"TiÕn Cóc ®éng [90]/TienCucDong",
	"VÒ trang tr­íc/LuyenCong",
	"Tho¸t/no")
end

--======================= BAN DO LUYEN CONG =======================--
function LuyenCong10()
	Talk(1,"","§¼ng cÊp 10 trë lªn luyÖn c«ng t¹i 7 thµnh thÞ lín <color=wood>Dïng thÇn hµnh phï ®Ó ®i lªn thµnh thÞ....!")
end

function HoaSon()
	if (GetLevel() < 10) then Talk(1,"",15645) return end --phia truoc nguy hiem
	NewWorld(2,2609,3590) 
end

function KiemCacTayBac()
	if (GetLevel() < 20) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(2);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(2)
	end
end

function VuLangSon()
	if (GetLevel() < 20) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(47);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(47)
	end
end;

function PhucNguuSon()
	if (GetLevel() < 30) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(150);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(150)
	end
end;

function ThucCuongSon()
	if (GetLevel() < 30) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(151);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(151)
	end
end;

function PhucNguuSonBac()
	if (GetLevel() < 40) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(105);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(105)
	end
end;

function HoangHaNguyenDau()
	if (GetLevel() < 40) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(182);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(182)
	end
end;

function LuuTienDong()
	if (GetLevel() < 50) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(178);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(178)
	end
end;

function AcBaDiaDao()
	if (GetLevel() < 50) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(178);
	if(NewWorld(163,1558,3199) == 1) then
		SetFightState(1)
	end
end;

function TruongGiang()
	if (GetLevel() < 60) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(23);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(23)
	end
end;

function HanhSonPhai()
	if (GetLevel() < 60) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(49);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(49)
	end
end;

function LamDuQuan()
	if (GetLevel() < 70) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(196);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(196)
	end
end;

function LaoHoDong()
	if (GetLevel() < 70) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(219);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(219)
	end
end;

function SaMacDiaBieu()
	if (GetLevel() < 80) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(229);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(229)
	end
end;

function ChanNuiTruongBach()
	if (GetLevel() < 80) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(197);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(197)
	end
end;

function BoBacPLD()
	if (GetLevel() < 90) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(224);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(224)
	end
end;

function MacCaoQuat()
	if (GetLevel() < 90) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(225);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(225)
	end
end;

function TruongBachNam()
	if (GetLevel() < 90) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(198);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(198)
	end
end;

function TruongBachBac()
	if (GetLevel() < 90) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(200);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(200)
	end
end;

function KhoaLangDong()
	if (GetLevel() < 90) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(68);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(68)
	end
end;

function SaMac1()
	if (GetLevel() < 90) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(226);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(226)
	end
end;

function SaMac2()
	if (GetLevel() < 90) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(227);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(227)
	end
end;

function SaMac3()
	if (GetLevel() < 90) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(228);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(228)
	end
end;

function CanVienDong()
	if (GetLevel() < 90) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(220);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(220)
	end
end;

function TienCucDong()
	if (GetLevel() < 90) then Talk(1,"",15645) return end --phia truoc nguy hiem
	local w,x,y = GetWayPointPos(132);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(132)
	end
end;
--======================= BAN DO LUYEN CONG =======================--

function datau()
	local nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	local bAccept = GetNumber(nTaskValue, 1);--[1]
	local nKind = GetNumber2(nTaskValue, 4);
	if(bAccept == 0) then
		Talk(1,"",NO_PLACE);
	return end
	
	if(nKind ~= 6 and nKind ~= 7) then
		Talk(1,"",NO_PLACE);
	return end
	
	local nMap = GetNumber3(GetTask(TASK_DIADOCHI),1);
	for i=1,getn(GO_DIADOCHI) do
		if(GO_DIADOCHI[i][1] == nMap) then
			if(NewWorld(nMap, GO_DIADOCHI[i][2], GO_DIADOCHI[i][3])) then
				SetFightState(1)
			end
		return end
	end
	
end;

function thanhthidiqua_tat()
		Talk(1,"","H·y mì sö dông vËt phÈm ThÇn Hµnh Phï ®Ó ®i thµnh thÞ!!!")
end

function thanhthidiqua()
	local count = 0;
	local StationTab = {};
	
	local nMoveAR = GetTaskTemp(SEL_MOVEARRAY)
	if(nMoveAR == 0) then
	return end
	
	local price = -1;
	for i=1,getn(STATION_ARRAY) do
		price = GetPriceStation(nMoveAR, i);
		if(price > 0) then
		StationTab[count+1] = GetStationName(i) .. " [" .. price .. " l­îng]" .. "/SelStation";
		SetTaskTemp(SEL_MOVEBEGIN+count,i);
		count = count + 1;
		end
	end
	
	if(count == 0) then
	return end
	
	StationTab[count+1] = "Kh«ng ®i ®©u c¶ /out";
	Say("§¹i hiÖp muèn ®i ®©u:",count+1,StationTab)
end;

function noidiquaz()
		Talk(1,"","Qua ®ua top míi cã chøc n¨ng!")
end 

function noidiqua()
	p1 = GetWayPoint(1);
	p2 = GetWayPoint(2);
	p3 = GetWayPoint(3);
	WAYPOINT={};
	local i = 1;
	if (p1 ~= 0)  then
	name = GetWayPointName(p1);
	name = name .."/SelWayPoint";
	WAYPOINT[i]= name;
	i = i + 1;
	end;
	
	if (p2 ~= 0)  then
	name = GetWayPointName(p2);
	name = name .."/SelWayPoint";
	WAYPOINT[i]= name;
	i = i + 1;
	end;
	
	if (p3 ~= 0)  then
	name = GetWayPointName(p3);
	name = name .."/SelWayPoint";
	WAYPOINT[i]= name;
	i = i + 1;
	end;
	
	WAYPOINT[i] = "Kh«ng ®i ®©u c¶ /no";
	if (i == 1) then 
	Talk(1,"",10071);
	else
	Say("H·y lùa chän:", i, WAYPOINT);
	end;
end;

function SelWayPoint(nSel)
	local nWayPoint = GetWayPoint(nSel + 1);
	if (nWayPoint ~= 0) then
	local nW, nX, nY = GetWayPointPos(nWayPoint)
	nFightState = GetWayPointFight(nWayPoint)
	nResult = NewWorld(nW, nX, nY)
	if (nResult == 1) then
	SetFightState(nFightState)
	end
	end
end;

function SelStation(nSel)
	local nMoveAR = GetTaskTemp(SEL_MOVEARRAY);
	local nMoveSel = GetTaskTemp(SEL_MOVEBEGIN+nSel);
	local nPrice = GetPriceStation(nMoveAR, nMoveSel);
	local nMoney = GetCash();
	if(nMoney < nPrice) then
	Talk(1,"",10076);
	else
	local nW , nX, nY = GetStationPos(nMoveSel);
		if(NewWorld(nW, nX , nY ) == 1) then
			Pay(nPrice);
			Msg2Player("Ngåi yªn! Chóng ta ®i "..GetStationName(nMoveSel).."!");
		else --chua mo map
			PutMessage("§­êng ®i phÝa tr­íc kh«ng th«ng")
		end
	end
end;

function diadiemcu()
	BackOldPlace()
end;

function taytuydao()
	if(GetLevel() < 50) then
		Talk(1,"","§¼ng cÊp 50 trë lªn míi ®­îc ®Õn TÈy Tñy ®¶o!")
	return end
	local nValue = GetNumber(GetTask(TASK_DAOTAYTUY),4);
	if(nValue < 2) then
		Say(12243,2,
		"§­a ta ®Õn TÈy Tñy ®¶o miÔn/taymienphi",
		"Tho¸t/no")
	return end
	
	Say(12917,4,
	"TÈy ®iÓm kü n¨ng/taykynang",
	"TÈy ®iÓm tiÒm n¨ng/taytiemnang",
	"TÈy ®iÓm kü n¨ng lÉn tiÒm n¨ng/tayall",
	"Tho¸t/no")
	
end;

function taykynang()
	local nTT1 = GetItemCount(13,3)
	local nTT2 = GetItemCount(14,3)
	local nTT3 = GetItemCount(15,3)
	local nTotal = nTT1 + nTT2 + nTT3
	if(nTotal < 3) then
		Talk(1,"","CÇn 3 viªn Thñy Tinh. Ng­¬i kh«ng mang ®ñ råi!")
	return end
	local w,x,y = GetWorldPos()
	nTotal = 3;
	if(NewWorld(242,1613,3197) == 1) then
		for i=1,3 do
			if(nTotal > 0 and nTT1 > 0) then
			DelItem(13,3)
			nTotal = nTotal - 1
			nTT1 = nTT1 - 1
			end
		end
		for i=1,3 do
			if(nTotal > 0 and nTT2 > 0) then
			DelItem(14,3)
			nTotal = nTotal - 1
			nTT2 = nTT2 - 1
			end
		end
		for i=1,3 do
			if(nTotal > 0 and nTT3 > 0) then
			DelItem(15,3)
			nTotal = nTotal - 1
			nTT3 = nTT3 - 1
			end
		end
		local nValue = SetNumber(GetTask(TASK_DAOTAYTUY),7,1);
		nValue = SetNumber2(nValue,3,GetCurRevID());
		nValue = SetNumber3(nValue,1,w);
		SetTask(TASK_DAOTAYTUY, nValue);
		SetRevPos(1,242) --diem phuc sinh tren dao tay tuy
		Msg2Player("Ngåi yªn. Chóng ta ®i TÈy Tñy ®¶o!");
	end
end

function taytiemnang()
	if(GetItemCount(20,3) < 6) then
		Talk(1,"","CÇn 6 viªn Tinh Hång b¶o th¹ch. Ng­¬i kh«ng mang ®ñ råi!")
	return end
	local w,x,y = GetWorldPos()
	if(NewWorld(242,1613,3197) == 1) then
		DelItem(20,3,6)
		local nValue = SetNumber(GetTask(TASK_DAOTAYTUY),7,2);
		nValue = SetNumber2(nValue,3,GetCurRevID());
		nValue = SetNumber3(nValue,1,w);
		SetTask(TASK_DAOTAYTUY, nValue);
		SetRevPos(1,242) --diem phuc sinh tren dao tay tuy
		Msg2Player("Ngåi yªn. Chóng ta ®i TÈy Tñy ®¶o!");
	end
end

function tayall()
	local nTT1 = GetItemCount(13,3)
	local nTT2 = GetItemCount(14,3)
	local nTT3 = GetItemCount(15,3)
	local nTotal = nTT1 + nTT2 + nTT3
	local nTHBT = GetItemCount(20,3)
	if(nTotal < 3 or nTHBT < 6) then
		Talk(1,"","CÇn 3 Thñy tinh vµ 6 Tinh Hång b¶o th¹ch. Ng­¬i kh«ng mang ®ñ råi!")
	return end
	local w,x,y = GetWorldPos()
	nTotal = 3
	if(NewWorld(242,1613,3197) == 1) then
		DelItem(20,3,6)
		for i=1,3 do
			if(nTotal > 0 and nTT1 > 0) then
			DelItem(13,3)
			nTotal = nTotal - 1
			nTT1 = nTT1 - 1
			end
		end
		for i=1,3 do
			if(nTotal > 0 and nTT2 > 0) then
			DelItem(14,3)
			nTotal = nTotal - 1
			nTT2 = nTT2 - 1
			end
		end
		for i=1,3 do
			if(nTotal > 0 and nTT3 > 0) then
			DelItem(15,3)
			nTotal = nTotal - 1
			nTT3 = nTT3 - 1
			end
		end
		local nValue = SetNumber(GetTask(TASK_DAOTAYTUY),7,0);
		nValue = SetNumber2(nValue,3,GetCurRevID());
		nValue = SetNumber3(nValue,1,w);
		SetTask(TASK_DAOTAYTUY, nValue);
		SetRevPos(1,242) --diem phuc sinh tren dao tay tuy
		Msg2Player("Ngåi yªn. Chóng ta ®i TÈy Tñy ®¶o!");
	end
end

function taymienphi()
	local w,x,y = GetWorldPos()
	if(NewWorld(242,1613,3197) == 1) then
		local nTaskValue = GetTask(TASK_DAOTAYTUY);
		local nValue = SetNumber(GetTask(TASK_DAOTAYTUY),4,GetNumber(nTaskValue,4)+1);
		nValue = SetNumber(nValue,7,0);
		nValue = SetNumber2(nValue,3,GetCurRevID());
		nValue = SetNumber3(nValue,1,w);
		SetTask(TASK_DAOTAYTUY, nValue);
		SetRevPos(1,242) --diem phuc sinh tren dao tay tuy
		Msg2Player("Ngåi yªn. Chóng ta ®i TÈy Tñy ®¶o!");
	end
end

function out()
	-- Talk(1,"",10084)
end;

function no()

end;


function no()
end
--===========================================