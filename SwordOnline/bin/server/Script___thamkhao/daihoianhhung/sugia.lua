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
ThoiGianThiDau = "19h00 ng�y 15/01/2022"


function main()
	SayNew("Hi�n t�i �� k�t th�c <color=yellow>��i H�i Anh H�ng L�n Th� Nh�t<color>, ng��i t�m ta c� vi�c g�?",2,
	"Ta ��n nh�n th��ng ��i H�i Anh H�ng /nhanphanthuong",
	"Tho�t./no")
end
function main__() -- tu dong
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))


if GetLevel() < levelyc then
Talk(1,"","��ng c�p t�i thi�u tham gia ��i H�i Anh H�ng l�: C�p "..levelyc.."")
return
end

if (ngay < 16) or (ngay == 16 and gio < 17) then
		SayNew("Hi�n t�i �� c�: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ��i <color>��ng k�.\nTh�i gian thi ��u: <color=yellow>"..ThoiGianThiDau.."<color>\nPh� b�o danh: "..(phi/10000).." v�n l��ng / 1 ng��i",3,
		"Ta mu�n b�o danh ��i H�i Anh H�ng /baodanh",
		"Ta mu�n ki�m tra t�nh h�nh chi�n ��i /kiemtra",
		"Tho�t./no")
elseif (ngay == 16 and (gio == 19 or gio == 20)) then
		if GetAccount() == "vantoi" then
			SayNew("Ch�c n�ng admin: ",4,
			"Reload danh sach/admin_reload",
			"B�t ��u b�o danh /admin_setvaocho",
			"K�t th�c b�o danh/admin_ketthucthidau",
			"Tho�t./no")
		else
			w,x,y = GetWorldPos()
			if w == 53 then
				SayNew("Hi�n t�i �� c�: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ��i <color>��ng k� \n",2,
				"Ta mu�n v�o Khu V�c Chi�n ��u /thucong_thamgia",
				"Tho�t./no")
			elseif w == 40 then
				SayNew("Hi�n t�i �� c�: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ��i <color>��ng k� \n",2,
				"Ta mu�n b�o danh thi ��u /thucong_baodanh",
				"Tho�t./no")
			end
		end
else
		Talk(1,"","Th� l� thi ��u: <color=yellow>"..soluongthanhvien.." vs "..soluongthanhvien.."<color>\nPh� ��ng k�: <color=yellow>"..phi.." l��ng m�i cao th� <color>\nB�t ��u ��ng k�: <color=yellow>17h00 13/01/2022 - 17h00 15/01/2022<color>\nTh�i gian thi ��u: <color=yellow>"..ThoiGianThiDau.."")
end
end
function admin_reload()
ReLoadScript("\\script\\daihoianhhung\\sugia.lua")
Msg2Player("�� reload danh s�ch m�i nh�t !")

end
TrangThaiAdmin = 0

function admin_ketthucthidau()
TrangThaiAdmin = 0
Msg2Player("�� k�t th�c b�o danh !")
Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=yellow>Th�i gian b�o danh �� k�t th�c, c�c ��i chu�n b� !!!!!!!!")
end
function admin_setvaocho()
if TrangThaiAdmin ~= 0 then
Talk(1,"","Ch�a k�t th�c tr�n c�, kh�ng th� b�t ��u !")
return
end
TrangThaiAdmin = 1000 -- Bat dau vao thi dau

Msg2Player("<color=yellow>�� b�t ��u v�o thi ��u !")
Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=yellow>Hi�n t�i �ang trong th�i gian b�o danh thi ��u, m�i ng��i h�y ��n h�i tr��ng g�p S� Gi� Anh H�ng �� v�o khu v�c ch� thi ��u !")
Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=yellow>Th�i gian b�o danh: 3 ph�t")
end

function thucong_baodanh()
if TrangThaiAdmin ~= 1000 then
Talk(1,"","Hi�n t�i kh�ng ph�i th�i gian b�o danh, kh�ng th� v�o !")
return
end

sl1 = GetItemCountAll(1,10,0,1)
sl2 = GetItemCountAll(1,10,0,2)
sl3 = GetItemCountAll(1,10,0,3)

