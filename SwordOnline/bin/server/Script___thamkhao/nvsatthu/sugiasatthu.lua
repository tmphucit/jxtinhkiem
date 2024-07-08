Include("\\script\\pass\\boss.lua")


function main()
if (GetTask(27) == 0) then
SayNew("<color=green>Sö Gi¶ S¸t Thñ: <color> Ng­¬i ®Õn ®©y muèn lµm g× ch¨ng??",3,
"NhËn nhiÖm vô Boss S¸t thñ/nhannv1",
"GhÐp lÖnh bµi, s¸t thñ gi¶n./ghks",
"Tho¸t/no")
else
SayNew("<color=green>Sö Gi¶ S¸t Thñ: <color> Ng­¬i ®Õn ®©y muèn lµm g× ch¨ng?",6,
"Tr¶ nhiÖm vô Boss S¸t Thñ/tnvst",
"Di chuyÓn ®Õn Boss S¸t Thñ /dichuyen",
"Xem nhiÖm vô ®ang lµm /xemnv",
"Huû nhiÖm vô/bnvst",
"GhÐp lÖnh bµi, s¸t thñ gi¶n/ghks",
"Tho¸t/no")
end
end

function tnvst()
if GetTask(27) == 99 then
	SetTask(27,0)
	AddRepute(2)
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm vô vµ nhËn ®­îc 2 ®iÓm danh väng")
	
	
	
	if GetLevel() < 90 then
		exp = GetLevelExp()
		AddOwnExp(exp)
		Msg2Player("B¹n nhËn ®­îc "..exp.." kinh nghiÖm")
	else
		AddOwnExp(2000000)
		Msg2Player("B¹n nhËn ®­îc 2.000.000 kinh nghiÖm")
	end
else
Talk(1,"","<color=green>Sø Gi¶ S¸t Thñ <color>: H·y hoµn thµnh nhiÖm vô råi quay l¹i gÆp ta. ")
end
end

function bnvst()
SayNew("B¹n cã ch¾c ch¾n muèn hñy nhiÖm vô kh«ng? ",2,
"Ta muèn hñy nhiÖm vô/xacnhanhuynv",
"Tho¸t./no")
end
function xacnhanhuynv()
nl = GetCash()
if GetCash() >= 20000 then
	Pay(20000)
	if GetCash() == (nl-20000) then
		SetTask(27,0)
		Talk(1,"","<color=green>Sø Gi¶ S¸t Thñ <color>: B¹n ®· hñy nhiÖm vô thµnh c«ng !")
	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","<color=green>Sø Gi¶ S¸t Thñ <color>: Ng­êi kh«ng mang ®ñ <color=yellow>20000<color> l­îng")
end
end
function manglevel()
if GetLevel() >= 20 and GetLevel() < 30 then
	return random(1,6)
elseif GetLevel() >= 30 and GetLevel() < 40 then
	return random(7,12)
elseif GetLevel() >= 40 and GetLevel() < 50 then
	return random(13,18)
elseif GetLevel() >= 50 and GetLevel() < 60 then
	return random(19,24)
elseif GetLevel() >= 60 and GetLevel() < 70 then
	return random(25,33)
elseif GetLevel() >= 70 and GetLevel() < 80 then
	return random(34,42)
elseif GetLevel() >= 80 and GetLevel() < 90 then
	return random(43,51)
elseif GetLevel() >= 90 then
	return random(52,getn(ToaDoSatThu))
end
return 0
end

function phi()
if GetLevel() < 30 then
return 1000
elseif GetLevel() >= 30 and GetLevel() < 40 then
return 2000
elseif GetLevel() >= 40 and GetLevel() < 50 then
return 3000
elseif GetLevel() >= 50 and GetLevel() < 60 then
return 4000
elseif GetLevel() >= 60 and GetLevel() < 70 then
return 5000
elseif GetLevel() >= 70 and GetLevel() < 80 then
return 6500
elseif GetLevel() >= 80 and GetLevel() < 90 then
return 8000
elseif GetLevel() >= 90 then
return 10000
end
end
function nhannv1()
SayNew("<color=green>Sö Gi¶ S¸t Thñ: <color> §Ó nhËn nhiÖm vô <color=fire>Boss S¸t thñ <color> cÇn cã <color=fire>"..phi().." <color> l­îng",2,
"NhËn nhiÖm vô/nhannv",
"Tho¸t/no")
end;

function nhannv()
ngay = tonumber(date("%d"))
if GetLevel() < 20 then
Talk(1,"","§¼ng cÊp d­íi 20, kh«ng thÓ nhËn nhiÖm vô ")
return
end
if GetCash() < phi() then
Talk(1,"","Ng­¬i kh«ng mang ®ñ "..phi().." l­îng, kh«ng thÓ nhËn nhiÖm vô")
return
end

