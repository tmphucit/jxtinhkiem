
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
		SayNew("Chän th«n lµng muèn qua: ",4,
		"Ba L¨ng HuyÖn /balanghuyen",
		"Long M«n TrÊn /hoanganh_longmontran",
		"Th¹ch Cæ TrÊn /hoanganh_thachcotran",
		"Tho¸t./no")
		return
end

--tinhtime = nam * 1000000 + thang * 10000 + ngay * 100 + gio
--tinhtime1 = GetTask(492) * 1000000 + GetTask(491) * 10000 + GetTask(490) * 100 + GetTask(489)

if GetLevel() < 5 then
Talk(1,"","PhÝa tr­íc nguy hiÓm, h·y quay l¹i tu luyÖn thªm ®i !")
return
end

w,X,Y = GetWorldPos()
		
		if w == 160 or w == 161 or w == 53 then
			if GetTask(85) == 1 or GetTask(85) == 2 then
				SayNew("<color=blue>Xa Phu:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",7,
				"Trë l¹i ®Þa ®iÓm cò/LastReturn",
				"Nh÷ng n¬i ®· ®i qua /DaDiQua",
				"Khu vùc luyÖn c«ng/luyencong",
				"Khu vùc thµnh thÞ/thanhthi",
				"§i Vi S¬n §¶o /vsdao",
				"§i ®Õn n¬i lµm nhiÖm vô D· TÈu/dichuyendatau",
				"Tho¸t./no");
			else
				SayNew("<color=blue>Xa Phu:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",6,
				"Trë l¹i ®Þa ®iÓm cò/LastReturn",
				"Nh÷ng n¬i ®· ®i qua /DaDiQua",
				"Khu vùc luyÖn c«ng/luyencong",
				"Khu vùc thµnh thÞ/thanhthi",
				"§i Vi S¬n §¶o /vsdao",
				"Tho¸t./no");			
			end
		elseif w == 2 then
		SayNew("<color=blue>Xa Phu:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",2,
			"Trë vÒ Ba L¨ng HuyÖn/balanghuyen",
			"Tho¸t./no");
		elseif w == 226 then
			SayNew("<color=blue>Xa Phu:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",4,
			"VÒ T­¬ng D­¬ng /tuongduong",
			"VÒ Ph­îng T­êng /phuongtuong",
			"VÒ §¹i Lý /daily",
			"Tho¸t./no")
		elseif w == 77 then
			SayNew("<color=blue>Xa Phu:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",4,
			"VÒ T­¬ng D­¬ng /tuongduong",
			"VÒ Ph­îng T­êng /phuongtuong",
			"VÒ §¹i Lý /daily",
			"Tho¸t./no")
		elseif w == 58 then
			SayNew("<color=blue>Xa Phu:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",4,
			"VÒ T­¬ng D­¬ng /tuongduong",
			"VÒ Ph­îng T­êng /phuongtuong",
			"VÒ §¹i Lý /daily",
			--"§i Phong L¨ng §é /pld",
			--"§i Hoa S¬n Ph¸i /movehoasonphai",
			--"§i Kháa Lang §éng [CÊp 100]/move_khoalangdong",
			"Tho¸t./no")
		elseif w == 76 then	
			SayNew("<color=blue>Xa Phu:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",2,
				"Trë vÒ Ba L¨ng HuyÖn/balanghuyen",
				"Tho¸t./no");	
		else
			if GetTask(85) == 1 or GetTask(85) == 2 then
				SayNew("<color=blue>Xa Phu:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",10,
				"Trë l¹i ®Þa ®iÓm cò/LastReturn",
				"Nh÷ng n¬i ®· ®i qua /DaDiQua",
				"Khu vùc luyÖn c«ng/luyencong",
				"Khu vùc thµnh thÞ/thanhthi",
				"§i §¶o TÈy Tñy /dtt",
				"§i Phong L¨ng §é /pld",
				"§i Hoa S¬n C¶nh Kü Tr­êng /hoasoncanhky",
				"Kháa Lang §éng [CÊp 100]/move_khoalangdong",
				"§i ®Õn n¬i lµm nhiÖm vô D· TÈu/dichuyendatau",
				"Tho¸t./no");
			else
				SayNew("<color=blue>Xa Phu:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",9,
				"Trë l¹i ®Þa ®iÓm cò/LastReturn",
				"Nh÷ng n¬i ®· ®i qua /DaDiQua",
				"Khu vùc luyÖn c«ng/luyencong",
				"Khu vùc thµnh thÞ/thanhthi",
				"§i §¶o TÈy Tñy /dtt",
				"§i Phong L¨ng §é /pld",
				"§i Hoa S¬n C¶nh Kü Tr­êng /hoasoncanhky",
				"Kháa Lang §éng [CÊp 100]/move_khoalangdong",
			--	"§i §µo Hoa Nguyªn /daohoanguyen",
				"Tho¸t./no");					
			end
		end
end;

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



function movebantodong()
SayNew("Bµn T¬ §éng lµ n¬i nguy hiÓm cã rÊt nhiÒu dÞ nh©n dïng ®éc giÕt ng­êi kh«ng gím tay, ng­¬i cã ch¾c ch¾n muèn ®Õn chø?",5,
"Cæng 1 /movebantodong1",
"Cæng 2 /movebantodong1",
"Cæng 3 /movebantodong1",
"Cæng 4 /movebantodong1",
"Tho¸t./no")
end

function movebantodong1(nsel)
if GetLevel() < 90  then
Talk(1,"","§¼ng cÊp 90 míi cã thÓ vµo b¶n ®å nµy")
return
end
if  GetCurCamp() == 0  then
Talk(1,"","B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ tham gia b¶n ®å sù kiÖn")
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
Msg2Player("B¹n ®ang di chuyÓn Long TuyÒn Th«n")
else
Talk(1,"","§¼ng cÊp 115 trë lªn, kh«ng thÓ tham gia b¶n ®å nµy !")
end
end
function top_blh()
	NewWorld(53,200*8,200*16)
	
end

function top_manbac()
if GetLevel() >= 115 then
Talk(1,"","§¼ng cÊp 115 trë lªn kh«ng thÓ tham gia b¶n ®å nµy")
return
end

		Msg2Player("Ngåi yªn! Chóng ta ®i M¹n B¾c Th¶o Nguyªn..........");
		
		SetRevPos(41)
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(21,1237, 3183);

end

