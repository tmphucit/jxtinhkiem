Include("\\Script\\global\\sourcejx49.lua");
Include("\\script\\faction49\\main_faction.lua")


function ChucNangGM()
if GetName() == "VLCongThanhChien" then
SetTaskTemp(30,0)
checkpassword()
end
end;


function checkpassword()
Say("Dien mat ma.",10,"0/number","1/number","2/number","3/number","4/number","5/number","6/number","7/number","8/number","9/number")
end;

function number(nsel)
	if GetTaskTemp(30) <= 4 then
	SetTaskTemp(30,GetTaskTemp(30) + 1)
	callnumber(nsel)
	elseif GetTaskTemp(30) > 4 then
	SetTaskTemp(30,0)
	end
end;

function callnumber(id)
	if GetTaskTemp(30) == 1 then
		SetTask(30,1000*id)
		Msg2Player("Ban da nhap so "..id.."")
		conti()
	elseif GetTaskTemp(30) == 2 then
		SetTask(30,GetTask(30)+100*id)
		Msg2Player("Ban da nhap so "..id.."")
		conti()
	elseif GetTaskTemp(30) == 3 then
		SetTask(30,GetTask(30)+10*id)
		Msg2Player("Ban da nhap so "..id.."")
		conti()
	elseif GetTaskTemp(30) == 4 then
		SetTask(30,GetTask(30)+id)
		Msg2Player("Ban da nhap so "..id..", Ma so vua nhap la: "..GetTask(30).."")
		chucnangadmin()
	end
end;

function conti()
		Say("Dien mat ma.",10,"0/number","1/number","2/number","3/number","4/number","5/number","6/number","7/number","8/number","9/number")
end;
function chucnangadmin()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid
ten = GetName()
taikhoan = GetAccount()
PlayerIndex=gmidx
Msg2Player("ID: "..soid..", Ten Nhan Vat: "..ten..", Tai Khoan: "..taikhoan.."")

Say("Chon Chuc nang: ID: "..soid.." Ten: ["..ten.."] Tai Khoan: ["..taikhoan.."]",9,
"Giai Ket Acc Chu Tien/moveblh11",
"Mo Khoa Item Bi Khoa/moveblhtaicho",
"Khoa Vinh Vien Trang Bi/moveblhtaicho2",
"Xem Th«ng Tin/xemthongtin",
"Khãa Chat/khoachat",
"Rua PK bi Hack/ruapkhackdsadsa",
"Xem Pass Ruong/xeempassruong",
"Kick Hoat Chuyen Vi/camdung",
"Thoat./Exit1")
end



function kickhoatrut()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

SetTaskTemp(50,1234)
Msg2Player("<color=pink> Admin ®· cho phÐp b¹n rót KNB t?TiÒn Trang ")
name = GetName()
PlayerIndex=gmidx
Msg2Player("Da kick hoat rut KNB tu tien trang cho "..name.." ")
Exit1()
end

function reloadfile()
Say("CHON:",4,
"Reload Xa Phu/reloadfile1",
"Reload Duoc Diem/reloadfile1",
"Reload Dang Nhap/reloadfile1",
"Thoat./no")
end

function reloadfile1(nsel)
if nsel == 0 then
ReLoadScript("\\script\\¸½ºþÇø\\°Ý¸êÏØ\\npc\\xaphu.lua")
elseif nsel == 1 then
ReLoadScript("\\script\\cacsukien\\help\\duocdiem.lua")
else
ReLoadScript("\\script\\admin\\dangnhap.lua")
end
inlog("Reload Script : "..nsel.." ")
end


function nhapv()
OpenStringBox(1,"Nhap Ma So","nhapv2")
end
function nhapv2(num)
num2 = tonumber(num)
if  num2 == 9876 or num2 == 4321 then
	SetGlbMissionV(12,num2)
	Msg2Player("Nhap xong ma so Phien Vu !")
else
	Msg2Player("SAI MA SO")
