Include("\\script\\daihoianhhung\\danhsach.lua")
Include("\\script\\daihoianhhung\\DanhSachThiDau.txt")
--Include("\\script\\daihoianhhung\\danhsachthidau_next.lua")
Include("\\script\\daihoianhhung\\danhsachnhanthuong.lua")

Include("\\script\\lib\\thuvien.lua")
soluonggioihan = 64
soluongthanhvien = 2
phi = 2000000
levelyc = 100
ngaythidau = 16
TinhTrangThiDau = 0
ThoiGianThiDau = "19h00 ngµy 15/01/2022"


function main()
	SayNew("HiÖn t¹i ®· kÕt thóc <color=yellow>§¹i Héi Anh Hïng LÇn Thø NhÊt<color>, ng­êi t×m ta cã viÖc g×?",2,
	"Ta ®Õn nhËn th­ëng §¹i Héi Anh Hïng /nhanphanthuong",
	"Tho¸t./no")
end
function main__() -- tu dong
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))


if GetLevel() < levelyc then
Talk(1,"","§¼ng cÊp tèi thiÓu tham gia §¹i Héi Anh Hïng lµ: CÊp "..levelyc.."")
return
end

if (ngay < 16) or (ngay == 16 and gio < 17) then
		SayNew("HiÖn t¹i ®· cã: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ®éi <color>®¨ng ký.\nThêi gian thi ®Êu: <color=yellow>"..ThoiGianThiDau.."<color>\nPhÝ b¸o danh: "..(phi/10000).." v¹n l­îng / 1 ng­êi",3,
		"Ta muèn b¸o danh §¹i Héi Anh Hïng /baodanh",
		"Ta muèn kiÓm tra t×nh h×nh chiÕn ®éi /kiemtra",
		"Tho¸t./no")
elseif (ngay == 16 and (gio == 19 or gio == 20)) then
		if GetAccount() == "vantoi" then
			SayNew("Chøc n¨ng admin: ",4,
			"Reload danh sach/admin_reload",
			"B¾t ®Çu b¸o danh /admin_setvaocho",
			"KÕt thóc b¸o danh/admin_ketthucthidau",
			"Tho¸t./no")
		else
			w,x,y = GetWorldPos()
			if w == 53 then
				SayNew("HiÖn t¹i ®· cã: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ®éi <color>®¨ng ký \n",2,
				"Ta muèn vµo Khu Vùc ChiÕn §Êu /thucong_thamgia",
				"Tho¸t./no")
			elseif w == 40 then
				SayNew("HiÖn t¹i ®· cã: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ®éi <color>®¨ng ký \n",2,
				"Ta muèn b¸o danh thi ®Êu /thucong_baodanh",
				"Tho¸t./no")
			end
		end
else
		Talk(1,"","ThÓ lÖ thi ®Êu: <color=yellow>"..soluongthanhvien.." vs "..soluongthanhvien.."<color>\nPhÝ ®¨ng ký: <color=yellow>"..phi.." l­îng mçi cao thñ <color>\nB¾t ®Çu ®¨ng ký: <color=yellow>17h00 13/01/2022 - 17h00 15/01/2022<color>\nThêi gian thi ®Êu: <color=yellow>"..ThoiGianThiDau.."")
end
end
function admin_reload()
ReLoadScript("\\script\\daihoianhhung\\sugia.lua")
Msg2Player("§· reload danh s¸ch míi nhÊt !")

end
TrangThaiAdmin = 0

function admin_ketthucthidau()
TrangThaiAdmin = 0
Msg2Player("§· kÕt thóc b¸o danh !")
Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=yellow>Thêi gian b¸o danh ®· kÕt thóc, c¸c ®éi chuÈn bÞ !!!!!!!!")
end
function admin_setvaocho()
if TrangThaiAdmin ~= 0 then
Talk(1,"","Ch­a kÕt thóc trËn cò, kh«ng thÓ b¾t ®Çu !")
return
end
TrangThaiAdmin = 1000 -- Bat dau vao thi dau

Msg2Player("<color=yellow>§· b¾t ®Çu vµo thi ®Çu !")
Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=yellow>HiÖn t¹i ®ang trong thêi gian b¸o danh thi ®Êu, mäi ng­êi h·y ®Õn héi tr­êng gÆp Sø Gi¶ Anh Hïng ®Ó vµo khu vùc chê thi ®Êu !")
Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=yellow>Thêi gian b¸o danh: 3 phót")
end

function thucong_baodanh()
if TrangThaiAdmin ~= 1000 then
Talk(1,"","HiÖn t¹i kh«ng ph¶i thêi gian b¸o danh, kh«ng thÓ vµo !")
return
end

sl1 = GetItemCountAll(1,10,0,1)
sl2 = GetItemCountAll(1,10,0,2)
sl3 = GetItemCountAll(1,10,0,3)

if sl1 > 0 or sl2 > 0 or sl3 > 0 then
Talk(1,"","B¹n kh«ng ®­îc mang D­îc PhÈm ®Æc biÖt vµo l«i ®µi, h·y sö dông hÕt míi cã thÓ vµo !")
Msg2Player("Cã "..sl1.." Ngò Hoa Ngäc Lé Hoµn §Æc BiÖt !")
Msg2Player("Cã "..sl2.." Cöu ChuyÓn Hoµn Hån §an §Æc BiÖt !")
Msg2Player("Cã "..sl3.." Håi Thiªn T¸i T¹o §¬n !")
return
end


effect = checkEffect() 
if effect ~= 0 then
Talk(1,"","B¹n vui lßng ®¨ng nhËp l¹i ®Ó <color=yellow>lo¹i bá tÊt c¶ HiÖu øng <color>cßn hiÖu qu¶ !")
Msg2Player("M· ID Effect: "..effect.."")
return
end
stt = checkdanhsachdangky()
if stt == 0 then
Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch thi ®Êu, kh«ng ®­îc vµo khu vùc chê !")
return
end


