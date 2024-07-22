Include("\\datascript\\thanbi\\logvodanh.lua")
Include("\\Script\\Global\\sourcejx49.lua")
Include("\\Script\\header\\taskid.lua");
Include("\\Script\\lib\\worldlibrary.lua");
Include("\\Script\\lib\\thuvien.lua");

-----------------------------------------------------§Ã FIX OK 10/03/2024--------------------------------------------------------
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}

function main()
SayNew("®ang cã <color=yellow>"..GetTask(VANGKHOA_1).." Vµng Khãa<color>: Ng­êi ®ang cã: "..GetTask(162).." ®iÓm Phóc Duyªn",10,
"Ta muèn b¸n Qu¶ Huy Hoµng /banquahh",
"Shop Vµng Khãa  /shopvangkhoa",
"LÖnh Bµi V­ît ¶i [5 xu] /lenhbai2",
"LÖnh Bµi Phong L¨ng §é /mualenhbai",
"LÖnh Bµi §æi Mµu Bang [50 v¹n]/lenhbaidoimau",
"Mua MËt §å ThÇn BÝ /muamatdo",
"Danh Väng §an [20 ®iÓm danh väng]/doidv",
"500 ®iÓm Phóc Duyªn [1 Kim Nguyªn B¶o]/doipd",
"Trang kÕ 1/trangke1",
"Tho¸t./no")
end
----------------------------------------------------
function trangke1()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: Ng­êi ®ang cã "..GetTask(162).." ®iÓm Phóc Duyªn",5,
"T¨ng 10% may m¾n trong 30 phót [250 ®iÓm phóc duyªn] /doiquehoa",
"Thiªn S¬n B¶o Lé Nhãm [250 ®iÓm phóc duyªn]/doithienson1", 
"QuÕ Hoa Töu Nhãm [600 ®iÓm phóc duyªn] /doiquehoa2",
"T¨ng 5% may m¾n trong 30 phót [100 ®iÓm phóc duyªn] /doithienson",
"Tho¸t./no")
end
----------------------------------------------------
function shopvangkhoa()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end
SayNew("HiÖn t¹i ng­¬i ®ang cã <color=yellow>"..GetTask(VANGKHOA_1).." Vµng Khãa<color>, ng­¬i muèn mua g× nµo? ",8,
"TTL 6 Giê - Khãa [10 vµng]/muaban1x",
"1000 v¹n [100 vµng]/muaban4x",
"20 mËt ®å thÇn bÝ [2 vµng]/muaban",
"LÖnh Bµi PLD [2 Vµng]/muaban2",
"LÖnh Bµi §æi Mµu Bang [5 Vµng]/muaban3",
"Tói M¸u VIP 3 Ngµy [8 Vµng] /muaban8",
"Tói M¸u Ngò Hoa [1 Vµng = 5 Tói] /muaban9",
"Tho¸t./no")
end

---------------------------------------------------------------------------------------------------------
function banquahh()
if GetItemCount(22) > 0 then
		cash = GetCash()
		sl = GetItemCount(22)
		DelItem(22)
		if GetItemCount(22) == sl - 1 then
			m = 20000
			sxitem = RandomNew(1,10)
			if sxitem == 5 then
			m = random(50000,100000)
			else
			m = random(20000,50000)
			end
			Earn(m)
			if m > 90000 then
				Msg2SubWorld("Chóc mõng "..GetName().." b¸n Qu¶ Huy Hoµng nhËn ®­îc sè tiÒn lín <color=yellow>"..m.." l­îng !")
			else
				Msg2Player("B¹n nhËn ®­îc <color=yellow>"..m.." l­îng ")
			end
		end
else
Talk(1,"","Ng­¬i kh«ng mang theo Qu¶ Huy Hoµng !")
end
end
------------------------------------------------------------------------------------------------------------------------
function muaban1x()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetTask(VANGKHOA_1) >= 10 then
	SetTask(VANGKHOA_1, GetTask(VANGKHOA_1) - 10)
		idxitem = AddEventItem(120)
		SetBindItem(idxitem , 1)
		Msg2Player("B¹n nhËn ®­îc 1 Tiªn Th¶o Lé 6 Giê Khãa")
	inlogvangkhoa("["..GetTask(VANGKHOA_1).."] "..GetAccount().." - "..GetName().." - Tien Thao Lo")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 10 Vµng, kh«ng thÓ mua ")
