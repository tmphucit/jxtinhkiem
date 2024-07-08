Include("\\datascript\\thanbi\\logvodanh.lua")
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\monphai.lua")



function main()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: Ng­êi ®ang cã "..GetTask(162).." ®iÓm Phóc Duyªn",6,
"§æi vËt phÈm /doivatpham",
"§æi Phóc Duyªn /doiph",
--"Ta muèn b¸n Qu¶ Huy Hoµng /banquahh",
--"Shop Vµng Khãa  /shopvangkhoa",
"§æi BÝ KÝp 120 /doibk120",
--"Mua LÖnh Bµi V­ît ¶i /lenhbai",
--"Mua LÖnh Bµi Phong L¨ng §é /mualenhbai",
--"LÖnh Bµi Phong L¨ng §é /lenhbaipld",
--"LÖnh Bµi §æi Mµu Bang [50 v¹n]/lenhbaidoimau",
"Mua MËt §å ThÇn BÝ /muamatdo",
"Mua LÖnh Bµi Map 100 [10 v¹n] /mualbmap100",
--"Danh Väng §an [20 ®iÓm danh väng]/doidv",
--"500 ®iÓm Phóc Duyªn [1 Kim Nguyªn B¶o]/doipd",
--"T¨ng 5% may m¾n trong 30 phót [100 ®iÓm] /doithienson",
--"T¨ng 10% may m¾n trong 30 phót [250 ®iÓm] /doiquehoa",
--"Thiªn S¬n B¶o Lé Nhãm [250 ®iÓm]/doithienson1", 
--"QuÕ Hoa Töu Nhãm [600 ®iÓm] /doiquehoa2",

"Tho¸t./no")
end


function doivatpham()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: Ng­¬i muèn ®æi vËt phÈm nµo? ",9,
"Lam Thuû Tinh [500 ®iÓm]/muaitem1",
"Tö Thuû Tinh [500 ®iÓm]/muaitem1",
"Lôc Thuû Tinh [500 ®iÓm]/muaitem1",
"Tinh Hång B¶o Th¹ch [250 ®iÓm]/muaitem1",
"X¸ Lîi Kim §¬n [100 ®iÓm]/muaitem1",
"Thiªn S¬n B¶o Lé [500 ®iÓm]/muaitem1",
"QuÕ Hoa Töu [1000 ®iÓm]/muaitem1",
"LÖnh Bµi  Phong L¨ng §é [100 ®iÓm]/muaitem1",
"Thoat./no")
end

function muaitem1(nsel)
i = nsel + 1
iditem = -1
cost = 0
if i == 1 then
	iditem = 28
	cost = 500
elseif  i  == 2 then
	iditem = 29
	cost = 500
elseif  i  == 3 then
	iditem = 30
	cost = 500
elseif  i  == 4 then
	iditem = 31
	cost = 250
elseif  i  == 5 then
	iditem = 59
	cost = 100
elseif  i  == 6 then
	iditem = 919
	cost = 500
elseif  i  == 7 then
	iditem = 920
	cost = 1000
elseif  i  == 8 then
	iditem = 135
	cost = 100
end
	
if iditem == -1 or cost == 0 then
Talk(1,"","VËt phÈm ch­a ®­îc bµy b¸n !!!")
return
end

diem = GetTask(162)
if diem < cost then
Talk(1,"","§iÓm phóc duyªn kh«ng ®ñ "..cost.." ®iÓm, kh«ng thÓ ®æi vËt phÈm")
return
end
	
SetTask(162, GetTask(162) - cost)
if GetTask(162) == diem - cost then	
	idxitem = AddEventItem(iditem)
	Msg2Player("B¹n nhËn ®­îc 1 "..GetNameItemBox(idxitem).."")
	
	inlogdoivp("["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." - PD cßn l¹i: "..GetTask(162).."")
else
	Talk(1,"","Hack ha em")
end	
end



function doibk120()

if GetLevel() < 120 then
Talk(1,"","§¼ng cÊp d­íi 120 kh«ng thÓ ®æi BÝ Kip ")
return
end

if GetTask(918) ~= 0 then
Talk(1,"","Ng­¬i ®· ®æi Bi Kip 120, kh«ng thÓ ®æi lÇn thø 2 !")
return
end
if GetItemCount(28) < 1 or GetItemCount(29) < 1 or GetItemCount(30) < 1 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 1 bé Thñy Tinh, kh«ng thÓ ®æi !")
return
end

if GetItemCount(31) < 6 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 1 bé Tinh Hång B¶o Th¹ch, kh«ng thÓ ®æi !")
return
end
if GetItemCount(252) < 1 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 1 cuèn B¸t Nh· T©m Kinh, kh«ng thÓ ®æi !")
return
end

if GetItemCount(0) < 1 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 1 cuèn Vâ L©m MËt TÞch, kh«ng thÓ ®æi !")
return
end
if GetItemCount(1) < 1 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 1 cuèn TÈy Tñy Kinh, kh«ng thÓ ®æi !")
return
end


vt = mp()

if checkbk(vt) == 1 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 1 bé BÝ Kip 90 m«n ph¸i, kh«ng thÓ ®æi !")
return
end

if GetCash() < 10000000 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 1000 v¹n l­îng, kh«ng thÓ ®æi !")
return
end

