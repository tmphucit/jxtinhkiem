Include("\\script\\lib\\thuvien.lua")
Include("\\script\\monphai.lua")


function main()
ReLoadScript("\\script\\chuyenserver\\sugiachuyenserver.lua")
SayNew("<color=green>Sø gi¶ chuyÓn Server<color>: Ta ®Õn ®©y ®Ó gióp c¸c ng­¬i chuyÓn sevrer ",3,
"Më R­¬ng Ch­a §å/moruong",
"§¨ng ký chuyÓn Server /chuyensv",
"Tho¸t./no")
end



function banshop()
Sale(10)
end
function huytrangbi()
OpenCheckItemBox("Hñy Bá Trang BÞ","H·y ®Æt 1 trang bÞ Khãa VÜnh ViÔn Vµo ","okhuytb")
end

function okhuytb()
idx = GetIdxItemBox2()
if (idx == -1) then
Msg2Player("Trong r­¬ng cã nhiÒu h¬n 1 vËt phÈm ")
elseif (idx == 0) then
Msg2Player("Trong r­¬ng kh«ng cã vËt phÈm nµo ")
elseif (idx == -2) then
Msg2Player("VËt phÈm ®Æt  vµo kh«ng ph¶i lµ trang bÞ ")
else
	if (GetTimeItemIdx(idx) == 550324) then
		ten = GetNameItemBox(idx)
		SetTimeItem(idx,0);
		DelEquipIdx(idx)
		Talk(1,"","§· hñy trang bÞ thµnh c«ng trang bÞ  <color=yellow>"..ten.." !")
		a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
		inloghuytb(""..ten.." - TK: ["..GetAccount().."] - ["..GetName().."] - {"..a1..","..a2..","..a3..","..a4..","..a5..","..a6..","..a7..","..a8..","..a9..","..a10..","..a11..","..a12..","..a13..","..a14..","..a15..","..a16..","..a17.."},")	
		Msg2Player("B¹n ®· hñy thµnh c«ng trang bÞ <color=yellow>"..ten.." ")
	elseif (GetTimeItemIdx(idx) > 1) then
		ten = GetNameItemBox(idx)
		time = GetTimeItemIdx(idx)
		SetTimeItem(idx,0);
		DelEquipIdx(idx)
		Talk(1,"","§· hñy trang bÞ thµnh c«ng trang bÞ  <color=yellow>"..ten.." !")
		a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
		inloghuytb("["..time.."] "..ten.." - TK: ["..GetAccount().."] - ["..GetName().."] - {"..a1..","..a2..","..a3..","..a4..","..a5..","..a6..","..a7..","..a8..","..a9..","..a10..","..a11..","..a12..","..a13..","..a14..","..a15..","..a16..","..a17.."},")	
		Msg2Player("B¹n ®· hñy thµnh c«ng trang bÞ <color=yellow>"..ten.." ")
	else	
		Talk(1,"","Trang bÞ ®Æt vµo kh«ng khãa vÜnh viÔn !")
	end
end
end


