Include("\\Script\\global\\sourcejx49.lua");
Include("\\Script\\header\\taskid.lua");
Include("\\Script\\lib\\worldlibrary.lua");
Include("\\Script\\lib\\thuvien.lua");
-----------------------------------------------------§Ã FIX OK 10/03/2024--------------------------------------------------------
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function main()
	SayNew("<color=green>Thî rÌn<color> H·y lùa chän 1 vò khÝ ngang víi søc m×nh nhÐ: ",8,
	"Giao DÞch/binhthuong",
           --   "ChÕ T¹o Trang bÞ TÝm/chetaodotim",
	"§æi BÝ KiÕp 120/doibk12vlhoiuc",
	"ChÕ t¹o trang bÞ Hoµng Kim /hoangkim_chetao",
	"Thay §æi Trang BÞ Xanh/thangcapxxx",
	"Xö lý <trang bÞ xanh tæn h¹i> /trangbitonhai",
	"Hñy trang bÞ khãa VÜnh ViÔn /huytrangbi2",
	"Giao tÝn thø ch­ëng m«n /giaotinthu",
	"Tho¸t./no")
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function hoangkim_chetao()
SayNew("Ng­¬i cÇn chÕ t¹o trang bÞ g×?",6,
"ChÕ t¹o An Bang /hoangkim_chetao1",
"ChÕ t¹o §Þnh Quèc /hoangkim_chetao1",
"T¸i T¹o L¹i Trang BÞ HKMP /taitaohkmpok",
"ChÕ t¹o Hoµng Kim M«n Ph¸i B»ng Xu /ephkmpxu",
"ChÕ t¹o Hoµng Kim M«n Ph¸i B»ng V¹n /ephkmptienvan",
"Tho¸t./no")
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function thangcapxxx()
SayNew("<color=green>Thî rÌn<color> Ng­¬i cÇn ta gióp g×? ",4,
	"Th¨ng CÊp Trang BÞ Xanh/thangcap",
	"H¹ CÊp Trang BÞ Xanh/hacap",
	"Thay §æi Vò KhÝ /thaydoivukhi123",
	"Tho¸t./no")
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function huytrangbi2()
SayNew("<color=green>Thî rÌn<color>: Chøc n¨ng nµy lµ <color=red>Xãa Bá Trang BÞ <color> chø kh«ng ph¶i lµ <color=yellow>Më Khãa Trang BÞ <color>. NÕu ®Æt item vµo sÏ mÊt vÜnh viÔn trang bÞ nµy vµ kh«ng phôc håi !",2,
"Ta ®ång ý hñy bá trang bÞ nµy /huytrangbi",
"Tho¸t./no")
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function trangbitonhai()
SayNew("B¹n cã <color=red><trang bÞ tæn h¹i><color> kh«ng? Muèn söa nh­ thÕ nµo?",2,
"Ta muèn sö dông Lam Thñy Tinh ®Ó kh«i phôc l¹i /phuchoi_tonhai",
"Ta muèn hñy trang bÞ nµy /huy_tonhai")
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function hoangkim_chetao1(nsel)
i = nsel + 1
if i == 1 then
	SayNew("Nguyªn liªu : 50 M·nh An Bang vµ 10 An Bang Tinh LuyÖn Th¹ch tØ lÖ 30% thµnh c«ng !!  ",5,
	"An Bang B¨ng Tinh Th¹ch H¹ng Liªn /hoangkim_chetao_anbang",
	"An Bang Cóc Hoa Th¹ch ChØ Hoµn/hoangkim_chetao_anbang",
	"An Bang Kª HuyÕt Th¹ch Giíi ChØ /hoangkim_chetao_anbang",
	"An Bang §iÒn Hoµng Th¹ch Ngäc Béi/hoangkim_chetao_anbang",
	"Tho¸t./no")
elseif i == 2 then
	SayNew("Nguyªn liªu : 50 M·nh §Þnh Quèc vµ 10 §Þnh Quèc Tinh LuyÖn Th¹ch tØ lÖ 30% thµnh c«ng !!  ",6,
	"§Þnh Quèc ¤ Sa Ph¸t Qu¸n /hoangkim_chetao_dinhquoc",
	"§Þnh Quèc Thanh Sa Tr­êng Sam/hoangkim_chetao_dinhquoc",
	"§Þnh Quèc Tö §»ng Hé UyÓn/hoangkim_chetao_dinhquoc",
	"§Þnh Quèc ¤ §»ng Yªu §¸i/hoangkim_chetao_dinhquoc",
	"§Þnh Quèc XÝch QuyÒn NhuyÔn Ngoa/hoangkim_chetao_dinhquoc",
	"Tho¸t./no")
else
	Talk(1,"","§ang cËp nhËt")
end
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function binhthuong()
w,x,y = GetWorldPos()
if w == 3 then
Sale(8)
elseif w == 15 then
Sale(10)
elseif w == 66 then
Sale(12)
elseif w == 9 then
Sale(14)
elseif w == 17 then
Sale(16)
elseif w == 53 then
Sale(10)
else
Talk(1,"","HiÖn t¹i ta kh«ng më cöa hµng vò khÝ, ng­¬i h·y ®i thµnh thÞ kh¸c ®i nhÐ ")
end
end;
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function doibk12vlhoiuc()
OpenCheckItemBox("§æi BÝ KiÕp 120","Nguyªn LiÖu: 10 Lam Thñy Tinh\nTien: 200 v¹n\nXu: 50 xu\nBÝ KiÕp 90 + Tû LÖ tróng.","loaddulieubk12")
end

function loaddulieubk12()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)
if time > 1 then
Talk(1,"","Kh«ng thÓ ®æi trang bÞ khãa ")
return
end

if idxitem == -1 then
Talk(1,"","Sè l­îng vËt phÈm v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

if GetCash() < 2000000 then
Talk(1,"","Kh«ng cã ®ñ 200 v¹n trong hµnh trang, kh«ng thÓ chÕ t¹o !")
return
end

if GetItemCountBox(28) < 10 then
Talk(1,"","Kh«ng cã ®ñ 10 Lam Thñy Tinh, kh«ng thÓ chÕ t¹o !")
return
end

if GetItemCountBox(75) == 0 and GetItemCountBox(76) == 0 and GetItemCountBox(77) == 0 and GetItemCountBox(78) == 0 and GetItemCountBox(79) == 0 and GetItemCountBox(80) == 0 and GetItemCountBox(81) == 0 and GetItemCountBox(82) == 0 and GetItemCountBox(83) == 0 and GetItemCountBox(84) == 0 and GetItemCountBox(85) == 0 and GetItemCountBox(86) == 0 and GetItemCountBox(87) == 0 and GetItemCountBox(88) == 0 and GetItemCountBox(89) == 0 and GetItemCountBox(90) == 0 and GetItemCountBox(91) == 0 and GetItemCountBox(92) == 0 and GetItemCountBox(93) == 0 and GetItemCountBox(94) == 0 and GetItemCountBox(95) == 0 and GetItemCountBox(96) == 0 and GetItemCountBox(97) == 0 and GetItemCountBox(98) == 0 and GetItemCountBox(99) == 0 and GetItemCountBox(100) == 0 and GetItemCountBox(101) == 0 and GetItemCountBox(102) == 0 then
Talk(1,"","Kh«ng cã BÝ KiÕp 9x , kh«ng thÓ chÕ t¹o ")
return
end

vang = 50
vang2 = 50

if GetTask(XU_VANG) < vang and GetTask(XU_VANG2) < vang2 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..vang2.."<color> Xu !")
return
end

TimeBox("§æi BÝ KiÕp 120",20,"doibk120nheae");
end

function doibk120nheae()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh«ng thÓ ®æi trang bÞ khãa ")
return
end

if idxitem == -1 then
Talk(1,"","Sè l­îng vËt phÈm v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end
if GetCash() < 2000000 then
Talk(1,"","Kh«ng cã ®ñ 200 v¹n trong hµnh trang, kh«ng thÓ chÕ t¹o !")
return
end

if GetItemCountBox(28) < 10 then
Talk(1,"","Kh«ng cã ®ñ 10 Lam Thñy Tinh, kh«ng thÓ chÕ t¹o !")
return
end


if GetItemCountBox(75) == 0 and GetItemCountBox(76) == 0 and GetItemCountBox(77) == 0 and GetItemCountBox(78) == 0 and GetItemCountBox(79) == 0 and GetItemCountBox(80) == 0 and GetItemCountBox(81) == 0 and GetItemCountBox(82) == 0 and GetItemCountBox(83) == 0 and GetItemCountBox(84) == 0 and GetItemCountBox(85) == 0 and GetItemCountBox(86) == 0 and GetItemCountBox(87) == 0 and GetItemCountBox(88) == 0 and GetItemCountBox(89) == 0 and GetItemCountBox(90) == 0 and GetItemCountBox(91) == 0 and GetItemCountBox(92) == 0 and GetItemCountBox(93) == 0 and GetItemCountBox(94) == 0 and GetItemCountBox(95) == 0 and GetItemCountBox(96) == 0 and GetItemCountBox(97) == 0 and GetItemCountBox(98) == 0 and GetItemCountBox(99) == 0 and GetItemCountBox(100) == 0 and GetItemCountBox(101) == 0 and GetItemCountBox(102) == 0 then
Talk(1,"","Kh«ng cã Thñy Tinh, kh«ng thÓ chÕ t¹o ")
return
end

vang = 50
vang2 = 50
if GetTask(XU_VANG) < vang and GetTask(XU_VANG2) < vang2 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..vang2.."<color> Xu !")
return
end
nl5 = GetItemCountBox(75) + GetItemCountBox(76) + GetItemCountBox(77) + GetItemCountBox(78) + GetItemCountBox(79) + GetItemCountBox(80) + GetItemCountBox(81) + GetItemCountBox(82) + GetItemCountBox(83) + GetItemCountBox(84) + GetItemCountBox(85) + GetItemCountBox(86) + GetItemCountBox(87) + GetItemCountBox(88) + GetItemCountBox(89) + GetItemCountBox(90) + GetItemCountBox(91) + GetItemCountBox(92) + GetItemCountBox(93) + GetItemCountBox(94) + GetItemCountBox(95) + GetItemCountBox(96) + GetItemCountBox(97) + GetItemCountBox(98) + GetItemCountBox(99) + GetItemCountBox(100) + GetItemCountBox(101) + GetItemCountBox(102)

