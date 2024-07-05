Include("\\Script\\global\\sourcejx49.lua");
-- OpenPGBoxItem(): Mo thung ep do
-- GetIdxPGItem(page,num)  Ham lay Idx o thung thu page, o thu num
-- GetSeriItem
-- GetLevelItem
-- GetParticularItem
-- GetDetailTypeItem
-- GetGenreItem(idx)
-- DelEquipIdx(idx) -- Del trang bi
-- DelItemIdx (idx) -- Del Questkey
-- GetItemType(idx) 0 la tb thuong, 1 la hk, 2 la tim
-- GetEquipMagicId(idx,num)  Lay Magic cua dong num tu 1 - 6
-- GetEquipMagicLevel(idx,num) Level cua dong tu 1 - 10
-- IsBlockItem() 1 la khoa, 2 la khong khoa check trang bi co dinh hay ko
--- VIEN DA KHOANG THACH
-- AddEventItemMagic(id,seri,idmagic,levelmacgic,RequirementMagic) add magic khoang thach
---------------------- seri = 5 la khong co ngu hanh
-- GetIdMagicEventItem
-- GetLevelMagicEventItem
-- GetRequirementMagicEventItem

--- TRANG BI TIM
-- AddItemPink(Genara,Detail,Particular,nLevel,nSeries,nLuck,LevelMagic1,IdMagic1,LevelMagic2,IdMagic2,....,LevelMagic6,IdMagic6,1,randomseed)
-- GetEquipMagicRandomSeed(idx) -- Lay gia tri random seed cua 1 trang bi
-- GetEquipMagicLucky(idx,num) - Lay May Man


PHOBIEN = 0	--cho ep do tai bat cu tho ren nao tren ban do.Mac dinh = 0
MAPBLACKSMITH = 37 --Map cho ep do tai do khi PHOBIEN = 1

function main()
if GetAccount() == "adminso2" then
chetaohuyentinh()
return
end
if GetTask(103) == 6 then
	Say("<color=green>Thî rÌn<color> H·y lùa chän 1 vò khÝ ngang víi søc m×nh nhÐ: ",5,
	"Mua vò khÝ/binhthuong",
	"Giao tÝn thø ch­ëng m«n /giaotinthu",
	"Th¨ng CÊp Trang BÞ Xanh/thangcap",
	"Hñy trang bÞ khãa VÜnh ViÔn /huytrangbi",
	"Tho¸t./no")
elseif GetTask(115) == 15000 then
	Say("<color=green>Thî rÌn<color> H·y lùa chän 1 vò khÝ ngang víi søc m×nh nhÐ: ",3,
	"Mua vò khÝ/binhthuong",
	"Giao tÝn thø ch­ëng m«n /giaotinthu",
	"Tho¸t./no")
else
	Say("<color=green>Thî rÌn<color> H·y lùa chän 1 vò khÝ ngang víi søc m×nh nhÐ: ",4,
	"Mua vò khÝ/binhthuong",
	"Th¨ng CÊp Trang BÞ Xanh/thangcap",
	"Hñy trang bÞ khãa VÜnh ViÔn /huytrangbi2",
	"Tho¸t./no")
end
end;

function huytrangbi2()
Say("<color=green>Thî rÌn<color>: Chøc n¨ng nµy lµ <color=red>Xãa Bá Trang BÞ <color> chø kh«ng ph¶i lµ <color=yellow>Më Khãa Trang BÞ <color>. NÕu ®Æt item vµo sÏ mÊt vÜnh viÔn trang bÞ nµy vµ kh«ng phôc håi !",2,
"Ta ®ång ý hñy bá trang bÞ nµy /huytrangbi",
"Tho¸t./no")
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
	else	
		Talk(1,"","Trang bÞ ®Æt vµo kh«ng khãa vÜnh viÔn !")
	end
end
end



function ghepmanh()
OpenCheckItemBox("GhÐp M·nh Hoµng Kim","§Æt Nguyªn LiÖu GhÐp M·nh Hoµng Kim vµo","okghepmanh")
end

manghk = {
{243,"§å Phæ Vò KhÝ Hoµng Kim",189,"M·nh Vò KhÝ Hoµng KIm","VU KHI"},
{244,"§å Phæ Nãn Hoµng Kim",195, "M·nh Nãn Hoµng Kim","NON"},
{245,"§å Phæ ¸o Gi¸p Hoµng Kim",201, "M·nh ¸o Gi¸pHoµng Kim","AO GIAP"},
{246,"§å Phæ Bao Tay Hoµng Kim",207, "M·nh Bao Tay Hoµng Kim","BAO TAY"},
{247,"§å Phæ Th¾t L­ng Hoµng Kim",213, "M·nh Th¾t L­ng Hoµng Kim","THAT LUNG"},
{248,"§å Phæ Giµy Hoµng Kim",219, "M·nh Giµy Hoµng Kim","GIAY"},
{250,"§å Phæ D©y ChuyÒn Hoµng Kim",225, "M·nh D©y ChuyÒn Hoµng Kim","DAY CHUYEN"},
{251,"§å Phæ Ngäc Béi Hoµng Kim",231, "M·nh Ngäc Béi Hoµng Kim","NGOC BOI"},
{252,"§å Phæ NhÉn Hoµng Kim",237, "M·nh NhÉn Hoµng Kim","NHAN"},
}