for i=28,30 do DelItem(i) end
for i=1,6 do DelItem(31) end
DelItem(252)
DelItem(0)
DelItem(1)
Pay(10000000)
for i = 1, getn(bkmp[vt]) do DelItem(bkmp[vt][i]) end
SetTask(918,1) -- Xac nhan doi BK 120 
AddEventItem(19)
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().." <color=red>®æi ®­îc <color=yellow>BÝ Kip 120<color=red> t¹i ThÇn BÝ Th­¬ng Nh©n")


thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/DoiBiKip12x.txt", "a");
if LoginLog then
write(LoginLog,"["..GetAccount().."] ["..GetName().."] ["..GetLevel().."]- Time: "..thoigian.."\n");
end
closefile(LoginLog)

end


function checkbk(vt)
for i = 1, getn(bkmp[vt]) do
	if GetItemCount(bkmp[vt][i]) < 1 then
			return 1
	end
end
return 0
end
bkmp = {
{75,76,77},
{78,79,80},
{81,82,83,84},
{85,86,87},
{88,89,90},
{91,92},
{93,94},
{95,96,97},
{98.99},
{100,101,102},
}

function doiph()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n  <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",4,
"Phóc duyªn tiÓu [12 diÓm]/doiph2",
"Phóc duyªn trung [24 diÓm]/doiph2",
"Phóc duyªn ®¹i [60 diÓm]/doiph2",
"Tho¸t./no")
end

function doiph2(nsel)
i = nsel+1
sl = GetTask(162)
if i == 1 then
	if GetTask(162) >= 12 then
		SetTask(162,GetTask(162)-12)
		if GetTask(162) == (sl-12) then
			AddEventItem(173)
			Msg2Player("B¹n nhËn ®­îc 1 b×nh Phóc Duyªn tiÓu")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","<color=green>Hç Trî T©n Thñ  <color>: B¹n kh«ng ®ñ 12 ®iÓm phóc duyªn !")
	end
elseif i == 2 then
	if GetTask(162) >= 24 then
		SetTask(162,GetTask(162)-24)
		if GetTask(162) == (sl-24) then
			AddEventItem(174)
			Msg2Player("B¹n nhËn ®­îc 1 b×nh Phóc Duyªn trung")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","<color=green>Hç Trî T©n Thñ  <color>: B¹n kh«ng ®ñ 24 ®iÓm phóc duyªn !")
	end
elseif i == 3 then
	if GetTask(162) >= 60 then
		SetTask(162,GetTask(162)-60)
		if GetTask(162) == (sl-60) then
			AddEventItem(175)
			Msg2Player("B¹n nhËn ®­îc 1 b×nh Phóc Duyªn ®¹i")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","<color=green>Hç Trî T©n Thñ  <color>: B¹n kh«ng ®ñ 60 ®iÓm phóc duyªn !")
	end
end
end
function doiquehoa2()

if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end

pd = GetTask(162)
if GetTask(162) < 600 then
Talk(1,"","Ng­¬i kh«ng ®ñ 600 phóc duyªn, kh«ng thÓ ®æi ");
return
end
SetTask(162, GetTask(162) - 600)
if GetTask(162) == pd - 600 then
	AddEventItem(649)
	Talk(1,"","B¹n nhËn ®­îc 1 QuÕ Hoa Töu Nhãm")
else
	Talk(1,"","Hack ha em")
end
end

function doithienson1()

if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end

pd = GetTask(162)
if GetTask(162) < 250 then
Talk(1,"","Ng­¬i kh«ng ®ñ 250 phóc duyªn, kh«ng thÓ ®æi ");
return
end
SetTask(162, GetTask(162) - 250)
if GetTask(162) == pd - 250 then
	AddEventItem(648)
	Talk(1,"","B¹n nhËn ®­îc 1 Thiªn S¬n B¶o Lé Nhãm")
else
	Talk(1,"","Hack ha em")
end
end

function test()
Talk(1,"","VËt phÈm ®ang ®­îc kiÓm tra l¹i, sÏ cËp nhËt trong tèi nay !")
end

function doithienson()
if GetTask(483) > 0 then
Talk(1,"","B¹n ®ang trong thêi gian sö dông T¨ng May M¾n, kh«ng thÓ sö dông thªm !")
return
end
if GetTask(162) < 100 then
Talk(1,"","Ng­¬i kh«ng ®ñ 100 phóc duyªn, kh«ng thÓ ®æi ");
return
end
SetTask(162, GetTask(162) - 100)
SetTask(483,  30* 60 * 18)
SetTask(488,5)
Talk(1,"","§· nhËn thµnh c«ng <color=green>5% May M¾n<color> trong 30 phót !")
end

function doiquehoa()
if GetTask(483) > 0 then
Talk(1,"","B¹n ®ang trong thêi gian sö dông T¨ng May M¾n, kh«ng thÓ sö dông thªm !")
return
end
if GetTask(162) < 250 then
Talk(1,"","Ng­¬i kh«ng ®ñ 250 phóc duyªn, kh«ng thÓ ®æi ");
return
end
SetTask(162, GetTask(162) - 250)
SetTask(483,  30* 60 * 18)
SetTask(488,10)
Talk(1,"","§· nhËn thµnh c«ng <color=yellow>10% May M¾n<color> trong 30 phót !")
end