if nl5 > 0 and GetCash() >= 2000000 and GetItemCountBox(28) == 10 then
	xacsuat = random(1,100)
	if xacsuat < nl5*20 then
	Msg2Player("Thµnh C«ng: TØ LÖ:  "..(nl5*20).."% ")
		Pay(2000000)
		for i=1,GetItemCountBox(75) do DelItemBox(75) end
		for i=1,GetItemCountBox(76) do DelItemBox(76) end
		for i=1,GetItemCountBox(77) do DelItemBox(77) end
		for i=1,GetItemCountBox(78) do DelItemBox(78) end
		for i=1,GetItemCountBox(79) do DelItemBox(79) end
		for i=1,GetItemCountBox(80) do DelItemBox(80) end
		for i=1,GetItemCountBox(81) do DelItemBox(81) end
		for i=1,GetItemCountBox(82) do DelItemBox(82) end
		for i=1,GetItemCountBox(83) do DelItemBox(83) end
		for i=1,GetItemCountBox(84) do DelItemBox(84) end
		for i=1,GetItemCountBox(85) do DelItemBox(85) end
		for i=1,GetItemCountBox(86) do DelItemBox(86) end
		for i=1,GetItemCountBox(87) do DelItemBox(87) end
		for i=1,GetItemCountBox(88) do DelItemBox(88) end
		for i=1,GetItemCountBox(89) do DelItemBox(89) end
		for i=1,GetItemCountBox(90) do DelItemBox(90) end
		for i=1,GetItemCountBox(91) do DelItemBox(91) end
		for i=1,GetItemCountBox(92) do DelItemBox(92) end
		for i=1,GetItemCountBox(93) do DelItemBox(93) end
		for i=1,GetItemCountBox(94) do DelItemBox(94) end
		for i=1,GetItemCountBox(95) do DelItemBox(95) end
		for i=1,GetItemCountBox(96) do DelItemBox(96) end
		for i=1,GetItemCountBox(97) do DelItemBox(97) end
		for i=1,GetItemCountBox(98) do DelItemBox(98) end
		for i=1,GetItemCountBox(99) do DelItemBox(99) end
		for i=1,GetItemCountBox(100) do DelItemBox(100) end
		for i=1,GetItemCountBox(101) do DelItemBox(101) end
		for i=1,GetItemCountBox(102) do DelItemBox(102) end
		for i=1,10 do DelItemBox(28) end
		SetTask(XU_VANG,GetTask(XU_VANG) - vang)
		SetTask(XU_VANG2,GetTask(XU_VANG2) - vang2)
		Msg2Player(" B¹n sö dông  <color=yellow>"..vang2.."<color> Xu ®Ó n©ng cÊp ")
		if GetIdxItemBoxUpdateItem() == 0 then
				idxitem = AddEventItem(19)
				Msg2SubWorld("Chóc mõng <color=green>"..GetName().."<color> ®æi thµnh c«ng <color=yellow>"..GetNameItemBox(idxitem).." ")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/DoiBK12.txt", "a");
				if LoginLog then
				write(LoginLog,"["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		end
	else
	Msg2Player("ThÊt B¹i: TØ LÖ : "..(nl5*20).."% ")
	    Pay(2000000)
		for i=1,GetItemCountBox(75) do DelItemBox(75) end
		for i=1,GetItemCountBox(76) do DelItemBox(76) end
		for i=1,GetItemCountBox(77) do DelItemBox(77) end
		for i=1,GetItemCountBox(78) do DelItemBox(78) end
		for i=1,GetItemCountBox(79) do DelItemBox(79) end
		for i=1,GetItemCountBox(80) do DelItemBox(80) end
		for i=1,GetItemCountBox(81) do DelItemBox(81) end
		for i=1,GetItemCountBox(82) do DelItemBox(82) end
		for i=1,GetItemCountBox(83) do DelItemBox(83) end
		for i=1,GetItemCountBox(84) do DelItemBox(84) end
		for i=1,GetItemCountBox(85) do DelItemBox(85) end
		for i=1,GetItemCountBox(86) do DelItemBox(86) end
		for i=1,GetItemCountBox(87) do DelItemBox(87) end
		for i=1,GetItemCountBox(88) do DelItemBox(88) end
		for i=1,GetItemCountBox(89) do DelItemBox(89) end
		for i=1,GetItemCountBox(90) do DelItemBox(90) end
		for i=1,GetItemCountBox(91) do DelItemBox(91) end
		for i=1,GetItemCountBox(92) do DelItemBox(92) end
		for i=1,GetItemCountBox(93) do DelItemBox(93) end
		for i=1,GetItemCountBox(94) do DelItemBox(94) end
		for i=1,GetItemCountBox(95) do DelItemBox(95) end
		for i=1,GetItemCountBox(96) do DelItemBox(96) end
		for i=1,GetItemCountBox(97) do DelItemBox(97) end
		for i=1,GetItemCountBox(98) do DelItemBox(98) end
		for i=1,GetItemCountBox(99) do DelItemBox(99) end
		for i=1,GetItemCountBox(100) do DelItemBox(100) end
		for i=1,GetItemCountBox(101) do DelItemBox(101) end
		for i=1,GetItemCountBox(102) do DelItemBox(102) end
		for i=1,10 do DelItemBox(28) end
		SetTask(XU_VANG,GetTask(XU_VANG) - vang)
		SetTask(XU_VANG2,GetTask(XU_VANG2) - vang2)
		Msg2Player(" B¹n sö dông  <color=yellow>"..vang2.."<color> Xu ®Ó n©ng cÊp ")
		Msg2SubWorld("Xin chia buån cïng "..GetName().." ®· ®æi thÊt b¹i <color=green> BÝ KiÕp 120 ")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/DoiBK12.txt", "a");
				if LoginLog then
				write(LoginLog,"That Bai: ["..GetNameItemBox(itemidx).."] "..GetAccount().." - "..GetName().."\n");
				end
				closefile(LoginLog)
	end
else
	Talk(1,"","Trang bÞ ®Æt vµo kh«ng hîp lÖ, vui lßng kiÓm tra l¹i")
end	
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function hoangkim_chetao_anbang(nsel)
if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng 2 x 3 «, vui lßng kiÓm tra l¹i")
	return
	end
i = nsel + 1
idmanh = 0
idtinhthach = 664
if i == 1 then
	idmanh = 283
elseif i == 2 then
	idmanh = 284
elseif i == 3 then
	idmanh = 285
elseif i == 4 then
	idmanh = 286
end

if idmanh == 0 then
Talk(1,"","Lçi nhËn d¹ng idmanh, liªn hÖ admin ®Ó xö lý !")
return
           end
		sl1 = GetItemCount(idmanh)
		
		if sl1 < 50 then
		Talk(1,"","B¹n kh«ng mang ®ñ 50 M·nh An Bang trong hµnh trang, kh«ng thÓ chÕ t¹o !")
		return
		end
		sl2 = GetItemCount(idtinhthach)
		
		if sl2 == 0 then
		Talk(1,"","B¹n kh«ng mang An Bang Tinh Th¹ch trong hµnh trang, kh«ng thÓ chÕ t¹o !")
		return
		end
		sl2 = 1
		xacsuat = 20
		
		for k=1,1 do DelItem(idtinhthach) end -- MÊt Tinh Th¹ch ®­a vµo
		
		sx = RandomNew(1,100)
		if sx <= xacsuat then
				for k=1,50 do DelItem(idmanh) end
				if i == 1 then
					sx2 = random(1,3)
					if sx2 == 2 then
						idxitem = AddItem(0,4,3,random(1,7),0,0,0)
						Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o thµnh c«ng trang bÞ: <color=pink>"..GetNameItemBox(idxitem).."")
					else
						idxitem = AddItem(0,4,3,2,0,0,0)
						Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o thµnh c«ng trang bÞ: <color=pink>"..GetNameItemBox(idxitem).."")
					end
				elseif i == 2 then
					sx2 = random(1,3)
					if sx2 == 2 then
						idxitem = AddItem(0,3,3,1,0,0,0)
						Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o thµnh c«ng trang bÞ: <color=pink>"..GetNameItemBox(idxitem).."")
					else
						idxitem = AddItem(0,3,3,1,0,0,0)
						Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o thµnh c«ng trang bÞ: <color=pink>"..GetNameItemBox(idxitem).."")
					end
				elseif i == 3 then
					sx2 = random(1,3)
					if sx2 == 2 then
						idxitem = AddItem(0,3,4,1,0,0,0)
						Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o thµnh c«ng trang bÞ: <color=pink>"..GetNameItemBox(idxitem).."")
					else
						idxitem = AddItem(0,3,4,1,0,0,0)
						Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o thµnh c«ng trang bÞ: <color=pink>"..GetNameItemBox(idxitem).."")
					end
				elseif i == 4 then
					sx2 = random(1,3)
					if sx2 == 2 then
						idxitem = AddItem(0,9,3,1,0,0,0)
						Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o thµnh c«ng trang bÞ: <color=pink>"..GetNameItemBox(idxitem).."")
					else
						idxitem = AddItem(0,9,3,1,0,0,0)
						Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o thµnh c«ng trang bÞ: <color=pink>"..GetNameItemBox(idxitem).."")
					end
				end
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/CheTaoHoangKim.txt", "a");
				if LoginLog then
				write(LoginLog,"Thanh Cong: ID: ["..idmanh.."] - Xac Suat: ["..xacsuat.."] - Name: ["..GetName().."] - Acc: ["..GetAccount().."] - Time: ["..thoigian.."] \n");
				end
				closefile(LoginLog)
		else
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/CheTaoHoangKim.txt", "a");
				if LoginLog then
				write(LoginLog,"That bai: ID: ["..idmanh.."] - Xac Suat: ["..xacsuat.."] - Name: ["..GetName().."] - Acc: ["..GetAccount().."] - Time: ["..thoigian.."] \n");
				end
				closefile(LoginLog)
				Talk(2,"","<color=red>Xin chia buån ! Qu¸ tr×nh chÕ t¹o thÊt b¹i.... X¸c suÊt: "..xacsuat.."%","B¹n bÞ mÊt  An Bang Tinh Th¹ch")
		end
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function hoangkim_chetao_dinhquoc(nsel)
if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng 2 x 3 «, vui lßng kiÓm tra l¹i")
	return
	end
	
i = nsel + 1

idmanh = 0
idtinhthach = 665
if i == 1 then
	idmanh = 287
elseif i == 2 then
	idmanh = 288
elseif i == 3 then
	idmanh = 289
elseif i == 4 then
	idmanh = 290
elseif i == 5 then
	idmanh = 291
end

if idmanh == 0 then
Talk(1,"","Lçi nhËn d¹ng idmanh, liªn hÖ admin ®Ó xö lý !")
return
             end
		sl1 = GetItemCount(idmanh)
		if sl1 < 50 then
		Talk(1,"","B¹n kh«ng mang ®ñ 50 M·nh §Þnh Quèc trong hµnh trang, kh«ng thÓ chÕ t¹o !")
		return
		end

		sl2 = GetItemCount(idtinhthach)
		
		if sl2 == 0 then
		Talk(1,"","B¹n kh«ng mang §Þnh Quèc Tinh Th¹ch trong hµnh trang, kh«ng thÓ chÕ t¹o !")
		return
		end

		sl2 = 1
		xacsuat = 25
		
		for k=1,1 do DelItem(idtinhthach) end -- MÊt Tinh Th¹ch ®­a vµo
		sx = RandomNew(1,100)
		if sx <= xacsuat then
				for k=1,50 do DelItem(idmanh) end
				if i == 1 then
						idxitem = AddItem(0,7,15,random(5,10),0,0,0)
						Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o thµnh c«ng trang bÞ: <color=pink>"..GetNameItemBox(idxitem).."")
				elseif i == 2 then
						idxitem = AddItem(0,2,30,random(5,10),0,0,0)
						Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o thµnh c«ng trang bÞ: <color=pink>"..GetNameItemBox(idxitem).."")
				elseif i == 3 then
						idxitem = AddItem(0,8,3,random(5,10),0,0,0)
						Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o thµnh c«ng trang bÞ: <color=pink>"..GetNameItemBox(idxitem).."")
				elseif i == 4 then
						idxitem = AddItem(0,6,3,random(5,10),0,0,0)
						Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o thµnh c«ng trang bÞ: <color=pink>"..GetNameItemBox(idxitem).."")
				elseif i == 5 then
						idxitem = AddItem(0,5,5,random(5,10),0,0,0)
						Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o thµnh c«ng trang bÞ: <color=pink>"..GetNameItemBox(idxitem).."")
				end
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/CheTaoHoangKim.txt", "a");
				if LoginLog then
				write(LoginLog,"Thanh Cong: ID: ["..idmanh.."] - Xac Suat: ["..xacsuat.."] - Name: ["..GetName().."] - Acc: ["..GetAccount().."] - Time: ["..thoigian.."] \n");
				end
				closefile(LoginLog)
		else
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/CheTaoHoangKim.txt", "a");
				if LoginLog then
				write(LoginLog,"That bai: ID: ["..idmanh.."] - Xac Suat: ["..xacsuat.."] - Name: ["..GetName().."] - Acc: ["..GetAccount().."] - Time: ["..thoigian.."] \n");
				end
				closefile(LoginLog)
				Talk(2,"","<color=red>Xin chia buån ! Qu¸ tr×nh chÕ t¹o thÊt b¹i.... X¸c suÊt: "..xacsuat.."%","B¹n bÞ mÊt §Þnh Quèc Tinh Th¹ch")
		end
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function taitaohkmpok()
OpenCheckItemBox("T¸i T¹o HKMP","§Æt trang bÞ HKMP cÇn t¸i t¹o \nCÇn 1 Viªn Thñy Tinh\nCÇn 1 Viªn §¸ T¸i T¹o\n200 xu phÝ rÌn ","okhoantaitaohkmp")
end
function okhoantaitaohkmp()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)
if time > 1 then
Talk(1,"","Kh«ng thÓ t¸i t¹o trang bÞ khãa ")
return
end
if idxitem == -1 then
Talk(1,"","Sè l­îng vËt phÈm v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end
	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)