if sl1 > 0 or sl2 > 0 or sl3 > 0 then
Talk(1,"","B�n kh�ng ���c mang D��c Ph�m ��c bi�t v�o l�i ��i, h�y s� d�ng h�t m�i c� th� v�o !")
Msg2Player("C� "..sl1.." Ng� Hoa Ng�c L� Ho�n ��c Bi�t !")
Msg2Player("C� "..sl2.." C�u Chuy�n Ho�n H�n �an ��c Bi�t !")
Msg2Player("C� "..sl3.." H�i Thi�n T�i T�o ��n !")
return
end


effect = checkEffect() 
if effect ~= 0 then
Talk(1,"","B�n vui l�ng ��ng nh�p l�i �� <color=yellow>lo�i b� t�t c� Hi�u �ng <color>c�n hi�u qu� !")
Msg2Player("M� ID Effect: "..effect.."")
return
end
stt = checkdanhsachdangky()
if stt == 0 then
Talk(1,"","B�n kh�ng c� t�n trong danh s�ch thi ��u, kh�ng ���c v�o khu v�c ch� !")
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
			Msg2SubWorld(""..GetName().." �� v�o <color=blue>khu v�c "..i.."")
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
			Msg2SubWorld(""..GetName().." �� v�o <color=blue>khu v�c "..i.."")
			checkvao = 1
			break;
		end
end

if checkvao == 0 then
Talk(1,"","��i c�a b�n kh�ng c� t�n trong danh s�ch thi ��u v�ng n�y, vui l�ng li�n h� Admin n�u c� sai x�t !")
end
end


function main_() -- Thu cong
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))


if GetLevel() < levelyc then
Talk(1,"","��ng c�p t�i thi�u tham gia ��i H�i Anh H�ng l�: C�p "..levelyc.."")
return
end

--if (ngay == 20) or (ngay == 21 and gio < 17) then
--		SayNew("Hi�n t�i �� c�: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ��i <color>��ng k�.\nTh�i gian thi ��u: <color=yellow>"..ThoiGianThiDau.."<color>\nPh� b�o danh: "..(phi/10000).." v�n l��ng / 1 ng��i",3,
--		"Ta mu�n b�o danh ��i H�i Anh H�ng /baodanh",
--		"Ta mu�n ki�m tra t�nh h�nh chi�n ��i /kiemtra",
--		"Tho�t./no")
		
--else
		SayNew("Hi�n t�i �� c�: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ��i <color>��ng k� \n",2,
		"Ta mu�n v�o Khu V�c Chi�n ��u /thucong_thamgia",
		"Tho�t./no")
--		Talk(1,"","Th� l� thi ��u: <color=yellow>3 vs 3<color>\nPh� ��ng k�: <color=yellow>300 v�n l��ng m�i cao th� <color>\nB�t ��u ��ng k�: <color=yellow>17h00 20/10/2021 - 17h00 21/10/2021<color>\nTh�i gian thi ��u: <color=yellow>"..ThoiGianThiDau.."")
--end
end

function thucong_thamgia()

sl1 = GetItemCountAll(1,10,0,1)
sl2 = GetItemCountAll(1,10,0,2)
sl3 = GetItemCountAll(1,10,0,3)

if sl1 > 0 or sl2 > 0 or sl3 > 0 then
Talk(1,"","B�n kh�ng ���c mang D��c Ph�m ��c bi�t v�o l�i ��i, h�y s� d�ng h�t m�i c� th� v�o !")
Msg2Player("C� "..sl1.." Ng� Hoa Ng�c L� Ho�n ��c Bi�t !")
Msg2Player("C� "..sl2.." C�u Chuy�n Ho�n H�n �an ��c Bi�t !")
Msg2Player("C� "..sl3.." H�i Thi�n T�i T�o ��n !")
return
end


effect = checkEffect() 
if effect ~= 0 then
Talk(1,"","B�n vui l�ng ��ng nh�p l�i �� <color=yellow>lo�i b� t�t c� Hi�u �ng <color>c�n hi�u qu� !")
Msg2Player("M� ID Effect: "..effect.."")
return
end

if checkdanhsachdangky() == 0 then
Talk(1,"","B�n kh�ng c� t�n trong danh s�ch thi ��u, kh�ng ���c v�o khu v�c ch� !")
return
end