function inloghuytb(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/HuyTrangBiKhoaVinhVien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - "..thoigian.." \n");
end
closefile(LoginLog)
end

function inlogphanra(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/PhanRaHKMP.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - "..thoigian.." \n");
end
closefile(LoginLog)
end


function phanramanh()
OpenCheckItemBox("Ph©n R· HKMP","H·y ®Æt 1 trang bÞ Hoµng Kim M«n Ph¸i vµo ","okphanramanh")
end

function okphanramanh()
	if CheckFreeBoxItem(0,10,5,1) == 0 then
		Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng 2 x 3 «, vui lßng kiÓm tra l¹i")
		return
	end
	
itemidx = LayIdxHkmpTrongHomDo()

if (itemidx == 0) then
Msg2Player("B¹n ch­a ®Æt trang bÞ cÇn thay ®æi vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a ®Æt trang bÞ cÇn ph©n r· vµo !")
return
end

if (itemidx == -1) then
Msg2Player("B¹n kh«ng ®Æt vµo qu¸ 1 trang bÞ xanh !")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo nhiÒu h¬n 1 trang bÞ !")
return
end

if (itemidx == -2 or itemidx == -4) then
Msg2Player("Trang bÞ ®Æt vµo kh«ng ph¶i trang bÞ Hoµng Kim M«n Ph¸i ")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo kh«ng ph¶i trang bÞ Hoµng Kim M«n Ph¸i !")
return
end

if (itemidx == -3) then
Msg2Player("Trang bÞ ®Æt vµo ®· khãa vÜnh viÔn, kh«ng thÓ ph©n r· ")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo ®· khãa vÜnh viÔn, kh«ng thÓ ph©n r·  !")
return
end

	Msg2Player("Ph©n r· thµnh c«ng !")
	SetTimeItem(itemidx,0);
	Msg2SubWorld("<color=yellow>- "..GetName().." ph©n r· thµnh c«ng "..GetNameItemBox(itemidx).."")
	inlogphanra(""..GetAccount().." - "..GetName().." - "..GetNameItemBox(itemidx).."")
	DelEquipIdx(itemidx)
if GetIdxItemBoxUpdateItem() == 0 then
	for i=367,371 do AddEventItem(i) end
end
end

function chuyensv()
if GetTask(130) > 0 and GetTask(152) == 9999999 then
	Talk(1,"","B¹n ®· ®¨ng ký chuyÓn m¸y chñ cho nh©n vËt nµy, vui lßng qua m¸y chñ HuyÕt ChiÕn ®Ó t¹o nh©n vËt míi vµ chê nhËn th«ng tin !")
else
	SayNew("<color=green>Sø gi¶ chuyÓn Server<color>: Khi x¸c nhËn xong, b¹n sÏ nhËn ®­îc 1 M· Code vµ bÞ §æi MËt KhÈu R­¬ng",2,
	"X¸c NhËn Göi Toµn Bé Th«ng Tin Nh©n VËt/sendall",
	"Tho¸t./no")
end
end

function kichhoatbh()
if GetTongFigure() ~= 3 then
Talk(1,"","Ng­¬i kh«ng ph¶i Bang Chñ, kh«ng thÓ sö dông b­íc nµy !")
return
end

if checkbanghoi() == 0 then
	DSBH[getn(DSBH)+1] = {GetTongName(),GetAccount(),GetName(),GetCamp(),GetCurCamp()}
	BANG = TaoBang(DSBH,"DSBH")
	LuuBang("Script/chuyenserver/danhsachbanghoi.lua",BANG)
	Msg2Player("§· kÝch ho¹t bang chñ thµnh c«ng")
	Msg2Player("<color=yellow>Qua phiªn b¶n míi admin sÏ tù ®éng vµo account ®Ó thiÕt lËp l¹i Bang Héi cho b¹n !")
else
	Talk(1,"","Bang héi cña b¹n ®· kÝch ho¹t råi !")
end
end

function checkbanghoi()
for i=1,getn(DSBH) do
if GetTongName() == DSBH[i][1] then
return i
end
end
return 0
end

function kichhoat()
if GetTask(152) == 9999999 then
Talk(1,"","B¹n ®· göi th«ng tin qua Server míi, kh«ng thÓ göi thªm lÇn n÷a !")
return
end
if GetBlockBox() == 0 then
SayNew("<color=green>Sø gi¶ chuyÓn Server<color>: \nB¹n ®iÒn <color=red>Tµi Kho¶n Míi<color>, tµi kho¶n b¾t buéc ®· t¹o tõ tr­íc\nGM sÏ copy Pass 1, Pass 2, SDT ®¨ng ký tõ \n<color=yellow>Tµi Kho¶n Cò <color>sang <color=yellow>Tµi Kho¶n Míi<color>",2,
"NhËp Tµi Kho¶n Míi/nhaptkmoi",
"Tho¸t./no")
else
Talk(1,"","B¹n ch­a më khãa r­¬ng, kh«ng thÓ göi th«ng tin !")
end
end

function nhaptkmoi()
OpenStringBox (1,"Nhap tai khoan" , "acceptaccount")
end
function acceptaccount(name)
if name == nil or name == "" then
Talk(1,"","Kh«ng ®­îc ®Ó trèng ")
return
end

if name == GetAccount() then
Talk(1,"","Tµi kho¶n míi kh«ng ®­îc trïng víi tµi kho¶n cò !")
return
end
guithongtin(name,1)
end

function sendall()
if GetTask(152) == 9999999 then
Talk(1,"","B¹n ®· göi th«ng tin qua Server míi, kh«ng thÓ göi thªm lÇn n÷a !")
return
end


if GetBlockBox() == 0 then
guithongtin(GetName(),0)
else
Talk(1,"","B¹n ch­a më khãa r­¬ng, kh«ng thÓ göi th«ng tin !")
end
end
function moruong()
OpenBox(1)
end
function xemlai()
Talk(1,"","Seri: <color=yellow>"..GetTask(130).."<color> , M· Code: <color=green>"..GetTask(131).."<color> ")
end



function guitrangbi()
for i=0,250 do
for j=1,GetItemCount(i) do
	DelItem(i)
end
end
for u=240,254 do
	AddEventItem(u)
end
Msg2Player("HACK")
end
function check_ton_tai(account)
for i=1,getn(DANH_SACH) do
if account == DANH_SACH[i][2] then
return 1
end
end
return 0
end
function guithongtin(account,check)
if GetTask(152) == 9999999 then
Talk(1,"","B¹n ®· ®¨ng ký chuyÓn m¸y chñ cho nh©n vËt nµy, vui lßng qua m¸y chñ HuyÕt ChiÕn ®Ó t¹o nh©n vËt míi vµ chê nhËn th«ng tin !")
return
end

if mp() == 0 then
SetFaction("Thien Vuong Bang")
end

if check == 0 then
account = GetName()
end

phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
Seri = RandomNew(111111,999899+phut*random(1,200)+giay)


LoginLog = openfile("Script/chuyenserver/danhsach.txt", "a");
if LoginLog then

write(LoginLog,"{\n");

-- LOG ITEM 
write(LoginLog,"{\n");
for i=1,GetPlayerItemCount() do
	idx = GetPlayerItemIdxByNum(i)
	a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23 = GetPramaItemIdx(idx)
	
	if a6 == 1278060808 then
		Msg2Player(" "..GetEquipMagicPoint(idx,2).." ") 
	end
	write(LoginLog," {"..a1..","..a2..","..a3..","..a4..","..a5..","..a6..","..a7..","..a8..","..a9..","..a10..","..a11..","..a12..","..a13..","..a14..","..a15..","..a16..","..a17..","..a18..","..a19..","..a20..","..a21..","..a22..","..a23.."},\n")
end
write(LoginLog,"},\n");

--Log Task
write(LoginLog,"{");
for i=1,500 do
	write(LoginLog,""..GetTask(i)..",")	
end
write(LoginLog,"},\n");

-- Log Level
w,x,y = GetWorldPos()
write(LoginLog,"{");
	write(LoginLog,""..GetLevel()..","..GetExp()..","..GetStrg(1)..","..GetDex(1)..","..GetVit(1)..","..GetEng(1)..","..GetProp()..","..GetMagicPoint()..","..GetCash()..",\""..GetFaction().."\","..GetCurCamp()..","..GetCamp()..","..GetSeries()..","..GetSex()..","..GetCashBox()..","..w..","..x..","..y..","..GetFightState()..","..GetPK()..","..Seri.."")	
write(LoginLog,"},\n");
-- Log Skill


write(LoginLog,"{");
for i=1,500 do
	write(LoginLog,"{"..i..","..HaveMagic(i).."},")
end
write(LoginLog,"},\n");

write(LoginLog,"{");
	write(LoginLog,"\""..GetAccount().."\",\""..GetName().."\"")
write(LoginLog,"}\n");

write(LoginLog,"},\n");

end
closefile(LoginLog)

--Msg2Player("LUU THANH CONG")

BlockBox(1)
SetTask(130,Seri)
SetTask(136, GetTask(152))
SetTask(152,9999999)
Msg2Player("§· l­u th«ng tin nh©n vËt thµnh c«ng !")
Msg2Player("<color=yellow>B¹n vui lßng ®îi sau 1 - 2 giê n÷a, ®Õn gÆp Sø Gi¶ ChuyÓn Server - M¸y Chñ HuyÕt ChiÕn ®Ó nhËn th«ng tin nh©n vËt.")
end

function check12x()
num = 0
for i=412,430 do
	if HaveMagic(i) > 0 then
		num = HaveMagic(i)
	end
end
return num
end

function save()
BANG = TaoBang(DANH_SACH,"DANH_SACH")
LuuBang("Script/chuyenserver/danhsach.lua",BANG)
end



function no()
end

function aphuchoinv()
h,m,s = GetTimeNew()

if GetPlayerItemCount() > 0 then
Talk(1,"","Ng­êi hiÖn t¹i cã <color=yellow>"..GetPlayerItemCount().." vËt phÈm<color>. \nNh©n vËt míi b¾t buéc <color=red>kh«ng cã bÊt kú vËt phÈm g× <color>, h·y di chuyÓn nh÷ng vËt phÈm qua Tµi Kho¶n kh¸c hoÆc hñy nã ®i, sau ®ã kÝch ho¹t l¹i !")
return
end

-- Add Item phan tu 1
for i = 1,getn(mangnv[1]) do
idxitem = AddItemPrama(mangnv[1][i][1],mangnv[1][i][2],mangnv[1][i][3],mangnv[1][i][4],mangnv[1][i][5],mangnv[1][i][6],mangnv[1][i][7],mangnv[1][i][8],mangnv[1][i][9],mangnv[1][i][10],mangnv[1][i][11],mangnv[1][i][12],mangnv[1][i][13],mangnv[1][i][14],mangnv[1][i][15],mangnv[1][i][16],mangnv[1][i][17])
SetHSD(idxitem, mangnv[1][i][18], mangnv[1][i][19], mangnv[1][i][20], mangnv[1][i][21])
if (mangnv[1][i][13] == 1 and mangnv[1][i][1] == 4) then
	SetBindItem(idxitem , 1)
end
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
--NewWorld(mangnv[3][16],mangnv[3][17],mangnv[3][18])
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

for k=1,100 do AddLeadExp(20000000000) end


KickOutSelf()
-- Ket Thuc Mang
--PlayerIndex=gmidx
--Exit1()
--Msg2Player("Nhan vat "..ten.." Da Duoc Xoa Pass Ruong !");
end

