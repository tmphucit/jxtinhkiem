
Include("\\script\\Pass\\daotaytuy.lua");
Include("\\script\\trap\\mangtrap.lua")
Include("\\script\\checkloinhanvat.lua")
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\duatoptanthu.lua")
Include("\\script\\datau\\diadochi\\head_datau.lua")


function main(sel)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))

if ngay == 25 and thang == 12 and gio < 19 then
		SayNew("Ch�n th�n l�ng mu�n qua: ",4,
		"Ba L�ng Huy�n /balanghuyen",
		"Long M�n Tr�n /hoanganh_longmontran",
		"Th�ch C� Tr�n /hoanganh_thachcotran",
		"Tho�t./no")
		return
end

--tinhtime = nam * 1000000 + thang * 10000 + ngay * 100 + gio
--tinhtime1 = GetTask(492) * 1000000 + GetTask(491) * 10000 + GetTask(490) * 100 + GetTask(489)

if GetLevel() < 5 then
Talk(1,"","Ph�a tr��c nguy hi�m, h�y quay l�i tu luy�n th�m �i !")
return
end

w,X,Y = GetWorldPos()
		
		if w == 160 or w == 161 or w == 53 then
			if GetTask(85) == 1 or GetTask(85) == 2 then
				SayNew("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",7,
				"Tr� l�i ��a �i�m c�/LastReturn",
				"Nh�ng n�i �� �i qua /DaDiQua",
				"Khu v�c luy�n c�ng/luyencong",
				"Khu v�c th�nh th�/thanhthi",
				"�i Vi S�n ��o /vsdao",
				"�i ��n n�i l�m nhi�m v� D� T�u/dichuyendatau",
				"Tho�t./no");
			else
				SayNew("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",6,
				"Tr� l�i ��a �i�m c�/LastReturn",
				"Nh�ng n�i �� �i qua /DaDiQua",
				"Khu v�c luy�n c�ng/luyencong",
				"Khu v�c th�nh th�/thanhthi",
				"�i Vi S�n ��o /vsdao",
				"Tho�t./no");			
			end
		elseif w == 2 then
		SayNew("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",2,
			"Tr� v� Ba L�ng Huy�n/balanghuyen",
			"Tho�t./no");
		elseif w == 226 then
			SayNew("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",4,
			"V� T��ng D��ng /tuongduong",
			"V� Ph��ng T��ng /phuongtuong",
			"V� ��i L� /daily",
			"Tho�t./no")
		elseif w == 77 then
			SayNew("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",4,
			"V� T��ng D��ng /tuongduong",
			"V� Ph��ng T��ng /phuongtuong",
			"V� ��i L� /daily",
			"Tho�t./no")
		elseif w == 58 then
			SayNew("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",4,
			"V� T��ng D��ng /tuongduong",
			"V� Ph��ng T��ng /phuongtuong",
			"V� ��i L� /daily",
			--"�i Phong L�ng �� /pld",
			--"�i Hoa S�n Ph�i /movehoasonphai",
			--"�i Kh�a Lang ��ng [C�p 100]/move_khoalangdong",
			"Tho�t./no")
		elseif w == 76 then	
			SayNew("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",2,
				"Tr� v� Ba L�ng Huy�n/balanghuyen",
				"Tho�t./no");	
		else
			if GetTask(85) == 1 or GetTask(85) == 2 then
				SayNew("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",10,
				"Tr� l�i ��a �i�m c�/LastReturn",
				"Nh�ng n�i �� �i qua /DaDiQua",
				"Khu v�c luy�n c�ng/luyencong",
				"Khu v�c th�nh th�/thanhthi",
				"�i ��o T�y T�y /dtt",
				"�i Phong L�ng �� /pld",
				"�i Hoa S�n C�nh K� Tr��ng /hoasoncanhky",
				"Kh�a Lang ��ng [C�p 100]/move_khoalangdong",
				"�i ��n n�i l�m nhi�m v� D� T�u/dichuyendatau",
				"Tho�t./no");
			else
				SayNew("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",9,
				"Tr� l�i ��a �i�m c�/LastReturn",
				"Nh�ng n�i �� �i qua /DaDiQua",
				"Khu v�c luy�n c�ng/luyencong",
				"Khu v�c th�nh th�/thanhthi",
				"�i ��o T�y T�y /dtt",
				"�i Phong L�ng �� /pld",
				"�i Hoa S�n C�nh K� Tr��ng /hoasoncanhky",
				"Kh�a Lang ��ng [C�p 100]/move_khoalangdong",
			--	"�i ��o Hoa Nguy�n /daohoanguyen",
				"Tho�t./no");					
			end
		end
end;

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



function movebantodong()
SayNew("B�n T� ��ng l� n�i nguy hi�m c� r�t nhi�u d� nh�n d�ng ��c gi�t ng��i kh�ng g�m tay, ng��i c� ch�c ch�n mu�n ��n ch�?",5,
"C�ng 1 /movebantodong1",
"C�ng 2 /movebantodong1",
"C�ng 3 /movebantodong1",
"C�ng 4 /movebantodong1",
"Tho�t./no")
end

function movebantodong1(nsel)
if GetLevel() < 90  then
Talk(1,"","��ng c�p 90 m�i c� th� v�o b�n �� n�y")
return
end
if  GetCurCamp() == 0  then
Talk(1,"","B�n ch�a gia nh�p m�n ph�i, kh�ng th� tham gia b�n �� s� ki�n")
return
end

sx = nsel + 1
AddSkillEffect(504,1,3*18)
SetFightState(1)
SetLogoutRV(1)
if sx == 1 then
NewWorld(77, 1527,3228)
elseif sx == 2 then
NewWorld(77, 1626,3230)
elseif sx == 3 then
NewWorld(77, 1675,3346)
elseif sx == 4 then
NewWorld(77, 1514,3355)
end
end


function dilongtuyenthon()
if GetLevel() < 115 then
NewWorld(4,203*8,200*16)
SetFightState(1)
Msg2Player("B�n �ang di chuy�n Long Tuy�n Th�n")
else
Talk(1,"","��ng c�p 115 tr� l�n, kh�ng th� tham gia b�n �� n�y !")
end
end
function top_blh()
	NewWorld(53,200*8,200*16)
	
end

function top_manbac()
if GetLevel() >= 115 then
Talk(1,"","��ng c�p 115 tr� l�n kh�ng th� tham gia b�n �� n�y")
return
end

		Msg2Player("Ng�i y�n! Ch�ng ta �i M�n B�c Th�o Nguy�n..........");
		
		SetRevPos(41)
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(21,1237, 3183);

end

function top_thuongtop1()
SayNew("Vui l�ng ch�n lo�i trang b� mu�n nh�n th��ng: ",3,
"Set An Bang /top_thuongtop2",
"Set ��nh Qu�c /top_thuongtop2",
"Tho�t./no")
end
function top_thuongtop2(nsel)
SetTaskTemp(1,nsel+1)
if nsel == 0 then
SayNew("B�n c� ch�c mu�n ch�n <color=red>trang b� An Bang<color> kh�ng?",2,
"Ta ch�c ch�n ch�n Trang b� An Bang /top_thuongtop3",
"Tho�t./no")
else
SayNew("B�n c� ch�c mu�n ch�n <color=red>trang b� ��nh Qu�c<color> kh�ng?",2,
"Ta ch�c ch�n ch�n Trang b� ��nh Qu�c /top_thuongtop3",
"Tho�t./no")
end
end

function top_thuongtop3()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
	

if GetTask(443) ~= 8888 then
return
end
vt = checktoptanthu()
if  vt == 0 then
return
end

if TOP_CT[vt][3] == 0 then
Talk(1,"","Ng��i �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m")
return
end
TOP_CT[vt][3] = 0
BANG4 = TaoBang(TOP_CT,"TOP_CT")
LuuBang("script/duatoptanthu.lua",BANG4)	

levelitem = 0
if vt == 1 then
	levelitem = 10
	AddItem(0,10,6,1,0,0,0)
	Earn(50000000)