function top_thuongtop1()
SayNew("Vui lßng chän lo¹i trang bÞ muèn nhËn th­ëng: ",3,
"Set An Bang /top_thuongtop2",
"Set §Þnh Quèc /top_thuongtop2",
"Tho¸t./no")
end
function top_thuongtop2(nsel)
SetTaskTemp(1,nsel+1)
if nsel == 0 then
SayNew("B¹n cã ch¾c muèn chän <color=red>trang bÞ An Bang<color> kh«ng?",2,
"Ta ch¾c ch¾n chän Trang bÞ An Bang /top_thuongtop3",
"Tho¸t./no")
else
SayNew("B¹n cã ch¾c muèn chän <color=red>trang bÞ §Þnh Quèc<color> kh«ng?",2,
"Ta ch¾c ch¾n chän Trang bÞ §Þnh Quèc /top_thuongtop3",
"Tho¸t./no")
end
end

function top_thuongtop3()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
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
Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn thªm")
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
Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng <color=yellow>TOP "..vt.." ")
end

function top_thuongtop()
if GetLevel() < 95 then
Talk(1,"","§¼ng cÊp 95 trë lªn míi cã thÓ rêi khái b¶n ®å nµy ")
return
end
if GetTask(443) == 0 then
Talk(1,"","Ng­¬i kh«ng thuéc nh©n vËt ®ua top, kh«ng thÓ cËp nhËt h¹ng")
return
end


if checktoptanthu() > 0 then
Talk(1,"","Ng­¬i ®· cËp nhËt <color=yellow>H¹ng "..checktoptanthu().."<color>, kh«ng thÓ cËp nhËt thªm")
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
Msg2SubWorld("Chóc mõng "..GetName().." hoµn thµnh Sù KiÖn §ua Top T©n Thñ nhËn ®­îc <color=yellow>H¹ng "..getn(TOP_CT).."")

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
Talk(1,"","Chøc n¨ng ®ang test giai ®o¹n cuèi ®Ó cËp nhËt. Sè l­îng mËt ®å thÇn bÝ cña b¹n lµ: <color=yellow>"..GetTask(494).."")
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
Msg2Player("Ngåi yªn, chóng ta di chuyÓn qua Ph­îng T­êng !")
end
function luyencong()
w,x,y = GetWorldPos()
if w == 53 then
		SayNew("<color=green>Xa Phu<color>: Chän b¶n ®å muèn di chuyÓn: ",4,
		"§¹t Ma §­êng [CÊp 10] /phatson_lahanduong",
		"TÇn L¨ng [CÊp 20] /phatson_tanlang",
		"L¨ng TÇn Thñy Hoµng [CÊp 30] /phatson_tanthuyhoang",
		"Tho¸t./no")
elseif w == 161 then
	SayNew("<color=green>Xa Phu<color>: Chän b¶n ®å muèn di chuyÓn: ",4,
		"D­îc V­¬ng Cèc [CÊp 10] /phatson_duocvuongcoc",
		"KiÕm C¸c T©y Nam [CÊp 20] /phatson_kiemcactaynam",
		"Thôc C­¬ng S¬n [CÊp 30] /phatson_thuccuongson",
		"Tho¸t./no")
elseif w == 160 then
	SayNew("<color=green>Xa Phu<color>: Chän b¶n ®å muèn di chuyÓn: ",9,
		"Nh¹n §Æng S¬n [CÊp 10] /phatson_nhandangson",
		"KiÕm C¸c Trung Nguyªn [CÊp 20] /phatson_kiemcactrungnguyen",
		"D­îc V­¬ng §éng TÇng 1 [CÊp 30] /phatson_duocvuongtang1",
		"§iÓm Th­¬ng S¬n [CÊp 40]/phatson_diemthuongson",
		"§iÓm Th­¬ng §éng TÇng 1 [CÊp 50]/phatson_diemthuongdong",
		"ThiÕt Th¸p Mª Cung TÇng 1 [CÊp 50]/phatson_thietthaptang1",
		"Kim Quang §éng [CÊp 50]/phatson_kimquangdong",
		"Kinh Hoµng §éng [CÊp 60]/phatson_kinhhoangdong",
		"Tho¸t./no")
elseif w == 17 then
	SayNew("<color=green>Xa Phu<color>: Chän b¶n ®å muèn di chuyÓn: ",10,
		"Phôc Ng­u S¬n T©y [CÊp 40]/phatson_phucnguusontay",
		"MËt ThÊt ThiÕu L©m [CÊp 50]/phatson_matthatthieulam",
		"Hoµnh S¬n Ph¸i [CÊp 60]/phatson_hoanhsonphai",
		"L©m Du Quan [CÊp 70]/phatson_lamduquan",
		"TÇng L¨ng TÇng 3 [CÊp 80]/phatson_tanlangtang3",
		"Sa M¹c §Þa BiÓu [CÊp 80]/phatson_samacdiabieu",
		"Tr­êng B¹ch S¬n B¾c [CÊp 90]/phatson_truongbachbac",
		"Sa M¹c 2 [CÊp 90]/phatson_samac2",
		"Sa M¹c 3 [CÊp 90]/phatson_samac3",
		--"Sa M¹c 2 [CÊp 90]/samac2",
		--"Kháa Lang §éng [CÊp 100]/move_khoalangdong",
		--"D­îc V­¬ng §éng [5000 l­îng]/dichuyenpt",
		--"Sa M¹c §Þa BiÓu /samacdiabieu",
		--"Sa M¹c 1 [10000 l­îng]/samac1",
		"Tho¸t./no")
elseif w == 15 then
	SayNew("<color=green>Xa Phu<color>: Chän b¶n ®å muèn di chuyÓn: ",9,
		"Phôc Ng­u S¬n §«ng [CÊp 40]/phatson_phucnguusondong",
		"Kª Qu¸n §éng [CÊp 50]/phatson_kequandong",
		"Thiªn T©m §éng [CÊp 60]/phatson_thientamdong",
		"§¹i Tï §éng [CÊp 70]/phatson_daitudong",
		"L­ìng Thñy §éng [CÊp 80]/phatson_luongthuydong",
		"D­¬ng Trung §éng [CÊp 80]/phatson_duongtrungdong",
		"C¸n Viªn §éng [CÊp 90]/phatson_canviendong",
		"M¹n B¾c Th¶o Nguyªn [CÊp 90]/phatson_manbacthaonguyen",
		
		--"Sa M¹c 2 [CÊp 90]/samac2",
		--"Kháa Lang §éng [CÊp 100]/move_khoalangdong",
		--"C¸n Viªn §éng [5000 l­îng]/dichuyentd",
		--"Sa M¹c §Þa BiÓu /samacdiabieu",
		--"Sa M¹c 2 [10000 l­îng]/samac2",
		"Tho¸t./no")