function doipd()
knb = GetItemCount(17) 
if GetItemCount(17) >= 1 then
	DelItem(17)
	if GetItemCount(17) == knb - 1 then
		SetTask(162, GetTask(162) + 500)
		Msg2Player("B¹n nhËn ®­îc 500 ®iÓm Phóc Duyªn")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
Talk(1,"","Ng­¬i kh«ng cã 1 Kim Nguyªn B¶o, t×m ta lµm g×?")
end
end
function lenhbaidoimau()
if GetTongName() == "" then
Talk(1,"","Ng­¬i kh«ng cã bang héi, kh«ng thÓ mua vËt phÈm")
return
end

if GetTongFigure() ~= 3 then
Talk(1,"","ChØ cã Bang Chñ míi cã thÓ mua vËt phÈm nµy")
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


function doidv()
if GetTask(100) >= 20 then
	SetTask(100, GetTask(100) - 20)
	AddEventItem(363)
	Msg2Player("B¹n nhËn ®­îc 1 Danh Väng §an")
	Talk(0,"")
else
Talk(1,"","Ng­¬i kh«ng ®ñ 20 ®iÓm danh väng")
end
end


function shopvangkhoa()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end
SayNew("HiÖn t¹i ng­¬i ®ang cã <color=yellow>"..GetTask(463).." Vµng Khãa<color>, ng­¬i muèn mua g× nµo? ",8,
"TTL 6 Giê - Khãa [10 vµng]/muaban1x",
"1000 v¹n [100 vµng]/muaban4x",
"20 MDTB [2 vµng]/muaban",
"LÖnh Bµi PLD [2 Vµng]/muaban2",
"LÖnh Bµi §æi Mµu Bang [5 Vµng]/muaban3",
"Tói M¸u VIP 3 Ngµy [8 Vµng] /muaban8",
"Tói M¸u Ngò Hoa [1 Vµng = 5 Tói] /muaban9",
"Tho¸t./no")
end
mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function test()
Talk(1,"","SÏ cËp nhËt vµo 6h ngµy 27/08/2017")
end

function muaban4x()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetTask(463) >= 100 then
	SetTask(463, GetTask(463) - 100)
		Earn(10000000)
		Msg2Player("B¹n nhËn ®­îc 1000 v¹n l­îng")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." -  1000 Van")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 100 Vµng, kh«ng thÓ mua ")
end
end
function muaban1x()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetTask(463) >= 10 then
	SetTask(463, GetTask(463) - 10)
		idxitem = AddEventItem(120)
		SetBindItem(idxitem , 1)
		Msg2Player("B¹n nhËn ®­îc 1 Tiªn Th¶o Lé 6 Giê Khãa")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Tien Thao Lo")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 10 Vµng, kh«ng thÓ mua ")
end
end

function muaban9()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetTask(463) >= 1 then
	SetTask(463, GetTask(463) - 1)
	

		itemidx = AddEventItem(103)
		itemidx = AddEventItem(103)
		itemidx = AddEventItem(103)
		itemidx = AddEventItem(103)
		itemidx = AddEventItem(103)
		Msg2Player("B¹n nhËn ®­îc 5 Ngò Hoa Ngäc Lé Hoµn LÔ Bao")
	
	
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Tui Mau Ngu Hoa")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 1 Vµng, kh«ng thÓ mua ")
end
end

function muaban8()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetTask(463) >= 8 then
	SetTask(463, GetTask(463) - 8)
	
		ngay = ngay + 3
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
			thang = thang + 1
		end
		itemidx = AddEventItem(264)
		SetHSD(itemidx, 2018 , thang, ngay, gio )
		Msg2Player("B¹n nhËn ®­îc 1 [VIP] Thõa Tiªn MËt LÔ Bao")
	
	
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Tui Mau Vip")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 8 Vµng, kh«ng thÓ mua ")
end
end

function muaban7()
if GetTask(463) >= 150 then
	SetTask(463, GetTask(463) - 150)
	idxitem = AddEventItem(19)
	SetBindItem(idxitem,1)
	Msg2Player("B¹n nhËn ®­îc 1 Bi Kip 120")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Bi Kip 120")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 150 Vµng, kh«ng thÓ mua ")
end
end
function muaban6()
if GetTask(463) >= 100 then
	SetTask(463, GetTask(463) - 100)
	idxitem = AddItem(0,10,5,3,0,0,0)
	SetTimeItem(idxitem,550324);
	Msg2Player("B¹n nhËn ®­îc 1 TuyÖt ¶nh")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Ngua 80")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 100 Vµng, kh«ng thÓ mua ")
end
end
function muaban5()
if GetTask(463) >= 20 then
	SetTask(463, GetTask(463) - 20)
	idxitem = AddEventItem(1)
	SetBindItem(idxitem , 1)
	Msg2Player("B¹n nhËn ®­îc 1 TÈy Tñy Kinh ")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Tay Tuy Kinh")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 20 Vµng, kh«ng thÓ mua ")
end
end
function muaban4()
if GetTask(463) >= 20 then
	SetTask(463, GetTask(463) - 20)
	idxitem = AddEventItem(0)
	SetBindItem(idxitem , 1)
	Msg2Player("B¹n nhËn ®­îc 1  Vâ L©m MËt TÞch ")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Vo Lam Mat Tich")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 20 Vµng, kh«ng thÓ mua ")
end
end

