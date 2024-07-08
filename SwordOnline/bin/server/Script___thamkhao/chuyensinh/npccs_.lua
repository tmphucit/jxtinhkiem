Include("\\script\\lib\\thuvien.lua")
Include("\\script\\chuyensinh\\dscs.lua")


function main()

if GetTask(139) == 0 then
SayNew("§iÒu KiÖn:\n + §¾ng cÊp 200: "..checklv().." \n + 5000 V¹n: "..checktichluy().." \n + 5 Kim Nguyªn B¶o: "..checktsd().." \n + Tiªu DiÖt Boss ChuyÓn Sinh: "..checkboss().." ",2,
"Hoµn thµnh nhiÖm vô/hoanthanh",
"Thoat./no")
elseif GetTask(139) == 1 then
SayNew("§iÒu KiÖn:\n + §¾ng cÊp 200: "..checklv().." \n + 10000 V¹n: "..checktichluy().." \n + 10 Kim Nguyªn B¶o: "..checktsd().." \n + Tiªu DiÖt Boss ChuyÓn Sinh: "..checkboss().." ",3,
"Hoµn thµnh nhiÖm vô/hoanthanh",
"NhËn phÇn th­ëng chuyÓn sinh 1/nhanphanthuong",
"Thoat./no")
else
SayNew("§iÒu KiÖn:\n + §¾ng cÊp 200: "..checklv().." \n + 10000 V¹n: "..checktichluy().." \n + Tr­êng Sinh §an: "..checktsd().." \n + Tiªu DiÖt Boss ChuyÓn Sinh: "..checkboss().." ",2,
"Hoµn thµnh nhiÖm vô/hoanthanh",
"Thoat./no")
end
end

function nhanphanthuong()
vtcs = checkvt2()
if vtcs == 0 then
Talk(1,"","B¹n kh«ng cã trong danh s¸ch nhËn phÇn th­ëng chuyÓn sinh 1")
return
end


SayNew("<color=green>ChuyÓn Sinh L·o Nh©n<color>: B¹n vui lßng chän lo¹i phÇn th­ëng muèn nhËn :",3,
"LÖnh Bµi An Bang Liªn §Êu /nhanphanthuong2",
"LÖnh Bµi §Þnh Quèc /nhanphanthuong2",
"Tho¸t./no")
end

function nhanphanthuong2(nsel)
pt = nsel+1
vtcs = checkvt2()
if vtcs == 0 then
Talk(1,"","B¹n kh«ng cã trong danh s¸ch nhËn phÇn th­ëng chuyÓn sinh 1")
return
end


if vtcs ~= 0 then
	mangptcs[vtcs][3] = pt
	savebang()
	if pt == 1 then
		for k=35,38 do AddEventItem(k) end
		Msg2Player("B¹n ®· nhËn th­ëng Set An Bang Liªn §Êu !")
		Msg2SubWorld("Chóc mõng ®¹i hiÖp ["..GetName().."] ®· nhËn phÇn th­ëng chuyÓn sinh 1: <color=yellow>Set An Bang Liªn §Êu")
	else
		for k=39,43 do AddEventItem(k) end
		Msg2Player("B¹n ®· nhËn th­ëng Set §Þnh Quèc!")
		Msg2SubWorld("Chóc mõng ®¹i hiÖp ["..GetName().."] ®· nhËn phÇn th­ëng chuyÓn sinh 1: <color=yellow>Set §Þnh Quèc")
	end
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end

function okhaha()
Talk(1,"","NÕu ch­a nhËn vËt phÈm ®Õn Thî RÌn chän N©ng CÊp Trang BÞ Xanh ®Ó lÊy !")
end

function checkvt2()
num = 0
for i=1,getn(mangptcs) do
if GetAccount() == mangptcs[i][1] and mangptcs[i][3] == 0 then
	return i
end
end
return num
end

function checkvt()
num = 0
for i=1,getn(mangptcs) do
if GetAccount() == mangptcs[i][1][1] then
	return i
end
end
return num
end


function hoanthanh()
 if CheckItemEquipCS() ~= 1 then
Talk(1,"","H·y th¸o hÕt trang bÞ trªn ng­êi xuèng míi cã thÓ ChuyÓn Sinh !")
return
end