elseif vt == 2 then
	levelitem = 10
	AddItem(0,10,6,1,0,0,0)
	Earn(40000000)
elseif vt == 3 then
	levelitem = 10
	AddItem(0,10,6,1,0,0,0)
	Earn(30000000)
elseif vt >= 4 and vt <= 10 then
	levelitem = 8
	AddItem(0,10,8,1,0,0,0)
	Earn(20000000)
elseif vt >= 11 and vt <= 30 then
	levelitem = 6
	AddItem(0,10,5,5,0,0,0)
	Earn(20000000)
elseif vt >= 31 and vt <= 100 then
levelitem = 4
	idxitem = AddItem(0,10,5,random(1,4),0,0,0)
	SetTimeItem(idxitem,550324);
	Earn(10000000)
elseif vt >= 101 and vt <= 200 then
	levelitem = 2
	idxitem = AddItem(0,10,5,random(1,4),0,0,0)
	SetTimeItem(idxitem,550324);
	Earn(5000000)
end
if levelitem ~= 0 and vt < 31then
	if GetTaskTemp(1) == 1 then
		AddItem(0,4,3,levelitem,0,0,0)
		AddItem(0,3,3,levelitem,0,0,0)
		AddItem(0,3,4,levelitem,0,0,0)
		AddItem(0,9,3,levelitem,0,0,0)
	else
		AddItem(0,7,15,levelitem,0,0,0)
		AddItem(0,2,30,levelitem,0,0,0)
		AddItem(0,6,3,levelitem,0,0,0)
		AddItem(0,5,5,levelitem,0,0,0)
		AddItem(0,8,3,levelitem,0,0,0)
	end
elseif levelitem ~= 0 and vt >= 31 and vt <= 200 then
	if GetTaskTemp(1) == 1 then
		idxitem = AddItem(0,4,3,levelitem,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,3,3,levelitem,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,3,4,levelitem,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,9,3,levelitem,0,0,0)
		SetTimeItem(idxitem,550324);
	else
		idxitem = AddItem(0,7,15,levelitem,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,2,30,levelitem,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,6,3,levelitem,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,5,5,levelitem,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,8,3,levelitem,0,0,0)
		SetTimeItem(idxitem,550324);
	end
end
Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng <color=yellow>TOP "..vt.." ")
end

function top_thuongtop()
if GetLevel() < 95 then
Talk(1,"","��ng c�p 95 tr� l�n m�i c� th� r�i kh�i b�n �� n�y ")
return
end
if GetTask(443) == 0 then
Talk(1,"","Ng��i kh�ng thu�c nh�n v�t �ua top, kh�ng th� c�p nh�t h�ng")
return
end


if checktoptanthu() > 0 then
Talk(1,"","Ng��i �� c�p nh�t <color=yellow>H�ng "..checktoptanthu().."<color>, kh�ng th� c�p nh�t th�m")
return
end



thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/duatoptanthu.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." "..GetExp().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		
	TOP_CT[getn(TOP_CT)+1] = {GetAccount(),GetName(),thoigian}
		BANG4 = TaoBang(TOP_CT,"TOP_CT")
		LuuBang("script/duatoptanthu.lua",BANG4)	
Msg2SubWorld("Ch�c m�ng "..GetName().." ho�n th�nh S� Ki�n �ua Top T�n Th� nh�n ���c <color=yellow>H�ng "..getn(TOP_CT).."")

SetTask(443,8888)
end


function checktoptanthu()
vt = 0
for i=1,getn(TOP_CT) do
	if TOP_CT[i][2] == GetName() then
		vt = i
	end
end
return vt
end
function divisondao()
Talk(1,"","Ch�c n�ng �ang test giai �o�n cu�i �� c�p nh�t. S� l��ng m�t �� th�n b� c�a b�n l�: <color=yellow>"..GetTask(494).."")
end
function dichuyenphuongtuong()
SetFightState(0)
i = random(1,4)
if i == 1 then
NewWorld(17,1647,3278);
elseif i == 2 then
NewWorld(17,1536,3242);
elseif i == 3 then
NewWorld(17,1558,3112);
elseif i == 4 then
NewWorld(17,1651,3170);
end
Msg2Player("Ng�i y�n, ch�ng ta di chuy�n qua Ph��ng T��ng !")
end
function luyencong()
w,x,y = GetWorldPos()
if w == 53 then
		SayNew("<color=green>Xa Phu<color>: Ch�n b�n �� mu�n di chuy�n: ",4,
		"��t Ma ���ng [C�p 10] /phatson_lahanduong",
		"T�n L�ng [C�p 20] /phatson_tanlang",
		"L�ng T�n Th�y Ho�ng [C�p 30] /phatson_tanthuyhoang",
		"Tho�t./no")
elseif w == 161 then
	SayNew("<color=green>Xa Phu<color>: Ch�n b�n �� mu�n di chuy�n: ",4,
		"D��c V��ng C�c [C�p 10] /phatson_duocvuongcoc",
		"Ki�m C�c T�y Nam [C�p 20] /phatson_kiemcactaynam",
		"Th�c C��ng S�n [C�p 30] /phatson_thuccuongson",
		"Tho�t./no")
elseif w == 160 then
	SayNew("<color=green>Xa Phu<color>: Ch�n b�n �� mu�n di chuy�n: ",9,
		"Nh�n ��ng S�n [C�p 10] /phatson_nhandangson",
		"Ki�m C�c Trung Nguy�n [C�p 20] /phatson_kiemcactrungnguyen",
		"D��c V��ng ��ng T�ng 1 [C�p 30] /phatson_duocvuongtang1",
		"�i�m Th��ng S�n [C�p 40]/phatson_diemthuongson",
		"�i�m Th��ng ��ng T�ng 1 [C�p 50]/phatson_diemthuongdong",
		"Thi�t Th�p M� Cung T�ng 1 [C�p 50]/phatson_thietthaptang1",
		"Kim Quang ��ng [C�p 50]/phatson_kimquangdong",
		"Kinh Ho�ng ��ng [C�p 60]/phatson_kinhhoangdong",
		"Tho�t./no")
elseif w == 17 then
	SayNew("<color=green>Xa Phu<color>: Ch�n b�n �� mu�n di chuy�n: ",10,
		"Ph�c Ng�u S�n T�y [C�p 40]/phatson_phucnguusontay",
		"M�t Th�t Thi�u L�m [C�p 50]/phatson_matthatthieulam",
		"Ho�nh S�n Ph�i [C�p 60]/phatson_hoanhsonphai",
		"L�m Du Quan [C�p 70]/phatson_lamduquan",
		"T�ng L�ng T�ng 3 [C�p 80]/phatson_tanlangtang3",
		"Sa M�c ��a Bi�u [C�p 80]/phatson_samacdiabieu",
		"Tr��ng B�ch S�n B�c [C�p 90]/phatson_truongbachbac",
		"Sa M�c 2 [C�p 90]/phatson_samac2",
		"Sa M�c 3 [C�p 90]/phatson_samac3",
		--"Sa M�c 2 [C�p 90]/samac2",
		--"Kh�a Lang ��ng [C�p 100]/move_khoalangdong",
		--"D��c V��ng ��ng [5000 l��ng]/dichuyenpt",
		--"Sa M�c ��a Bi�u /samacdiabieu",
		--"Sa M�c 1 [10000 l��ng]/samac1",
		"Tho�t./no")
elseif w == 15 then
	SayNew("<color=green>Xa Phu<color>: Ch�n b�n �� mu�n di chuy�n: ",9,
		"Ph�c Ng�u S�n ��ng [C�p 40]/phatson_phucnguusondong",
		"K� Qu�n ��ng [C�p 50]/phatson_kequandong",
		"Thi�n T�m ��ng [C�p 60]/phatson_thientamdong",
		"��i T� ��ng [C�p 70]/phatson_daitudong",
		"L��ng Th�y ��ng [C�p 80]/phatson_luongthuydong",
		"D��ng Trung ��ng [C�p 80]/phatson_duongtrungdong",
		"C�n Vi�n ��ng [C�p 90]/phatson_canviendong",
		"M�n B�c Th�o Nguy�n [C�p 90]/phatson_manbacthaonguyen",
		
		--"Sa M�c 2 [C�p 90]/samac2",
		--"Kh�a Lang ��ng [C�p 100]/move_khoalangdong",
		--"C�n Vi�n ��ng [5000 l��ng]/dichuyentd",
		--"Sa M�c ��a Bi�u /samacdiabieu",
		--"Sa M�c 2 [10000 l��ng]/samac2",
		"Tho�t./no")