NewWorld(40,1569,3217)
SetRevPos(40,61)
SetCreateTeam(1);
SetLogoutRV(1)
SetFightState(0)
Msg2Player("B�n �� v�o khu v�c ch� thi ��u")
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
Talk(1,"","S� ki�n �� k�t th�c, vui l�ng ��i c�p nh�t danh s�ch nh�n th��ng !")
return
end

if GetLevel() < 100 then
Talk(1,"","��ng c�p t�i thi�u tham gia ��i H�i Anh H�ng l�: C�p 100")
return
end

if ngay == ngaythidau and gio >= 17 and gio < 19 then
Talk(1,"","S� ki�n s� b�t ��u sau: <color=yellow>"..(18-gio).." gi� "..(59-phut).." ph�t<color> n�a !.")
return
end

if w == 106 then
		if TinhTrangThiDau == 1 then
		Talk(1,"","Hi�n t�i ch�a h�t th�i gian thi ��u, kh�ng th� ki�m tra. Vui l�ng ��i v� th� l�i sau")
		return
		end
		SayNew("<color=green>S� Gi� Anh H�ng<color>: H�y ti�u di�t to�n b� ��i ��i Th� r�i h�y quay l�i g�p ta",3,
		"Ta �� gi�nh chi�n th�ng, h�y ��a ta ��n tr�n ti�p theo /kiemtrachienthang",
		"Nh�n M�u Mi�n Ph� /nhanhoithien",
		"Thoat./no")
else
	if gio == 19 and ngay == ngaythidau then
		SayNew("Hi�n t�i �� c�: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ��i <color>��ng k� <enter>Thi ��u: <color=yellow>"..ThoiGianThiDau.."",4,
		"Ta mu�n v�o Khu V�c Chi�n ��u /thamgia",
		"Ki�m tra t�nh h�nh chi�n ��i /kiemtra",
	--	"nh�n th��ng �ua Top/nhanthuong",
		"Tho�t./no")
	else
		SayNew("Hi�n t�i �� c�: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ��i <color>��ng k� <enter>Thi ��u: <color=yellow>"..ThoiGianThiDau.."<color>\nPh� b�o danh: "..(phi/10000).." v�n l��ng / 1 ng��i",5,
		"Ta mu�n b�o danh ��i H�i Anh H�ng /baodanh",
	--	"Th� nghi�m v�o b�n �� DHAH /thunghiemmap",
		"Ta mu�n ki�m tra t�nh h�nh chi�n ��i /kiemtra",
	--	"Ta mu�n nh�n th��ng �ua Top/nhanthuong",
	--	"Ta ��n nh�n ph�n th��ng �ua Top/nhanphanthuong",
		"Tho�t./no")
	end
end
end

function thunghiemmap()
NewWorld(106, 235*8,227*16)
SetLogoutRV(1)
SetFightState(1)
Talk(1,"","B�n �� v�o b�n �� ��i H�i Anh H�ng. N�u b� l�i vui l�ng tho�t to�n b� game v� c�p nh�t l�i")
Msg2Player("<color=green>Th� nghi�m v�o b�n �� ��i H�i Anh H�ng tr�nh vi�c khi s� ki�n di�n ra b� l�i do ch�a c�p nh�t. N�u ai �� v�o th�nh c�ng th� kh�ng c�n c�p nh�t n�a !")
end

function nhanhoithien()
if GetFightState() == 0 then
	for i=1,20 do
		idxitem = AddItem(1,4,0,5,0,0,0)
		SetItemLock(idxitem)
	end	
	Msg2Player("B�n nh�n ���c 20 Ng� Hoa Ng�c L� Ho�n")
else
	Talk(1,"","Trong l�c thi ��u, kh�ng ���c nh�n")
end
end
function nhanphanthuong()

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� 6 x 5 � tr�ng, kh�ng th� nh�n th��ng !")
	return
end

