Include("\\script\\addnpccacmap\\boss.lua")

Include("\\Script\\Global\\sourcejx49.lua")
Include("\\Script\\header\\taskid.lua");
Include("\\Script\\lib\\worldlibrary.lua");
Include("\\Script\\lib\\thuvien.lua");
-----------------------------------------------------§Ã FIX OK 10/03/2024--------------------------------------------------------
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
SoLuongGioiHan = 8
SoLuongGioiHanBoss = 2

function main()
if (GetTask(NV_SATTHU) == 0) then
SayNew("<color=green>NhiÕp ThÝ TrÇn: <color> Ng­¬i ®Õn ®©y muèn lµm g× ch¨ng?",4,
"NhËn nhiÖm vô Boss S¸t thñ/nhannv1",
"Gia H¹n S¨n Boss S¸t Thñ/gianhansanbosss",
"GhÐp lÖnh bµi, s¸t thñ gi¶n./ghks",
"Tho¸t/no")
else
SayNew("<color=green>NhiÕp ThÝ TrÇn: <color> Ng­¬i ®Õn ®©y muèn lµm g× ch¨ng?",6,
"Tr¶ nhiÖm vô Boss S¸t Thñ/tnvst",
"Di chuyÓn ®Õn Boss S¸t Thñ /dichuyen",
"Xem nhiÖm vô ®ang lµm /xemnv",
"Huû nhiÖm vô/bnvst",
"GhÐp lÖnh bµi, s¸t thñ gi¶n/ghks",
"Tho¸t/no")
end
end
-------------------------------------------------------------------------------------------------------
function nhannv1()
SayNew("<color=green>Sö Gi¶ S¸t Thñ: <color> §Ó nhËn nhiÖm vô <color=fire>Boss S¸t thñ <color> cÇn cã <color=fire> 1 v¹n l­îng<color>",2,
"NhËn nhiÖm vô/nhannv",
"Tho¸t/no")
end;
-------------------------------------------------------------------------------------------------------
function nhannv()
ngay = tonumber(date("%d"))
if GetLevel() < 70 then
Talk(1,"","§¼ng cÊp d­íi 70, kh«ng thÓ nhËn nhiÖm vô ")
return
end
if GetCash() < 10000 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 1 v¹n l­îng, kh«ng thÓ nhËn nhiÖm vô")
return
end

if GetTask(NGAY1) == ngay then
	if GetTask(SOLUONG_GIOIHAN) < SoLuongGioiHan then
	
		SetTask(SOLUONG_GIOIHAN,GetTask(SOLUONG_GIOIHAN)+1)
		SetTask(NV_SATTHU,manglevel())
		Msg2Player("NhiÖm vô thø: "..GetTask(SOLUONG_GIOIHAN).."/"..SoLuongGioiHan.."")
		Pay(10000)
		xemnv()
	else
		Talk(1,"","<color=green>Sø Gi¶ S¸t Thñ <color>: H«m nay b¹n ®· tiªu diÖt ®ñ <color=red>"..SoLuongGioiHan.."<color> Boss S¸t Thñ")
	end
else

	SetTask(NGAY1,ngay)
	SetTask(SOLUONG_GIOIHAN,0)
	SetTask(DATAU_SOLAN,0)
	SetTask(9,0)
	SetTask(2,0)
	SetTask(3,0)
	SetTask(SOLAN_SATTHU2,0)
	nhannv()
end
end
----------------------------
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
	if GetTask(534) == 100 then
	return random(64,75)
	else
	return random(52,63)
	end
end
return 0
end
-------------------------------------------------------------------------------------------------------
function xemnv()
if GetTask(NV_SATTHU) == 99 then
Talk(1,"","B¹n ®· hoµn thµnh nhiÖm vô !")
else
	
Talk(1,"","NhiÖm vô tiªu diÖt: <color=red>"..ToaDoSatThu[GetTask(NV_SATTHU)][5].."<color>  ë <color=yellow>"..CheckDiaDiem(GetTask(NV_SATTHU)).."<color> "..floor(ToaDoSatThu[GetTask(NV_SATTHU)][2]/8).."/"..floor(ToaDoSatThu[GetTask(NV_SATTHU)][3]/16).." H·y nhanh ®i lµm nhiÖm vô nµo !!")
AddNote(1,"NhiÖm vô tiªu diÖt: <color=red>"..ToaDoSatThu[GetTask(NV_SATTHU)][5].."<color>  ë <color=yellow>"..CheckDiaDiem(GetTask(NV_SATTHU)).."<color> "..floor(ToaDoSatThu[GetTask(NV_SATTHU)][2]/8).."/"..floor(ToaDoSatThu[GetTask(NV_SATTHU)][3]/16).." H·y nhanh ®i lµm nhiÖm vô nµo.")
end
end
function nhannv2()
NewWorld(ToaDoSatThu[GetTask(NV_SATTHU)][1],ToaDoSatThu[GetTask(NV_SATTHU)][2],ToaDoSatThu[GetTask(NV_SATTHU)][3])
SetFightState(1)
Msg2Player("H·y tiªu diÖt: "..ToaDoSatThu[GetTask(NV_SATTHU)][5]..". H¾n ta ®ang ë <color=yellow>"..CheckDiaDiem(GetTask(NV_SATTHU)).." "..floor(ToaDoSatThu[GetTask(NV_SATTHU)][2]/8).."/"..floor(ToaDoSatThu[GetTask(NV_SATTHU)][3]/16).." H·y nhanh ®i lµm nhiÖm vô nµo !!")
AddNote(1,"H·y tiªu diÖt: "..ToaDoSatThu[GetTask(NV_SATTHU)][5]..". H¾n ta ®ang ë <color=yellow>"..CheckDiaDiem(GetTask(NV_SATTHU)).." "..floor(ToaDoSatThu[GetTask(NV_SATTHU)][2]/8).."/"..floor(ToaDoSatThu[GetTask(NV_SATTHU)][3]/16).."H·y nhanh ®i lµm nhiÖm vô nµo. ")	
end
-------------------------------------------------------------------------------------------------------
function gianhansanbosss()
ngay = tonumber(date("%d"))
if GetItemCount(17) == 0 then
Talk(1,"","Ng­¬i kh«ng mang theo 1 Kim Nguyªn B¶o, kh«ng thÓ sö dông chøc n¨ng nµy")
return
end