elseif w == 11 then
	SayNew("<color=green>Xa Phu<color>: Ch�n b�n �� mu�n di chuy�n: ",9,	
		"Thi�t Th�p M� Cung T�ng 2 [C�p 60]/phatson_mecungthietthap",
		"Linh C�c ��ng [C�p 60]/phatson_linhcocdong",
		"T�a V�n ��ng [C�p 70] /phatson_toavandong",
		"D��c V��ng ��ng T�ng 2 [C�p 70]/phatson_duocvuongtang2",
		"Ch�n N�i Tr��ng B�ch [C�p 80] /phatson_channuitruongbach",
		"Nh�n Th�ch ��ng [C�p 80]/phatson_nhanthachdong",
		"Ti�n C�c ��ng [C�p 90]/phatson_tiencucdong",
		"D��c V��ng ��ng T�ng 4 [C�p 90]/phatson_duocvuongtang4",
		--"Sa M�c 2 [C�p 90]/samac2",
		--"Kh�a Lang ��ng [C�p 100]/move_khoalangdong",
		--"Sa M�c ��a Bi�u /samacdiabieu",
		--"Sa M�c 3 [10000 l��ng]/samac3",
		"Tho�t./no")	      
	

end
end

function phatson_kimquangdong()
mapid = 14
posx = 1596
posy = 3282
mapname = "Kim Quang ��ng"
gold = 0
lv = 50
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_thietthaptang1()
mapid = 38
posx = 1602
posy = 3206
mapname = "Thi�t Th�p M� Cung T�ng 1"
gold = 0
lv = 50
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_kinhhoangdong()
mapid = 62
posx = 1822
posy = 3473
mapname = "Kinh Ho�ng ��ng"
gold = 0
lv = 60
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end


function phatson_lahanduong()


mapid = 170
posx = 1577
posy = 3422
mapname = "��t Ma ���ng"
gold = 0
lv = 10
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_duocvuongcoc()


mapid = 157
posx = 2420
posy = 3732
mapname = "D��c V��ng C�c"
gold = 0
lv = 10
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_nhandangson()


mapid = 163
posx = 674
posy = 2854
mapname = "Nh�n ��ng S�n"
gold = 0
lv = 10
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_tanlang()


mapid = 158
posx = 2224
posy = 2847
mapname = "T�n L�ng"
gold = 0
lv = 20
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_tanthuyhoang()


mapid = 159
posx = 1607
posy = 3494
mapname = "L�ng T�n Th�y Ho�ng"
gold = 0
lv = 30
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_kiemcactaynam()


mapid = 162
posx = 3101
posy = 3965
mapname = "Ki�m C�c T�y Nam"
gold = 0
lv = 20
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_kiemcactrungnguyen()


mapid = 166
posx = 1692
posy = 3207
mapname = "Ki�m C�c Trung Nguy�n"
gold = 0
lv = 20
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_thuccuongson()


mapid = 167
posx = 1641
posy = 3310
mapname = "Th�c C��ng S�n"
gold = 0
lv = 30
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_duocvuongtang1()


mapid = 164
posx = 1610
posy = 3377
mapname = "D��c V��ng ��ng T�ng 1"
gold = 0
lv = 30
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_mecungthietthap()
Talk(1,"","B�n �� ch�a m�, quay l�i sau !")
end
function phatson_mecungthietthap_()
mapid = 39
posx = 1682
posy = 3128
mapname = "M� Cung Thi�t Th�p"
gold = 0
lv = 60
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_toavandong()
mapid = 63
posx = 1656
posy = 3316
mapname = "T�a V�n ��ng"
gold = 0
lv = 70
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_channuitruongbach()
mapid = 104
posx = 1144
posy = 3116
mapname = "Ch�n N�i Tr��ng B�ch"
gold = 0
lv = 80
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end



function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_phucnguusondong()


mapid = 8
posx = 1643
posy = 3547
mapname = "Ph�c Ng�u S�n ��ng"
gold = 0
lv = 40
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_phucnguusontay()


mapid = 41
posx = 2076
posy = 2809
mapname = "Ph�c Ng�u S�n T�y"
gold = 0
lv = 40
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_diemthuongson()


mapid = 168
posx = 1608
posy = 3207
mapname = "�i�m Th��ng S�n"
gold = 0
lv = 40
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_kequandong()


mapid = 91
posx = 1592
posy = 3209
mapname = "M� Cung K� Qu�n ��ng"
gold = 0
lv = 50
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_matthatthieulam()


mapid = 169
posx = 1668
posy = 3366
mapname = "M�t Th�t Thi�u L�m"
gold = 0
lv = 50
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_diemthuongdong()


mapid = 165
posx = 1686
posy = 3091
mapname = "�i�m Th��ng ��ng T�ng 1"
gold = 0
lv = 50
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_thientamdong()


mapid = 50
posx = 1586
posy = 3214
mapname = "Thi�n T�m ��ng"
gold = 150
lv = 60
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_hoanhsonphai()


mapid = 171
posx = 1487
posy = 3548
mapname = "Ho�nh S�n Ph�i"
gold = 150
lv = 60
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_linhcocdong()


mapid = 172
posx = 1634
posy = 3265
mapname = "Linh C�c ��ng"
gold = 150
lv = 60
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_daitudong()


mapid = 173
posx = 1703
posy = 2860
mapname = "��i T� ��ng"
gold = 300
lv = 70
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_duocvuongtang2()


mapid = 174
posx = 1553
posy = 3303
mapname = "D��c V��ng ��ng T�ng 2"
gold = 300
lv = 70
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_lamduquan()


mapid = 102
posx = 1611
posy = 3608
mapname = "L�m Du Quan"
gold = 300
lv = 70
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_luongthuydong()


mapid = 175
posx = 1595
posy = 3189
mapname = "L��ng Th�y ��ng"
gold = 500
lv = 80
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_duongtrungdong()


mapid = 64
posx = 1698
posy = 3405
mapname = "D��ng Trung ��ng"
gold = 500
lv = 80
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_samacdiabieu()


mapid = 107
posx = 1616
posy = 3218
mapname = "Sa M�c ��a Bi�u"
gold = 500
lv = 80
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end



function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_nhanthachdong()


mapid = 180
posx = 1599
posy = 3203
mapname = "Nh�n Th�ch ��ng"
gold = 500
lv = 80
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_tanlangtang3()


mapid = 176
posx = 1600
posy = 3200
mapname = "T�n L�ng T�ng 3"
gold = 500
lv = 80
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_truongbachbac()


mapid = 177
posx = 1572
posy = 3134
mapname = "Tr��ng B�ch S�n B�c"
gold = 1000
lv = 90
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_samac2()
mapid = 110
posx = 1818
posy = 3414
mapname = "Sa M�c S�n ��ng 2"
gold = 1000
lv = 90
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_samac3()
mapid = 111
posx = 1592
posy = 3240
mapname = "Sa M�c S�n ��ng 3"
gold = 1000
lv = 90
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_canviendong()


mapid = 94
posx = 1674
posy = 3419
mapname = "C�n Vi�n ��ng"
gold = 1000
lv = 90
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_duocvuongtang4()


mapid = 178
posx = 1587
posy = 3100
mapname = "D��c V��ng ��ng t�ng 4"
gold = 1000
lv = 90
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_tiencucdong()


mapid = 93
posx = 1524
posy = 3174
mapname = "Ti�n C�c ��ng"
gold = 1000
lv = 90
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end


function phatson_manbacthaonguyen()