check = 0	
if a == 0 and ((b == 2 and c == 49 and d == 10) or (b == 0 and c == 0 and d == 70) or (b == 0 and c == 1 and d == 70) or (b == 0 and c == 2 and d == 70) or (b == 0 and c == 3 and d == 70) or (b == 0 and c == 4 and d == 70) or (b == 0 and c == 5 and d == 70) or (b == 0 and c == 0 and d == 130) or (b == 0 and c == 1 and d == 130) or (b == 0 and c == 2 and d == 130) or (b == 0 and c == 3 and d == 130) or (b == 0 and c == 1 and d == 160) or (b == 0 and c == 0 and d == 180) or (b == 0 and c == 1 and d == 180) or (b == 0 and c == 1 and d == 190) or (b == 1 and c == 1 and d == 30) or (b == 1 and c == 0 and d == 50) or (b == 1 and c == 2 and d == 40) or (b == 8 and c == 15 and d == 10) or (b == 9 and c == 16 and d == 10) or (b == 2 and c == 33 and d == 10) or (b == 7 and c == 19 and d == 10) or (b == 7 and c == 24 and d == 10) or (b == 7 and c == 26 and d == 10) or (b == 7 and c == 26 and d == 10) or (b == 2 and c == 33 and d == 10) or (b == 2 and c == 34 and d == 10) or (b == 2 and c == 35 and d == 10) or
 (b == 2 and c == 36 and d == 10) or (b == 2 and c == 37 and d == 10) or (b == 2 and c == 38 and d == 10) or (b == 2 and c == 39 and d == 10) or (b == 2 and c == 40 and d == 10) or (b == 2 and c == 41 and d == 10) or (b == 2 and c == 42 and d == 10) or (b == 2 and c == 43 and d == 10) or (b == 2 and c == 44 and d == 10) or (b == 2 and c == 45 and d == 10) or (b == 2 and c == 46 and d == 10) or (b == 2 and c == 47 and d == 10) or (b == 2 and c == 48 and d == 10) or (b == 2 and c == 49 and d == 10) or (b == 7 and c == 16 and d == 10) or (b == 7 and c == 17 and d == 10) or (b == 7 and c == 18 and d == 10) or (b == 7 and c == 19 and d == 10) or (b == 7 and c == 20 and d == 10) or (b == 7 and c == 21 and d == 10) or (b == 7 and c == 22 and d == 10) or (b == 7 and c == 23 and d == 10) or (b == 7 and c == 24 and d == 10) or (b == 7 and c == 25 and d == 10) or (b == 7 and c == 26 and d == 10) or (b == 6 and c == 4 and d == 10) or (b == 6 and c == 5 and d == 10) or (b == 6 and c == 6 and d == 10) or
 (b == 6 and c == 7 and d == 10) or (b == 6 and c == 8 and d == 10) or (b == 6 and c == 9 and d == 10) or (b == 6 and c == 10 and d == 10) or (b == 6 and c == 11 and d == 10) or (b == 6 and c == 12 and d == 10) or (b == 6 and c == 13 and d == 10) or (b == 6 and c == 14 and d == 10) or (b == 6 and c == 15 and d == 10) or (b == 6 and c == 16 and d == 10) or (b == 6 and c == 17 and d == 10) or (b == 6 and c == 18 and d == 10) or (b == 6 and c == 19 and d == 10) or (b == 6 and c == 20 and d == 10) or (b == 6 and c == 21 and d == 10) or (b == 6 and c == 22 and d == 10) or (b == 6 and c == 23 and d == 10) or (b == 5 and c == 6 and d == 10) or (b == 5 and c == 7 and d == 10) or (b == 5 and c == 8 and d == 10) or (b == 5 and c == 9 and d == 10) or (b == 5 and c == 10 and d == 10) or (b == 5 and c == 11 and d == 10) or (b == 5 and c == 12 and d == 10) or (b == 5 and c == 13 and d == 10) or (b == 5 and c == 14 and d == 10) or (b == 5 and c == 15 and d == 10) or (b == 5 and c == 16 and d == 10) or
 (b == 5 and c == 17 and d == 10) or (b == 5 and c == 18 and d == 10) or (b == 5 and c == 19 and d == 10)  or (b == 8 and c == 4 and d == 10) or (b == 8 and c == 5 and d == 10) or (b == 8 and c == 6 and d == 10) or (b == 8 and c == 7 and d == 10) or (b == 8 and c == 8 and d == 10) or (b == 8 and c == 9 and d == 10) or (b == 8 and c == 10 and d == 10) or (b == 8 and c == 11 and d == 10) or (b == 8 and c == 12 and d == 10) or (b == 8 and c == 13 and d == 10) or (b == 8 and c == 14 and d == 10) or (b == 8 and c == 15 and d == 10) or (b == 8 and c == 16 and d == 10) or (b == 8 and c == 17 and d == 10) or (b == 8 and c == 18 and d == 10) or (b == 8 and c == 19 and d == 10)    or (b == 9 and c == 6 and d == 10) or (b == 9 and c == 7 and d == 10) or (b == 9 and c == 8 and d == 10) or (b == 9 and c == 9 and d == 10) or (b == 9 and c == 10 and d == 10) or (b == 9 and c == 11 and d == 10) or (b == 9 and c == 12 and d == 10) or (b == 9 and c == 13 and d == 10) or (b == 9 and c == 14 and d == 10) or 
(b == 9 and c == 15 and d == 10) or (b == 9 and c == 16 and d == 10) or (b == 3 and c == 7 and d == 10) or (b == 3 and c == 8 and d == 10) or (b == 3 and c == 9 and d == 10) or (b == 3 and c == 10 and d == 10) or (b == 3 and c == 11 and d == 10) or (b == 3 and c == 12 and d == 10) or (b == 3 and c == 13 and d == 10) or (b == 3 and c == 14 and d == 10) or (b == 3 and c == 15 and d == 10) or (b == 3 and c == 16 and d == 10) or (b == 3 and c == 17 and d == 10) or (b == 3 and c == 18 and d == 10) or (b == 3 and c == 19 and d == 10) or (b == 3 and c == 20 and d == 10) or (b == 3 and c == 21 and d == 10) or (b == 3 and c == 22 and d == 10) or (b == 3 and c == 23 and d == 10) or (b == 3 and c == 24 and d == 10) or (b == 3 and c == 25 and d == 10) or (b == 3 and c == 26 and d == 10) or (b == 3 and c == 27 and d == 10) or (b == 3 and c == 28 and d == 10) or (b == 4 and c == 6 and d == 10) or (b == 4 and c == 7 and d == 10) or (b == 4 and c == 8 and d == 10) or (b == 4 and c == 9 and d == 10) or
 (b == 4 and c == 10 and d == 10) or (b == 4 and c == 11 and d == 10) or (b == 4 and c == 12 and d == 10) or (b == 4 and c == 13 and d == 10) or (b == 4 and c == 14 and d == 10) or (b == 4 and c == 15 and d == 10) or (b == 4 and c == 16 and d == 10)) then
	check = 1