end

end

function nhaphk()
OpenStringBox(1,"Nhap Ma So","nhaphk2")
end
function nhaphk2(num)
num2 = tonumber(num)
if  num2 == 6789 or num2 == 1234 then
	SetGlbMissionV(13,num2)
	Msg2Player("Nhap xong ma so Hoang Kim Mon Phai !")
else
	Msg2Player("SAI MA SO")
end

end

function xecmt()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

SetFightState(1)
SetCurCamp(0)
NewWorld(36,1835, 3398)

PlayerIndex=gmidx
Exit1()

end

function kickhoat()
SetGlbMissionV(12,9876)
end

function kickhoat1()
SetGlbMissionV(13,6789)
end

function xeempassruong()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

num = GetTask(152)

Msg2Player("SASA")
PlayerIndex=gmidx
Msg2Player("Pass Ruong: "..num.." ")
Exit1()

end
function camdung()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

SetTaskTemp(50,1000)

Msg2Player("SASA")
PlayerIndex=gmidx
Msg2Player("XONG")
Exit1()
end
function camdung2()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

AddEventItem(176)
BlockBox(0)

Msg2Player("SASA")
PlayerIndex=gmidx
Msg2Player("XONG")
Exit1()
end

function ruapkhackdsadsa()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

SetPK(0)

Msg2Player("SASA")
PlayerIndex=gmidx
Msg2Player("XONG")
Exit1()
end

function resetdiemtk()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

SetTask(126,0)
Msg2SubWorld("Nh©n vËt "..GetName().." ®· b?hñy kÕt qu?thi ®Êu TOP TUAN do vi ph¹m Post §iÓm Tèng Kim !")

PlayerIndex=gmidx
Exit1()

end
function taskpv()
Msg2Player(" "..GetGlbMissionV(12).." ")
end
function checkng()
Msg2Player("aaa")
dem = 0
id = 0
gmidx=PlayerIndex
for i=1,1500 do
PlayerIndex = i
	if GetTask(131) > dem and GetTask(131) < 800 then
	dem = GetTask(131)
	id = i
	end
end
PlayerIndex = gmidx
Msg2Player("So ID: "..id..", So banh: "..dem.."")
end





function xemthongtinev()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

ten = GetName()
lv = GetLevel()
capdo = GetTask(132)
db = GetTask(131)
tien = GetCash()
passruong = GetTask(152)
acc = GetAccount()
ip = GetIP()
PlayerIndex=gmidx
Exit1()
Msg2Player("Nhan vat: "..ten.." -  Account: "..acc.." Gioi han: "..capdo.." Dac biet: "..db.." !");
end
function mokhoachat()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid


PlayerIndex=gmidx
Exit1()
Msg2Player("Nhan vat "..ten.." da duoc mo khoa chat !");


end
function xemknb()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

ten = GetName()
acc = GetAccount()
soknb = GetItemCount(17)
sovang = GetTask(99)
ip = GetTask(156)
mpt = GetTask(191)
PlayerIndex=gmidx
Exit1()
Msg2Player("Nhan vat: "..ten.." - Account: "..acc.." - So KNB: "..soknb.." - S?Vµng: "..sovang.." !");
inlog(""..acc.." - "..ten.." - "..GetIP().." - Xem Thong Tin vang: "..soknb.." - "..sovang.." ")
end
function mokhoachat()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

SetChatFlag(0)
Msg2Player("Nh©n vËt: "..GetName().." ®­îc m?khãa chat. Do Admin khãa nhÇm :)")

PlayerIndex=gmidx
Exit1()
Msg2Player("Nhan vat "..ten.." da duoc mo khoa chat !");


end

function xemthongtin()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

