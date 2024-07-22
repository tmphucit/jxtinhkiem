
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\npcchucnang\\xaphu.lua")

SELECT_GO = "Th�n h�nh ph�, �i ��n n�i ng��i mu�n."
SELECT_REVIVE = "Thi�t ��t �i�m h�i sinh cho l�n sau s� d�ng th� ��a ph�."
SELECT_OUT = "R�i kh�i/no"
SUCCESS = "Thi�t ��t �i�m h�i sinh t�i %s th�nh c�ng."
PLACE_TOGO = "H�y l�a ch�n n�i c�n ��n"


function main(idx)
	dofile("script\\item\\questkey\\696.lua")
w,x,y = GetWorldPos()

if ngay == 25 and thang == 12 and gio < 19 then
		Msg2Player("S� ki�n �ua Top M�y Ch� Thi�n S�n s� b�t ��u v�o l�c 19h00 ng�y 25/12/2021. Th�i gian c�n l�i: <color=red>"..(18-gio).." gi� "..(59-phut).." ph�t "..(59-giay).." gi�y !")
		return
end




if GetTaskTemp(2) > 0 then
SetTaskTemp(2,0)
Msg2Player("Th�i gian ��m ng��c nh�t qu� k�t th�c !")
end
if w >= 116 and w <= 134 then
Msg2Player("Kh�ng th� s� d�ng Th�n H�nh Ph� trong L�nh ��a Bang H�i !")
return
end
if w == 42 or w == 43 or w == 34 or w == 35 or w == 60 or w == 37 or w == 46 or w == 47 or w == 48 or w == 49 or w == 26 or w == 27 or w == 28 or w == 29 or w == 33 or w == 20 or w == 106 then
Msg2Player("B�n kh�ng th� s� d�ng Th�n H�nh Ph� � ��y")
return
end
if w == 5 or w == 59 or w == 24 or w == 77 or w == 226 or w == 179  then
Msg2Player("B�n kh�ng th� s� d�ng Th�n H�nh Ph� � ��y")
return
end

SayNew("<color=blue>Th�n H�nh Ph�:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",6,
"B�n �� Th�nh Th� /thanhthi",
"B�n �� Th�n Tr�n  /thonlang",
"B�n �� Luy�n C�ng /LuyenCong",
"B�n �� S� Ki�n /sukien",
"Tham gia T�ng Kim /thamgiatongkim",
"Tho�t./no")
end

function sukien()
SayNew("B�n Mu�n T�i Khu V�c:",4,
"��o Hoa Nguy�n /move_daonguyenthon",
"Hoa S�n Ph�i /movehoasonphai",
"Hoa S�n C�nh K� Tr��ng /move_hoason",
"Tho�t./no")
end

function move_daonguyenthon()
id = 55
x = 1621
y = 3223
state = 0-- 0 phi chien dau, 1 chiendau
tenmap = "��o Hoa Nguy�n"
level = 10

MoveMap(id,x,y,state,tenmap,level)
end
function move_hoason()
id = 2
x = 325*8
y = 222*16
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Hoa S�n C�nh K� Tr��ng"
level = 10

MoveMap(id,x,y,state,tenmap,level)
end

function sukien_()
SayNew("B�n Mu�n T�i Khu V�c:",6,
"Minh Nguy�t Tr�n /sukien1",
"Hoa S�n C�nh K� Tr��ng /sukien1",
"Hoa S�n Ph�i /sukien1",
"��o Hoa Nguy�n /sukien1",
"Kh�a Lang ��ng [C�p 100]/sukien1",
"Tho�t./no")
end

function move_khoalangdong()
SayNew("Vui l�ng ch�n c�ng v�o: ",5,
"C�ng 1 /move_khoalangdong_1",
"C�ng 2 /move_khoalangdong_1",
"C�ng 3 /move_khoalangdong_1",
"C�ng 4 /move_khoalangdong_1",
"Tho�t./no")
end