end
if check == 0 then
Talk(1,"","Trang bÞ b¹n ®Æt vµo kh«ng ph¶i trang bÞ HKMP, kh«ng thÓ t¸i t¹o")
return
end
if GetItemCountBox(28) < 1 and GetItemCountBox(29) < 1 and GetItemCountBox(30) < 1 then
Talk(1,"","Kh«ng cã Thñy Tinh, kh«ng thÓ chÕ t¹o ")
return
end	
if GetItemCountBox(415) < 1 then
Talk(1,"","B¹n kh«ng mang ®ñ 1 viªn §¸ T¸i T¹o, kh«ng thÓ t¸i t¹o")
return
end	
vang = 200
vang2 = 200
if GetTask(XU_VANG) < vang and GetTask(XU_VANG2) < vang2 then
Talk(1,"","B¹n kh«ng mang ®ñ <color=yellow>"..vang2.."<color> Xu !")
return
end	
		DelEquipIdx(itemidx)
		DelItemBox(415)
                            DelItemBox(28)
                            DelItemBox(29)
		DelItemBox(30)
		SetTask(XU_VANG,GetTask(XU_VANG) - vang)
		SetTask(XU_VANG2,GetTask(XU_VANG2) - vang2)
		Msg2Player(" B¹n sö dông  <color=yellow>"..vang2.."<color> Xu ®Ó t¸i t¹o ")
		if GetIdxItemBoxUpdateItem() == 0 then
				idxitem = AddItem(a,b,c,d,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." t¸i t¹o thµnh c«ng trang bÞ: <color=yellow>"..GetNameItemBox(idxitem).." ")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/TaiTaoHKMP.txt", "a");
				if LoginLog then
				write(LoginLog,"["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		end
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function ephkmpxu()
OpenCheckItemBox("ChÕ T¹o Hoµng Kim M«n Ph¸i","6 M¶nh Hoµng Kim \n§å Phæ Hoµng Kim \nBÝ KiÕp 9x (x¸c ®Þnh trang bÞ) \nThñy Tinh = Tû LÖ %\n500 Xu phÝ rÌn.","xacnhanephkmpxu")
end
function xacnhanephkmpxu()
num = 0
demsoluong = 0
if GetItemCountBox(243) ~= 1 then
Talk(1,"","Kh«ng cã §å Phæ HKMP, kh«ng thÓ chÕ t¹o !")
return
end
if GetItemCountBox(28) == 0 and GetItemCountBox(29) == 0 and GetItemCountBox(30) == 0 then
Talk(1,"","Kh«ng cã Thñy Tinh, kh«ng thÓ chÕ t¹o ")
return
end
vang = 500
vang2 = 500
if GetTask(XU_VANG) < vang and GetTask(XU_VANG2) < vang2 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..vang2.."<color> Xu !")
return
end
for k=1,getn(manghkmp) do
if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 then
	demsoluong = demsoluong + 1