checkvao = 0
for i=1,getn(DANHSACHTHIDAU) do
		if DANHSACHTHIDAU[i][1] == stt then
			SetFightState(0)
			SetPunish(1);
			SetLogoutRV(1)
			SetPKState(1)
			BlockPKState(1)
			SetCurCamp(1)
			SetTempRevPos(40 ,1569*32, 3217*32)
			NewWorld(43,TOADO[i][1] * 8,TOADO[i][2] * 16)
			Msg2SubWorld(""..GetName().." ®· vµo <color=blue>khu vùc "..i.."")
			checkvao = 1
			break;
		elseif DANHSACHTHIDAU[i][2] == stt then
			SetFightState(0)
			SetPunish(1);
			SetLogoutRV(1)
			SetPKState(1)
			BlockPKState(1)
			SetCurCamp(2)
			SetTempRevPos(40 ,1569*32, 3217*32)
			NewWorld(43,TOADO[i][1] * 8,TOADO[i][2] * 16)
			Msg2SubWorld(""..GetName().." ®· vµo <color=blue>khu vùc "..i.."")
			checkvao = 1
			break;
		end
end

if checkvao == 0 then
Talk(1,"","§éi cña b¹n kh«ng cã tªn trong danh s¸ch thi ®Êu vßng nµy, vui lßng liªn hÖ Admin nÕu cã sai xãt !")
end
end


function main_() -- Thu cong
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))


if GetLevel() < levelyc then
Talk(1,"","§¼ng cÊp tèi thiÓu tham gia §¹i Héi Anh Hïng lµ: CÊp "..levelyc.."")
return
end

--if (ngay == 20) or (ngay == 21 and gio < 17) then
--		SayNew("HiÖn t¹i ®· cã: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ®éi <color>®¨ng ký.\nThêi gian thi ®Êu: <color=yellow>"..ThoiGianThiDau.."<color>\nPhÝ b¸o danh: "..(phi/10000).." v¹n l­îng / 1 ng­êi",3,
--		"Ta muèn b¸o danh §¹i Héi Anh Hïng /baodanh",
--		"Ta muèn kiÓm tra t×nh h×nh chiÕn ®éi /kiemtra",
--		"Tho¸t./no")
		
--else
		SayNew("HiÖn t¹i ®· cã: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ®éi <color>®¨ng ký \n",2,
		"Ta muèn vµo Khu Vùc ChiÕn §Êu /thucong_thamgia",
		"Tho¸t./no")
--		Talk(1,"","ThÓ lÖ thi ®Êu: <color=yellow>3 vs 3<color>\nPhÝ ®¨ng ký: <color=yellow>300 v¹n l­îng mçi cao thñ <color>\nB¾t ®Çu ®¨ng ký: <color=yellow>17h00 20/10/2021 - 17h00 21/10/2021<color>\nThêi gian thi ®Êu: <color=yellow>"..ThoiGianThiDau.."")
--end
end

function thucong_thamgia()

sl1 = GetItemCountAll(1,10,0,1)
sl2 = GetItemCountAll(1,10,0,2)
sl3 = GetItemCountAll(1,10,0,3)

if sl1 > 0 or sl2 > 0 or sl3 > 0 then
Talk(1,"","B¹n kh«ng ®­îc mang D­îc PhÈm ®Æc biÖt vµo l«i ®µi, h·y sö dông hÕt míi cã thÓ vµo !")
Msg2Player("Cã "..sl1.." Ngò Hoa Ngäc Lé Hoµn §Æc BiÖt !")
Msg2Player("Cã "..sl2.." Cöu ChuyÓn Hoµn Hån §an §Æc BiÖt !")
Msg2Player("Cã "..sl3.." Håi Thiªn T¸i T¹o §¬n !")
return
end


effect = checkEffect() 
if effect ~= 0 then
Talk(1,"","B¹n vui lßng ®¨ng nhËp l¹i ®Ó <color=yellow>lo¹i bá tÊt c¶ HiÖu øng <color>cßn hiÖu qu¶ !")
Msg2Player("M· ID Effect: "..effect.."")
return
end

if checkdanhsachdangky() == 0 then
Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch thi ®Êu, kh«ng ®­îc vµo khu vùc chê !")
return
end

NewWorld(40,1569,3217)
SetRevPos(40,61)
SetCreateTeam(1);
SetLogoutRV(1)
SetFightState(0)
Msg2Player("B¹n ®· vµo khu vùc chê thi ®Êu")
end

function checkdanhsachdangky()
check = 0
for i=1,getn(DANH_SACH) do
	for j=1,getn(DANH_SACH[i]) do
			if GetName() == DANH_SACH[i][j][1] then
					check = i
					break;
			end
	end
end
return check
end

function main_(idx) --Tu dong
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
day,month,year = tinhngaytieptheo()
w,x,y = GetWorldPos()
if ngay > ngaythidau or (ngay == ngaythidau and gio > 19) then
Talk(1,"","Sù kiÖn ®· kÕt thóc, vui lßng ®îi cËp nhËt danh s¸ch nhËn th­ëng !")
return
end

if GetLevel() < 100 then
Talk(1,"","§¼ng cÊp tèi thiÓu tham gia §¹i Héi Anh Hïng lµ: CÊp 100")
return
end

if ngay == ngaythidau and gio >= 17 and gio < 19 then
Talk(1,"","Sù kiÖn sÏ b¾t ®Çu sau: <color=yellow>"..(18-gio).." giê "..(59-phut).." phót<color> n÷a !.")
return
end

if w == 106 then
		if TinhTrangThiDau == 1 then
		Talk(1,"","HiÖn t¹i ch­a hÕt thêi gian thi ®Êu, kh«ng thÓ kiÓm tra. Vui lßng ®îi vµ thö l¹i sau")
		return
		end
		SayNew("<color=green>Sø Gi¶ Anh Hïng<color>: H·y tiªu diÖt toµn bé §éi §èi Thñ råi h·y quay l¹i gÆp ta",3,
		"Ta ®· giµnh chiÕn th¾ng, h·y ®­a ta ®Õn trËn tiÕp theo /kiemtrachienthang",
		"NhËn M¸u MiÔn PhÝ /nhanhoithien",
		"Thoat./no")
