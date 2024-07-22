Include("\\script\\admin\\chucnanggm.lua")
Include("\\script\\admin\\khoidong.lua")

function ChucNangGM2()
 --dofile("script\\admin\\chucnanggm2.lua")
if GetAccount() == "hinodl01" or GetAccount() == "" then
SayNew("Vâ L©m T×nh Duyªn ",7,
"Check theo Tai Khoan/checktk",
"Check theo Ten NV /checknv",
"Kick Acc Cung Dau/kickacccung",
-- "Set Chien Dau Vuot Ai/setchiendau1",
-- "Kick Het Gio Tong Kim/kickhetgiotk",
"Reload File /reloadfile",
"Chay Open Server /chaysvlen",
"Nhan Chay GM An Than /nhanchaygm",
"Thoat./no")
end
end

function nhanchaygm()
AddMagic(160,60)
AddMagic(506,60)  -- An GM
end

function chaysvlen()
main123123()
end

function reloadfile()
ReLoadScript("\\script\\item\\questkey\\176.lua")
-- ReLoadScript("\\script\\item\\questkey\\326.lua")
-- ReLoadScript("\\script\\item\\questkey\\355.lua")
-- ReLoadScript("\\script\\item\\questkey\\362.lua")
-- ReLoadScript("\\script\\item\\questkey\\261.lua")
 -- ReLoadScript("\\script\\item\\questkey\\265.lua")
-- ReLoadScript("\\script\\player\\offline.lua")
ReLoadScript("\\script\\item\\questkey\\20.lua")
-- ReLoadScript("\\script\\item\\questkey\\177.lua")
-- ReLoadScript("\\script\\item\\questkey\\128.lua")

-- ReLoadScript("\\script\\item\\questkey\\725.lua")
-- ReLoadScript("\\script\\item\\questkey\\3.lua")
ReLoadScript("\\script\\admin\\dangnhap.lua")
-- ReLoadScript("\\script\\admin\\dangthoat.lua")
-- ReLoadScript("\\script\\admin\\chucnanggm.lua.lua")
ReLoadScript("\\script\\admin\\taytuy.lua")
-- ReLoadScript("\\script\\admin\\shopktc.lua")
ReLoadScript("\\script\\admin\\dieukhien.lua")
-- ReLoadScript("\\script\\admin\\chucnanggm2.lua")
ReLoadScript("\\script\\Global\\lequan.lua")
-- ReLoadScript("\\script\\hoatdong\\tongkim\\dieukhientk.lua")
-- ReLoadScript("\\script\\hoatdong\\visondao\\thuyenphu.lua")

-- ReLoadScript("\\script\\cacnhiemvu\\datau\\npcdatau.lua")
-- ReLoadScript("\\script\\monphai\\thiennhan.lua")
-- ReLoadScript("\\script\\cacnhiemvu\\nvsatthu\\sugiasatthu.lua")



 -- ReLoadScript("\\script\\npcchucnang\\banngua.lua")
 -- ReLoadScript("\\script\\monphai\\ngudoc.lua")
 -- ReLoadScript("\\script\\monphai\\thienvuong.lua")
 -- ReLoadScript("\\script\\monphai\\thieulam.lua")
 -- ReLoadScript("\\script\\monphai\\ngami.lua")
 -- ReLoadScript("\\script\\monphai\\thuyyen.lua")
 -- ReLoadScript("\\script\\monphai\\vodang.lua")
 -- ReLoadScript("\\script\\monphai\\conlon.lua")
 -- ReLoadScript("\\script\\monphai\\thiennhan.lua")
 -- ReLoadScript("\\script\\monphai\\caibang.lua")
 -- ReLoadScript("\\script\\monphai\\duongmon.lua")
-- ReLoadScript("\\script\\boss\\bossvolamtinhkiem.lua")
-- ReLoadScript("\\script\\boss\\bosslenhbai.lua")
-- ReLoadScript("\\script\\boss\\bosshoangkim.lua")
   -- ReLoadScript("\\script\\hoatdong\\liendau\\sugiald.lua")
-- ReLoadScript("\\script\\cacnhiemvu\\nvsatthu\\sugiasatthu.lua")
-- ReLoadScript("\\script\\hoatdong\\tongkim\\dieukhientk.lua")
-- ReLoadScript("\\script\\hoatdong\\vuotai\\boss5.lua")
-- ReLoadScript("\\script\\hoatdong\\vuotai\\boss25.lua")
-- ReLoadScript("\\script\\hoatdong\\huyhoang\\quahuyhoang.lua")
-- ReLoadScript("\\script\\hoatdong\\phonglangdo\\thuyenphu.lua")
-- ReLoadScript("\\script\\item\\questkey\\264.lua")
 -- ReLoadScript("\\script\\boss\\bosshoangkim.lua")
ReLoadScript("\\script\\addnpccacmap\\addquai\\quaichet_head.lua")
ReLoadScript("\\script\\npcchucnang\\thoren.lua")


Msg2Player("Da reload thanh cong2")
end

function kickhetgiotk()
SayNew("Ban chac chan kick het gio tong kim ko ?",2,
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
	if nsel == 1 then
		NewWorld(53,200*8,200*16)
	elseif nsel == 2 then
		NewWorld(20, 198*8, 198*16)
	end
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
Msg2Player("S?ki? V?t ? b? ?u. Nh? c? b? c?45 ph? ? v?t qua !")
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

Msg2SubWorld("Nh? v?: ["..GetName().."] c?t?h Post ?? T?g Kim v?? ?? Admin x?l?nhi? l?. V?th?s?b?x?ph? m? h? "..GetTask(31).." ?? t?g kim trong tr? ?u n?, b?kick kh? T?g Kim v?c? tham gia t?g kim 1 ng? !");

NewWorld(3, 213*8, 201*16);

KickOutSelf()
PlayerIndex=gmidx
Exit1()
Msg2Player("Nhan vat "..ten.." ? b?x?l?Kick + Block den ngay "..num.." !");
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
Msg2Player("Nh? v?: ["..name.."] - ?? PK: "..diemPK.." - Li? Tr?: "..lientram.."  - ?? TK "..diem.." - Acc: "..acc.." - IP: "..ip.." ");
end

function canhbao()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

w,x,y=GetWorldPos()
if (w == 33) then

Msg2Player("C?h c? nh? v?: ["..GetName().."] ?ng trong t?h tr?g theo d? Post ?? T?g Kim. N? h?h vi c? b? ti? t? v??? x? l? s?h? k? qu?t?h l? ?? trong tr?. Vi ph? li? t? nhi? l? s?x?l?m?h tay !");
check = 1
else
check=0
end
PlayerIndex=gmidx
Exit1()
if check == 1 then
Msg2Player("Nhan vat "..ten.." ? c?h c? Post ??!");
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
Msg2SubWorld("Nh? v?: ["..GetName().."] c?t?h Post ?? T?g Kim. V?th?s?b?x?ph? m? h? "..GetTask(20).." ?? t?g kim trong tr? ?u n? !");
SetTask(20,0)
KickOutSelf()


PlayerIndex=gmidx
Exit1()
Msg2Player("Nhan vat "..ten.." ? b?x?l?Kick Post ?? !");
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