if GetTask(NGAY2) == ngay then
if GetTask(SOLUONG_GIOIHAN2) < SoLuongGioiHanBoss then
	SetTask(SOLUONG_GIOIHAN2,GetTask(SOLUONG_GIOIHAN2)+1)
	Msg2Player("Gia H¹n: "..GetTask(SOLUONG_GIOIHAN2).."/"..SoLuongGioiHanBoss.."")
		DelItem(17)
		SetTask(SOLUONG_GIOIHAN,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®· sö dông 1 Kim Nguyªn B¶o §æi LÊy 8 lÇn s¨n boss s¸t thñ ")
	else
		Talk(1,"","<color=green>Sø Gi¶ S¸t Thñ <color>: H«m nay b¹n ®· gia h¹n <color=red>"..SoLuongGioiHanBoss.."<color>/2 trong ngµy kh«ng thÓ gia h¹n thªm")
	end
	else
	SetTask(NGAY2,ngay)
	SetTask(SOLUONG_GIOIHAN2,0)
end
end
-------------------------------------------------------------------------------------------------------
function ghks()
SayNew("<color=green>Sö Gi¶ S¸t Thñ: <color> §Ó ghÐp <color=fire>Hoµng Kim S¸t <color> can co <color=fire> LÖnh bµi s¸t thñ vµ ng©n l­îng",3,
"GhÐp S¸t Thñ Gi¶n/glbst",
"GhÐp LÖnh Bµi V­ît ¶i/glbva",
"Tho¸t/no")
end;
-------------------------------------------------------------------------------------------------------
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
-------------------------------------------------------------------------------------------------------
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
-------------------------------------------------------------------------------------------------------
function tnvst()
if GetTask(NV_SATTHU) == 99 then
	SetTask(NV_SATTHU,0)
	AddRepute(2)
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm vô vµ nhËn ®­îc 2 ®iÓm danh väng")
	
	if GetLevel() < 60 then
		exp = GetLevelExp() / 10
		AddOwnExp(exp)
		Msg2Player("B¹n nhËn ®­îc "..exp.." kinh nghiÖm")
	elseif GetLevel() < 80 then
		exp = GetLevelExp() / 20
		AddOwnExp(exp)
		Msg2Player("B¹n nhËn ®­îc "..exp.." kinh nghiÖm")
	else
		SetTask(DIEMPHUCDUYEN,GetTask(DIEMPHUCDUYEN)+1)
		AddOwnExp(500000)
		Msg2Player("B¹n nhËn ®­îc 1 ®iÓm sù kiÖn")
		Msg2Player("B¹n nhËn ®­îc 500.000 kinh nghiÖm")
	end
else
Talk(1,"","<color=green>Sø Gi¶ S¸t Thñ <color>: H·y hoµn thµnh nhiÖm vô råi quay l¹i gÆp ta. ")
end
end
-------------------------------------------------------------------------------------------------------
function dichuyen()
SayNew("<color=green>NhiÕp ThÝ TrÇn<color>: Ta sÏ gióp ng­êi ®Õn vÞ trÝ <color=green>Boss S¸t Thñ <color>cÇn tiªu diÖt. Ng­¬i cã ®ång ý tr¶ cho ta <color=yellow>1 v¹n l­îng <color>®Ó di chuyÓn kh«ng?",2, 
"§­a ta ®Õn vÞ trÝ Boss S¸t Thñ /dichuyen1",
"Th«i, ®Ó ta tù ®i ®Õn ®ã /no")
end

function dichuyen1()
if GetTask(NV_SATTHU) == 0 or GetTask(NV_SATTHU) > getn(ToaDoSatThu) then
Msg2Player("Kh«ng thÓ sö dông chøc n¨ng nµy !")
return
end
if GetCash() < 10000 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 1 v¹n l­îng, ta kh«ng thÓ gióp nhµ ng­êi !")
return
end
Pay(10000)
NewWorld(ToaDoSatThu[GetTask(NV_SATTHU)][1],ToaDoSatThu[GetTask(NV_SATTHU)][2],ToaDoSatThu[GetTask(NV_SATTHU)][3])
SetFightState(1)
Msg2Player("§· di chuyÓn ®Õn vÞ trÝ Boss S¸t Thñ ")
end
-------------------------------------------------------------------------------------------------------
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
		SetTask(NV_SATTHU,0)
		Talk(1,"","<color=green>Sø Gi¶ S¸t Thñ <color>: B¹n ®· hñy nhiÖm vô thµnh c«ng !")
	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","<color=green>Sø Gi¶ S¸t Thñ <color>: Ng­êi kh«ng mang ®ñ <color=yellow>20000<color> l­îng")
end
end
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
function no()
end;