end
end
if demsoluong == 0 then
Talk(1,"","Kh«ng ®ñ ®iÒu kiÖn Ðp hoµng kim m«n ph¸i")
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
	nl2 = GetItemCountBox(243)
	nl3 = vang2
	nl4 = GetItemCountBox(manghkmp[k][7])
	nl5 = GetItemCountBox(28) + GetItemCountBox(29) + GetItemCountBox(30)
	if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][6] + 1) == 1 and GetItemCountBox(manghkmp[k][6] + 2) == 1 and GetItemCountBox(manghkmp[k][6] + 3) == 1 and GetItemCountBox(manghkmp[k][6] + 4) == 1 and GetItemCountBox(manghkmp[k][6] + 5) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 and GetItemCountBox(243) == 1 and nl5 > 0 and vang2 >= 200 then
		xacsuat = random(1,90)
		if xacsuat < (nl5*5-10) then
		DelItemBox(manghkmp[k][6]) 		
		DelItemBox(manghkmp[k][6] + 1)
		DelItemBox(manghkmp[k][6] + 2)
		DelItemBox(manghkmp[k][6] + 3)
		DelItemBox(manghkmp[k][6] + 4)
		DelItemBox(manghkmp[k][6] + 5)
		DelItemBox(mattich)
		DelItemBox(243)
		DelItemBox(manghkmp[k][7])
		SetTask(XU_VANG,GetTask(XU_VANG) - vang)
		SetTask(XU_VANG2,GetTask(XU_VANG2) - vang2)
		Msg2Player(" B¹n sö dông  <color=yellow>"..vang2.."<color> Xu ®Ó n©ng cÊp ")
		for i=1,GetItemCountBox(28) do DelItemBox(28) end
		for i=1,GetItemCountBox(29) do DelItemBox(29) end
		for i=1,GetItemCountBox(30) do DelItemBox(30) end
		if GetItemCountBox(manghkmp[k][6]) == a - 1 and GetItemCountBox(manghkmp[k][6] + 1) == b - 1 and GetItemCountBox(manghkmp[k][6] + 2) == c - 1 and GetItemCountBox(manghkmp[k][6] + 3) == d - 1 and GetItemCountBox(manghkmp[k][6] + 4) == e - 1 and GetItemCountBox(manghkmp[k][6] + 5) == f - 1  and GetItemCountBox(manghkmp[k][7]) == nl4 - 1 and GetItemCountBox(243) == nl2 - 1 then
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
					DelItemBox(manghkmp[k][6]) 		
					DelItemBox(manghkmp[k][6] + 1)
					DelItemBox(manghkmp[k][6] + 2)
					DelItemBox(manghkmp[k][6] + 3)
					DelItemBox(manghkmp[k][6] + 4)
					DelItemBox(manghkmp[k][6] + 5)
					DelItemBox(mattich)
					DelItemBox(243)
					DelItemBox(manghkmp[k][7])
					SetTask(XU_VANG,GetTask(XU_VANG) - vang)
					SetTask(XU_VANG2,GetTask(XU_VANG2) - vang2)
					Msg2Player(" B¹n sö dông  <color=yellow>"..vang2.."<color> Xu ®Ó n©ng cÊp ")
					for i=1,GetItemCountBox(28) do DelItemBox(28) end
					for i=1,GetItemCountBox(29) do DelItemBox(29) end
					for i=1,GetItemCountBox(30) do DelItemBox(30) end
					Talk(1,"","<color=red>ChÕ t¹o thÊt b¹i, b¹n mÊt hÕt Thñy Tinh + §å Phæ Hoµng Kim + 500 Xu !")
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
		nl2 = GetItemCountBox(243)
		nl3 = GetCash()
		nl4 = GetItemCountBox(manghkmp[k][7])
		nl5 = GetItemCountBox(28) + GetItemCountBox(29) + GetItemCountBox(30)
			if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][6] + 1) == 1 and GetItemCountBox(manghkmp[k][6] + 2) == 1 and GetItemCountBox(manghkmp[k][6] + 3) == 1 and GetItemCountBox(manghkmp[k][6] + 4) == 1 and GetItemCountBox(manghkmp[k][6] + 5) == 1  and GetItemCountBox(manghkmp[k][7]) == 1 and GetItemCountBox(243) == 1 and nl5 > 0 and vang2 >= 200 then
				xacsuat = random(1,90)
				if xacsuat < nl5*5 then
				--Msg2Player("Thµnh Cong: "..(nl5*5).."% ")
				DelItemBox(manghkmp[k][6]) 		
				DelItemBox(manghkmp[k][6] + 1)
				DelItemBox(manghkmp[k][6] + 2)
				DelItemBox(manghkmp[k][6] + 3)
				DelItemBox(manghkmp[k][6] + 4)
				DelItemBox(manghkmp[k][6] + 5)
				DelItemBox(mattich)
				DelItemBox(243)
				DelItemBox(manghkmp[k][7])
				SetTask(XU_VANG,GetTask(XU_VANG) - vang)
				SetTask(XU_VANG2,GetTask(XU_VANG2) - vang2)
				Msg2Player(" B¹n sö dông  <color=yellow>"..vang2.."<color> Xu ®Ó n©ng cÊp ")
				for i=1,GetItemCountBox(28) do DelItemBox(28) end
				for i=1,GetItemCountBox(29) do DelItemBox(29) end
				for i=1,GetItemCountBox(30) do DelItemBox(30) end
	
				if GetItemCountBox(manghkmp[k][6]) == a - 1 and GetItemCountBox(manghkmp[k][6] + 1) == b - 1 and GetItemCountBox(manghkmp[k][6] + 2) == c - 1 and GetItemCountBox(manghkmp[k][6] + 3) == d - 1 and GetItemCountBox(manghkmp[k][6] + 4) == e - 1 and GetItemCountBox(manghkmp[k][6] + 5) == f - 1  and GetItemCountBox(manghkmp[k][7]) == nl4 - 1 and GetItemCountBox(243) == nl2 - 1 then
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
					DelItemBox(manghkmp[k][6]) 		
				DelItemBox(manghkmp[k][6] + 1)
				DelItemBox(manghkmp[k][6] + 2)
				DelItemBox(manghkmp[k][6] + 3)
				DelItemBox(manghkmp[k][6] + 4)
				DelItemBox(manghkmp[k][6] + 5)
				DelItemBox(mattich)
				DelItemBox(243)
				DelItemBox(manghkmp[k][7])
					SetTask(XU_VANG,GetTask(XU_VANG) - vang)
					SetTask(XU_VANG2,GetTask(XU_VANG2) - vang2)
					Msg2Player(" B¹n sö dông  <color=yellow>"..vang2.."<color> Xu ®Ó n©ng cÊp ")
					for i=1,GetItemCountBox(28) do DelItemBox(28) end
					for i=1,GetItemCountBox(29) do DelItemBox(29) end
					for i=1,GetItemCountBox(30) do DelItemBox(30) end
					Talk(1,"","<color=red>ChÕ t¹o thÊt b¹i, b¹n mÊt hÕt Thñy Tinh + §å Phæ Hoµng Kim + 500 Xu !")
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
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function ephkmptienvan()
OpenCheckItemBox("ChÕ T¹o Hoµng Kim M«n Ph¸i","6 M¶nh Hoµng Kim\n§å Phæ Hoµng Kim\nBÝ KiÕp 9x (x¸c ®Þnh trang bÞ) \nThñy Tinh = Tû LÖ %\n3000 v¹n phÝ rÌn ","xacnhanephkmp")
end
function xacnhanephkmp()
num = 0
demsoluong = 0
if GetItemCountBox(243) ~= 1 then
Talk(1,"","Kh«ng cã §å Phæ HKMP, kh«ng thÓ chÕ t¹o !")
return
end
if GetItemCountBox(28) == 0 and GetItemCountBox(29) == 0 and GetItemCountBox(30) == 0 then
Talk(1,"","Kh«ng cã Thñy Tinh, kh«ng thÓ chÕ t¹o ")
return
end
if GetCash() < 30000000 then
Talk(1,"","Kh«ng cã ®ñ 3000 v¹n trong hµnh trang, kh«ng thÓ chÕ t¹o !")
return
end
for k=1,getn(manghkmp) do
if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 then
	demsoluong = demsoluong + 1