mapid = 21
posx = 1245
posy = 3168
mapname = "M�n B�c Th�o Nguy�n"
gold = 1000
lv = 90
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..mapname.."")

end









function move_namnhactran()
vt = 4
gold = 200
lv = 10
MoveMap(vt, gold,lv)
end
function move_vulangson()
vt = 10
gold = 400
lv = 20
MoveMap(vt, gold,lv)
end
function move_mieulinh()
vt = 13
gold = 800
lv = 30
MoveMap(vt, gold,lv)
end
function move_bachvandong()
vt = 12
gold = 400
lv = 20
MoveMap(vt, gold,lv)
end
function move_phucluudong()
vt = 15
gold = 800
lv = 30
MoveMap(vt, gold,lv)
end
function move_thatsatdong()
vt = 11
gold = 400
lv = 20
MoveMap(vt, gold,lv)
end
function move_thuccuongson()
vt = 14
gold = 800
lv = 30
MoveMap(vt, gold,lv)
end
function move_thanhthanhson()
vt = 9
gold = 200
lv = 10
MoveMap(vt, gold,lv)
end
function move_noithatdong()
vt = 8
gold = 200
lv = 10
MoveMap(vt, gold, lv)
end



function MoveMap(vt, gold,lv)
--if GetCash() < gold then
--Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
--return
--end
--Pay(gold)
if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end
dichuyenchung(vt)
end


function move_tuyetbaodong()
vt = 33
gold = 5000
lv = 90

if GetLevel() < lv then
Talk(1,"","��ng c�p d��i "..lv.." kh�ng th� l�n b�n �� n�y !")
return
end
if GetCash() < gold then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
return
end
Pay(gold)
dichuyenchung(vt)
end


function dichuyenpt(nsel)
i = nsel + 1
vt = 0
lv = 0
gold = 0
if i == 1 then
vt = 18
lv = 40
gold = 1000
elseif i == 2 then
vt = 21
lv = 50
gold = 1500
elseif i == 3 then
vt = 24
lv = 60
gold = 2000
elseif i == 4 then
vt = 27
lv = 70
gold = 2500
elseif i == 5 then
vt = 30
lv = 80
gold = 3000
elseif i == 6 then
vt = 33
lv = 90
gold = 5000
end
if GetLevel() < lv then
	Talk(1,"","��ng c�p c�a b�n kh�ng �� "..lv..", kh�ng th� l�n b�n �� n�y")
	return
end
--if GetCash() < gold then
--Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
--return
--end
--Pay(gold)
dichuyenchung(vt)
end
function dichuyentd(nsel)
i = nsel + 1
vt = 0
lv = 0
gold = 0
if i == 1 then
vt = 16
lv = 40
gold = 1000
elseif i == 2 then
vt = 19
lv = 50
gold = 1500
elseif i == 3 then
vt = 22
lv = 60
gold = 2000
elseif i == 4 then
vt = 25
lv = 70
gold  = 2500
elseif i == 5 then
vt = 29
lv = 80
gold = 3000
elseif i == 6 then
vt = 32
lv = 90
gold = 5000
end
if GetLevel() < lv then
	Talk(1,"","��ng c�p c�a b�n kh�ng �� "..lv..", kh�ng th� l�n b�n �� n�y")
	return
end
--if GetCash() < gold then
--Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
--return
--end
--Pay(gold)
dichuyenchung(vt)
end
function dichuyenbk(nsel)
i = nsel + 1
vt = 0
lv = 0
gold = 0
if i == 1 then
vt = 17
lv = 40
gold = 1000
elseif i == 2 then
vt = 20
lv = 50
gold = 1500
elseif i == 3 then
vt = 23
lv = 60
gold = 2000
elseif i == 4 then
vt = 26
lv = 70
gold = 2500
elseif i == 5 then
vt = 28
lv = 80
gold = 3000
elseif i == 6 then
vt = 32
lv = 90
gold = 5000
end
if GetLevel() < lv then
	Talk(1,"","��ng c�p c�a b�n kh�ng �� "..lv..", kh�ng th� l�n b�n �� n�y")
	return
end
--if GetCash() < gold then
--Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
--return
--end
--Pay(gold)
dichuyenchung(vt)
end

function dichuyenchung(vt)
if vt ~= 0 then
		NewWorld(DoChi_Map[vt][1],DoChi_Map[vt][3],DoChi_Map[vt][4])
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..DoChi_Map[vt][2].."")
else
	Talk(1,"","L�i qu� ph�m vi b�n ��, li�n h� Admin �� gi�i quy�t !") 
end
end

function tanthu()
		NewWorld(76,1593,3188)
		SetFightState(1)
		Msg2Player("Ng�i y�n, ch�ng ta �i ��o Hoa Nguy�n ....")
end

function dichuyendatau()
if GetTask(85) == 1 or GetTask(85) == 2 then
	if GetTask(88) > 0 and GetTask(88) <= getn(DoChi_Map) then
		NewWorld(DoChi_Map[GetTask(88)][1],DoChi_Map[GetTask(88)][3],DoChi_Map[GetTask(88)][4])
		SetFightState(1)
		SetPunish(0)
		SetLogoutRV(0)
		Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>"..DoChi_Map[GetTask(88)][2].."")
	else
		Talk(1,"","L�i t�a ��, li�n h� Admin �� gi�i quy�t !")
	end
end
end

function namnhactran()
NewWorld(54,1584,3101)
Msg2Player("Ng�i y�n, ch�ng ta �i Nam Nh�c Tr�n ")
end
function DaDiQua()
if GetTask(325) > getn(MANG_TRAP) then
SetTask(325,0)
end
if GetTask(323) ~= 0 and GetTask(324) == 0 and GetTask(325) == 0 then
	SayNew("<color=blue>Xa Phu:<color> Vui l�ng ch�n ��a �i�m �� �i qua ",2,
	""..CheckDiaDiem(GetTask(323)).." /DaDiQua1",
	"Tho�t./no")
elseif GetTask(323) ~= 0 and GetTask(324) ~= 0 and GetTask(325) == 0 then
	SayNew("<color=blue>Xa Phu:<color> Vui l�ng ch�n ��a �i�m �� �i qua ",3,
	""..CheckDiaDiem(GetTask(323)).." /DaDiQua1",
	""..CheckDiaDiem(GetTask(324)).." /DaDiQua1",
	"Tho�t./no")
elseif GetTask(323) ~= 0 and GetTask(324) ~= 0 and GetTask(325) ~= 0 then
	SayNew("<color=blue>Xa Phu:<color> Vui l�ng ch�n ��a �i�m �� �i qua ",4,
	""..CheckDiaDiem(GetTask(323)).." /DaDiQua1",
	""..CheckDiaDiem(GetTask(324)).." /DaDiQua1",
	""..CheckDiaDiem(GetTask(325)).." /DaDiQua1",
	"Tho�t./no")
else
	Talk(1,"","Ng��i ch�a t�ng �i qua b�n �� n�o, ta kh�ng th� gi�p nh� ng��i ���c !")
end
end
function DaDiQua1(nsel)
if GetLevel() >= 50 and GetCash() < 500 then
Talk(1,"","Ng��i kh�ng �� 500 l��ng, kh�ng th� di chuy�n !")
return
end
if GetLevel() >= 50 then
Pay(500)
end

task = GetTask(323+nsel)
if task > 0 and task <= getn(MANG_TRAP) then
	NewWorld(MANG_TRAP[task][1],MANG_TRAP[task][2],MANG_TRAP[task][3])
	SetFightState(1)
	SetLogoutRV(0)
	SetPunish(0)
	Msg2Player("Ng�i y�n, ch�ng ta �i <color=yellow>"..CheckDiaDiem(task).."....")
else
Msg2Player("L�i d� li�u, li�n h� Admin �� s�a")
end
end

function roibando()
if GetFaction() == "" then
Talk(1,"","B�n ch�a gia nh�p ph�i, kh�ng th� r�i kh�i b�n �� !")
return
end
	if GetTask(131) == 10000 then
		SetTask(115,10000)
	end
	Msg2Player("B�n �� r�i kh�i Long Tuy�n Th�n v� tham gia b�n �� Ba L�ng Huy�n ")
	SetRevPos(53,19)
	NewWorld(53,200*8,200*16)