function move_khoalangdong_1(nsel)
if GetLevel() < 100 then
Talk(1,"","��ng c�p d��i 100 kh�ng th� v�o b�n �� n�y !")
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
		Msg2Player("Ng�i y�n! Ch�ng ta �i Kh�a Lang ��ng ..........");
	else
		Talk(1,"no","C�c h� kh�ng mang �� <color=red>5 v�n luong<color>, kh�ng th� di chuy�n")
	end
end;
function sukien1(nsel)
if nsel == 0 then
id = 58
x = 1599
y = 3267
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "Minh Nguy�t Tr�n"
elseif nsel == 1 then
id = 2
x = 325*8
y = 222*16
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Hoa S�n C�nh K� Tr��ng"
elseif nsel == 2 then
movehoasonphai()
return
elseif nsel == 3 then
id = 55
x = 1621
y = 3223
state = 0-- 0 phi chien dau, 1 chiendau
tenmap = "��o Hoa Nguy�n"
elseif nsel == 4 then
	move_khoalangdong()
	return
end



level = 10
MoveMap(id,x,y,state,tenmap,level)
end


function movehoasonphai()
SayNew("Vui l�ng ch�n c�ng" ,6,
"C�ng Tri�u D��ng Phong /movehoasonphai1",
"C�ng L�c Nh�n Phong /movehoasonphai1",
"C�ng Hoa S�n /movehoasonphai1",
"C�ng Li�n Hoa Phong /movehoasonphai1",
"C�ng Ng�c N� Phong /movehoasonphai1",
"C�ng Tho�t./no")
end

function movehoasonphai1(nsel)
if GetLevel() < 90  then
Talk(1,"","��ng c�p 90 m�i c� th� v�o b�n �� n�y")
return
end
if  GetCurCamp() == 0  then
Talk(1,"","B�n ch�a gia nh�p m�n ph�i, kh�ng th� tham gia b�n �� s� ki�n")
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
"V�o phe T�ng /thamgiatongkim1",
"V�o phe Kim /thamgiatongkim1",
"Tho�t./no")
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
	Msg2Player("B�n �� v�o khu v�c b�o danh phe T�ng !")
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
	Msg2Player("B�n �� v�o khu v�c b�o danh phe Kim !")
	BlockPKState(0)
	NewWorld(60,1593,3075)
end
end
function thanhthi()
SayNew(SELECT_GO, 4,
"T��ng D��ng /thanhthi1",
"Ph��ng T��ng/thanhthi2",
"��i L� /thanhthi3",
"Tho�t./no")
end
function thanhthi()
	if (GetLevel() < 10) then
        Msg2Player("B�n ph�i ��t c�p 10 m�i c� th� �i ��n Th�nh Th� ");
	return end; 
	local count = 1;
	local CityTab = {};
	Say(SELECT_GO,7,
	"T��ng D��ng ph�/thanhthi1",
	"Ph��ng T��ng ph� /thanhthi2",
	"��i L� ph�/thanhthi3",
	"Th�nh �� ph�/thanhthi4",
	"Bi�n Kinh ph�/thanhthi5",
	"D��ng Ch�u ph�/thanhthi6",
	--"L�m An ph�/laman"
	SELECT_OUT
	)
end




function thanhthi1()
SayNew("B�n Mu�n T�i Khu V�c:",6,
"Trung T�m /thanhthi1_1",
"H��ng ��ng /thanhthi1_1",
"H��ng T�y /thanhthi1_1",
"H��ng Nam /thanhthi1_1",
"H��ng B�c /thanhthi1_1",
"Tho�t./no")
end

function thanhthi2()
SayNew("B�n Mu�n T�i Khu V�c:",6,
"Trung T�m /thanhthi2_1",
"H��ng ��ng /thanhthi2_1",
"H��ng T�y /thanhthi2_1",
"H��ng Nam /thanhthi2_1",
"H��ng B�c /thanhthi2_1",
"Tho�t./no")
end