end
end
if demsoluong == 0 then
Talk(1,"","Kh«ng ®ñ ®iÒu kiÖn Ðp hoµng kim m«n ph¸i")
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
	nl2 = GetItemCountBox(243)
	nl3 = GetCash()
	nl4 = GetItemCountBox(manghkmp[k][7])
	nl5 = GetItemCountBox(28) + GetItemCountBox(29) + GetItemCountBox(30)
	if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][6] + 1) == 1 and GetItemCountBox(manghkmp[k][6] + 2) == 1 and GetItemCountBox(manghkmp[k][6] + 3) == 1 and GetItemCountBox(manghkmp[k][6] + 4) == 1 and GetItemCountBox(manghkmp[k][6] + 5) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 and GetItemCountBox(243) == 1 and nl5 > 0 and GetCash() >= 20000000 then
		xacsuat = random(1,110)
		if xacsuat < (nl5*5-10) then
		--Msg2Player("Thµnh Cong: "..(nl5*5).."% ")
		DelItemBox(manghkmp[k][6]) 		
		DelItemBox(manghkmp[k][6] + 1)
		DelItemBox(manghkmp[k][6] + 2)
		DelItemBox(manghkmp[k][6] + 3)
		DelItemBox(manghkmp[k][6] + 4)
		DelItemBox(manghkmp[k][6] + 5)
		DelItemBox(mattich)
		DelItemBox(243)
		DelItemBox(manghkmp[k][7])
		Pay(30000000)
		for i=1,GetItemCountBox(28) do DelItemBox(28) end
		for i=1,GetItemCountBox(29) do DelItemBox(29) end
		for i=1,GetItemCountBox(30) do DelItemBox(30) end
	
		if GetItemCountBox(manghkmp[k][6]) == a - 1 and GetItemCountBox(manghkmp[k][6] + 1) == b - 1 and GetItemCountBox(manghkmp[k][6] + 2) == c - 1 and GetItemCountBox(manghkmp[k][6] + 3) == d - 1 and GetItemCountBox(manghkmp[k][6] + 4) == e - 1 and GetItemCountBox(manghkmp[k][6] + 5) == f - 1  and GetItemCountBox(manghkmp[k][7]) == nl4 - 1 and GetItemCountBox(243) == nl2 - 1 and GetCash() == nl3 - 30000000 then
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
					DelItemBox(manghkmp[k][6]) 		
		DelItemBox(manghkmp[k][6] + 1)
		DelItemBox(manghkmp[k][6] + 2)
		DelItemBox(manghkmp[k][6] + 3)
		DelItemBox(manghkmp[k][6] + 4)
		DelItemBox(manghkmp[k][6] + 5)
		DelItemBox(mattich)
		DelItemBox(243)
		DelItemBox(manghkmp[k][7])
		Pay(30000000)
					for i=1,GetItemCountBox(28) do DelItemBox(28) end
					for i=1,GetItemCountBox(29) do DelItemBox(29) end
					for i=1,GetItemCountBox(30) do DelItemBox(30) end
					Talk(1,"","<color=red>ChÕ t¹o thÊt b¹i, b¹n mÊt hÕt Thñy Tinh + §å Phæ HK + 3000 v¹n l­îng !")
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
		nl2 = GetItemCountBox(243)
		nl3 = GetCash()
		nl4 = GetItemCountBox(manghkmp[k][7])
		nl5 = GetItemCountBox(28) + GetItemCountBox(29) + GetItemCountBox(30)
			if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][6] + 1) == 1 and GetItemCountBox(manghkmp[k][6] + 2) == 1 and GetItemCountBox(manghkmp[k][6] + 3) == 1 and GetItemCountBox(manghkmp[k][6] + 4) == 1 and GetItemCountBox(manghkmp[k][6] + 5) == 1  and GetItemCountBox(manghkmp[k][7]) == 1 and GetItemCountBox(243) == 1 and nl5 > 0 and GetCash() >= 20000000 then
				xacsuat = random(1,110)
				if xacsuat < nl5*5 then
				--Msg2Player("Thµnh Cong: "..(nl5*5).."% ")
				DelItemBox(manghkmp[k][6]) 		
				DelItemBox(manghkmp[k][6] + 1)
				DelItemBox(manghkmp[k][6] + 2)
				DelItemBox(manghkmp[k][6] + 3)
				DelItemBox(manghkmp[k][6] + 4)
				DelItemBox(manghkmp[k][6] + 5)
				DelItemBox(mattich)
				DelItemBox(243)
				DelItemBox(manghkmp[k][7])
				Pay(30000000)
				for i=1,GetItemCountBox(28) do DelItemBox(28) end
				for i=1,GetItemCountBox(29) do DelItemBox(29) end
				for i=1,GetItemCountBox(30) do DelItemBox(30) end
	
				if GetItemCountBox(manghkmp[k][6]) == a - 1 and GetItemCountBox(manghkmp[k][6] + 1) == b - 1 and GetItemCountBox(manghkmp[k][6] + 2) == c - 1 and GetItemCountBox(manghkmp[k][6] + 3) == d - 1 and GetItemCountBox(manghkmp[k][6] + 4) == e - 1 and GetItemCountBox(manghkmp[k][6] + 5) == f - 1  and GetItemCountBox(manghkmp[k][7]) == nl4 - 1 and GetItemCountBox(243) == nl2 - 1 and GetCash() == nl3 - 20000000 then
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
					DelItemBox(manghkmp[k][6]) 		
				DelItemBox(manghkmp[k][6] + 1)
				DelItemBox(manghkmp[k][6] + 2)
				DelItemBox(manghkmp[k][6] + 3)
				DelItemBox(manghkmp[k][6] + 4)
				DelItemBox(manghkmp[k][6] + 5)
				DelItemBox(mattich)
				DelItemBox(243)
				DelItemBox(manghkmp[k][7])
					Pay(30000000)
					for i=1,GetItemCountBox(28) do DelItemBox(28) end
					for i=1,GetItemCountBox(29) do DelItemBox(29) end
					for i=1,GetItemCountBox(30) do DelItemBox(30) end
					Talk(1,"","<color=red>ChÕ t¹o thÊt b¹i, b¹n mÊt hÕt Thñy Tinh + HuyÒn Tinh + 3000 v¹n l­îng !")
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
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
manghkmp = {
-- Day Chuyen
{"Ngù Long ChiÕn ThÇn Phi Qu¶i Gi¸p",0,4,6,10,225,80},
{"§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn",0,4,7,10,225,84},
{"Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï ",0,4,8,10,225,81},
{"Chó Ph­îc DiÖt L«i C¶nh Phï ",0,4,9,10,225,87},
{"V« TrÇn Thanh T©m H­íng ThiÖn Ch©u",0,4,10,10,225,90},
{"BÝch H¶i Hoµn Ch©u Vò Liªn",0,4,11,10,225,92},
{"Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn",0,4,12,10,225,97},
{"Ma ThÞ Ma PhÖ T©m Liªn",0,4,13,10,225,95},
{"CËp Phong Tam Thanh Phï ",0,4,14,10,225,99},
{"Vô ¶o Ky B¸n Phï Chó ",0,4,15,10,225,102},
{"L«i Khung Thiªn §Þa Hé Phï ",0,4,16,10,225,100},

-- Nhan
{"Tø Kh«ng Giíi LuËt Ph¸p Giíi",0,3,7,10,237,76},
{"Phôc Ma PhËt T©m NhuyÔn KhÊu",0,3,8,10,237,77},
{"Ngù Long TuyÖt MÖnh ChØ Hoµn",0,3,9,10,237,80},
{"§Þa Ph¸ch TÝch LÞch L«i Háa Giíi",0,3,10,10,237,84},
{"Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn",0,3,11,10,237,81},
{"Chó Ph­îc U ¶o ChØ Hoµn",0,3,12,10,237,87},
{"Minh ¶o §éc YÕt ChØ Hoµn",0,3,13,10,237,86},
{"V« Gian B¹ch Ngäc Ban ChØ ",0,3,14,10,237,89},
{"V« Ma B¨ng Tinh ChØ Hoµn",0,3,15,10,237,88},
{"V« TrÇn PhËt Quang ChØ Hoµn",0,3,16,10,237,90},
{"V« TrÇn Tõ Bi Ngäc Ban ChØ ",0,3,17,10,237,90},
{"Tª Hoµng Thñy Ngäc ChØ Hoµn",0,3,18,10,237,91},
{"BÝch H¶i Khiªn TÕ ChØ hoµn",0,3,37,10,237,92},
{"§ång Cõu KiÕn Long Ban ChØ ",0,3,19,10,237,93},
{"§Þch Kh¸i Th¶o Gian Th¹ch Giíi ",0,3,20,10,237,94},
{"Ma ThÞ NghiÖp Háa U Linh Giíi",0,3,21,10,237,95},
{"Ma S¸t V©n Long Thæ Ch©u Giíi",0,3,22,10,237,96},
{"CËp Phong Thanh Tïng Ph¸p Giíi",0,3,23,10,237,99},
{"L¨ng Nh¹c Né L«i Giíi",0,3,24,10,237,98},
{"L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng Giíi",0,3,25,10,237,98},
{"Vô ¶o Thóc T©m ChØ Hoµn",0,3,26,10,237,102},
{"S­¬ng Tinh Phong B¹o ChØ Hoµn",0,3,27,10,237,101},
{"L«i Khung Cöu Thiªn DÉn L«i Giíi",0,3,28,10,237,100},

-- Ngoc Boi
{"Méng Long PhËt Ph¸p HuyÒn Béi",0,9,6,10,231,75},
{"B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi",0,9,7,10,231,82},
{"S©m Hoµng HuyÒn ThiÕt T­¬ng Ngäc Béi",0,9,8,10,231,83},
{"V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi",0,9,9,10,231,90},
{"BÝch H¶i Hång L¨ng Ba",0,9,10,10,231,92},
{"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",0,9,11,10,231,95},
{"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",0,9,12,10,231,99},
{"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi",0,9,13,10,231,98},
{"Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi",0,9,14,10,231,102},
{"L«i Khung Linh Ngäc UÈn L«i",0,9,15,10,231,100},
{"V« Ma TÈy T­îng Ngäc KhÊu",0,9,16,10,231,88},

-- Bao Tay
{"Tø Kh«ng NhuyÔn B× Hé UyÓn",0,8,4,10,207,76},
{"KÕ NghiÖp Háa V©n Kú L©n Thñ ",0,8,5,10,207,78},
{"H¸m Thiªn Hæ §Çu KhÊn Thóc UyÓn",0,8,6,10,207,79},
{"Ngù Long TÊn Phong Hé UyÓn",0,8,7,10,207,80},
{"§Þa Ph¸ch KhÊu T©m Tr¹c",0,8,8,10,207,84},
{"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",0,8,9,10,207,81},
{"Chó Ph­îc Xuyªn T©m §éc UyÓn",0,8,10,10,207,87},
{"U Lung Ng©n ThiÒn Hé UyÓn",0,8,11,10,207,85},
{"Minh ¶o Hñ Cèt Hé UyÓn",0,8,12,10,207,86},
{"V« Gian CÇm VËn Hé UyÓn",0,8,13,10,207,89},
{"Tª Hoµng B¨ng Tung CÈm UyÓn",0,8,14,10,207,91},
{"§ång Cõu Kh¸ng Long Hé UyÓn",0,8,15,10,207,93},
{"§Þch Kh¸i CÈu TÝch B× Hé UyÓn",0,8,16,10,207,94},
{"Ma Hoµng HuyÕt Y Thó Tr¹c",0,8,17,10,207,97},
{"Ma S¸t Cö Háa L­u Thiªn UyÓn",0,8,18,10,207,96},
{"S­¬ng Tinh B¨ng Tinh Thiªn Tinh Thñ",0,8,19,10,207,101},

-- GIAY
{"Méng Long §¹t Ma T¨ng Hµi",0,5,6,10,219,75},
{"Phôc Ma Phç §é T¨ng Hµi",0,5,7,10,219,77},
{"KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",0,5,8,10,219,78},
{"H¸m Thiªn Thõa Long ChiÕn Ngoa",0,5,9,10,219,79},
{"§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa",0,5,10,10,219,84},
{"B¨ng Hµn NguyÖt ¶nh Ngoa",0,5,11,10,219,82},
{"S©m Hoµng Tinh VÉn Phi Lý ",0,5,12,10,219,83},
{"Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa",0,5,13,10,219,87},
{"U Lung MÆc Thï NhuyÔn Lý ",0,5,14,10,219,85},
{"Minh ¶o Song Hoµn Xµ Hµi",0,5,15,10,219,86},
{"V« Ma Hång Truy NhuyÔn Th¸p Hµi",0,5,16,10,219,88},
{"Ma Hoµng §¨ng §¹p Ngoa",0,5,17,10,219,97},
{"Ma ThÞ S¬n H¶i Phi Hång Lý ",0,5,18,10,219,95},
{"Vô ¶o Tung Phong TuyÕt ¶nh Ngoa",0,5,19,10,219,102},

-- THAT LUNG
{"Méng Long HuyÒn Ti Ph¸t §¸i",0,6,4,10,213,75},
{"Tø Kh«ng Hé Ph¸p Yªu §¸i",0,6,5,10,213,76},
{"Phôc Ma ¤ Kim NhuyÔn §iÒu",0,6,6,10,213,77},
{"KÕ NghiÖp B¹ch Hæ V« Song KhÊu",0,6,7,10,213,78},
{"H¸m Thiªn Uy Vò Thóc Yªu §¸i",0,6,8,10,213,79},
{"Ngù Long Thiªn M«n Thóc Yªu Hoµn",0,6,9,10,213,80},
{"B¨ng Hµn T©m TiÔn Yªu KhÊu",0,6,10,10,213,82},
{"S©m Hoµng Hån Gi¶o Yªu Thóc",0,6,11,10,213,83},
{"Thiªn Quang S©m La Thóc §¸i",0,6,12,10,213,81},
{"U Lung Thanh Ng« TriÒn Yªu",0,6,13,10,213,85},
{"V« Gian PhÊt V©n Ti §¸i",0,6,14,10,213,89},
{"Tª Hoµng B¨ng TuyÕt B¹ch V©n Thóc §¸i",0,6,15,10,213,91},
{"BÝch H¶i Hång Linh Kim Ti §¸i",0,6,16,10,213,92},
{"§ång Cõu TiÒm Long Yªu §¸i",0,6,17,10,213,93},
{"§Þch Kh¸i TruyÒn M·ng Yªu §¸i",0,6,18,10,213,94},
{"Ma Hoµng Khª Cèc Thóc Yªu §¸i",0,6,19,10,213,97},
{"Ma S¸t XÝch Ký Táa Yªu KhÊu",0,6,20,10,213,96},
{"CËp Phong HuyÒn Ti Tam §o¹n CÈm",0,6,21,10,213,99},
{"S­¬ng Tinh Thanh Phong Lò §¸i",0,6,22,10,213,101},
{"L«i Khung Phong L«i Thanh CÈm §¸i",0,6,23,10,213,100},

-- NON
{"Méng Long ChÝnh Hång T¨ng M·o",0,7,16,10,389,75},
{"§Þa Ph¸ch Ngò Hµnh Liªn Hoµn Qu¸n",0,7,17,10,389,84},
{"Chó Ph­îc Ph¸ Gi¸p §Çu Hoµn",0,7,18,10,389,87},
{"U Lung Kim Xµ Ph¸t §¸i",0,7,19,10,389,85},
{"V« Ma Ma Ni Qu¸n",0,7,20,10,389,88},
{"V« TrÇn Ngäc N÷ Tè T©m Qu¸n",0,7,21,10,389,90},
{"§ång Cõu Phi Long §Çu Hoµn",0,7,22,10,389,93},
{"Ma Hoµng Kim Gi¸p Kh«i",0,7,23,10,389,97},
{"Ma ThÞ LiÖt DiÖm Qu¸n MiÖn",0,7,24,10,389,95},
{"Vô ¶o B¾c Minh §¹o Qu¸n",0,7,25,10,389,102},
{"L«i Khung Hµn Tung B¨ng B¹ch Qu¸n",0,7,26,10,389,100},

-- AO GIAP

{"Méng Long Kim Ti ChÝnh Hång Cµ Sa",0,2,33,10,395,75},
{"Tø Kh«ng Tö Kim Cµ Sa",0,2,34,10,395,76},
{"Phuc Ma HuyÒn Hoµng Cµ Sa",0,2,35,10,395,77},
{"KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i",0,2,36,10,395,78},
{"H¸m Thiªn Vò ThÇn T­îng Kim Gi¸p",0,2,37,10,395,79},
{"B¨ng Hµn HuyÒn Y  Thóc Gi¸p",0,2,38,10,395,82},
{"S©m Hoµng Kim TiÒn Liªn Hoµn Gi¸p",0,2,39,10,395,83},
{"U Lung XÝch YÕt MËt Trang",0,2,40,10,395,85},
{"Minh ¶o U §éc ¸m Y",0,2,41,10,395,86},
{"V« Gian Thanh Phong Truy Y",0,2,42,10,395,89},
{"V« Ma Tö Kh©m Cµ Sa",0,2,43,10,395,88},
{"Tª Hoµng TÖ T©m Khinh Sa Y",0,2,44,10,395,91},
{"§ång Cõu Gi¸ng Long C¸i Y",0,2,45,10,395,93},
{"§Þch Kh¸i Cöu §¹i C¸i Y",0,2,46,10,395,94},
{"Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p",0,2,47,10,395,96},
{"L¨ng Nh¹c V« Ng· §¹o B¹o",0,2,48,10,395,98},
{"S­¬ng Tinh Ng¹o S­¬ng §¹o Bµo",0,2,49,10,395,101},

-- VU KHI

{"V« Gian û Thiªn KiÕm",0,0,0,70,383,89},  -- nga mi 
{"Tø Kh«ng Gi¸ng Ma Giíi §ao",0,0,1,70,383,76},  -- thieu lam
{"Phôc Ma Tö Kim C«n",0,0,2,70,383,77},  -- thieu lam
{"KÕ NghiÖp B«n L«i Toµn Long Th­¬ng",0,0,3,70,383,78}, -- thien vuong
{"H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy",0,0,4,70,383,79},  -- thien vuong
{"BÝch H¶i Uyªn ¦¬ng Liªn Hoµn §ao",0,0,5,70,383,92},  -- thuy yen
{"L¨ng Nh¹c Th¸i Cùc KiÕm",0,0,0,130,383,98},  --- vo dang
{"Ngù Long L­îng Ng©n B¶o §ao",0,0,1,130,383,80},  -- thien vuong
{"§Þch Kh¸i Lôc Ngäc Tr­îng",0,0,2,130,383,94},  -- cai bang
{"Ma S¸t Quû Cèc U Minh Th­¬ng",0,0,3,130,383,96},  -- thien nhan 
{"S­¬ng Tinh Thiªn Niªn Hµn ThiÕt",0,0,1,160,383,101}, -- con lon 
{"CËp Phong Ch©n Vò KiÕm",0,0,0,180,383,99},  -- vo dang 
{"Minh ¶o Tµ S¸t §éc NhËn",0,0,1,180,383,86}, -- ngu doc
{"Tª Hoµng Phông Nghi §ao",0,0,1,190,383,91}, -- thuy yen
{"B¨ng Hµn §¬n ChØ Phi §ao",0,1,1,30,383,82},  -- duong mon 
{"S©m Hoµng Phi Tinh §o¹t Hån",0,1,0,50,383,83},  -- duong mon
{"Thiªn Quang Hoa Vò M·n Thiªn",0,1,2,40,383,81},  -- duong mon 
{"§ång Cõu Kh¸ng Long Hé UyÓn",0,8,15,10,383,93}, -- cai bang
{"V« Ma TÈy T­îng Ngäc KhÊu",0,9,16,10,383,88},  -- Nga mi 
{"Méng Long Kim Ti ChÝnh Hång Cµ Sa",0,2,33,10,383,75}, -- thieu lam 
{"U Lung Kim Xµ Ph¸t §¸i",0,7,19,10,383,85},  -- ngu doc
{"Ma ThÞ LiÖt DiÖm Qu¸n MiÖn",0,7,24,10,383,95}, -- thien nhan
{"L«i Khung Hµn Tung B¨ng B¹ch Qu¸n",0,7,26,10,383,100}, -- con lon 
}
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
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
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function thangcap()
OpenCheckItemBox("Th¨ng CÊp Trang BÞ","H·y ®Æt 1 trang bÞ Xanh vµ 1 viªn Tö Thñy Tinh vµo ","okhaha")
end

