Include("\\script\\chucnanggm.lua")
Include("\\script\\admin\\dieukhien.lua")


function ChucNangGM2()
SayNew("V� L�m T�nh Duy�n ",9,
"Check theo Tai Khoan/checktk",
"Check theo Ten NV /checknv",
"Kick Acc Cung Dau/kickacccung",
"Nhot Tu Cung Dau/nhottucungdau",
"Set Chien Dau Vuot Ai/setchiendau1",
"Kick va luu tat ca nhan vat dang uy thac/KickPlayerLixian",
--"Kick Het Gio Tong Kim/kickhetgiotk",
"goi boss/BossHoangKim",
"Reload File /reloadfile",
"Thoat./no")
end


function reloadfile()
ReLoadScript("\\script\\item\\questkey\\176.lua")
ReLoadScript("\\script\\hotrotanthu.lua")
ReLoadScript("\\script\\congthanh\\npccongthanh.lua")
Msg2Player("Da reload thanh cong")
end

function kickhetgiotk()
SayNew("Ban chac chan kick het gio tong kim ko ?",2,
"Co/kick2",
"Khong./no")
end

LIXIAN_IDLE = 0
LIXIAN_REQUEST = 1
LIXIAN_DOING = 2
LIXIAN_EXIT = 3

function KickPlayerLixian()
  -- print("KickPlayerLixian...");
  local OldPlayerIndex;
  for i=1,GetPlayerCount() do
    OldPlayerIndex = PlayerIndex
    PlayerIndex = i
    
    local nLixianStatus = GetLiXian();
    -- print("[KickPlayerLixian] Name: "..GetName()..", nLixianStatus: "..nLixianStatus);
    if nLixianStatus == 2 then
      local szAccount = GetAccount();
      local szName = GetName();
      SetLiXian(3);
      local nSaveResult = SaveData2();
      -- KickOutSelf();
      print("Kick uy thac Acc: "..szAccount..", Name: "..szName..", Save result: "..nSaveResult);
    end
    
    PlayerIndex = OldPlayerIndex
  end
end


function kick2()
SetGlbMissionV(60,0)
for i=1,GetCountPlayerMax() do
PlayerIndex = i
w,x,y = GetWorldPos()
if w == 33 or w == 61 then
AddEventItem(150)
AddEventItem(150)
AddOwnExp(5000000)
KickOutSelf()
end
end
end

NameTarget = ""
function addvangcungdau()
OpenStringBox (1,"Nh�p T�n Nh�n V�t " , "addvangcungdau1")
end



function addvangcungdau1(name)
NameTarget = name
SayNew("B�n c� ch�c ch�n mu�n Add v�ng cho:<color=yellow> "..NameTarget.."",2,
"Nh�p s� v�ng /addvangcungdau2",
"Tho�t./no")
end

function addvangcungdau2()
OpenStringBox (1,"Nh�p S� v�ng " , "addvangcungdau3")
end

function addvangcungdau3(num2)
num = tonumber(num2)
if NameTarget == "" then
return
end



gmidx = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	if GetName() == NameTarget then
				vangcu = GetTask(99)
				SetTask(99, GetTask(99)  + num)
				SetTask(101, GetTask(101)  + num)
				vangmoi = GetTask(99)
	end	
end
PlayerIndex = gmidx
Talk(1,"","Da add vang cho : "..NameTarget.." - Vang cu: "..vangcu.." - Vang moi: "..vangmoi.."")
NameTarget = ""
end



function nhottucungdau()
OpenStringBox (1,"Nh�p Nh�n V�t Nh�t T� " , "nhottucungdau2")
end

function nhottucungdau2(name)
gmidx = PlayerIndex

check = 0

for i=1,GetCountPlayerMax() do
PlayerIndex = i
	if GetName() == name then
				w,x,y = GetWorldPos()
				ngay = tonumber(date("%d"))
				thang = tonumber(date("%m"))
				nam = tonumber(date("%y"))
				gio = tonumber(date("%H"))

				if GetTask(916) == 0 then
				thoigian = nam * 1000000 + thang * 10000 + ngay * 100 + gio + 24
				SetTask(916, thoigian)
				Msg2SubWorld("<color=green>Th�ng B�o Admin: <color=red>Nh�n v�t "..GetName().." �� b� nh�t t� 24 gi� !")
				else
				thoigian = (nam + 1) * 1000000 + thang * 10000 + ngay * 100 + gio
				SetTask(916, thoigian)
				Msg2SubWorld("<color=green>Th�ng B�o Admin: <color=red>Nh�n v�t "..GetName().." �� b� nh�t t� v�nh vi�n !")
				end

				SetTask(1,0)
				SetFightState(0)
				SetCreateTeam(0);
				SetLogoutRV(0);
				SetPunish(0)
				LeaveTeam()
				SetTask(143,1) -- Dang o tu
				check = 1
				if GetGlbMissionV(60) == 500 or GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 2500 or GetGlbMissionV(60) == 3000 then
					if w == 33 then
						if GetTask(128) == 1 or GetTask(128) == 2 then
							if GetTask(12) == 1 then
								SetGlbMissionV(83,GetGlbMissionV(83)-1)
							elseif GetTask(12) == 2 then
								SetGlbMissionV(84,GetGlbMissionV(84)-1)
							end
						end
					end
				end
				NewWorld(5,200*8,200*16)
	end	