if GetTask(136) == ngay then
	if GetTask(137) < 8 then
	
		SetTask(137,GetTask(137)+1)
		SetTask(27,manglevel())
		Msg2Player("NhiÖm vô thø: "..GetTask(137).."/8")
		Pay(phi())
		xemnv()
	else
		Talk(1,"","<color=green>Sø Gi¶ S¸t Thñ <color>: H«m nay b¹n ®· tiªu diÖt ®ñ <color=red>8<color> Boss S¸t Thñ")
	end
else

	SetTask(136,ngay)
	SetTask(137,0)
	SetTask(82,0)
	SetTask(9,0)
	SetTask(2,0)
	SetTask(3,0)
	SetTask(908, 0) -- Reset Task Su Kien
	SetTask(945, 0) -- Reset Task Su Kien
	
	nhannv()
end

end

function dichuyen()
SayNew("<color=green>NhiÕp ThÝ TrÇn<color>: Ta sÏ gióp ng­êi ®Õn vÞ trÝ <color=green>Boss S¸t Thñ <color>cÇn tiªu diÖt. Ng­¬i cã ®ång ý tr¶ cho ta <color=yellow>1 v¹n l­îng <color>®Ó di chuyÓn kh«ng?",2, 
"§­a ta ®Õn vÞ trÝ Boss S¸t Thñ /dichuyen1",
"Th«i, ®Ó ta tù ®i ®Õn ®ã /no")
end
function dichuyen1()

if GetTask(27) == 0 or GetTask(27) > getn(ToaDoSatThu) then
Msg2Player("Kh«ng thÓ sö dông chøc n¨ng nµy !")
return
end
if GetCash() < 10000 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 1 v¹n l­îng, ta kh«ng thÓ gióp nhµ ng­êi !")
return
end

Pay(10000)
NewWorld(ToaDoSatThu[GetTask(27)][1],ToaDoSatThu[GetTask(27)][2],ToaDoSatThu[GetTask(27)][3])
SetFightState(1)
Msg2Player("§· di chuyÓn ®Õn vÞ trÝ Boss S¸t Thñ ")
Msg2Player("Debug: Id map: "..ToaDoSatThu[GetTask(27)][1].." "..ToaDoSatThu[GetTask(27)][2].." "..ToaDoSatThu[GetTask(27)][3].."")
end
function xemnv()
if GetTask(27) == 99 then
Talk(1,"","B¹n ®· hoµn thµnh nhiÖm vô !")
else
Talk(1,"","NhiÖm vô tiªu diÖt: <color=red>"..ToaDoSatThu[GetTask(27)][5].."<color>  ë <color=yellow>"..CheckDiaDiem(GetTask(27)).."<color> "..floor(ToaDoSatThu[GetTask(27)][2]/8).."/"..floor(ToaDoSatThu[GetTask(27)][3]/16).."")
end
end
function nhannv2()
NewWorld(ToaDoSatThu[GetTask(27)][1],ToaDoSatThu[GetTask(27)][2],ToaDoSatThu[GetTask(27)][3])
SetFightState(1)
Msg2Player("H·y tiªu diÖt: "..ToaDoSatThu[GetTask(27)][5]..". H¾n ta ®ang ë <color=yellow>"..CheckDiaDiem(GetTask(27)).." "..floor(ToaDoSatThu[GetTask(27)][2]/8).."/"..floor(ToaDoSatThu[GetTask(27)][3]/16).."")
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

function ghks()
SayNew("<color=green>Sö Gi¶ S¸t Thñ: <color> §Ó ghÐp <color=fire>LÖnh Bµi V­ît ¶i<color> cÇn cã <color=fire>5 S¸t Thñ Gi¶n vµ 5000 l­îng",3,
"GhÐp S¸t Thñ Gi¶n/glbst",
"GhÐp LÖnh Bµi V­ît ¶i/glbva",
--"GhÐp Hoµng Kim S¸t (TiÓu)/ghkst",
"Tho¸t/no")
end;

function ghkstxx()
Talk(1,"","Chøc n¨ng sÏ cËp nhËt vµo 24h00 ngµy 14/01/2017")
end
function ghksd1()
Talk(1,"","<color=green>NhiÕp ThÝ TrÇn <color>: Chøc n¨ng sÏ më l¹i khi cã Trang BÞ Hoµng Kim")