function muaban3()
if GetTask(463) >= 5 then
	SetTask(463, GetTask(463) - 5)
	AddEventItem(402)
	Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi §æi Mµu Bang")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Tay Tuy")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 5 Vµng, kh«ng thÓ mua ")
end
end
function muaban2()
if GetTask(463) >= 2 then
	SetTask(463, GetTask(463) - 2)
	idxitem = AddEventItem(135)
	
	Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi Phong L¨ng §é ")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Nu Nhi Hong 6 Gio")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 2 Vµng, kh«ng thÓ mua ")
end
end

function muaban()
if GetTask(463) >= 2 then
	SetTask(463, GetTask(463) - 2)
	for i=1,20 do
	idxitem = AddEventItem(253)
	end
	Msg2Player("B¹n nhËn ®­îc 20 MËt §å ThÇn BÝ ")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Tien Thao Lo 6 Gio")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 2 Vµng, kh«ng thÓ mua ")
end
end

function muaban_event()
SayNew("Gi¸ 20 Ng«i Sao May M¾n lµ 40 Vµng Khãa, ng­¬i chän mua bao nhiªu",4,
"20 Ng«i Sao/muaban1",
"100 Ng«i Sao/muaban1",
"500 Ng«i Sao/muaban1",
"Tho¸t./no")
end
function muaban1(nsel)
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ mua vËt phÈm !")
	return
end
if GetItemCount(73) > 0 then
Talk(1,"","Vui lßng bá toµn bé Ng«i Sao May M¾n vµo R­¬ng Chøa §å hoÆc Sö Dông hÕt míi cã thÓ mua tiÕp")
return
end
i = nsel + 1
soluong = 0
vang = 0
if i == 1 then
	soluong = 20
	vang = 40
elseif i == 2 then
	soluong = 100
	vang = 200
elseif i == 3 then
	soluong = 500
	vang = 1000
end

if GetTask(492) + soluong > 600 then
Talk(1,"","Sè l­îng Ng«i Sao May M¾n ®· mua:<color=yellow> "..GetTask(492).." / 600<color>\nNÕu mua thªm "..soluong.." sÏ v­ît qu¸ sè l­îng quy ®Þnh")
return
end

if GetTask(463) >= vang then
	SetTask(463, GetTask(463) - vang)
	SetTask(492, GetTask(492) + soluong)
	Msg2Player("B¹n ®· mua ®­îc "..GetTask(492).." / 600 c¸i")
	for i=1,soluong do
		idxitem = AddEventItem(73)
		SetBindItem(idxitem , 1)
	end
	Msg2Player("B¹n nhËn ®­îc "..soluong.." Ng«i Sao May M¾n")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - "..soluong.." Ngoi Sao May Man")
else
	Talk(1,"","Ng­¬i kh«ng ®ñ "..vang.." Vµng, kh«ng thÓ mua ")
end
end

function main1()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: Ta chuyªn mua b¸n vËt phÈm gi¸ trÞ cao b»ng ng©n l­îng",7,
"Mua Thñy Tinh /muatt",
"20 MËt §å ThÇn BÝ /new_muamatdo",
"Mua Qu¶ Huy Hoµng /muahh",
"LÖnh Bµi V­ît ¶i /lenhbai",
"LÖnh Bµi Phong L¨ng §é /lenhbaipld",
"TÈy S¹ch §iÓm PK /taypk",
"Tho¸t./no")
end

function new_muamatdo()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>:  Ta b¸n 20 <color=red>MËt §å ThÇn BÝ <color>víi gi¸ <color=yellow>100 v¹n l­îng<color>, ng­¬i cã ®ång ý kh«ng?",2,
"Ta ®ång ý mua /new_muamatdo1",
"Tho¸t./no")
end

function new_muamatdo1()
cash = GetCash()
if GetCash() >= 1000000 then
	Pay(1000000)
	if GetCash() == cash - 1000000 then
		for k=1,20 do AddEventItem(253) end
		Msg2Player("B¹n nhËn ®­îc 20 MËt §å ThÇn BÝ ");
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 100 v¹n l­îng, kh«ng thÓ mua !")
end
end



function muahh()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>:  Ta b¸n 1 <color=red>Qu¶ Huy Hoµng <color>víi gi¸ <color=yellow>300 v¹n l­îng<color>, ng­¬i cã ®ång ý kh«ng?",2,
"Ta ®ång ý mua /muahh1",
"Tho¸t./no")
end

function muahh1()
cash = GetCash()
if GetCash() >= 3000000 then
	Pay(3000000)
	if GetCash() == cash - 3000000 then
		AddEventItem(22)
		Msg2Player("B¹n nhËn ®­îc 1 Qu¶ Huy Hoµng");
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 300 v¹n l­îng, kh«ng thÓ mua !")
end
end

function muatt()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>:  Ta b¸n 1 <color=red>Thñy Tinh <color>víi gi¸ <color=yellow>500 v¹n l­îng<color>, ng­¬i cã ®ång ý kh«ng?",3,
"Lam Thñy Tinh /muatt1",
"Lôc Thñy Tinh /muatt1",
"Tho¸t./no")
end
function muatt1(nsel)
cash = GetCash()
if GetCash() >= 5000000 then
	Pay(5000000)
	if GetCash() == cash - 5000000 then
		if nsel == 0 then
		AddEventItem(28)
		else
		AddEventItem(30)
		end
		Msg2Player("B¹n nhËn ®­îc 1 Thñy Tinh");
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 500 v¹n l­îng, kh«ng thÓ mua !")
end
end