end

function vsdao()
if GetLevel() < 90 then
Talk(1,"","��ng c�p d��i 90 kh�ng th� v�o Vi S�n ��o")
return
end
if GetCurCamp() == 0 or GetCamp() == 0 then
Talk(1,"","B�n ch�a gia nh�p m�n ph�i, kh�ng th� l�n Vi S�n ��o")
return
end

ngay = tonumber(date("%d"))

SayNew("<color=green>Xa Phu<color> B�n s� m�t <color=yellow>20 t�m M�t �� Th�n B�<color> ho�c <color=yellow>100 �i�m M�t �� Th�n B� <color> b�n c� ch�c ch�n mu�n v�o kh�ng ?",3,
"D�ng 20 T�m M�t �� /vsdao1",
"D�ng 100 �i�m M�t �� /vsdao1",
"�� ta suy ngh� l�i /no")
end



function vsdao1(nsel)
gio = tonumber(date("%H"))
--if (gio < 11 or gio > 22) and GetAccount() ~= "adphuchung" then
--Talk(1,"","Ch� ���c l�n Vi S�n ��o t� 11h - 23h m�i ng�y")
--return
--end

numtb = 20
i = nsel + 1
if i == 1 then
	if GetItemCount(253) < numtb then
	Talk(1,"","B�n kh�ng mang theo "..numtb.." t�m m�t �� th�n b�, kh�ng th� l�n ��o !")
	return
	end
	for i=1,numtb do DelItem(253) end
else
	if GetTask(494) < 100 then
	Talk(1,"","B�n kh�ng �� 100 �i�m M�t �� Th�n B�, kh�ng th� l�n ��o !")
	return
	end
	SetTask(494, GetTask(494) - 100)
	Msg2Player("<color=green>Ng��i c�n: "..GetTask(494).." �i�m M�t �� Th�n B� ")
end
SetPKState(1)
BlockPKState(1)
SetRevPos(24,60)
Msg2Player("�� di chuy�n ��n b�n �� Vi S�n ��o !")
Msg2SubWorld("��i hi�p [<color=green>"..GetName().."<color>] �� v�o Vi S�n ��o !")
--Msg2Player("<color=yellow>Tho�t game t�i Vi S�n ��o trong th�i gian 17h00 - 17h59 s� gi� nguy�n v� tr�. C�n l�i s� ���c ��a v� Ba Lang Huy�n")
SetDeathScript("\\script\\visondao\\playerdie.lua");

SetFightState(0)
NewWorld(24,1395,2783)

end


function minhnguyet()
	SetFightState(0)
	Msg2Player("�ang di chuy�n sang b�n �� Minh Nguy�t Tr�n ")
	NewWorld(13,1597,3277)
end

function bao()
Talk(1,"","�� v�o b�n �� n�y c�c b�n qua <color=yellow>Chu Ti�n Tr�n<color> �� di chuy�n")
end

function ddnlcduatop()
if GetTask(115) == 10000 then
w,x,y = GetWorldPos()
	SayNew("<color=green>Xa Phu<color> Ch�n khu v�c luy�n c�ng:",6,
	"Ch�n N�i Tr��ng B�ch (c�p 80)/channuitruongbach",
	"Sa M�c ��a Bi�u (C�p 90)/samacdiabieu",
	"Tr��ng Ca M�n 2 (C�p 90)/truongcamon2",
	"D��ng Trung ��ng (C�p 90)/duongtrung1",
	"C� D��ng ��ng (C�p 90)/coduong1",
	"Tho�t./no")
else
	Talk(1,"","Nh�n v�t �ua top m�i ���c v�o b�n �� n�y !")
end
end

function ddnlc()
w,X,Y = GetWorldPos()
if w == 53 or w == 4 or w == 3 or w == 66 then
SayNew("<color=green>Xa Phu<color> Ch�n khu v�c luy�n c�ng:",9,
"Hoa S�n (C�p 10)/hoasoncanhky",
"Ph�c ng�u s�n (C�p 20)/phucnguuson",
"Tuy�t b�o ��ng (C�p 30)/tuyetbaodong",
"D��c v��ng ��ng (C�p 40)/duocvuongdong",
"T�n l�ng (C�p 50)/tanlang",
"Xi v�u ��ng (c�p 60)/siviudong",
"L�m du quan (C�p 70)/lamduquan",
"Ch�n n�i tr��ng b�ch (C�p 80)/channuitruongbach",
"Tho�t./no")
elseif w == 9 then
		SayNew("<color=green>Xa Phu<color> Ch�n khu v�c luy�n c�ng:",9,		
		"Sa m�c ��a bi�u (C�p 90)/samacdiabieu",
		"Sa m�c 1 (C�p 90)/samac1",
		"Sa M�c 2 (C�p 90)/samac2",
		"Tr��ng Ca M�n (C�p 90) /truongcamon2",
		"D��ng Trung ��ng (C�p 90)/duongtrung1",
		"C� D��ng ��ng (C�p 90)/coduong1",
		"M�n B�c Th�o Nguy�n (S� Ki�n)/macbacthaonguyen",
		"Tr��ng b�ch s�n nam (S� Ki�n)/truongbachnam",
		"Tho�t./no")
else
		Talk(1,"","T� th�nh th� n�y, ng��i kh�ng th� �i ��n b�n �� luy�n c�ng kh�c")
end
end


function samac1()
SayNew("�� tr�nh vi�c ch�n c�ng, b�n c� th� ch�n c�ng �� v�o Sa M�c 1",6,
"C�ng 1 /samac11",
"C�ng 2 /samac11",
"C�ng 3 /samac11",
"C�ng 4 /samac11",
"C�ng 5 /samac11",
"Tho�t./no")
end
function samac11(nsel)
i = nsel + 1
if GetCash() < 10000 then
Talk(1,"","Ng��i kh�ng mang �� 1 v�n l��ng, kh�ng th� l�n b�n �� n�y")
return
end
		Msg2Player("Ng�i y�n, ch�ng ta �i Sa M�c S�n ��ng 1..........");
		Pay(10000)
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		
		AddSkillEffect(504,1,5*18)
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