else
	if gio == 19 and ngay == ngaythidau then
		SayNew("HiÖn t¹i ®· cã: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ®éi <color>®¨ng ký <enter>Thi ®Êu: <color=yellow>"..ThoiGianThiDau.."",4,
		"Ta muèn vµo Khu Vùc ChiÕn §Êu /thamgia",
		"KiÓm tra t×nh h×nh chiÕn ®éi /kiemtra",
	--	"nhËn th­ëng §ua Top/nhanthuong",
		"Tho¸t./no")
	else
		SayNew("HiÖn t¹i ®· cã: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ®éi <color>®¨ng ký <enter>Thi ®Êu: <color=yellow>"..ThoiGianThiDau.."<color>\nPhÝ b¸o danh: "..(phi/10000).." v¹n l­îng / 1 ng­êi",5,
		"Ta muèn b¸o danh §¹i Héi Anh Hïng /baodanh",
	--	"Thö nghiÖm vµo b¶n ®å DHAH /thunghiemmap",
		"Ta muèn kiÓm tra t×nh h×nh chiÕn ®éi /kiemtra",
	--	"Ta muèn nhËn th­ëng §ua Top/nhanthuong",
	--	"Ta ®Õn nhËn phÇn th­ëng §ua Top/nhanphanthuong",
		"Tho¸t./no")
	end
end
end

function thunghiemmap()
NewWorld(106, 235*8,227*16)
SetLogoutRV(1)
SetFightState(1)
Talk(1,"","B¹n ®· vµo b¶n ®å §¹i Héi Anh Hïng. NÕu bÞ lçi vui lßng tho¸t toµn bé game vµ cËp nhËt l¹i")
Msg2Player("<color=green>Thö nghiÖm vµo b¶n ®å §¹i Héi Anh Hïng tr¸nh viÖc khi sù kiÖn diÔn ra bÞ lçi do ch­a cËp nhËt. NÕu ai ®· vµo thµnh c«ng th× kh«ng cÇn cËp nhËt n÷a !")
end

function nhanhoithien()
if GetFightState() == 0 then
	for i=1,20 do
		idxitem = AddItem(1,4,0,5,0,0,0)
		SetItemLock(idxitem)
	end	
	Msg2Player("B¹n nhËn ®­îc 20 Ngò Hoa Ngäc Lé Hoµn")
else
	Talk(1,"","Trong lóc thi ®Êu, kh«ng ®­îc nhËn")
end
end
function nhanphanthuong()

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ 6 x 5 « trèng, kh«ng thÓ nhËn th­ëng !")
	return
end

vitri = checktennhanthuong()
if vitri == 0 then
Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch nhËn th­ëng §¹i Héi Anh Hïng")
return
end

	if 	PHAN_THUONG[vitri][3] == 1 then	
	
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Top 1 §¹i Héi Anh Hïng:")	
		AddEventItem(691)
		AddEventItem(691)
		Msg2SubWorld("<color=yellow>- 2 R­¬ng An Bang")	

		thoigian = tonumber(date("%H%M%d%m"))
		PHAN_THUONG[vitri][1] = thoigian
		PHAN_THUONG[vitri][3] = 9999
		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)
	elseif PHAN_THUONG[vitri][3] == 2 then
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Top 2 §¹i Héi Anh Hïng:")	

		AddEventItem(692)
		AddEventItem(691)
		Msg2SubWorld("<color=yellow>- 1 R­¬ng An Bang, 1 R­¬ng §Þnh Quèc")	

		thoigian = tonumber(date("%H%M%d%m"))
		PHAN_THUONG[vitri][1] = thoigian
		PHAN_THUONG[vitri][3] = 9999
		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)
	elseif PHAN_THUONG[vitri][3] == 3 then
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Top 3 §¹i Héi Anh Hïng:")		
		
		AddEventItem(692)
		AddEventItem(692)
		Msg2SubWorld("<color=yellow>- 2 R­¬ng §Þnh Quèc")	
		
		thoigian = tonumber(date("%H%M%d%m"))
		PHAN_THUONG[vitri][1] = thoigian
		PHAN_THUONG[vitri][3] = 9999
		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)
		
	elseif PHAN_THUONG[vitri][3] == 4 then
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Top 8 §¹i Héi Anh Hïng:")		
		
		AddEventItem(692)
		Msg2SubWorld("<color=yellow>- 1 R­¬ng §Þnh Quèc")	
		
		thoigian = tonumber(date("%H%M%d%m"))
		PHAN_THUONG[vitri][1] = thoigian
		PHAN_THUONG[vitri][3] = 9999
		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)
		
	elseif PHAN_THUONG[vitri][3] == 5 then
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng KhuyÕn KhÝch §¹i Héi Anh Hïng:")		
		
		if GetSex() == 0 then
			AddEventItem(698)
			Msg2SubWorld("<color=yellow>- 1 R­¬ng HiÖp Cèt")	
		else
			AddEventItem(699)
			Msg2SubWorld("<color=yellow>- 1 R­¬ng Nhu T×nh")	
		
		end
		
		
		thoigian = tonumber(date("%H%M%d%m"))
		PHAN_THUONG[vitri][1] = thoigian
		PHAN_THUONG[vitri][3] = 9999
		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)
	else
		Talk(1,"","B¹n ®· nhËn phÇn th­ëng råi, kh«ng thÓ nhËn thªm")
	end
end
function nhanthuong()
Talk(1,"","HiÖn t¹i ch­a cã danh s¸ch nhËn th­ëng !")
end

function checktennhanthuong()
for i=1,getn(PHAN_THUONG) do
	if GetName() == PHAN_THUONG[i][2] then

		
		return i
	end
end
return 0
end

function kiemtrachienthang()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if TinhTrangThiDau ~= 2 then
Talk(1,"","HiÖn t¹i ch­a hÕt thêi gian thi ®Êu, kh«ng thÓ kiÓm tra. Vui lßng ®îi vµ thö l¹i sau")
return
end
khuvuc = GetTask(919)
if khuvuc <= 0 or khuvuc > 16 then
Msg2SubWorld("<color=pink>Lçi nh©n vËt l«i ®µi "..GetName().." - M· hiÖu lçi: "..khuvuc.."")
return
end

vitri = checkten(GetName())
doithu = kiemtradoithu(GetName())
if 	doithu == 0 then
	if checkTempThiDau(vitri) == 0 then
		TempThi_Dau[getn(TempThi_Dau)+1] = vitri
	end
	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 106 then
			for k=1,getn(DANH_SACH[vitri]) do
				if GetName() == DANH_SACH[vitri][k][1] then
					Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>"..GetName().." ®· giµnh chiÕn th¾ng do kh«ng cã ®èi thñ ")
					ResetMacDinh()
				end
			end	
		end
	end
	PlayerIndex = idxplayer
	
	