function thanhthi3()
SayNew("B�n Mu�n T�i Khu V�c:",5,
"Trung T�m /thanhthi3_1",
"H��ng ��ng /thanhthi3_1",
"H��ng Nam /thanhthi3_1",
"H��ng B�c /thanhthi3_1",
"Tho�t./no")
end

function thanhthi4()
	SayNew("B�n Mu�n T�i Khu V�c:",5,
	"Trung T�m /thanhthi4_1",
	"H��ng ��ng /thanhthi4_1",
	"H��ng Nam /thanhthi4_1",
	"H��ng B�c /thanhthi4_1",
	"Tho�t./no")
	end

	function thanhthi5()
		SayNew("B�n Mu�n T�i Khu V�c:",5,
		"Trung T�m /thanhthi5_1",
		"H��ng ��ng /thanhthi5_1",
		"H��ng Nam /thanhthi5_1",
		"H��ng B�c /thanhthi5_1",
		"Tho�t./no")
		end

		function thanhthi6()
			SayNew("B�n Mu�n T�i Khu V�c:",5,
			"Trung T�m /thanhthi6_1",
			"H��ng ��ng /thanhthi6_1",
			"H��ng Nam /thanhthi6_1",
			"H��ng B�c /thanhthi6_1",
			"Tho�t./no")
			end

function thanhthi1_1(nsel) --tuongduong
i = nsel + 1
if i == 1 then -- trungtam
id = 15
x = 1559
y = 3247
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "Trung T�m T��ng D��ng"

elseif i == 2 then --dong
id = 15
x = 1585
y = 3374
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H��ng ��ng T��ng D��ng"

elseif i == 3 then --tay
id = 15
x = 1508
y = 3146
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H��ng T�y T��ng D��ng"

elseif i == 4 then --Nam
id = 15
x = 1439
y = 3223
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H��ng Nam T��ng D��ng"

elseif i == 5 then --Bac
id = 15
x = 1696
y = 3236
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H��ng B�c T��ng D��ng"

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
tenmap = "Trung T�m Ph��ng T��ng"

elseif i == 2 then --dong
id = 17
x = 1635
y = 3270
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H��ng ��ng Ph��ng T��ng"

elseif i == 3 then --tay
id = 17
x = 1568
y = 3126
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H��ng T�y Ph��ng T��ng"

elseif i == 4 then --Nam
id = 17
x = 1543
y = 3228
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H��ng Nam Ph��ng T��ng"

elseif i == 5 then --Bac
id = 17
x = 1660
y = 3159
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H��ng B�c Ph��ng T��ng"

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
tenmap = "Trung T�m ��i L�"

elseif i == 2 then --dong
id = 11
x = 1687
y = 3274
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H��ng ��ng ��i L�"

elseif i == 3 then --Nam
id = 11
x = 1474
y = 3273
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H��ng Nam ��i L�"