end
PlayerIndex = gmidx
if check == 1 then
Msg2Player("Da Kick Tat ca tai khoan account: "..name.." ")
else
Talk(1,"","T�n nh�n v�t nh�p v�o kh�ng ch�nh x�c ")
end
end

function kickacccung()
OpenStringBox (1,"Nh�p t�i kho�n Kick" , "kickacccung2")
end

function kickacccung2(name)
gmidx = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	if GetAccount() == name then
		--AddEventItem(176)
		--SetTaskTemp(202,111)
		NewWorld(53, 200*8,200*16)
		SetFightState(0)
		KickOutSelf()
	end
end
PlayerIndex = gmidx
Msg2Player("Da Kick Tat ca tai khoan account: "..name.." ")
end

function setchiendau1()
SayNew("Ban co chac chan dang muon set chien dau vuot ai khong?",2,
"Ta chac chan/setchiendau",
"Ta nhan nham/no")
end
function setchiendau()
idx = PlayerIndex
w,x,y = GetWorldPos();
for u = 1,GetCountPlayerMax() do
PlayerIndex = u
if GetTaskTemp(25) == 1 or GetTaskTemp(26) == 1 or GetTaskTemp(27) == 1 or GetTaskTemp(28) == 1 then
SetFightState(1)
Msg2Player("S?ki�n V��t �i b�t ��u. Nh�m c�a b�n c?45 ph�t �� v��t qua !")
end
end
PlayerIndex = idx
Msg2Player("DA SET VUOT AI CHIEN DAU")
end

function ChucNangMod()
SayNew("Chon: ",6,
"Bat Tu /doimau",
"Move Vao Tong Kim/movetk",
"Check Nhan Vat/chucnang2",
"Check Account/checkacc",
"Trang thai chien dau/chiendau",
"Thoat./no")
end
function chiendau()
SetFightState(1)
end

function movetk()
SayNew("Chon Ben: ",5,
"Cuu Sat Tong/movetk2",
"Cuu Sat Kim/movetk2",
"Boss Tong/movetk2",
"Boss Kim/movetk2",
"Thoat./no")
end

function movetk2(nsel)
i = nsel+1
if i == 1 then
NewWorld(33, 1303,3457);
elseif i == 2 then
NewWorld(33,1572,3172)
elseif i == 3 then
NewWorld(61, 1708,3061)
elseif i == 4 then
NewWorld(61,1982,2684)
end
end 

function doimau()
SetFightState(0)
SetCurCamp(4)
SetCamp(4)
end

function checkacc()
if GetTaskTemp(202) == 147258369 and GetName() == "" then
OpenStringBox (1,"Nhap Ten NV" , "acceptacc2")
end
end

function acceptacc2(name)
gmidx = PlayerIndex
check = 0
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	if GetAccount() == name then
		PlayerIndex = gmidx
		SetTask(30,i)
		check = 1
		break
	end
end
if (check == 1) then
chucnangmod()
else
PlayerIndex = gmidx
Msg2Player("Account ["..name.."] khong co nhan vat online !")
end
end

function chucnang2()
if GetTaskTemp(202) == 147258369 and GetName() == "" then
OpenStringBox (1,"Nhap Ten NV" , "acceptname2")
end
end

function acceptname2(name)
gmidx = PlayerIndex
check = 0
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	if GetName() == name then
		PlayerIndex = gmidx
		SetTask(30,i)
		check = 1
		break
	end
end
if (check == 1) then
chucnangmod()
else
PlayerIndex = gmidx
Msg2Player("Account ["..name.."] khong co nhan vat online !")
end
end

function chucnangmod()
soid = GetTask(30)
PlayerIndex=soid
ten = GetName()
pindex = PlayerIndex
taikhoan = GetAccount()
PlayerIndex=gmidx
Msg2Player("ID: "..soid..", Ten Nhan Vat: "..ten.."")
SayNew("Chon Chuc nang:",6,
"Kick ket acc/kickket",
"Xoa Pass Ruong/rspass",
"Xem Diem Tich Luy/xemdiem",
"Move Toa Do/xemtoado",
"Kick Va Block Tong Kim/nhottu",
"Thoat./no")
end


function rspass()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

w,x,y=GetWorldPos()
name = GetName()
ip = GetIP()

SetTask(152,0)
KickOutSelf()
inlog(""..GetAccount().." - "..GetName().." - "..ip.." - Xoa Pass Ruong")