else
	soluongteam = 0
	tonglevelteam = 0
	soluongdoithu = 0
	tongleveldoithu = 0
	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 106 and GetTask(919) == khuvuc then
			for k=1,getn(DANH_SACH[doithu]) do
				if GetName() == DANH_SACH[doithu][k][1] and x >= MANGLOIDAI[khuvuc][1] and x <= MANGLOIDAI[khuvuc][2] and y >= MANGLOIDAI[khuvuc][3] and y <= MANGLOIDAI[khuvuc][4] then
					soluongdoithu = soluongdoithu + 1
					tongleveldoithu = tongleveldoithu + GetTaskTemp(50)
				end
			end
			for k=1,getn(DANH_SACH[vitri]) do
				if GetName() == DANH_SACH[vitri][k][1] and x >= MANGLOIDAI[khuvuc][1] and x <= MANGLOIDAI[khuvuc][2] and y >= MANGLOIDAI[khuvuc][3] and y <= MANGLOIDAI[khuvuc][4] then
					soluongteam = soluongteam + 1
					tonglevelteam = tonglevelteam + GetTaskTemp(50)
				end
			end
		end
	end
	PlayerIndex = idxplayer
	if soluongdoithu == 0 then
		if checkTempThiDau(vitri) == 0 then
			TempThi_Dau[getn(TempThi_Dau)+1] = vitri
		end
			idxplayer = PlayerIndex
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
				if w == 106 then
					for k=1,getn(DANH_SACH[vitri]) do
						if GetName() == DANH_SACH[vitri][k][1] then
							PhanThuongVong(GetName())
							Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>"..GetName().." ®· ®¸nh b¹i toµn bé thµnh viªn nhãm ®èi thñ vµ vinh dù giµnh chiÕn th¾ng")
							Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>"..GetName().." ®· ®¸nh b¹i toµn bé thµnh viªn nhãm ®èi thñ vµ vinh dù giµnh chiÕn th¾ng")
							ResetMacDinh()
						end
					end
				end
			end
			PlayerIndex = idxplayer
	else
		if soluongteam > soluongdoithu then
			if checkTempThiDau(vitri) == 0 then
				TempThi_Dau[getn(TempThi_Dau)+1] = vitri
			end
			idxplayer = PlayerIndex
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
				if w == 106 then
					for k=1,getn(DANH_SACH[vitri]) do
						if GetName() == DANH_SACH[vitri][k][1] then
							PhanThuongVong(GetName())
							Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>"..GetName().." ®· giµnh chiÕn th¾ng v× sè l­îng thµnh viªn cßn l¹i nhiÒu h¬n")
							Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Sè l­îng nhãm m×nh: "..soluongteam.." - Sè l­îng nhãm ®èi thñ: "..soluongdoithu..". Nhãm b¹n ®· giµnh chiÕn th¾ng")
							ResetMacDinh()
						end
					end
				end
			end
			PlayerIndex = idxplayer		
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
				if w == 106 then
					for k=1,getn(DANH_SACH[doithu]) do
						if GetName() == DANH_SACH[doithu][k][1] then
						
							Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Nhãm b¹n ®· bÞ thua cuéc do sè l­îng thµnh viªn cßn l¹i Ýt h¬n. Sè l­îng ®éi m×nh: "..soluongdoithu.." - Sè l­îng nhãm ®èi thñ: "..soluongteam.."")
							ResetMacDinh()
						end
					end
				end
			end	
			PlayerIndex = idxplayer	
		elseif 	soluongteam < soluongdoithu then
			if checkTempThiDau(doithu) == 0 then
				TempThi_Dau[getn(TempThi_Dau)+1] = doithu
			end
			idxplayer = PlayerIndex
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
				if w == 106 then
					for k=1,getn(DANH_SACH[doithu]) do
						if GetName() == DANH_SACH[doithu][k][1] then
							PhanThuongVong(GetName())
							Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>"..GetName().." ®· giµnh chiÕn th¾ng v× sè l­îng thµnh viªn cßn l¹i nhiÒu h¬n")
							Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Sè l­îng nhãm m×nh: "..soluongdoithu.." - Sè l­îng nhãm ®èi thñ: "..soluongteam..". Nhãm b¹n ®· giµnh chiÕn th¾ng")
							ResetMacDinh()
						end
					end
				end
			end
			PlayerIndex = idxplayer		
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
				if w == 106 then
					for k=1,getn(DANH_SACH[vitri]) do
						if GetName() == DANH_SACH[vitri][k][1] then
							Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Nhãm b¹n ®· bÞ thua cuéc do sè l­îng thµnh viªn cßn l¹i Ýt h¬n. Sè l­îng ®éi m×nh: "..soluongteam.." - Sè l­îng nhãm ®èi thñ: "..soluongdoithu.."")
								ResetMacDinh()
						end
					end
				end
			end	
			PlayerIndex = idxplayer		
		else
			if tonglevelteam > tongleveldoithu then	
				if checkTempThiDau(vitri) == 0 then
					TempThi_Dau[getn(TempThi_Dau)+1] = vitri
				end		
				idxplayer = PlayerIndex
				for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
					if w == 106 then
						for k=1,getn(DANH_SACH[vitri]) do
							if GetName() == DANH_SACH[vitri][k][1] then
								PhanThuongVong(GetName())
								Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>"..GetName().." ®· giµnh chiÕn th¾ng v× sè l­îng thµnh viªn b»ng nhau, Tæng s¸t th­¬ng lín h¬n")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Sè l­îng nhãm m×nh: "..soluongteam.." - Sè l­îng nhãm ®èi thñ: "..soluongdoithu..".")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Tæng s¸t th­¬ng nhãm m×nh: "..tonglevelteam.." - Tæng s¸t th­¬ng nhãm ®èi thñ: "..tongleveldoithu..".")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Nhãm cña b¹n ®· giµnh chiÕn th¾ng !")
								ResetMacDinh()
							end
						end
					end
				end
				PlayerIndex = idxplayer		
				for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
					if w == 106 then
						for k=1,getn(DANH_SACH[doithu]) do
							if GetName() == DANH_SACH[doithu][k][1] then
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Sè l­îng nhãm m×nh: "..soluongdoithu.." - Sè l­îng nhãm ®èi thñ: "..soluongteam..".")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Tæng s¸t th­¬ng nhãm m×nh: "..tongleveldoithu.." - Tæng s¸t th­¬ng nhãm ®èi thñ: "..tonglevelteam..".")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Nhãm cña b¹n ®· thua cuéc !")
								ResetMacDinh()
							end
						end
					end
				end
				PlayerIndex = idxplayer
			elseif tonglevelteam < tongleveldoithu then	
				if checkTempThiDau(doithu) == 0 then
					TempThi_Dau[getn(TempThi_Dau)+1] = doithu
				end
				idxplayer = PlayerIndex
				for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
					if w == 106 then
						for k=1,getn(DANH_SACH[vitri]) do
							if GetName() == DANH_SACH[vitri][k][1] then
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Sè l­îng nhãm m×nh: "..soluongteam.." - Sè l­îng nhãm ®èi thñ: "..soluongdoithu..".")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Tæng s¸t th­¬ng nhãm m×nh: "..tonglevelteam.." - Tæng s¸t th­¬ng nhãm ®èi thñ: "..tongleveldoithu..".")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Nhãm cña b¹n ®· thua cuéc !")
								ResetMacDinh()
							end
						end
					end
				end
				PlayerIndex = idxplayer		
				for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
					if w == 106 then
						for k=1,getn(DANH_SACH[doithu]) do
							if GetName() == DANH_SACH[doithu][k][1] then
								PhanThuongVong(GetName())
								Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>"..GetName().." ®· giµnh chiÕn th¾ng v× sè l­îng thµnh viªn b»ng nhau, Tæng s¸t th­¬ng lín h¬n")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Sè l­îng nhãm m×nh: "..soluongdoithu.." - Sè l­îng nhãm ®èi thñ: "..soluongteam..".")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Tæng s¸t th­¬ng nhãm m×nh: "..tongleveldoithu.." - Tæng s¸t th­¬ng nhãm ®èi thñ: "..tonglevelteam..".")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Nhãm cña b¹n ®· giµnh chiÕn th¾ng !")
								ResetMacDinh()
							end
						end
					end
				end
				PlayerIndex = idxplayer	
				
			else
				idxplayer = PlayerIndex
				for i=1,GetCountPlayerMax() do
					PlayerIndex = i
					w,x,y = GetWorldPos()
					if w == 106 then
						for k=1,getn(DANH_SACH[doithu]) do
							if GetName() == DANH_SACH[doithu][k][1] then
								Msg2Player("<color=yellow>Sè l­îng thµnh viªn vµ Tæng s¸t th­¬ng nhãm m×nh vµ nhãm ®èi thñ b»ng nhau, v× thÕ c¶ 2 nhãm bÞ lo¹i.")
								ResetMacDinh()
							end
						end
						for k=1,getn(DANH_SACH[vitri]) do
							if GetName() == DANH_SACH[vitri][k][1] then
								Msg2Player("<color=yellow>Sè l­îng thµnh viªn vµ Tæng s¸t th­¬ng nhãm m×nh vµ nhãm ®èi thñ b»ng nhau, v× thÕ c¶ 2 nhãm bÞ lo¹i.")
								ResetMacDinh()
							end
						end	
					end
				end
				PlayerIndex = idxplayer		
			end
		end
	end