vitri = checktennhanthuong()
if vitri == 0 then
Talk(1,"","B�n kh�ng c� t�n trong danh s�ch nh�n th��ng ��i H�i Anh H�ng")
return
end

	if 	PHAN_THUONG[vitri][3] == 1 then	
	
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng Top 1 ��i H�i Anh H�ng:")	
		AddEventItem(691)
		AddEventItem(691)
		Msg2SubWorld("<color=yellow>- 2 R��ng An Bang")	

		thoigian = tonumber(date("%H%M%d%m"))
		PHAN_THUONG[vitri][1] = thoigian
		PHAN_THUONG[vitri][3] = 9999
		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)
	elseif PHAN_THUONG[vitri][3] == 2 then
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng Top 2 ��i H�i Anh H�ng:")	

		AddEventItem(692)
		AddEventItem(691)
		Msg2SubWorld("<color=yellow>- 1 R��ng An Bang, 1 R��ng ��nh Qu�c")	

		thoigian = tonumber(date("%H%M%d%m"))
		PHAN_THUONG[vitri][1] = thoigian
		PHAN_THUONG[vitri][3] = 9999
		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)
	elseif PHAN_THUONG[vitri][3] == 3 then
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng Top 3 ��i H�i Anh H�ng:")		
		
		AddEventItem(692)
		AddEventItem(692)
		Msg2SubWorld("<color=yellow>- 2 R��ng ��nh Qu�c")	
		
		thoigian = tonumber(date("%H%M%d%m"))
		PHAN_THUONG[vitri][1] = thoigian
		PHAN_THUONG[vitri][3] = 9999
		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)
		
	elseif PHAN_THUONG[vitri][3] == 4 then
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng Top 8 ��i H�i Anh H�ng:")		
		
		AddEventItem(692)
		Msg2SubWorld("<color=yellow>- 1 R��ng ��nh Qu�c")	
		
		thoigian = tonumber(date("%H%M%d%m"))
		PHAN_THUONG[vitri][1] = thoigian
		PHAN_THUONG[vitri][3] = 9999
		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)
		
	elseif PHAN_THUONG[vitri][3] == 5 then
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng Khuy�n Kh�ch ��i H�i Anh H�ng:")		
		
		if GetSex() == 0 then
			AddEventItem(698)
			Msg2SubWorld("<color=yellow>- 1 R��ng Hi�p C�t")	
		else
			AddEventItem(699)
			Msg2SubWorld("<color=yellow>- 1 R��ng Nhu T�nh")	
		
		end
		
		
		thoigian = tonumber(date("%H%M%d%m"))
		PHAN_THUONG[vitri][1] = thoigian
		PHAN_THUONG[vitri][3] = 9999
		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)
	else
		Talk(1,"","B�n �� nh�n ph�n th��ng r�i, kh�ng th� nh�n th�m")
	end