end
end
-------------------------------------------------------------------------------------------------------------------------
function muaban4x()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetTask(VANGKHOA_1) >= 100 then
	SetTask(VANGKHOA_1, GetTask(VANGKHOA_1) - 100)
		Earn(10000000)
		Msg2Player("B¹n nhËn ®­îc 1000 v¹n l­îng")
	inlogvangkhoa("["..GetTask(VANGKHOA_1).."] "..GetAccount().." - "..GetName().." -  1000 Van")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 100 Vµng, kh«ng thÓ mua ")
end
end
---------------------------------------------------------------------------------------------------------------------
function muaban()
if GetTask(VANGKHOA_1) >= 2 then
	SetTask(VANGKHOA_1, GetTask(VANGKHOA_1) - 2)
	for i=1,20 do
	idxitem = AddEventItem(253)
	end
	Msg2Player("B¹n nhËn ®­îc 20 MËt §å ThÇn BÝ ")
	inlogvangkhoa("["..GetTask(VANGKHOA_1).."] "..GetAccount().." - "..GetName().." - Tien Thao Lo 6 Gio")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 2 Vµng, kh«ng thÓ mua ")
end
end
--------------------------------------------------------------------------------------------------------------------------
function muaban2()
if GetTask(VANGKHOA_1) >= 2 then
	SetTask(VANGKHOA_1, GetTask(VANGKHOA_1) - 2)
	idxitem = AddEventItem(135)
	
	Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi Phong L¨ng §é ")
	inlogvangkhoa("["..GetTask(VANGKHOA_1).."] "..GetAccount().." - "..GetName().." - Nu Nhi Hong 6 Gio")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 2 Vµng, kh«ng thÓ mua ")
end
end
---------------------------------------------------------------------------------------------------------------------------
function muaban3()
if GetTask(VANGKHOA_1) >= 5 then
	SetTask(VANGKHOA_1, GetTask(VANGKHOA_1) - 5)
	AddEventItem(402)
	Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi §æi Mµu Bang")
	inlogvangkhoa("["..GetTask(VANGKHOA_1).."] "..GetAccount().." - "..GetName().." - Tay Tuy")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 5 Vµng, kh«ng thÓ mua ")
end
end
---------------------------------------------------------------------------------------------------------------------------
function muaban8()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetTask(VANGKHOA_1) >= 8 then
	SetTask(VANGKHOA_1, GetTask(VANGKHOA_1) - 8)
	
		ngay = ngay + 3
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
			thang = thang + 1
		end
		itemidx = AddEventItem(264)
		SetHSD(itemidx, 2024 , thang, ngay, gio )  ---chØnh n¨m sö dông cho ®óng
		Msg2Player("B¹n nhËn ®­îc 1 [VIP] Thõa Tiªn MËt LÔ Bao")
	
	
	inlogvangkhoa("["..GetTask(VANGKHOA_1).."] "..GetAccount().." - "..GetName().." - Tui Mau Vip")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 8 Vµng, kh«ng thÓ mua ")
end
end
----------------------------------------------------------------------------------------------------------------------------
function muaban9()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetTask(VANGKHOA_1) >= 1 then
	SetTask(VANGKHOA_1, GetTask(VANGKHOA_1) - 1)
	

		itemidx = AddEventItem(103)
		itemidx = AddEventItem(103)
		itemidx = AddEventItem(103)
		itemidx = AddEventItem(103)
		itemidx = AddEventItem(103)
		Msg2Player("B¹n nhËn ®­îc 5 Ngò Hoa Ngäc Lé Hoµn LÔ Bao")
	
	
	inlogvangkhoa("["..GetTask(VANGKHOA_1).."] "..GetAccount().." - "..GetName().." - Tui Mau Ngu Hoa")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 1 Vµng, kh«ng thÓ mua ")
end
end
---------------------------------------------------------------------------------------------------------------------------------
function lenhbai2()
gialb = 5
cash = GetTask(XU_VANG)
if GetTask(XU_VANG) >= gialb then
	SetTask(XU_VANG, GetTask(XU_VANG) - gialb)
	SetTask(XU_VANG2, GetTask(XU_VANG2) - gialb)
	if GetTask(XU_VANG) == cash - gialb then
		AddEventItem(156)
		Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi Liªn Hoµn Ai");
		inloglbva(""..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ "..gialb.." vµng, kh«ng thÓ mua !")
end
end
----------------------------------------------------------------------------------------------------------------------------------
function mualenhbai()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>:  Ta b¸n 1 <color=red>LÖnh Bµi Phong L¨ng §é <color>víi gi¸ <color=yellow>20 v¹n l­îng<color>, ng­¬i cã ®ång ý kh«ng?",2,
"Ta ®ång ý mua 20 v¹n/lenhbaipld1",
"Tho¸t./no")
end