end
savebang()
end

function checkTempThiDau(num)
for i=1,getn(TempThi_Dau) do
	if TempThi_Dau[i] == num then
		return i
	end
end
return 0
end

function ResetMacDinh()
SetRevPos(66,18)
SetTask(919,0)
NewWorld(66,3460,6199)
SetTaskTemp(50,0)
SetCreateTeam(1);
BlockPKState(0)
SetFightState(0)
SetPKState(0)
SetDeathScript("");
end

function PhanThuongVong(ten)
if TinhTrangThiDau ~= 2 then
return
end
if gio ~= 19 then
return
end
	if phut < 10 then
		PHAN_THUONG[getn(PHAN_THUONG)+1] = {ten,7,getn(DANH_SACH)}
	elseif phut < 20 then
		PHAN_THUONG[getn(PHAN_THUONG)+1] = {ten,6,getn(DANH_SACH)}
	elseif phut < 30 then
		PHAN_THUONG[getn(PHAN_THUONG)+1] = {ten,5,getn(DANH_SACH)}
	elseif phut < 40 then
		PHAN_THUONG[getn(PHAN_THUONG)+1] = {ten,4,getn(DANH_SACH)}
	elseif phut < 50 then
		PHAN_THUONG[getn(PHAN_THUONG)+1] = {ten,3,getn(DANH_SACH)}
	end
	BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
	LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)
end

function KetThucNhanThuong(team)
Msg2SubWorld("<color=green>Danh s¸ch xÕp h¹ng §¹i Héi Anh Hïng: ")
for k=1,getn(DANH_SACH[team]) do
		Msg2SubWorld("- H¹ng 1: "..DANH_SACH[team][k][1].."")
		PHAN_THUONG[getn(PHAN_THUONG)+1] = {DANH_SACH[team][k][1], 1,getn(DANH_SACH)}
end
for i=1,getn(THI_DAU) do
	if THI_DAU[i] ~= team then	
		for k=1,getn(DANH_SACH[THI_DAU[i]]) do
		Msg2SubWorld("- H¹ng 2: "..DANH_SACH[THI_DAU[i]][k][1].."")
		PHAN_THUONG[getn(PHAN_THUONG)+1] = {DANH_SACH[THI_DAU[i]][k][1], 2,getn(DANH_SACH)}
		end	
	end
end
BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)


idxplayer = PlayerIndex
for t=1,GetCountPlayerMax() do
	PlayerIndex = t
	w,x,y = GetWorldPos()
	if w == 106 then
		SetRevPos(66,18)
		NewWorld(66,3460,6199)
		SetCreateTeam(1);
		BlockPKState(0)
		SetFightState(0)
		SetPKState(0)
		SetDeathScript("");
	end
end
PlayerIndex = idxplayer
TempThi_Dau = {}
THI_DAU = {}
BANG5 = TaoBang(DANH_SACH,"DANH_SACH")
LuuBang("script/daihoianhhung/danhsach_backup.lua",BANG5)
DANH_SACH = {}
savebang()
end

function checkhiep()
return 1
end
function kiemtradoithu(ten)
vitri = checkten(ten)
for k=1,getn(THI_DAU) do
	if vitri == THI_DAU[k] then
		if k == getn(THI_DAU) and mod(k,2) == 1 then -- Neu thuoc cuoi danh sac va so le
			return 0
		else
			if mod(k,2) == 1 then
				return THI_DAU[k+1]
			else
				return THI_DAU[k-1]
			end
		end
	end
