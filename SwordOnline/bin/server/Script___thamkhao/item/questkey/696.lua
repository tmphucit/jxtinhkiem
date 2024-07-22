
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\npcchucnang\\xaphu.lua")

SELECT_GO = "ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn."
SELECT_REVIVE = "ThiÕt ®Æt ®iÓm håi sinh cho lÇn sau sö dông thæ ®Þa phï."
SELECT_OUT = "Rêi khái/no"
SUCCESS = "ThiÕt ®Æt ®iÓm håi sinh t¹i %s thµnh c«ng."
PLACE_TOGO = "H·y lùa chän n¬i cÇn ®Õn"


function main(idx)
	dofile("script\\item\\questkey\\696.lua")
w,x,y = GetWorldPos()

if ngay == 25 and thang == 12 and gio < 19 then
		Msg2Player("Sù kiÖn §ua Top M¸y Chñ Thiªn S¬n sÏ b¾t ®Çu vµo lóc 19h00 ngµy 25/12/2021. Thêi gian cßn l¹i: <color=red>"..(18-gio).." giê "..(59-phut).." phót "..(59-giay).." gi©y !")
		return
end




if GetTaskTemp(2) > 0 then
SetTaskTemp(2,0)
Msg2Player("Thêi gian ®Õm ng­îc nhÆt qu¶ kÕt thóc !")
end
if w >= 116 and w <= 134 then
Msg2Player("Kh«ng thÓ sö dông ThÇn Hµnh Phï trong L·nh §Þa Bang Héi !")
return
end
if w == 42 or w == 43 or w == 34 or w == 35 or w == 60 or w == 37 or w == 46 or w == 47 or w == 48 or w == 49 or w == 26 or w == 27 or w == 28 or w == 29 or w == 33 or w == 20 or w == 106 then
Msg2Player("B¹n kh«ng thÓ sö dông ThÇn Hµnh Phï ë ®©y")
return
end
if w == 5 or w == 59 or w == 24 or w == 77 or w == 226 or w == 179  then
Msg2Player("B¹n kh«ng thÓ sö dông ThÇn Hµnh Phï ë ®©y")
return
end

SayNew("<color=blue>ThÇn Hµnh Phï:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",6,
"B¶n §å Thµnh ThÞ /thanhthi",
"B¶n §å Th«n TrÊn  /thonlang",
"B¶n §å LuyÖn C«ng /LuyenCong",
"B¶n ®å Sù KiÖn /sukien",
"Tham gia Tèng Kim /thamgiatongkim",
"Tho¸t./no")
end

function sukien()
SayNew("B¹n Muèn Tíi Khu Vùc:",4,
"§µo Hoa Nguyªn /move_daonguyenthon",
"Hoa S¬n Ph¸i /movehoasonphai",
"Hoa S¬n C¶nh Kû Tr­êng /move_hoason",
"Tho¸t./no")
end

function move_daonguyenthon()
id = 55
x = 1621
y = 3223
state = 0-- 0 phi chien dau, 1 chiendau
tenmap = "§µo Hoa Nguyªn"
level = 10

MoveMap(id,x,y,state,tenmap,level)
end
function move_hoason()
id = 2
x = 325*8
y = 222*16
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Hoa S¬n C¶nh Kû Tr­êng"
level = 10

MoveMap(id,x,y,state,tenmap,level)
end

function sukien_()
SayNew("B¹n Muèn Tíi Khu Vùc:",6,
"Minh NguyÖt TrÊn /sukien1",
"Hoa S¬n C¶nh Kû Tr­êng /sukien1",
"Hoa S¬n Ph¸i /sukien1",
"§µo Hoa Nguyªn /sukien1",
"Kháa Lang §éng [CÊp 100]/sukien1",
"Tho¸t./no")
end

function move_khoalangdong()
SayNew("Vui lßng chän cæng vµo: ",5,
"Cæng 1 /move_khoalangdong_1",
"Cæng 2 /move_khoalangdong_1",
"Cæng 3 /move_khoalangdong_1",
"Cæng 4 /move_khoalangdong_1",
"Tho¸t./no")
end