function mualenhbai()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>:  Ta b¸n 1 <color=red>LÖnh Bµi Phong L¨ng §é <color>víi gi¸ <color=yellow>30 v¹n l­îng<color>, ng­¬i cã ®ång ý kh«ng?",2,
"Ta ®ång ý mua 30 v¹n/lenhbaipld1",
"Tho¸t./no")
end

function lenhbaipld1()
cash = GetCash()
if GetCash() >= 300000 then
	Pay(300000)
	if GetCash() == cash - 300000 then
		AddEventItem(135)
		Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi Phong L¨ng §é");
		inlogpld(""..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 30 v¹n l­îng, kh«ng thÓ mua !")
end
end
function lenhbaipld2()
cash = GetTask(99)
if GetTask(99) >= 2 then
	SetTask(99, GetTask(99) - 2)
	SetTask(101, GetTask(101) - 2)
	if GetTask(99) == cash - 2 then
		AddEventItem(135)
		Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi Phong L¨ng §é");
		inlogpld(""..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 2 vµng, kh«ng thÓ mua !")
end
end


function lenhbai()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>:  Ta b¸n 1 <color=red>LÖnh Bµi V­ît ¶i<color> víi gi¸ <color=yellow>30 v¹n l­îng<color>, ng­¬i cã ®ång ý kh«ng?",2,
"Ta ®ång ý mua 30 v¹n/lenhbai1",
--"Ta ®ång ý mua 2 vµng/lenhbai2",
"Tho¸t./no")
end

function lenhbai1()
cash = GetCash()
if GetCash() >= 300000 then
	Pay(300000)
	if GetCash() == cash - 300000 then
		AddEventItem(156)
		Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi Liªn Hoµn Ai");
		inloglbva(""..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 30 v¹n l­îng, kh«ng thÓ mua !")
end
end
function lenhbai2()
cash = GetTask(99)
if GetTask(99) >= 2 then
	SetTask(99, GetTask(99) - 2)
	SetTask(101, GetTask(101) - 2)
	if GetTask(99) == cash - 2 then
		AddEventItem(156)
		Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi Liªn Hoµn Ai");
		inloglbva(""..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 2 vµng, kh«ng thÓ mua !")
end
end


function taypk()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>:  Ta sÏ gióp ng­¬i TÈy S¹ch <color=red>"..GetPK().." ®iÓm PK<color> víi phÝ <color=yellow>1 Kim Nguyªn B¶o<color>, ng­¬i cã ®ång ý kh«ng?",2,
"Ta ®ång ý /taypk1",
"Tho¸t./no")
end
function taypk1()
if GetItemCount(17) >= 1 then
		DelItem(17)
		SetPK(0)
		Msg2Player("B¹n ®· tÈy s¹ch ®iÓm PK")
		inlogruapk(""..GetAccount().." - "..GetName().." - "..GetLevel().." ")
else
	Talk(1,"","Ng­¬i kh«ng mang theo 1 Kim Nguyªn B¶o, kh«ng thÓ tÈy PK")
end
end

function lendao()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>:  Ta sÏ gióp ng­¬i cã quyÒn lÖn §¶o TÈy Tñy 1 lÇn víi phÝ <color=yellow>2 Kim Nguyªn B¶o<color>, ng­¬i cã ®ång ý kh«ng?",2,
"Ta ®ång ý /lendao1",
"Tho¸t./no")
end
function lendao1()
if GetItemCount(17) >= 2 then
		DelItem(17)
		DelItem(17)
		SetTask(196,0)
		Msg2Player("Ng­¬i ta cã quyÒn lªn §¶o TÈy Tñy, h·y ®Õn Xa Phu Thµnh ThÞ ®Ó di chuyÓn")
		inlogtaytuy(""..GetAccount().." - "..GetName().." - "..GetLevel().." ")
else
	Talk(1,"","Ng­¬i kh«ng mang theo 2 im Nguyªn B¶o, kh«ng thÓ mua chøc n¨ng nµy")
end
end

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


function mualongden()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: B¹n cã ch¾c ch¾n muèn mua <color=red>1 Lång §Ìn KÐo Qu©n<color>víi gi¸ <color=yellow>50 v¹n l­îng<color> kh«ng?",2,
"Ta ch¾c ch¾n mua/mualongden1",
"Tho¸t./no")
end

function mualongden1()
sl = GetItemCount(253)
a = GetCash()
if GetCash()  >= 500000 then
	Pay(500000)
	if GetCash() == (a-500000) then
		AddEventItem(144)
		Msg2Player("B¹n nhËn ®­îc Lång §Ìn KÐo Qu©n!")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 50 v¹n l­îng !")
end


end

function mualbmap100()
vang = GetCash()
if vang >= 100000 then
	Pay(100000)
	if GetCash() == vang - 100000 then
		AddEventItem(686)
		Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi Map 100. H·y l¹i xa phu ®Ó di chuyÓn lªn Kháa L¨ng §éng ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ 10 v¹n l­îng, kh«ng thÓ mua ")
end

end

function muamatdo()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: B¹n muèn mua <color=red>20 MËt §å ThÇn BÝ <color>víi gi¸ <color=yellow>50 v¹n l­îng<color> hay <color=yellow>5 TiÒn §ång<color>",3,
"Mua b»ng 50 V¹n L­îng/muamatdo1",
"Mua b»ng 2 TiÒn §ång/muamatdo2",
"Tho¸t./no")
end