end
return 0
end


ListEffect = {273,15,213, 33,42, 109, 100, 150, 130, 277, 157, 171, 178, 173  }
function checkEffect()
for i=1,getn(ListEffect) do
		if GetLevelSkillEffectMan(ListEffect[i]) > 0 then
				return ListEffect[i]
		end
end
return 0
end


function thamgia()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))


sl1 = GetItemCountAll(1,10,0,1)
sl2 = GetItemCountAll(1,10,0,2)
sl3 = GetItemCountAll(1,10,0,3)

if sl1 > 0 or sl2 > 0 or sl3 > 0 then
Talk(1,"","B¹n kh«ng ®­îc mang D­îc PhÈm ®Æc biÖt vµo l«i ®µi, h·y sö dông hÕt míi cã thÓ vµo !")
Msg2Player("Cã "..sl1.." Ngò Hoa Ngäc Lé Hoµn §Æc BiÖt !")
Msg2Player("Cã "..sl2.." Cöu ChuyÓn Hoµn Hån §an §Æc BiÖt !")
Msg2Player("Cã "..sl3.." Håi Thiªn T¸i T¹o §¬n !")
return
end


effect = checkEffect() 
if effect ~= 0 then
Talk(1,"","B¹n vui lßng ®¨ng nhËp l¹i ®Ó <color=yellow>lo¹i bá tÊt c¶ HiÖu øng <color>cßn hiÖu qu¶ !")
Msg2Player("M· ID Effect: "..effect.."")
return
end

if getn(THI_DAU) == 0 then
Talk(1,"","HiÖn t¹i ch­a s¾p xÕp xong chiÕn ®éi !")
return
end
if TinhTrangThiDau == 1 then
Talk(1,"","HiÖn ®ang trong thêi gian thi ®Êu, kh«ng thÓ tham gia tiÕp")
return
end
if TinhTrangThiDau == 2 then
Talk(1,"","HiÖn ®ang trong thêi gian kiÓm so¸t, kh«ng thÓ tham gia tiÕp")
return
end
if ngay == day and thang == month then
	if gio == 19 and TinhTrangThiDau == 0 then
		vitri = checkten(GetName())
		if vitri > 0 then
			dem = 0
			for k=1,getn(THI_DAU) do
				if vitri == THI_DAU[k] then
					DiChuyenKhuVuc(k)
					dem = 1
				end
			end		
			if dem == 0 then
				Talk(1,"","§éi cña b¹n ®· bÞ lo¹i, kh«ng thÓ tham gia trËn tiÕp theo")
			end
		else
			Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch ®¨ng ký §¹i Héi Anh Hïng, kh«ng thÓ tham gia")
		end
	end
else
		Talk(1,"","Thêi gian di chuyÓn vµo Khu Vùc Chê - §¹i Héi Anh Hïng tõ 19h00 - 19h15, hiÖn t¹i ng­¬i kh«ng thÓ vµo ")
end
end


function RunTimer()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if ((ngay < 15) or (ngay == 15 and gio < 17)) and mod(phut, 29) == 0 then

Msg2SubWorld("<color=green>§· më ®¨ng ký §¹i Héi Vâ L©m t¹i Sø Gi¶ Anh Hïng (Ba L¨ng HuyÖn 197/202). Quý nh©n sÜ h·y nhanh ch©n t×m thªm 1 b»ng h÷u ®Ó s¸t c¸nh cïng nhau ®o¹t chøc V« §Þch gi¶i ®Çu ®Ó uy chÊn giang hå.")

end

end
function RunTimer_()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
day,month,year = tinhngaytieptheo()



if ngay == day and thang == month and nam == year then
if getn(DANH_SACH) == 0 then
return
end

		if gio == 19 and phut == 0 then -- Xep Hang Danh Sach
			THI_DAU = {}
			for i = 1,getn(DANH_SACH) do
					sx = RandomNew(1,100)
					if sx < 30 then
						THI_DAU[getn(THI_DAU)+1] = i
					end
			end
			for i = 1,getn(DANH_SACH) do
				if checkdanhsachthidau(i) == 0 then
					sx = RandomNew(1,100)
					if sx < 30 then
						THI_DAU[getn(THI_DAU)+1] = i
					end
				end
			end		
			for p=1,getn(DANH_SACH) do
				if checkdanhsachthidau(p) == 0 then
						THI_DAU[getn(THI_DAU)+1] = p
				end
			end
			savebang()
		end
		if gio < 19 and mod(phut,10) == 0 then
			Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red> B¾t ®Çu vµo "..(18-gio).." giê "..(59 - phut).." phót n÷a. KÕt thóc ®¨ng ký vµo 17h00 h«m nay.")
		end
		if gio == 19 and ((phut >= 0 and phut < 3) or (phut >= 10 and phut < 13) or (phut >= 20 and phut < 23) or (phut >= 30 and phut < 33) or (phut >= 40 and phut < 43) or (phut >= 50 and phut < 53)  ) then
			Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>HiÖn t¹i ®ang trong <color=yellow>thêi gian chê chiÕn ®Êu<color=red>, c¸c ®éi ®¨ng ký vµo Khu Vùc ChiÕn §Êu ®Ó ®îi")
			Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>Thêi gian cßn l¹i: <color=yellow>"..(floor(phut/10)*10+3 - phut).." phót !")
		end
		if gio == 19 and ((phut >= 3 and phut < 8) or (phut >= 13 and phut < 18)  or (phut >= 23 and phut < 28)  or (phut >= 33 and phut < 38) or (phut >= 43 and phut < 48) or (phut >= 53 and phut < 58)) then
			Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>HiÖn t¹i ®ang trong <color=yellow>thêi gian thi ®Êu<color=red>, kh«ng nhËn thªm ng­êi tham gia.")
		end
		if gio == 19 and ((phut >= 8 and phut < 10) or (phut >= 18 and phut < 20) or (phut >= 28 and phut < 30) or (phut >= 38 and phut < 40) or (phut >= 48 and phut < 50) or (phut >= 58 and phut < 60))then
			Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>HiÖn t¹i ®ang trong <color=yellow>thêi gian kiÓm so¸t<color=red>, kh«ng nhËn thªm ng­êi tham gia.")
			Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>Thêi gian cßn l¹i: <color=yellow>"..(floor(phut/10)*10+10 - phut).." phót !")
		end		
		