if GetTask(139) == 0 then
	if GetLevel() == 200 then
	if GetCash() >= 50000000 then
	if GetItemCount(17) >= 5 then
	if GetTask(138) >= 1 then
	SetTask(165,0)
	Pay(50000000)
	SetTask(138,0)
	for k=1,5 do DelItem(17) end
	SetTask(139,1)
	SetLevel(10)
	TayTiemNang()
	TayKyNang()

	mangptcs[getn(mangptcs)+1] = {GetAccount(),GetName(),0}
	savebang()


	Msg2Player("Chóc mõng b¹n ®· chuyÓn sinh lÇn thø: "..GetTask(139).."")
	Msg2SubWorld("Chóc mõng §¹i hiÖp ["..GetName().."] ChuyÓn sinh lÇn thø "..GetTask(139).." thµnh c«ng !!")
	AddGlobalCountNews("Chóc mõng §¹i hiÖp<color=red> ["..GetName().."]<color> ChuyÓn sinh lÇn thø <color=green>"..GetTask(139).."<color> thµnh c«ng !!",1)

	KickOutSelf()

	else
	Talk(1,"","<color=green>ChuyÓn Sinh L·o Nh©n<color>: B¹n ch­a hoµn thµnh nhiÖm vô <color=red>Tiªu DiÖt Boss")
	end
	else
	Talk(1,"","<color=green>ChuyÓn Sinh L·o Nh©n<color>: B¹n kh«ng mang theo 5 viªn <color=red>Kim Nguyªn B¶o")
	end
	else
	Talk(1,"","<color=green>ChuyÓn Sinh L·o Nh©n<color>: B¹n kh«ng mang ®ñ <color=red>5000<color> v¹n")
	end
	else
	Talk(1,"","<color=green>ChuyÓn Sinh L·o Nh©n<color>: B¹n ch­a ®ñ ®¼ng cÊp <color=red>200")
	end
elseif GetTask(139) == 1 then
Talk(1,"","Ch­a Update !")	
else
Talk(1,"","HiÖn t¹i chøc n¨ng chØ ¸p dông cho ng­êi ch­a ChuyÓn Sinh")
end

end
function no()
end


function checkboss()
if GetTask(139) == 0 and GetTask(138) >= 1 then
return "<color=green>Hoµn Thµnh<color>"
else
return "<color=red>Ch­a Hoµn Thµnh<color>"
end
end



function checktsd()
if GetItemCount(17) >= 5 and GetTask(139) == 0 then
return "<color=green>Hoµn Thµnh<color>"
else
return "<color=red>Ch­a Hoµn Thµnh<color>"
end
end





function checklv()
if GetLevel() == 200 then
return "<color=green>Hoµn Thµnh<color>"
else
return "<color=red>Ch­a Hoµn Thµnh<color>"
end
end


function checktichluy()
if GetCash() >= 50000000 and GetTask(139) == 0 then
return "<color=green>Hoµn Thµnh<color>"
else
return "<color=red>Ch­a Hoµn Thµnh<color>"
end
end




function TayTiemNang()
a = GetSeries()
if a == 0 then
RestAP(35,25,25,15)
elseif a == 1 then
RestAP(20,35,20,25)
elseif a == 2 then
RestAP(25,25,25,25)
elseif a == 3 then
RestAP(30,20,30,20)
elseif a == 4 then
RestAP(20,15,25,40)
end
diemtn = GetProp()
AddProp(-diemtn)
diem = (GetLevel()-1)*5+GetTask(198)*5 + getTiemNang()
AddProp(diem)
end


function TayKyNang()
diemkn = GetMagicPoint()
AddMagicPoint(-diemkn)
diemkn2 = (GetLevel()-1)+GetTask(199) + getKyNang()
AddMagicPoint(diemkn2)
RollbackSkill()
UpdateSkill()
end
function getTiemNang()
if GetTask(139) == 1 then
return 50
elseif GetTask(139) == 2 then
return 100
elseif GetTask(139) == 3 then
return 200
elseif GetTask(139) == 4 then
return 300
elseif GetTask(139) == 5 then
return 400
else
return 0
end
end
function getKyNang()
if GetTask(139) == 1 then
return 10
elseif GetTask(139) == 2 then
return 20
elseif GetTask(139) == 3 then
return 40
elseif GetTask(139) == 4 then
return 60
elseif GetTask(139) == 5 then
return 80
else
return 0
end
end










Include("\\script\\monphai.lua")
function nhan1()
nhanitem1(mp())
end

function nhanitem1(nsel)

if nsel == 1 then
	SayNew("Vui lßng chän ®­êng cÇn nhËn ",4,
	"ThiÕu L©m QuyÒn/nhanitemthieulam",
	"ThiÕu L©m §ao/nhanitemthieulam",
	"ThiÕu L©m Bæng/nhanitemthieulam",
	"Tho¸t./no")	
elseif nsel == 2 then
	SayNew("Vui lßng chän lo¹i trang bÞ ",4,
	"Thiªn V­¬ng Th­¬ng/nhanitemthienvuong",
	"Thiªn V­¬ng Chïy/nhanitemthienvuong",
	"Thiªn V­¬ng §ao/nhanitemthienvuong",
	"Tho¸t./no")
elseif nsel == 3 then
	SayNew("Vui lßng chän lo¹i trang bÞ ",5,
	"§­êng M«n Ná  /nhanitemduongmon",
	"§­êng M«n Phi §ao /nhanitemduongmon",
	"§­êng M«n Phi Tiªu /nhanitemduongmon",
	"§­êng M«n BÉy /nhanitemduongmon",
	"Tho¸t./no")