end
function glbva()
nl = GetCash()
sl1 = GetItemCount(151)
sl2 = GetItemCount(152)
sl3 = GetItemCount(153)
sl4 = GetItemCount(154)
sl5 = GetItemCount(155)
if (sl1 >= 1) and (sl2 >= 1) and (sl3 >= 1) and (sl4 >= 1) and (sl5 >= 1) and (nl >= 5000) then
Pay(5000)
DelItem(151)
DelItem(152)
DelItem(153)
DelItem(154)
DelItem(155)
if (GetItemCount(151) == (sl1-1)) and (GetItemCount(152) == (sl2-1)) and (GetItemCount(153) == (sl3-1)) and (GetItemCount(154) == (sl4-1)) and (GetItemCount(155) == (sl5-1)) and (GetCash() == (nl-5000)) then
AddEventItem(156)
Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi Liªn Hoµn Ai");
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"no","Ng­¬i kh«ng ®ñ <color=red>5 chiÕc S¸t thñ gi¶n ngò hµnh vµ 5000 l­îng <color> ,kh«ng thÓ ghÐp")
end
end;

function glbst()
nl = GetCash()
sl1 = GetItemCount(130)
sl2 = GetItemCount(131)
sl3 = GetItemCount(132)
sl4 = GetItemCount(133)
sl5 = GetItemCount(134)
if (sl1 >= 1) and (sl2 >= 1) and (sl3 >= 1) and (sl4 >= 1) and (sl5 >= 1) and (nl >= 2000) then
Pay(2000)
DelItem(130)
DelItem(131)
DelItem(132)
DelItem(133)
DelItem(134)
if (GetItemCount(130) == (sl1-1)) and (GetItemCount(131) == (sl2-1)) and (GetItemCount(132) == (sl3-1)) and (GetItemCount(133) == (sl4-1)) and (GetItemCount(134) == (sl5-1)) and (GetCash() == (nl-2000)) then
AddEventItem(random(151,155))
Msg2Player("B¹n nhËn ®­îc 1 S¸t Thñ Gi¶n");
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"no","Ng­¬i kh«ng ®ñ <color=red>5 chiÕc S¸t thñ lÖnh 5 ngò hµnh vµ 2000 l­îng <color> ,kh«ng thÓ ghÐp")
end
end;

function ghkst()
nl = GetCash()
sl1 = GetItemCount(156)
if (sl1 >= 5) and (nl >= 100000) then
Pay(100000)
for k=1,5 do
DelItem(156)
end
if (GetItemCount(156) == (sl1-5) and GetCash() == (nl-100000)) then
AddEventItem(128)
Msg2Player("B¹n nhËm ®­îc 1 Hoµng kim s¸t (tiÓu)");
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"no","Ng­¬i kh«ng ®ñ <color=red>5 LÖnh Bµi V­ît ¶i + 10 v¹n l­îng <color> ,kh«ng thÓ ghÐp")
end

end;

function ghksd()
nl = GetCash()
sl = GetItemCount(151)
if (sl >= 20) and (nl >= 500000) then
Pay(50000)
for i=1,20 do
DelItem(151)
end
if (GetItemCount(151) == (sl-20)) and (GetCash() == (nl-500000)) then
AddEventItem(129)
Msg2Player("B¹n nhËn ®­îc 1 Hoµng kim s¸t (§¹i)");
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"no","Ng­¬i kh«ng l®ñ <color=red>20 S¸t thñ gi¶n va 50 v¹n l­îng <color> , kh«ng thÓ ghÐp")
end
end;


function no()

end;


Include("\\script\\lib\\thuvien.lua")
Include("\\script\\Global\\sourcejx49.lua")

function OnDeath()
Talk(1,"","§· chÕt !")
end

function thamgiavaboss()
SayNew("<color=green>NhiÕp ThÝ trÊn<color> §Õ tham gia V­ît ¶i Boss ng­êi cÇn mang theo LÖnh Bµi V­ît ¶i",4,
"Ta muèn tham gia/thamgiava",
"Nguyªn t¾c V­ît ¶i Boss/quytacva",
"NhËn phÇn th­ëng V­ît ¶i Boss/nhanptva",
"Tho¸t./no")
end

TASKVA = 115

function thamgiava1()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

SetTask(TASKVA,ngay * 100000 + gio * 1000 + phut)


NewWorld(112, 1605, 3232)
SetFightState(1)

end

function kiemtra()

ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
tinhtime = ngay* 100000 + gio * 1000 + phut

idx = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == 112 then
		if (tinhtime - GetTask(TASKVA) >= 5) then
			NewWorld(53,200*8,200*16)
			Msg2SubWorld("B¹n ®· bÞ kick khái V­ît ¶i v× qu¸ thêi gian quy ®Þnh 5 phót / ¶i!")
		end
	end
end
PlayerIndex = idx
end
function thamgiava()
Talk(1,"","§ang update !")
end
function quytacva()
Talk(1,"","§ang update !")
end
function nhanptva()
Talk(1,"","§ang update !")
end