elseif i == 4 then --Bac
id = 11
x = 1669
y = 3132
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "H��ng B�c ��i L�"

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
	tenmap = "Trung T�m Th�nh ��"
	
	elseif i == 2 then --dong
	id = 18
	x = 3180
	y = 5179
	state = 0 -- 0 phi chien dau, 1 chiendau
	tenmap = "H��ng ��ng Th�nh ��"
	
	elseif i == 3 then --Nam
	id = 18
	x = 3005
	y = 5106
	state = 0 -- 0 phi chien dau, 1 chiendau
	tenmap = "H��ng Nam Th�nh ��"
	
	elseif i == 4 then --Bac
	id = 18
	x = 3240
	y = 5027
	state = 0 -- 0 phi chien dau, 1 chiendau
	tenmap = "H��ng B�c Th�nh ��"

	elseif i == 4 then --tay
	id = 18
	x = 3048
	y = 4983
	state = 0 -- 0 phi chien dau, 1 chiendau
	tenmap = "H��ng T�y Th�nh ��"
	
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
		tenmap = "Trung T�m Bi�n Kinh"
		
		elseif i == 2 then --dong
		id = 9
		x = 1695
		y = 3210
		state = 0 -- 0 phi chien dau, 1 chiendau
		tenmap = "H��ng ��ng Bi�n Kinh"
		
		--elseif i == 3 then --Nam
		--id = 9
		--x = 3005
		--y = 5106
		--state = 0 -- 0 phi chien dau, 1 chiendau
		--tenmap = "H��ng Nam Bi�n Kinh"
		
		elseif i == 3 then --Bac
		id = 9
		x = 1853
		y = 2959
		state = 0 -- 0 phi chien dau, 1 chiendau
		tenmap = "H��ng B�c Bi�n Kinh"
	
		elseif i == 4 then --tay
		id = 9
		x = 1610
		y = 3015
		state = 0 -- 0 phi chien dau, 1 chiendau
		tenmap = "H��ng T�y Bi�n Kinh"
		
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
			tenmap = "Trung T�m D��ng Ch�u"
			
			elseif i == 2 then --dong
			id = 16
			x = 1712
			y = 3230
			state = 0 -- 0 phi chien dau, 1 chiendau
			tenmap = "H��ng ��ng D��ng Ch�u"
			
			elseif i == 3 then --Nam
			id = 16
			x = 1619
			y = 3178
			state = 0 -- 0 phi chien dau, 1 chiendau
			tenmap = "H��ng Nam D��ng Ch�u"
			
			elseif i == 4 then --Bac
			id = 16
			x = 1862
			y = 3033
			state = 0 -- 0 phi chien dau, 1 chiendau
			tenmap = "H��ng B�c D��ng Ch�u"
		
			elseif i == 4 then --tay
			id = 16
			x = 1661
			y = 2987
			state = 0 -- 0 phi chien dau, 1 chiendau
			tenmap = "H��ng T�y D��ng Ch�u"
			
			end
			level = 10
			MoveMap(id,x,y,state,tenmap,level)
			end


function thonlang()
SayNew("B�n Mu�n ��n:" , 4,
"Ba L�ng Huy�n /thon1",
"Th�ch C� Tr�n /thon1",
"Long M�n Tr�n /thon1",
"Tho�t./no")
end

function thon1(nsel) --thontran
i = nsel + 1
if i == 1 then -- Ba Lang Huyen
id = 53
x = 1622
y = 3190
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "Ba L�ng Huy�n"

elseif i == 2 then --dong
id = 160
x = 1641
y = 3190
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "Th�ch C� Tr�n"

elseif i == 3 then --tay
id = 161
x = 1957
y = 4500
state = 0 -- 0 phi chien dau, 1 chiendau
tenmap = "Long M�n Tr�n"

end
level = 0
MoveMap(id,x,y,state,tenmap,level)
end

--====== ban do luyen cong ================
function LuyenCong()
	Say(10072,9,
	"Hoa S�n Tuy�t ��nh [10]/HoaSon",
	"B�n �� luy�n c�ng [10]/LuyenCong10",
	"Ki�m C�c T�y B�c [20]/KiemCacTayBac",
	"V� L�ng S�n [20]/VuLangSon",
	"Th�c C��ng s�n [30]/ThucCuongSon",
	"Ph�c Ng�u s�n  nam [30]/PhucNguuSon",
	"Ph�c Ng�u s�n  b�c [40]/PhucNguuSonBac",
	"Trang ti�p theo/LuyenCong1",
	"Tho�t/no")
end;