function move_khoalangdong_1(nsel)
if GetLevel() < 100 then
Talk(1,"","§¼ng cÊp d­íi 100 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
i = nsel + 1
	if (GetCash() >= 50000) then
		Pay(50000)


		SetFightState(1);
		SetLogoutRV(1)
		SetRevPos(58,59)		
		SetPunish(0)
		if i == 1 then
		NewWorld(75, 1815, 3007);
		elseif i == 2 then
		NewWorld(75, 1871, 3071);
		
		elseif i == 3 then
		NewWorld(75, 1672, 3344);
		elseif i == 4 then
		NewWorld(75, 1602, 3265);
		
		end
		Msg2Player("Ngåi yªn! Chóng ta ®i Kháa Lang §éng ..........");
	else
		Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>5 v¹n luong<color>, kh«ng thÓ di chuyÓn")
	end
end;
function sukien1(nsel)
if nsel == 0 then
id = 58
x = 1599
y = 3267
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "Minh NguyÖt TrÊn"
elseif nsel == 1 then
id = 2
x = 325*8
y = 222*16
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Hoa S¬n C¶nh Kû Tr­êng"
elseif nsel == 2 then
movehoasonphai()
return
elseif nsel == 3 then
id = 55
x = 1621
y = 3223
state = 0-- 0 phi chien dau, 1 chiendau
tenmap = "§µo Hoa Nguyªn"
elseif nsel == 4 then
	move_khoalangdong()
	return
end



level = 10
MoveMap(id,x,y,state,tenmap,level)
end


function movehoasonphai()
SayNew("Vui lßng chän cæng" ,6,
"Cæng TriÒu D­¬ng Phong /movehoasonphai1",
"Cæng L¹c Nh¹n Phong /movehoasonphai1",
"Cæng Hoa S¬n /movehoasonphai1",
"Cæng Liªn Hoa Phong /movehoasonphai1",
"Cæng Ngäc N÷ Phong /movehoasonphai1",
"Cæng Tho¸t./no")
end

function movehoasonphai1(nsel)
if GetLevel() < 90  then
Talk(1,"","§¼ng cÊp 90 míi cã thÓ vµo b¶n ®å nµy")
return
end
if  GetCurCamp() == 0  then
Talk(1,"","B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ tham gia b¶n ®å sù kiÖn")
return
end

sx = nsel + 1
SetTask(117, 3*18)
SetFightState(0)
SetLogoutRV(1)

SetDeathScript("\\script\\admin\\playerdeath.lua");

if sx == 1 then
NewWorld(226, 1551,3198)
elseif sx == 2 then
NewWorld(226, 1452,3243)
elseif sx == 3 then
NewWorld(226, 1274,3249)
elseif sx == 4 then
NewWorld(226, 1289,3001)
elseif sx == 5 then
NewWorld(226, 1315,2880)
end
end



function thamgiatongkim()
SayNew("Chon: ",3,
"Vµo phe Tèng /thamgiatongkim1",
"Vµo phe Kim /thamgiatongkim1",
"Tho¸t./no")
end

function thamgiatongkim1(nsel)
i = nsel + 1
if i == 1 then

	SetTask(128,0) -- Xoa Tham gia TK

	SetPunish(0)
	SetFightState(0)
	SetDeathScript("");
	DelMagic(413)
	SetLogoutRV(0)
	SetCreateTeam(1);
	SetRevPos(1)
	Msg2Player("B¹n ®· vµo khu vùc b¸o danh phe Tèng !")
	BlockPKState(0)
	NewWorld(60,1528,3195)

else
	SetTask(128,0) -- Xoa Tham gia TK

	SetPunish(0)
	SetFightState(0)
	SetDeathScript("");
	DelMagic(413)
	SetLogoutRV(0)
	SetCreateTeam(1);
	SetRevPos(2)
	Msg2Player("B¹n ®· vµo khu vùc b¸o danh phe Kim !")
	BlockPKState(0)
	NewWorld(60,1593,3075)
end
end
function thanhthi()
SayNew(SELECT_GO, 4,
"T­¬ng D­¬ng /thanhthi1",
"Ph­îng T­êng/thanhthi2",
"§¹i Lý /thanhthi3",
"Tho¸t./no")
end
function thanhthi()
	if (GetLevel() < 10) then
        Msg2Player("B¹n ph¶i ®¹t cÊp 10 míi cã thÓ ®i ®Õn Thµnh ThÞ ");
	return end; 
	local count = 1;
	local CityTab = {};
	Say(SELECT_GO,7,
	"T­¬ng D­¬ng phñ/thanhthi1",
	"Ph­îng T­êng phñ /thanhthi2",
	"§¹i Lý phñ/thanhthi3",
	"Thµnh §« phñ/thanhthi4",
	"BiÖn Kinh phñ/thanhthi5",
	"D­¬ng Ch©u phñ/thanhthi6",
	--"L©m An phñ/laman"
	SELECT_OUT
	)
end




function thanhthi1()
SayNew("B¹n Muèn Tíi Khu Vùc:",6,
"Trung T©m /thanhthi1_1",
"H­íng §«ng /thanhthi1_1",
"H­íng T©y /thanhthi1_1",
"H­íng Nam /thanhthi1_1",
"H­íng B¾c /thanhthi1_1",
"Tho¸t./no")
end

function thanhthi2()
SayNew("B¹n Muèn Tíi Khu Vùc:",6,
"Trung T©m /thanhthi2_1",
"H­íng §«ng /thanhthi2_1",
"H­íng T©y /thanhthi2_1",
"H­íng Nam /thanhthi2_1",
"H­íng B¾c /thanhthi2_1",
"Tho¸t./no")
end

function thanhthi3()
SayNew("B¹n Muèn Tíi Khu Vùc:",5,
"Trung T©m /thanhthi3_1",
"H­íng §«ng /thanhthi3_1",
"H­íng Nam /thanhthi3_1",
"H­íng B¾c /thanhthi3_1",
"Tho¸t./no")
end

function thanhthi4()
	SayNew("B¹n Muèn Tíi Khu Vùc:",5,
	"Trung T©m /thanhthi4_1",
	"H­íng §«ng /thanhthi4_1",
	"H­íng Nam /thanhthi4_1",
	"H­íng B¾c /thanhthi4_1",
	"Tho¸t./no")
	end

	function thanhthi5()
		SayNew("B¹n Muèn Tíi Khu Vùc:",5,
		"Trung T©m /thanhthi5_1",
		"H­íng §«ng /thanhthi5_1",
		"H­íng Nam /thanhthi5_1",
		"H­íng B¾c /thanhthi5_1",
		"Tho¸t./no")
		end

		function thanhthi6()
			SayNew("B¹n Muèn Tíi Khu Vùc:",5,
			"Trung T©m /thanhthi6_1",
			"H­íng §«ng /thanhthi6_1",
			"H­íng Nam /thanhthi6_1",
			"H­íng B¾c /thanhthi6_1",
			"Tho¸t./no")
			end

function thanhthi1_1(nsel) --tuongduong
i = nsel + 1
if i == 1 then -- trungtam
id = 15
x = 1559
y = 3247
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "Trung T©m T­¬ng D­¬ng"

elseif i == 2 then --dong
id = 15
x = 1585
y = 3374
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H­íng §«ng T­¬ng D­¬ng"

elseif i == 3 then --tay
id = 15
x = 1508
y = 3146
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H­íng T©y T­¬ng D­¬ng"

elseif i == 4 then --Nam
id = 15
x = 1439
y = 3223
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H­íng Nam T­¬ng D­¬ng"

elseif i == 5 then --Bac
id = 15
x = 1696
y = 3236
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H­íng B¾c T­¬ng D­¬ng"

end
level = 10
MoveMap(id,x,y,state,tenmap,level)
end


function thanhthi2_1(nsel) --phuongtuong
i = nsel + 1
if i == 1 then -- trungtam
id = 17
x = 1595
y = 3201
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "Trung T©m Ph­îng T­êng"

elseif i == 2 then --dong
id = 17
x = 1635
y = 3270
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H­íng §«ng Ph­îng T­êng"

elseif i == 3 then --tay
id = 17
x = 1568
y = 3126
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H­íng T©y Ph­îng T­êng"

elseif i == 4 then --Nam
id = 17
x = 1543
y = 3228
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H­íng Nam Ph­îng T­êng"

elseif i == 5 then --Bac
id = 17
x = 1660
y = 3159
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H­íng B¾c Ph­îng T­êng"

end
level = 10
MoveMap(id,x,y,state,tenmap,level)
end


function thanhthi3_1(nsel) --daily
i = nsel + 1
if i == 1 then -- trungtam
id = 11
x = 1585
y = 3143
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "Trung T©m §¹i Lý"

elseif i == 2 then --dong
id = 11
x = 1687
y = 3274
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H­íng §«ng §¹i Lý"

elseif i == 3 then --Nam
id = 11
x = 1474
y = 3273
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H­íng Nam §¹i Lý"

elseif i == 4 then --Bac
id = 11
x = 1669
y = 3132
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H­íng B¾c §¹i Lý"

end
level = 10
MoveMap(id,x,y,state,tenmap,level)
end

function thanhthi4_1(nsel) --thanh do
	i = nsel + 1
	if i == 1 then -- trungtam
	id = 18
	x = 3148
	y = 5078
	state = 0 -- 0 phi chien dau, 1 chiendau
	tenmap = "Trung T©m Thµnh ®«"
	
	elseif i == 2 then --dong
	id = 18
	x = 3180
	y = 5179
	state = 0 -- 0 phi chien dau, 1 chiendau
	tenmap = "H­íng §«ng Thµnh ®«"
	
	elseif i == 3 then --Nam
	id = 18
	x = 3005
	y = 5106
	state = 0 -- 0 phi chien dau, 1 chiendau
	tenmap = "H­íng Nam Thµnh ®«"
	
	elseif i == 4 then --Bac
	id = 18
	x = 3240
	y = 5027
	state = 0 -- 0 phi chien dau, 1 chiendau
	tenmap = "H­íng B¾c Thµnh ®«"

	elseif i == 4 then --tay
	id = 18
	x = 3048
	y = 4983
	state = 0 -- 0 phi chien dau, 1 chiendau
	tenmap = "H­íng T©y Thµnh ®«"
	
	end
	level = 10
	MoveMap(id,x,y,state,tenmap,level)
	end

	function thanhthi5_1(nsel) --bien kinh
		i = nsel + 1
		if i == 1 then -- trungtam
		id = 9
		x = 1722
		y = 3084
		state = 0 -- 0 phi chien dau, 1 chiendau
		tenmap = "Trung T©m BiÖn Kinh"
		
		elseif i == 2 then --dong
		id = 9
		x = 1695
		y = 3210
		state = 0 -- 0 phi chien dau, 1 chiendau
		tenmap = "H­íng §«ng BiÖn Kinh"
		
		--elseif i == 3 then --Nam
		--id = 9
		--x = 3005
		--y = 5106
		--state = 0 -- 0 phi chien dau, 1 chiendau
		--tenmap = "H­íng Nam BiÖn Kinh"
		
		elseif i == 3 then --Bac
		id = 9
		x = 1853
		y = 2959
		state = 0 -- 0 phi chien dau, 1 chiendau
		tenmap = "H­íng B¾c BiÖn Kinh"
	
		elseif i == 4 then --tay
		id = 9
		x = 1610
		y = 3015
		state = 0 -- 0 phi chien dau, 1 chiendau
		tenmap = "H­íng T©y BiÖn Kinh"
		
		end
		level = 10
		MoveMap(id,x,y,state,tenmap,level)
		end

		function thanhthi6_1(nsel) --duongchau
			i = nsel + 1
			if i == 1 then -- trungtam
			id = 16
			x = 1762
			y = 3020
			state = 0 -- 0 phi chien dau, 1 chiendau
			tenmap = "Trung T©m D­¬ng Ch©u"
			
			elseif i == 2 then --dong
			id = 16
			x = 1712
			y = 3230
			state = 0 -- 0 phi chien dau, 1 chiendau
			tenmap = "H­íng §«ng D­¬ng Ch©u"
			
			elseif i == 3 then --Nam
			id = 16
			x = 1619
			y = 3178
			state = 0 -- 0 phi chien dau, 1 chiendau
			tenmap = "H­íng Nam D­¬ng Ch©u"
			
			elseif i == 4 then --Bac
			id = 16
			x = 1862
			y = 3033
			state = 0 -- 0 phi chien dau, 1 chiendau
			tenmap = "H­íng B¾c D­¬ng Ch©u"
		
			elseif i == 4 then --tay
			id = 16
			x = 1661
			y = 2987
			state = 0 -- 0 phi chien dau, 1 chiendau
			tenmap = "H­íng T©y D­¬ng Ch©u"
			
			end
			level = 10
			MoveMap(id,x,y,state,tenmap,level)
			end


function thonlang()
SayNew("B¹n Muèn §Õn:" , 4,
"Ba L¨ng HuyÖn /thon1",
"Th¹ch Cæ TrÊn /thon1",
"Long M«n TrÊn /thon1",
"Tho¸t./no")
end

function thon1(nsel) --thontran
i = nsel + 1
if i == 1 then -- Ba Lang Huyen
id = 53
x = 1622
y = 3190
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "Ba L¨ng HuyÖn"

elseif i == 2 then --dong
id = 160
x = 1641
y = 3190
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "Th¹ch Cæ TrÊn"

elseif i == 3 then --tay
id = 161
x = 1957
y = 4500
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "Long M«n TrÊn"

end
level = 0
MoveMap(id,x,y,state,tenmap,level)
end

--====== ban do luyen cong ================
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

--============end================



--function luyencong()
--SayNew("Chon di chuyen",10,
--"B¶n §å LuyÖn C«ng CÊp 10 /dichuyen",
--"B¶n §å LuyÖn C«ng CÊp 20 /dichuyen",
--"B¶n §å LuyÖn C«ng CÊp 30 /dichuyen",
--"B¶n §å LuyÖn C«ng CÊp 40 /dichuyen",
--"B¶n §å LuyÖn C«ng CÊp 50 /dichuyen",
--"B¶n §å LuyÖn C«ng CÊp 60 /dichuyen",
--"B¶n §å LuyÖn C«ng CÊp 70 /dichuyen",
--"B¶n §å LuyÖn C«ng CÊp 80 /dichuyen", 	
--"B¶n §å LuyÖn C«ng CÊp 90 /dichuyen",
--"Tho¸t /no")
--end

function dichuyen(nsel)
i = nsel + 1
if i == 1 then
SayNew("Chon map:" ,5,
"Nh¹n §½ng S¬n /dichuyen_1x",
"§¹t Ma §­êng /dichuyen_1x",
"D­îc V­¬ng Cèc /dichuyen_1x",
"Quay L¹i /luyencong",
"Thoat/no")

elseif i == 2 then
SayNew("Chon map:" ,5,
"KiÕm C¸c Trung Nguyªn /dichuyen_2x",
"TÇn L¨ng /dichuyen_2x",
"KiÕm C¸c T©y Nam /dichuyen_2x",
"Quay L¹i /luyencong",
"Thoat/no")

elseif i == 3 then
SayNew("Chon map:" ,5,
"Thôc C­¬ng S¬n /dichuyen_3x",
"D­îc V­¬ng §éng TÇng 1 /dichuyen_3x",
"L¨ng TÇn Thñy Hoµng /dichuyen_3x",
"Quay L¹i /luyencong",
"Thoat/no")

elseif i == 4 then
SayNew("Chon map:" ,5,
"Phôc Ng­u S¬n T©y /dichuyen_4x",
"Phôc Ng­u S¬n §«ng /dichuyen_4x",
"§iÓm Th­¬ng S¬n /dichuyen_4x",
"Quay L¹i /luyencong",
"Thoat/no")

elseif i == 5 then
SayNew("Chon map:" ,7,
"§iÓm Th­¬ng §éng TÇng 1 /dichuyen_5x",
"Mª Cung Kª Qu¸n §éng /dichuyen_5x",
"MËt ThÊt ThiÕu L©m /dichuyen_5x",
"ThiÕt Th¸p Mª Cung TÇng 1/dichuyen_5x",
"Kim Quang §éng/dichuyen_5x",
"Quay L¹i /luyencong",
"Thoat/no")

elseif i == 6 then
SayNew("Chon map:" ,7,
"Hoµnh S¬n Ph¸i /dichuyen_6x",
"Thiªn T©m §éng /dichuyen_6x",
"Linh Cèc §éng /dichuyen_6x",
"ThiÕt Th¸p Mª Cung TÇng 2/dichuyen_6x",
"Kinh Hoµng §éng /dichuyen_6x",
"Quay L¹i /luyencong",
"Thoat/no")

elseif i == 7 then

SayNew("Chon map:" ,6,
"D­îc V­¬ng §éng TÇng 2 /dichuyen_7x",
"§¹i Tï §éng /dichuyen_7x",
"L©m Du Quan /dichuyen_7x",
"Táa V©n §éng /dichuyen_7x",
"Quay L¹i /luyencong",
"Thoat/no")

elseif i == 8 then
SayNew("Chon map:" ,8,
"TÇn L¨ng TÇng 3 /dichuyen_8x",
"L­ìng Thñy §éng /dichuyen_8x",
"Nh¹n Th¹ch §éng /dichuyen_8x",
"Ch©n Nói Tr­êng B¹ch /dichuyen_8x",
"Sa M¹c §Þa BiÓu /dichuyen_8x",
"D­¬ng Trung §éng /dichuyen_8x",
"Quay L¹i /luyencong",
"Thoat/no")

elseif i == 9 then

SayNew("Chon map:" ,9,
"D­îc V­¬ng §éng tÇng 4 /dichuyen_9x",
"M¹n B¾c Th¶o Nguyªn /dichuyen_9x",
"Tr­êng B¹ch S¬n B¾c /dichuyen_9x",
"TiÕn Cóc §éng /dichuyen_9x",
"C¸n Viªn §éng /dichuyen_9x",
"Sa M¹c 2 /dichuyen_9x",
"Sa M¹c 3 /dichuyen_9x",
"Quay L¹i /luyencong",
"Thoat/no")

end
end

function dichuyen_1x(nsel)
i = nsel + 1
if i == 1 then
id = 163
x = 675
y = 2855
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Nh¹n §½ng S¬n"
elseif i == 2 then
id = 170
x = 1578
y = 3420
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "§¹t Ma §­êng"
elseif i == 3 then 
id = 157
x = 2424
y = 3732
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "D­îc V­¬ng Cèc"

end
level = 10
MoveMap(id,x,y,state,tenmap,level)
end

function dichuyen_2x(nsel)
i = nsel + 1
if i == 1 then
id = 166
x = 1692
y = 3207
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "KiÕm C¸c Trung Nguyªn"

elseif i == 2 then
id = 158
x = 2225
y = 2847
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "TÇn L¨ng"

elseif i == 3 then 
id = 162
x =  3101
y = 3965
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "KiÕm C¸c T©y Nam"

end
level = 20
MoveMap(id,x,y,state,tenmap,level)
end

function dichuyen_3x(nsel)
i = nsel + 1
if i == 1 then
id = 167
x = 1641
y = 3310
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Thôc C­¬ng S¬n"

elseif i == 2 then
id = 164
x = 1610
y = 3377
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "D­îc V­¬ng §éng TÇng 1"

elseif i == 3 then 
id = 159
x = 1607
y = 3494
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "L¨ng TÇn Thñy Hoµng"

end
level = 30
MoveMap(id,x,y,state,tenmap,level)
end

function dichuyen_4x(nsel)
i = nsel + 1
if i == 1 then
id = 41
x = 2076
y = 2809
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Phôc Ng­u S¬n T©y"

elseif i == 2 then
id = 8
x = 1643
y = 3547
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Phôc Ng­u S¬n §«ng"

elseif i == 3 then 
id = 168
x = 1608
y = 3207
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "§iÓm Th­¬ng S¬n"

end
level = 40
MoveMap(id,x,y,state,tenmap,level)
end

function dichuyen_5x(nsel)
i = nsel + 1
if i == 1 then
id = 165
x = 1686
y = 3091
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "§iÓm Th­¬ng §éng TÇng 1"

elseif i == 2 then
id = 91
x = 1592
y = 3209
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Mª Cung Kª Qu¸n §éng"

elseif i == 3 then 
id = 169
x = 1668
y = 3366
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "MËt ThÊt ThiÕu L©m"

elseif i == 4 then 
id = 38
x = 1602
y = 3206
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "ThiÕt Th¸p Mª Cung TÇng 1"

elseif i == 5 then 
id = 14
x = 1596
y = 3282
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Kim Quang §éng"

end

if id == -1 then
Talk(1,"","B¶n ®å ch­a më, quay l¹i sau !")
return
end
level = 50
MoveMap(id,x,y,state,tenmap,level)
end

function dichuyen_6x(nsel)
i = nsel + 1
if i == 1 then
id = 171
x = 1487
y = 3548
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Hoµnh S¬n Ph¸i"

elseif i == 2 then
id = 50
x = 1586
y = 3214
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Thiªn T©m §éng"

elseif i == 3 then 
id = 172
x = 1634
y = 3265
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Linh Cèc §éng"

elseif i == 4 then 
id = 39
x = 1682
y = 3128
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "ThiÕt Th¸p Mª Cung TÇng 2"

elseif i == 5 then 
id = 62
x = 1822
y = 3473
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Kinh Hoµng §éng"

end
if id == -1 then
Talk(1,"","B¶n ®å ch­a më, quay l¹i sau !")
return
end
level = 60
MoveMap(id,x,y,state,tenmap,level)
end

function dichuyen_7x(nsel)
i = nsel + 1
if i == 1 then
id = 174
x = 1482
y = 3270
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "D­îc V­¬ng §éng TÇng 2"
level = 70

elseif i == 2 then
id = 173
x = 1703
y = 2860
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "§¹i Tï §éng"
level = 70

elseif i == 3 then 
id = 102
x = 1611
y = 3608
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "L©m Du Quan"

elseif i == 4 then 
id = 63
x = 1656
y = 3316
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Táa V©n §éng"

end
if id == -1 then
Talk(1,"","B¶n ®å ch­a më, quay l¹i sau !")
return
end

level = 70
MoveMap(id,x,y,state,tenmap,level)
end

function dichuyen_8x(nsel)
i = nsel + 1
if i == 1 then
id = 176
x = 1600
y = 3200
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "TÇn L¨ng TÇng 3"

elseif i == 2 then
id = 175
x = 1580
y = 3208
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "L­ìng Thñy §éng"

elseif i == 3 then 
id = 180
x = 1599
y = 3203
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Nh¹n Th¹ch §éng"

elseif i == 4 then 
id = 104
x = 1144
y = 3116
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Ch©n Nói Tr­êng B¹ch"

elseif i == 5 then 
id = 107
x = 1616
y = 3218
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Sa M¹c §Þa BiÓu"

elseif i == 6 then 
id = 64
x = 1698
y = 3405
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "D­¬ng Trung §éng"




end
level = 80
MoveMap(id,x,y,state,tenmap,level)
end

function dichuyen_9x(nsel)
i = nsel + 1
if i == 1 then
id = 178
x = 1587
y = 3100
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "D­îc V­¬ng §éng tÇng 4"

elseif i == 2 then
id = 21
x = 1245
y = 3168
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "M¹n B¾c Th¶o Nguyªn"

elseif i == 3 then 
id = 177
x = 1572
y = 3134
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Tr­êng B¹ch S¬n B¾c"

elseif i == 4 then 
id = 93
x = 1524
y = 3174
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "TiÕn Cóc §éng"

elseif i == 5 then 
id = 94
x = 1674
y = 3419
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "C¸n Viªn §éng"

elseif i == 6 then 
id = 110
x = 1818
y = 3414
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Sa M¹c S¬n §éng 2"

elseif i == 7 then 
id = 111
x = 1592
y = 3240
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Sa M¹c S¬n §éng 3"

end
level = 90
MoveMap(id,x,y,state,tenmap,level)
end


function MoveMap(id,x,y,state,tenmap,level)
if GetLevel() < level and GetAccount() ~= "gamemaster01"  and GetAccount() ~= "gamemaster02" and GetAccount() ~= "gamemaster03"  and GetAccount() ~= "admin1"  and GetAccount() ~= "admin2" then
Talk(1,"","§¼ng cÊp yªu cÇu ®Ó lªn b¶n ®å "..tenmap.." lµ: CÊp "..level.."")
return
end

NewWorld(id,x,y)
SetFightState(state)
Msg2Player("Ngåi yªn, chóng ta ®ang ®Õn "..tenmap.."")
end


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




function no()
end