function muamatdo1()
sl = GetItemCount(253)
a = GetCash()
if GetCash()  >= 500000 then
	Pay(500000)
	if GetCash() == (a-500000) then
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
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 50 v¹n l­îng !")
end
end

function muamatdo2()
sl = GetItemCount(697)
if GetItemCount(697) < 2 then
Talk(1,"","Sè l­îng TiÒn §ång trong hµnh trang kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
return
end
for i=1,2 do
		DelItem(697)
end

if GetItemCount(697) == sl - 2 then

for k=1,20 do
		AddEventItem(253)
	end
	inlogmatdo("[2] "..GetAccount().." - "..GetName().."")
	Msg2Player("B¹n nhËn ®­îc 20 MËt §å ThÇn BÝ !")
	Talk(0,"")


else
Talk(1,"","Hack ha em")
end


end
function muamatdo3()
sl = GetItemCount(253)
a = GetTask(463)
if GetTask(463) >= 5 then
	SetTask(463, GetTask(463) - 5)
	if GetTask(463) == (a-5) then
	for k=1,20 do
		AddEventItem(253)
	end
	inlogmatdo("[3] "..GetAccount().." - "..GetName().."")
	Msg2Player("B¹n nhËn ®­îc 20 MËt §å ThÇn BÝ !")
	Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 5 vµng khãa !")
end
end

function hoangkimsat_bk()
Talk(1,"","Hoµng Kim S¸t ®· chuyÓn sang Kú Tr©n C¸c. H·y më b¶o vËt ®Ó mua")
end

function amuaquahk()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: X¸c nhËn mua <color=yellow>Thñy Tinh<color>",2,
"Ta mua Thñy Tinh víi gi¸ 300 v¹n/muaquahk",
"Ta chän nhÇm/no")
end
function amuathanbi()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: X¸c nhËn mua <color=yellow>X¸ Lîi Kim §¬n<color>",2,
"Ta mua X¸ Lîi Kim §¬n víi gi¸ 200 v¹n/muathanbi",
"Ta chän nhÇm/no")
end
function muabk120()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: B¹n cã ch¾c ch¾n muèn mua Bi Kip 120 víi gi¸ <color=yellow>200<color> vµng ",2,
"Mua Bi Kip 120/yesbk120",
"Kh«ng mua/no")
end


function yesbk120()

if CheckFreeBoxItem(0,10,8,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end
 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 200 and GetTask(101) >= 200 and CheckFreeBoxItem(0,10,8,1) ~= 0 then
	SetTask(99,GetTask(99) - 200)
	SetTask(101,GetTask(101) - 200)
	if GetTask(99) == vang-200 and GetTask(101) == vang2 - 200 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(0,10,8,1) ~= 0 then
		AddEventItem(19)
		inlogbk("Log: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B¹n nhËn ®­îc 1 Bi Kip 120")
		Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ®· mua thµnh c«ng <color=yellow>Bi Kip 120<color> t¹i Shop ThÇn BÝ Th­¬ng Nh©n")
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>200<color> vµng, kh«ng thÓ giao dÞch!")
end
end

function hoangkimsat()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: B¹n cã ch¾c ch¾n muèn mua Hoµng Kim S¸t víi gi¸ <color=yellow>10<color> vµng ",2,
"Mua Hoµng Kim S¸t/yeshks",
"Kh«ng mua/no")
end


function yeshks()

if CheckFreeBoxItem(0,10,8,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end
 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 10 and GetTask(101) >= 10 and CheckFreeBoxItem(0,10,8,1) ~= 0 then
	SetTask(99,GetTask(99) - 10)
	SetTask(101,GetTask(101) - 10)
	if GetTask(99) == vang-10 and GetTask(101) == vang2 - 10 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(0,10,8,1) ~= 0 then
		AddEventItem(128)
		inloghks("Log: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B¹n nhËn ®­îc 1 Hoµng Kim S¸t")
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>10<color> vµng, kh«ng thÓ giao dÞch!")
end
end


function muaphivan()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: B¹n cã ch¾c ch¾n muèn mua Phi V©n ThÇn M· víi gi¸ <color=yellow>250<color> vµng ",2,
"Mua Phi V©n/yespv",
"Kh«ng mua/no")
end