function samac3()
if GetCash() < 10000 then
Talk(1,"","Ng��i kh�ng mang �� 1 v�n l��ng, kh�ng th� l�n b�n �� n�y")
return
end
		Pay(10000)
		Msg2Player("Ng�i y�n, ch�ng ta �i Sa M�c S�n ��ng 3..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(111,1592,3240)
	
end;


function samac2()
if GetLevel() < 90 then
Talk(1,"","��ng c�p kh�ng �� 90, kh�ng th� l�n b�n �� n�y !")
return
end

if GetCash() < 5000 then
Talk(1,"","Ng��i kh�ng mang �� 5000 l��ng, kh�ng th� l�n b�n �� n�y")
return
end
		Pay(5000)
		Msg2Player("Ng�i y�n, ch�ng ta �i Sa M�c S�n ��ng 2..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(110,1818,3414)
		
	
end;

function samacdiabieu()
		Msg2Player("Ng�i y�n, ch�ng ta �i Sa M�c ��a Bi�u..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(107,1616,3218) 
end
function ddnlc1()
w,X,Y = GetWorldPos()
if w == 53 or w == 3 then
SayNew("<color=green>Xa Phu<color> Ch�n khu v�c luy�n c�ng:",2,
"Tuy�t b�o ��ng 2 (C�p 30)/tuyetbaodong1",
"Tho�t./no")
else
		SayNew("<color=green>Xa Phu<color> Ch�n khu v�c luy�n c�ng:",2,
		"Ch�n n�i tr��ng b�ch 2(C�p 80)/channuitruongbach1",
		"Tho�t./no")
end
end

function LastReturn()


	ReturnFromPortal()
	SetPunish(0)
end




function dtt()
	if GetTask(196) == 0 then
	SayNew("<color=green>Xa Phu<color>: B�n c� ch�c ch�n mu�n l�n ��o T�y tu� kh�ng ?: ",2,
	"Ta mu�n t�y tu� mi�n ph�/ditt",
	"Tho�t./no")
	elseif GetTask(196) >= 1 then
		SayNewEx({"<color=green>Xa Phu<color> : Ng��i mu�n �� ��o t�y tu� l�m g� ?",
"Ta ��n �� T�y �i�m K� n�ng./comeTT",
"Ta ��n �� T�y �i�m Ti�m n�ng/comeTT",
"T�y �i�m Ti�m n�ng v� K� N�ng./comeTT",
"Quay l�i./main","Tho�t./Exit"})
end
end
function comeTT(sel)
DenDao(sel + 1)
end;

function ditt()
		SetTask(196,2)
		MoveNPC(20,200,200,9,8,0,0);
		SetPunish(0)
		SetFightState(0)
		Msg2Player("Ng�i y�n! �ang �i ��n ��o T�y tu�...")
		SetRevPos(14);
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/DaoTayTuy.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." "..GetExp().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		
end
function DenDao(id)
	if id == 1 then
		if GetItemCount(28) >= 1 and GetItemCount(29) >= 1 and GetItemCount(30) >= 1 then
		DelItem(28)
DelItem(29)
DelItem(30)
			SetTask(196,3)
			MoveNPC(20,200,200,9,8,0,0);
			SetRevPos(14);
			SetPunish(0)
		else
		Talk(1,"","<color=green>Xa Phu<color> : Mu�n �� ���c ��o t�y tu� c�n c� : 1 <color=pink>T� thu� tinh<color>,1 <color=green>L�c thu� tinh<color>,1 <color=blue>Lam thu� tinh<color>.")
		end
	elseif id == 2 then
		if GetItemCount(31) >= 6 then
for k=1,6 do DelItem(31) end
			SetTask(196,4)
			MoveNPC(20,200,200,9,8,0,0);
			SetPunish(0)
			Msg2Player("Ng�i y�n! �ang �i ��n ��o T�y tu�...")
		SetRevPos(14);
		else
		Talk(1,"","<color=green>Xa Phu<color> : Mu�n �� ��o t�y tu� c�n c� : 6 <color=green>T�nh h�ng B�o th�ch<color>.")
		end
	elseif id == 3 then
		if GetItemCount(28) >= 1 and GetItemCount(29) >= 1 and GetItemCount(30) >= 1 and GetItemCount(31) >= 6 then
			DelItem(28)
DelItem(29)
DelItem(30)	
for k=1,6 do DelItem(31) end
		
			SetTask(196,5)
			MoveNPC(20,198,198,9,8,0,0);
			SetPunish(0)
			Msg2Player("Ng�i y�n! �ang �i ��n ��o T�y tu�...")
SetRevPos(14);
		else
		Talk(1,"","<color=green>Xa Phu<color> : Mu�n ��n ��o T�y tu� c�n c� : 1 <color=pink>T� thu� tinh<color>,1 <color=green>L�c thu� tinh<color>,1 <color=blue>Lam thu� tinh<color>, 6 <color=green>T�nh h�ng B�o th�ch<color>")
		end
	end
end;






function thanhthi()
w,x,y = GetWorldPos()
if w == 53 then    -- Neu Ban do == 53 thi
	SayNew("Ch�n Th�nh Th� mu�n ��n : ",4,
	"T��ng D��ng /tuongduong",
	--"Minh Nguy�t Tr�n [S� Ki�n]/minhnguyettran",
	--"Vi S�n ��o [S� Ki�n]/vsdao",
	"Hoa S�n Ph�i [S� Ki�n]/movehoasonphai",
	"��o Hoa Nguy�n [Luy�n Skill]/hoanganh_daohoanguyen",
	"Tho�t./no")

	elseif w == 161 then --Long Mon Tran
	SayNew("Ch�n Th�nh Th� mu�n ��n : ",4,
	"Ph��ng T��ng /phuongtuong",
	--"Vi S�n ��o [S� Ki�n]/vsdao",
	--"Minh Nguy�t Tr�n [S� Ki�n]/minhnguyettran",
	"Hoa S�n Ph�i [S� Ki�n]/movehoasonphai",
	"��o Hoa Nguy�n [Luy�n Skill]/hoanganh_daohoanguyen",
	"Tho�t./no")
	
	elseif w == 160 then --thach co tran
	SayNew("Ch�n Th�nh Th� mu�n ��n : ",4,
	"��i L� /daily",
	--"Vi S�n ��o [S� Ki�n]/vsdao",
	--"Minh Nguy�t Tr�n [S� Ki�n]/minhnguyettran",
	"Hoa S�n Ph�i [S� Ki�n]/movehoasonphai",
	"��o Hoa Nguy�n [Luy�n Skill]/hoanganh_daohoanguyen",
	"Tho�t./no")
	
	elseif w == 17 then -- phuong tuong 
	SayNew("Ch�n Th�nh Th� mu�n ��n : ",4,
	"��i L� /daily",
	"T��ng D��ng /tuongduong",
	"Long M�n Tr�n /hoanganh_longmontran",
	"Tho�t./no")
	
	elseif w == 11 then -- dai ly
	SayNew("Ch�n Th�nh Th� mu�n ��n : ",4,
	"T��ng D��ng /tuongduong",
	"Ph��ng T��ng /phuongtuong",
	"Th�ch C� Tr�n /hoanganh_thachcotran",
	"Tho�t./no")
	
	elseif w == 15 then  -- tuong duong
	SayNew("Ch�n Th�nh Th� mu�n ��n : ",4,
	"Ph��ng T��ng /phuongtuong",
	"��i L� /daily",
	"Ba L�ng Huy�n /balanghuyen",
	"Tho�t./no")
	
	elseif w == 55 then -- man bac thao nguyen
	SayNew("Ch�n Th�nh Th� mu�n ��n : ",4,
	"Ba L�ng Huy�n /balanghuyen",
	"Th�ch C� Tr�n /hoanganh_thachcotran",
	"Long M�n Tr�n /hoanganh_longmontran",
	"Tho�t./no")

end
end;

function hoanganh_daohoanguyen()
SetFightState(0)
NewWorld(55,1621,3223);
Msg2Player("Ng�i y�n, ch�ng ta di chuy�n ��n ��o Hoa Nguy�n")
end

function hoanganh_thachcotran()
SetFightState(0)
NewWorld(160,1620,3195);
Msg2Player("Ng�i y�n, ch�ng ta di chuy�n v� Th�ch C� Tr�n ")
end

function hoanganh_longmontran()
SetFightState(0)   -- Trang thai chien dau hay phi chien dau (0 - phi chien dau, 1 - chien dau)
NewWorld(161,1928,4436);   -- Move Map
Msg2Player("Ng�i y�n, ch�ng ta di chuy�n v� Long M�n Tr�n ")  -- Thong bao
end


function minhnguyettran()
SetFightState(0)
NewWorld(58 , 1599,3267)
Msg2Player("Ng�i y�n, ch�ng ta �i Minh Nguy�t Tr�n")
end
function balanghuyen()
SetFightState(0)
NewWorld(53,197*8,202*16);
Msg2Player("Ng�i y�n, ch�ng ta di chuy�n v� Ba L�ng Huy�n ")
end

function giangtan()

SetFightState(0)
NewWorld(66,432 * 8, 382*16)
Msg2Player("Ng�i y�n, ch�ng ta di chuy�n v� Giang T�n Th�n ")

end

function longtuyen()
if GetFaction() == "" then
Talk(1,"","Ch�a c� m�n ph�i kh�ng ���c v�o Giang T�n Th�n !")
return
end
if GetTask(115) ~= 10000 then
Talk(1,"","Ch� c� nh�n v�t �ua Top m�i ���c v�o !")
return
end
SetFightState(0)
NewWorld(4,1615, 3212)
end

function chutientran()
SetFightState(0)
i = random(1,4)
if i == 1 then
NewWorld(3,1682,3106)	-- Map : Tran Chu Tien
elseif i == 3 then
NewWorld(3,1612,3101)	-- Map : Tran Chu Tien
elseif i == 2 then
NewWorld(3,1599,3188)	-- Map : Tran Chu Tien
elseif i == 4 then
NewWorld(3,1720,3235)	-- Map : Tran Chu Tien
end

end
function tuongduong()
SetFightState(0)

i = random(1,4)
if i == 1 then
NewWorld(15,1509,3143);
elseif i == 3 then
NewWorld(15,1700,3238);
elseif i == 2 then
NewWorld(15,197*8,210*16);
elseif i == 4 then
NewWorld(15,1440,3218);
end

end

function phuongtuong()

SetFightState(0)

i = random(1,4)
if i == 1 then
NewWorld(17,1647,3278);
elseif i == 2 then
NewWorld(17,1536,3242);
elseif i == 3 then
NewWorld(17,1558,3112);
elseif i == 4 then
NewWorld(17,1651,3170);
end

end
function bienkinh()

SetFightState(0)

i = random(1,4)
if i == 1 then
NewWorld(9,1598,2998);
elseif i == 2 then
NewWorld(9,1870,2920);
elseif i == 3 then
NewWorld(9,1640,3178);
elseif i == 4 then
NewWorld(9,1704,3216);
end

end


function daily()
if GetCash() < 0 then
Talk(1,"","B�n kh�ng �� 200 l��ng kh�ng th� di chuy�n ��i L� !")
return
end
Pay(200)
SetFightState(0)

i = random(1,3)
if i == 1 then
NewWorld(11,1471,3275);
elseif i == 2 then
NewWorld(11,1695,3280);
elseif i == 3 then
NewWorld(11,1667,3131);
end
end

function thanhdo()
if GetCash() < 0 then
Talk(1,"","B�n kh�ng �� 200 l��ng kh�ng th� di chuy�n Th�nh �� !")
return
end
Pay(200)
SetFightState(0)

i = random(1,4)
if i == 1 then
NewWorld(18,3269,5005);
elseif i == 4 then
NewWorld(18,3184,5184);
elseif i == 3 then
NewWorld(18,3014,5097);
elseif i == 2 then
NewWorld(18,378*8,310*16);
end

end


function duongchau()
if GetCash() < 0 then
Talk(1,"","B�n kh�ng �� 200 l��ng kh�ng th� di chuy�n Th�nh �� !")
return
end
Pay(200)
SetFightState(0)

i = random(1,4)
if i == 1 then
NewWorld(16,1593,3201);
elseif i == 4 then
NewWorld(16,1719,3209);
elseif i == 3 then
NewWorld(16,1677,3002);
elseif i == 2 then
NewWorld(16,1830,3066);
end

end


function daottdi()
if (GetItemCount(28) >= 1) and (GetItemCount(29) >= 1) and (GetItemCount(30) >= 1) and (GetItemCount(31) >= 6) then
DelItem(28)
DelItem(29)
DelItem(30)
DelItem(31)
DelItem(31)
DelItem(31)
DelItem(31)
DelItem(31)
DelItem(31)
toadox = 1590 - 8 + random(0,16)
toadoy = 3180 - 16 + random(0,32)
Msg2Player("B�n �� ��n ��o Hoa Nguy�n !");
SetFightState(0);
SetRevPos(0);
SetLogoutRV(0)
NewWorld(4, toadox, toadoy);
else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>3 Thu� tinh kh�c nhau v� 6 T�nh h�ng B�o th�ch<color>, kh�ng th� di chuy�n")
end 
end;

function hoasoncanhky()

if  GetCurCamp() == 0  then
Talk(1,"","B�n ch�a gia nh�p m�n ph�i, kh�ng th� tham gia b�n �� s� ki�n")
return
end
Gold = 0
	if (GetCash() >= Gold) then
			Pay(Gold)
			toadox = 325*8
			toadoy = 222*16
			Msg2Player("Ng�i y�n! Ch�ng ta �i Hoa s�n c�nh k� tr��ng..........");
			SetFightState(1);
			SetLogoutRV(0)
			SetPunish(0)
			NewWorld(2, toadox, toadoy);     
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..Gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end;

function hoasoncanhky2()
	if (GetCash() >= 0) then
			toadox = 325*8
			toadoy = 222*16
			Msg2Player("Ng�i y�n! Ch�ng ta �i Hoa s�n c�nh k� tr��ng..........");
			SetFightState(1);
			SetLogoutRV(0)
			SetPunish(0)
			NewWorld(86, toadox, toadoy);

		      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>100 luong<color>, kh�ng th� di chuy�n")
	end
end;


function phucnguuson()
Gold = 0
	if (GetCash() >= Gold) then
		Pay(Gold)
toadox = 206*8
toadoy = 223*16
Msg2Player("Ng�i y�n! Ch�ng ta �i Ph�c Ng�u S�n..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(8, toadox, toadoy);
		

     
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..Gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end;
function phucnguuson2()
	if (GetCash() >= 0) then
		--Pay(200)
toadox = 206*8
toadoy = 223*16
Msg2Player("Ng�i y�n! Ch�ng ta �i Ph�c Ng�u S�n..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(87, toadox, toadoy);
		

     
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>200 luong<color>, kh�ng th� di chuy�n")
	end
end;

function tuyetbaodong()
Gold = 0
if (GetCash() >= Gold) then
		Pay(Gold)
toadox = 1614 - 8 + random(0,16)
toadoy = 3300 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i Tuy�t B�o ��ng ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(100, toadox, toadoy);

        
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..Gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end;
function tuyetbaodong2()
if (GetCash() >= 0) then
		--Pay(300)
toadox = 1614 - 8 + random(0,16)
toadoy = 3300 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i Tuy�t B�o ��ng ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(88, toadox, toadoy);

        
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>300 luong<color>, kh�ng th� di chuy�n")
	end
end;

function duocvuongdong()
	if (GetCash() >= 0) then
		Pay(0)
toadox = 200*8
toadoy = 195*16
Msg2Player("Ng�i y�n! Ch�ng ta �i D��c V��ng ��ng ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(101, toadox, toadoy);

       
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>400 luong<color>, kh�ng th� di chuy�n")
	end
end;
function duocvuongdong2()
	if (GetCash() >= 0) then
		--Pay(400)
toadox = 200*8
toadoy = 195*16
Msg2Player("Ng�i y�n! Ch�ng ta �i D��c V��ng ��ng ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(89, toadox, toadoy);

       
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>400 luong<color>, kh�ng th� di chuy�n")
	end
end;




function tanlang()
if (GetCash() >= 0) then
		Pay(0)
toadox = 204*8
toadoy = 203*16
Msg2Player("Ng�i y�n! Ch�ng ta �i T�n l�ng..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(187, toadox, toadoy);

      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>500 luong<color>, kh�ng th� di chuy�n")
	end
end;
function tanlang2()
if GetLevel() < 50 then
Talk(1,"","��ng c�p d��i 50 kh�ng th� v�o b�n �� n�y !")
return
end
if (GetCash() >= 0) then
		--Pay(500)
toadox = 204*8
toadoy = 203*16
Msg2Player("Ng�i y�n! Ch�ng ta �i T�n l�ng..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(90, toadox, toadoy);

      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>500 luong<color>, kh�ng th� di chuy�n")
	end
end;


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

if GetItemCount(686) == 0 then
Talk(1,"","B�n kh�ng mang theo <color=red>L�nh B�i Map 100 <color>,kh�ng th� di chuy�n")
Msg2Player("H�y ��n Th�n B� Th��ng Nh�n �� mua L�nh B�i !")
return
end

		DelItem(686)


		SetFightState(0);
		SetLogoutRV(1)
		SetPKState(1)
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
end;

function siviudong2()
if GetLevel() < 130 then
Talk(1,"","��ng c�p d��i 130 kh�ng th� v�o b�n �� n�y !")
return
end


	Msg2Player("Ng�i y�n! Ch�ng ta �i Xi V�u ��ng ..........");
	SetFightState(1);
	SetLogoutRV(0)
	SetPunish(0)
	sx = random(1,getn(xivuu)) 
	SetPKState(1)
	NewWorld(xivuu[sx][1], xivuu[sx][2], xivuu[sx][3]);

      
end;

xivuu = {
{91,1771,3023},
{91,1760,3049},
{91,1743,3066},
{91,1729,3078},
{91,1719,3088},
{91,1701,3075},
{91,1749,3119},
{91,1761,3102},
{91,1773,3090},
{91,1788,3077},
{91,1809,3060},
{91,1822,3076},
{91,1832,3086},
{91,1841,3097},
{91,1856,3112},
{91,1871,3132},
{91,1883,3143},
{91,1827,3119},
{91,1821,3140},
{91,1830,3154},
{91,1841,3166},
{91,1834,3183},
{91,1823,3201},
{91,1815,3202},
{91,1801,3188},
{91,1785,3172},
{91,1771,3176},
{91,1754,3186},
{91,1745,3195},
{91,1756,3213},
{91,1770,3228},
{91,1784,3244},
{91,1727,3210},
{91,1716,3241},
{91,1734,3267},
{91,1747,3280},
{91,1700,3248},
{91,1682,3264},
{91,1688,3288},
{91,1709,3311},
{91,1661,3285},
{91,1646,3296},
{91,1644,3312},
{91,1653,3326},
{91,1664,3336},
{91,1711,3189},
{91,1716,3160},
{91,1704,3137},
{91,1709,3116},
{91,1667,3136},
{91,1651,3154},
{91,1672,3184},
{91,1680,3206},
{91,1650,3228},
{91,1619,3195},
{91,1595,3213},
{91,1584,3224},
{91,1638,3248},
{91,1610,3268},
{91,1668,3215},

}

function lamduquan()
	if (GetCash() >= 0) then
		Pay(0)
toadox = 1642 - 8 + random(0,16)
toadoy = 3575 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i L�m Du Quan ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(102, toadox, toadoy);

     
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>700 luong<color>, kh�ng th� di chuy�n")
	end
end;
function lamduquan2()

	if (GetCash() >= 0) then
		--Pay(700)
toadox = 1642 - 8 + random(0,16)
toadoy = 3575 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i L�m Du Quan ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(92, toadox, toadoy);

     
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>700 luong<color>, kh�ng th� di chuy�n")
	end
end;


function channuitruongbach()
	toadox = 1144 - 8 + random(0,16)
	toadoy = 3116 - 16 + random(0,32)
	Msg2Player("Ng�i y�n! Ch�ng ta �i Ch�n N�i Tr��ng B�ch ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(104, toadox, toadoy);

   
end;
function channuitruongbach2()
if GetLevel() < 80 then
Talk(1,"","��ng c�p d��i 80 kh�ng th� v�o b�n �� n�y !")
return
end
if (GetCash() >= 0) then
		--Pay(800)
toadox = 1144 - 8 + random(0,16)
toadoy = 3116 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i Ch�n N�i Tr��ng B�ch ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(93, toadox, toadoy);

   
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>800 luong<color>, kh�ng th� di chuy�n")
	end
end;

function truongbs()
	if (GetCash() >= 2000) then
		Pay(2000)
toadox = 1589 - 8 + random(0,16)
toadoy = 3160 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i Tr��ng B�ch S�n ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(105, toadox, toadoy);
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>2000 luong<color>, kh�ng th� di chuy�n")
	end
end;


function truongbachnam()
if GetLevel() < 90 then
Talk(1,"","��ng c�p d��i 90 ko th� l�n b�n �� 9x !")
return
end

	if (GetCash() >= 0) then
		Pay(0)
toadox = 1552 - 8 + random(0,16)
toadoy = 3104 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i Tr��ng B�ch S�n Nam..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(22, toadox, toadoy);

	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>2000 luong<color>, kh�ng th� di chuy�n")
	end
end;





function maccaoquat()
if GetLevel() < 90 then
Talk(1,"","��ng c�p kh�ng �� 90, kh�ng th� l�n b�n �� n�y !")
return
end

gold = 5000
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ng�i y�n! Ch�ng ta �i M�c Cao Qu�t..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(79,1870,3408);
	else
		Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end;


function macbacthaonguyen()
if GetLevel() < 90 then
Talk(1,"","��ng c�p d��i 90 ko th� l�n b�n �� 9x !")
return
end

gold = 0
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ng�i y�n! Ch�ng ta �i M�n B�c Th�o Nguy�n..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(21,1237, 3183);

	else
		Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end;
function macbacthaonguyen2()
if GetLevel() < 90 then
Talk(1,"","��ng c�p d��i 90 kh�ng th� v�o b�n �� n�y !")
return
end

gold = 0
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ng�i y�n! Ch�ng ta �i M�n B�c Th�o Nguy�n..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(96,1237, 3183);

	else
		Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end;
function  no()

end;



function hoasoncanhky1()
	if (GetCash() >= 100) then
			Pay(100)
			toadox = 325*8
			toadoy = 222*16
			Msg2Player("Ng�i y�n! Ch�ng ta �i Hoa s�n c�nh k� tr��ng 2..........");
			
			SetFightState(1);
			SetLogoutRV(0)
			SetPunish(0)

			NewWorld(86, toadox, toadoy);

		      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>100 luong<color>, kh�ng th� di chuy�n")
	end
end;

function phucnguuson1()
	if (GetCash() >= 200) then
		Pay(200)
toadox = 206*8
toadoy = 223*16


Msg2Player("Ng�i y�n! Ch�ng ta �i Ph�c Ng�u S�n 2..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(87, toadox, toadoy);
		

     
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>200 luong<color>, kh�ng th� di chuy�n")
	end
end;


function tuyetbaodong1()
if (GetCash() >= 300) then
		Pay(300)
toadox = 1614 - 8 + random(0,16)
toadoy = 3300 - 16 + random(0,32)


Msg2Player("Ng�i y�n! Ch�ng ta �i Tuy�t B�o ��ng 2..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(88, toadox, toadoy);

        
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>300 luong<color>, kh�ng th� di chuy�n")
	end
end;


function duocvuongdong1()
	if (GetCash() >= 400) then
		Pay(400)
toadox = 200*8
toadoy = 195*16
Msg2Player("Ng�i y�n! Ch�ng ta �i D��c V��ng ��ng 2..........");


		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(89, toadox, toadoy);

       
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>400 luong<color>, kh�ng th� di chuy�n")
	end
end;





function tanlang1()
if (GetCash() >= 500) then
		Pay(500)
toadox = 204*8
toadoy = 203*16


Msg2Player("Ng�i y�n! Ch�ng ta �i T�n l�ng 2..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(90, toadox, toadoy);

      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>500 luong<color>, kh�ng th� di chuy�n")
	end
end;



function siviudong1()
	if (GetCash() >= 0) then
		Pay(0)
toadox = 224*8
toadoy = 189*16


Msg2Player("Ng�i y�n! Ch�ng ta �i Xi V�u ��ng 2..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(91, toadox, toadoy);

      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>600 luong<color>, kh�ng th� di chuy�n")
	end
end;


function pld()
if GetLevel() < 90 then
Talk(1,"","��ng c�p d��i 90 kh�ng th� tham gia Phong L�ng �� ")
return
end
if GetItemCount(135) == 0 then
Talk(1,"","B�n kh�ng mang theo <color=red>L�nh B�i Phong L�ng �� <color>,kh�ng th� di chuy�n")
Msg2Player("H�y ��n Th�n B� Th��ng Nh�n �� mua L�nh B�i !")
return
end

if (GetCash() >= 5000) then
		Pay(5000)
		Msg2Player("Ng�i y�n! Ch�ng ta �i Phong L�ng �� ..........");
		SetFightState(1);
		SetLogoutRV(1)
		SetRevPos(19)
		SetPunish(0)
		SetTask(117,5*18) -- bat dau bat tu
		NewWorld(46,1125,3189)	-- Map : Phong Lang do
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>5000 luong<color>, kh�ng th� di chuy�n")
	end
end