function LuyenCong1()
	Say(10072,10,
	"Ho�ng H� Nguy�n ��u [40]/HoangHaNguyenDau",
	"L�u Ti�n ��ng [50]/LuuTienDong",
	"�c B� ��a ��o [50]/AcBaDiaDao",
	"Tr��ng Giang Nguy�n ��u [60]/TruongGiang",
	"Ho�nh s�n [60]/HanhSonPhai",
	"L�m Du Quan [70]/LamDuQuan",
	"L�o H� ��ng [70]/LaoHoDong",
	"Sa M�c ��a Bi�u [80]/SaMacDiaBieu",
	"Ch�n n�i Tr��ng B�ch [80]/ChanNuiTruongBach",
	"Trang ti�p theo/LuyenCong2",
	"Tho�t/no")
end;

function LuyenCong2()
	Say(10072,11,
	"Phong L�ng �� [90]/BoBacPLD",
	"M�c Cao Qu�t [90]/MacCaoQuat",
	"Tr��ng B�ch s�n Nam [90]/TruongBachNam",
	"Tr��ng B�ch s�n B�c [90]/TruongBachBac",
	"Kho� Lang ��ng [90]/KhoaLangDong",
	"Sa M�c 1 [90]/SaMac1",
	"Sa M�c 2 [90]/SaMac2",
	"Sa M�c 3 [90]/SaMac3",
	"C�n Vi�n ��ng [90]/CanVienDong",
	"Ti�n C�c ��ng [90]/TienCucDong",
	"V� trang tr��c/LuyenCong",
	"Tho�t/no")
end

--======================= BAN DO LUYEN CONG =======================--
function LuyenCong10()
	Talk(1,"","��ng c�p 10 tr� l�n luy�n c�ng t�i 7 th�nh th� l�n <color=wood>D�ng th�n h�nh ph� �� �i l�n th�nh th�....!")
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
--"B�n �� Luy�n C�ng C�p 10 /dichuyen",
--"B�n �� Luy�n C�ng C�p 20 /dichuyen",
--"B�n �� Luy�n C�ng C�p 30 /dichuyen",
--"B�n �� Luy�n C�ng C�p 40 /dichuyen",
--"B�n �� Luy�n C�ng C�p 50 /dichuyen",
--"B�n �� Luy�n C�ng C�p 60 /dichuyen",
--"B�n �� Luy�n C�ng C�p 70 /dichuyen",
--"B�n �� Luy�n C�ng C�p 80 /dichuyen", 	
--"B�n �� Luy�n C�ng C�p 90 /dichuyen",
--"Tho�t /no")
--end

function dichuyen(nsel)
i = nsel + 1
if i == 1 then
SayNew("Chon map:" ,5,
"Nh�n ��ng S�n /dichuyen_1x",
"��t Ma ���ng /dichuyen_1x",
"D��c V��ng C�c /dichuyen_1x",
"Quay L�i /luyencong",
"Thoat/no")

elseif i == 2 then
SayNew("Chon map:" ,5,
"Ki�m C�c Trung Nguy�n /dichuyen_2x",
"T�n L�ng /dichuyen_2x",
"Ki�m C�c T�y Nam /dichuyen_2x",
"Quay L�i /luyencong",
"Thoat/no")

elseif i == 3 then
SayNew("Chon map:" ,5,
"Th�c C��ng S�n /dichuyen_3x",
"D��c V��ng ��ng T�ng 1 /dichuyen_3x",
"L�ng T�n Th�y Ho�ng /dichuyen_3x",
"Quay L�i /luyencong",
"Thoat/no")

elseif i == 4 then
SayNew("Chon map:" ,5,
"Ph�c Ng�u S�n T�y /dichuyen_4x",
"Ph�c Ng�u S�n ��ng /dichuyen_4x",
"�i�m Th��ng S�n /dichuyen_4x",
"Quay L�i /luyencong",
"Thoat/no")

