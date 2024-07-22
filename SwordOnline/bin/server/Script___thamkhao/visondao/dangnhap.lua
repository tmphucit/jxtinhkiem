Include("\\script\\Global\\doimaump.lua")
Include("\\script\\daihoianhhung\\danhsachnhanthuong.lua")
Include("\\datascript\\liendau\\danhsachxephang.lua")
Include("\\datascript\\banghoi\\danhsachthanhthi.lua")
Include("\\script\\chuyensinh\\dscs.lua")

function checkdscs()
for i=1,getn(mangptcs) do
	if GetName() == mangptcs[i][2] then
		return 1
	end
end
return 0
end
function checkten()
check = 0
for q=1,getn(danhsach) do
if GetUUID() == danhsach[q][2] then
	check = 1
	break
end
end
return check
end

function TayTiemNang()
a = GetSeries()
if a == 0 then
RestAP(35,25,25,15)
elseif a == 1 then
RestAP(20,35,20,25)
elseif a == 2 then
RestAP(25,25,25,25)
elseif a == 3 then
RestAP(30,20,30,20)
elseif a == 4 then
RestAP(20,15,25,40)
end
diemtn = GetProp()
AddProp(-diemtn)
diem = (GetLevel()-1)*5+GetTask(198)*5 + getTiemNang()
AddProp(diem)
end


function TayKyNang()
diemkn = GetMagicPoint()
AddMagicPoint(-diemkn)
diemkn2 = (GetLevel()-1)+GetTask(199) + getKyNang()
AddMagicPoint(diemkn2)
RollbackSkill()
UpdateSkill()
end
function getTiemNang()
if GetTask(139) == 1 then
return 50
elseif GetTask(139) == 2 then
return 100
elseif GetTask(139) == 3 then
return 200
elseif GetTask(139) == 4 then
return 300
elseif GetTask(139) == 5 then
return 400
else
return 0
end
end
function getKyNang()
if GetTask(139) == 1 then
return 10
elseif GetTask(139) == 2 then
return 20
elseif GetTask(139) == 3 then
return 40
elseif GetTask(139) == 4 then
return 60
elseif GetTask(139) == 5 then
return 80
else
return 0
end
end

function main()
w,x,y = GetWorldPos()
thang = tonumber(date("%m"))
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))

thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/TestLog.txt", "a");
if LoginLog then
write(LoginLog,"["..GetAccount().."] ["..GetName().."] ["..GetLevel().."] - IP: "..GetIP().." -  Time: "..thoigian.."\n");
end
closefile(LoginLog)
if w == 4 then
	NewWorld(53,200*8,200*16)
	SetRevPos(19)
	SetFightState(0)
end

if w == 77 or w == 46 or w == 226 or w == 75 then
SetLogoutRV(1)
end
if GetTask(925) == 9999 and GetTask(930) == 0 then
		SetTask(930,thoigian)
		NewWorld(53,200*8,200*16)
		SetRevPos(19)
		SetFightState(0)
end

AddLeadExp(9999999999)
if GetItemCount(3) < 1 then
AddEventItem(3)
end
if HaveMagic(201) > 0 then
DelMagic(201)
end

if GetTask(961) < 10000 then
		if GetLevel() >= 90 then
				SetTask(961,10002)
		else		
				SetTask(961,10001)
		end
end

if GetTask(960) ~= 3 then
	SetTask(960, 3)
	
	for i=121,127 do
		for j=1,GetItemCount2(i) do
			DelAllItem(i)
		end
	end
	for i=136,143 do
		for j=1,GetItemCount2(i) do
			DelAllItem(i)
		end
	end	
	for i=145,149 do
		for j=1,GetItemCount2(i) do
			DelAllItem(i)
		end
	end	
	for j=1,GetItemCount2(723) do
		DelAllItem(723)
	end
	for j=1,GetItemCount2(725) do
		DelAllItem(725)
	end	
	
end

if GetTask(478) ~= 3000 then
	SetTask(478, 3000)
	
	for i=710,717 do
		if GetItemCount2(i) > 0 then
			for j=1,GetItemCount2(i) do
				DelAllItem(i)
			end
		end
	end

end

gio = tonumber(date("%H"))
for i=1,GetItemCount2(176) do
DelItem(176)
end

if GetTask(119) == 1 then
SetTask(119,0)
SetFightState(1)
end
if w == 2 then
	SetFightState(1)
end
if GetTask(40) == 1 and w == 60 then
SetTask(40,0)
SetRank(GetTask(18))
SetCurCamp(GetTask(16))
SetCamp(GetTask(16)) 
SetPK(GetTask(17))
SetTask(128,0) 
SetTask(16,0)
SetTask(18,0)
SetTask(17,0)
SetPunish(0)
SetFightState(0)
SetCreateTeam(1);
SetLogoutRV(0);
SetPKState(0)
BlockPKState(0)
SetDeathScript("");
DelMagic(413)
end