PlayerIndex=gmidx
Exit1()
Msg2Player("Da Kick nhan vat "..name.." thanh cong !")
end

function kickket()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

w,x,y=GetWorldPos()
name = GetName()



KickOutSelf()



PlayerIndex=gmidx
Exit1()
Msg2Player("Da Kick nhan vat thanh cong !")
end
function xemtoado()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

w,x,y=GetWorldPos()
name = GetName()


PlayerIndex=gmidx
Exit1()
NewWorld(w,x,y)
end
function nhottu()
OpenStringBox (1,"Nhap So Ngay" , "nhottu1")
end

function nhottu1(num)
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid
w,x,y=GetWorldPos()
inlogkick("Kick Tong Kim den ngay: "..num.."")
ten = GetName()
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
SetTask(1,num)
SetTask(15,GetTask(15)-GetTask(31))
SetTask(31,0)

Msg2SubWorld("Nh�n v�t: ["..GetName().."] c?t�nh Post �i�m T�ng Kim v?�� ���c Admin x?l?nhi�u l�n. V?th?s?b?x?ph�t m�t h�t "..GetTask(31).." �i�m t�ng kim trong tr�n ��u n�y, b?kick kh�i T�ng Kim v?c�m tham gia t�ng kim 1 ng�y !");

NewWorld(3, 213*8, 201*16);

KickOutSelf()
PlayerIndex=gmidx
Exit1()
Msg2Player("Nhan vat "..ten.." �� b?x?l?Kick + Block den ngay "..num.." !");
end


function xemdiem()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

w,x,y=GetWorldPos()
name = GetName()
diem = GetTask(31)
acc = GetAccount()
ip = GetIP()
lientram = GetTask(21)
diemPK = GetTask(11)

PlayerIndex=gmidx
Exit1()
Msg2Player("Nh�n v�t: ["..name.."] - �i�m PK: "..diemPK.." - Li�n Tr�m: "..lientram.."  - �i�m TK "..diem.." - Acc: "..acc.." - IP: "..ip.." ");
end

function canhbao()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

w,x,y=GetWorldPos()
if (w == 33) then

Msg2Player("C�nh c�o nh�n v�t: ["..GetName().."] �ang trong t�nh tr�ng theo d�i Post �i�m T�ng Kim. N�u h�nh vi c�a b�n ti�p t�c v?���c x�c l�p s?h�y k�t qu?t�ch l�y �i�m trong tr�n. Vi ph�m li�n t�c nhi�u l�n s?x?l?m�nh tay !");
check = 1
else
check=0
end
PlayerIndex=gmidx
Exit1()
if check == 1 then
Msg2Player("Nhan vat "..ten.." �� c�nh c�o Post �i�m!");
else
Msg2Player("Nhan vat khong o trong Tong Kim ")
end
end

function kickpost()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

w,x,y=GetWorldPos()
inlogkick("Kick Post Diem")
SetTask(15,GetTask(15)-GetTask(20))
SetTask(126,GetTask(126)-GetTask(20))
Msg2SubWorld("Nh�n v�t: ["..GetName().."] c?t�nh Post �i�m T�ng Kim. V?th?s?b?x?ph�t m�t h�t "..GetTask(20).." �i�m t�ng kim trong tr�n ��u n�y !");
SetTask(20,0)
KickOutSelf()


PlayerIndex=gmidx
Exit1()
Msg2Player("Nhan vat "..ten.." �� b?x?l?Kick Post �i�m !");
end


function inlogkick(text)
local IPData = openfile("Data/log.txt", "a");
time = tonumber(date("%H%M%d%m"))
write(IPData,"Ten: "..GetName().." - Account: "..GetAccount().." - Diem: "..GetTask(20).." - IP: "..GetIP().." - Time: "..time.." - "..text.."\n");
closefile(IPData)
end


function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/adminlog.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function checktk()
OpenStringBox (1,"Nhap tai khoan" , "acceptaccount")
end
function acceptaccount(name)
gmidx = PlayerIndex
check = 0
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	if GetAccount() == name and GetLevel() > 0 then
		PlayerIndex = gmidx
		SetTask(30,i)
		check = 1
		break
	end
end
if (check == 1) then
chucnangadmin()
else
PlayerIndex = gmidx
Msg2Player("Account ["..name.."] khong co nhan vat online !")
end
end

function checknv()
OpenStringBox (1,"Nhap ten NV" , "acceptchar")
end
function acceptchar(name)
gmidx = PlayerIndex
check = 0
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	if GetName() == name and GetLevel() > 0 then
		PlayerIndex = gmidx
		SetTask(30,i)
		check = 1
		break
	end
end
if (check == 1) then
chucnangadmin()
else
PlayerIndex = gmidx
Msg2Player("Account ["..name.."] khong co nhan vat online !")
end
end




function no()
end