elseif i == 5 then
SayNew("Chon map:" ,7,
"�i�m Th��ng ��ng T�ng 1 /dichuyen_5x",
"M� Cung K� Qu�n ��ng /dichuyen_5x",
"M�t Th�t Thi�u L�m /dichuyen_5x",
"Thi�t Th�p M� Cung T�ng 1/dichuyen_5x",
"Kim Quang ��ng/dichuyen_5x",
"Quay L�i /luyencong",
"Thoat/no")

elseif i == 6 then
SayNew("Chon map:" ,7,
"Ho�nh S�n Ph�i /dichuyen_6x",
"Thi�n T�m ��ng /dichuyen_6x",
"Linh C�c ��ng /dichuyen_6x",
"Thi�t Th�p M� Cung T�ng 2/dichuyen_6x",
"Kinh Ho�ng ��ng /dichuyen_6x",
"Quay L�i /luyencong",
"Thoat/no")

elseif i == 7 then

SayNew("Chon map:" ,6,
"D��c V��ng ��ng T�ng 2 /dichuyen_7x",
"��i T� ��ng /dichuyen_7x",
"L�m Du Quan /dichuyen_7x",
"T�a V�n ��ng /dichuyen_7x",
"Quay L�i /luyencong",
"Thoat/no")

elseif i == 8 then
SayNew("Chon map:" ,8,
"T�n L�ng T�ng 3 /dichuyen_8x",
"L��ng Th�y ��ng /dichuyen_8x",
"Nh�n Th�ch ��ng /dichuyen_8x",
"Ch�n N�i Tr��ng B�ch /dichuyen_8x",
"Sa M�c ��a Bi�u /dichuyen_8x",
"D��ng Trung ��ng /dichuyen_8x",
"Quay L�i /luyencong",
"Thoat/no")

elseif i == 9 then