vangtable = GetExtPoint(1)
print("Vang Nap "..GetName().." - "..vangtable.." vang")
if vangtable  > 0 then
	PayExtPoint(vangtable)
	if GetExtPoint(1) == 0 then
		slvang = GetTask(99)
		SetTask(99,GetTask(99) + vangtable)
		SetTask(101,GetTask(101) + vangtable)
		SetTask(461,GetTask(461) + vangtable)

		if GetTask(99) ~= slvang + vangtable then
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/LogLoiNapVang.txt", "a");
			if LoginLog then
			write(LoginLog,"Tai khoan: ["..GetAccount().."] - Nhan vat: ["..GetName().."] - Vang: "..vangtable.." - Tong vang: "..GetTask(99).." - IP: "..GetIP().." -  Time: "..thoigian.."\n");
			end
			closefile(LoginLog)	
			SetTask(99,0)
			Talk(1,"","X¶y ra lçi hack vµng, liªn hÖ admin ®Ó gi¶i quyÕt")
			return
		end

		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/LogNapVangNew.txt", "a");
		if LoginLog then
		write(LoginLog,"Tai khoan: ["..GetAccount().."] - Nhan vat: ["..GetName().."] - Vang: "..vangtable.." - Tong vang: "..GetTask(99).." - Vang Cu: "..slvang.." - IP: "..GetIP().." -  Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	
		Talk(1,"","N¹p thÎ thµnh c«ng <color=green>"..vangtable.." TiÒn §ång<color>. H·y ®Õn TiÒn Trang ®Ó <color=yellow>Göi vµ Rót<color> vËt phÈm TiÒn §ång")
		SaveData()
	else
		Talk(1,"","Hack ha em ")
	end
end

if GetTask(99) > 500 then
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/AdminCheckHack_Vang500.txt", "a");
	if LoginLog then
	write(LoginLog,"Tai khoan: ["..GetAccount().."] - Nhan vat: ["..GetName().."] - Vang: "..GetTask(99).." - TD: "..GetItemCount2(697).." - IP: "..GetIP().." -  Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
end
if GetItemCount2(697) > 500 then
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/AdminCheckHack_TD500.txt", "a");
	if LoginLog then
	write(LoginLog,"Tai khoan: ["..GetAccount().."] - Nhan vat: ["..GetName().."] - Vang: "..GetTask(99).." - TD: "..GetItemCount2(697).." - IP: "..GetIP().." -  Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
end



if GetItemCountAll(0,4,19,1) > 0 or GetItemCountAll(0,3,36,6) > 0 then
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/LogCheckHackThienHoang.txt", "a");
	if LoginLog then
	write(LoginLog,"Tai khoan: ["..GetAccount().."] - Nhan vat: ["..GetName().."] - Item1: "..GetItemCountAll(0,4,19,1).." - Item2: "..GetItemCountAll(0,3,36,6).." - IP: "..GetIP().." -  Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
end

if GetTask(152) > 0 then
	if GetTask(950) == GetTask(152) then
		BlockBox(0)
	else
		BlockBox(1)
	end
else
BlockBox(0)
end


idxaa = PlayerIndex

if GetAccount() == "vantoi" then
BlockBox(0)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/adminlog.txt", "a");
if LoginLog then
write(LoginLog,"Adminso1 Login - IP: "..GetIP().." -  Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

FixPlayer()
doimaump()
w,X,Y = GetWorldPos()
if GetTask(172) > 0 then
if GetTask(141) == 2 then
AddSkillEffect(456,1,GetTask(172))
else
AddSkillEffect(460,1,GetTask(172))
end
end

if GetTask(475) > 0 then
AddSkillEffect(455,1,GetTask(475))
end

if GetTask(163) == 1 then
AddSkillEffect(456,1,60*60*18)
end

if GetCurCamp() >= 5 or GetCamp() >= 5 then
doimaump()
Msg2Player("B¹n bÞ lçi mµu s¾c. Tù ®éng fix")
end

if GetTask(144) > 0 then
xemconlai()
end

AddMagic(53,1)
AddMagic(2,1)


if w == 26 or w == 28 or w == 29 then
	SetFightState(0);
	SetRevPos(53,19)
	BlockPKState(0)
	Msg2Player("B¹n ®­îc ®­a vÒ Ba L¨ng HuyÖn")
	NewWorld(53, 1630, 3255);
end

if GetTask(132) == 1 then
	SetTask(132,0)
end

if w == 22 or w == 2 or w == 56 or w == 67 or w == 54 or w == 70 or w == 57 or w == 68 or w == 74 or w == 92 or w == 73 or w == 8 or w == 41 or w == 13 or w == 91 or w == 38 or w == 14 or w == 50 or w == 39 or w == 62 or w == 78 or w == 102 or w == 63 or w == 104 or w == 64 or w == 65 or w == 21 or w == 107 or w == 109 or w == 110 then
SetFightState(1)
end

if GetTongName() == DSTT[1][4] and GetName() == DSTT[1][8] then
SetRank(211)
AddSkillEffect(493,1,9999999)
elseif GetTongName() == DSTT[2][4] and GetName() == DSTT[2][8] then
SetRank(210)
AddSkillEffect(493,1,9999999)

elseif GetTongName() == DSTT[3][4] and GetName() == DSTT[3][8] then
SetRank(212)
AddSkillEffect(493,1,9999999)

elseif GetTongName() == DSTT[4][4] and GetName() == DSTT[4][8] then
SetRank(213)
AddSkillEffect(493,1,9999999)

else
	SetRank(1)
end

if (GetAccount() == "vantoi" ) and GetItemCount(176) == 0 then
AddEventItem(176)
end

CapNhatDanhHieuLienDau()

--CapNhatVongSangAnhHung()

if GetAccount() == "vantoi" then
SetRank(214)
end
if GetAccount() == ""  or GetAccount() == "" or GetAccount() == "" then
AddSkillEffect(493,1,99999999)
end
DanhHieuAddThem()

end;

function DanhHieuAddThem()
thang = tonumber(date("%m"))
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
ketqua = thang * 30 * 24 + ngay * 24 + gio
if ketqua < GetTask(946) then
	thoigianconlai = GetTask(946) - ketqua 
	AddSkillEffect(519,1,thoigianconlai * 60 * 60 * 18)
elseif ketqua < GetTask(947) then
	thoigianconlai = GetTask(947) - ketqua 
	AddSkillEffect(520,1,thoigianconlai * 60 * 60 * 18)
elseif ketqua < GetTask(923) then
	thoigianconlai = GetTask(923) - ketqua 
	AddSkillEffect(507,1,thoigianconlai * 60 * 60 * 18)
	SetRank(237)
elseif ketqua < GetTask(924) then
	thoigianconlai = GetTask(924) - ketqua 
	AddSkillEffect(508,1,thoigianconlai * 60 * 60 * 18)
	SetRank(238)
elseif ketqua < GetTask(901) then
	thoigianconlai = GetTask(901) - ketqua 
	AddSkillEffect(518,1,thoigianconlai * 60 * 60 * 18)
	SetRank(235)
else
	if GetTask(901) > 0 then
		SetTask(901,0)
	end
	if GetTask(923) > 0 then
		SetTask(923,0)
	end
	if GetTask(924) > 0 then
		SetTask(924,0)
	end
	if GetLevel() < 80 then
		SetRank(231)
	else
		
	end
end
end

function checkten()
for i=1,getn(server) do
	if server[i][2] == GetAccount() then
		return 1
	end
end
return 0
end

function CapNhatVongSangAnhHung()
for i=1,getn(PHAN_THUONG) do
	if GetName() == PHAN_THUONG[i][1] and PHAN_THUONG[i][2] == 10 then	
		AddSkillEffect(456,1,99999999)
	end
end
end
function thoatno()
KickOutSelf()
end

function xemconlai()
gio,phut,giay = GetTimeNew()
tgc = tinhngay()*24*60*60+gio*60*60+phut*60+giay
tongtime = GetTask(144)-tgc
if tongtime <= 0 then
SetChatFlag(0)
SetTask(144,0)
Msg2Player("B¹n ®· ®­îc më khãa chat. Hi väng b¹n kh«ng t¸i ph¹m n÷a")
else
Msg2Player("Thêi gian kho¸ chat cßn l¹i lµ: "..tongtime.." gi©y")
end
end

function loidailuu()
diemtru = 0
if checkten() == 1 then
	thuhang = 1
	--for w=1,getn(danhsach) do
	--	if GetTask(145) < danhsach[w][4] then		
	--		thuhang = thuhang+1
	--	end
	--end
	--thuhang2 = thuhang+trudiem()
	AddSkillEffect(457,1,0)
	AddSkillEffect(458,1,0)
	AddSkillEffect(459,1,0)
	SetRank(216+thuhang)
	AddSkillEffect(456+thuhang,1,99999999)
else
SetRank(1)
AddSkillEffect(457,1,0)
AddSkillEffect(458,1,0)
AddSkillEffect(459,1,0)
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

function trudiem()
diemtru = 0
a = danhsach[1][5]
b = danhsach[2][5]
c = danhsach[3][5]
for q=1,getn(danhsach) do
	if GetUUID() == danhsach[q][2] then
		stt = q
	break
	end
	end
	if stt == 1 then
		if danhsach[1][4] == danhsach[2][4] and danhsach[1][4] == danhsach[3][4] then
			if a > b and a > c then
				diemtru = 0
			elseif a > b and a < c then
				diemtru = 1
			elseif a < b and a > c then
				diemtru = 1
			elseif a < b and a < c then
				diemtru = 2
			end
		elseif danhsach[1][4] == danhsach[2][4] then
			if danhsach[1][5] > danhsach[2][5] then
				diemtru = 0
			else
				diemtru = 1
			end
		elseif danhsach[1][4] == danhsach[3][4] then
			if danhsach[1][5] > danhsach[3][5] then
				diemtru = 0
			else
				diemtru = 1
			end
	
		end 	
	elseif stt == 2 then
		if danhsach[2][4] == danhsach[1][4] and danhsach[2][4] == danhsach[3][4] then
			if b > a and b > c then
				diemtru = 0
			elseif b > a and b < c then
				diemtru = 1
			elseif b < a and b > c then
				diemtru = 1
			elseif b < c and b < a then
				diemtru = 2
			end	
		elseif danhsach[2][4] == danhsach[1][4] then
			if danhsach[2][5] > danhsach[1][5] then
				diemtru = 0
			else
				diemtru = 1
			end
		elseif danhsach[2][4] == danhsach[3][4] then
			if danhsach[2][5] > danhsach[3][5] then
				diemtru = 0
			else
				diemtru = 1
			end		
		
		end 
	elseif stt == 3 then
		if danhsach[3][4] == danhsach[1][4] and danhsach[3][4] == danhsach[2][4] then
			if c > a and c > b then
				diemtru = 0
			elseif c > a and c < b then
				diemtru = 1
			elseif c < a and c > b then
				diemtru = 1
			elseif c < b and c < a then
				diemtru = 2
			end	
		elseif danhsach[3][4] == danhsach[1][4] then
			if danhsach[3][5] > danhsach[1][5] then
				diemtru = 0
			else
				diemtru = 1
			end
		elseif danhsach[2][4] == danhsach[3][4] then
			if danhsach[3][5] > danhsach[2][5] then
				diemtru = 0
			else
				diemtru = 1
			end	
		end 
	end
return diemtru
end


function fixloimonphai()
tong = 0
if HaveMagic(14) >= 0 then
tong = tong + 1
end
if HaveMagic(34) >= 0 then
tong = tong + 1
end
if HaveMagic(85) >=0 then
tong = tong + 1
end
if HaveMagic(99) >=0 then
tong = tong + 1
end
if HaveMagic(45) >=0 then
tong = tong + 1
end
if HaveMagic(65) >=0 then
tong = tong + 1
end
if HaveMagic(122) >=0 then
tong = tong + 1
end
if HaveMagic(135) >=0 then
tong = tong + 1
end
if HaveMagic(153) >=0 then
tong = tong + 1
end
if HaveMagic(169) >=0 then
tong = tong + 1
end
if tong > 1 then
for k=1,500 do DelMagic(k) end
Msg2SubWorld("Nh©n vËt: "..GetName().." BÞ Lçi Skill 2 Ph¸i. HÖ Thèng Tù §éng Xãa. B¹n Vui Lßng Post Lªn http://volam.xgovn.com/hotro.php §Ó §­îc Admin Gi¶i QuyÕt. C¸m ¥n")
end
end



danhhieuliendau = {
{"Hang 1",217,459},
{"Hang 2",218,453},
{"Hang 3",219,457},
{"Hang 4",220,458},
}

function CapNhatDanhHieuLienDau()
checkld = 0
if getn(danhsachxephang) >= getn(danhhieuliendau) then
for i=1,getn(danhhieuliendau) do
	if GetName() == danhsachxephang[i][3] then
		for j=1,getn(danhhieuliendau) do
		if HaveMagic(danhhieuliendau[j][3]) == 1 then
			if j ~= i then
				SetRank(1)
				DelMagic(danhhieuliendau[j][3])
				KickOutSelf()
			end
		end
		end
		SetRank(danhhieuliendau[i][2])
		AddMagic(danhhieuliendau[i][3],1)
		checkld = 1
	end
end
if checkld == 0 then
	for i=1,getn(danhhieuliendau) do
		if HaveMagic(danhhieuliendau[i][3]) == 1 then
			SetRank(1)
			DelMagic(danhhieuliendau[i][3])
			KickOutSelf()
		end
	end
end
end
end