if gio == 19 and (phut == 3 or phut == 13 or phut == 23 or phut == 33 or phut == 43 or phut == 53 ) then
	TinhTrangThiDau = 1
	idxplayer = PlayerIndex
		for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			w,x,y = GetWorldPos()
			if w == 106 then
				SetFightState(1)
				Msg2Player("<color=yellow>TrËn ®Êu b¾t ®Çu. H·y ®¸nh b¹i toµn bé ®èi thñ ®Ó giµnh chiÕn th¾ng")
			end
		end
	PlayerIndex = idxplayer
	TempThi_Dau = {}
end		

if gio == 19 and (phut == 8 or phut == 18 or phut == 28 or phut == 38 or phut == 48 or phut == 58) then -- KET THUC TRAN DAU
	TinhTrangThiDau = 2
	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 106 and GetFightState() == 1 then
			SetFightState(0)
			Msg2Player("<color=yellow>TrËn thi ®Êu ®· kÕt thóc, vui lßng gÆp NPC KiÓm So¸t ®Ó nhËn kÕt qu¶. Thêi gian kiÓm tra lµ: 2 phót")
		end
	end
	PlayerIndex = idxplayer
	end
end

if (gio == 19 and (phut == 10 or phut == 20 or phut == 30 or phut == 40 or phut == 50)) or (gio == 20 and phut == 0) then -- SAP XEP LAI DANH SACH
	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 106 then
			ResetMacDinh()
			Msg2Player("<color=yellow>§· kÕt thóc thêi gian KiÓm So¸t, b¹n bÞ ®­a ra ngoµi. §éi cña b¹n ®· bÞ lo¹i.")
		end
	end
	PlayerIndex = idxplayer
	if getn(TempThi_Dau) == 1 then
		KetThucNhanThuong(TempThi_Dau[1])		
		return
	end
	TinhTrangThiDau = 0
	THI_DAU = {}
	for t=1,getn(TempThi_Dau) do
		THI_DAU[getn(THI_DAU)+1] = TempThi_Dau[t]
	end
	TempThi_Dau = {}
	savebang()
end
end

MANGLOIDAI = {
{1857,1895,3615,3657},
{1727,1764,3397,3437},
{1857,1895,3527,3566},
{1377,1414,3313,3353},
{1290,1328,3402,3441},
{3467,1282,3446,3486},
{1510,1547,3268,3308},
{1509,1546,3180,3219},
{1510,1547,3357,3397},
{1510,1547,3445,3485},
{1511,1547,3534,3573},
{1510,1547,3622,3661},
{1509,1545,3709,3749},
{1551,1588,3752,3791},
{1550,1587,3662,3702},
{1555,1592,3135,3175}
}

function DiChuyenKhuVuc(num)
vt = 0
if mod(num,2) == 1 then
vt = floor(num / 2) + 1
else
vt = floor(num / 2)
end
if vt ~= 0 then
	phe = mod(num,2) + 1
	NewWorld(106, TOA_DO[vt][1]*8, TOA_DO[vt][2]*16)
	SetPKState(2)
	SetCreateTeam(0);
	SetLogoutRV(1);
	LeaveTeam()
	BlockPKState(1)
	SetFightState(0)
	SetRevPos(66,18)
	if phe == 1 then
		SetCurCamp(1)
	else
		SetCurCamp(2)
	end 
	SetTask(919, vt)
	
	SetDeathScript("\\script\\daihoianhhung\\playerdie.lua");
	Msg2Player("B¹n ®· ®­îc ®­a vµo <color=yellow>Khu Vùc ChiÕn §Êu "..vt.."")
	Msg2Player("H·y ®¸nh b¹i toµn bé thµnh viªn cña §éi §èi Thñ ®Ó giµnh chiÕn th¾ng")
	Msg2SubWorld("<color=blue>"..GetName().." ®· vµo Khu Vùc "..vt.."")
end
end

TOA_DO_BACKUP = {
{{1778,3170},{1778,3329}},
{{1867,3185},{1857,3348}},
{{1861,3522},{1771,3580}},
{{1871,3699},{1780,3691}},
{{1680,3563},{1573,3547}},
{{1582,3708},{1692,3712}},
{{1678,3377},{1577,3353}},
{{1681,3180},{1584,3202}},
}

TOA_DO = {
{235,227},
{218,214},
{235,222},
{175,208},
{163,214},
{158,217},
{191,205},
{191,200},
{191,211},
{191,216},
{191,222},
{191,227},
{191,233},
{196,236},
{197,230},
{197,197},
{197,203},
{197,208},
{197,213},
{197,219},
{197,225},
{202,200},
{202,205},
{202,194},
{202,211},
{202,217},
{202,222},
{202,227},
{202,233},
{202,238},
{208,192},
{208,197},
{208,202},
{208,208},
{207,220},
{208,224},
{208,230},
{207,235},
{207,241},
{218,203},
{218,208},
{218,219},
{218,230},
{218,235},
{225,211},
{224,222},
{223,227},
{229,213},
{229,230},
{235,206},
{235,213},
}


function checkdanhsachthidau(stt)
for i=1,getn(THI_DAU) do
	if stt == THI_DAU[i] then
		return 1
	end
end
return 0
end

function kiemtra()
if getn(DANH_SACH) == 0 then
Talk(1,"","HiÖn t¹i ch­a cã chiÕn ®éi nµo tham gia")
return
end
OpenStringBox(2,"NhÊp Thø  Tù 1 - 16","acceptkiemtra")
end


function acceptkiemtra(num2)
num = tonumber(num2)
if num <= getn(DANH_SACH) then
	Msg2Player("<color=yellow>Danh s¸ch chiÕn ®éi thø "..num..":")
	for i=1,getn(DANH_SACH[num]) do
		Msg2Player(""..i..". ["..DANH_SACH[num][i][2].."] "..DANH_SACH[num][i][1].." - Lvl: "..DANH_SACH[num][i][3].."")
	end
else
Talk(1,"","HiÖn t¹i chØ cã "..getn(DANH_SACH).." chiÕn ®éi ®¨ng ký tham gia, vui lßng nhËp sè nhá h¬n")
end

end
function baodanh()
gio = tonumber(date("%H"))
--if gio >= 20 then
--Talk(1,"","Thêi gian bao danh tõ 0h00 - 20h00 ngµy 11/04/2020, qu¸ thêi gian trªn kh«ng cho b¸o danh")
--return
--end