function okghepmanh()
--Msg2Player(" "..checknum().." "..checkmanhtt().." "..idthienthach().." "..idmanh().." ")
if checknum() ~= 1 then
Talk(1,"","Sè l­îng M·nh Hoµng Kim kh«ng cã hoÆc nhiÒu h¬n 1, thÊt b¹i !")
return
end
if checkmanhtt() ~= 1 then
Talk(1,"","Sè l­îng M·nh Thiªn Th¹ch kh«ng cã hoÆc nhiÒu h¬n 1, thÊt b¹i !")
return
end
if idthienthach() == 0 then
Talk(1,"","Kh«ng cã m·nh thiªn th¹ch, thÊt b¹i !")
return
end
if idmanh() == 0 then
Talk(1,"","Kh«ng cã m·nh hoµng kim, thÊt b¹i !")
return
end
if demtt() == 0 then
Talk(1,"","Kh«ng cã Thñy Tinh, thÊt b¹i !")
return
end

tienvanyeucau = 10000000
a_id = idmanh()
b_id = idthienthach()
a = GetItemCountBox(manghk[a_id][1]) -- stt manh hk trong mang
b = GetItemCountBox(60+b_id) -- stt manh thien thach, theo cong thuc - 1
c = GetItemCountBox(50) -- so luong HT 7
d = GetItemCountBox(0) -- so luong VLMT
xacsuat = demtt() -- So luong thuy tinh dat vao

vang = GetCash()