function lenhbaipld1()
cash = GetCash()
if GetCash() >= 200000 then
	Pay(200000)
	if GetCash() == cash - 200000 then
		AddEventItem(135)
		Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi Phong L¨ng §é");
		inlogpld(""..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 20 v¹n l­îng, kh«ng thÓ mua !")
end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function lenhbaidoimau()
if GetTongName() == "" then
Talk(1,"","Ng­¬i kh«ng cã bang héi, kh«ng thÓ mua vËt phÈm")
return
end

if GetTongFigure() ~= 3 and  GetTongFigure() ~= 2 then
Talk(1,"","ChØ cã Bang Chñ / Tr­ëng L·o míi cã thÓ mua vËt phÈm nµy")
return
end

vang = GetCash()
if vang >= 500000 then
	Pay(500000)
	if GetCash() == vang - 500000 then
		AddEventItem(402)
		Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi §æi Mµu Bang. H·y ph¸t cho Tr­ëng L·o ®Ó sö dông nhÐ ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ 50 v¹n l­îng, kh«ng thÓ mua ")
end

end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function muamatdo()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: B¹n muèn mua <color=red>20 MËt §å ThÇn BÝ <color>víi gi¸ <color=yellow>30 v¹n l­îng<color> hay <color=yellow>1 vµng<color>",3,
"Mua b»ng 30 v¹n l­îng/muamatdo1",
"Mua b»ng 1 xu/muamatdo2",
"Tho¸t./no")
end

function muamatdo1()
sl = GetItemCount(253)
a = GetCash()
if GetCash()  >= 300000 then
	Pay(300000)
	if GetCash() == (a-300000) then
	for k=1,20 do
		AddEventItem(253)
	end
	inlogmatdo("[1] "..GetAccount().." - "..GetName().."")
	Msg2Player("B¹n nhËn ®­îc 20 MËt §å ThÇn BÝ !")
	Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 30 v¹n l­îng !")
end
end

function muamatdo2()
sl = GetItemCount(253)
a = GetTask(XU_VANG)
if GetTask(XU_VANG) >= 1 then
	SetTask(XU_VANG, GetTask(XU_VANG) - 1)
	SetTask(XU_VANG2, GetTask(XU_VANG2) - 1)
	if GetTask(XU_VANG) == (a-1) then
	for k=1,20 do
		AddEventItem(253)
	end
	inlogmatdo("[2] "..GetAccount().." - "..GetName().."")
	Msg2Player("B¹n nhËn ®­îc 20 MËt §å ThÇn BÝ !")
	Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 1 vµng !")
end
end
------------------------------------------------------------------------------------------------------
function doidv()
if GetTask(DIEMDANHVONG) >= 20 then
	SetTask(DIEMDANHVONG, GetTask(DIEMDANHVONG) - 20)
	AddEventItem(363)
	Msg2Player("B¹n nhËn ®­îc 1 Danh Väng §an")
	Talk(0,"")
else
Talk(1,"","Ng­¬i kh«ng ®ñ 20 ®iÓm danh väng")
end
end
-----------------------------------------------------------------------------------------------------
function doipd()
knb = GetItemCount(17) 
if GetItemCount(17) >= 1 then
	DelItem(17)
	if GetItemCount(17) == knb - 1 then
		SetTask(DIEMPHUCDUYEN, GetTask(DIEMPHUCDUYEN) + 500)
		Msg2Player("B¹n nhËn ®­îc 500 ®iÓm Phóc Duyªn")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
Talk(1,"","Ng­¬i kh«ng cã 1 Kim Nguyªn B¶o, t×m ta lµm g×?")
end
end
---------------------------------------------------------------------------------------------------------
function doiquehoa()
if GetTask(THOIGIAN_MAYMAN1) > 0 then
Talk(1,"","B¹n ®ang trong thêi gian sö dông T¨ng May M¾n, kh«ng thÓ sö dông thªm !")
return
end

