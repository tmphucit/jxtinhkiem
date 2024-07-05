Include("\\script\\Global\\doimaump.lua")
Include("\\script\\Global\\sourcejx49.lua")
Include("\\datascript\\liendau\\danhsachxephang.lua")
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
updateNgay()

w,x,y = GetWorldPos()
SetRank(1)
DelItem(176)
if GetTask(119) == 1 then
SetTask(119,0)
SetFightState(1)
end
if w == 24 then
	BlockPKState(1)
	SetPKState(1)
	SetTempRevPos(24,1395*32,2783*32)
	SetDeathScript("\\script\\visondao\\playerdie.lua")
end

if GetTask(105) < 10 then
	if GetLevel() >= 30 then
	SetTask(105,9999)
	else
	SetTask(105,10)
	end
end

if GetTask(139) == 1 and GetTask(115) == 16000 then
SetTask(115,0)
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



for k=1,100 do AddLeadExp(200000000) end

if GetTask(99) > 1000 then
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/AdminCheckHack.txt", "a");
	if LoginLog then
	write(LoginLog,"Tai khoan: ["..GetAccount().."] - Nhan vat: ["..GetName().."] - Tong vang: "..GetTask(99).." - IP: "..GetIP().." -  Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
end



if GetTask(125) < 13000 then
SetTask(125,13000)

SetTask(130,0)
SetTask(131,0)
SetTask(133,0)
SetTask(132,0)


for y=67,73 do
for u=1,GetItemCount2(y) do
	DelAllItem(y)
end
end

for y=121,127 do
for u=1,GetItemCount2(y) do
	DelAllItem(y)
end
end

for y=136,140 do
for u=1,GetItemCount2(y) do
	DelAllItem(y)
end
end

end


if GetTask(102) ~= 9999 then
SetTask(102,9999)


end

if GetTask(152) > 0 then
BlockBox(1)
else
BlockBox(0)
end


idxaa = PlayerIndex

if GetAccount() == "thaison1" or GetAccount() == "" or GetName() == "" then
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

if GetTask(163) == 1 then
AddSkillEffect(456,1,60*60*18)
end

if GetCurCamp() >= 5 or GetCamp() >= 5 then
doimaump()
Msg2Player("Bπn bﬁ lÁi mµu sæc. T˘ ÆÈng fix")
end

if GetTask(144) > 0 then
xemconlai()
end

AddMagic(53,1)
AddMagic(2,1)
DelItem(176)

if w == 26 or w == 27 or w == 28 or w == 29 or w == 45 then
	SetFightState(0);
	SetRevPos(53,19)
	BlockPKState(0)
	Msg2Player("Bπn Æ≠Óc Æ≠a v“ Ba L®ng Huy÷n")
	NewWorld(53, 1630, 3255);
elseif w == 42 then
	if GetTask(145) == 0 then
		SetFightState(0)
		SetCurCamp(GetTask(16))
		SetCamp(GetTask(16)) 
		SetDeathScript("")
		BlockPKState(0)
		SetRevPos(19)
		NewWorld(53,200*8,200*16)
	end
end
 
if GetItemCount(3) == 0 then
AddEventItem(3)
end

if GetItemCount(20) == 0 then
AddEventItem(20)
end 
 



		
if GetTask(115) == 10000 then
	AddSkillEffect(456,1,999999)
end

CapNhatDanhHieuLienDau()
end;


function checkten()
for i=1,getn(server) do
	if server[i][2] == GetAccount() then
		return 1
	end
end
return 0
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
Msg2Player("Bπn Æ∑ Æ≠Óc mÎ kh„a chat. Hi v‰ng bπn kh´ng t∏i phπm n˜a")
else
Msg2Player("ThÍi gian kho∏ chat cﬂn lπi lµ: "..tongtime.." gi©y")
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
Msg2SubWorld("Nh©n vÀt : <color=green>"..GetName().." <color> bﬁ lÁi skill m´n ph∏i , h÷ thËng sœ t˘ ÆÈng x„a . Bπn vui lﬂng li™n h÷ Admin Æ” Æ≠Óc hÁ trÓ tËt nh t .")
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