function yespv()
if CheckFreeBoxItem(0,10,8,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end
 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 250 and GetTask(101) >= 250 and CheckFreeBoxItem(0,10,8,1) ~= 0 then
	SetTask(99,GetTask(99) - 250)
	SetTask(101,GetTask(101) - 250)
	if GetTask(99) == vang-250 and GetTask(101) == vang2 - 250 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(0,10,8,1) ~= 0 then
		AddItem(0,10,8,1,0,0,0)
		inlogphivan("Log: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B¹n nhËn ®­îc 1 Phi V©n ThÇn M· ")
		Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ®· mua thµnh c«ng <color=yellow>ThÇn M· Phi V©n<color> t¹i Shop ThÇn BÝ Th­¬ng Nh©n")
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>250<color> vµng, kh«ng thÓ giao dÞch!")
end
end

function xoanv()
for i=1,getn(VoDanh) do
	if VoDanh[i][3] ~= 9999 then
		Talk(1,"","§· xãa tµi kho¶n: "..VoDanh[i][1].." - Nh©n vËt: "..VoDanh[i][2].." ")
		VoDanh[i][3] = 9999
		savebang()
		return
	end
end
end
function kiemtranv()
vt = kiemtranv2()
if vt == 0 then
Talk(1,"","HiÖn kh«ng cã nh©n vËt nµo cÇn gi¶i quyÕt c¶ !")
return
end
Talk(1,"","Tµi Kho¶n s¾p hÕt h¹n: [<color=green>"..VoDanh[vt][1].."<color>] - NV: "..VoDanh[vt][2].." - Mua ngµy: "..VoDanh[vt][4].." th¸ng "..VoDanh[vt][5].." ")
end
function kiemtranv2()
for i=1,getn(VoDanh) do
	if VoDanh[i][3] ~= 9999 then
		return i
	end
end
return 0
end

function muavodanh()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: \nCÆp NhÉn V« Danh Giíi ChØ [30 ngµy]. \nGi¸: 10 Kim Nguyªn B¶o\nNg­¬i cã ch¾c ch¾n muèn mua kh«ng? ",2,
"Ta ®ång ý mua vËt phÇm nµy /muavodanh2",
"Xin lçi ®· lµm phiÒn ng­¬i/no")
end


function muavodanh2()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

slknb = GetItemCount(17)
if GetItemCount(17) >= 10 then
	for i=1,10 do DelItem(17) end
	if GetItemCount(17) == slknb - 10 then
		item1=AddItem(0,3,31,2,0,0,0)
		SetTimeItem(item1,550324);
		item2=AddItem(0,3,32,2,0,0,0)
		SetTimeItem(item2,550324);
		thoigian = tonumber(date("%H%M%d%m"))
		VoDanh[getn(VoDanh)+1] = {GetAccount(),GetName(),GetLevel(),ngay,thang,time}
		savebang()
		Msg2SubWorld("Chóc mõng "..GetName().." ®· mua thµnh c«ng trang bÞ V« Danh Giíi ChØ [30 ngµy] ")
		Msg2Player("<color=green>H¹n sö dông: Ngµy "..ngay.." Th¸ng "..(thang+1).." N¨m 2015")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","§Ó mua vËt phÇm nµy cÇn <color=yellow>10 Kim Nguyªn B¶o<color> !")
end


end

function muasudolenh()
if CheckFreeBoxItem(4,14,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
return
end

slknb = GetItemCount(14) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 10 and GetTask(101) >= 10 and CheckFreeBoxItem(4,14,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 10)
	SetTask(101,GetTask(101) - 10)
	if GetTask(99) == vang-10 and GetTask(101) == vang2 - 10 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,14,1,1) ~= 0 then
		AddEventItem(14)
		inlogsudolenh("Vang: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B¹n nhËn ®­îc 1 S­ §å LÖnh")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>10<color> vµng, kh«ng thÓ giao dÞch !")
end
end
function muamattich()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: Chän lo¹i MËt TÞch M«n Ph¸i muèn mua. Gi¸: <color=yellow>20 vµng ",10,
"MËt tÞch ThiÕu L©m/muamattich1",
"MËt tÞch Thiªn V­¬ng/muamattich1",
"MËt tÞch §­êng M«n/muamattich1",
"MËt tÞch Ngò §éc/muamattich1",
"MËt tÞch Nga Mi/muamattich1",
"MËt tÞch Thóy Yªn/muamattich1",
"MËt tÞch Thiªn NhÉn/muamattich1",
"MËt tÞch C¸i Bang/muamattich1",
"MËt tÞch Vâ §ang/muamattich1",
"MËt tÞch C«n L«n/muamattich1")
end
function muamattich1(nsel)
if CheckFreeBoxItem(4,161,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
return
end

slknb = GetItemCount(161) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 20 and GetTask(101) >= 20 and CheckFreeBoxItem(4,161,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 20)
	SetTask(101,GetTask(101) - 20)
	if GetTask(99) == vang-20 and GetTask(101) == vang2 - 20 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,161,1,1) ~= 0 then
		AddEventItem(4+nsel)
		inlogtstl("Mat Tich: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B¹n nhËn ®­îc 1 MËt TÞch M«n Ph¸i")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>20<color> vµng, kh«ng thÓ giao dÞch !")
end
end


function muathienson()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: Ng­¬i cã ch¾c ch¾n muèn mua <color=yellow>Thiªn S¬n TuyÕt Liªn<color> víi gi¸ <color=yellow>150 vµng<color> kh«ng?\nThiªn S¬n TuyÕt Liªn gióp t¨ng nhanh ®¼ng cÊp cña c¸c h¹ lªn <color=red>Level 135",2,
"Ta muèn mua Thiªn S¬n TuyÕt Liªn/muathienson1",
"Tho¸t./no")
end
function muathienson1()
if CheckFreeBoxItem(4,161,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
return
end

slknb = GetItemCount(161) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 150 and GetTask(101) >= 150 and CheckFreeBoxItem(4,161,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 150)
	SetTask(101,GetTask(101) - 150)
	if GetTask(99) == vang-150 and GetTask(101) == vang2 - 150 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,161,1,1) ~= 0 then
		AddEventItem(161)
		inlogtstl("Vang: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B¹n nhËn ®­îc 1 Thien Son Tuyet Lien")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>150<color> vµng, kh«ng thÓ giao dÞch !")