if GetTask(DIEMPHUCDUYEN) < 250 then
Talk(1,"","Ng­¬i kh«ng ®ñ 250 phóc duyªn, kh«ng thÓ ®æi ");
return
end

SetTask(DIEMPHUCDUYEN, GetTask(DIEMPHUCDUYEN) - 250)
SetTask(THOIGIAN_MAYMAN1,  30* 60 * 18)
SetTask(TICHLUY_SUKIEN1,10)
Talk(1,"","§· nhËn thµnh c«ng <color=yellow>10% May M¾n<color> trong 30 phót !")
end
-----------------------------------------------------------------------------------------------------------
function doithienson1()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end
pd = GetTask(DIEMPHUCDUYEN)
if GetTask(DIEMPHUCDUYEN) < 250 then
Talk(1,"","Ng­¬i kh«ng ®ñ 250 phóc duyªn, kh«ng thÓ ®æi ");
return
end
SetTask(DIEMPHUCDUYEN, GetTask(DIEMPHUCDUYEN) - 250)
if GetTask(DIEMPHUCDUYEN) == pd - 250 then
	AddEventItem(648)
	Talk(1,"","B¹n nhËn ®­îc 1 Thiªn S¬n B¶o Lé Nhãm")
else
	Talk(1,"","Hack ha em")
end
end
-----------------------------------------------------------------------------------------------------------
function doiquehoa2()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end

pd = GetTask(DIEMPHUCDUYEN)
if GetTask(DIEMPHUCDUYEN) < 600 then
Talk(1,"","Ng­¬i kh«ng ®ñ 600 phóc duyªn, kh«ng thÓ ®æi ");
return
end
SetTask(DIEMPHUCDUYEN, GetTask(DIEMPHUCDUYEN) - 600)
if GetTask(DIEMPHUCDUYEN) == pd - 600 then
	AddEventItem(649)
	Talk(1,"","B¹n nhËn ®­îc 1 QuÕ Hoa Töu Nhãm")
else
	Talk(1,"","Hack ha em")
end
end
--------------------------------------------------------------------------------------------------------
function doithienson()
if GetTask(THOIGIAN_MAYMAN1) > 0 then
Talk(1,"","B¹n ®ang trong thêi gian sö dông T¨ng May M¾n, kh«ng thÓ sö dông thªm !")
return
end
if GetTask(DIEMPHUCDUYEN) < 100 then
Talk(1,"","Ng­¬i kh«ng ®ñ 100 phóc duyªn, kh«ng thÓ ®æi ");
return
end
SetTask(DIEMPHUCDUYEN, GetTask(DIEMPHUCDUYEN) - 100)
SetTask(THOIGIAN_MAYMAN1,  30* 60 * 18)
SetTask(TICHLUY_SUKIEN1,5)
Talk(1,"","§· nhËn thµnh c«ng <color=green>5% May M¾n<color> trong 30 phót !")
end
---------------------------------------------------------------------------------------------------------
------------------------------
function giaodich()
Sale(30)
end
-------------------------
function trangphuccuoi()
Sale(31)
end
-------------------------

function savebang()
BANG = TaoBang(VoDanh,"VoDanh")				
LuuBang("datascript/thanbi/logvodanh.lua",BANG)
end
-----------------------
----------------------
function no()
end
-----------------------
function inlogquahk(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/HatHoangKimVang.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
--------------------------
function inlogquahk(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/HatHoangKimTien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
---------------------------
function inlogtbxaloi(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/XaLoiKimDon.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
---------------------
function inlogtstl(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/ThienSonTuyetLien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
---------------------------
function inlogtb(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/LenhBaiPLD.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
-------------------------
function inlogsudolenh(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/SuDoLenh.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
-------------------------------
function inlogphivan(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/MuaPhiVan.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
-----------------------------------
function inlogbk(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/ThienSonTuyetLien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
-----------------------------
function inloghks(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/HoangKimSat.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
--------------------------
function inlogpld(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/LenhBaiPLD_50Van.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
---------------------------
function inloglbva(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/LenhBaiVuotAi_50Van.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
-------------------------------
function inlogvangkhoa(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/ShopVangKhoa.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
-----------------------------
function inlogruapk(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/RuaPK_1KNB.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
--------------------------
function inlogtaytuy(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/TayTuy_2KNB.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
------------------
function inlogmatdo(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/MatDoThanBi.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
---------------------------
function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/ViSonDao.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end



























































































