end
function nhanthuong()
Talk(1,"","Hi�n t�i ch�a c� danh s�ch nh�n th��ng !")
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
Talk(1,"","Hi�n t�i ch�a h�t th�i gian thi ��u, kh�ng th� ki�m tra. Vui l�ng ��i v� th� l�i sau")
return
end
khuvuc = GetTask(919)
if khuvuc <= 0 or khuvuc > 16 then
Msg2SubWorld("<color=pink>L�i nh�n v�t l�i ��i "..GetName().." - M� hi�u l�i: "..khuvuc.."")
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
					Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>"..GetName().." �� gi�nh chi�n th�ng do kh�ng c� ��i th� ")
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
							Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>"..GetName().." �� ��nh b�i to�n b� th�nh vi�n nh�m ��i th� v� vinh d� gi�nh chi�n th�ng")
							Msg2Player("<color=pink>[K�t Qu�] <color=yellow>"..GetName().." �� ��nh b�i to�n b� th�nh vi�n nh�m ��i th� v� vinh d� gi�nh chi�n th�ng")
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
							Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>"..GetName().." �� gi�nh chi�n th�ng v� s� l��ng th�nh vi�n c�n l�i nhi�u h�n")
							Msg2Player("<color=pink>[K�t Qu�] <color=yellow>S� l��ng nh�m m�nh: "..soluongteam.." - S� l��ng nh�m ��i th�: "..soluongdoithu..". Nh�m b�n �� gi�nh chi�n th�ng")
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
						
							Msg2Player("<color=pink>[K�t Qu�] <color=yellow>Nh�m b�n �� b� thua cu�c do s� l��ng th�nh vi�n c�n l�i �t h�n. S� l��ng ��i m�nh: "..soluongdoithu.." - S� l��ng nh�m ��i th�: "..soluongteam.."")
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
							Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>"..GetName().." �� gi�nh chi�n th�ng v� s� l��ng th�nh vi�n c�n l�i nhi�u h�n")
							Msg2Player("<color=pink>[K�t Qu�] <color=yellow>S� l��ng nh�m m�nh: "..soluongdoithu.." - S� l��ng nh�m ��i th�: "..soluongteam..". Nh�m b�n �� gi�nh chi�n th�ng")
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
							Msg2Player("<color=pink>[K�t Qu�] <color=yellow>Nh�m b�n �� b� thua cu�c do s� l��ng th�nh vi�n c�n l�i �t h�n. S� l��ng ��i m�nh: "..soluongteam.." - S� l��ng nh�m ��i th�: "..soluongdoithu.."")
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
								Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>"..GetName().." �� gi�nh chi�n th�ng v� s� l��ng th�nh vi�n b�ng nhau, T�ng s�t th��ng l�n h�n")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>S� l��ng nh�m m�nh: "..soluongteam.." - S� l��ng nh�m ��i th�: "..soluongdoithu..".")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>T�ng s�t th��ng nh�m m�nh: "..tonglevelteam.." - T�ng s�t th��ng nh�m ��i th�: "..tongleveldoithu..".")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>Nh�m c�a b�n �� gi�nh chi�n th�ng !")
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
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>S� l��ng nh�m m�nh: "..soluongdoithu.." - S� l��ng nh�m ��i th�: "..soluongteam..".")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>T�ng s�t th��ng nh�m m�nh: "..tongleveldoithu.." - T�ng s�t th��ng nh�m ��i th�: "..tonglevelteam..".")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>Nh�m c�a b�n �� thua cu�c !")
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
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>S� l��ng nh�m m�nh: "..soluongteam.." - S� l��ng nh�m ��i th�: "..soluongdoithu..".")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>T�ng s�t th��ng nh�m m�nh: "..tonglevelteam.." - T�ng s�t th��ng nh�m ��i th�: "..tongleveldoithu..".")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>Nh�m c�a b�n �� thua cu�c !")
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
								Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>"..GetName().." �� gi�nh chi�n th�ng v� s� l��ng th�nh vi�n b�ng nhau, T�ng s�t th��ng l�n h�n")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>S� l��ng nh�m m�nh: "..soluongdoithu.." - S� l��ng nh�m ��i th�: "..soluongteam..".")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>T�ng s�t th��ng nh�m m�nh: "..tongleveldoithu.." - T�ng s�t th��ng nh�m ��i th�: "..tonglevelteam..".")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>Nh�m c�a b�n �� gi�nh chi�n th�ng !")
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
								Msg2Player("<color=yellow>S� l��ng th�nh vi�n v� T�ng s�t th��ng nh�m m�nh v� nh�m ��i th� b�ng nhau, v� th� c� 2 nh�m b� lo�i.")
								ResetMacDinh()
							end
						end
						for k=1,getn(DANH_SACH[vitri]) do
							if GetName() == DANH_SACH[vitri][k][1] then
								Msg2Player("<color=yellow>S� l��ng th�nh vi�n v� T�ng s�t th��ng nh�m m�nh v� nh�m ��i th� b�ng nhau, v� th� c� 2 nh�m b� lo�i.")
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
Msg2SubWorld("<color=green>Danh s�ch x�p h�ng ��i H�i Anh H�ng: ")
for k=1,getn(DANH_SACH[team]) do
		Msg2SubWorld("- H�ng 1: "..DANH_SACH[team][k][1].."")
		PHAN_THUONG[getn(PHAN_THUONG)+1] = {DANH_SACH[team][k][1], 1,getn(DANH_SACH)}
end
for i=1,getn(THI_DAU) do
	if THI_DAU[i] ~= team then	
		for k=1,getn(DANH_SACH[THI_DAU[i]]) do
		Msg2SubWorld("- H�ng 2: "..DANH_SACH[THI_DAU[i]][k][1].."")
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
Talk(1,"","B�n kh�ng ���c mang D��c Ph�m ��c bi�t v�o l�i ��i, h�y s� d�ng h�t m�i c� th� v�o !")
Msg2Player("C� "..sl1.." Ng� Hoa Ng�c L� Ho�n ��c Bi�t !")
Msg2Player("C� "..sl2.." C�u Chuy�n Ho�n H�n �an ��c Bi�t !")
Msg2Player("C� "..sl3.." H�i Thi�n T�i T�o ��n !")
return
end