SayNew("Chon map:" ,9,
"D��c V��ng ��ng t�ng 4 /dichuyen_9x",
"M�n B�c Th�o Nguy�n /dichuyen_9x",
"Tr��ng B�ch S�n B�c /dichuyen_9x",
"Ti�n C�c ��ng /dichuyen_9x",
"C�n Vi�n ��ng /dichuyen_9x",
"Sa M�c 2 /dichuyen_9x",
"Sa M�c 3 /dichuyen_9x",
"Quay L�i /luyencong",
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
tenmap = "Nh�n ��ng S�n"
elseif i == 2 then
id = 170
x = 1578
y = 3420
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "��t Ma ���ng"
elseif i == 3 then 
id = 157
x = 2424
y = 3732
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "D��c V��ng C�c"

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
tenmap = "Ki�m C�c Trung Nguy�n"

elseif i == 2 then
id = 158
x = 2225
y = 2847
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "T�n L�ng"

elseif i == 3 then 
id = 162
x =  3101
y = 3965
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Ki�m C�c T�y Nam"

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
tenmap = "Th�c C��ng S�n"

elseif i == 2 then
id = 164
x = 1610
y = 3377
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "D��c V��ng ��ng T�ng 1"

elseif i == 3 then 
id = 159
x = 1607
y = 3494
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "L�ng T�n Th�y Ho�ng"

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
tenmap = "Ph�c Ng�u S�n T�y"

elseif i == 2 then
id = 8
x = 1643
y = 3547
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Ph�c Ng�u S�n ��ng"

elseif i == 3 then 
id = 168
x = 1608
y = 3207
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "�i�m Th��ng S�n"

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
tenmap = "�i�m Th��ng ��ng T�ng 1"

elseif i == 2 then
id = 91
x = 1592
y = 3209
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "M� Cung K� Qu�n ��ng"

elseif i == 3 then 
id = 169
x = 1668
y = 3366
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "M�t Th�t Thi�u L�m"

elseif i == 4 then 
id = 38
x = 1602
y = 3206
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Thi�t Th�p M� Cung T�ng 1"

elseif i == 5 then 
id = 14
x = 1596
y = 3282
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Kim Quang ��ng"

end

if id == -1 then
Talk(1,"","B�n �� ch�a m�, quay l�i sau !")
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
tenmap = "Ho�nh S�n Ph�i"

elseif i == 2 then
id = 50
x = 1586
y = 3214
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Thi�n T�m ��ng"

elseif i == 3 then 
id = 172
x = 1634
y = 3265
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Linh C�c ��ng"

elseif i == 4 then 
id = 39
x = 1682
y = 3128
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Thi�t Th�p M� Cung T�ng 2"

elseif i == 5 then 
id = 62
x = 1822
y = 3473
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Kinh Ho�ng ��ng"

end
if id == -1 then
Talk(1,"","B�n �� ch�a m�, quay l�i sau !")
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
tenmap = "D��c V��ng ��ng T�ng 2"
level = 70

elseif i == 2 then
id = 173
x = 1703
y = 2860
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "��i T� ��ng"
level = 70

elseif i == 3 then 
id = 102
x = 1611
y = 3608
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "L�m Du Quan"

elseif i == 4 then 
id = 63
x = 1656
y = 3316
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "T�a V�n ��ng"

end
if id == -1 then
Talk(1,"","B�n �� ch�a m�, quay l�i sau !")
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
tenmap = "T�n L�ng T�ng 3"

elseif i == 2 then
id = 175
x = 1580
y = 3208
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "L��ng Th�y ��ng"

elseif i == 3 then 
id = 180
x = 1599
y = 3203
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Nh�n Th�ch ��ng"

elseif i == 4 then 
id = 104
x = 1144
y = 3116
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Ch�n N�i Tr��ng B�ch"

elseif i == 5 then 
id = 107
x = 1616
y = 3218
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Sa M�c ��a Bi�u"

elseif i == 6 then 
id = 64
x = 1698
y = 3405
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "D��ng Trung ��ng"




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
tenmap = "D��c V��ng ��ng t�ng 4"

elseif i == 2 then
id = 21
x = 1245
y = 3168
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "M�n B�c Th�o Nguy�n"

elseif i == 3 then 
id = 177
x = 1572
y = 3134
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Tr��ng B�ch S�n B�c"

elseif i == 4 then 
id = 93
x = 1524
y = 3174
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Ti�n C�c ��ng"

elseif i == 5 then 
id = 94
x = 1674
y = 3419
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "C�n Vi�n ��ng"

elseif i == 6 then 
id = 110
x = 1818
y = 3414
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Sa M�c S�n ��ng 2"

elseif i == 7 then 
id = 111
x = 1592
y = 3240
state = 1 -- 0 phi chien dau, 1 chiendau
tenmap = "Sa M�c S�n ��ng 3"

end
level = 90
MoveMap(id,x,y,state,tenmap,level)
end


function MoveMap(id,x,y,state,tenmap,level)
if GetLevel() < level and GetAccount() ~= "gamemaster01"  and GetAccount() ~= "gamemaster02" and GetAccount() ~= "gamemaster03"  and GetAccount() ~= "admin1"  and GetAccount() ~= "admin2" then
Talk(1,"","��ng c�p y�u c�u �� l�n b�n �� "..tenmap.." l�: C�p "..level.."")
return
end

NewWorld(id,x,y)
SetFightState(state)
Msg2Player("Ng�i y�n, ch�ng ta �ang ��n "..tenmap.."")
end


THANH_ARRAY = {
	{1 ,	"Ph��ng T��ng ph� "	,{
			{0	,"Ph��ng T��ng trung t�m"},
			{1	,"Ph��ng T��ng ��ng"},
			{2	,"Ph��ng T��ng T�y"},
			{3	,"Ph��ng T��ng Nam"},
			{4	,"Ph��ng T��ng B�c"}
	}},
	{11 ,	"Th�nh �� ph� "	,{
			{5 	,"Th�nh �� trung t�m"},
			{6 	,"Th�nh �� ��ng"},
			{7 	,"Th�nh �� T�y"},
			{8 	,"Th�nh �� Nam"},
			{9 	,"Th�nh �� B�c"}
	}},
	{162 ,	"��i L� ph� "	,{
			{63 	,"��i L� trung t�m"},
			{64	,"��i L� B�c"}
	}},
	{37 ,	"Bi�n Kinh ph� "	,{
			{23	,"Bi�n Kinh trung t�m"},
			{24	,"Bi�n Kinh ��ng"},
			{25	,"Bi�n Kinh T�y"},
			{26	,"Bi�n Kinh B�c"}
			
			
			
	}},
	{78 ,	"T��ng D��ng ph� "	,{
			{29	,"T��ng D��ng trung t�m"},
			{30	,"T��ng D��ng ��ng"},
			{31	,"T��ng D��ng Nam"},
			{32	,"T��ng D��ng T�y"},
			{33	,"T��ng D��ng B�c"}
	}},
	{80 ,	"D��ng Ch�u ph� "	,{
			{34	,"D��ng Ch�u trung t�m"},
			{35	,"D��ng Ch�u ��ng"},
			{36	,"D��ng Ch�u B�c"},
			{37	,"D��ng Ch�u Nam"},
			{38	,"D��ng Ch�u T�y"}
	}},
	{63 ,	"L�m An ph� "	,{
			{67	,"L�m An Nam"},
			{68	,"L�m An ��ng"},
			{69	,"L�m An B�c"}
	}}
	};
	--diem phuc sinh thon tran
	THON_ARRAY = {
	{20 ,	"Giang T�n Th�n"	,10},
	{121 ,	"Long M�n Tr�n"	,55},
	{53 ,	"Ba L�ng Huy�n"	,19}
	--{54 ,	"Nam Nh�c Tr�n"	,17},
	--{174 ,	"Long Tuy�n Th�n"	,66},
	--{101 ,	"��o H��ng Th�n"	,47},
	--{99 ,	"V�nh L�c Tr�n"	,43},
	--{100 ,	"Chu Ti�n Tr�n"	,45},
	--{153 ,	"Th�ch C� Tr�n"	,59},
	--{175 ,	"T�y S�n Th�n"		,1}
	};
	--diem phuc sinh mon phai
	MONPHAI_ARRAY = {
	{103	,	"Thi�u L�m ph�i"			,52},
	{59		,	"Thi�n V��ng bang"	,21},
	{25		,	"���ng M�n"				,15},
	{183	,	"Ng� ��c gi�o"				,71},
	{13		,	"Nga My ph�i"				,13},
	{154	,	"Th�y Y�n m�n"			,61},
	{115	,	"C�i Bang"						,53},
	{49		,	"Thi�n Nh�n gi�o"		,28},
	{81		,	"V� �ang ph�i"				,40},
	{131	,	"C�n L�n ph�i"				,57}
	};
	--noi den ban do cac loai
	PLACES_ARRAY = {
	201,		--Tr��ng B�ch s�n b�c
	198,		--Tr��ng B�ch S�n Nam
	74,		--Kh�a Lang ��ng
	226,		--Sa M�c 1
	227,		--Sa M�c 2
	228,		--Sa M�c 3
	10,		--Phong L�ng ��
	225,		--M�c Cao Qu�t
	147,		--Ti�n c�c ��ng
	539,            --Truong Ca Mon
	--221,		--C�n vi�n ��ng maps 
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
		Talk(1,"","V�t ph�m n�y kh�ng th� s� d�ng t�i ��y.")
		return 0;
	end
	
	function CheckMapNew()
		local nMapId,X,Y = GetWorldPos();
		
		for i = 1, getn(tbCD_MAPNEW) do
			if (nMapId == tbCD_MAPNEW[i]) then
				return 1
			end
		end
		Talk(1,"","V�t ph�m n�y kh�ng th� s� d�ng t�i ��y.")
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