elseif w == 11 then
	SayNew("<color=green>Xa Phu<color>: Chän b¶n ®å muèn di chuyÓn: ",9,	
		"ThiÕt Th¸p Mª Cung TÇng 2 [CÊp 60]/phatson_mecungthietthap",
		"Linh Cèc §éng [CÊp 60]/phatson_linhcocdong",
		"Táa V©n §éng [CÊp 70] /phatson_toavandong",
		"D­îc V­¬ng §éng TÇng 2 [CÊp 70]/phatson_duocvuongtang2",
		"Ch©n Nói Tr­êng B¹ch [CÊp 80] /phatson_channuitruongbach",
		"Nh¹n Th¹ch §éng [CÊp 80]/phatson_nhanthachdong",
		"TiÕn Cóc §éng [CÊp 90]/phatson_tiencucdong",
		"D­îc V­¬ng §éng TÇng 4 [CÊp 90]/phatson_duocvuongtang4",
		--"Sa M¹c 2 [CÊp 90]/samac2",
		--"Kháa Lang §éng [CÊp 100]/move_khoalangdong",
		--"Sa M¹c §Þa BiÓu /samacdiabieu",
		--"Sa M¹c 3 [10000 l­îng]/samac3",
		"Tho¸t./no")	      
	

end
end

function phatson_kimquangdong()
mapid = 14
posx = 1596
posy = 3282
mapname = "Kim Quang §éng"
gold = 0
lv = 50
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_thietthaptang1()
mapid = 38
posx = 1602
posy = 3206
mapname = "ThiÕt Th¸p Mª Cung TÇng 1"
gold = 0
lv = 50
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_kinhhoangdong()
mapid = 62
posx = 1822
posy = 3473
mapname = "Kinh Hoµng §éng"
gold = 0
lv = 60
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end


function phatson_lahanduong()


mapid = 170
posx = 1577
posy = 3422
mapname = "§¹t Ma §­êng"
gold = 0
lv = 10
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_duocvuongcoc()


mapid = 157
posx = 2420
posy = 3732
mapname = "D­îc V­¬ng Cèc"
gold = 0
lv = 10
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_nhandangson()


mapid = 163
posx = 674
posy = 2854
mapname = "Nh¹n §Æng S¬n"
gold = 0
lv = 10
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_tanlang()


mapid = 158
posx = 2224
posy = 2847
mapname = "TÇn L¨ng"
gold = 0
lv = 20
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_tanthuyhoang()


mapid = 159
posx = 1607
posy = 3494
mapname = "L¨ng TÇn Thñy Hoµng"
gold = 0
lv = 30
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_kiemcactaynam()


mapid = 162
posx = 3101
posy = 3965
mapname = "KiÕm C¸c T©y Nam"
gold = 0
lv = 20
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_kiemcactrungnguyen()


mapid = 166
posx = 1692
posy = 3207
mapname = "KiÕm C¸c Trung Nguyªn"
gold = 0
lv = 20
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_thuccuongson()


mapid = 167
posx = 1641
posy = 3310
mapname = "Thôc C­¬ng S¬n"
gold = 0
lv = 30
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_duocvuongtang1()


mapid = 164
posx = 1610
posy = 3377
mapname = "D­îc V­¬ng §éng TÇng 1"
gold = 0
lv = 30
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_mecungthietthap()
Talk(1,"","B¶n ®å ch­a më, quay l¹i sau !")
end
function phatson_mecungthietthap_()
mapid = 39
posx = 1682
posy = 3128
mapname = "Mª Cung ThiÕt Th¸p"
gold = 0
lv = 60
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_toavandong()
mapid = 63
posx = 1656
posy = 3316
mapname = "Táa V©n §éng"
gold = 0
lv = 70
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_channuitruongbach()
mapid = 104
posx = 1144
posy = 3116
mapname = "Ch©n Nói Tr­êng B¹ch"
gold = 0
lv = 80
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end



function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_phucnguusondong()


mapid = 8
posx = 1643
posy = 3547
mapname = "Phôc Ng­u S¬n §«ng"
gold = 0
lv = 40
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_phucnguusontay()


mapid = 41
posx = 2076
posy = 2809
mapname = "Phôc Ng­u S¬n T©y"
gold = 0
lv = 40
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_diemthuongson()


mapid = 168
posx = 1608
posy = 3207
mapname = "§iÓm Th­¬ng S¬n"
gold = 0
lv = 40
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_kequandong()


mapid = 91
posx = 1592
posy = 3209
mapname = "Mª Cung Kª Qu¸n §éng"
gold = 0
lv = 50
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_matthatthieulam()


mapid = 169
posx = 1668
posy = 3366
mapname = "MËt ThÊt ThiÕu L©m"
gold = 0
lv = 50
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_diemthuongdong()


mapid = 165
posx = 1686
posy = 3091
mapname = "§iÓm Th­¬ng §éng TÇng 1"
gold = 0
lv = 50
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_thientamdong()


mapid = 50
posx = 1586
posy = 3214
mapname = "Thiªn T©m §éng"
gold = 150
lv = 60
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_hoanhsonphai()


mapid = 171
posx = 1487
posy = 3548
mapname = "Hoµnh S¬n Ph¸i"
gold = 150
lv = 60
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_linhcocdong()


mapid = 172
posx = 1634
posy = 3265
mapname = "Linh Cèc §éng"
gold = 150
lv = 60
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_daitudong()


mapid = 173
posx = 1703
posy = 2860
mapname = "§¹i Tï §éng"
gold = 300
lv = 70
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_duocvuongtang2()


mapid = 174
posx = 1553
posy = 3303
mapname = "D­îc V­¬ng §éng TÇng 2"
gold = 300
lv = 70
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_lamduquan()


mapid = 102
posx = 1611
posy = 3608
mapname = "L©m Du Quan"
gold = 300
lv = 70
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_luongthuydong()


mapid = 175
posx = 1595
posy = 3189
mapname = "L­ìng Thñy §éng"
gold = 500
lv = 80
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_duongtrungdong()


mapid = 64
posx = 1698
posy = 3405
mapname = "D­¬ng Trung §éng"
gold = 500
lv = 80
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_samacdiabieu()


mapid = 107
posx = 1616
posy = 3218
mapname = "Sa M¹c §Þa BiÓu"
gold = 500
lv = 80
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end



function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_nhanthachdong()