if getn(DANH_SACH) >= soluonggioihan then
	Talk(1,"","HiÖn t¹i tuÇn nµy ®· ®ñ "..soluonggioihan.." tæ b¸o danh, ng­¬i vui lßng ®îi tuÇn sau nhÐ ")
	return
end

if soluongthanhvien > 1 then
		if GetTeam() == nil then
		Talk(1,"","B¹n ch­a lËp tæ ®éi, kh«ng thÓ ®¨ng ký tham gia")
		return
		end

		if GetTeamSize() ~= soluongthanhvien then
		Talk(1,"","Tæ ®éi b¾t buéc "..soluongthanhvien.." thµnh viªn, kh«ng thÓ ®¨ng ký tham gia")
		return
		end

		if IsCaptain() ~= 1 then
		Talk(1,"","ChØ cã tr­ëng nhãm míi cã thÓ ®¨ng ký ")
		return
		end


	team = GetTeam()
	name = GetName()
	inum = 0

	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if GetTeam() == team then
				if checkten(GetName()) > 0 then
						inum = 1
						Msg2World(""..GetName().." ®· b¸o danh tõ tr­íc, b¸o danh thÊt b¹i")
						break
				elseif GetCash() < phi then
						inum = 1
						Msg2World(""..GetName().." kh«ng mang ®ñ "..phi.." l­îng, b¸o danh thÊt b¹i")
						break
				elseif GetLevel() < levelyc then
						inum = 1
						Msg2World(""..GetName().." kh«ng ®ñ cÊp "..levelyc..", b¸o danh thÊt b¹i")
						break
				end
		end
	end
	PlayerIndex = idxplayer
	if inum == 1 then
	return
	end



	num = getn(DANH_SACH) + 1
	DANH_SACH[num] = {}
	AddGlobalCountNews("Chóc mõng ®éi cña <color=yellow>"..GetName().." <color>®· b¸o danh §¹i Héi Anh Hïng sè thø tù: <color=red>"..num.." / "..soluonggioihan.." chiÕn ®éi")
	Msg2SubWorld("<color=yellow>"..GetName().." ®· b¸o danh §¹i Héi Anh Hïng sè thø tù: "..num.." / "..soluonggioihan.." chiÕn ®éi")
	Msg2SubWorld("<color=yellow>Danh s¸ch ®¨ng ký gåm:")
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if GetTeam() == team then
			Pay(phi)
			DANH_SACH[num][getn(DANH_SACH[num])+1] = {GetName(),GetFaction(),GetLevel()}
			Msg2SubWorld(""..getn(DANH_SACH[num])..".  ["..GetFaction().."] "..GetName().."- Lvl: "..GetLevel().."")
		end
	end
	PlayerIndex = idxplayer
	savebang()
else
	if checkten(GetName()) > 0 then
	Talk(1,"","B¹n ®· b¸o danh tõ tr­íc råi, b¸o danh thÊt b¹i")
	return
	end
	if GetCash() < phi then
	Talk(1,"","B¹n kh«ng mang ®ñ "..phi.." l­îng, b¸o danh thÊt b¹i")
	return
	end
	
	Pay(phi)
	num = getn(DANH_SACH) + 1
	DANH_SACH[num] = {}
	DANH_SACH[num][getn(DANH_SACH[num])+1] = {GetName(),GetFaction(),GetLevel()}
	Msg2SubWorld("<color=yellow>"..GetName().." ®· b¸o danh §¹i Héi Anh Hïng sè thø tù: "..num.." / "..soluonggioihan.." chiÕn ®éi")
	Msg2SubWorld(""..getn(DANH_SACH[num])..".  ["..GetFaction().."] "..GetName().."- Lvl: "..GetLevel().."")
	savebang()
end

end

function checkten(name)
for k=1,getn(DANH_SACH) do
	for j=1,getn(DANH_SACH[k]) do
			if name == DANH_SACH[k][j][1] then
				return k
			end
	end
end
return 0
end


function savebang()
BANG = TaoBang(DANH_SACH,"DANH_SACH")
LuuBang("script/daihoianhhung/danhsach.lua",BANG)
BANG1 = TaoBang(THI_DAU,"THI_DAU")
LuuBang("script/daihoianhhung/danhsachthidau.lua",BANG1)
BANG3 = TaoBang(TempThi_Dau,"TempThi_Dau")
LuuBang("script/daihoianhhung/danhsachthidau_next.lua",BANG3)
end

mang_thi_dau = {
{7,14,21,28},
{4,11,18,25},
{4,11,18,25},
{1,8,16,22,29},
{6,13,20,27},
{4,10,17,24},
{1,8,15,22,29},
{5,12,19,27},
{3,10,18,24,31},
{2,8,15,22,29},
{5,12,19,26},
{3,6,10,17,24,31},
}
mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}

function tinhngaytieptheo()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))

return ngaythidau,thang,nam
end
function tinhngaytieptheo_backup()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))

for i=1,getn(mang_thi_dau[thang]) do
	if ngay <= mang_thi_dau[thang][1] then
		return mang_thi_dau[thang][1],thang,nam
	elseif ngay > mang_thi_dau[thang][getn(mang_thi_dau[thang])] then
		if thang == 12 then
			return mang_thi_dau[1][1],1,nam+1
		else
			return mang_thi_dau[thang + 1][1],thang+1,nam
		end
	elseif ngay > mang_thi_dau[thang][i] and ngay <= mang_thi_dau[thang][i+1] then
			return mang_thi_dau[thang][i+1],thang,nam
	end
end
return 0
end

function no()
end
TOADO = {
{235,227},
{218,214},
{235,222},
{175,208},
{163,214},
{158,217},
{191,205},
{191,200},
{191,211},
{191,216},
{191,222},
{191,227},
{191,233},
{196,236},
{197,230},
{197,197},
{197,203},
{197,208},
{197,213},
{197,219},
{197,225},
{202,200},
{202,205},
{202,194},
{202,211},
{202,217},
{202,222},
{202,227},
{202,233},
{202,238},
{208,192},
{208,197},
{208,202},
{208,208},
{207,220},
{208,224},
{208,230},
{207,235},
{207,241},
{218,203},
{218,208},
{218,219},
{218,230},
{218,235},
{225,211},
{224,222},
{223,227},
{229,213},
{229,230},
{235,206},
{235,213},
}