effect = checkEffect() 
if effect ~= 0 then
Talk(1,"","B�n vui l�ng ��ng nh�p l�i �� <color=yellow>lo�i b� t�t c� Hi�u �ng <color>c�n hi�u qu� !")
Msg2Player("M� ID Effect: "..effect.."")
return
end

if getn(THI_DAU) == 0 then
Talk(1,"","Hi�n t�i ch�a s�p x�p xong chi�n ��i !")
return
end
if TinhTrangThiDau == 1 then
Talk(1,"","Hi�n �ang trong th�i gian thi ��u, kh�ng th� tham gia ti�p")
return
end
if TinhTrangThiDau == 2 then
Talk(1,"","Hi�n �ang trong th�i gian ki�m so�t, kh�ng th� tham gia ti�p")
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
				Talk(1,"","��i c�a b�n �� b� lo�i, kh�ng th� tham gia tr�n ti�p theo")
			end
		else
			Talk(1,"","B�n kh�ng c� t�n trong danh s�ch ��ng k� ��i H�i Anh H�ng, kh�ng th� tham gia")
		end
	end
else
		Talk(1,"","Th�i gian di chuy�n v�o Khu V�c Ch� - ��i H�i Anh H�ng t� 19h00 - 19h15, hi�n t�i ng��i kh�ng th� v�o ")
end
end


function RunTimer()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if ((ngay < 15) or (ngay == 15 and gio < 17)) and mod(phut, 29) == 0 then

Msg2SubWorld("<color=green>�� m� ��ng k� ��i H�i V� L�m t�i S� Gi� Anh H�ng (Ba L�ng Huy�n 197/202). Qu� nh�n s� h�y nhanh ch�n t�m th�m 1 b�ng h�u �� s�t c�nh c�ng nhau �o�t ch�c V� ��ch gi�i ��u �� uy ch�n giang h�.")

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
			Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red> B�t ��u v�o "..(18-gio).." gi� "..(59 - phut).." ph�t n�a. K�t th�c ��ng k� v�o 17h00 h�m nay.")
		end
		if gio == 19 and ((phut >= 0 and phut < 3) or (phut >= 10 and phut < 13) or (phut >= 20 and phut < 23) or (phut >= 30 and phut < 33) or (phut >= 40 and phut < 43) or (phut >= 50 and phut < 53)  ) then
			Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>Hi�n t�i �ang trong <color=yellow>th�i gian ch� chi�n ��u<color=red>, c�c ��i ��ng k� v�o Khu V�c Chi�n ��u �� ��i")
			Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>Th�i gian c�n l�i: <color=yellow>"..(floor(phut/10)*10+3 - phut).." ph�t !")
		end
		if gio == 19 and ((phut >= 3 and phut < 8) or (phut >= 13 and phut < 18)  or (phut >= 23 and phut < 28)  or (phut >= 33 and phut < 38) or (phut >= 43 and phut < 48) or (phut >= 53 and phut < 58)) then
			Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>Hi�n t�i �ang trong <color=yellow>th�i gian thi ��u<color=red>, kh�ng nh�n th�m ng��i tham gia.")
		end
		if gio == 19 and ((phut >= 8 and phut < 10) or (phut >= 18 and phut < 20) or (phut >= 28 and phut < 30) or (phut >= 38 and phut < 40) or (phut >= 48 and phut < 50) or (phut >= 58 and phut < 60))then
			Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>Hi�n t�i �ang trong <color=yellow>th�i gian ki�m so�t<color=red>, kh�ng nh�n th�m ng��i tham gia.")
			Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>Th�i gian c�n l�i: <color=yellow>"..(floor(phut/10)*10+10 - phut).." ph�t !")
		end		
		