function okhaha()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey(29)

if (GetBindItem(numitem) == 1) then
Talk(1,"","Thñy Tinh khãa kh«ng ®­îc dïng vµo môc ®Ých Kh¶m N¹m")
return
end

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

	sx = RandomNew(1,100)
	DelEquipItemQuestKey(29)
	
	xacsuatthem = 0
	if GetTask(485) >= 5 then
		xacsuatthem = 5 + GetTask(485)
	end
	sxtinh =100 - c*10 + xacsuatthem

	if sx < sxtinh or GetTask(THANGCAPXANH1) >= 10 then
		SetTask(THANGCAPXANH1,0)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®· th¨ng cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color=yellow>] tõ cÊp "..c.." lªn cÊp "..(c+1).." !")
		if c >= 7 then
			Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] ®· th¨ng cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color=red>] tõ cÊp "..c.." lªn cÊp "..(c+1).." !")
			AddGlobalCountNews("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color>] ®· th¨ng cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color>] tõ cÊp "..c.." lªn cÊp "..(c+1).." ! ",1)
		end
		--cuonghoa = GetCuongHoa(itemidx)
		DelEquipIdx(itemidx)
		if GetIdxItemBoxUpdateItem() == 0 and GetIdxItemBoxQuestKey(29) == 0 then
			idxitem = AddItemPrama(0,a,b,c+1,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			--SetCuongHoa(idxitem, cuonghoa)
			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end
	else
		inlogin("Thang cap That bai: "..GetAccount().." - "..GetName().." - "..sxtinh.."% ")
		Msg2Player("Th¨ng cÊp trang bÞ thÊt b¹i, x¸c suÊt th¨ng cÊp: <color=yellow>"..sxtinh.."% ")
		Talk(1,"","Th¨ng cÊp trang bÞ thÊt b¹i, x¸c suÊt th¨ng cÊp: <color=yellow>"..sxtinh.."% ")
		SetTask(THANGCAPXANH1,GetTask(THANGCAPXANH1) + 5)
	end
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function hacap()
OpenCheckItemBox("H¹ CÊp Trang BÞ","H·y ®Æt 1 trang bÞ Xanh vµ 1 viªn Lôc Thñy Tinh vµo ","okhahacap")
end

function okhahacap()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey(30) -- Sua thanh Luc Thuy Tinh

if (GetBindItem(numitem) == 1) then
Talk(1,"","Thñy Tinh khãa kh«ng ®­îc dïng vµo môc ®Ých Kh¶m N¹m")
return
end

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
Msg2Player("B¹n ch­a ®Æt nguyªn liÖu h¹ cÊp vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a cã nguyªn liÖu h¹ cÊp!")
return
end

if (numitem == -1) then
Msg2Player("B¹n chØ cã thÓ ®Æt 1 nguyªn liÖu h¹ cÊp ")
Talk(1,"","<color=red>Lçi<color>: V­ît qu¸ sè l­îng yªu cÇu: 1 viªn Lôc Thñy Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguyªn liÖu ®Æt vµo kh«ng ph¶i Lôc Thñy Tinh ")
Talk(1,"","<color=red>Lçi<color>: Nguyªn liÖu ®Æt vµo kh«ng ph¶i lµ Lôc Thñy Tinh!")
return
end
	a = GetDetailTypeItem(itemidx)
	b = GetParticularItem(itemidx)		
	c = GetLevelItem(itemidx)
	
	if (a == 2 and b == 28) then
		Msg2Player("Trang bÞ kÕt h«n kh«ng thÓ h¹ cÊp !")
		Talk(1,"","Trang bÞ kÕt h«n kh«ng thÓ h¹ cÊp !")
		return
	end

	if c <= 1 then
	Msg2Player("Trang bÞ cña b¹n hiÖn t¹i kh«ng thÓ h¹ cÊp ®­îc n÷a")
	Talk(1,"","<color=red>Lçi<color>: Kh«ng thÓ h¹ cÊp trang bÞ cÊp 1!")
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
	DelEquipItemQuestKey(30) -- Sua thanh Luc Thuy Tinh

           Msg2Player("<color=yellow>Chóc mõng b¹n ®· h¹ cÊp thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."<color=yellow>] tõ cÊp "..c.." xuèng cÊp "..(c-1).." !")
		DelEquipIdx(itemidx)
		if GetIdxItemBoxUpdateItem() == 0 and GetIdxItemBoxQuestKey(30) == 0 then
			idxitem = AddItemPrama(0,a,b,c-1,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end	
               end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function thaydoivukhi123()
OpenCheckItemBox("Thay §æi Vò KhÝ","H·y ®Æt 1 Vò KhÝ Xanh + 1 Tö Thñy Tinh vµo + 2 V¹n L­îng ","okthaydoivk123")
end

function okthaydoivk123()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey(29)

if (GetBindItem(numitem) == 1) then
Talk(1,"","Thñy Tinh khãa kh«ng ®­îc dïng vµo môc ®Ých Kh¶m N¹m")
return
end

if (numitem == 0) then
Msg2Player("B¹n ch­a ®Æt nguyªn liÖu thay ®æi trang bÞ vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a cã nguyªn liÖu thay ®æi trang bÞ!")
return
end

if (numitem == -1) then
Msg2Player("B¹n chØ cã thÓ ®Æt 1 nguyªn liÖu thay ®æi trang bÞ ")
Talk(1,"","<color=red>Lçi<color>: V­ît qu¸ sè l­îng yªu cÇu: 1 viªn Tö Thñy Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguyªn liÖu ®Æt vµo kh«ng ph¶i Tö Thñy Tinh ")
Talk(1,"","<color=red>Lçi<color>: Nguyªn liÖu ®Æt vµo kh«ng ph¶i lµ Tö Thñy Tinh!")
return
end

if (itemidx == 0) then
Msg2Player("B¹n ch­a ®Æt trang bÞ cÇn thay ®æi vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a ®Æt trang bÞ cÇn thay ®æi vµo !")
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

if numitem < 1 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 1 Lôc Thñy Tinh trong hµnh trang, kh«ng thÓ thay ®æi !")
return
end

if GetCash() < 50000 then
Talk(1,"","Thay ®æi trang bÞ mçi lÇn cÇn 5 v¹n !")
return
end
	tencu = GetNameItemBox(itemidx)
	a = GetDetailTypeItem(itemidx)
	b = GetParticularItem(itemidx)		
	c = GetLevelItem(itemidx)
	if a ~= 0 and a ~= 1 then
		Msg2Player("ChØ ®­îc thay ®æi Vò KhÝ, vui lßng kiÓm tra l¹i")
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
	Pay(50000)
	cuonghoa = GetCuongHoa(itemidx)
	
		DelEquipIdx(itemidx)
		for i=1,1 do DelEquipItemQuestKey(29) end
		if GetIdxItemBoxUpdateItem() == 0 then
			idxitem = AddItem(0,a,b,c,d,random(6,10),random(6,10)) -- tra lai item opt gia tri tu 6 den 10 
			Msg2Player("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] ®· thay ®æi Option vò khÝ <color=yellow>"..tencu.." thµnh c«ng ")
			SetCuongHoa(idxitem, cuonghoa)

			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end
          end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function phuchoi_tonhai()
OpenCheckItemBox("Phôc håi  <trang bÞ tæn h¹i>","H·y ®Æt 1 <trang bÞ tæn h¹i> vµ 1 viªn Lam Thñy Tinh vµo ","okphuchoi_tonhai")
end
function okphuchoi_tonhai()
itemidx = GetIdxItemBoxUpdateItem4()
numitem = GetIdxItemBoxQuestKey(28) -- Sua thanh Lam Thuy Tinh

if (GetBindItem(numitem) == 1) then
Talk(1,"","Thñy Tinh khãa kh«ng ®­îc dïng vµo môc ®Ých Kh¶m N¹m")
return
end

if (itemidx == 0) then
Talk(1,"","<color=red>Lçi<color>: Ch­a ®Æt <trang bÞ tæn h¹i> vµo !")
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

if (itemidx == -3) then
Msg2Player("Trang bÞ ®Æt vµo kh«ng ph¶i <trang bÞ tæn h¹i>")
Talk(1,"","<color=red>Lçi<color>: Trang bÞ ®Æt vµo kh«ng ph¶i <trang bÞ tæn h¹i>")
return
end

if (numitem == 0) then
Msg2Player("B¹n ch­a ®Æt nguyªn liÖu phôc håi vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a cã nguyªn liÖu phôc håi!")
return
end

if (numitem == -1) then
Msg2Player("B¹n chØ cã thÓ ®Æt 1 nguyªn liÖu phôc håi ")
Talk(1,"","<color=red>Lçi<color>: V­ît qu¸ sè l­îng yªu cÇu: 1 viªn Lam Thñy Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguyªn liÖu ®Æt vµo kh«ng ph¶i Lam Thñy Tinh ")
Talk(1,"","<color=red>Lçi<color>: Nguyªn liÖu ®Æt vµo kh«ng ph¶i lµ Lam Thñy Tinh!")
return
end
	DelEquipItemQuestKey(28) -- Sua thanh Lam Thuy Tinh
	SetDurationIdx(itemidx)
	Msg2Player("<color=yellow>Chóc mõng b¹n ®· phôc håi thµnh c«ng trang bÞ [<color=green>"..GetNameItemBox(itemidx).."!")
	
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function huy_tonhai()
OpenCheckItemBox("Hñy <trang bÞ tæn h¹i>","H·y ®Æt 1 <trang bÞ tæn h¹i> vµo ®Ó hñy bá","okhuy_tonhai")
end
function okhuy_tonhai()
idx = GetIdxItemBox3()
if (idx == -1) then
Msg2Player("Trong r­¬ng cã nhiÒu h¬n 1 vËt phÈm ")
elseif (idx == 0) then
Msg2Player("Trong r­¬ng kh«ng cã vËt phÈm nµo ")
elseif (idx == -2) then
Msg2Player("VËt phÈm ®Æt  vµo kh«ng ph¶i lµ trang bÞ ")
elseif (idx == -3) then
Msg2Player("Trang bÞ ®Æt vµo kh«ng ph¶i <color=yellow><trang bÞ tæn h¹i>")
          else
	if (GetDurationIdx(idx) == 0) then
		ten = GetNameItemBox(idx)
		DelEquipIdx(idx)
		Talk(1,"","§· hñy trang bÞ thµnh c«ng trang bÞ  <color=yellow>"..ten.." !")
		a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
		inloghuytbth(""..ten.." - TK: ["..GetAccount().."] - ["..GetName().."] - {"..a1..","..a2..","..a3..","..a4..","..a5..","..a6..","..a7..","..a8..","..a9..","..a10..","..a11..","..a12..","..a13..","..a14..","..a15..","..a16..","..a17.."},")	
		Msg2Player("B¹n ®· hñy thµnh c«ng trang bÞ <color=yellow>"..ten.." ")
	else	
		Talk(1,"","Trang bÞ ®Æt vµo kh«ng bÞ tæn h¹i, kh«ng cÇn phôc håi !")
	end
end
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
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
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function giaotinthu()
	if GetTask(NV_MONPHAI1) == 6 then
		SetTask(NV_MONPHAI1,7)
		Talk(1,"","<color=green>Thî RÌn <color>: Ta ®· nhËn ®­îc tÝn th­, h·y nãi víi Ch­ëng M«n ng­¬i lµ ta sÏ cè g¾ng hÕt søc ®Ó gióp ®Ö tö cña ng­êi !")
		Msg2Player("<color=green>NhiÖm vô M«n Ph¸i: <color=red>H·y ®Õn gÆp B¸n Ngùa")
	end
Msg2Player("b¹n kh«ng cã tÝn th­...")
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function inloghuytb(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/HuyTrangBiKhoaVinhVien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - "..thoigian.." \n");
end
closefile(LoginLog)
end

function inloghuytbth(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/HuyTrangBiTonHai.txt", "a");
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
-----------=======================-------------------------====================----------------------
-----------=======================---------HÀM NÀY §? DÀNH SAU NÀY SÀI TRANG S?C----------------====================----------------------
function luyenthanh()
OpenCheckItemBox("LuyÖn Thµnh HuyÒn Tinh","H·y ®Æt trang søc vµo ®Ó ®æi thµnh HuyÒn tinh 1 ","okluyenthanh")
end

function okluyenthanh()
numx = GetAllItemCountInCheckBox()
if numx == 0 then
Talk(1,"","Kh«ng ®­îc ®Ó trèng !")
return
end

if CheckTrangSucInBox() == -1 then
Talk(1,"","Cã vËt phÈm kh«ng thuéc Trang Søc trong r­¬ng !")
return
end

if CheckTrangSucInBox()  == -2 then
Talk(1,"","Kh«ng ®­îc ®Ó trang bÞ ®Ýnh trong r­¬ng !")
return
end

DeleteAllItemInCheckBox()

for i=1,numx do AddEventItem(44) end
Msg2Player("B¹n nhËn ®­îc "..numx.." HuyÒn Tinh 1")
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
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
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
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
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------

function chetaodotim()
OpenPGBoxItem()
end



function no()
end