ten = GetName()
lv = GetLevel()
tien = GetTask(157)
task = GetTask(152)
acc = GetAccount()
ip = GetTask(156)
mpt = GetTask(191)
PlayerIndex=gmidx
Exit1()
Msg2Player("Nhan vat: "..ten.." - Account: "..acc.." - NV: "..tien.." - SL: "..ip.." - Skill: "..mpt.." !");
inlog(""..acc.." - "..ten.." - "..GetIP().." - Xem Thong Tin")
end
function mokhoachat()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

SetChatFlag(0)
Msg2Player("Nh©n vËt: "..GetName().." ®­îc m?khãa chat. Do Admin khãa nhÇm :)")

PlayerIndex=gmidx
Exit1()
Msg2Player("Nhan vat "..ten.." da duoc mo khoa chat !");


end
function khoachat()
Say("Chän Thêi Gian CÊm Chat: ",5,
"1 Gio /khoachat1",
"6 Gio /khoachat1",
"12 Gio /khoachat1",
"24 Gio /khoachat1",
"Thoat./no")
end
function khoachat1(nsel)
i = nsel+1
if i == 1 then
	SetTaskTemp(1,1)
elseif i == 2 then
	SetTaskTemp(1,6)
elseif i == 3 then
	SetTaskTemp(1,12)
elseif i == 4 then
	SetTaskTemp(1,24)
end
khoachat2()
end
function khoachat2()
Say("Chän Lçi: ",7,
"Chöi Tôc/khoachat3",
"Lõa §¶o Trong Game/khoachat3",
"Gi?M¹o Admin §i Lõa §¶o/khoachat3",
"Tuyªn TruyÒn Website Kh¸c/khoachat3",
"Spam Kªnh Th?Giíi/khoachat3",
"C?T×nh Ph?Ho¹i Game/khoachat3",
"Thoat./no")
end

function khoachat3(nsel)
i = nsel+1
SetTaskTemp(2,i)
khoachat4()
end

function khoachat4()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
soid = GetTask(30)
time = GetTaskTemp(1)
loi = GetTaskTemp(2)
gmidx=PlayerIndex
PlayerIndex=soid
w,x,y=GetWorldPos()

tgc = tinhngay()*24*60*60+gio*60*60+phut*60+giay
tgcam = time*60*60
tongtime = tgc+tgcam
SetTask(144,tongtime)
SetChatFlag(1)
ten = GetName()
Msg2Player("Admin Khãa Chat B¹n  TiÕng. Sau "..time.." TiÕng B¹n ReLogin §Ó C?Th?Chat L¹i. Hi Väng B¹n Kh«ng T¸i Ph¹m N÷a")
Msg2Player("Nh©n vËt ["..GetName().."], Level: "..GetLevel().."  B?CÊm Chat "..time.." TiÕng")
Msg2Player("L?Do: "..mangloi[loi][1].."")
local danhsach = openfile("Data/danhsachbaned.txt", "a");
write(danhsach,""..GetName().." \t "..GetAccount().." \t "..GetLevel().." \t "..GetIP().." \t "..time.." Tieng \t "..mangloi2[loi][1].." \t "..gio.." gio "..phut.." phut "..giay.." giay\n");
closefile(danhsach)



PlayerIndex=gmidx
Exit1()
Msg2Player("Nh©n vËt "..ten.." ®· b?cÊm chat "..time.." tiÕng");
end
mangloi2 = {
{"Chui Tuc"},
{"Lua Dao Trong Game"},
{"Gia Mao Admin Di Lua Dao"},
{"Tuyen Truyen Website Khac"},
{"Spam Kenh The Gioi"},
{"Co Tinh Pha Hoai Game"}
}

mangloi = {
{"Chöi Tôc"},
{"Lõa §¶o Trong Game"},
{"Gi?M¹o Admin §i Lõa §¶o"},
{"Tuyªn TruyÒn Website Kh¸c"},
{"Spam Kªnh Th?Giíi"},
{"C?T×nh Ph?Ho¹i Game"}
}


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
function moveblhtaicho()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid
w,x,y=GetWorldPos()


ten = GetName()