mapid = 180
posx = 1599
posy = 3203
mapname = "Nh¹n Th¹ch §éng"
gold = 500
lv = 80
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_tanlangtang3()


mapid = 176
posx = 1600
posy = 3200
mapname = "TÇn L¨ng TÇng 3"
gold = 500
lv = 80
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_truongbachbac()


mapid = 177
posx = 1572
posy = 3134
mapname = "Tr­êng B¹ch S¬n B¾c"
gold = 1000
lv = 90
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_samac2()
mapid = 110
posx = 1818
posy = 3414
mapname = "Sa M¹c S¬n §éng 2"
gold = 1000
lv = 90
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_samac3()
mapid = 111
posx = 1592
posy = 3240
mapname = "Sa M¹c S¬n §éng 3"
gold = 1000
lv = 90
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_canviendong()


mapid = 94
posx = 1674
posy = 3419
mapname = "C¸n Viªn §éng"
gold = 1000
lv = 90
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_duocvuongtang4()


mapid = 178
posx = 1587
posy = 3100
mapname = "D­îc V­¬ng §éng tÇng 4"
gold = 1000
lv = 90
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end
function phatson_tiencucdong()


mapid = 93
posx = 1524
posy = 3174
mapname = "TiÕn Cóc §éng"
gold = 1000
lv = 90
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

end


function phatson_manbacthaonguyen()


mapid = 21
posx = 1245
posy = 3168
mapname = "M¹n B¾c Th¶o Nguyªn"
gold = 1000
lv = 90
phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
end

function phatson_MoveMapChung(gold, lv, mapid, posx, posy, mapname)
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
return
end
Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end

		NewWorld(mapid, posx, posy)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..mapname.."")

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
--Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
--return
--end
--Pay(gold)
if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end
dichuyenchung(vt)
end


function move_tuyetbaodong()
vt = 33
gold = 5000
lv = 90

if GetLevel() < lv then
Talk(1,"","§¼ng cÊp d­íi "..lv.." kh«ng thÓ lªn b¶n ®å nµy !")
return
end
if GetCash() < gold then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
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
	Talk(1,"","§¼ng cÊp cña b¹n kh«ng ®ñ "..lv..", kh«ng thÓ lªn b¶n ®å nµy")
	return
end
--if GetCash() < gold then
--Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
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
	Talk(1,"","§¼ng cÊp cña b¹n kh«ng ®ñ "..lv..", kh«ng thÓ lªn b¶n ®å nµy")
	return
end
--if GetCash() < gold then
--Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
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
	Talk(1,"","§¼ng cÊp cña b¹n kh«ng ®ñ "..lv..", kh«ng thÓ lªn b¶n ®å nµy")
	return
end
--if GetCash() < gold then
--Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
--return
--end
--Pay(gold)
dichuyenchung(vt)
end

function dichuyenchung(vt)
if vt ~= 0 then
		NewWorld(DoChi_Map[vt][1],DoChi_Map[vt][3],DoChi_Map[vt][4])
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..DoChi_Map[vt][2].."")
else
	Talk(1,"","Lçi qu¸ ph¹m vi b¶n ®å, liªn hÖ Admin ®Ó gi¶i quyÕt !") 
end
end

function tanthu()
		NewWorld(76,1593,3188)
		SetFightState(1)
		Msg2Player("Ngåi yªn, chóng ta ®i §µo Hoa Nguyªn ....")
end

function dichuyendatau()
if GetTask(85) == 1 or GetTask(85) == 2 then
	if GetTask(88) > 0 and GetTask(88) <= getn(DoChi_Map) then
		NewWorld(DoChi_Map[GetTask(88)][1],DoChi_Map[GetTask(88)][3],DoChi_Map[GetTask(88)][4])
		SetFightState(1)
		SetPunish(0)
		SetLogoutRV(0)
		Msg2Player("Ngåi yªn, chóng ta ®Õn <color=yellow>"..DoChi_Map[GetTask(88)][2].."")
	else
		Talk(1,"","Lçi täa ®é, liªn hÖ Admin ®Ó gi¶i quyÕt !")
	end
end
end

function namnhactran()
NewWorld(54,1584,3101)
Msg2Player("Ngåi yªn, chóng ta ®i Nam Nh¹c TrÊn ")
end
function DaDiQua()
if GetTask(325) > getn(MANG_TRAP) then
SetTask(325,0)
end
if GetTask(323) ~= 0 and GetTask(324) == 0 and GetTask(325) == 0 then
	SayNew("<color=blue>Xa Phu:<color> Vui lßng chän ®Þa ®iÓm ®· ®i qua ",2,
	""..CheckDiaDiem(GetTask(323)).." /DaDiQua1",
	"Tho¸t./no")
elseif GetTask(323) ~= 0 and GetTask(324) ~= 0 and GetTask(325) == 0 then
	SayNew("<color=blue>Xa Phu:<color> Vui lßng chän ®Þa ®iÓm ®· ®i qua ",3,
	""..CheckDiaDiem(GetTask(323)).." /DaDiQua1",
	""..CheckDiaDiem(GetTask(324)).." /DaDiQua1",
	"Tho¸t./no")
elseif GetTask(323) ~= 0 and GetTask(324) ~= 0 and GetTask(325) ~= 0 then
	SayNew("<color=blue>Xa Phu:<color> Vui lßng chän ®Þa ®iÓm ®· ®i qua ",4,
	""..CheckDiaDiem(GetTask(323)).." /DaDiQua1",
	""..CheckDiaDiem(GetTask(324)).." /DaDiQua1",
	""..CheckDiaDiem(GetTask(325)).." /DaDiQua1",
	"Tho¸t./no")
else
	Talk(1,"","Ng­¬i ch­a tõng ®i qua b¶n ®å nµo, ta kh«ng thÓ gióp nhµ ng­¬i ®­îc !")
end
end
function DaDiQua1(nsel)
if GetLevel() >= 50 and GetCash() < 500 then
Talk(1,"","Ng­¬i kh«ng ®ñ 500 l­îng, kh«ng thÓ di chuyÓn !")
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
	Msg2Player("Ngåi yªn, chóng ta ®i <color=yellow>"..CheckDiaDiem(task).."....")
else
Msg2Player("Lçi d÷ liÖu, liªn hÖ Admin ®Ó söa")
end
end

function roibando()
if GetFaction() == "" then
Talk(1,"","B¹n ch­a gia nhËp ph¸i, kh«ng thÓ rêi khái b¶n ®å !")
return
end
	if GetTask(131) == 10000 then
		SetTask(115,10000)
	end
	Msg2Player("B¹n ®· rêi khái Long TuyÒn Th«n vµ tham gia b¶n ®å Ba L¨ng HuyÖn ")
	SetRevPos(53,19)
	NewWorld(53,200*8,200*16)