elseif nsel == 4 then
	SayNew("Vui lßng chän lo¹i trang bÞ ",4,
	"Ngò §éc Ch­ëng/nhanitemngudoc",
	"Ngò §éc §ao/nhanitemngudoc",
	"Ngò §éc Bïa/nhanitemngudoc",
	"Tho¸t./no")
elseif nsel == 5 then
	SayNew("Vui lßng chän lo¹i trang bÞ ",4,
	"Nga Mi Ch­ëng/nhanitemngami",
	"Nga Mi KiÕm/nhanitemngami",
	"Nga Mi Hç Trî /nhanitemngami",
	"Tho¸t./no")
elseif nsel == 6 then
	SayNew("Vui lßng chän lo¹i trang bÞ ",3,
	"Thóy Yªn §ao /nhanitemthuyyen",
	"Thóy Yªn Song §ao/nhanitemthuyyen",
	"Tho¸t./no")
elseif nsel == 7 then
	SayNew("Vui lßng chän lo¹i trang bÞ ",3,
	"C¸i Bang Ch­ëng /nhanitemcaibang",
	"C¸i Bang Bæng /nhanitemcaibang",
	"Tho¸t./no")
elseif nsel == 8 then
	SayNew("Vui lßng chän lo¹i trang bÞ ",4,
	"Thiªn NhÉn §ao /nhanitemthiennhan",
	"Thiªn NhÉn KÝch /nhanitemthiennhan",
	"Thiªn NhÉn Bïa /nhanitemthiennhan",
	"Tho¸t./no")
elseif nsel == 9 then
	SayNew("Vui lßng chän lo¹i trang bÞ ",3,
	"Vâ §ang KiÕm /nhanitemvodang",
	"Vâ §ang Ch­ëng /nhanitemvodang",
	"Tho¸t./no")
elseif nsel == 10 then
	SayNew("Vui lßng chän lo¹i trang bÞ ",4,
	"C«n L«n Ch­ëng /nhanitemconlon",
	"C«n L«n §ao /nhanitemconlon",
	"C«n L«n Bïa /nhanitemconlon",
	"Tho¸t./no")


else
Talk(1,"","B¹n ch­a vµo ph¸i")
end
end


function nhanitemthieulam(nsel)
codenhanitem(75 + nsel)
end
function nhanitemthienvuong(nsel)
codenhanitem(78 + nsel)
end
function nhanitemduongmon(nsel)
codenhanitem(81 + nsel)
end
function nhanitemngudoc(nsel)
codenhanitem(85 + nsel)
end
function nhanitemngami(nsel)
codenhanitem(88 + nsel)
end
function nhanitemthuyyen(nsel)
codenhanitem(91 + nsel)
end
function nhanitemcaibang(nsel)
codenhanitem(93 + nsel)
end
function nhanitemthiennhan(nsel)
codenhanitem(95 + nsel)
end
function nhanitemvodang(nsel)
codenhanitem(98 + nsel)
end
function nhanitemconlon(nsel)
codenhanitem(100 + nsel)
end

function checkten()
num = 0
for i=1,getn(mangptcs) do
if GetName() == mangptcs[i][2] then
	num = num + 1
end
end
return num
end
function checknhanroi()
num = 0
for i=1,getn(mangptcs) do
if mangptcs[i][3] == 0 then
	num = num + 1
end
end
return num
end

function codenhanitem(num)
if checkten() == 0 then
Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch nhËn Hoµng Kim M«n Ph¸i !")
return
end
if checknhanroi() == 0 then
Talk(1,"","B¹n ®· nhËn trang bÞ chuyÓn sinh råi, kh«ng thÓ nhËn thªm ")
return
end


sl = 0
for i=1,getn(manghkmp) do
if manghkmp[i][7] == num then
	sl = sl + 1
end
end

xs = random(1,sl)
num2 = 0
for i=1,getn(manghkmp) do
if manghkmp[i][7] == num then
	
	num2 = num2 + 1
	if num2 == xs then
		
		for k=1,getn(mangptcs) do
			if GetName() == mangptcs[k][2] and mangptcs[k][3] == 0 then
				mangptcs[k][3] = xs
				savebang()
				idx = AddItem(manghkmp[i][2],manghkmp[i][3],manghkmp[i][4],manghkmp[i][5],0,0,0)
				SetTimeItem(idx,550324);
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." nhËn ®­îc phÇn th­ëng chuyÓn sinh trang bÞ: <color=yellow>"..manghkmp[i][1].." ")
			end
		end
		Talk(0,"")
		KickOutSelf()
		
	end
end
end

end



function savebang()
BANG = TaoBang(mangptcs,"mangptcs")				
LuuBang("script/chuyensinh/dscs.lua",BANG)
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
{"CËp Phong Tam Thanh Phï ",0,4,14,1,225,98},
{"Vô ¶o Ky B¸n Phï Chó ",0,4,15,1,225,102},
{"L«i Khung Thiªn §Þa Hé Phï ",0,4,13,1,225,100},

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







