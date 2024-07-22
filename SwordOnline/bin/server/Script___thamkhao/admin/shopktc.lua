
function main()
--Talk(1,"","Chøc n¨ng t¹m ®ãng trong thêi gian test vµ ®ua top !")
Sale(24,1)
end
function thucuoi()
SayNew("HiÖn ng­¬i ®ang cã <color=yellow>"..GetTask(99).." Vµng<color>. H·y chän vËt phÈm muèn mua :",7,
"¤ V©n §¹p TuyÕt [60 vµng]/thucuoi1",
"XÝch Thè [80 vµng]/thucuoi1",
"TuyÖt ¶nh [50 vµng]/thucuoi1",
"§Ých L« [50 vµng]/thucuoi1",
"ChiÕu D¹ 30 ngµy [50 vµng]/thucuoi2",
"Phi V©n 30 ngµy [100 vµng]/thucuoi3",
"Tho¸t./no")
end

function thucuoi2()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

vang = GetTask(99)
gia = 50
	if CheckFreeBoxItem(0,10,5,1) == 0 then
			Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
			return
			end
if GetTask(99) >= gia then
	SetTask(99 , GetTask(99) - gia)
	SetTask(101, GetTask(99))
	if GetTask(99) == vang - gia then
		idxitem = AddItem(0,10,5,5,0,0,0)
		SetHSD(idxitem , 2017, thang + 1, ngay , gio)
		Msg2Player("B¹n nhËn ®­îc 1 ChiÕu D¹ Ngäc  S­ Tö ")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ "..gia.." vµng, kh«ng thÓ mua !")
end	
end
function thucuoi3()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

vang = GetTask(99)
gia = 100
	if CheckFreeBoxItem(0,10,5,1) == 0 then
			Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
			return
			end
if GetTask(99) >= gia then
	SetTask(99 , GetTask(99) - gia)
	SetTask(101, GetTask(99))
	if GetTask(99) == vang - gia then
		idxitem = AddItem(0,10,8,1,0,0,0)
		SetHSD(idxitem , 2017, thang + 1, ngay , gio)
		Msg2Player("B¹n nhËn ®­îc 1 Phi V©n ")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ "..gia.." vµng, kh«ng thÓ mua !")
end	
end


function thucuoi1(nsel)
i = nsel + 1
vang = GetTask(99)
gia = 120
name = "Phi V©n"
if i == 1 then
	gia = 60
	name = "¤ V©n §¹p TuyÕt"
elseif i == 2 then
	gia = 80
	name = "XÝch Thè "
elseif i == 3 then
	gia = 50
	name = "TuyÖt ¶nh"	
elseif i == 4 then
	gia = 50
	name = "§Ých L« "	
end

	if CheckFreeBoxItem(0,10,5,1) == 0 then
			Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
			return
			end
		
		
