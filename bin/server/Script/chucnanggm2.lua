Include("\\script\\chucnanggm.lua")
Include("\\script\\Global\\GM.lua")

function ChucNangGM2()
if GetTaskTemp(202) == 891992 and GetAccount() == "thaison1" then
Say("BX YEU CHUT CHUT",7,
"Check theo Tai Khoan/checktk",
"Check theo Ten NV /checknv",
"Set Chien Dau Vuot Ai/setchiendau1",
"Kick Acc Cung Dau/kickacccung",
"Kick Het Gio Tong Kim/kickhetgiotk",
"Xem th´ng tin toµn nh©n vÀt/system",
"Thoat./no")
end
end

function kickhetgiotk()
Say("Ban chac chan kick het gio tong kim ko ?",2,
"Co/kick2",
"Khong./no")
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

function kickacccung()
OpenStringBox (1,"Nhap Ten Tai KHoan" , "kickacccung2")
end

function kickacccung2(name)
gmidx = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	if GetAccount() == name then
		KickOutSelf()
	end
end
PlayerIndex = gmidx
Msg2Player("Da Kick Tat ca tai khoan account: "..name.." ")
end

function setchiendau1()
Say("Ban co chac chan dang muon set chien dau vuot ai khong?",2,
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
Msg2Player("S?ki÷n V≠Ót ∂i bæt Æ«u. Nh„m cÒa bπn c?45 phÛt Æ” v≠Ót qua !")
end
end
PlayerIndex = idx
Msg2Player("DA SET VUOT AI CHIEN DAU")
end

function ChucNangMod()
Say("Chon: ",6,
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
Say("Chon Ben: ",5,
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
if GetTaskTemp(202) == 147258369 and GetName() == "titeoteo" then
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
if GetTaskTemp(202) == 147258369 and GetName() == "titeoteo" then
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
Say("Chon Chuc nang:",6,
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

Msg2SubWorld("Nh©n vÀt: ["..GetName().."] c?t◊nh Post Æi”m TËng Kim v?Æ∑ Æ≠Óc Admin x?l?nhi“u l«n. V?th?s?b?x?phπt m t h’t "..GetTask(31).." Æi”m tËng kim trong trÀn Æ u nµy, b?kick kh·i TËng Kim v?c m tham gia tËng kim 1 ngµy !");

NewWorld(3, 213*8, 201*16);

KickOutSelf()
PlayerIndex=gmidx
Exit1()
Msg2Player("Nhan vat "..ten.." Æ∑ b?x?l?Kick + Block den ngay "..num.." !");
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
Msg2Player("Nh©n vÀt: ["..name.."] - ßi”m PK: "..diemPK.." - Li™n Tr∂m: "..lientram.."  - ßi”m TK "..diem.." - Acc: "..acc.." - IP: "..ip.." ");
end

function canhbao()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

w,x,y=GetWorldPos()
if (w == 33) then

Msg2Player("C∂nh c∏o nh©n vÀt: ["..GetName().."] Æang trong t◊nh trπng theo d‚i Post Æi”m TËng Kim. N’u hµnh vi cÒa bπn ti’p tÙc v?Æ≠Óc x∏c lÀp s?hÒy k’t qu?t›ch lÚy Æi”m trong trÀn. Vi phπm li™n tÙc nhi“u l«n s?x?l?mπnh tay !");
check = 1
else
check=0
end
PlayerIndex=gmidx
Exit1()
if check == 1 then
Msg2Player("Nhan vat "..ten.." Æ∑ c∂nh c∏o Post ßi”m!");
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
Msg2SubWorld("Nh©n vÀt: ["..GetName().."] c?t◊nh Post Æi”m TËng Kim. V?th?s?b?x?phπt m t h’t "..GetTask(20).." Æi”m tËng kim trong trÀn Æ u nµy !");
SetTask(20,0)
KickOutSelf()


PlayerIndex=gmidx
Exit1()
Msg2Player("Nhan vat "..ten.." Æ∑ b?x?l?Kick Post ßi”m !");
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
	if GetAccount() == name then
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
	if GetName() == name then
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