if GetItemCountBox(0) == 1 and GetItemCountBox(50) == 1 and idthienthach() > 0 and idmanh() > 0 and GetCash() >= tienvanyeucau and demtt() > 0 then
	xs = random(1,100)
	if xs < (xacsuat*4) then
	DelItemBox(manghk[a_id][1])
	DelItemBox(b_id+60)
	DelItemBox(50)
	DelItemBox(0)
	Pay(tienvanyeucau)
	for k=1,GetItemCountBox(28) do DelItemBox(28) end
	for k=1,GetItemCountBox(29) do DelItemBox(29) end
	for k=1,GetItemCountBox(30) do DelItemBox(30) end
	
	--Msg2Player(" "..GetItemCountBox(manghk[a_id][1]).." "..GetItemCountBox(60+b_id).." "..GetItemCountBox(50).." "..GetItemCountBox(0).." "..GetItemCountBox(28).." "..GetItemCountBox(29).." "..GetItemCountBox(30).." "..GetCash().." ")
	if GetItemCountBox(manghk[a_id][1]) == a - 1 and GetItemCountBox(60+b_id) == b - 1 and GetItemCountBox(50) == c - 1 and GetItemCountBox(0) == d - 1 and GetItemCountBox(28) == 0 and GetItemCountBox(29) == 0 and GetItemCountBox(30) == 0 and GetCash() == vang-tienvanyeucau then
		AddEventItem(manghk[a_id][3]+b_id-1)
		inloghkmp("MANH: "..GetAccount().." - "..GetName().." - "..manghk[a_id][5].." - "..b_id.." ")
		Msg2Player("Chóc mõng b¹n chÕ t¹o thµnh c«ng<color=pink>"..manghk[a_id][2].." thø "..b_id.."/6 ")
		Msg2SubWorld("Chóc mõng [<color=yellow>"..GetName().."<color=red>] chÕ t¹o thµnh c«ng <color=pink>"..manghk[a_id][2].." thø "..b_id.."/6 ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
	else
		inloghkmp("That Bai: "..GetAccount().." -  "..GetName().." - "..manghk[a_id][5].." -"..b_id.." - "..(xacsuat*5).."% ")
		for k=1,GetItemCountBox(28) do DelItemBox(28) end
		for k=1,GetItemCountBox(29) do DelItemBox(29) end
		for k=1,GetItemCountBox(30) do DelItemBox(30) end
		DelItemBox(50)
		Pay(tienvanyeucau)
		Msg2Player("ChÒ t¹o M·nh Hoµng Kim thÊt b¹i, b¹n bÞ mÊt hÕt Thñy Tinh vµ HuyÒn Tinh ")
		Msg2SubWorld("Xin chia buån cïng [<color=yellow>"..GetName().."<color=red>] ®· chÕ t¹o thÊt b¹i <color=pink>"..manghk[a_id][2].." thø "..b_id.."/6 ")
		
		Talk(1,"","<color=red>ChÒ t¹o M·nh Hoµng Kim thÊt b¹i, b¹n bÞ mÊt hÕt Thñy Tinh vµ HuyÒn Tinh")
	end
else
	Talk(1,"","Nguyªn liÖu ®Æt vµo kh«ng ®ñ: M·nh Hoµng Kim + M·nh Thiªn Th¹ch + VLMT + Thñy Tinh + HuyÒn Tinh 7 + 1000 v¹n  !")
end

end

function demtt()
num = 0
num = num + GetItemCountBox(28)
num = num + GetItemCountBox(29)
num = num + GetItemCountBox(30)
return num
end

function idthienthach()
if GetItemCountBox(61) == 1 then
return 1
elseif GetItemCountBox(62) == 1 then
return 2 
elseif GetItemCountBox(63) == 1 then
return 3
elseif GetItemCountBox(64) == 1 then
return 4 
elseif GetItemCountBox(65) == 1 then
return 5 
elseif GetItemCountBox(66) == 1 then
return 6 
else
return 0
end
end

function idmanh()
if GetItemCountBox(243) == 1 then
return 1
elseif GetItemCountBox(244) == 1 then
return 2
elseif GetItemCountBox(245) == 1 then
return 3
elseif GetItemCountBox(246) == 1 then
return 4
elseif GetItemCountBox(247) == 1 then
return 5
elseif GetItemCountBox(248) == 1 then
return 6
elseif GetItemCountBox(250) == 1 then
return 7
elseif GetItemCountBox(251) == 1 then
return 8
elseif GetItemCountBox(252) == 1 then
return 9
else
return 0
end
end


function checknum()
num = 0
for i=243,252 do
	if GetItemCountBox(i) > 0 then
		num = num + GetItemCountBox(i)
	end
end
return num
end
function checkmanhtt()
num = 0
for i=61,66 do
	if GetItemCountBox(i) > 0 then
		num = num + GetItemCountBox(i)
	end
end
return num
end


function thangcap()
OpenCheckItemBox("Th¨ng CÊp Trang BÞ","H·y ®Æt 1 trang bÞ Xanh vµ 1 viªn Tö Thñy Tinh vµo ","okhaha")
end

function okhaha()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey()

if (itemidx == 0) then
Msg2Player("B¹n ch­a ®Æt trang bÞ cÇn th¨ng cÊp vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a ®Æt trang bÞ cÇn th¨ng cÊp vµo !")
return
end

if (itemidx == -1) then
Msg2Player("B¹n kh«ng ®Æt vµo qu¸ 1 trang bÞ xanh !")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo nhiÒu h¬n 1 trang bÞ !")
return
end

if (itemidx == -2) then
Msg2Player("Trang bÞ ®Æt vµo kh«ng ph¶i trang bÞ xanh ")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo kh«ng ph¶i trang bÞ xanh !")
return
end


if (numitem == 0) then
Msg2Player("B¹n ch­a ®Æt nguyªn liÖu th¨ng cÊp vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a cã nguyªn liÖu th¨ng cÊp!")
return
end

if (numitem == -1) then
Msg2Player("B¹n chØ cã thÓ ®Æt 1 nguyªn liÖu th¨ng cÊp ")
Talk(1,"","<color=red>Lçi<color>: V­ît qu¸ sè l­îng yªu cÇu: 1 viªn Tö Thñy Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguyªn liÖu ®Æt vµo kh«ng ph¶i Tö Thñy Tinh ")
Talk(1,"","<color=red>Lçi<color>: Nguyªn liÖu ®Æt vµo kh«ng ph¶i lµ Tö Thñy Tinh!")
return
end


if GetCash() < 100000 then
Talk(1,"","Th¨ng cÊp trang bÞ mçi lÇn cÇn 10 v¹n !")
return
end


	a = GetDetailTypeItem(itemidx)
	b = GetParticularItem(itemidx)		
	c = GetLevelItem(itemidx)
	
	if (a == 2 and b == 28) then
		Msg2Player("Trang bÞ kÕt h«n kh«ng thÓ th¨ng cÊp !")
		Talk(1,"","Trang bÞ kÕt h«n kh«ng thÓ th¨ng cÊp !")
		return
	end

	if c < 1 or c >= 10 then
	Msg2Player("Trang bÞ cña b¹n ®¹t cÊp tèi ®a, kh«ng thÓ th¨ng cÊp")
	Talk(1,"","<color=red>Lçi<color>: Kh«ng thÓ th¨ng cÊp trang bÞ cÊp 10!")
	return
	end

	d = GetSeriItem(itemidx)
	
	lucky1 = GetEquipMagicLucky(itemidx,1)
	lucky2 = GetEquipMagicLucky(itemidx,2)
	lucky3 = GetEquipMagicLucky(itemidx,3)
	lucky4 = GetEquipMagicLucky(itemidx,4)
	lucky5 = GetEquipMagicLucky(itemidx,5)
	lucky6 = GetEquipMagicLucky(itemidx,6)
	
	Level411 = GetEquipMagicLevel(itemidx,1)
	Id411 = GetEquipMagicId(itemidx,1)
	Level412 = GetEquipMagicLevel(itemidx,2)
	Id412 = GetEquipMagicId(itemidx,2)
	Level413 = GetEquipMagicLevel(itemidx,3)
	Id413 = GetEquipMagicId(itemidx,3)
	Level414 = GetEquipMagicLevel(itemidx,4) 
	Id414 = GetEquipMagicId(itemidx,4)
	Level415 = GetEquipMagicLevel(itemidx,5)
	Id415 = GetEquipMagicId(itemidx,5)
	Level416 = GetEquipMagicLevel(itemidx,6)
	Id416 = GetEquipMagicId(itemidx,6)
	random41 = GetEquipMagicRandomSeed(itemidx)
	mayman = GetItemBoxLucky(itemidx)

	sx = random(1,120)
	DelEquipItemQuestKey()
	sxtinh =100 - c*10
	if sxtinh > 50 then
	sxtinh = 50
	end 
	Pay(100000)
	if sx < sxtinh then
		Msg2Player("<color=yellow>Chóc mõng b¹n ®· th¨ng cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color=yellow>] tõ cÊp "..c.." lªn cÊp "..(c+1).." !")
		if c >= 7 then
			Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] ®· th¨ng cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color=red>] tõ cÊp "..c.." lªn cÊp "..(c+1).." !")
			AddGlobalCountNews("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color>] ®· th¨ng cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color>] tõ cÊp "..c.." lªn cÊp "..(c+1).." ! ",1)
		end
		DelEquipIdx(itemidx)
		if GetIdxItemBoxUpdateItem() == 0 and GetIdxItemBoxQuestKey() == 0 then
			AddItemPrama(0,a,b,c+1,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end
	else
		inlogin("Thang cap That bai: "..GetAccount().." - "..GetName().." - "..(100 - c*10).."% ")
		Msg2Player("Th¨ng cÊp trang bÞ thÊt b¹i, x¸c suÊt th¨ng cÊp: <color=yellow>"..(100-c*10).."% ")
		Talk(1,"","Th¨ng cÊp trang bÞ thÊt b¹i, x¸c suÊt th¨ng cÊp: <color=yellow>"..(100-c*10).."% ")
	
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

function inloghkmp(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/CheTaoHoangKimMonPhai.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
end

function inlogprhkmp(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/PhanRaHoangKimMonPhai.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
end

function inlogin(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/logchetao.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
end


function giaotinthu()
	if GetTask(103) == 6 then
		SetTask(103,7)
		Talk(1,"","<color=green>Thî RÌn <color>: Ta ®· nhËn ®­îc tÝn th­, h·y nãi víi Ch­ëng M«n ng­¬i lµ ta sÏ cè g¾ng hÕt søc ®Ó gióp ®Ö tö cña ng­êi !")
		Msg2Player("H·y qua Thµnh thÞ bÊt kú t×m B¸n Ngùa ®Ó giao tÝn th­ cuèi cïng")
	end
end

function chetaohuyentinh()
OpenPGBoxItem()
end

function binhthuong()
w,x,y = GetWorldPos()
if w == 53 or w == 3 then
Sale(8)
elseif w == 15 then
Sale(10)
elseif w == 18 then
Sale(12)
elseif w == 17 then
Sale(14)
elseif w == 9 then
Sale(16)
elseif w == 4 then
	xs = random(1,5)
	if xs == 1 then
		Sale(8)
	elseif xs == 2 then
		Sale(10)
	elseif xs == 3 then
		Sale(12)
	elseif xs == 4 then
		Sale(14)
	elseif xs == 5 then
		Sale(16)
	end
end
end;

function no()
end













-------------------------------- EP HKMP-----------------------------------------------------



function ephkmp()
OpenCheckItemBox("ChÕ T¹o Hoµng Kim M«n Ph¸i","6 M¶nh HK + §å Phæ HK + MËt TÞch M«n Ph¸i + HT 8 + Thñy Tinh + 2000 v¹n","xacnhanephkmp")
end


function xacnhanephkmp()
num = 0
demsoluong = 0

if GetItemCountBox(51) ~= 1 then
Talk(1,"","Kh«ng cã HuyÒn Tinh 8, kh«ng thÓ chÕ t¹o !")
return
end
if GetItemCountBox(28) == 0 and GetItemCountBox(29) == 0 and GetItemCountBox(30) == 0 then
Talk(1,"","Kh«ng cã Thñy Tinh, kh«ng thÓ chÕ t¹o ")
return
end

if GetCash() < 20000000 then
Talk(1,"","Kh«ng cã ®ñ 2000 v¹n trong hµnh trang, kh«ng thÓ chÕ t¹o !")
return
end

for k=1,getn(manghkmp) do
if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 then
	demsoluong = demsoluong + 1
end
end


if demsoluong == 0 then
Talk(1,"","Trang bÞ kh«ng tån t¹i, vui lßng kiÓm tra l¹i §å Phæ Hoµng Kim ®Æt vµo!")
return
end

if demsoluong == 1 then
for k=1,getn(manghkmp) do
if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 then
	if CheckFreeBoxItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5]) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng ®Ó chÕ t¹o trang bÞ <color=yellow>"..manghkmp[k][1].." ")
	return
	end
	a = GetItemCountBox(manghkmp[k][6])
	b = GetItemCountBox(manghkmp[k][6] + 1)
	c = GetItemCountBox(manghkmp[k][6] + 2)
	d = GetItemCountBox(manghkmp[k][6] + 3)
	e = GetItemCountBox(manghkmp[k][6] + 4)
	f = GetItemCountBox(manghkmp[k][6] + 5)
	mattich = checkmattich(manghkmp[k][7])
	nl1 = GetItemCountBox(mattich)
	nl2 = GetItemCountBox(51)
	nl3 = GetCash()
	nl4 = GetItemCountBox(manghkmp[k][7])
	nl5 = GetItemCountBox(28) + GetItemCountBox(29) + GetItemCountBox(30)
	if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][6] + 1) == 1 and GetItemCountBox(manghkmp[k][6] + 2) == 1 and GetItemCountBox(manghkmp[k][6] + 3) == 1 and GetItemCountBox(manghkmp[k][6] + 4) == 1 and GetItemCountBox(manghkmp[k][6] + 5) == 1 and GetItemCountBox(mattich) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 and GetItemCountBox(51) == 1 and nl5 > 0 and GetCash() >= 20000000 then
		xacsuat = random(1,100)
		if xacsuat < (nl5*5-10) then
		--Msg2Player("Thµnh Cong: "..(nl5*5).."% ")
		DelItemBox(manghkmp[k][6]) 		
		DelItemBox(manghkmp[k][6] + 1)
		DelItemBox(manghkmp[k][6] + 2)
		DelItemBox(manghkmp[k][6] + 3)
		DelItemBox(manghkmp[k][6] + 4)
		DelItemBox(manghkmp[k][6] + 5)
		DelItemBox(mattich)
		DelItemBox(51)
		DelItemBox(manghkmp[k][7])
		Pay(20000000)
		for i=1,GetItemCountBox(28) do DelItemBox(28) end
		for i=1,GetItemCountBox(29) do DelItemBox(29) end
		for i=1,GetItemCountBox(30) do DelItemBox(30) end
	
		if GetItemCountBox(manghkmp[k][6]) == a - 1 and GetItemCountBox(manghkmp[k][6] + 1) == b - 1 and GetItemCountBox(manghkmp[k][6] + 2) == c - 1 and GetItemCountBox(manghkmp[k][6] + 3) == d - 1 and GetItemCountBox(manghkmp[k][6] + 4) == e - 1 and GetItemCountBox(manghkmp[k][6] + 5) == f - 1 and GetItemCountBox(mattich) == nl1 - 1 and GetItemCountBox(manghkmp[k][7]) == nl4 - 1 and GetItemCountBox(51) == nl2 - 1 and GetCash() == nl3 - 20000000 then
			inloghkmp("Thanh Cong HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
			AddItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5],0,0,0)
			Msg2SubWorld("Chóc mõng <color=green>"..GetName().." <color=red>chÕ t¹o thµnh c«ng trang bÞ hoµng kim m«n ph¸i <color=yellow>["..manghkmp[k][1].."]")	
			num = 1
			Talk(0,"")
			break;
		else
			Talk(1,"","Hack ha em")
		end
		else
			inloghkmp("That Bai HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
				--Msg2Player("ThÊt B¹i: "..(nl5*5).."% ")
					DelItemBox(51)
					Pay(20000000)
					for i=1,GetItemCountBox(28) do DelItemBox(28) end
					for i=1,GetItemCountBox(29) do DelItemBox(29) end
					for i=1,GetItemCountBox(30) do DelItemBox(30) end
					Talk(1,"","<color=red>ChÕ t¹o thÊt b¹i, b¹n mÊt hÕt Thñy Tinh + HuyÒn Tinh + 2000 v¹n l­îng !")
			Msg2SubWorld("Xin chia buån cïng <color=green>"..GetName().." <color=red>chÕ t¹o thÊt b¹i trang bÞ hoµng kim m«n ph¸i <color=yellow>["..manghkmp[k][1].."]")	
					
		end
	else
		Talk(1,"","Kh«ng ®ñ nguyªn liÖu ®Æt vµo, vui lßng kiÓm tra l¹i !")
	end	
end
end
else
	xs = random(1,2)
	
	for k=1,getn(manghkmp) do
	
	
	
	if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 then
	num = num + 1
	if CheckFreeBoxItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5]) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng ®Ó chÕ t¹o trang bÞ <color=yellow>"..manghkmp[k][1].." ")
	return
	end
	Msg2Player(" Item :"..num.." -  "..xs.." ")
	if num == xs then
		a = GetItemCountBox(manghkmp[k][6])
		b = GetItemCountBox(manghkmp[k][6] + 1)
		c = GetItemCountBox(manghkmp[k][6] + 2)
		d = GetItemCountBox(manghkmp[k][6] + 3)
		e = GetItemCountBox(manghkmp[k][6] + 4)
		f = GetItemCountBox(manghkmp[k][6] + 5)
		mattich = checkmattich(manghkmp[k][7])
		nl1 = GetItemCountBox(mattich)
		nl2 = GetItemCountBox(51)
		nl3 = GetCash()
		nl4 = GetItemCountBox(manghkmp[k][7])
		nl5 = GetItemCountBox(28) + GetItemCountBox(29) + GetItemCountBox(30)
			if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][6] + 1) == 1 and GetItemCountBox(manghkmp[k][6] + 2) == 1 and GetItemCountBox(manghkmp[k][6] + 3) == 1 and GetItemCountBox(manghkmp[k][6] + 4) == 1 and GetItemCountBox(manghkmp[k][6] + 5) == 1 and GetItemCountBox(mattich) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 and GetItemCountBox(51) == 1 and nl5 > 0 and GetCash() >= 20000000 then
				xacsuat = random(1,100)
				if xacsuat < nl5*4 then
				--Msg2Player("Thµnh Cong: "..(nl5*5).."% ")
				DelItemBox(manghkmp[k][6]) 		
				DelItemBox(manghkmp[k][6] + 1)
				DelItemBox(manghkmp[k][6] + 2)
				DelItemBox(manghkmp[k][6] + 3)
				DelItemBox(manghkmp[k][6] + 4)
				DelItemBox(manghkmp[k][6] + 5)
				DelItemBox(mattich)
				DelItemBox(51)
				DelItemBox(manghkmp[k][7])
				Pay(20000000)
				for i=1,GetItemCountBox(28) do DelItemBox(28) end
				for i=1,GetItemCountBox(29) do DelItemBox(29) end
				for i=1,GetItemCountBox(30) do DelItemBox(30) end
	
				if GetItemCountBox(manghkmp[k][6]) == a - 1 and GetItemCountBox(manghkmp[k][6] + 1) == b - 1 and GetItemCountBox(manghkmp[k][6] + 2) == c - 1 and GetItemCountBox(manghkmp[k][6] + 3) == d - 1 and GetItemCountBox(manghkmp[k][6] + 4) == e - 1 and GetItemCountBox(manghkmp[k][6] + 5) == f - 1 and GetItemCountBox(mattich) == nl1 - 1 and GetItemCountBox(manghkmp[k][7]) == nl4 - 1 and GetItemCountBox(51) == nl2 - 1 and GetCash() == nl3 - 20000000 then
					inloghkmp("Thanh Cong HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
					AddItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5],0,0,0)
					Msg2SubWorld("Chóc mõng <color=green>"..GetName().." <color=red>chÕ t¹o thµnh c«ng trang bÞ hoµng kim m«n ph¸i <color=yellow>["..manghkmp[k][1].."]")	
			
				Talk(0,"")
				break;
			
				else
				Talk(1,"","Hack ha em")
				end
				else
				inloghkmp("That Bai HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
				--Msg2Player("ThÊt B¹i: "..(nl5*5).."% ")
					DelItemBox(51)
					Pay(20000000)
					for i=1,GetItemCountBox(28) do DelItemBox(28) end
					for i=1,GetItemCountBox(29) do DelItemBox(29) end
					for i=1,GetItemCountBox(30) do DelItemBox(30) end
					Talk(1,"","<color=red>ChÕ t¹o thÊt b¹i, b¹n mÊt hÕt Thñy Tinh + HuyÒn Tinh + 2000 v¹n l­îng !")
					Msg2SubWorld("Xin chia buån cïng <color=green>"..GetName().." <color=red>chÕ t¹o thÊt b¹i trang bÞ hoµng kim m«n ph¸i <color=yellow>["..manghkmp[k][1].."]")
				end
			else
				Talk(1,"","Kh«ng ®ñ nguyªn liÖu ®Æt vµo, vui lßng kiÓm tra l¹i !")
			end	
		end
	end
	end
end
	


end




function checkmattich(num)
if num >= 75 and num <= 77 then
return 4 -- thieu lam
elseif num >= 78 and num <= 80 then
return 5
elseif num >= 81 and num <= 84 then
return 6
elseif num >= 85 and num <= 87 then
return 7
elseif num >= 88 and num <= 90 then
return 8
elseif num >= 91 and num <= 92 then
return 9
elseif num >= 93 and num <= 94 then
return 11
elseif num >= 95 and num <= 97 then
return 10
elseif num >= 98 and num <= 99 then
return 12
elseif num >= 100 and num <= 102 then
return 13
else
return 14
end
end





function phanrahkmp()
OpenCheckItemBox("Ph©n R· HKMP","§Æt trang bÞ Hoµng Kim M«n Ph¸i (kh«ng khãa) vµ 5 KNB vµo","okphanrahkmp")
end

function checknumitembox()
num = 0
for i=1,getn(manghkmp) do
	if GetItemCountInCheckBox(manghkmp[i][2],manghkmp[i][3],manghkmp[i][4],manghkmp[i][5]) == 1 then
		num = i
		break;
	end
end
return num
end

function okphanrahkmp()

if GetAllItemCountInCheckBox() == 6 then
	if GetItemCountBox(17) == 5 then
		vitri = checknumitembox()
		if vitri ~= 0 then
			if CheckItemBlockInCheckBox(manghkmp[vitri][2],manghkmp[vitri][3],manghkmp[vitri][4],manghkmp[vitri][5]) <= 1 then 
			DeleteAllItemInCheckBox()
				if GetAllItemCountInCheckBox() == 0 then
					Msg2SubWorld("Chóc mõng "..GetName().." ph©n r· thµnh c«ng trang bÞ Hoµng Kim <color=yellow>"..manghkmp[vitri][1].." ")	
					for k=0,5 do
						AddEventItem(manghkmp[vitri][6]+k)
					end
					AddEventItem(manghkmp[vitri][7])
					
					inlogprhkmp(""..GetAccount().." - "..GetName().." - "..manghkmp[vitri][1].." ")
					KickOutSelf()
				else
					Talk(1,"","Lçi trang bÞ ®Æt vµo lµ trang bÞ khãa b¶o hiÓm. ")
				end
			else
				Talk(1,"","Trang bÞ hoµng kim thuéc tr¹ng th¸i khãa b¶o hiÓm, ko thÓ ph©n r· ")
			end
		else
			Talk(1,"","Trang bÞ ®Æt vµo kh«ng ph¶i lµ Hoµng Kim M«n Ph¸i ")
		end
	else
		Talk(1,"","Lçi 2: Nguyªn liÖu ®Æt vµo chØ ®­îc 1 HKMP + 5 KNB ")
	end
else
	Talk(1,"","Nguyªn liÖu ®Æt vµo chØ ®­îc 1 HKMP + 5 KNB")
end

end






manghkmp = {
-- Day Chuyen
{"Ngù Long ChiÕn ThÇn Phi Qu¶i Gi¸p",0,4,6,1,225,80},
{"§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn",0,4,7,1,225,84},
{"Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï ",0,4,8,1,225,81},
{"Chó Ph­îc DiÖt L«i C¶nh Phï ",0,4,9,1,225,87},
{"V« TrÇn Thanh T©m H­íng ThiÖn Ch©u",0,4,10,1,225,90},
{"BÝch H¶i Hoµn Ch©u Vò Liªn",0,4,11,1,225,92},
{"Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn",0,4,12,1,225,97},
{"Ma ThÞ Ma PhÖ T©m Liªn",0,4,13,1,225,95},
{"CËp Phong Tam Thanh Phï ",0,4,14,1,225,98},
{"Vô ¶o Ky B¸n Phï Chó ",0,4,15,1,225,102},
{"L«i Khung Thiªn §Þa Hé Phï ",0,4,16,1,225,100},

-- Nhan
{"Tø Kh«ng Giíi LuËt Ph¸p Giíi",0,3,7,1,237,76},
{"Phôc Ma PhËt T©m NhuyÔn KhÊu",0,3,8,1,237,77},
{"Ngù Long TuyÖt MÖnh ChØ Hoµn",0,3,9,1,237,80},
{"§Þa Ph¸ch TÝch LÞch L«i Háa Giíi",0,3,10,1,237,84},
{"Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn",0,3,11,1,237,81},
{"Chó Ph­îc U ¶o ChØ Hoµn",0,3,12,1,237,87},
{"Minh ¶o §éc YÕt ChØ Hoµn",0,3,13,1,237,86},
{"V« Gian B¹ch Ngäc Ban ChØ ",0,3,14,1,237,89},
{"V« Ma B¨ng Tinh ChØ Hoµn",0,3,15,1,237,88},
{"V« TrÇn PhËt Quang ChØ Hoµn",0,3,16,1,237,90},
{"V« TrÇn Tõ Bi Ngäc Ban ChØ ",0,3,17,1,237,90},
{"Tª Hoµng Thñy Ngäc ChØ Hoµn",0,3,18,1,237,91},
{"§ång Cõu KiÕn Long Ban ChØ ",0,3,19,1,237,93},
{"§Þch Kh¸i Th¶o Gian Th¹ch Giíi ",0,3,20,1,237,94},
{"Ma ThÞ NghiÖp Háa U Linh Giíi",0,3,21,1,237,95},
{"Ma S¸t V©n Long Thæ Ch©u Giíi",0,3,22,1,237,96},
{"CËp Phong Thanh Tïng Ph¸p Giíi",0,3,23,1,237,98},
{"L¨ng Nh¹c Né L«i Giíi",0,3,24,1,237,99},
{"L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng Giíi",0,3,25,1,237,99},
{"Vô ¶o Thóc T©m ChØ Hoµn",0,3,26,1,237,102},
{"S­¬ng Tinh Phong B¹o ChØ Hoµn",0,3,27,1,237,101},
{"L«i Khung Cöu Thiªn DÉn L«i Giíi",0,3,28,1,237,100},

-- Ngoc Boi
{"Méng Long PhËt Ph¸p HuyÒn Béi",0,9,6,1,231,75},
{"B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi",0,9,7,1,231,82},
{"S©m Hoµng HuyÒn ThiÕt T­¬ng Ngäc Béi",0,9,8,1,231,83},
{"V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi",0,9,9,1,231,90},
{"BÝch H¶i Hång L¨ng Ba",0,9,10,1,231,92},
{"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",0,9,11,1,231,95},
{"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",0,9,12,1,231,98},
{"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi",0,9,13,1,231,99},
{"Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi",0,9,14,1,231,102},
{"L«i Khung Linh Ngäc UÈn L«i",0,9,15,1,231,100},
{"V« Ma TÈy T­îng Ngäc KhÊu",0,9,16,1,231,88},

-- Bao Tay
{"Tø Kh«ng NhuyÔn B× Hé UyÓn",0,8,4,1,207,76},
{"KÕ NghiÖp Háa V©n Kú L©n Thñ ",0,8,5,1,207,78},
{"H¸m Thiªn Hæ §Çu KhÊn Thóc UyÓn",0,8,6,1,207,79},
{"Ngù Long TÊn Phong Hé UyÓn",0,8,7,1,207,80},
{"§Þa Ph¸ch KhÊu T©m Tr¹c",0,8,8,1,207,84},
{"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",0,8,9,1,207,81},
{"Chó Ph­îc Xuyªn T©m §éc UyÓn",0,8,10,1,207,87},
{"U Lung Ng©n ThiÒn Hé UyÓn",0,8,11,1,207,85},
{"Minh ¶o Hñ Cèt Hé UyÓn",0,8,12,1,207,86},
{"V« Gian CÇm VËn Hé UyÓn",0,8,13,1,207,89},
{"Tª Hoµng B¨ng Tung CÈm UyÓn",0,8,14,1,207,91},
{"§ång Cõu Kh¸ng Long Hé UyÓn",0,8,15,1,207,93},
{"§Þch Kh¸i CÈu TÝch B× Hé UyÓn",0,8,16,1,207,94},
{"Ma Hoµng HuyÕt Y Thó Tr¹c",0,8,17,1,207,97},
{"Ma S¸t Cö Háa L­u Thiªn UyÓn",0,8,18,1,207,96},
{"S­¬ng Tinh B¨ng Tinh Thiªn Tinh Thñ",0,8,19,1,207,101},

-- GIAY
{"Méng Long §¹t Ma T¨ng Hµi",0,5,6,1,219,75},
{"Phôc Ma Phç §é T¨ng Hµi",0,5,7,1,219,77},
{"KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",0,5,8,1,219,78},
{"H¸m Thiªn Thõa Long ChiÕn Ngoa",0,5,9,1,219,79},
{"§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa",0,5,10,1,219,84},
{"B¨ng Hµn NguyÖt ¶nh Ngoa",0,5,11,1,219,82},
{"S©m Hoµng Tinh VÉn Phi Lý ",0,5,12,1,219,83},
{"Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa",0,5,13,1,219,87},
{"U Lung MÆc Thï NhuyÔn Lý ",0,5,14,1,219,85},
{"Minh ¶o Song Hoµn Xµ Hµi",0,5,15,1,219,86},
{"V« Ma Hång Truy NhuyÔn Th¸p Hµi",0,5,16,1,219,88},
{"Ma Hoµng §¨ng §¹p Ngoa",0,5,17,1,219,97},
{"Ma ThÞ S¬n H¶i Phi Hång Lý ",0,5,18,1,219,95},
{"Vô ¶o Tung Phong TuyÕt ¶nh Ngoa",0,5,19,1,219,102},

-- THAT LUNG
{"Méng Long HuyÒn Ti Ph¸t §¸i",0,6,4,1,213,75},
{"Tø Kh«ng Hé Ph¸p Yªu §¸i",0,6,5,1,213,76},
{"Phôc Ma ¤ Kim NhuyÔn §iÒu",0,6,6,1,213,77},
{"KÕ NghiÖp B¹ch Hæ V« Song KhÊu",0,6,7,1,213,78},
{"H¸m Thiªn Uy Vò Thóc Yªu §¸i",0,6,8,1,213,79},
{"Ngù Long Thiªn M«n Thóc Yªu Hoµn",0,6,9,1,213,80},
{"B¨ng Hµn T©m TiÔn Yªu KhÊu",0,6,10,1,213,82},
{"S©m Hoµng Hån Gi¶o Yªu Thóc",0,6,11,1,213,83},
{"Thiªn Quang S©m La Thóc §¸i",0,6,12,1,213,81},
{"U Lung Thanh Ng« TriÒn Yªu",0,6,13,1,213,85},
{"V« Gian PhÊt V©n Ti §¸i",0,6,14,1,213,89},
{"Tª Hoµng B¨ng TuyÕt B¹ch V©n Thóc §¸i",0,6,15,1,213,91},
{"BÝch H¶i Hång Linh Kim Ti §¸i",0,6,16,1,213,92},
{"§ång Cõu TiÒm Long Yªu §¸i",0,6,17,1,213,93},
{"§Þch Kh¸i TruyÒn M·ng Yªu §¸i",0,6,18,1,213,94},
{"Ma Hoµng Khª Cèc Thóc Yªu §¸i",0,6,19,1,213,97},
{"Ma S¸t XÝch Ký Táa Yªu KhÊu",0,6,20,1,213,96},
{"CËp Phong HuyÒn Ti Tam §o¹n CÈm",0,6,21,1,213,98},
{"S­¬ng Tinh Thanh Phong Lò §¸i",0,6,22,1,213,101},
{"L«i Khung Phong L«i Thanh CÈm §¸i",0,6,23,1,213,100},

-- NON
{"Méng Long ChÝnh Hång T¨ng M·o",0,7,16,1,195,75},
{"§Þa Ph¸ch Ngò Hµnh Liªn Hoµn Qu¸n",0,7,17,1,195,84},
{"Chó Ph­îc Ph¸ Gi¸p §Çu Hoµn",0,7,18,1,195,87},
{"U Lung Kim Xµ Ph¸t §¸i",0,7,19,1,195,85},
{"V« Ma Ma Ni Qu¸n",0,7,20,1,195,88},
{"V« TrÇn Ngäc N÷ Tè T©m Qu¸n",0,7,21,1,195,90},
{"§ång Cõu Phi Long §Çu Hoµn",0,7,22,1,195,93},
{"Ma Hoµng Kim Gi¸p Kh«i",0,7,23,1,195,97},
{"Ma ThÞ LiÖt DiÖm Qu¸n MiÖn",0,7,24,1,195,95},
{"Vô ¶o B¾c Minh §¹o Qu¸n",0,7,25,1,195,102},
{"L«i Khung Hµn Tung B¨ng B¹ch Qu¸n",0,7,26,1,195,100},


-- AO GIAP

{"Méng Long Kim Ti ChÝnh Hång Cµ Sa",0,2,33,1,201,75},
{"Tø Kh«ng Tö Kim Cµ Sa",0,2,34,1,201,76},
{"Phuc Ma HuyÒn Hoµng Cµ Sa",0,2,35,1,201,77},
{"KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i",0,2,36,1,201,78},
{"H¸m Thiªn Vò ThÇn T­îng Kim Gi¸p",0,2,37,1,201,79},
{"B¨ng Hµn HuyÒn Y  Thóc Gi¸p",0,2,38,1,201,82},
{"S©m Hoµng Kim TiÒn Liªn Hoµn Gi¸p",0,2,39,1,201,83},
{"U Lung XÝch YÕt MËt Trang",0,2,40,1,201,85},
{"Minh ¶o U §éc ¸m Y",0,2,41,1,201,86},
{"V« Gian Thanh Phong Truy Y",0,2,42,1,201,89},
{"V« Ma Tö Kh©m Cµ Sa",0,2,43,1,201,88},
{"Tª Hoµng TÖ T©m Khinh Sa Y",0,2,44,1,201,91},
{"§ång Cõu Gi¸ng Long C¸i Y",0,2,45,1,201,93},
{"§Þch Kh¸i Cöu §¹i C¸i Y",0,2,46,1,201,94},
{"Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p",0,2,47,1,201,96},
{"L¨ng Nh¹c V« Ng· §¹o B¹o",0,2,48,1,201,99},
{"S­¬ng Tinh Ng¹o S­¬ng §¹o Bµo",0,2,49,1,201,101},


-- VU KHI
{"V« Gian û Thiªn KiÕm",0,0,0,61,189,89},
{"Tø Kh«ng Gi¸ng Ma Giíi §ao",0,0,1,61,189,76},
{"Phôc Ma Tö Kim C«n",0,0,2,61,189,77},
{"KÕ NghiÖp B«n L«i Toµn Long Th­¬ng",0,0,3,61,189,78},
{"H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy",0,0,4,61,189,79},
{"BÝch H¶i Uyªn ¦¬ng Liªn Hoµn §ao",0,0,5,61,189,92},
{"L¨ng Nh¹c Th¸i Cùc KiÕm",0,0,0,121,189,99},
{"Ngù Long L­îng Ng©n B¶o §ao",0,0,1,121,189,80},
{"§Þch Kh¸i Lôc Ngäc Tr­îng",0,0,2,121,189,94},
{"Ma S¸t Quû Cèc U Minh Th­¬ng",0,0,3,121,189,96},
{"S­¬ng Tinh Thiªn Niªn Hµn ThiÕt",0,0,1,151,189,101},
{"CËp Phong Ch©n Vò KiÕm",0,0,0,171,189,98},
{"Minh ¶o Tµ S¸t §éc NhËn",0,0,1,171,189,86},
{"Tª Hoµng Phông Nghi §ao",0,0,1,181,189,91},
{"B¨ng Hµn §¬n ChØ Phi §ao",0,1,1,21,189,82},
{"S©m Hoµng Phi Tinh §o¹t Hån",0,1,0,41,189,83},
{"Thiªn Quang Hoa Vò M·n Thiªn",0,1,2,31,189,81},

}