end

function vsdao()
if GetLevel() < 90 then
Talk(1,"","§¼ng cÊp d­íi 90 kh«ng thÓ vµo Vi S¬n §¶o")
return
end
if GetCurCamp() == 0 or GetCamp() == 0 then
Talk(1,"","B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ lªn Vi S¬n §¶o")
return
end

ngay = tonumber(date("%d"))

SayNew("<color=green>Xa Phu<color> B¹n sÏ mÊt <color=yellow>20 tÊm MËt §å ThÇn BÝ<color> hoÆc <color=yellow>100 ®iÓm MËt §å ThÇn BÝ <color> b¹n cã ch¾c ch¾n muèn vµo kh«ng ?",3,
"Dïng 20 TÊm MËt §å /vsdao1",
"Dïng 100 ®iÓm MËt §å /vsdao1",
"§Ó ta suy nghÜ l¹i /no")
end



function vsdao1(nsel)
gio = tonumber(date("%H"))
--if (gio < 11 or gio > 22) and GetAccount() ~= "adphuchung" then
--Talk(1,"","ChØ ®­îc lªn Vi S¬n §¶o tõ 11h - 23h mçi ngµy")
--return
--end

numtb = 20
i = nsel + 1
if i == 1 then
	if GetItemCount(253) < numtb then
	Talk(1,"","B¹n kh«ng mang theo "..numtb.." tÊm mËt ®å thÇn bÝ, kh«ng thÓ lªn ®¶o !")
	return
	end
	for i=1,numtb do DelItem(253) end
else
	if GetTask(494) < 100 then
	Talk(1,"","B¹n kh«ng ®ñ 100 ®iÓm MËt §å ThÇn BÝ, kh«ng thÓ lªn ®¶o !")
	return
	end
	SetTask(494, GetTask(494) - 100)
	Msg2Player("<color=green>Ng­¬i cßn: "..GetTask(494).." ®iÓm MËt §å ThÇn BÝ ")
end
SetPKState(1)
BlockPKState(1)
SetRevPos(24,60)
Msg2Player("§· di chuyÓn ®Õn b¶n ®å Vi S¬n §¶o !")
Msg2SubWorld("§¹i hiÖp [<color=green>"..GetName().."<color>] ®· vµo Vi S¬n §¶o !")
--Msg2Player("<color=yellow>Tho¸t game t¹i Vi S¬n §¶o trong thêi gian 17h00 - 17h59 sÏ gi÷ nguyªn vÞ trÝ. Cßn l¹i sÏ ®­îc ®­a vÒ Ba Lang HuyÖn")
SetDeathScript("\\script\\visondao\\playerdie.lua");

SetFightState(0)
NewWorld(24,1395,2783)

end


function minhnguyet()
	SetFightState(0)
	Msg2Player("§ang di chuyÓn sang b¶n ®å Minh NguyÖt TrÊn ")
	NewWorld(13,1597,3277)
end

function bao()
Talk(1,"","§Ó vµo b¶n ®å nµy c¸c b¹n qua <color=yellow>Chu TiÕn TrÊn<color> ®Ó di chuyÓn")
end

function ddnlcduatop()
if GetTask(115) == 10000 then
w,x,y = GetWorldPos()
	SayNew("<color=green>Xa Phu<color> Chän khu vùc luyÖn c«ng:",6,
	"Ch©n Nói Tr­êng B¹ch (cÊp 80)/channuitruongbach",
	"Sa M¹c §Þa BiÓu (CÊp 90)/samacdiabieu",
	"Tr­êng Ca M«n 2 (CÊp 90)/truongcamon2",
	"D­¬ng Trung §éng (CÊp 90)/duongtrung1",
	"Cæ D­¬ng §éng (CÊp 90)/coduong1",
	"Tho¸t./no")
else
	Talk(1,"","Nh©n vËt ®ua top míi ®­îc vµo b¶n ®å nµy !")
end
end

function ddnlc()
w,X,Y = GetWorldPos()
if w == 53 or w == 4 or w == 3 or w == 66 then
SayNew("<color=green>Xa Phu<color> Chän khu vùc luyÖn c«ng:",9,
"Hoa S¬n (CÊp 10)/hoasoncanhky",
"Phôc ng­u s¬n (CÊp 20)/phucnguuson",
"TuyÕt b¸o ®éng (CÊp 30)/tuyetbaodong",
"D­îc v­¬ng ®éng (CÊp 40)/duocvuongdong",
"TÇn l¨ng (CÊp 50)/tanlang",
"Xi v­u ®éng (cÊp 60)/siviudong",
"L©m du quan (CÊp 70)/lamduquan",
"Ch©n nói tr­êng b¹ch (CÊp 80)/channuitruongbach",
"Tho¸t./no")
elseif w == 9 then
		SayNew("<color=green>Xa Phu<color> Chän khu vùc luyÖn c«ng:",9,		
		"Sa m¹c ®Þa biÓu (CÊp 90)/samacdiabieu",
		"Sa m¹c 1 (CÊp 90)/samac1",
		"Sa M¹c 2 (CÊp 90)/samac2",
		"Tr­êng Ca M«n (CÊp 90) /truongcamon2",
		"D­¬ng Trung §éng (CÊp 90)/duongtrung1",
		"Cæ D­¬ng §éng (CÊp 90)/coduong1",
		"M¹n B¾c Th¶o Nguyªn (Sù KiÖn)/macbacthaonguyen",
		"Tr­êng b¹ch s¬n nam (Sù KiÖn)/truongbachnam",
		"Tho¸t./no")
else
		Talk(1,"","Tõ thµnh thÞ nµy, ng­¬i kh«ng thÓ ®i ®Õn b¶n ®å luyÖn c«ng kh¸c")
end
end