if gio == 19 and (phut == 3 or phut == 13 or phut == 23 or phut == 33 or phut == 43 or phut == 53 ) then
	TinhTrangThiDau = 1
	idxplayer = PlayerIndex
		for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			w,x,y = GetWorldPos()
			if w == 106 then
				SetFightState(1)
				Msg2Player("<color=yellow>Tr�n ��u b�t ��u. H�y ��nh b�i to�n b� ��i th� �� gi�nh chi�n th�ng")
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
			Msg2Player("<color=yellow>Tr�n thi ��u �� k�t th�c, vui l�ng g�p NPC Ki�m So�t �� nh�n k�t qu�. Th�i gian ki�m tra l�: 2 ph�t")
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
			Msg2Player("<color=yellow>�� k�t th�c th�i gian Ki�m So�t, b�n b� ��a ra ngo�i. ��i c�a b�n �� b� lo�i.")
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
	Msg2Player("B�n �� ���c ��a v�o <color=yellow>Khu V�c Chi�n ��u "..vt.."")
	Msg2Player("H�y ��nh b�i to�n b� th�nh vi�n c�a ��i ��i Th� �� gi�nh chi�n th�ng")
	Msg2SubWorld("<color=blue>"..GetName().." �� v�o Khu V�c "..vt.."")
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
Talk(1,"","Hi�n t�i ch�a c� chi�n ��i n�o tham gia")
return
end
OpenStringBox(2,"Nh�p Th�  T� 1 - 16","acceptkiemtra")
end


function acceptkiemtra(num2)
num = tonumber(num2)
if num <= getn(DANH_SACH) then
	Msg2Player("<color=yellow>Danh s�ch chi�n ��i th� "..num..":")
	for i=1,getn(DANH_SACH[num]) do
		Msg2Player(""..i..". ["..DANH_SACH[num][i][2].."] "..DANH_SACH[num][i][1].." - Lvl: "..DANH_SACH[num][i][3].."")
	end
else
Talk(1,"","Hi�n t�i ch� c� "..getn(DANH_SACH).." chi�n ��i ��ng k� tham gia, vui l�ng nh�p s� nh� h�n")
end

end
function baodanh()
gio = tonumber(date("%H"))
--if gio >= 20 then
--Talk(1,"","Th�i gian bao danh t� 0h00 - 20h00 ng�y 11/04/2020, qu� th�i gian tr�n kh�ng cho b�o danh")
--return
--end


if getn(DANH_SACH) >= soluonggioihan then
	Talk(1,"","Hi�n t�i tu�n n�y �� �� "..soluonggioihan.." t� b�o danh, ng��i vui l�ng ��i tu�n sau nh� ")
	return
end

if soluongthanhvien > 1 then
		if GetTeam() == nil then
		Talk(1,"","B�n ch�a l�p t� ��i, kh�ng th� ��ng k� tham gia")
		return
		end

		if GetTeamSize() ~= soluongthanhvien then
		Talk(1,"","T� ��i b�t bu�c "..soluongthanhvien.." th�nh vi�n, kh�ng th� ��ng k� tham gia")
		return
		end

		if IsCaptain() ~= 1 then
		Talk(1,"","Ch� c� tr��ng nh�m m�i c� th� ��ng k� ")
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
						Msg2World(""..GetName().." �� b�o danh t� tr��c, b�o danh th�t b�i")
						break
				elseif GetCash() < phi then
						inum = 1
						Msg2World(""..GetName().." kh�ng mang �� "..phi.." l��ng, b�o danh th�t b�i")
						break
				elseif GetLevel() < levelyc then
						inum = 1
						Msg2World(""..GetName().." kh�ng �� c�p "..levelyc..", b�o danh th�t b�i")
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
	AddGlobalCountNews("Ch�c m�ng ��i c�a <color=yellow>"..GetName().." <color>�� b�o danh ��i H�i Anh H�ng s� th� t�: <color=red>"..num.." / "..soluonggioihan.." chi�n ��i")
	Msg2SubWorld("<color=yellow>"..GetName().." �� b�o danh ��i H�i Anh H�ng s� th� t�: "..num.." / "..soluonggioihan.." chi�n ��i")
	Msg2SubWorld("<color=yellow>Danh s�ch ��ng k� g�m:")
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
	Talk(1,"","B�n �� b�o danh t� tr��c r�i, b�o danh th�t b�i")
	return
	end
	if GetCash() < phi then
	Talk(1,"","B�n kh�ng mang �� "..phi.." l��ng, b�o danh th�t b�i")
	return
	end
	
	Pay(phi)
	num = getn(DANH_SACH) + 1
	DANH_SACH[num] = {}
	DANH_SACH[num][getn(DANH_SACH[num])+1] = {GetName(),GetFaction(),GetLevel()}
	Msg2SubWorld("<color=yellow>"..GetName().." �� b�o danh ��i H�i Anh H�ng s� th� t�: "..num.." / "..soluonggioihan.." chi�n ��i")
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