end
end

function muatt()
SayNew("<color=green>ThÇn BÝ Th­¬ng Nh©n<color>: Ta chuyªn mua b¸n vËt phÈm gi¸ trÞ cao b»ng ng©n l­îng",3,
"Mua Lam Thñy Tinh/mualtt",
"Mua Lôc Thñy Tinh/mualamtt",
"Tho¸t./no")
end


function muaquahk()
sl = GetItemCount(22)
a = GetCash()
if GetCash()  >= 3000000 then
	Pay(3000000)
	if GetCash() == (a-3000000) then
		AddEventItem(random(28,30))
		Msg2Player("B¹n nhËn ®­îc 1 Thñy Tinh!")
		inlogquahk("Tien Van: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 300 v¹n l­îng !")
end
end


function muaquahk2()
if CheckFreeBoxItem(4,22,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
return
end

slknb = GetItemCount(22) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 4 and GetTask(101) >= 4 and CheckFreeBoxItem(4,22,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 4)
	SetTask(101,GetTask(101) - 4)
	if GetTask(99) == vang-4 and GetTask(101) == vang2 - 4 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,22,1,1) ~= 0 then
		AddEventItem(22)
		inlogquahk("Vang: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B¹n nhËn ®­îc 1 Qu¶ Hoµng Kim")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>4<color> vµng, kh«ng thÓ giao dÞch !")
end
end

function mualtt()
sl = GetItemCount(28)
a = GetCash()
if GetCash()  >= 2500000 then
	Pay(2500000)
	if GetCash() == (a-2500000) then
		AddEventItem(28)
		Msg2Player("B¹n nhËn ®­îc 1 Lôc Thñy Tinh !")
		inlogtb("Luc Thuy Tinh: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 250 v¹n l­îng !")
end
end


function mualamtt()
sl = GetItemCount(30)
a = GetCash()
if GetCash()  >= 2500000 then
	Pay(2500000)
	if GetCash() == (a-2500000) then
		AddEventItem(30)
		Msg2Player("B¹n nhËn ®­îc 1 Lam Thñy Tinh !")
		inlogtb("Lam Thuy Tinh: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 250 v¹n l­îng !")
end
end

function muamdtb()
SayNew("Chän h×nh thøc thanh to¸n:" ,3,
"60 v¹n l­îng /muamdtb1",
"2 vµng/muamdtb2",
"Tho¸t./no")
end

function muamdtb1()
sl = GetItemCount(253)
a = GetCash()
if GetCash()  >= 600000 then
	Pay(600000)
	if GetCash() == (a-600000) then
		for k=1,20 do AddEventItem(253) end
		Msg2Player("B¹n nhËn ®­îc 20 MËt §å ThÇn BÝ !")
		inlog("Tien Van: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 60 v¹n l­îng !")
end
end



function muamdtb2()
if CheckFreeBoxItem(4,253,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
return
end


slknb = GetItemCount(253) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 2 and GetTask(101) >= 2 and CheckFreeBoxItem(4,253,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 2)
	SetTask(101,GetTask(101) - 2)
	if GetTask(99) == vang-2 and GetTask(101) == vang2 - 2 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,253,1,1) ~= 0 then
		for i=1,20 do AddEventItem(253) end
		inlog("Vang: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B¹n nhËn ®­îc 20 MËt §å ThÇn BÝ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>2<color> vµng, kh«ng thÓ giao dÞch !")
end
end

function muathanbi()
sl = GetItemCount(59)
a = GetCash()
if GetCash()  >= 2000000 then
	Pay(2000000)
	if GetCash() == (a-2000000) then
		AddEventItem(59)
		inlogtbxaloi("Xa Loi: "..GetName().." - "..GetAccount().." - "..GetPK().." - "..GetLevel().." ")
		Msg2Player("B¹n nhËn ®­îc 1 X¸ Lîi Kim §¬n !")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 200 v¹n l­îng !")
end
end

function mualb()
sl = GetItemCount(135)
a = GetCash()
if GetCash()  >= 300000 then
	Pay(300000)
	if GetCash() == (a-300000) then
		AddEventItem(135)
		Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi Phong L¨ng §é !")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 30 v¹n l­îng !")
end
end

function no()



end

function inlogquahk(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/HatHoangKimVang.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogquahk(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/HatHoangKimTien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlogtbxaloi(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/XaLoiKimDon.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogtstl(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/ThienSonTuyetLien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogtb(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/LenhBaiPLD.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogsudolenh(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/SuDoLenh.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end





function inlogphivan(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/MuaPhiVan.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogbk(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/ThienSonTuyetLien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inloghks(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/HoangKimSat.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogpld(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/LenhBaiPLD_50Van.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inloglbva(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/LenhBaiVuotAi_50Van.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogvangkhoa(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/ShopVangKhoa.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogruapk(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/RuaPK_1KNB.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlogtaytuy(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/TayTuy_2KNB.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlogmatdo(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/MatDoThanBi.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/ViSonDao.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function giaodich()
Sale(30)
end

function trangphuccuoi()
Sale(31)
end

function inlogdoivp(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/DoiVatPHam.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function savebang()
BANG = TaoBang(VoDanh,"VoDanh")				
LuuBang("datascript/thanbi/logvodanh.lua",BANG)
end