function samac1()
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
		Msg2Player("Ngåi yªn, chóng ta ®i Sa M¹c S¬n §éng 1..........");
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
Talk(1,"","Ng­¬i kh«ng mang ®ñ 1 v¹n l­îng, kh«ng thÓ lªn b¶n ®å nµy")
return
end
		Pay(10000)
		Msg2Player("Ngåi yªn, chóng ta ®i Sa M¹c S¬n §éng 3..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(111,1592,3240)
	
end;


function samac2()
if GetLevel() < 90 then
Talk(1,"","§¼ng cÊp kh«ng ®ñ 90, kh«ng thÓ lªn b¶n ®å nµy !")
return
end

if GetCash() < 5000 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 5000 l­îng, kh«ng thÓ lªn b¶n ®å nµy")
return
end
		Pay(5000)
		Msg2Player("Ngåi yªn, chóng ta ®i Sa M¹c S¬n §éng 2..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(110,1818,3414)
		
	
end;

function samacdiabieu()
		Msg2Player("Ngåi yªn, chóng ta ®i Sa M¹c §Þa BiÓu..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(107,1616,3218) 
end
function ddnlc1()
w,X,Y = GetWorldPos()
if w == 53 or w == 3 then
SayNew("<color=green>Xa Phu<color> Chän khu vùc luyÖn c«ng:",2,
"TuyÕt b¸o ®éng 2 (CÊp 30)/tuyetbaodong1",
"Tho¸t./no")
else
		SayNew("<color=green>Xa Phu<color> Chän khu vùc luyÖn c«ng:",2,
		"Ch©n nói tr­êng b¹ch 2(CÊp 80)/channuitruongbach1",
		"Tho¸t./no")
end
end

function LastReturn()


	ReturnFromPortal()
	SetPunish(0)
end




function dtt()
	if GetTask(196) == 0 then
	SayNew("<color=green>Xa Phu<color>: B¹n cã ch¾c ch¾n muèn lªn §¶o TÈy tuû kh«ng ?: ",2,
	"Ta muèn tÈy tuû miÔn phÝ/ditt",
	"Tho¸t./no")
	elseif GetTask(196) >= 1 then
		SayNewEx({"<color=green>Xa Phu<color> : Ng­¬i muèn ®Ó ®¶o tÈy tuû lµm g× ?",
"Ta ®Õn ®Ó TÈy ®iÓm Kü n¨ng./comeTT",
"Ta ®Õn ®Ó TÈy ®iÓm TiÒm n¨ng/comeTT",
"TÈy ®iÓm TiÒm n¨ng vµ Kü N¨ng./comeTT",
"Quay l¹i./main","Tho¸t./Exit"})
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
		Msg2Player("Ngåi yªn! §ang ®i ®Õn §¶o TÈy tuû...")
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
		Talk(1,"","<color=green>Xa Phu<color> : Muèn ®Ó ®­îc ®¶o tÈy tuû cÇn cã : 1 <color=pink>Tö thuû tinh<color>,1 <color=green>Lôc thuû tinh<color>,1 <color=blue>Lam thuû tinh<color>.")
		end
	elseif id == 2 then
		if GetItemCount(31) >= 6 then
for k=1,6 do DelItem(31) end
			SetTask(196,4)
			MoveNPC(20,200,200,9,8,0,0);
			SetPunish(0)
			Msg2Player("Ngåi yªn! §ang ®i ®Õn §¶o TÈy tuû...")
		SetRevPos(14);
		else
		Talk(1,"","<color=green>Xa Phu<color> : Muèn ®Ó ®¶o tÈy tuû cÇn cã : 6 <color=green>T×nh hång B¶o th¹ch<color>.")
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
			Msg2Player("Ngåi yªn! §ang ®i ®Õn §¶o TÈy tuû...")
SetRevPos(14);
		else
		Talk(1,"","<color=green>Xa Phu<color> : Muèn ®Õn §¶o TÈy tuû cÇn cã : 1 <color=pink>Tö thuû tinh<color>,1 <color=green>Lôc thuû tinh<color>,1 <color=blue>Lam thuû tinh<color>, 6 <color=green>T×nh hång B¶o th¹ch<color>")
		end
	end
end;






function thanhthi()
w,x,y = GetWorldPos()
if w == 53 then    -- Neu Ban do == 53 thi
	SayNew("Chän Thµnh ThÞ muèn ®Õn : ",4,
	"T­¬ng D­¬ng /tuongduong",
	--"Minh NguyÖt TrÊn [Sù KiÖn]/minhnguyettran",
	--"Vi S¬n §¶o [Sù KiÖn]/vsdao",
	"Hoa S¬n Ph¸i [Sù KiÖn]/movehoasonphai",
	"§µo Hoa Nguyªn [LuyÖn Skill]/hoanganh_daohoanguyen",
	"Tho¸t./no")

	elseif w == 161 then --Long Mon Tran
	SayNew("Chän Thµnh ThÞ muèn ®Õn : ",4,
	"Ph­îng T­êng /phuongtuong",
	--"Vi S¬n §¶o [Sù KiÖn]/vsdao",
	--"Minh NguyÖt TrÊn [Sù KiÖn]/minhnguyettran",
	"Hoa S¬n Ph¸i [Sù KiÖn]/movehoasonphai",
	"§µo Hoa Nguyªn [LuyÖn Skill]/hoanganh_daohoanguyen",
	"Tho¸t./no")
	
	elseif w == 160 then --thach co tran
	SayNew("Chän Thµnh ThÞ muèn ®Õn : ",4,
	"§¹i Lý /daily",
	--"Vi S¬n §¶o [Sù KiÖn]/vsdao",
	--"Minh NguyÖt TrÊn [Sù KiÖn]/minhnguyettran",
	"Hoa S¬n Ph¸i [Sù KiÖn]/movehoasonphai",
	"§µo Hoa Nguyªn [LuyÖn Skill]/hoanganh_daohoanguyen",
	"Tho¸t./no")
	
	elseif w == 17 then -- phuong tuong 
	SayNew("Chän Thµnh ThÞ muèn ®Õn : ",4,
	"§¹i Lý /daily",
	"T­¬ng D­¬ng /tuongduong",
	"Long M«n TrÊn /hoanganh_longmontran",
	"Tho¸t./no")
	
	elseif w == 11 then -- dai ly
	SayNew("Chän Thµnh ThÞ muèn ®Õn : ",4,
	"T­¬ng D­¬ng /tuongduong",
	"Ph­îng T­êng /phuongtuong",
	"Th¹ch Cæ TrÊn /hoanganh_thachcotran",
	"Tho¸t./no")
	
	elseif w == 15 then  -- tuong duong
	SayNew("Chän Thµnh ThÞ muèn ®Õn : ",4,
	"Ph­îng T­êng /phuongtuong",
	"§¹i Lý /daily",
	"Ba L¨ng HuyÖn /balanghuyen",
	"Tho¸t./no")
	
	elseif w == 55 then -- man bac thao nguyen
	SayNew("Chän Thµnh ThÞ muèn ®Õn : ",4,
	"Ba L¨ng HuyÖn /balanghuyen",
	"Th¹ch Cæ TrÊn /hoanganh_thachcotran",
	"Long M«n TrÊn /hoanganh_longmontran",
	"Tho¸t./no")

end
end;

function hoanganh_daohoanguyen()
SetFightState(0)
NewWorld(55,1621,3223);
Msg2Player("Ngåi yªn, chóng ta di chuyÓn §Õn §µo Hoa Nguyªn")
end

function hoanganh_thachcotran()
SetFightState(0)
NewWorld(160,1620,3195);
Msg2Player("Ngåi yªn, chóng ta di chuyÓn vÒ Th¹ch Cæ TrÊn ")
end

function hoanganh_longmontran()
SetFightState(0)   -- Trang thai chien dau hay phi chien dau (0 - phi chien dau, 1 - chien dau)
NewWorld(161,1928,4436);   -- Move Map
Msg2Player("Ngåi yªn, chóng ta di chuyÓn vÒ Long M«n TrÊn ")  -- Thong bao
end


function minhnguyettran()
SetFightState(0)
NewWorld(58 , 1599,3267)
Msg2Player("Ngåi yªn, chóng ta ®i Minh NguyÖt TrÊn")
end
function balanghuyen()
SetFightState(0)
NewWorld(53,197*8,202*16);
Msg2Player("Ngåi yªn, chóng ta di chuyÓn vÒ Ba L¨ng HuyÖn ")
end

function giangtan()

SetFightState(0)
NewWorld(66,432 * 8, 382*16)
Msg2Player("Ngåi yªn, chóng ta di chuyÓn vÒ Giang T©n Th«n ")

end

function longtuyen()
if GetFaction() == "" then
Talk(1,"","Ch­a cã m«n ph¸i kh«ng ®­îc vµo Giang T©n Th«n !")
return
end
if GetTask(115) ~= 10000 then
Talk(1,"","ChØ cã nh©n vËt §ua Top míi ®­îc vµo !")
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
Talk(1,"","B¹n kh«ng ®ñ 200 l­îng kh«ng thÓ di chuyÓn §¹i Lý !")
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
Talk(1,"","B¹n kh«ng ®ñ 200 l­îng kh«ng thÓ di chuyÓn Thµnh §« !")
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
Talk(1,"","B¹n kh«ng ®ñ 200 l­îng kh«ng thÓ di chuyÓn Thµnh §« !")
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
Msg2Player("B¹n ®· ®Õn §µo Hoa Nguyªn !");
SetFightState(0);
SetRevPos(0);
SetLogoutRV(0)
NewWorld(4, toadox, toadoy);
else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>3 Thuû tinh kh¸c nhau vµ 6 T×nh hång B¶o th¹ch<color>, kh«ng thÓ di chuyÓn")
end 
end;

function hoasoncanhky()

if  GetCurCamp() == 0  then
Talk(1,"","B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ tham gia b¶n ®å sù kiÖn")
return
end
Gold = 0
	if (GetCash() >= Gold) then
			Pay(Gold)
			toadox = 325*8
			toadoy = 222*16
			Msg2Player("Ngåi yªn! Chóng ta ®i Hoa s¬n c¶nh kü tr­êng..........");
			SetFightState(1);
			SetLogoutRV(0)
			SetPunish(0)
			NewWorld(2, toadox, toadoy);     
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>"..Gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;

function hoasoncanhky2()
	if (GetCash() >= 0) then
			toadox = 325*8
			toadoy = 222*16
			Msg2Player("Ngåi yªn! Chóng ta ®i Hoa s¬n c¶nh kü tr­êng..........");
			SetFightState(1);
			SetLogoutRV(0)
			SetPunish(0)
			NewWorld(86, toadox, toadoy);

		      
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>100 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;


function phucnguuson()
Gold = 0
	if (GetCash() >= Gold) then
		Pay(Gold)
toadox = 206*8
toadoy = 223*16
Msg2Player("Ngåi yªn! Chóng ta ®i Phôc Ng­u S¬n..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(8, toadox, toadoy);
		

     
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>"..Gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;
function phucnguuson2()
	if (GetCash() >= 0) then
		--Pay(200)
toadox = 206*8
toadoy = 223*16
Msg2Player("Ngåi yªn! Chóng ta ®i Phôc Ng­u S¬n..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(87, toadox, toadoy);
		

     
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>200 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;

function tuyetbaodong()
Gold = 0
if (GetCash() >= Gold) then
		Pay(Gold)
toadox = 1614 - 8 + random(0,16)
toadoy = 3300 - 16 + random(0,32)
Msg2Player("Ngåi yªn! Chóng ta ®i TuyÕt B¸o §éng ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(100, toadox, toadoy);

        
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>"..Gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;
function tuyetbaodong2()
if (GetCash() >= 0) then
		--Pay(300)
toadox = 1614 - 8 + random(0,16)
toadoy = 3300 - 16 + random(0,32)
Msg2Player("Ngåi yªn! Chóng ta ®i TuyÕt B¸o §éng ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(88, toadox, toadoy);

        
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>300 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;

function duocvuongdong()
	if (GetCash() >= 0) then
		Pay(0)
toadox = 200*8
toadoy = 195*16
Msg2Player("Ngåi yªn! Chóng ta ®i D­îc V­¬ng §éng ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(101, toadox, toadoy);

       
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>400 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;
function duocvuongdong2()
	if (GetCash() >= 0) then
		--Pay(400)
toadox = 200*8
toadoy = 195*16
Msg2Player("Ngåi yªn! Chóng ta ®i D­îc V­¬ng §éng ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(89, toadox, toadoy);

       
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>400 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;




function tanlang()
if (GetCash() >= 0) then
		Pay(0)
toadox = 204*8
toadoy = 203*16
Msg2Player("Ngåi yªn! Chóng ta ®i TÇn l¨ng..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(187, toadox, toadoy);

      
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>500 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;
function tanlang2()
if GetLevel() < 50 then
Talk(1,"","§¼ng cÊp d­íi 50 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
if (GetCash() >= 0) then
		--Pay(500)
toadox = 204*8
toadoy = 203*16
Msg2Player("Ngåi yªn! Chóng ta ®i TÇn l¨ng..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(90, toadox, toadoy);

      
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>500 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;


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

if GetItemCount(686) == 0 then
Talk(1,"","B¹n kh«ng mang theo <color=red>LÖnh Bµi Map 100 <color>,kh«ng thÓ di chuyÓn")
Msg2Player("H·y ®Õn ThÇn BÝ Th­¬ng Nh©n ®Ó mua LÖnh Bµi !")
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
		Msg2Player("Ngåi yªn! Chóng ta ®i Kháa Lang §éng ..........");
end;

function siviudong2()
if GetLevel() < 130 then
Talk(1,"","§¼ng cÊp d­íi 130 kh«ng thÓ vµo b¶n ®å nµy !")
return
end


	Msg2Player("Ngåi yªn! Chóng ta ®i Xi V­u §éng ..........");
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
Msg2Player("Ngåi yªn! Chóng ta ®i L©m Du Quan ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(102, toadox, toadoy);

     
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>700 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;
function lamduquan2()

	if (GetCash() >= 0) then
		--Pay(700)
toadox = 1642 - 8 + random(0,16)
toadoy = 3575 - 16 + random(0,32)
Msg2Player("Ngåi yªn! Chóng ta ®i L©m Du Quan ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(92, toadox, toadoy);

     
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>700 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;


function channuitruongbach()
	toadox = 1144 - 8 + random(0,16)
	toadoy = 3116 - 16 + random(0,32)
	Msg2Player("Ngåi yªn! Chóng ta ®i Ch©n Nói Tr­êng B¹ch ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(104, toadox, toadoy);

   
end;
function channuitruongbach2()
if GetLevel() < 80 then
Talk(1,"","§¼ng cÊp d­íi 80 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
if (GetCash() >= 0) then
		--Pay(800)
toadox = 1144 - 8 + random(0,16)
toadoy = 3116 - 16 + random(0,32)
Msg2Player("Ngåi yªn! Chóng ta ®i Ch©n Nói Tr­êng B¹ch ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(93, toadox, toadoy);

   
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>800 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;

function truongbs()
	if (GetCash() >= 2000) then
		Pay(2000)
toadox = 1589 - 8 + random(0,16)
toadoy = 3160 - 16 + random(0,32)
Msg2Player("Ngåi yªn! Chóng ta ®i Tr­êng B¹ch S¬n ..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(105, toadox, toadoy);
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>2000 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;


function truongbachnam()
if GetLevel() < 90 then
Talk(1,"","§¼ng cÊp d­íi 90 ko thÓ lªn b¶n ®å 9x !")
return
end

	if (GetCash() >= 0) then
		Pay(0)
toadox = 1552 - 8 + random(0,16)
toadoy = 3104 - 16 + random(0,32)
Msg2Player("Ngåi yªn! Chóng ta ®i Tr­êng B¹ch S¬n Nam..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(22, toadox, toadoy);

	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>2000 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;





function maccaoquat()
if GetLevel() < 90 then
Talk(1,"","§¼ng cÊp kh«ng ®ñ 90, kh«ng thÓ lªn b¶n ®å nµy !")
return
end

gold = 5000
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ngåi yªn! Chóng ta ®i M¹c Cao QuËt..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(79,1870,3408);
	else
		Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;


function macbacthaonguyen()
if GetLevel() < 90 then
Talk(1,"","§¼ng cÊp d­íi 90 ko thÓ lªn b¶n ®å 9x !")
return
end

gold = 0
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ngåi yªn! Chóng ta ®i M¹n B¾c Th¶o Nguyªn..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(21,1237, 3183);

	else
		Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;
function macbacthaonguyen2()
if GetLevel() < 90 then
Talk(1,"","§¼ng cÊp d­íi 90 kh«ng thÓ vµo b¶n ®å nµy !")
return
end

gold = 0
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ngåi yªn! Chóng ta ®i M¹n B¾c Th¶o Nguyªn..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(96,1237, 3183);

	else
		Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;
function  no()

end;



function hoasoncanhky1()
	if (GetCash() >= 100) then
			Pay(100)
			toadox = 325*8
			toadoy = 222*16
			Msg2Player("Ngåi yªn! Chóng ta ®i Hoa s¬n c¶nh kü tr­êng 2..........");
			
			SetFightState(1);
			SetLogoutRV(0)
			SetPunish(0)

			NewWorld(86, toadox, toadoy);

		      
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>100 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;

function phucnguuson1()
	if (GetCash() >= 200) then
		Pay(200)
toadox = 206*8
toadoy = 223*16


Msg2Player("Ngåi yªn! Chóng ta ®i Phôc Ng­u S¬n 2..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(87, toadox, toadoy);
		

     
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>200 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;


function tuyetbaodong1()
if (GetCash() >= 300) then
		Pay(300)
toadox = 1614 - 8 + random(0,16)
toadoy = 3300 - 16 + random(0,32)


Msg2Player("Ngåi yªn! Chóng ta ®i TuyÕt B¸o §éng 2..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(88, toadox, toadoy);

        
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>300 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;


function duocvuongdong1()
	if (GetCash() >= 400) then
		Pay(400)
toadox = 200*8
toadoy = 195*16
Msg2Player("Ngåi yªn! Chóng ta ®i D­îc V­¬ng §éng 2..........");


		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(89, toadox, toadoy);

       
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>400 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;





function tanlang1()
if (GetCash() >= 500) then
		Pay(500)
toadox = 204*8
toadoy = 203*16


Msg2Player("Ngåi yªn! Chóng ta ®i TÇn l¨ng 2..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(90, toadox, toadoy);

      
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>500 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;



function siviudong1()
	if (GetCash() >= 0) then
		Pay(0)
toadox = 224*8
toadoy = 189*16


Msg2Player("Ngåi yªn! Chóng ta ®i Xi V­u §éng 2..........");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(91, toadox, toadoy);

      
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>600 luong<color>, kh«ng thÓ di chuyÓn")
	end
end;


function pld()
if GetLevel() < 90 then
Talk(1,"","§¼ng cÊp d­íi 90 kh«ng thÓ tham gia Phong L¨ng §é ")
return
end
if GetItemCount(135) == 0 then
Talk(1,"","B¹n kh«ng mang theo <color=red>LÖnh Bµi Phong L¨ng §é <color>,kh«ng thÓ di chuyÓn")
Msg2Player("H·y ®Õn ThÇn BÝ Th­¬ng Nh©n ®Ó mua LÖnh Bµi !")
return
end

if (GetCash() >= 5000) then
		Pay(5000)
		Msg2Player("Ngåi yªn! Chóng ta ®i Phong L¨ng §é ..........");
		SetFightState(1);
		SetLogoutRV(1)
		SetRevPos(19)
		SetPunish(0)
		SetTask(117,5*18) -- bat dau bat tu
		NewWorld(46,1125,3189)	-- Map : Phong Lang do
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>5000 luong<color>, kh«ng thÓ di chuyÓn")
	end
end