if GetTask(99) >= gia then
	SetTask(99 , GetTask(99) - gia)
	SetTask(101, GetTask(99))
	if GetTask(99) == vang - gia then
			itemidx = AddItem(0,10,5,i,0,0,0)
			Msg2Player("B¹n nhËn ®­îc 1 "..GetNameItemBox(itemidx).."")
			inlog2("[VIP] "..GetNameItemBox(itemidx).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Vang con: "..GetTask(99).."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ "..gia.." vµng, kh«ng thÓ mua !")
end
end

function loaivatpham(nsel)
i = nsel + 1
SetTaskTemp(2, i)
if i == 1 then
SayNew("HiÖn ng­¬i ®ang cã <color=yellow>"..GetTask(99).." Vµng<color>. H·y chän vËt phÈm muèn mua :",5,
"Nh©n 2 kinh nghiÖm 24 giê [15 vµng] /shop1_1",
"Max Vâ L©m MËt TÞch [50 vµng]/shop1_2",
"Max TÈy Tñy Kinh [30 vµng]/shop1_3",
"TÈy TiÒm N¨ng /shop1_4",
"Tho¸t./no")
elseif i == 2 then
SayNew("HiÖn ng­¬i ®ang cã <color=yellow>"..GetTask(99).." Vµng<color>. H·y chän vËt phÈm muèn mua :",9,
"X¸ Lîi Kim §¬n /muaktc",
"Bµn Nh­îc T©m Kinh /muaktc",
"Phi Phong /muaktc",
"Tö Thñy Tinh /muaktc",
"Lôc Thñy Tinh/muaktc",
"Lam Thñy Tinh/muaktc",
"Tói MÆt N¹ /muaktc",
"Nh¹c V­¬ng KiÕm/muaktc",
"Tho¸t./no")
elseif i == 3 then
SayNew("HiÖn ng­¬i ®ang cã <color=yellow>"..GetTask(99).." Vµng<color>. H·y chän vËt phÈm muèn mua :",5,
"LÖnh bµi Phong L¨ng §é /muaktc",
"LÖnh bµi V­ît ¶i /muaktc",
"Hoµng Kim S¸t TiÓu /muaktc",
"Hoµng Kim S¸t §¹i /muaktc",
"Tho¸t./no")
end
end

function shop1_1()
SayNew("Ng­¬i cã ch¾c ch¾n muèn mua <color=yellow>Nh©n 2 Kinh NghiÖm 1 Ngµy<color> víi gi¸ <color=yellow>15 vµng<color> kh«ng?",2,
"Ta ®ång ý /shop1_1_x",
"Tho¸t./no")
end

function shop1_1_x()
ngay = tonumber(date("%d"))
vang = GetTask(99)
if GetTask(99) >= 15 then
	SetTask(99, GetTask(99) - 15)
	SetTask(101, GetTask(101) - 15)
	if GetTask(99) == vang - 15 then
		SetTask(172, GetTask(172) + 24*60*60*18)
		AddSkillEffect(460,1,GetTask(172))
		SetTask(141,1)
		Msg2Player("B¹n nhËn ®­îc thªm 1 ngµy nh©n ®«i kinh nghiÖm. Thêi gian nh©n ®«i hiÖn t¹i: <color=yellow>"..floor(GetTask(172) / 1080).." phót")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 15 vµng, kh«ng thÓ mua")
end
end


function shop1_2()
SayNew("Ng­¬i cã ch¾c ch¾n muèn mua <color=yellow>Max Vâ L©m MËt TÞch<color> víi gi¸ <color=yellow>50 vµng<color> kh«ng?",2,
"Ta ®ång ý /shop1_2_x",
"Tho¸t./no")
end

function shop1_2_x()
if GetTask(199) == 10 then
return
end

ngay = tonumber(date("%d"))
vang = GetTask(99)
giatien = 50
if GetTask(99) >= giatien then
	SetTask(99, GetTask(99) - giatien)
	SetTask(101, GetTask(101) - giatien)
	if GetTask(99) == vang - giatien then
		AddMagicPoint(10-GetTask(199))
		SetTask(199, 10)
		KickOutSelf()
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng ®ñ "..giatien.." vµng, kh«ng thÓ mua")
end
end


function shop1_3()
SayNew("Ng­¬i cã ch¾c ch¾n muèn mua <color=yellow>Max TÈy Tñy Kinh<color> víi gi¸ <color=yellow>30 vµng<color> kh«ng?",2,
"Ta ®ång ý /shop1_3_x",
"Tho¸t./no")
end

function shop1_3_x()
if GetTask(198) == 5 then
return
end

ngay = tonumber(date("%d"))
vang = GetTask(99)
giatien = 30
if GetTask(99) >= giatien then
	SetTask(99, GetTask(99) - giatien)
	SetTask(101, GetTask(101) - giatien)
	if GetTask(99) == vang - giatien then
		AddProp(5*(5-GetTask(198)))
		SetTask(198, 5)
		Msg2Player("B¹n ®· Max TÈy Tñy Kinh")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng ®ñ "..giatien.." vµng, kh«ng thÓ mua")
end
end
function muaktc(nsel)
i = nsel + 1
SetTaskTemp(1,i)
OpenStringBox (2,"NhËp Sè L­îng" , "acceptcode1")
end
function acceptcode1(num2)
num = tonumber(num2)
SetTaskTemp(3 ,num)
SayNew("Ng­¬i cã ch¾c ch¾n muèn mua <color=yellow>"..num.."x "..MangKTC[GetTaskTemp(2)][GetTaskTemp(1)][1].."<color> víi gi¸ <color=yellow>"..(MangKTC[GetTaskTemp(2)][GetTaskTemp(1)][2]*num).." vµng<color> kh«ng?",2,
"Ta ®ång ý /muaktc2",
"Tho¸t./no")
end


function muaktc2()

i = GetTaskTemp(2)
j = GetTaskTemp(1)
sl = GetTaskTemp(3)
tongtien = sl*MangKTC[i][j][2]
if GetTask(99) >= tongtien then
		for k=1,sl do 
			if CheckFreeBoxItem(4,MangKTC[i][j][3],1,1) == 0 then
			Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
			break
			end
		
			vang = GetTask(99)
			SetTask(99, GetTask(99) - MangKTC[i][j][2])
			SetTask(101 , GetTask(99))
			if GetTask(99) == vang - MangKTC[i][j][2] then
				AddEventItem(MangKTC[i][j][3])
				Msg2Player("B¹n nhËn ®­îc <color=yellow>1 "..MangKTC[i][j][1].."")
				inlog2(""..MangKTC[i][j][1].." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Vang con: "..GetTask(99).."")
				Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
		end
else
	Talk(1,"","Ng­¬i kh«ng ®ñ <color=yellow>"..tongtien.." vµng<color> ®Ó mua <color=green>"..sl.."x "..MangKTC[i][j][1].."<color>. H·y kiÓm tra l¹i")
end
end


function inlog2(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/KyTranCac.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


MangKTC = {
{ -- Loai 1
	--{"Tiªn Th¶o Lé 1 Giê ",1,117}, -- 7
	--{"Tiªn Th¶o Lé 3 Giê ",3,119},
	--{"Tiªn Th¶o Lé 6 Giê ",6,120},
	--{"N÷ Nhi Hång 1 Giê ",1,118},
	--{"N÷ Nhi Hång 3 Giê ",3,115},
	--{"N÷ Nhi Hång 6 Giê ",6,116},
},
{ -- Loai 2
	{"X¸ Lîi Kim §¬n",1,59},
	{"Bµn Nh­îc T©m Kinh",5,252},
	{"Phi Phong",5,251},
	{"Tö Thñy Tinh",6,29},
	{"Lôc Thñy Tinh",6,30},
	{"Lam Thñy Tinh",6,28},
	--{"Tinh Hång B¶o Th¹ch",4,31},
	--{"Vâ L©m MËt TÞch",10,0},
	--{"TÈy Tñy Kinh",10,1},
	{"Tói MÆt N¹ ",10,188},
	{"Nh¹c V­¬ng KiÕm",100,164},
},
{
	{"LÖnh bµi Phong L¨ng §é ",1,135},
	{"LÖnh bµi Liªn Hoµn ¶i ",1,156},
	{"Hoµng Kim S¸t TiÓu ",5,128},
	{"Hoµng Kim S¸t §¹i ",10,129},
},
}

function no()
end
function main2()
if GetAccount() == "vantoi" or GetAccount() == "" or GetAccount() == "" then
if GetItemCount(120) == 0 then
idxitem = AddEventItem(120)
SetBindItem(idxitem,1);
end
if GetItemCount(265) == 0 then
idxitem = AddEventItem(265)
SetBindItem(idxitem,1);
end
if GetItemCount(264) == 0 then
idxitem = AddEventItem(264)
SetBindItem(idxitem,1);
SetHSD(idxitem, 2016, 9, 1, 1)
end
end
Sale(24,1)
end

function doimatkhau()
Talk(1,"","TÝnh n¨ng ®ang hoµn thiÖn !")
end
function taomatkhau()
if GetTask(152) == 0 then
Talk(1,"","B¹n ch­a t¹o mËt khÈu r­¬ng, kh«ng thÓ t¹o mËt khÈu kú tr©n c¸c")
return
end
if loaitru(GetTask(152)) == 0 or loaitru(GetTask(152)) == 1 then
Talk(1,"","MËt khÈu r­¬ng cña b¹n kh«ng ®óng nguyªn t¾c, vui lßng t¹o mËt khÈu r­¬ng kh¸c")
return 
end

if GetTask(305) == 0 then
	OpenStringBox(1,"T¹o M· KTC","Accept")
else
	Talk(1,"","B¹n ®· cã <color=yellow>MËt KhÈu Kú Tr©n C¸c<color>, kh«ng thÓ t¹o !")
end
end

function moshop()
		if GetTask(305) == 0 then
				Sale(24,1)
				Msg2Player("<color=pink>HÖ Thèng:<color=red> H·y t¹o mËt khÈu Kú Tr©n C¸c ®Ó ®¶m b¶o an toµn cho b¹n. NÕu b¹n kh«ng t¹o mËt khÈu mµ bÞ hack chóng t«i sÏ kh«ng gi¶i quyÕt")
		else
				OpenStringBox(1,"NhËp M· KTC","Accept2")
		end
end

function loaitru(num)
mang = {}
mang[1] = floor(num/100000)
mang[2] = floor((num - mang[1]*100000)/10000)
mang[3] = floor((num - mang[1]*100000 - mang[2]*10000)/1000)
mang[4] = floor((num - mang[1]*100000 - mang[2]*10000  - mang[3]*1000)/100)
mang[5] = floor((num - mang[1]*100000 - mang[2]*10000  - mang[3]*1000 - mang[4]*100)/10)
mang[6] = floor(num - mang[1]*100000 - mang[2]*10000  - mang[3]*1000 - mang[4]*100  - mang[5]*10)

sltrung = 0
for i=1,6 do
	sltrung = 1
	for j=i,6 do
		if mang[i] == mang[j] and i ~= j then
			sltrung = sltrung + 1
		end
	end
	if sltrung >= 3 then
		break
	end
end

sldongian = 0
for i=1,getn(DonGian) do
	if num == DonGian[i] then
		return 1
	end
end

if sltrung >= 3 then
return 0
else
return 2
end
end

DonGian = {
123456,
112233,
654321,
123321,
123123,
123567,
123789,
123678,
121314,
122334,
}


function Accept(num2)
num = tonumber(num2)

if num < 111111 or num > 999999 then
Talk(1,"","MËt khÈu Kú Tr©n C¸c chØ ®­îc tõ 111111 - 999999")
return
end

if loaitru(num) == 0 then
Talk(1,"","MËt khÈu cña b¹n kh«ng ®­îc cã <color=yellow>3 sè trïng nhau<color>")
return
end
if loaitru(num) == 1 then
Talk(1,"","MËt khÈu cña b¹n <color=yellow>Qu¸ §¬n Gi¶n<color>, kh«ng thÓ t¹o.")
return
end
if num == GetTask(152) then
Talk(1,"","MËt khÈu Kú Tr©n C¸c kh«ng ®­îc gièng víi MËt khÈu R­¬ng")
return
end

SetTask(305, num)

thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/MatKhauKTC/taomatkhau.txt", "a");
if LoginLog then
write(LoginLog,""..GetAccount().." - "..GetName().." - ["..GetTask(305).."] - "..thoigian.."\n");
end
closefile(LoginLog)


Msg2Player("MËt khÈu Kú Tr©n C¸c cña b¹n lµ: <color=yellow>"..GetTask(305).."")

end

function Accept2(num2)
num = tonumber(num2)
if GetTask(305) == num then
Sale(24,1)
else
Talk(1,"","B¹n nhËp sai m· kú tr©n c¸c, liªn hÖ Hç Trî Trùc TuyÕn nÕu quªn mËt khÈu")
end
end