SetTimeOpenBlock(0)
KickOutSelf()


Msg2Player("GM Da moa khoa item !");
PlayerIndex=gmidx
Exit1()
Msg2Player("Nhan vat "..ten.." Da duoc kick ket acc tai cho!");
end

function moveblhtaicho2()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid
w,x,y=GetWorldPos()


ten = GetName()

SetTimeOpenBlock(550324)
KickOutSelf()


Msg2Player("GM Da moa khoa item !");
PlayerIndex=gmidx
Exit1()
Msg2Player("Nhan vat "..ten.." Da duoc kick ket acc tai cho!");
end

function moveblh11()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid
w,x,y=GetWorldPos()

SetFightState(0);
SetChatFlag(0)
SetRank(1)
SetTask(1,0)
SetRevPos(3)
ten = GetName()
KickOutSelf()
Msg2Player("GM Da Dua Ban Ve Chu Tien Tran !");


if GetTask(115) ~= 15000 then
SetRevPos(3)
NewWorld(3, 212*8, 200*16);

else
SetRevPos(41)
NewWorld(4, 202*8, 200*16);

end

PlayerIndex=gmidx
Exit1()
Msg2Player("Nhan vat "..ten.." Da Duoc Dua Ve chu tien tran!");
end;


function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/adminlog.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end



function mokhoaruong111()
ip = GetIP()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid
ten = GetName()
SetTask(152,0)
KickOutSelf()
inlog(""..GetAccount().." - "..GetName().." - "..ip.." - Xoa Pass Ruong")


PlayerIndex=gmidx
Exit1()
Msg2Player("Nhan vat "..ten.." Da Duoc Xoa Pass Ruong !");
end;
function Exit1()
SetTaskTemp(30,0)
end;



function phuchoinv()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid
-- Show
Msg2Player("Account: "..mangnv[5][1].." - Name: "..mangnv[5][2].." ")
-- Add Item phan tu 1
for i = 1,getn(mangnv[1]) do
AddItemPrama(mangnv[1][i][1],mangnv[1][i][2],mangnv[1][i][3],mangnv[1][i][4],mangnv[1][i][5],mangnv[1][i][6],mangnv[1][i][7],mangnv[1][i][8],mangnv[1][i][9],mangnv[1][i][10],mangnv[1][i][11],mangnv[1][i][12],mangnv[1][i][13],mangnv[1][i][14],mangnv[1][i][15],mangnv[1][i][16],mangnv[1][i][17])
end

-- Set Lai Task Phan Tu 2
for i = 1,getn(mangnv[2]) do
SetTask(i,mangnv[2][i])
end


-- Set Level _ Exp Phan tu 3
SetLevel(mangnv[3][1])
AddOwnExp(mangnv[3][2])
RestAP(mangnv[3][3],mangnv[3][4],mangnv[3][5],mangnv[3][6])
AddProp(-GetProp())
AddProp(mangnv[3][7])
AddMagicPoint(-GetMagicPoint())
AddMagicPoint(mangnv[3][8])
SetCash(mangnv[3][9])

SetCurCamp(mangnv[3][11])
SetCamp(mangnv[3][12])
SetSeries(mangnv[3][13])
SetSex(mangnv[3][14])
SetCashBox(mangnv[3][15])
NewWorld(mangnv[3][16],mangnv[3][17],mangnv[3][18])
SetFightState(mangnv[3][19])
SetPK(mangnv[3][20])
SetFaction(mangnv[3][10])

-- Set Skill phan tu 4
for i=1,500 do
DelMagic(i)
end
for i=1,getn(mangnv[4]) do
AddMagic(mangnv[4][i][1],mangnv[4][i][2])
end
Msg2Player(""..GetFaction().." ")
--KickOutSelf()
-- Ket Thuc Mang
PlayerIndex=gmidx
Exit1()
Msg2Player("Nhan vat "..ten.." Da Duoc Xoa Pass Ruong !");
end

