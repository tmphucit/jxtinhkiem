Include("\\script\\monphai.lua")
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\danhsach\\danhsachtop.lua")
Include("\\script\\danhsach\\code_1.lua")
Include("\\script\\danhsach\\code_2.lua")
--Include("\\script\\danhsach\\duatop100.lua")
Include("\\script\\admin\\monphai.lua")
Include("\\script\\admin\\shopktc.lua")
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\npcchucnang\\hotrotanthu.lua")
Include("\\Script\\Global\\sourcejx49.lua")
Include("\\script\\codeevent.lua")
Include("\\script\\codenew.lua")


function main()
if GetTask(906)  >= 111111 and GetTask(906) <= 555555 then
SayNew("<color=green>LÔ Quan<color>: HiÖn t¹i ta ch­a tæ chøc sù kiÖn g×.",2,
"Ta muèn nhËn trang bÞ phÇn th­ëng §ua Top /nhantrangbidhah",
"Tho¸t./no")
elseif GetTask(906) >= 9000 and GetTask(906) <= 10000 then
SayNew("<color=green>LÔ Quan<color>: HiÖn t¹i ta ch­a tæ chøc sù kiÖn g×.",2,
"Ta muèn nhËn trang bÞ KhuyÕn M·i N¹p ThÎ /nhantrangbikhuyenmai",
"Tho¸t./no")
elseif GetTask(906) == 5468791 then
SayNew("<color=green>LÔ Quan<color>: HiÖn t¹i ta ch­a tæ chøc sù kiÖn g×.",2,
"Ta muèn nhËn trang bÞ Thiªn Hoµng /nhantrangbith",
"Tho¸t./no")

elseif GetTask(906) == 11223344 then
SayNew("<color=green>LÔ Quan<color>: HiÖn t¹i ta ch­a tæ chøc sù kiÖn g×.",2,
"Ta muèn nhËn phÇn th­ëng Test Tèng Kim /testtongkim1",
"Tho¸t./no")
elseif GetTask(906) == 44332211 then
SayNew("<color=green>LÔ Quan<color>: HiÖn t¹i ta ch­a tæ chøc sù kiÖn g×.",2,
"Ta muèn nhËn phÇn th­ëng Test Tèng Kim /testtongkim2",
"Tho¸t./no")
else
--nhagiao_main()
SayNew("<color=green>LÔ Quan<color>: HiÖn t¹i ta ch­a tæ chøc sù kiÖn g×.",2,
--"Sù KiÖn ThuyÒn Rång T©n Thñ /thuyenrong_main",
--"Sù kiÖn Trung Thu /trungthu_main",
--"NhËn ®Òn bï Server Cò /phuchung_nhandenbu",
--"PhÇn Th­ëng Gãi N¹p ThÎ /quockhanh_goinapthe",
--"NhËn th­ëng §ua Top/main_duatop",
--"NhËn Tiªn Th¶o Lé, N÷ Nhi Hång/nhanttl",
--"Sù kiÖn Giç Tæ Hïng V­¬ng /gioto_main",
--"NhËn phÇn th­ëng Top Cao Thñ /main_duatop_phuchung",
--"NhËn ®Òn bï §¹i Héi Anh Hïng /denbubt",
--"NhËn phÇn th­ëng ¦u §·i N¹p ThÎ /nhannapthe",
--"NhËn ®Òn bï kinh nghiÖm cÊp 90 /nhandenbu",
--"Sù kiÖn Nhµ Gi¸o ViÖt Nam /nhagiao_main",
--"Gi¸ng Sinh An Lµnh 2017 /giangsinh",
--"§¨ng Ký T©n Thñ 2 /dangkytanthu2",
--"Sù KiÖn TÕt Nguyªn §¸n /tet_muavatpham",
--"NhËn phÇn quµ U23 ViÖt Nam vµo Chung KÕt /nhanqua",
"NhËp Gift Code  /nhapseri",
"NhËn TEST VIP ./nhanviptest",	
--"NhËn th­ëng ®Òn bï B¶o Tr× Server/nhanthuongtrungthu1",
--"NhËn th­ëng ®ua top cÊp 120 /nhanthuongtop100",
--"NhËn th­ëng Top Cao Thñ /main_duatop_phuchung",
--"Sù kiÖn Quèc TÕ ThiÕu Nhi /thieunhi_main_2021",
--"Sù kiÖn Gi¶i Phãng MiÒn Nam 30-04 /giaiphong_main_2021",
--"NhËn phÇn th­ëng TOP /giaiphong_thuongtop",
--"NhËn hç trî nh©n ®«i 6 giê /nhanhotrox2",
--"NhËn th­ëng N¹p ThÎ LÇn §Çu/nhanthuonglandau",
--"Sù kiÖn Quèc TÕ Phô N÷ 8-3/event83_main",
--"§Òn bï Gãi T©n Thñ /denbutt",
--"NhËn ®Òn bï §¹i Héi Anh Hïng/denbu_phuchung",
--"NhËn th­ëng N¹p ThÎ LÇn §Çu /napthelandau",
--"§Òn bï Bi Kip 120 [TTK]/denbubk120",

--"NhËn Gi¶i B¾n Ph¸o Hãa/nhangiaikk",
--"Sù kiÖn ¦u §·i N¹p ThÎ /event_uudai",
--"Sù kiÖn Quèc TÕ Phô N÷ 8 th¸ng 3 /phunu83",
"Tho¸t./no")
end
end

function testtongkim1()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
		Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
		return
	end
	
if GetTask(906) == 11223344 then
	SetTask(906, 0)
	idxitem = AddItem(0,10,5,random(1,5),0,0,0)
	SetTimeItem(idxitem,550324);
	Msg2SubWorld("Chóc mõng "..GetName().." sö dông Code Alpha Test nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
else
	Talk(1,"","Hack ha em")
end
end
function testtongkim2()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
		Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
		return
	end
	
if GetTask(906) == 44332211 then
	SetTask(906, 0)
	idxitem = AddEventItem(28)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(29)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(30)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(31)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(31)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(31)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(31)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(31)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(31)
	SetBindItem(idxitem , 1)
	Msg2SubWorld("Chóc mõng "..GetName().." sö dông Code Alpha Test nhËn ®­îc <color=yellow>1 Bé Thñy Tinh + Tinh Hång B¶o Th¹ch")
else
	Talk(1,"","Hack ha em")
end
end
function nhanthuongtrungthu1()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

if GetTask(994) == 6666 then
Talk(1,"","B¹n ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn thªm")
return
end
if GetLevel() < 80 then
Talk(1,"","§¼ng cÊp kh«ng ®ñ 80, kh«ng thÓ nhËn !")
return
end

if GetTask(994) == 0 then
		SetTask(994, 6666)	
		
		idxitem = AddEventItem(120)
		SetBindItem(idxitem , 1)		
		Msg2Player("B¹n nhËn ®­îc 1 Tiªn Th¶o Lé 6 Giê ")
		
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/nhandenbu.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
else
	Talk(1,"","B¹n ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn thªm")
end	
end

function nhanthuongtop100()
w,x,y = GetWorldPos()
if w ~= 17 then
Talk(1,"","PhÇn th­ëng chØ nhËn ®­îc ë Ph­îng T­êng ")
return
end

if GetLevel() < 120 then
Talk(1,"","§¼ng cÊp d­íi 120 kh«ng thÓ nhËn phÇn th­ëng !")
return
end
if TOP100[1] ~= "" then
Talk(1,"","PhÇn th­ëng TOP ®· ®­îc ®¹i hiÖp <color=yellow>"..TOP100[1].."<color> nhËn vµo lóc "..TOP100[3].."")
return
end

thoigian = tonumber(date("%H%M%d%m"))
TOP100[1] = GetName()
TOP100[2] = GetAccount()
TOP100[3] = thoigian
BANG = TaoBang(TOP100,"TOP100")
LuuBang("script/danhsach/duatop100.lua",BANG)

AddItem(0,10,6,1,0,0,0)
Msg2SubWorld("<color=pink>Chóc mõng ®¹i hiÖp "..GetName().." ®· nhËn th­ëng cÊp 120 ®Çu tiªn cña server: 1 B«n Tiªu")
AddGlobalCountNews("Chóc mõng ®¹i hiÖp "..GetName().." ®· nhËn th­ëng cÊp 120 ®Çu tiªn cña server: <color=yellow>1 B«n Tiªu",3)

end


function nhantrangbith()
if GetTask(906) == 5468791 then
	SetTask(906,0)
	
	
	ngay = tonumber(date("%d"))
	thang = tonumber(date("%m"))
	gio = tonumber(date("%H"))
	ngay = ngay + 3
	if ngay > mangthang[thang] then
		ngay = ngay - mangthang[thang]
		thang = thang + 1
	end
	
	item = RandomNew(1,9)
	if item == 1 then	
		idxitem = AddItem(0,4,19,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )	
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
	elseif item == 2 then
		idxitem = AddItem(0,2,79,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
	elseif item == 3 then
		idxitem = AddItem(0,5,24,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
	elseif item == 4 then
		idxitem = AddItem(0,8,22,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
	elseif item == 5 then
		idxitem = AddItem(0,7,41,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
	elseif item == 6 then
		idxitem = AddItem(0,6,26,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
	elseif item == 7 then
		idxitem = AddItem(0,9,19,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
	elseif item == 8 then
		idxitem = AddItem(0,3,35,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
	elseif item == 9 then
		idxitem = AddItem(0,3,36,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
	end			
	
	
end
end

function nhantrangbidhah()
if GetTask(906) == 111111 then
	SetTask(906,0)
	
		idxitem = AddItem(0,4,3,6,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng §ua Top ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 222222 then
	SetTask(906,0)
	
		idxitem = AddItem(0,7,15,8,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng §ua Top ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 333333 then
	SetTask(906,0)
	
		idxitem = AddItem(0,2,32,2,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng §ua Top ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 444444 then
	SetTask(906,0)
	
		idxitem = AddItem(0,5,24,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng §ua Top ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 555555 then
	SetTask(906,0)
	
		idxitem = AddItem(0,10,5,5,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng §ua Top ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		
		
end
end

function nhantrangbikhuyenmai()
if GetTask(906) == 9111 then
	SetTask(906,0)
	idxitem = AddItem(0,4,3,random(5,10),0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9112 then
	SetTask(906,0)
	idxitem = AddItem(0,3,3,random(5,10),0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9113 then
	SetTask(906,0)
	idxitem = AddItem(0,3,4,random(5,10),0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9114 then
	SetTask(906,0)
	idxitem = AddItem(0,9,3,random(5,10),0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9211 then
	SetTask(906,0)
	idxitem = AddItem(0,7,15,random(5,10),0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9212 then
	SetTask(906,0)
	idxitem = AddItem(0,2,30,random(5,10),0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9213 then
	SetTask(906,0)
	idxitem = AddItem(0,6,3,random(5,10),0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9214 then
	SetTask(906,0)
	idxitem = AddItem(0,5,5,random(5,10),0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9215 then
	SetTask(906,0)
	idxitem = AddItem(0,8,3,random(5,10),0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9311 then
	SetTask(906,0)
	idxitem = AddItem(0,9,4,1,0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9411 then
	SetTask(906,0)
	idxitem = AddItem(0,2,32,2,0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9511 then
	SetTask(906,0)
	idxitem = AddItem(0,4,19,1,0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9512 then
	SetTask(906,0)
	idxitem = AddItem(0,2,79,1,0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9513 then
	SetTask(906,0)
	idxitem = AddItem(0,5,24,1,0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")

	elseif GetTask(906) == 9514 then
	SetTask(906,0)
	idxitem = AddItem(0,8,22,1,0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")

	elseif GetTask(906) == 9515 then
	SetTask(906,0)
	idxitem = AddItem(0,7,41,1,0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")

	elseif GetTask(906) == 9516 then
	SetTask(906,0)
	idxitem = AddItem(0,6,26,1,0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")

	elseif GetTask(906) == 9517 then
	SetTask(906,0)
	idxitem = AddItem(0,9,19,1,0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")

	elseif GetTask(906) == 9518 then
	SetTask(906,0)
		idxitem = AddItem(0,3,35,1,0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
	elseif GetTask(906) == 9519 then
	SetTask(906,0)
	idxitem = AddItem(0,3,36,1,0,0,0)
	Msg2Player("Chóc mõng B¹n nhËn phÇn th­ëng N¹p ThÎ ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")

	
	

end
end

function giaiphong_thuongtop()
if CheckFreeBoxItem(4,364,1,1) == 0 then
		Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
		return
end
vt = 0

for i=1,getn(GIAI_PHONG) do
		if GetAccount() == GIAI_PHONG[i][1] then
				vt = i
				break
		end
end

if vt == 0 then
	Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch nhËn th­ëng !")
	return
end

if GIAI_PHONG[vt][2] ~= 0 then
Talk(1,"","B¹n ®· nhËn th­ëng vµo lóc: "..GIAI_PHONG[vt][2]..", kh«ng thÓ nhËn thªm !")
return
end
thoigian = tonumber(date("%H%M%d%m"))
GIAI_PHONG[vt][2] = thoigian
BANG = TaoBang(GIAI_PHONG,"GIAI_PHONG")
LuuBang("script/dstopeventgiaiphong.lua",BANG)

if vt == 1 then
	idxitem = AddItem(0,4,3,4,0,0,0)
	Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
	Msg2SubWorld("<color=green>[Th«ng B¸o] <color=red>Chóc mõng "..GetName().." ®· nhËn th­ëng TOP "..vt.." sù kiÖn §ua Top Bøc Th­ Göi MÑ: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif vt == 2 then
	idxitem = AddItem(0,2,30,8,0,0,0)
	Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
	Msg2SubWorld("<color=green>[Th«ng B¸o] <color=red>Chóc mõng "..GetName().." ®· nhËn th­ëng TOP "..vt.." sù kiÖn §ua Top Bøc Th­ Göi MÑ: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif vt == 3 then
	idxitem = AddItem(0,2,32,2,0,0,0)
	Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
	Msg2SubWorld("<color=green>[Th«ng B¸o] <color=red>Chóc mõng "..GetName().." ®· nhËn th­ëng TOP "..vt.." sù kiÖn §ua Top Bøc Th­ Göi MÑ: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif vt == 4 then
idxitem = AddItem(0,10,5,5,0,0,0)
	Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
	Msg2SubWorld("<color=green>[Th«ng B¸o] <color=red>Chóc mõng "..GetName().." ®· nhËn th­ëng TOP "..vt.." sù kiÖn §ua Top Bøc Th­ Göi MÑ: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif vt == 5 then
idxitem = AddItem(0,10,5,2,0,0,0)
	Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
	Msg2SubWorld("<color=green>[Th«ng B¸o] <color=red>Chóc mõng "..GetName().." ®· nhËn th­ëng TOP "..vt.." sù kiÖn §ua Top Bøc Th­ Göi MÑ: <color=yellow>"..GetNameItemBox(idxitem).."")

end


end

function nhanhotrox2()
ngay = tonumber(date("%d"))
if GetLevel() < 85 then
	if GetTask(476) ~= ngay then
		SetTask(476, ngay)
		SetTask(172, GetTask(172) + 6*60*60*18)
		Talk(1,"","B¹n ®· nhËn thµnh c«ng <color=yellow>6 giê nh©n ®«i kinh nghiÖm<color> hç trî t©n thñ !")
	else
		Talk(1,"","H«m nay ng­¬i ®· nhËn 6 giê nh©n ®«i råi, kh«ng thÓ nhËn thªm !")
	end
else
	Talk(1,"","§¼ng cÊp 85 trë lªn kh«ng thÓ nhËn hç trî nµy !")
end
end

function nhanthuonglandau()
if GetTask(448) < 10000  then
if  GetTask(435) >= 50 then
SayNew("Vui lßng chän trang bÞ muèn nhËn: ",3,
"Set An Bang + ChiÕu D¹ /nhanthuonglandau1",
"Set §Þnh Quèc + ChiÕu D¹ /nhanthuonglandau1",
"Tho¸t./no")
else
	Talk(1,"","TÝch lòy n¹p thÎ ®¹t: "..GetTask(435).." / 50 vµng")
end
elseif GetTask(448) < 20000  then
if  GetTask(435) >= 100 then
SayNew("Vui lßng chän trang bÞ muèn nhËn: ",3,
"Set An Bang Max Opt + Phi V©n /nhanthuonglandau1",
"Set §Þnh Quèc Max Opt + Phi V©n /nhanthuonglandau1",
"Tho¸t./no")
else
	Talk(1,"","TÝch lòy n¹p thÎ ®¹t: "..GetTask(435).." / 100 vµng")
end
else
Talk(1,"","Ng­¬i ®· nhËn ®ñ phÇn th­ëng n¹p thÎ lÇn ®Çu, kh«ng thÓ nhËn thªm")
end
end

function nhanthuonglandau1(nsel)
i = nsel + 1
if GetTask(448) >= 20000 then
Talk(1,"","B¹n ®· nhËn ®ñ phÇn th­ëng råi, kh«ng thÓ nhËn thªm lÇn n÷a")
return
end

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end

if GetTask(448) < 10000 and GetTask(435) >= 50 then
	SetTask(448, 10000)
	if i == 1 then
		idxitem = AddItem(0,4,3,2,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,3,3,2,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,3,4,2,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,9,3,2,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,10,5,5,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng n¹p thÎ lÇn ®Çu: <color=yellow>Set An Bang + ChiÕu D¹ Ngäc S­ Tö")
	else
		idxitem = AddItem(0,2,30,random(2,6),0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,7,15,random(2,6),0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,6,3,random(2,6),0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,8,3,random(2,6),0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,5,5,random(2,6),0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,10,5,5,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng n¹p thÎ lÇn ®Çu: <color=yellow>Set §Þnh Quèc + ChiÕu D¹ Ngäc S­ Tö")
	end	
	thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/NapTheLanDau.txt", "a");
				if LoginLog then
				write(LoginLog,"Lan 1 - ["..i.."] "..GetAccount().." - "..GetName().."\n");
				end
				closefile(LoginLog)

elseif GetTask(448) < 20000 and GetTask(435) >= 100 then
	SetTask(448, 20000)
	if i == 1 then
		idxitem = AddItem(0,4,3,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,3,3,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,3,4,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,9,3,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,10,8,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng n¹p thÎ lÇn ®Çu: <color=yellow>Set An Bang Max Opt + Phi V©n")
	else
		idxitem = AddItem(0,2,30,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,7,15,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,6,3,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,8,3,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,5,5,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,10,8,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng n¹p thÎ lÇn ®Çu: <color=yellow>Set §Þnh Quèc Max Opt + Phi V©n")
	end	
	thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/NapTheLanDau.txt", "a");
				if LoginLog then
				write(LoginLog,"Lan 2 - ["..i.."] "..GetAccount().." - "..GetName().."\n");
				end
				closefile(LoginLog)

else
	Talk(1,"","Ng­¬i ®· nhËn ®ñ, kh«ng thÓ nhËn thªm")
end

end

function denbutt()
Talk(1,"","Chøc n¨ng sÏ cËp nhËt vµo 17h00 ngµy 20/03/2018")
end

function event83_main()
SayNew("<color=green>LÔ Quan<color>: Sù kiÖn Quèc TÕ Phô N÷ 8-3 b¾t ®Çu vµo 17h00 ngµy 07/03/2018 - 17h00 ngµy 14/03/2018",7,
"GhÐp Bã Hoa Hång /event83_ghep",
"Mua Bã Hoa Hång [1 KNB]/event83_muabohohong",
"Gia h¹n sù kiÖn [2 KNB]/event83_giahan",
"NhËn th­ëng Vßng Quay May M¾n /event83_nhanthuong",
"Mua Vßng Quay May M¾n [10 KNB = 6  LÇn]/event83_mua",
"Quay Sè Tróng Th­ëng /event83_quayso",
"Tho¸t./no")
end



function event83_nhanthuong()
if GetTask(444) == 0 then
	if GetTask(446) >= 4000 then
		SetTask(444,1)
		SetTask(445, GetTask(445) + 1)
		Msg2Player("B¹n nhËn ®­îc 1 Vßng Quay May M¾n. Sè vßng quay hiÖn t¹i lµ: "..GetTask(445).." lÇn quay")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(445).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","B¹n ch­a ®ñ 4 tû kinh nghiÖm, kh«ng thÓ nhËn th­ëng")
	end
elseif GetTask(444) == 1 then
	if GetTask(446) >= 6000 then
		SetTask(444,2)
		SetTask(445, GetTask(445) + 1)
		Msg2Player("B¹n nhËn ®­îc 1 Vßng Quay May M¾n. Sè vßng quay hiÖn t¹i lµ: "..GetTask(445).." lÇn quay")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(445).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","B¹n ch­a ®ñ 6 tû kinh nghiÖm, kh«ng thÓ nhËn th­ëng")
	end
elseif GetTask(444) == 2 then
	if GetTask(446) >= 8000 then
		SetTask(444,3)
		SetTask(445, GetTask(445) + 1)
		Msg2Player("B¹n nhËn ®­îc 1 Vßng Quay May M¾n. Sè vßng quay hiÖn t¹i lµ: "..GetTask(445).." lÇn quay")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(445).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","B¹n ch­a ®ñ 8 tû kinh nghiÖm, kh«ng thÓ nhËn th­ëng")
	end	
elseif GetTask(444) == 3 then
	if GetTask(446) >= 10000 then
		SetTask(444,4)
		SetTask(445, GetTask(445) + 2)
		Msg2Player("B¹n nhËn ®­îc 2 Vßng Quay May M¾n. Sè vßng quay hiÖn t¹i lµ: "..GetTask(445).." lÇn quay")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(445).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","B¹n ch­a ®ñ 10 tû kinh nghiÖm, kh«ng thÓ nhËn th­ëng")
	end	

elseif GetTask(444) == 4 then
	if GetTask(446) >= 12000 then
		SetTask(444,5)
		SetTask(445, GetTask(445) + 2)
		Msg2Player("B¹n nhËn ®­îc 2 Vßng Quay May M¾n. Sè vßng quay hiÖn t¹i lµ: "..GetTask(445).." lÇn quay")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(445).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","B¹n ch­a ®ñ 12 tû kinh nghiÖm, kh«ng thÓ nhËn th­ëng")
	end		

elseif GetTask(444) == 5 then
	if GetTask(446) >= 16000 then
		SetTask(444,6)
		SetTask(445, GetTask(445) + 2)
		Msg2Player("B¹n nhËn ®­îc 2 Vßng Quay May M¾n. Sè vßng quay hiÖn t¹i lµ: "..GetTask(445).." lÇn quay")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(445).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","B¹n ch­a ®ñ 16 tû kinh nghiÖm, kh«ng thÓ nhËn th­ëng")
	end	

elseif GetTask(444) == 6 then
	if GetTask(446) >= 20000 then
		SetTask(444,7)
		SetTask(445, GetTask(445) + 3)
		Msg2Player("B¹n nhËn ®­îc 3 Vßng Quay May M¾n. Sè vßng quay hiÖn t¹i lµ: "..GetTask(445).." lÇn quay")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(445).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","B¹n ch­a ®ñ 20 tû kinh nghiÖm, kh«ng thÓ nhËn th­ëng")
	end		
else
Talk(1,"","B¹n ®· nhËn tÊt c¶ phÇn th­ëng mèc sù kiÖn")
end
end
function event83_mua()
if GetItemCount(17) < 10 then
Talk(1,"","B¹n kh«ng ®ñ 10 Kim Nguyªn B¶o, kh«ng thÓ mua Vßng Quay May M¾n")
return
end
for p=1,10 do DelItem(17) end
SetTask(445, GetTask(445) + 6)
Msg2Player("B¹n nhËn ®­îc 6 Vßng Quay May M¾n. Sè vßng quay hiÖn t¹i lµ: "..GetTask(445).." lÇn quay")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/MuaVongQuay10Kim.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(445).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		
end

function event83_ghep()
slcu = GetItemCount(583)
for p=1,GetItemCount(582) do
	if GetItemCount(579) >= 1 and GetItemCount(580) >= 1 and GetItemCount(581) >= 1 and GetItemCount(582) >= 1 and GetCash() >= 30000 then
		Pay(30000)
		for t=579,582 do DelItem(t) end
		AddEventItem(583)
	end
end

Msg2Player("B¹n nhËn ®­îc "..(GetItemCount(583)-slcu).." Bã Hoa Hång")
end

function event83_quayso()
if CheckFreeBoxItem(0,5,5,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng, xin kiÓm tra l¹i !")
return
end

if GetTask(445) <= 0 then
Talk(1,"","B¹n kh«ng cßn l­ît quay may m¾n nµo, kh«ng thÓ sö dông chøc n¨ng nµy")
return
end

SetTask(445, GetTask(445) - 1)
Msg2Player("B¹n ®· sö dông 1 lÇn Quay Sè. Sè lÇn quay cßn l¹i: "..GetTask(445).."")

sx = random(1,100)
if sx < 35 then
	idxitem = AddEventItem(random(28,31))
	Msg2Player("B¹n nhËn ®­îc <color=blue>"..GetNameItemBox(idxitem).."")
			thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/QuaySo.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetNameItemBox(idxitem).."] ["..GetTask(445).."] - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
elseif sx >= 35 and sx < 70 then
	idxitem = AddEventItem(random(61,66))
	Msg2Player("B¹n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).."")
			thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/QuaySo.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetNameItemBox(idxitem).."] ["..GetTask(445).."] - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
elseif sx >= 70 and sx < 80 then
	idxitem = AddEventItem(random(35,43))
	Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
			thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/QuaySo.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetNameItemBox(idxitem).."] ["..GetTask(445).."] - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
else
	if GetTask(445) > 5 then
	AddEventItem(339)
	Msg2Player("Chóc mõng "..GetName().." Quay Sè nhËn ®­îc <color=pink>M·nh Ngùa Phiªn Vò ")
			thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/QuaySo.txt", "a");
		if LoginLog then
		write(LoginLog,"[Manh Ngua Phien Vu] ["..GetTask(445).."] - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		idxitem = AddEventItem(random(28,31))
		Msg2Player("B¹n nhËn ®­îc <color=blue>"..GetNameItemBox(idxitem).."")
			thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/QuaySo.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetNameItemBox(idxitem).."] ["..GetTask(445).."] - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	
	end
end	


end

function event83_muabohohong()
knb = GetItemCount(17)
	if knb >= 1 then
		DelItem(17)
		if GetItemCount(17) == knb - 1 then
			for p=1,30 do
				AddEventItem(583)
			end
			Msg2Player("B¹n nhËn ®­îc 30 Bã Hoa Hång")
				thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/BoHoaHong.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng­¬i kh«ng ®ñ 1 Kim Nguyªn b¶o ®Ó mua vËt phÈm nµy")
	end
end
function event83_giahan()

if GetItemCount(17) < 2 then
Talk(1,"","Ng­¬i kh«ng mang theo 2 Kim Nguyªn B¶o, kh«ng thÓ gia h¹n")
return
end

if GetTask(447) >= 6 then
Talk(1,"","B¹n ®· ®¹t gia h¹n tèi ®a, kh«ng thÓ gia h¹n thªm")
return
end
if GetTask(447) == 0 and GetTask(446) < 4000 then
Talk(1,"","Ng­¬i ch­a ®¹t ®ñ giíi h¹n 4.000.000.000 kinh nghiÖm, kh«ng thÓ gia h¹n 1")
return
end
if GetTask(447) == 1 and GetTask(446) < 6000 then
Talk(1,"","Ng­¬i ch­a ®¹t ®ñ giíi h¹n 6.000.000.000 kinh nghiÖm, kh«ng thÓ gia h¹n 1")
return
end
if GetTask(447) == 2 and GetTask(446) < 8000 then
Talk(1,"","Ng­¬i ch­a ®¹t ®ñ giíi h¹n 8.000.000.000 kinh nghiÖm, kh«ng thÓ gia h¹n 1")
return
end
if GetTask(447) == 3 and GetTask(446) < 10000 then
Talk(1,"","Ng­¬i ch­a ®¹t ®ñ giíi h¹n 10.000.000.000 kinh nghiÖm, kh«ng thÓ gia h¹n 1")
return
end

DelItem(17)
DelItem(17)

SetTask(447, GetTask(447) + 1)
Msg2Player("Chóc mõng b¹n ®· th¨ng cÊp Sù KiÖn Quèc TÕ Phô N÷ 8-3 lªn: <color=pink>Gia H¹n "..GetTask(447).."")
inlog5("Gia han "..GetTask(447).." - "..GetAccount().." - "..GetName().."")

end

function tet_muavatpham()
SayNew("<color=green>LÔ Quan<color>: Ng­¬i muèn mua g× nµo? ",4,
"20 M©m B¹c = 20 v¹n l­îng /tet_muavatpham1",
"20 M©m Vµng = 10 vµng /tet_muavatpham2",
"2 Ngò S¾c B¨ng Tinh = 20 vµng/tet_muavatpham3", 
"Tho¸t./no")
end

function tet_muavatpham1()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end
vang = GetCash()
if GetCash() >= 200000 then
	Pay(200000)
	if GetCash() == vang - 200000 then
		for p=1,20 do AddEventItem(321) end
		Msg2Player("B¹n nhËn ®­îc 20 M©m B¹c")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/MamBac20Van.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(99).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 20 v¹n l­îng, kh«ng thÓ mua vËt phÈm nµy")
end
end

function tet_muavatpham2()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end
vang = GetTask(99)
if GetTask(99) >= 10 then
	SetTask(99 , GetTask(99) - 10)
	SetTask(101, GetTask(101) - 10)
	if GetTask(99) == vang - 10 and GetTask(101) == vang - 10 then
		for p=1,20 do AddEventItem(322) end
		Msg2Player("B¹n nhËn ®­îc 20 M©m Vµng")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/MamVang10Vang.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(99).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 10 vµng, kh«ng thÓ mua vËt phÈm nµy")
end
end


function tet_muavatpham3()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end
vang = GetTask(99)
if GetTask(99) >= 20 then
	SetTask(99 , GetTask(99) - 20)
	SetTask(101, GetTask(101) - 20)
	if GetTask(99) == vang - 20 and GetTask(101) == vang - 20 then
		for p=1,2 do AddEventItem(333) end
		Msg2Player("B¹n nhËn ®­îc 2 Ngò S¾c B¨ng Tinh")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NguSac20Vang.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(99).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 20 vµng, kh«ng thÓ mua vËt phÈm nµy")
end
end

function napthelandau()
SayNew("<color=green>LÔ Quan<color>: Vµng tÝch lòy trong sù kiÖn N¹p ThÎ LÇn §Çu cña ng­¬i hiÖn t¹i lµ: <color=yellow>"..GetTask(461).." Vµng",6,
"Gãi 1 [100 vµng]/napthelandau2",
"Gãi 2 [200 vµng]/napthelandau2",
"Gãi 3 [500 vµng]/napthelandau2",
"Gãi 4 [1500 vµng]/napthelandau2",
"Gãi 5 [3000 vµng]/napthelandau2",
"Tho¸t./no")
end

function napthelandau2(nsel)
i = nsel + 1
SetTaskTemp(1,i)
SayNew("<color=green>LÔ Quan<color>:  Ng­¬i cã ch¾c ch¾n muèn nhËn <color=yellow>Gãi "..i.." <color>kh«ng?\n Løu ý: Mçi nh©n vËt chØ ®­îc nhËn 1 gãi duy nhÊt vµ kh«ng thÓ giao dÞch ",2,
"Ta ch¾c ch¾n muèn nhËn Gãi "..i.." /napthelandau3",
"Tho¸t./no")
end

function napthelandau3()
vt = GetTaskTemp(1)
if GetTask(467) == 88888 then
Talk(1,"","Ng­¬i ®· nhËn quµ tÆng n¹p thÎ lÇn ®Çu, kh«ng thÓ nhËn thªm")
return
end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end
gold = 0
if vt == 1 then
gold = 100
elseif vt == 2 then
gold = 200
elseif vt == 3 then
gold = 500
elseif vt == 4 then
gold = 1500
elseif vt == 5 then
gold = 3000
end

if gold ~= 0 then
	if GetTask(461) >= gold then
			if GetTask(467) ~= 88888 then
				SetTask(467,88888)
				if vt == 1 then
					for p=1,4 do
						idxitem = AddEventItem(120)
						SetBindItem(idxitem , 1)
					end
					for p=1,2 do
						idxitem = AddEventItem(410)
						SetBindItem(idxitem , 1)
					end
					Msg2SubWorld("<color=green>Chóc mõng "..GetName().." nhËn th­ëng Gãi 1 KhuyÕn M·i N¹p ThÎ LÇn §Çu")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 1] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
				elseif vt == 2 then
					idxitem = AddItem(0,10,5,2,0,0,0)
					SetTimeItem(idxitem,550324);
					idxitem = AddEventItem(251)
					SetBindItem(idxitem , 1)
					for p=1,4 do
						idxitem = AddEventItem(120)
						SetBindItem(idxitem , 1)
					end
					for p=1,2 do
						idxitem = AddEventItem(410)
						SetBindItem(idxitem , 1)
					end
					Msg2SubWorld("<color=green>Chóc mõng "..GetName().." nhËn th­ëng Gãi 2 KhuyÕn M·i N¹p ThÎ LÇn §Çu")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 2] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
				elseif vt == 3 then
					idxitem = AddItem(0,10,5,5,0,0,0)
					SetTimeItem(idxitem,550324);
					idxitem = AddEventItem(251)
					SetBindItem(idxitem , 1)
					for p=1,4 do
						idxitem = AddEventItem(120)
						SetBindItem(idxitem , 1)
					end
					for p=1,2 do
						idxitem = AddEventItem(410)
						SetBindItem(idxitem , 1)
					end
					Msg2SubWorld("<color=green>Chóc mõng "..GetName().." nhËn th­ëng Gãi 3 KhuyÕn M·i N¹p ThÎ LÇn §Çu")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 3] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")	
				elseif vt == 4 then
					idxitem = AddItem(0,10,8,1,0,0,0)
					SetTimeItem(idxitem,550324);
					idxitem = AddEventItem(251)
					SetBindItem(idxitem , 1)
					for p=1,4 do
						idxitem = AddEventItem(120)
						SetBindItem(idxitem , 1)
					end
					for p=1,2 do
						idxitem = AddEventItem(410)
						SetBindItem(idxitem , 1)
					end
					Msg2SubWorld("<color=green>Chóc mõng "..GetName().." nhËn th­ëng Gãi 4 KhuyÕn M·i N¹p ThÎ LÇn §Çu")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 4] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
				elseif vt == 5 then
					idxitem = AddItem(0,10,6,1,0,0,0)
					SetTimeItem(idxitem,550324);
					idxitem = AddEventItem(251)
					SetBindItem(idxitem , 1)
					for p=1,4 do
						idxitem = AddEventItem(120)
						SetBindItem(idxitem , 1)
					end
					for p=1,2 do
						idxitem = AddEventItem(410)
						SetBindItem(idxitem , 1)
					end
					Msg2SubWorld("<color=green>Chóc mõng "..GetName().." nhËn th­ëng Gãi 5 KhuyÕn M·i N¹p ThÎ LÇn §Çu")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 5] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
				end
			else
				Talk(1,"","hack ha em")
			end
	else
		Talk(1,"","Ng­¬i kh«ng ®¹t ®iÒu kiÖn nhËn th­ëng Gãi "..vt..": <color=yellow>"..GetTask(461).." / "..gold.."")
	end
else
	Talk(1,"","hack ha em")
end
end

function denbu_phuchung()

if GetTask(464) ~= 2 then
Talk(1,"","Ng­¬i kh«ng ph¶i nh©n vËt thuéc m¸y chñ HuyÕt ChiÕn, kh«ng thÓ nhËn ®Òn bï ")
return
end

--if checkds() == 0 then
--	ttl = (GetTask(498) - 155) *  6
--	tld = GetTask(498) - 155
--	DEN_BU_PH[getn(DEN_BU_PH)+1] = {GetName(),GetAccount(),0,0,ttl,tld}
--	BANG2 = TaoBang(DEN_BU_PH,"DEN_BU_PH")
--	LuuBang("script/danhsachdenbuhuyetchien.lua",BANG2)
--	Msg2Player("CËp nhËt d÷ liÖu thµnh c«ng")
	
	
--end

SayNew("<color=green>LÔ Quan: <color>Ng­¬i muèn gióp g× ?",3,
"Rót Tiªn Th¶o Lé 6 Giê /denbu_phuchung1",
"Rót Tu LuyÖn §an /denbu_phuchung1",
"Tho¸t./no")
end


function denbu_phuchung1(nsel)

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end

vt = checkds()
if vt == 0 then
Talk(1,"","Lçi råi, vui lßng liªn hÖ Admin")
return
end
vtmin = 0
vtmax = 0
nameitem = ""
iditem = 0
if nsel == 0 then
vtmin = 3
vtmax = 5
nameitem = "Tiªn Th¶o Lé 6 Giê "
iditem = 120
else
vtmin = 4
vtmax = 6
nameitem = "Tu LuyÖn §an "
iditem = 410
end

--Msg2Player(""..vt.." "..vtmin.." "..vtmax.."")

if DEN_BU_PH[vt][vtmin] < DEN_BU_PH[vt][vtmax] then
	DEN_BU_PH[vt][vtmin] = DEN_BU_PH[vt][vtmin] + 1
	idxitem = AddEventItem(iditem)
	SetBindItem(idxitem , 1)
	Msg2Player("B¹n nhËn ®­îc 1 <color=green>"..nameitem.."")
	Msg2Player("Sè l­îng vËt phÈm ®· rót:<color=yellow> "..DEN_BU_PH[vt][vtmin].." / "..DEN_BU_PH[vt][vtmax].."")
	BANG2 = TaoBang(DEN_BU_PH,"DEN_BU_PH")
	LuuBang("script/danhsachdenbuhuyetchien.lua",BANG2)
	
else
	Talk(1,"","Ng­¬i ®· rót hÕt "..DEN_BU_PH[vt][vtmin].." / "..DEN_BU_PH[vt][vtmax].." "..nameitem..", kh«ng thÓ rót thªm n÷a") 
end
end
function checkds()
for i=1,getn(DEN_BU_PH) do
	if GetName() == DEN_BU_PH[i][1] then
		return i
	end
end
return 0
end

function denbubk120()
if CheckFreeBoxItem(0,4,3,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 1 « míi cã thÓ nhËn !")
	return
end
if GetTask(464) == 1 then
	SetTask(464, 11)
	idxitem = AddEventItem(19)
	SetBindItem(idxitem, 1)
	idxitem = AddEventItem(19)
	SetBindItem(idxitem, 1)
	Msg2Player("B¹n nhËn ®­îc 2 Bi Kip 120, h·y sö dông ®Ó t¨ng thªm 2 ®iÓm Kü N¨ng")
elseif GetTask(464) == 0 then
	Talk(1,"","Ng­¬i kh«ng ph¶i lµ gamer TuyÖt T×nh KiÕm, kh«ng thÓ nhËn")
else
	Talk(1,"","Ng­¬i ®· nhËn ®Òn bï nµy råi, kh«ng thÓ nhËn thªm")
end
end

function nhanqua()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end
if GetTask(462) == 0 then
	SetTask(462, 1)
	idxitem = AddEventItem(120)
	SetBindItem(idxitem, 1)
	idxitem = AddEventItem(120)
	SetBindItem(idxitem, 1)
	idxitem = AddEventItem(410)
	SetBindItem(idxitem, 1)
	Msg2Player("B¹n nhËn ®­îc 2 b×nh Tiªn Th¶o Lé 6 Giê vµ 1 B×nh Tu LuyÖn §an")
else
	Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn thªm")
end
end



function nhanhotrocapduoi100()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end
if GetLevel() < 100 then
	if GetTask(350) == 0 then
		SetTask(350, 9999)
		for p=1,5 do
			idxitem = AddEventItem(119)
			SetBindItem(idxitem , 1)
		end
		for p=1,5 do
			idxitem = AddEventItem(118)
			SetBindItem(idxitem , 1)
		end		
		Msg2Player("B¹n nhËn ®­îc 5 b×nh Tiªn Th¶o Lé 3 Giê ")
		Msg2Player("B¹n nhËn ®­îc 5 b×nh N÷ Nhi Hång 1 Giê ")
	else
		Talk(1,"","Ng­¬i ®· nhËn 1 lÇn råi, kh«ng thÓ nhËn thªm")
	end
else
	Talk(1,"","§¼ng cÊp tõ 100 trë lªn kh«ng thÓ nhËn hç trî ")
end
end
function dangkytanthu2()
if GetLevel() < 135 then
	SetTask(470,9999)
	SetRevPos(41)
	NewWorld(4, 202*8,200*16)
	Msg2SubWorld("Chóc mõng "..GetName().." ®· ®¨ng ký thµnh c«ng Sù KiÖn T©n Thñ 2 ")
	Msg2Player("L­u ý: CÊp ®é tõ 135 trë lªn kh«ng thÓ vµo l¹i, cÊp ®é 145 tù ®éng Kick khái b¶n ®å t©n thñ ")
else
	Talk(1,"","§¼ng cÊp 135 trë lªn, kh«ng thÓ ®¨ng ký ")
end
end

function nhangiaikk()

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end


vitri = 0
for i=1,getn(KHUYEN_KHICH) do
	if GetName() == KHUYEN_KHICH[i][1] then
		vitri = i
		break
	end
end

if vitri == 0 then
Talk(1,"","Ng­¬i kh«ng cã tªn trong danh s¸ch nhËn gi¶i")
return
end

if KHUYEN_KHICH[vitri][2]  == 0 then
Talk(1,"","Ng­¬i ®· nhËn gi¶i nµy råi, kh«ng thÓ nhËn thªm")
return
end
	if vitri == 1 then
		AddItem(0,10,6,1,0,0,0)
		for p=1,20 do
			AddEventItem(414)
			AddEventItem(415)
		end
		Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng H¹ng 1 - Sù KiÖn Ph¸o Hoa")
	elseif vitri == 2 then
		AddItem(0,10,6,1,0,0,0)
		for p=1,15 do
			AddEventItem(414)
			AddEventItem(415)
		end
		Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng H¹ng "..vitri.." - Sù KiÖn Ph¸o Hoa")
	elseif vitri == 3 then
		AddItem(0,10,8,1,0,0,0)
		for p=1,10 do
			AddEventItem(414)
			AddEventItem(415)
		end
		Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng H¹ng "..vitri.." - Sù KiÖn Ph¸o Hoa")
	elseif vitri >= 4 and vitri <= 10 then
		AddItem(0,10,5,5,0,0,0)
		for p=1,5 do
			AddEventItem(414)
			AddEventItem(415)
		end
		Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng H¹ng "..vitri.." - Sù KiÖn Ph¸o Hoa")
	end
	KHUYEN_KHICH[vitri][2] = 0
	BANG2 = TaoBang(KHUYEN_KHICH,"KHUYEN_KHICH")
	LuuBang("script/danhsachphaohoa.lua",BANG2)
	
end

function nhandenbudaihoi()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end

vitri = 0
for i=1,getn(DS_DEN_BU) do
	if GetName() == DS_DEN_BU[i][1] then
		vitri = i
		break
	end
end

if vitri == 0 then
Talk(1,"","Ng­¬i kh«ng cã tªn trong danh s¸ch ®Òn bï ")
return
end

if DS_DEN_BU[vitri][2]  == 0 then


	if vitri <= 3 then
		Talk(1,"","Vui lßng liÖn hÖ Hç Trî Trùc TuyÕn ®Ó ph¸t th­ëng riªng do sè l­îng nh©n vËt v­ît qu¸ sè l­îng r­¬ng chøa ®å ")
	else
		idxitem = AddItem(0,10,5,5,0,0,0)
		SetTimeItem(idxitem,550324);
		for p=1,10 do
		AddEventItem(414)  
		AddEventItem(415)  
		end
	end

	DS_DEN_BU[vitri][2] = 1
	Msg2SubWorld("<color=yellow>"..GetName().." <color=red>®· nhËn th­ëng TOP "..vitri.." Cao Thñ t¹i LÔ Quan")
	BANG2 = TaoBang(DS_DEN_BU,"DS_DEN_BU")
	LuuBang("script/global/danhsachdenbu2.lua",BANG2)
else
	Talk(1,"","Ng­¬i ®· nhËn ®Òn bï råi, kh«ng thÓ nhËn thªm")
end
end


function nhagiao_max()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end
task = GetTask(479)
if GetTask(479) >= 5000000 and GetTask(479) < 5010000 then
	SetTask(479, GetTask(479) + 10000)
	if GetTask(479) == task +  10000 then
			sx = random(1,100)
			if sx < 70 then
				inlog5("NHAN MAX 1: "..GetAccount().." - "..GetName().."")
				for i=1,4 do 
					idxitem = AddEventItem(120)
					SetBindItem(idxitem , 1)
				end
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Max Sù KiÖn nhËn ®­îc: <color=green>4 Tiªn Th¶o Lé 6 Giê ")
				
			elseif sx >= 70 and sx < 95 then
				inlog5("NHAN MAX 2: "..GetAccount().." - "..GetName().."")
				for i=28,30 do 
					idxitem = AddEventItem(i)
					SetBindItem(idxitem , 1)
				end
				for i=1,6 do 
					idxitem = AddEventItem(31)
					SetBindItem(idxitem , 1)
				end
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Max Sù KiÖn nhËn ®­îc: <color=green>1 Bé THBT + 1 Bé Thñy Tinh")
			elseif sx >= 95 and sx < 100 then
				inlog5("NHAN MAX 3: "..GetAccount().." - "..GetName().."")
				idxitem = AddEventItem(19)
				SetBindItem(idxitem , 1)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Max Sù KiÖn nhËn ®­îc: <color=green>Bi Kip 120")
			else
				inlog5("NHAN MAX 4: "..GetAccount().." - "..GetName().."")
				idxitem = AddItem(0,10,5,5,0,0,0)
				SetTimeItem(idxitem,550324);
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Max Sù KiÖn nhËn ®­îc: <color=green>ChiÕu D¹ Ngäc S­ Tö ")
			end
	else
		Talk(1,"","hack ha em")
	end	
else
	if GetTask(479) < 5000000 then
		Talk(1,"","B¹n ch­a ®¹t ®­îc mèc Max Sù KiÖn: <color=yellow>"..(GetTask(479)*1000).." / 5.000.000.000")
	else
		Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn thªm")
	end
end
end

function nhagiao_main()
SayNew("<color=green>LÔ Quan<color>: Sù kiÖn Nhµ Gi¸o ViÖt Nam tõ 0h00 ngµy 16/11/2017 ®Õn 17h00 ngµy 22/11/2017",6,
"ChÕ t¹o S¸ch /nhagiao_chetao",
"Mua H¹t May M¾n /nhagiao_muahatmayman",
"Gia H¹n Sù KiÖn /nhagiao_giahan",
"PhÇn th­ëng Max Sù KiÖn /nhagiao_max",
"§æi §iÓm TÝch Lòy Sù KiÖn /nhagiao_doidiem",
"Tho¸t./no")
end

function nhagiao_doidiem()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end

SayNew("HiÖn t¹i ng­¬i ®ang cã <color=red>"..GetTask(481).." ®iÓm TÝch Lòy Sù KiÖn<color>, ng­¬i muèn ®æi phÇn th­ëng nµo?",6,
"Gãi C¬ B¶n [25 ®iÓm]/nhagiao_doidiem2",
"Gãi ThÇn M· [150 ®iÓm]/nhagiao_doidiem2",
"Gãi §Þnh Quèc [250 ®iÓm]/nhagiao_doidiem2",
"Gãi An Bang [350 ®iÓm]/nhagiao_doidiem2",
"Gãi VIP [600 ®iÓm]/nhagiao_doidiem2",
"Tho¸t./no")
end

function nhagiao_doidiem2(nsel)
i = nsel + 1
if i == 1 then
	SayNew("B¹n cã ch¾c ch¾n ®æi 25 ®iÓm TÝch Lòy Sù KiÖn ®Ó lÊy: 30% Tiªn Th¶o Lé 6H , 30% N÷ Nhi Hång 6H, 20% Vâ L©m MËt TÞch, 20% TÈy Tñy Kinh",2,
	"Ta ®ång ý ®æi /nhagiao_doidiem_1",
	"Tho¸t./no")
elseif i == 2 then
	SayNew("B¹n cã ch¾c ch¾n ®æi 150 ®iÓm TÝch Lòy Sù KiÖn ®Ó lÊy: 25% §Ých L«, 25% TuyÖt ¶nh, 20% ¤ V©n §¹p TuyÕt, 20% XÝch Thè, 10% ChiÕu D¹ ",2,
	"Ta ®ång ý ®æi /nhagiao_doidiem_2",
	"Tho¸t./no")
elseif i == 3 then
	SayNew("B¹n cã ch¾c ch¾n ®æi 250 ®iÓm TÝch Lòy Sù KiÖn ®Ó lÊy: 30% Bi Kip 120, 70% §Þnh Quèc ",2,
	"Ta ®ång ý ®æi /nhagiao_doidiem_3",
	"Tho¸t./no")
elseif i == 4 then
	SayNew("B¹n cã ch¾c ch¾n ®æi 350 ®iÓm TÝch Lòy Sù KiÖn ®Ó lÊy: 30% Bi Kip 120, 70% An Bang CÊp 1 - 2",2,
	"Ta ®ång ý ®æi /nhagiao_doidiem_4",
	"Tho¸t./no")
elseif i == 5 then
	SayNew("B¹n cã ch¾c ch¾n ®æi 600 ®iÓm TÝch Lòy Sù KiÖn ®Ó lÊy: 30% Bi Kip 120, 60% Trang bÞ An Bang CÊp 1 - 5, 10% Phi V©n ThÇn M· ",2,
	"Ta ®ång ý ®æi /nhagiao_doidiem_5",
	"Tho¸t./no")
end
end


function nhagiao_doidiem_1()
diem = 25
task = GetTask(481)
if task < diem then
Talk(1,"","B¹n kh«ng ®ñ "..diem.." ®iÓm TÝch Lòy Sù KiÖn, kh«ng thÓ ®æi phÇn th­ëng")
return
end
SetTask(481, GetTask(481) - diem)
if GetTask(481) == task - diem then
	bk = random(1,100)
	if bk < 10 then
			AddEventItem(406)
	end
	sx = random(1,100)
	if sx < 45 then
		idxitem = AddEventItem(120)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." ")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 45 and sx < 90 then
		idxitem = AddEventItem(116)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." ")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 90 and sx < 95 then
		idxitem = AddEventItem(0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." ")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddEventItem(1)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." ")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end
function nhagiao_doidiem_2()
diem = 150
task = GetTask(481)
if task < diem then
Talk(1,"","B¹n kh«ng ®ñ "..diem.." ®iÓm TÝch Lòy Sù KiÖn, kh«ng thÓ ®æi phÇn th­ëng")
return
end
SetTask(481, GetTask(481) - diem)
if GetTask(481) == task - diem then	
	bk = random(1,100)
	if bk < 25 then
			AddEventItem(406)
	end
	sx = random(1,100)
	if sx < 25 then
		idxitem = AddItem(0,10,5,4,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().." ")
	elseif sx >= 25 and sx < 50 then
		idxitem = AddItem(0,10,5,3,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().." ")
	elseif sx >= 50 and sx < 75 then
		idxitem = AddItem(0,10,5,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().." ")
	elseif sx >= 75 and sx < 95 then
		idxitem = AddItem(0,10,5,2,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().." ")
	else
		idxitem = AddItem(0,10,5,5,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().." ")
	end	
	
	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end
function nhagiao_doidiem_3()
diem = 250
task = GetTask(481)
if task < diem then
Talk(1,"","B¹n kh«ng ®ñ "..diem.." ®iÓm TÝch Lòy Sù KiÖn, kh«ng thÓ ®æi phÇn th­ëng")
return
end
SetTask(481, GetTask(481) - diem)
if GetTask(481) == task - diem then
		AddEventItem(406)
	sx = random(1,100)
	if sx < 15 then
		idxitem = AddItem(0,7,15,random(1,10),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 15 and sx < 25 then
		idxitem = AddItem(0,2,30,random(1,10),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 25 and sx < 45 then
		idxitem = AddItem(0,6,3,random(1,10),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 45 and sx < 55 then
		idxitem = AddItem(0,8,3,random(1,10),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 55 and sx < 70 then
		idxitem = AddItem(0,5,5,random(1,10),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddEventItem(19)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end

function nhagiao_doidiem_4()
diem = 350
task = GetTask(481)
if task < diem then
Talk(1,"","B¹n kh«ng ®ñ "..diem.." ®iÓm TÝch Lòy Sù KiÖn, kh«ng thÓ ®æi phÇn th­ëng")
return
end
SetTask(481, GetTask(481) - diem)
if GetTask(481) == task - diem then
		AddEventItem(406)
	sx = random(1,100)
	if sx < 40 then
		idxitem = AddEventItem(19)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 40 and sx < 55 then
		idxitem = AddItem(0,4,3,random(1,2),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 55 and sx < 70 then
		idxitem = AddItem(0,3,3,random(1,2),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 70 and sx < 85 then
		idxitem = AddItem(0,3,4,random(1,2),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 85 and sx <= 100 then
		idxitem = AddItem(0,9,3,random(1,2),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end


function nhagiao_doidiem_5()
diem = 600
task = GetTask(481)
if task < diem then
Talk(1,"","B¹n kh«ng ®ñ "..diem.." ®iÓm TÝch Lòy Sù KiÖn, kh«ng thÓ ®æi phÇn th­ëng")
return
end
SetTask(481, GetTask(481) - diem)
if GetTask(481) == task - diem then

	AddEventItem(406)
	AddEventItem(406)
	sx = random(1,100)
	if sx < 30 then
		idxitem = AddEventItem(19)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 30 and sx < 45 then
		idxitem = AddItem(0,4,3,random(1,3),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 45 and sx < 60 then
		idxitem = AddItem(0,3,3,random(1,3),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 60 and sx < 75 then
		idxitem = AddItem(0,3,4,random(1,3),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 75 and sx < 90 then
		idxitem = AddItem(0,9,3,random(1,3),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddEventItem(19)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
		--idxitem = AddItem(0,10,8,1,0,0,0)
		--Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		--inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end

function nhagiao_giahan()
SayNew("<color=green>LÔ Quan<color>: §Ó gia h¹n sù kiÖn cÇn 1 Kim Nguyªn B¶o, ng­¬i ch¾c ch¾n muèn gi¸ h¹n chø?",2,
"Ta muèn gia h¹n sù kiÖn /nhagiao_giahan1",
"Tho¸t./no")
end

function nhagiao_giahan1()
	if GetTask(480) == 2 then
		Talk(1,"","Giíi h¹n sù kiÖn cña b¹n ®· ®¹t mèc tèi ®a <color=yellow>2 lÇn<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 1 then
		DelItem(17)
		if GetItemCount(17) == knb - 1 then
			SetTask(480, GetTask(480) + 1)
			Msg2Player("B¹n ®· gia h¹n sù kiÖn Nhµ Gi¸o ViÕt Nam 20-11 lªn <color=green>"..GetTask(480).." lÇn")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(343).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng­¬i kh«ng ®ñ 1 Kim Nguyªn b¶o ®Ó gia h¹n sù kiÖn")
	end
end



function nhagiao_muahatmayman()
SayNew("<color=green>LÔ Quan: <color>: B¹n cã ch¾c ch¾n muèn mua <color=yellow>20 H¹t May M¾n = 10 Vµng<color> kh«ng?",2,
"Ta ®ång ý mua/nhagiao_muahatmayman1",
"Tho¸t./no")
end

function nhagiao_muahatmayman1()
if CheckFreeBoxItem(4,260,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
return
end

sl = GetItemCount(260) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 10 and GetTask(101) >= 10 then
	SetTask(99,GetTask(99) - 10)
	SetTask(101,GetTask(101) - 10)
	if GetTask(99) == vang-10 and GetTask(101) == vang2 - 10 and GetTask(99) == GetTask(101) then
		for i=1,20 do AddEventItem(189) end
		if GetItemCount(189) ~= sl + 20 then
			Talk(1,"","R­¬ng cña b¹n ®· Full nªn sÏ cã 1 Ýt H¹t May M¾n bÞ mÊt.")
		end
		Msg2Player("B¹n nhËn ®­îc 20 H¹t May M¾n")
		inlog2(""..GetAccount().." - "..GetName().." - "..GetLevel().." .Vang con: "..GetTask(99).." !")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>10<color> vµng, kh«ng thÓ giao dÞch!")
end
end


function nhagiao_chetao()
SayNew("<color=green>LÔ Quan<color>: Vui lßng chän lo¹i s¸ch muèn chÕ t¹o ",7,
"ChÕ t¹o 1 Cuèn S¸ch Xanh/chetao_sach1",
"ChÕ t¹o 1 Cuèn S¸ch Vµng/chetao_sach1",
"ChÕ t¹o 1 Cuèn S¸ch TÝm/chetao_sach1",
"ChÕ t¹o 10 Cuèn S¸ch Xanh/chetao_sach1",
"ChÕ t¹o 10 Cuèn S¸ch Vµng/chetao_sach1",
"ChÕ t¹o 10 Cuèn S¸ch TÝm/chetao_sach1",
"Tho¸t./no")
end

function chetao_sach1(nsel)
i = nsel + 1
if i == 1 then
chetao_sach2(178,179,180,0,0,183,"",1,"Cuèn S¸ch Xanh")
elseif i == 2 then
chetao_sach2(178,179,180,181,10000,184,"Hép Mùc Mµu §en",1,"Cuèn S¸ch Vµng")
elseif i == 3 then
chetao_sach2(178,179,180,182,20000,185,"Hép Mùc Mµu Xanh",1,"Cuèn S¸ch TÝm")
elseif i == 4 then
chetao_sach2(178,179,180,0,0,183,"",10,"Cuèn S¸ch Xanh")
elseif i == 5 then
chetao_sach2(178,179,180,181,100000,184,"Hép Mùc Mµu §en",10,"Cuèn S¸ch Vµng")
elseif i == 6 then
chetao_sach2(178,179,180,182,200000,185,"Hép Mùc Mµu Xanh",10,"Cuèn S¸ch TÝm")
end
end

function chetao_sach2(nl1, nl2, nl3, nl4, tienvan, idnew, tennl, soluong,newname)
sl1 = GetItemCount(nl1)
sl2 = GetItemCount(nl2)
sl3 = GetItemCount(nl3)
sl4 = GetItemCount(nl4)
vang = GetCash()

if nl4 == 0 then
	if GetItemCount(nl1) >= soluong and GetItemCount(nl2) >= soluong and GetItemCount(nl3) >= soluong then
		for i=1,soluong do 
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
		end
		if GetItemCount(nl1) == sl1 - soluong and GetItemCount(nl2) == sl2 - soluong and GetItemCount(nl3) == sl3 - soluong then 
			for p=1,soluong do 
				AddEventItem(idnew)
			end
			Msg2Player("B¹n nhËn ®­îc "..soluong.." "..newname.."")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i")
	end
else
	if GetItemCount(nl1) >= soluong and GetItemCount(nl2) >= soluong and GetItemCount(nl3) >= soluong and GetItemCount(nl4) >= soluong and GetCash() >= tienvan then
		for i=1,soluong do 
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
		end
		Pay(tienvan)
		if GetItemCount(nl1) == sl1 - soluong and GetItemCount(nl2) == sl2 - soluong and GetItemCount(nl3) == sl3 - soluong and GetItemCount(nl4) == sl4 - soluong and GetCash() == vang - tienvan then 
			for p=1,soluong do 
				AddEventItem(idnew)
			end
			Msg2Player("B¹n nhËn ®­îc "..soluong.." "..newname.."")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i")
	end
end
end

function thuyenrong_main()
SayNew("<color=green>LÔ Quan<color>: Sù kiÖn §ua ThuyÒn Rång tõ 12h00 ngµy 20/10/2017 ®Õn 17h00 ngµy 27/10/2017",2,
--"ChÕ t¹o 1 ThuyÒn Rång /chetao_thuyen1",
--"ChÕ t¹o 10 ThuyÒn Rång /chetao_thuyen1",
--"Mua Trèng /thuyenrong_muatrong",
--"Gia H¹n Sù KiÖn /thuyenrong_giahan",
--"§æi §iÓm TÝch Lòy Sù KiÖn /thuyenrong_doidiem",
"PhÇn th­ëng Max Sù KiÖn /thuyenrong_max",
"Tho¸t./no")
end


function thuyenrong_max()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end
if GetTask(489) == 1300000 then
	SetTask(489, GetTask(489) + 10000)
	if GetTask(489) == 1310000 then
			sx = random(1,100)
			if sx < 70 then
				inlog5("NHAN MAX 1: "..GetAccount().." - "..GetName().."")
				for i=1,4 do 
					idxitem = AddEventItem(120)
					SetBindItem(idxitem , 1)
				end
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Max Sù KiÖn nhËn ®­îc: <color=green>4 Tiªn Th¶o Lé 6 Giê ")
				
			elseif sx >= 70 and sx < 95 then
				inlog5("NHAN MAX 2: "..GetAccount().." - "..GetName().."")
				for i=28,30 do 
					idxitem = AddEventItem(i)
					SetBindItem(idxitem , 1)
				end
				for i=1,6 do 
					idxitem = AddEventItem(31)
					SetBindItem(idxitem , 1)
				end
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Max Sù KiÖn nhËn ®­îc: <color=green>1 Bé THBT + 1 Bé Thñy Tinh")
			elseif sx >= 95 and sx < 100 then
				inlog5("NHAN MAX 3: "..GetAccount().." - "..GetName().."")
				idxitem = AddEventItem(19)
				SetBindItem(idxitem , 1)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Max Sù KiÖn nhËn ®­îc: <color=green>Bi Kip 120")
			else
				inlog5("NHAN MAX 4: "..GetAccount().." - "..GetName().."")
				idxitem = AddItem(0,10,5,5,0,0,0)
				SetTimeItem(idxitem,550324);
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Max Sù KiÖn nhËn ®­îc: <color=green>ChiÕu D¹ Ngäc S­ Tö ")
			end
	else
		Talk(1,"","hack ha em")
	end	
else
	if GetTask(489) < 1300000 then
		Talk(1,"","B¹n ch­a ®¹t ®­îc mèc Max Sù KiÖn: <color=yellow>"..GetTask(489).."000 / 1300000000")
	else
		Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn thªm")
	end
end
end

function thuyenrong_doidiem()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end

SayNew("HiÖn t¹i ng­¬i ®ang cã <color=red>"..GetTask(488).." ®iÓm TÝch Lòy Sù KiÖn<color>, ng­¬i muèn ®æi phÇn th­ëng nµo?",9,
"§æi 15 ®iÓm /thuyenrong_doidiem2",
"§æi 100 ®iÓm /thuyenrong_doidiem2",
"§æi 200 ®iÓm /thuyenrong_doidiem2",
"§æi 300 ®iÓm /thuyenrong_doidiem2",
"§æi 400 ®iÓm /thuyenrong_doidiem2",
"§æi 401 ®iÓm /thuyenrong_doidiem2",
"§æi 402 ®iÓm /thuyenrong_doidiem2",
"§æi 403 ®iÓm /thuyenrong_doidiem2",
"Tho¸t./no")
end

function thuyenrong_doidiem2(nsel)

i = nsel + 1
if i == 1 then
	SayNew("B¹n cã ch¾c ch¾n ®æi 15 ®iÓm TÝch Lòy Sù KiÖn ®Ó lÊy: 30% Tiªn Th¶o Lé 6 Giê, 30% N÷ Nhi Hång 6 Giê, 20% TÈy Tñy Kinh, 20% Vâ L©m MËt TÞch",2,
	"Ta ®ång ý ®æi /thuyenrong_doidiem_1",
	"Tho¸t./no")
elseif i == 2 then
	SayNew("B¹n cã ch¾c ch¾n ®æi 100 ®iÓm TÝch Lòy Sù KiÖn ®Ó lÊy: 25% §Ých L«, 25% TuyÖt ¶nh, 20% ¤ V©n §¹p TuyÕt, 20% XÝch Thè, 10% ChiÕu D¹ ",2,
	"Ta ®ång ý ®æi /thuyenrong_doidiem_2",
	"Tho¸t./no")
elseif i == 3 then
	SayNew("B¹n cã ch¾c ch¾n ®æi 200 ®iÓm TÝch Lòy Sù KiÖn ®Ó lÊy: 15% Nãn §Þnh Quèc, 15% ¸o §Þnh Quèc, 20% Giµy §Þnh Quèc, 20% Bao Tay §Þnh Quèc, 20% Th¾t L­ng §Þnh Quèc, 10% ChiÕu D¹ ",2,
	"Ta ®ång ý ®æi /thuyenrong_doidiem_3",
	"Tho¸t./no")
elseif i == 4 then
	SayNew("B¹n cã ch¾c ch¾n ®æi 300 ®iÓm TÝch Lòy Sù KiÖn ®Ó lÊy: 30% Bi Kip 120, 15% NhÉn Cóc Hoa, 15% NhÉn Kª HuyÕt, 15% Ngäc Béi AB, 15% D©y ChuyÒn An Bang, 10% ChiÕu D¹ ",2,
	"Ta ®ång ý ®æi /thuyenrong_doidiem_4",
	"Tho¸t./no")
elseif i == 5 then
	SayNew("B¹n cã ch¾c ch¾n ®æi 400 ®iÓm TÝch Lòy Sù KiÖn ®Ó lÊy: 30% Bi Kip 120, 67% Ngäc Béi An Bang, 3% Phi V©n ThÇn M· ",2,
	"Ta ®ång ý ®æi /thuyenrong_doidiem_5",
	"Tho¸t./no")
elseif i == 6 then
	SayNew("B¹n cã ch¾c ch¾n ®æi 401 ®iÓm TÝch Lòy Sù KiÖn ®Ó lÊy: 30% Bi Kip 120, 67% NhÉn Cóc Hoa, 3% Phi V©n ThÇn M· ",2,
	"Ta ®ång ý ®æi /thuyenrong_doidiem_6",
	"Tho¸t./no")
elseif i == 7 then
	SayNew("B¹n cã ch¾c ch¾n ®æi 402 ®iÓm TÝch Lòy Sù KiÖn ®Ó lÊy: 30% Bi Kip 120, 67% NhÉn Kª HuyÕt, 3% Phi V©n ThÇn M· ",2,
	"Ta ®ång ý ®æi /thuyenrong_doidiem_7",
	"Tho¸t./no")
elseif i == 8 then
	SayNew("B¹n cã ch¾c ch¾n ®æi 403 ®iÓm TÝch Lòy Sù KiÖn ®Ó lÊy: 30% Bi Kip 120, 67%D©y ChuyÒn An Bang, 3% Phi V©n ThÇn M· ",2,
	"Ta ®ång ý ®æi /thuyenrong_doidiem_8",
	"Tho¸t./no")
end
end

function thuyenrong_doidiem_1()
diem = 15
task = GetTask(488)
if task < diem then
Talk(1,"","B¹n kh«ng ®ñ "..diem.." ®iÓm TÝch Lòy Sù KiÖn, kh«ng thÓ ®æi phÇn th­ëng")
return
end
SetTask(488, GetTask(488) - diem)
if GetTask(488) == task - diem then
	sx = random(1,100)
	if sx < 30 then
		idxitem = AddEventItem(120)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 30 and sx < 60 then
		idxitem = AddEventItem(116)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 60 and sx < 80 then
		idxitem = AddEventItem(0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddEventItem(1)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end


function thuyenrong_doidiem_2()
diem = 100
task = GetTask(488)
if task < diem then
Talk(1,"","B¹n kh«ng ®ñ "..diem.." ®iÓm TÝch Lòy Sù KiÖn, kh«ng thÓ ®æi phÇn th­ëng")
return
end
SetTask(488, GetTask(488) - diem)
if GetTask(488) == task - diem then
	sx = random(1,100)
	if sx < 25 then
		idxitem = AddItem(0,10,5,4,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 25 and sx < 50 then
		idxitem = AddItem(0,10,5,3,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 50 and sx < 75 then
		idxitem = AddItem(0,10,5,1,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 75 and sx < 95 then
		idxitem = AddItem(0,10,5,2,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddItem(0,10,5,5,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end


function thuyenrong_doidiem_3()
diem = 200
task = GetTask(488)
if task < diem then
Talk(1,"","B¹n kh«ng ®ñ "..diem.." ®iÓm TÝch Lòy Sù KiÖn, kh«ng thÓ ®æi phÇn th­ëng")
return
end
SetTask(488, GetTask(488) - diem)
if GetTask(488) == task - diem then
	sx = random(1,100)
	if sx < 15 then
		idxitem = AddItem(0,7,15,random(1,10),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 15 and sx < 30 then
		idxitem = AddItem(0,2,30,random(1,10),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 30 and sx < 50 then
		idxitem = AddItem(0,6,3,random(1,10),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 50 and sx < 70 then
		idxitem = AddItem(0,8,3,random(1,10),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 70 and sx < 95 then
		idxitem = AddItem(0,5,5,random(1,10),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddItem(0,10,5,5,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end

function thuyenrong_doidiem_4()
diem = 300
task = GetTask(488)
if task < diem then
Talk(1,"","B¹n kh«ng ®ñ "..diem.." ®iÓm TÝch Lòy Sù KiÖn, kh«ng thÓ ®æi phÇn th­ëng")
return
end
SetTask(488, GetTask(488) - diem)
if GetTask(488) == task - diem then
	sx = random(1,100)
	if sx < 30 then
		idxitem = AddEventItem(19)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 30 and sx < 45 then
		idxitem = AddItem(0,4,3,random(1,5),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 45 and sx < 60 then
		idxitem = AddItem(0,3,3,random(1,5),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 60 and sx < 75 then
		idxitem = AddItem(0,3,4,random(1,5),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 75 and sx < 90 then
		idxitem = AddItem(0,9,3,random(1,5),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddItem(0,10,5,5,0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end


function thuyenrong_doidiem_5()
diem = 400
task = GetTask(488)
if task < diem then
Talk(1,"","B¹n kh«ng ®ñ "..diem.." ®iÓm TÝch Lòy Sù KiÖn, kh«ng thÓ ®æi phÇn th­ëng")
return
end
SetTask(488, GetTask(488) - diem)
if GetTask(488) == task - diem then
	sx = random(1,100)
	if sx < 35 then
		idxitem = AddEventItem(19)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 5] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddItem(0,9,3,random(1,5),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 5] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end
function thuyenrong_doidiem_6()
diem = 401
task = GetTask(488)
if task < diem then
Talk(1,"","B¹n kh«ng ®ñ "..diem.." ®iÓm TÝch Lòy Sù KiÖn, kh«ng thÓ ®æi phÇn th­ëng")
return
end
SetTask(488, GetTask(488) - diem)
if GetTask(488) == task - diem then
	sx = random(1,100)
	if sx < 35 then
		idxitem = AddEventItem(19)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 6] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddItem(0,3,3,random(1,5),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 6] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end
function thuyenrong_doidiem_7()
diem = 402
task = GetTask(488)
if task < diem then
Talk(1,"","B¹n kh«ng ®ñ "..diem.." ®iÓm TÝch Lòy Sù KiÖn, kh«ng thÓ ®æi phÇn th­ëng")
return
end
SetTask(488, GetTask(488) - diem)
if GetTask(488) == task - diem then
	sx = random(1,100)
	if sx < 35 then
		idxitem = AddEventItem(19)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 7] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddItem(0,3,4,random(1,5),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 7] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end
function thuyenrong_doidiem_8()
diem = 403
task = GetTask(488)
if task < diem then
Talk(1,"","B¹n kh«ng ®ñ "..diem.." ®iÓm TÝch Lòy Sù KiÖn, kh«ng thÓ ®æi phÇn th­ëng")
return
end
SetTask(488, GetTask(488) - diem)
if GetTask(488) == task - diem then
	sx = random(1,100)
	if sx < 35 then
		idxitem = AddEventItem(19)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 8] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddItem(0,4,3,random(1,5),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." ®æi "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 8] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end

function thuyenrong_giahan()
SayNew("<color=green>LÔ Quan<color>: §Ó gia h¹n sù kiÖn cÇn 1 Kim Nguyªn B¶o, ng­¬i ch¾c ch¾n muèn gi¸ h¹n chø?",2,
"Ta muèn gia h¹n sù kiÖn /thuyenrong_giahan1",
"Tho¸t./no")
end

function thuyenrong_giahan1()
	if GetTask(490) == 2 then
		Talk(1,"","Giíi h¹n sù kiÖn cña b¹n ®· ®¹t mèc tèi ®a <color=yellow>2 lÇn<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 1 then
		DelItem(17)
		if GetItemCount(17) == knb - 1 then
			SetTask(490, GetTask(490) + 1)
			Msg2Player("B¹n ®· gia h¹n sù kiÖn §ua ThuyÒn Rång T©n thñ lªn <color=green>"..GetTask(490).." lÇn")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(343).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng­¬i kh«ng ®ñ 1 Kim Nguyªn b¶o ®Ó gia h¹n sù kiÖn")
	end
end



function thuyenrong_muatrong()
SayNew("<color=green>LÔ Quan: <color>: B¹n cã ch¾c ch¾n muèn mua <color=yellow>10 Trèng = 10 Vµng<color> kh«ng?",2,
"Ta ®ång ý mua/thuyenrong_muatrong1",
"Tho¸t./no")
end

function thuyenrong_muatrong1()
if CheckFreeBoxItem(4,260,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
return
end

sl = GetItemCount(260) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 10 and GetTask(101) >= 10 then
	SetTask(99,GetTask(99) - 10)
	SetTask(101,GetTask(101) - 10)
	if GetTask(99) == vang-10 and GetTask(101) == vang2 - 10 and GetTask(99) == GetTask(101) then
		for i=1,10 do AddEventItem(260) end
		if GetItemCount(260) ~= sl + 10 then
			Talk(1,"","R­¬ng cña b¹n ®· Full nªn sÏ cã 1 Ýt GiÊy KiÕng Cam bÞ mÊt.")
		end
		Msg2Player("B¹n nhËn ®­îc 10 Trèng")
		inlog2(""..GetAccount().." - "..GetName().." - "..GetLevel().." .Vang con: "..GetTask(99).." !")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>10<color> vµng, kh«ng thÓ giao dÞch!")
end
end

function chetao_thuyen1(nsel)
soluong = 0
if nsel == 0 then
soluong = 1
else
soluong = 10
end
if CheckFreeBoxItem(4,261,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
return
end

if GetItemCount(254) >= soluong and GetItemCount(255) >= soluong and GetItemCount(256) >= soluong and GetItemCount(257) >= soluong then
	for k=1,soluong do
		for p=254,257 do DelItem(p) end
		AddEventItem(261)
	end
	Msg2Player("B¹n nhËn ®­îc "..soluong.." ThuyÒn Rång")
	Talk(0,"")
else
	Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i") 
end
end

function quockhanh_goinapthe()
if GetTask(497) == 9999 then
Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn thªm")
return
end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ mua vËt phÈm !")
	return
end
vang = GetTask(497)
if GetTask(497) >= 100 then
	SetTask(497, 9999)
	for i=1,10 do
		idxitem = AddEventItem(117)
		SetBindItem(idxitem , 1)
	end
	SetTask(196,0)
	Msg2Player("B¹n nhËn ®­îc 10 b×nh Tiªn Th¶o Lé 1 Giê ")
	Msg2Player("B¹n nhËn ®­îc 1 lÇn TÈy Tñy MiÔn PhÝ ")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/GoiNapThe100Vang.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - "..vang.." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	Talk(0,"")
else
	Talk(1,"","Ng­¬i hiÖn t¹i tÝch lòy <color=yellow>"..GetTask(497).." / 100 vµng<color>, kh«ng thÓ nhËn ")
end
end

Include("\\script\\danhsachdenbu.lua")
function denubu_checkten()
for i=1,getn(DENBU) do
	if GetAccount() == DENBU[i][1] and DENBU[i][3] == 0 then
		return i
	end
end
return 0
end

function phuchung_nhandenbu()
Msg2Player("Ng­¬i ®ang cã "..GetTask(499).." vµng, h·y ®Õn Shop Vµng Khãa - ThÇn BÝ Th­¬ng Nh©n ®Ó sö dông") 
vitri = denubu_checkten()
if vitri == 0 then
Talk(1,"","Ng­¬i kh«ng cã tªn trong danh s¸ch nhËn ®Òn bï hoÆc ®· nhËn råi, nÕu cã sai xãt vui lßng liªn hÖ Admin ®Ó gi¶i quyÕt")
return
end

if DENBU[vitri][3] == 0 then
	DENBU[vitri][3] = DENBU[vitri][3] + 100
	if DENBU[vitri][3] == 100 then
		SetTask(499, GetTask(499) + DENBU[vitri][2])
		Msg2Player("B¹n nhËn ®­îc "..DENBU[vitri][2].." vµng khãa. Vui lßng ®Õn ThÇn BÝ Th­¬ng Nh©n ®Ó sö dông")
		BANG = TaoBang(DENBU,"DENBU")
		LuuBang("script/danhsachdenbu.lua",BANG)
		
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/NhanVangDenBu.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(499).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i ®· nhËn råi")
end
end


function giaiphong_main_2021()
SayNew("<color=green>LÔ Quan<color>: Ng­¬i t×m ta cã viÖc g×?",5,
"Mua 20 Qu©n Trang ChiÕn SÜ = 10 v¹n /giaiphong_mua_quantrang",
"Mua 10 Cuén Len = 10 vµng /giaiphong_mua_cuonlen",
"NhËn phÇn th­ëng mèc ThiÖp Tri ¢n Ng­êi LÝnh/giaiphong_phanthuongmoc_1",
"NhËn phÇn th­ëng mèc ThiÖp Tri ¢n MÑ HiÒn/giaiphong_phanthuongmoc_2",
"Tho¸t./no")
end


function giaiphong_phanthuongmoc_1()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end

if GetTask(906) == 0 then
	if GetTask(904) >= 500 then
		SetTask(906, 1)
		sx = random(1,100)
		if sx < 50 then
				idxitem = AddEventItem(0)
				SetBindItem(idxitem ,1)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 500 ThiÖp Tri ¢n Ng­êi LÝnh ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Free 500] "..GetNameItemBox(idxitem).."")
		else
				idxitem = AddEventItem(1)
				SetBindItem(idxitem ,1)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 500 ThiÖp Tri ¢n Ng­êi LÝnh ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Free 500] "..GetNameItemBox(idxitem).."")
		end
	else
			Msg2Player("§iÒu kiÖn nhËn th­ëng kh«ng ®ñ: "..GetTask(904).." / 500")
	end
elseif GetTask(906) == 1 then
	if GetTask(904) >= 1000 then
		SetTask(906, 2)
		sx = random(1,100)
		if sx < 10 then
				idxitem = AddEventItem(0)
				SetBindItem(idxitem ,1)
				idxitem = AddEventItem(1)
				SetBindItem(idxitem ,1)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1000 ThiÖp Tri ¢n Ng­êi LÝnh ®­îc: <color=yellow>Vâ L©m MËt TÞch + TÈy Tñy Kinh")
				inlogMocEvent("[Free 1000] TTK + VLMT")
		else
			vp2 = random(1,4)
			if vp2 == 1 then
			idxitem = AddItem(0,4,random(4,5),1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1000 ThiÖp Tri ¢n Ng­êi LÝnh ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
			elseif vp2 == 2 then
			idxitem = AddItem(0,9,5,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1000 ThiÖp Tri ¢n Ng­êi LÝnh ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
			elseif vp2 == 3 then
			idxitem = AddItem(0,3,random(5,6),1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1000 ThiÖp Tri ¢n Ng­êi LÝnh ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
			elseif vp2 == 4 then
			idxitem = AddItem(0,2,31,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1000 ThiÖp Tri ¢n Ng­êi LÝnh ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")	
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")			
			end						
		end
	else
			Msg2Player("§iÒu kiÖn nhËn th­ëng kh«ng ®ñ: "..GetTask(904).." / 1000")
	end
else
	Msg2Player("B¹n ®· nhËn ®ñ toµn bé phÇn th­ëng mèc ThiÖp Tri ¢n Ng­êi LÝnh")
end

end


function giaiphong_phanthuongmoc_2()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end
if GetTask(907) == 0 then
	if GetTask(905) >= 500 then
		SetTask(907 , 1)
		sx = random(1,100)
		if sx < 50 then
				idxitem = AddEventItem(0)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 500 ThiÖp Tri ¢n MÑ HiÒn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Money 500] "..GetNameItemBox(idxitem).."")
		else
				idxitem = AddEventItem(1)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 500 ThiÖp Tri ¢n MÑ HiÒn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Money 500] "..GetNameItemBox(idxitem).."")
		end
	else
		Msg2Player("§iÒu kiÖn nhËn th­ëng kh«ng ®ñ: "..GetTask(905).." / 500")
	end
elseif GetTask(907) == 1 then
	if GetTask(905) >= 1000 then
		SetTask(907 , 2)
		
		if GetGlbMissionV(37) == 963 then
			SetGlbMissionV(37, 0)
			idxitem = AddItem(0,3,3,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1000 ThiÖp Tri ¢n MÑ HiÒn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Money 1000] "..GetNameItemBox(idxitem).."")
			return	
		elseif GetGlbMissionV(37) == 753 then
			SetGlbMissionV(37, 0)
			idxitem = AddItem(0,2,32,2,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1000 ThiÖp Tri ¢n MÑ HiÒn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Money 1000] "..GetNameItemBox(idxitem).."")
			return	
		end		
		
		
		sx = random(1,100)
		if sx < 10 then
				idxitem = AddEventItem(random(651,654))
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1000 ThiÖp Tri ¢n MÑ HiÒn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Money 1000] "..GetNameItemBox(idxitem).."")
		else
			vp2 = random(1,4)
			if vp2 == 1 then
			idxitem = AddItem(0,4,random(4,5),1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1000 ThiÖp Tri ¢n MÑ HiÒn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Money 1000] "..GetNameItemBox(idxitem).."")
			elseif vp2 == 2 then
			idxitem = AddItem(0,9,5,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1000 ThiÖp Tri ¢n MÑ HiÒn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Money 1000] "..GetNameItemBox(idxitem).."")
			elseif vp2 == 3 then
			idxitem = AddItem(0,3,random(5,6),1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1000 ThiÖp Tri ¢n MÑ HiÒn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Money 1000] "..GetNameItemBox(idxitem).."")
			elseif vp2 == 4 then
			idxitem = AddItem(0,2,31,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1000 ThiÖp Tri ¢n MÑ HiÒn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")		
			inlogMocEvent("[Money 1000] "..GetNameItemBox(idxitem).."")			
			end						
		end
	else
		Msg2Player("§iÒu kiÖn nhËn th­ëng kh«ng ®ñ: "..GetTask(905).." / 1000")
	end
else
	Msg2Player("B¹n ®· nhËn ®ñ toµn bé phÇn th­ëng mèc ThiÖp Tri ¢n MÑ HiÒn")
end
end

function giaiphong_mua_quantrang()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end
vang = GetCash()
if GetCash() >= 100000 then
	Pay(100000)
	if GetCash() == vang - 100000 then
		for p=1,20 do AddEventItem(619) end
		Msg2Player("B¹n nhËn ®­îc 20 Qu©n Trang ChiÕn SÜ ")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 10 v¹n l­îng, vui lßng kiÓm tra l¹i !")
end
end

function giaiphong_mua_cuonlen()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end
vang = GetTask(99)
if GetTask(99) >= 10 then
	SetTask(99 , GetTask(99) - 10)
	SetTask(101, GetTask(101) - 10)
	if GetTask(99) == vang - 10 and GetTask(101) == vang - 10 then
		for p=1,10 do AddEventItem(660) end
		Msg2Player("B¹n nhËn ®­îc 10 Cuén Len")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/CuonLen10Vang.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(99).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 10 vµng, kh«ng thÓ mua vËt phÈm nµy")
end
end

function inlogMocEvent(text)
thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/MocSuKienGiaiPhong.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..text.." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
end
function giaiphong_main()
SayNew("<color=green>LÔ Quan<color>: Ng­¬i t×m ta cã viÖc g×?",7,
"GhÐp L¸ Cê ChiÕn Th¾ng/giaiphong_laco",
"Gia H¹n Sù KiÖn /giaiphong_giahan",
"NhËn phÇn th­ëng mèc sù kiÖn /giaiphong_moc",
"Sö dông Bé Dông Cô ChiÕn SÜ /giaiphong_sudung_dungcu",
"§æi Dông Cô ChiÕn SÜ /giaiphong_doi_dungcu",
"Mua 10 §«i Giµy Bé §éi = 200 v¹n /giaiphong_mua_dungcu",
"Tho¸t./no")
end

function giaiphong_mua_dungcu()
vang = GetCash()
if GetCash() >= 2000000 then
	Pay(2000000)
	if GetCash() == vang - 2000000 then
		for p=1,10 do AddEventItem(618) end
		Msg2Player("B¹n nhËn ®­îc 10 §«i Giµy Bé §éi")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 200 v¹n l­îng, vui lßng kiÓm tra l¹i !")
end
end

function giaiphong_sudung_dungcu()
nl1 = GetItemCount(617)
nl2 = GetItemCount(618)
nl3 = GetItemCount(619)
nl4 = GetItemCount(620)
nl5 = GetItemCount(621)

if nl1 > 0 and nl2 > 0 and nl3 > 0 and nl4 > 0 and nl5 > 0 then
	for p=617,621 do DelItem(p) end
	if GetItemCount(617) == nl1 - 1 and GetItemCount(621) == nl5 - 1 then
		sx = random(1,100)
		if sx <= 80 then
			sx2 = random(1,100)
			if sx2 < 70 then
				idxitem = AddEventItem(113)
				Msg2Player("Chóc mõng "..GetName().." sö dông bé Dông Cô Bé §éi nhËn ®­îc: <color=yellow>Tiªn Th¶o Lé 30 phót ")
			elseif sx2 >= 70 and sx2 < 90 then
				idxitem = AddEventItem(117)
				Msg2Player("Chóc mõng "..GetName().." sö dông bé Dông Cô Bé §éi nhËn ®­îc: <color=yellow>Tiªn Th¶o Lé 1 Giê ")	
			elseif sx2 >= 90 and sx2 < 98 then
				idxitem = AddEventItem(119)
				Msg2Player("Chóc mõng "..GetName().." sö dông bé Dông Cô Bé §éi nhËn ®­îc: <color=yellow>Tiªn Th¶o Lé 3 Giê ")
			else
				idxitem = AddEventItem(120)
				Msg2SubWorld("Chóc mõng "..GetName().." sö dông bé Dông Cô Bé §éi nhËn ®­îc: <color=yellow>Tiªn Th¶o Lé 6 Giê ")
			end
		elseif sx >= 80 and sx < 99 then
			sx2 = random(1,100)
			if sx2 < 70 then
				idxitem = AddEventItem(414)
				Msg2Player("Chóc mõng "..GetName().." sö dông bé Dông Cô Bé §éi nhËn ®­îc: <color=yellow>Ngäc C­êng Hãa ")
			elseif sx2 >= 70 and sx2 < 90 then
				idxitem = AddEventItem(415)
				Msg2Player("Chóc mõng "..GetName().." sö dông bé Dông Cô Bé §éi nhËn ®­îc: <color=yellow>§¸ T¸i T¹o ")
			else
				idxitem = AddEventItem(random(594,599))
				Msg2SubWorld("Chóc mõng "..GetName().." sö dông bé Dông Cô Bé §éi nhËn ®­îc: <color=green>"..GetNameItemBox(idxitem).."")
			end
		else
			sx2 = random(1,100)
			if sx2 < 70 then
				idxitem = AddEventItem(339)
				Msg2SubWorld("Chóc mõng "..GetName().." sö dông bé Dông Cô Bé §éi nhËn ®­îc: <color=green>"..GetNameItemBox(idxitem).."")
			else
				idxitem = AddEventItem(27)
				Msg2SubWorld("Chóc mõng "..GetName().." sö dông bé Dông Cô Bé §éi nhËn ®­îc: <color=green>"..GetNameItemBox(idxitem).."")
			end
		end
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Nguyªn liÖu kh«ng ®ñ 5 mãn cña Bé Dông Cô, vui lßng kiÓm tra l¹i !")
end
end

function giaiphong_doi_dungcu()
SayNew("Chän lo¹i cÇn ®æi. Mçi lÇn quy ®æi lµ 20 c¸i ",6,
"ChiÕc Mò ChiÕn SÜ /giaiphong_doi_dungcu1",
"§«i Giµy Bé §éi /giaiphong_doi_dungcu1",
"TÊm ¸o ChiÕn SÜ /giaiphong_doi_dungcu1",
"ChiÕc vâng Tr­êng S¬n /giaiphong_doi_dungcu1",
"Ba l« Con Cãc /giaiphong_doi_dungcu1",
"Tho¸t./no")
end

function giaiphong_doi_dungcu1(nsel)
idold = 617 + nsel
if GetItemCount(idold) < 20 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 20 "..checkten(idold)..",  kh«ng thÓ ®æi ")
return
end

idnew = 0
for p=1,10 do
	idnew = random(617, 621)
	if idnew ~= idold then
		break
	end
	idnew = 0
end

if idnew == 0 then
Talk(1,"","Cã lçi trong hÖ thèng chän ngÉu nhiªn, vui lßng thö l¹i !")
return
end


for p=1,20 do DelItem(idold) end
for p=1,10 do AddEventItem(idnew) end
Msg2Player("§· ®æi thµnh c«ng 20 "..checkten(idold).." = <color=yellow>10 "..checkten(idnew).." !")

end

function checkten(id)
if id == 617 then
return "ChiÕc Mò ChiÕn SÜ "
elseif id == 618 then
return "§«i Giµy Bé §éi"
elseif id == 619 then
return "TÊm ¸o ChiÕn SÜ  "
elseif id == 620 then
return "ChiÕc vâng Tr­êng S¬n"
elseif id == 621 then
return "Ba l« Con Cãc"
else
return ""
end
end
function giaiphong_moc()

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end
	if GetTask(460) < 10 then
		if GetTask(439) >= 8000 then
			SetTask(460, 10)

			for p=1,4 do
				idxitem = AddEventItem(120)
				SetBindItem(idxitem,1)
			end			
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc PhÇn Th­ëng Mèc 8 tû:  <color=yellow>4 Tiªn Th¶o Lé 6 Giê ")
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(460).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			
			
		else
			Talk(1,"","B¹n ch­a ®¹t ®­îc mèc nhËn th­ëng: <color=yellow>"..GetTask(439).."000000 / 8.000.000.000 kinh nghiÖm")
		end
	elseif GetTask(460) < 20 then
		if GetTask(439) >= 13000 then
			SetTask(460, 20)
			
			sx = random(1,100)
			if sx < 80 then
				AddEventItem(586)
			elseif sx >= 80 and sx < 95 then
				AddEventItem(587)
			elseif sx >= 95 and sx < 100 then
				AddEventItem(588)
			else
				AddEventItem(random(589,590))
			end
				
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc PhÇn Th­ëng Mèc 13 tû:  <color=yellow>Ngäc C­êng Hãa Cao CÊp")
				thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(460).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			
		else
			Talk(1,"","B¹n ch­a ®¹t ®­îc mèc nhËn th­ëng: <color=yellow>"..GetTask(439).."000000 / 13.000.000.000 kinh nghiÖm")
		end
	elseif GetTask(460) < 30 then
		if GetTask(439) >= 20000 then
			SetTask(460, 30)
			
			sx = random(1,10)
			if sx == 1 then
				idxitem = AddItem(0,4,17,6,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc PhÇn Th­ëng Mèc 20 tû: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 2 then	
				idxitem = AddItem(0,9,17,6,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc PhÇn Th­ëng Mèc 20 tû: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 3 then	
				idxitem = AddItem(0,3,29,6,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc PhÇn Th­ëng Mèc 20 tû: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 4 then	
				idxitem = AddItem(0,3,30,6,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc PhÇn Th­ëng Mèc 20 tû: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 5 then	
				idxitem = AddItem(0,7,43,1,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc PhÇn Th­ëng Mèc 20 tû: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 6 then	
					idxitem = AddItem(0,5,26,1,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc PhÇn Th­ëng Mèc 20 tû: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 7 then	
				idxitem = AddItem(0,2,81,1,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc PhÇn Th­ëng Mèc 20 tû: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 8 then	
					idxitem = AddItem(0,8,24,1,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc PhÇn Th­ëng Mèc 20 tû: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 9 then	
					idxitem = AddItem(0,6,28,1,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc PhÇn Th­ëng Mèc 20 tû: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 10 then	
					idxitem = AddItem(0,10,6,1,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc PhÇn Th­ëng Mèc 20 tû: <color=yellow>"..GetNameItemBox(idxitem).."")
			end
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(460).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
		else
			Talk(1,"","B¹n ch­a ®¹t ®­îc mèc nhËn th­ëng: <color=yellow>"..GetTask(439).."000000 / 20.000.000.000 kinh nghiÖm")
		end
	else
		Talk(1,"","Ng­¬i ®· nhËn ®ñ phÇn th­ëng Mèc Sù KiÖn")
	end
end




function giaiphong_giahan()
knb = 0
if GetTask(490) < 10 then
knb = 3
elseif GetTask(490) == 10 then
knb = 4
elseif GetTask(490) == 20 then
knb = 5
end 

if knb == 0 then
Talk(1,"","Ng­¬i ®· gia h¹n ®ñ 3 lÇn råi, kh«ng thÓ gia h¹n thªm !")
return
end
SayNew("<color=green>LÔ Quan<color>: §Ó gia h¹n sù kiÖn cÇn "..knb.." Kim Nguyªn B¶o, ng­¬i ch¾c ch¾n muèn gi¸ h¹n chø?",2,
"Ta muèn gia h¹n sù kiÖn /giaiphong_giahan1",
"Tho¸t./no")
end

function giaiphong_giahan1()
knb = 0
giahan = 0
if GetTask(490) < 10 then
knb = 3
giahan = 10
elseif GetTask(490) == 10 then
knb = 4
giahan = 20
elseif GetTask(490) == 20 then
knb = 5
giahan = 30
end 

if knb == 0 then
Talk(1,"","Ng­¬i ®· gia h¹n ®ñ 3 lÇn råi, kh«ng thÓ gia h¹n thªm !")
return
end

	knb2 = GetItemCount(17)
	if knb2 >= knb then
		for k=1,knb do DelItem(17) end
		if GetItemCount(17) == knb2 - knb then
			SetTask(490, giahan)
			Msg2Player("B¹n ®· gia h¹n sù kiÖn Gi¶i Phãng MiÔn Nam 30-04 thµnh c«ng lÇn thø: <color=yellow>"..floor(giahan/10).."")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(490).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng­¬i kh«ng ®ñ "..knb.." Kim Nguyªn b¶o ®Ó gia h¹n sù kiÖn")
	end
end



function giaiphong_laco()
nganluong = 30000
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end
num = 0
for p = 1,50 do
	if GetItemCount(611) > 0 and GetItemCount(612) > 0 and GetItemCount(613) > 0 and GetItemCount(614) > 0 and GetCash() >= nganluong then
		Pay(nganluong)
		DelItem(611)
		DelItem(612)
		DelItem(613)
		DelItem(614)
		AddEventItem(615)
		num = num + 1
		Talk(0,"")
	else
		Talk(1,"","L¸ Cê ChiÕn Th»ng = M·nh Cì 1 + M·nh Cê 2 + M·nh Cê 3 + M·nh Cê 4 + "..nganluong.." l­îng")
	end
end

Msg2Player("B¹n nhËn ®­îc "..num.." L¸ Cê ChiÕn Th¾ng")

end

function quockhanh_main()
SayNew("<color=green>LÔ Quan<color>: Ng­¬i t×m ta cã viÖc g×?",6,
"GhÐp L¸ Cê ChiÕn Th¾ng/quockhanh_laco",
"Mua Ng«i Sao May M¾n /quockhanh_ngoisao",
"Gia h¹n sù kiÖn 2-9/quockhanh_giahan",
"§æi ®iÓm TÝch Lòy Sù KiÖn /quockhanh_doidiem",
"NhËn phÇn th­ëng Sö Dông Max Sù KiÖn /quockhanh_max",
"Tho¸t./no")
end

function quockhanh_max()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ mua vËt phÈm !")
	return
end
if GetTask(496) == 0 then
	if GetTask(495) >= 600 then
		SetTask(496,1)
		idxitem = AddEventItem(120)
		SetBindItem(idxitem , 1)
		for k=1,50 do AddOwnExp(1000000) end
		Msg2Player("B¹n nhËn ®­îc 50.000.000 vµ 1 Tiªn Th¶o Lé 6 Giê ")
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Max Gia H¹n LÇn 1: <color=pink>50 triÖu kinh nghiÖm vµ 1 Tiªn th¶o Lé 6 Giê ")
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/MaxSuKien.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(496).."] "..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(495).." - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
	else
		Talk(1,"","Ng­¬i kh«ng ®¹t ®ñ sè l­îng ®Ó nhËn phÇn th­ëng: <color=yellow>"..GetTask(495).." / 600")
	end
elseif GetTask(496) == 1 then
	if GetTask(495) >= 1200 then
		SetTask(496,2)
		for p=1,3 do
			idxitem = AddEventItem(120)
			SetBindItem(idxitem , 1)
		end
		for k=1,100 do AddOwnExp(1000000) end
		Msg2Player("B¹n nhËn ®­îc 100.000.000 vµ 3 Tiªn Th¶o Lé 6 Giê ")
		thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/MaxSuKien.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(496).."] "..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(495).." - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Max Gia H¹n LÇn 2: <color=pink>100 triÖu kinh nghiÖm vµ 3 Tiªn th¶o Lé 6 Giê ")
	else
		Talk(1,"","Ng­¬i kh«ng ®¹t ®ñ sè l­îng ®Ó nhËn phÇn th­ëng: <color=yellow>"..GetTask(495).." / 600")
	end
else
	Talk(1,"","B¹n ®· nhËn ®ñ 2 lÇn phÇn th­ëng gia h¹n")
end
end
function quockhanh_doidiem()
      SayNew("§iÓm TÝch Lòy Sù KiÖn hiÖn cã: <color=red>"..GetTask(493).." ®iÓm",3,
	"§æi Trang BÞ Hoµng Kim/quockhanh_doidiem1",
	"§æi Ngùa vaf VËt PhÈm /quockhanh_doidiem1",
	"Tho¸t./no")
end

function quockhanh_doidiem1(nsel)
i = nsel + 1
if i == 1 then
	   SayNew("§iÓm TÝch Lòy Sù KiÖn hiÖn cã: <color=red>"..GetTask(493).." ®iÓm",10,
	   "D©y ChuyÒn An Bang/quockhanh_doidiem1_1",
	   "NhÉn An Bang Kª HuyÕt/quockhanh_doidiem1_1",
	   "NhÉn An Bang Cóc Hoa/quockhanh_doidiem1_1",
	   "Ngäc Béi An Bang/quockhanh_doidiem1_1",
	   "Nãn §Þnh Quèc/quockhanh_doidiem1_1",
	   "¸o §Þnh Quèc/quockhanh_doidiem1_1",
	   "Bao Tay §Þnh Quèc/quockhanh_doidiem1_1",
	   "Giµy §Þnh Quèc/quockhanh_doidiem1_1",
	   "Th¾t L­ng §Þnh Quèc/quockhanh_doidiem1_1",
	   "Tho¸t./no")
else
	   SayNew("§iÓm TÝch Lòy Sù KiÖn hiÖn cã: <color=red>"..GetTask(493).." ®iÓm",7,
	   "Phi V©n ThÇn M· /quockhanh_doidiem1_2",
	   "ChiÕu D¹ /quockhanh_doidiem1_2",
	   "XÝch Thè /quockhanh_doidiem1_2",
	   "Tõ Thñy Tinh/quockhanh_doidiem1_2",
	   "Tiªn Th¶o Lé 3 Giê /quockhanh_doidiem1_2",
	   "BÝ Kip 120/quockhanh_doidiem1_2",
	   "Tho¸t./no")
end
end

function quockhanh_doidiem1_1(nsel)
SetTaskTemp(1, nsel + 1)
MuaVatPham(nsel+1)
end
function quockhanh_doidiem1_2(nsel)
SetTaskTemp(1, nsel + 10)
MuaVatPham(nsel+10)
end

function MuaVatPham(num)
SayNew("Ng­¬i cã ch¾c ch¾n muèn ®æi <color=green>"..DANH_SACH[num][3].."<color> víi gi¸ <color=yellow>"..DANH_SACH[num][2].." ®iÓm TÝch Lòy Sù KiÖn<color> kh«ng?\nSè l­îng cßn l¹i: <color=red>"..DANH_SACH[num][1].." l­ît ®æi",2,
"Ta ch¾c ch¾n muèn ®æi/MuaVatPham2",
"Tho¸t./no")
end

function MuaVatPham2()
vt = GetTaskTemp(1)
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ mua vËt phÈm !")
	return
end
if vt <= 0 and vt > getn(DANH_SACH) then
Talk(1,"","Lçi v­ît giíi h¹n m¶ng, liªn hÖ Admin ®Ó fix gÊp")
return
end
if DANH_SACH[vt][1] <= 0 then
Talk(1,"","VËt phÈm nµy ®· ®­îc ®æi hÕt, kh«ng thÓ ®æi thªm")
return
end
if GetTask(493) < DANH_SACH[vt][2] then
Talk(1,"","Ng­¬i kh«ng cã ®ñ "..GetTask(493).." §iÓm TÝch Lòy Sù KiÖn ®Ó ®æi, vui lßng quay l¹i khi cã kh¶ n¨ng nhÐ ")
return
end 
tichluy = GetTask(493)
if GetTask(493) >= DANH_SACH[vt][2]  and DANH_SACH[vt][1] > 0 then
		SetTask(493, GetTask(493) - DANH_SACH[vt][2])
		DANH_SACH[vt][1] = DANH_SACH[vt][1] - 1
		BANG = TaoBang(DANH_SACH,"DANH_SACH")		
		LuuBang("script/danhsachtichluysukien.lua",BANG)

		if GetTask(493) == tichluy - DANH_SACH[vt][2] then
			if DANH_SACH[vt][4] == 0 then 
				idxitem = AddItem(DANH_SACH[vt][4],DANH_SACH[vt][5],DANH_SACH[vt][6],random(DANH_SACH[vt][7],DANH_SACH[vt][8]),0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." ®· dïng "..DANH_SACH[vt][2].." ®æi lÊy trang bÞ: <color=pink>"..GetNameItemBox(idxitem).."")	
				Msg2SubWorld("Sè l­îng cßn l¹i: <color=yellow>"..DANH_SACH[vt][1].." l­ît ®æi")
			else
				idxitem = AddEventItem(DANH_SACH[vt][5])
				Msg2SubWorld("Chóc mõng "..GetName().." ®· dïng "..DANH_SACH[vt][2].." ®æi lÊy trang bÞ: <color=pink>"..GetNameItemBox(idxitem).."")	
				Msg2SubWorld("Sè l­îng cßn l¹i: <color=yellow>"..DANH_SACH[vt][1].." l­ît ®æi")
			end
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/DoiTichLuySuKien.txt", "a");
			if LoginLog then
			write(LoginLog,"["..DANH_SACH[vt][1].."] "..DANH_SACH[vt][3].." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(493).." - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
		
			Talk(0,"")
		else
			Talk(1,"","hack ha em 1")
		end
else
	Talk(1,"","hack ha em 2")
end
end


function quockhanh_giahan()
SayNew("<color=green>LÔ Quan<color>: §Ó gia h¹n sù kiÖn cÇn 2 Kim Nguyªn B¶o, ng­¬i ch¾c ch¾n muèn gi¸ h¹n chø?",2,
"Ta muèn gia h¹n sù kiÖn /quockhanh_giahan1",
"Tho¸t./no")
end

function quockhanh_giahan1()
	if GetTask(343) == 1000 then
		Talk(1,"","Giíi h¹n sù kiÖn cña b¹n ®· ®¹t mèc tèi ®a <color=yellow>1 lÇn<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 2 then
		for k=1,2 do DelItem(17) end
		if GetItemCount(17) == knb - 2 then
			SetTask(343, 1000)
			Msg2Player("B¹n ®· gia h¹n sù kiÖn Quèc Kh¸nh 2-9 thµnh c«ng")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(343).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng­¬i kh«ng ®ñ 2 Kim Nguyªn b¶o ®Ó gia h¹n sù kiÖn")
	end
end



function quockhanh_ngoisao()
SayNew("Ng­¬i cã ®ång ý mua <color=green>20 Ng«i Sao May M¾n<color> víi <color=yellow>gi¸ 10 vµng<color> kh«ng?",2,
"Ta ®ång ý mua /quockhanh_ngoisao1",
"Tho¸t./no")
end

function quockhanh_ngoisao1()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end
vang = GetTask(99)
if GetTask(99) >= 10 then
	SetTask(99 , GetTask(99) - 10)
	SetTask(101, GetTask(101) - 10)
	if GetTask(99) == vang - 10 and GetTask(101) == vang - 10 then
		for p=1,20 do AddEventItem(73) end
		Msg2Player("B¹n nhËn ®­îc 20 Ng«i Sao May M¾n")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NgoiSaoMayMan10Vang.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(99).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 10 vµng, kh«ng thÓ mua vËt phÈm nµy")
end
end



function quockhanh_laco()
nganluong = 0
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 5 « míi cã thÓ mua vËt phÈm !")
	return
end

if GetLevel() >= 90 then
nganluong = 5000
end
num = 0
for p = 1,20 do
	if GetItemCount(68) > 0 and GetItemCount(69) > 0 and GetItemCount(70) > 0 and GetItemCount(71) > 0 and GetCash() >= nganluong then
		Pay(nganluong)
		DelItem(68)
		DelItem(69)
		DelItem(70)
		DelItem(71)
		idxitem  = AddEventItem(72)
		num = num + 1
		if GetLevel() < 90 then
			SetBindItem(idxitem , 1)
		end
		Talk(0,"")
	else
		Talk(1,"","L¸ Cê ChiÕn Th»ng = M·nh Cì 1 + M·nh Cê 2 + M·nh Cê 3 + M·nh Cê 4 + "..nganluong.." l­îng")
	end
end

Msg2Player("B¹n nhËn ®­îc "..num.." L¸ Cê ChiÕn Th¾ng")

end



function event_uudai()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ mua vËt phÈm !")
	return
end
SayNew("Sù kiÖn ¦u §·i n¹p ThÎ <color=red>tõ 17h00 ngµy 31-07 ®Õn 17h00 ngµy 03-08<color>\nMçi nh©n vËt chØ ®­îc mua 2 Gãi trong 4 Gãi d­íi ®©y. Mçi gãi chØ mua ®­îc 1 lo¹i",5,
"Gãi Tiªn Th¶o Lé /event_uudai2",
"Gãi N÷ Nhi Hång /event_uudai2",
"Gãi TÈy Tñy /event_uudai2",
"Gãi Tinh Th«ng /event_uudai2",
"Tho¸t./no")
end

function event_uudai2(nsel)
i = nsel+1 
if i == 1 then
	SayNew("Vui lßng chän lo¹i Tiªn Th¶o Lé cÇn mua ",4,
	"6 TTL 3 Giê = 20 vµng/uudai_ttl",
	"20 TTL 3 Giê = 60 vµng/uudai_ttl",
	"30 TTL 3 Giê = 100 vµng/uudai_ttl",
	"Tho¸t./no")
 elseif i == 2 then
 SayNew("Vui lßng chän lo¹i N÷ Nhi Hång cÇn mua ",4,
	"6 NNH 3 Giê = 10 vµng/uudai_nnh",
	"20 NNH 3 Giê = 50 vµng/uudai_nnh",
	"30 NNH 3 Giê = 70 vµng/uudai_nnh",
	"Tho¸t./no")
 elseif i == 3 then
  SayNew("Vui lßng chän lo¹i TÈy Tñy cÇn mua ",2,
	"TÈy TiÒm N¨ng vµ Kü N¨ng = 30 vµng/uudai_taytuy",
	"Tho¸t./no")
 elseif i == 4 then
 SayNew("Vui lßng chän lo¹i Tinh Th«ng cÇn mua ",3,
	"10 Vâ L©m MËt TÞch = 150 vµng/uudai_tinhthong",
	"5 TÈy Tñy Kinh = 70 vµng/uudai_tinhthong",
	"Tho¸t./no")
 end
end

function uudai_ttl(nsel)
i = nsel + 1
soluong = 0
vang = 0
if GetTask(346) == 1 then
Talk(1,"","B¹n ®· mua gãi nµy råi, kh«ng thÓ mua thªm")
return
end
if GetTask(346) == 9999 then
Talk(1,"","B¹n ®· mua 2 l­ît ¦u §·i N¹p ThÎ, kh«ng thÓ mua thªm")
return
end

if i == 1 then
	soluong = 6
	vang = 20
elseif i == 2 then
	soluong = 20
	vang = 60
elseif i == 3 then
	soluong = 30
	vang = 100
end
if GetTask(99) >= vang and vang ~= 0  then
	SetTask(99 , GetTask(99) - vang)
	SetTask(101, GetTask(101) - vang)
	if GetTask(346) == 0 then
		SetTask(346,1)
	else
		SetTask(346,9999)
	end
	for k=1,soluong do
		idxitem = AddEventItem(119)
		SetBindItem(idxitem , 1)
	end
		Msg2Player("B¹n nhËn ®­îc "..soluong.." Tiªn Th¶o Lé 3 giê ")
		inlog_uudai("[Goi 1]: "..GetAccount().." - "..GetName().." - "..soluong.." TTL 3 Gio - ["..GetTask(99).."]")
		Talk(0,"")
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ "..vang.." vµng, kh«ng thÓ mua ")
end
end

function uudai_nnh(nsel)
i = nsel + 1
soluong = 0
vang = 0
if GetTask(346) == 2 then
Talk(1,"","B¹n ®· mua gãi nµy råi, kh«ng thÓ mua thªm")
return
end
if GetTask(346) == 9999 then
Talk(1,"","B¹n ®· mua 2 l­ît ¦u §·i N¹p ThÎ, kh«ng thÓ mua thªm")
return
end
if i == 1 then
	soluong = 6
	vang = 10
elseif i == 2 then
	soluong = 20
	vang = 50
elseif i == 3 then
	soluong = 30
	vang = 70
end
if GetTask(99) >= vang and vang ~= 0 then
	SetTask(99 , GetTask(99) - vang)
	SetTask(101, GetTask(101) - vang)
	if GetTask(346) == 0 then
		SetTask(346,2)
	else
		SetTask(346,9999)
	end
	for k=1,soluong do
		idxitem = AddEventItem(115)
		SetBindItem(idxitem , 1)
	end
		Msg2Player("B¹n nhËn ®­îc "..soluong.." N÷ Nhi Hång 3 giê ")
		inlog_uudai("[Goi 2]: "..GetAccount().." - "..GetName().." - "..soluong.." Nu Nhi Hong 3 Gio - ["..GetTask(99).."]")
		Talk(0,"")
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ "..vang.." vµng, kh«ng thÓ mua ")
end
end
function uudai_taytuy()
if GetTask(346) == 3 then
Talk(1,"","B¹n ®· mua gãi nµy råi, kh«ng thÓ mua thªm")
return
end
if GetTask(346) == 9999 then
Talk(1,"","B¹n ®· mua 2 l­ît ¦u §·i N¹p ThÎ, kh«ng thÓ mua thªm")
return
end
vang = 30
if GetTask(99) >= vang and vang ~= 0 then
	SetTask(99 , GetTask(99) - vang)
	SetTask(101, GetTask(101) - vang)
	if GetTask(346) == 0 then
		SetTask(346,3)
	else
		SetTask(346,9999)
	end
	TayTiemNang()
	TayKyNang()
	
	
	Msg2Player("TÈy Tñy thµnh c«ng")
	inlog_uudai("[Goi 3]: "..GetAccount().." - "..GetName().." ["..GetTask(99).."]")
	Talk(0,"")
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ "..vang.." vµng, kh«ng thÓ mua ")
end
end


function uudai_tinhthong(nsel)
i = nsel + 1
soluong = 0
vang = 0
if GetTask(346) == 4 then
Talk(1,"","B¹n ®· mua gãi nµy råi, kh«ng thÓ mua thªm")
return
end
if GetTask(346) == 9999 then
Talk(1,"","B¹n ®· mua 2 l­ît ¦u §·i N¹p ThÎ, kh«ng thÓ mua thªm")
return
end

if i == 1 then
	soluong = 10
	vang = 150
	idquest = 0
elseif i == 2 then
	soluong = 5
	vang = 70
	idquest = 1
end
if GetTask(99) >= vang and vang ~= 0  then
	SetTask(99 , GetTask(99) - vang)
	SetTask(101, GetTask(101) - vang)
	if GetTask(346) == 0 then
		SetTask(346,4)
	else
		SetTask(346,9999)
	end
	for k=1,soluong do
		idxitem = AddEventItem(idquest)
		SetBindItem(idxitem , 1)
	end
		Msg2Player("B¹n nhËn ®­îc Gãi Tinh Th«ng ")
		inlog_uudai("[Goi 4 - "..nsel.."]: "..GetAccount().." - "..GetName().." ["..GetTask(99).."]")
		Talk(0,"")
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ "..vang.." vµng, kh«ng thÓ mua ")
end
end

function inlog_uudai(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/LogUuDai.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end




function main_duatop_phuchung()
w,x,y = GetWorldPos()

ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
vt = checkdanhsachtop()
if vt == 0 then
Talk(1,"","Ng­¬i kh«ng cã tªn trong danh s¸ch nhËn th­ëng TOP")
return
end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®ñ « trèng 6 x 5 míi cã thÓ nhËn PhÇn Th­ëng!")
	return
end

if DSTOP[vt][3] ~= 0 then
Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn thªm")
return
end

old = DSTOP[vt][3]
DSTOP[vt][3] = DSTOP[vt][3] + 9999
BANG = TaoBang(DSTOP,"DSTOP")		
LuuBang("script/danhsach/danhsachtop.lua",BANG)

				thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/NhanPhanThuongTop.txt", "a");
					if LoginLog then
					write(LoginLog,"["..DSTOP[vt][2].."] ["..GetAccount().."] ["..GetName().."] ["..GetLevel().."] - IP: "..GetIP().." -  Time: "..thoigian.."\n");
					end
					closefile(LoginLog)


if DSTOP[vt][3] == 9999 then
		if DSTOP[vt][2] == 1 then
			AddItem(0,10,8,1,0,0,0)
			Earn(10000000)		
			Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng Top 1 Server")	
		elseif DSTOP[vt][2] == 2 then
			AddItem(0,10,5,5,0,0,0)
			Earn(7000000)	
			Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng Top 2 Server")
		elseif DSTOP[vt][2] == 3 then
			AddItem(0,10,5,5,0,0,0)
			Earn(5000000)	
			Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng Top 3 Server")
		elseif DSTOP[vt][2] == 4 then
			AddItem(0,10,5,2,0,0,0)
			Earn(2000000)	
			Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng Top 4 - 5 Server")
		elseif DSTOP[vt][2] == 5 then
			AddEventItem(687)
			Earn(1000000)	
			Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng Top 6 - 10 Server")
		elseif DSTOP[vt][2] == 6 then
			AddEventItem(687)
			Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng Top 1 M«n Ph¸i")	
		end
		Talk(0,"")
else
Talk(1,"","hack ha em")
end
end

function checkdanhsachtop()
for i=1,getn(DSTOP) do
	if GetName() == DSTOP[i][1] then
		return i
	end
end
return 0
end

function main_duatop()
SayNew("Ng­¬i h·y s¾p xÕp l¹i hµnh trang ®Ó tr¸nh <color=yellow>§Çy R­¬ng mÊt vËt phÈm",2,
"Ta ®· ®Ó r­¬ng trèng råi /main_duatop1",
"§Ó ta s¾p xÕp l¹i /no")
end
function main_duatop1()
vt = checkdanhsachtop()
if vt == 0 then
Talk(1,"","Ng­¬i kh«ng cã tªn trong danh s¸ch nhËn th­ëng TOP")
return
end

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end
	
	if DSTOP[vt][5] == 1 then
		Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng råi, kh«ng thÓ nhËn thªm")
		return 
	end
	Msg2SubWorld("<color=green>Chóc mõng "..GetName().." nhËn phÇn th­ëng TOP")
if DSTOP[vt][2] == 2 then
	DSTOP[vt][2] = 0
	idxitem = AddItem(0,10,5,5,0,0,0)
	SetTimeItem(idxitem,550324);
	Msg2SubWorld("<color=yellow>- NhËn ®­îc 1 "..GetNameItemBox(idxitem).." ")
elseif DSTOP[vt][2] == 1 then
	DSTOP[vt][2] = 0
	idxitem = AddItem(0,10,5,2,0,0,0)
	SetTimeItem(idxitem,550324);
	Msg2SubWorld("<color=yellow>- NhËn ®­îc 1 "..GetNameItemBox(idxitem).." ")
end

if DSTOP[vt][3] == 2 then
	DSTOP[vt][3] = 0
	for k=1,2 do
		sx = RandomNew(1,4)
		if sx == 1 then
			idxitem = AddItem(0,4,3,random(1,5),0,0,0)
			Msg2SubWorld("<color=yellow>- NhËn ®­îc 1 "..GetNameItemBox(idxitem).."")
		elseif sx == 2 then
			idxitem = AddItem(0,3,3,random(1,5),0,0,0)
			Msg2SubWorld("<color=yellow>- NhËn ®­îc 1 "..GetNameItemBox(idxitem).."")	
		elseif sx == 3 then
			idxitem = AddItem(0,3,4,random(1,5),0,0,0)
			Msg2SubWorld("<color=yellow>- NhËn ®­îc 1 "..GetNameItemBox(idxitem).."")
		elseif sx == 4 then
			idxitem = AddItem(0,9,3,random(1,5),0,0,0)
			Msg2SubWorld("<color=yellow>- NhËn ®­îc 1 "..GetNameItemBox(idxitem).."")
		end
	end
elseif DSTOP[vt][3] == 1 then
			sx = RandomNew(1,4)
		if sx == 1 then
			idxitem = AddItem(0,4,3,random(1,5),0,0,0)
			Msg2SubWorld("<color=yellow>- NhËn ®­îc 1 "..GetNameItemBox(idxitem).."")
		elseif sx == 2 then
			idxitem = AddItem(0,3,3,random(1,5),0,0,0)
			Msg2SubWorld("<color=yellow>- NhËn ®­îc 1 "..GetNameItemBox(idxitem).."")	
		elseif sx == 3 then
			idxitem = AddItem(0,3,4,random(1,5),0,0,0)
			Msg2SubWorld("<color=yellow>- NhËn ®­îc 1 "..GetNameItemBox(idxitem).."")
		elseif sx == 4 then
			idxitem = AddItem(0,9,3,random(1,5),0,0,0)
			Msg2SubWorld("<color=yellow>- NhËn ®­îc 1 "..GetNameItemBox(idxitem).."")
		end
end

Earn(DSTOP[vt][4] * 10000)
Msg2SubWorld("<color=yellow>- NhËn ®­îc 1 "..DSTOP[vt][4].." v¹n l­îng")
DSTOP[vt][4] = 0
DSTOP[vt][5] = 1

BANG = TaoBang(DSTOP,"DSTOP")		
LuuBang("script/danhsachtop.lua",BANG)
KickOutSelf()
end

function maxsukien()
SayNew("B¹n vui lßng ®Ó trèng r­¬ng <color=red>Ýt nhÊt 30 « <color> ®Ó tr¸nh mÊt vËt phÈm",2,
"Ta ch¾c ch¾n ®· dän dÑp r­¬ng/EV304_max1",
"Tho¸t./no")
end
function EV304_max1()
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end

if GetTask(332) ~= 300417 then
	if GetTask(352) >= 488*2 then
		SetTask(332, 300417)
		for i=1,10 do AddEventItem(59)	end
		for i=1,3 do AddEventItem(120)	end
		for i=1,3 do AddEventItem(116)	end
		idxitem = AddEventItem(264)
		SetHSD(idxitem , 2017, 5 ,30,23)
		Msg2Player("B¹n nhËn ®­îc 10 X¸ Lîi Kim §¬n, 3 N÷ Nhi Hång 6H, 3 Tiªn Th¶o Lé 6H, 1 Tói M¸u VIP")
	elseif GetTask(352) == 488 then
		SetTask(332, 300417)
		for i=1,10 do AddEventItem(59)	end
		for i=1,10 do AddEventItem(118)	end
		idxitem = AddEventItem(264)
		SetHSD(idxitem , 2017, 5 ,10,23)
		Msg2Player("B¹n nhËn ®­îc 10 X¸ Lîi Kim §¬n, 10 N÷ Nhi Hång, 1 Tói M¸u VIP")
	end
	Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng Max Sù KiÖn")
	KickOutSelf()
else
Talk(1,"","B¹n ®· nhËn phÇn th­ëng råi, kh«ng thÓ nhËn thªm")
end
end
function EV304_sudung()
Talk(1,"","Click ph¶i chuét vµo Hu©n Ch­¬ng ChiÕn th¾ng hoÆc 3 Mãn Trang BÞ ChiÕn SÜ ®Ó sö dông") 
end

function EV304_lacovietnam()
if CheckFreeBoxItem(4,72,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
return
end

sl1 = GetItemCount(68)
sl2 = GetItemCount(69)
sl3 = GetItemCount(70)
sl4 = GetItemCount(71)
sl5 = GetItemCount(362)
if sl1 >= 1 and sl2 >= 1 and sl3 >= 1 and sl4 >= 1 and sl5 >= 1 then
	for k=68,71 do DelItem(k) end
	DelItem(362)
	if GetItemCount(68) == sl1 - 1 and GetItemCount(69) == sl2 - 1 and GetItemCount(70) == sl3 - 1 and GetItemCount(71) == sl4 - 1 and GetItemCount(362) == sl5 - 1 then
		AddEventItem(72)
		Msg2Player("B¹n nhËn ®­îc 1 L¸ Cê ViÖt Nam")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","L¸ Cê ViÖt Nam = 4 M·nh Cê + Hép Kim ChØ. Vui lßng kiÓm tra l¹i nguyªn liÖu")
end 
end


function EV304_giahan()
SayNew("<color=green>LÔ Quan<color>: §Ó gia h¹n sù kiÖn cÇn 2 Kim Nguyªn B¶o, ng­¬i ch¾c ch¾n muèn gi¸ h¹n chø?",2,
"Ta muèn gia h¹n sù kiÖn /EV304_giahan1",
"Tho¸t./no")
end

function EV304_giahan1()
	if GetTask(343) == 1000 then
		Talk(1,"","Giíi h¹n sù kiÖn cña b¹n ®· ®¹t mèc tèi ®a <color=yellow>1 lÇn<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 2 then
		for k=1,2 do DelItem(17) end
		if GetItemCount(17) == knb - 2 then
			SetTask(343, 1000)
			Msg2Player("B¹n ®· gia h¹n sù kiÖn Gi¶i Phãng MiÒn Nam 30/4 vµ Quèc TÕ Lao §éng 1/5 thµnh c«ng")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(343).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng­¬i kh«ng ®ñ 2 Kim Nguyªn b¶o ®Ó gia h¹n sù kiÖn")
	end
end


function EV304_cuonchi()
if CheckFreeBoxItem(4,72,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
return
end
SayNew("<color=green>LÔ Quan<color>: Ng­¬i muèn mua <color=yellow>10 Cuén ChØ <color> b»ng h×nh thøc nµo ?",3,
"Ta muèn mua b»ng 10 Vµng /EV304_cuonchi1",
"Ta muèn mua b»ng 170 v¹n l­îng/EV304_cuonchi2",
"Tho¸t./no")
end


function EV304_cuonchi2()
cash = GetCash()

if GetCash() >= 1700000 then
Pay(1700000)
if GetCash() == cash - 1700000 then
	for k=1,10 do AddEventItem(362) end
	Msg2Player("B¹n nhËn ®­îc <color=yellow>1 Cuén ChØ ")
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/CuonChi_TienVan.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	
	Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","Ng­¬i kh«ng mang ®ñ 170 v¹n l­îng, kh«ng thÓ mua")
end
end

function EV304_cuonchi1()
cash = GetTask(99)

if GetTask(99) >= 10 then
SetTask(99, GetTask(99) - 10)
SetTask(101, GetTask(101) - 10)
if GetTask(99) == cash - 10 then
	for k=1,10 do AddEventItem(362) end
	Msg2Player("B¹n nhËn ®­îc <color=yellow>1 Cuén ChØ ")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/CuonChi_Vang.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	
	Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","Ng­¬i kh«ng mang ®ñ 10 vµng, kh«ng thÓ mua")
end
end

function EV304_huanchuong()
if CheckFreeBoxItem(4,72,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
return
end
SayNew("<color=green>LÔ Quan<color>: Ng­¬i muèn mua <color=yellow>20 Hu©n Ch­¬ng<color> b»ng h×nh thøc nµo ?",3,
"Ta muèn mua b»ng 5 Vµng /EV304_huanchuong1",
"Ta muèn mua b»ng 80 v¹n l­îng/EV304_huanchuong2",
"Tho¸t./no")
end


function EV304_huanchuong2()
cash = GetCash()

if GetCash() >= 800000 then
Pay(800000)
if GetCash() == cash - 800000 then
	for k=1,20 do AddEventItem(355) end
	Msg2Player("B¹n nhËn ®­îc <color=yellow>20 Hu©n Ch­¬ng")
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/HuanChuong_TienVan.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	
	Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","Ng­¬i kh«ng mang ®ñ 80 v¹n l­îng, kh«ng thÓ mua")
end
end

function EV304_huanchuong1()
cash = GetTask(99)

if GetTask(99) >= 5 then
SetTask(99, GetTask(99) - 5)
SetTask(101, GetTask(101) - 5)
if GetTask(99) == cash - 5 then
	for k=1,20 do AddEventItem(355) end
	Msg2Player("B¹n nhËn ®­îc <color=yellow>20 Hu©n Ch­¬ng")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/HuanChuong_Vang.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	
	Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","Ng­¬i kh«ng mang ®ñ 5 vµng, kh«ng thÓ mua")
end
end



function nhanttl()
ngay = tonumber(date("%d"))
if ngay == 15 or ngay == 16 then
	idxitem = AddEventItem(117)
	SetBindItem(idxitem, 1)
	SetHSD(idxitem , 2017, 4, 16, 23)
	idxitem = AddEventItem(118)
	SetBindItem(idxitem, 1)
	SetHSD(idxitem , 2017, 4, 16, 23)
end
end

function gioto_main()
SayNew("<color=green>LÔ Quan<color>: Ng­¬i muèn ta gióp g× ? ",5,
"NÊu B¸nh TÐt /gioto_nau1",
"NÊu B¸nh Ch­ng /gioto_nau2",
"Mua ThÞt Heo /gioto_muathitheo",
"NhËn phÇn th­ëng sù kiÖn /gioto_ptmoc",
"Tho¸t./no")
end

function gioto_ptmoc()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end

if GetTask(350) == 688 then
	SetTask(350, 10000)
	sx = random(1,100)
	if sx < 30 then
		for i=1,4 do AddEventItem(120) end
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Max Sù KiÖn nhËn ®­îc <color=yellow>4 B×nh Tiªn Th¶o Lé 6 giê ")
	elseif sx >= 30 and sx < 60 then
		for i=1,4 do AddEventItem(116) end
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Max Sù KiÖn nhËn ®­îc <color=yellow>4 B×nh N÷ Nhi Hång 6 giê ")
	elseif sx >= 60 and sx < 90 then
		for i=1,10 do AddEventItem(59) end
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Max Sù KiÖn nhËn ®­îc <color=yellow>10 X¸ Lîi Kim §¬n")
	elseif sx >= 90 and sx < 93 then
		itemidx = AddEventItem(264)
		SetHSD(itemidx, 2017 , thang + 1, ngay, gio )
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Max Sù KiÖn nhËn ®­îc <color=yellow>[VIP] Thõa Tiªn MËt LÔ Bao")
	elseif sx >= 93 and sx < 97 then
		if GetTask(196) ~= 0 then
			SetTask(196, 0 )
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Max Sù KiÖn nhËn ®­îc <color=yellow>TÈy Tñy MiÔn PhÝ ")
		else
			for i=1,10 do AddEventItem(59) end
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Max Sù KiÖn nhËn ®­îc <color=yellow>10 X¸ Lîi Kim §¬n")
		end
	else
		idxitem = AddItem(0,10,5,random(1,5),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Max Sù KiÖn nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
	end
	
	
	
elseif GetTask(350) == 10000 then
	Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng råi, cßn muèn nhËn thªm µ ")
else
	Talk(1,"","Ng­¬i ch­a ®ñ ®iÒu kiÖn ®Ó nhËn PhÇn Th­ëng Max Sù KiÖn")
end
end


function gioto_nau1()
sl1 = GetItemCount(351)
sl2 = GetItemCount(352)
sl3 = GetItemCount(353)

if sl1 >= 1 and sl2 >= 1 and sl3 >= 1 then
	for i=351,353 do DelItem(i) end
	if GetItemCount(351) == sl1 - 1 and GetItemCount(352) == sl2 - 1 and GetItemCount(353) == sl3 - 1 then
		AddEventItem(349)
		Msg2Player("B¹n nhËn ®­îc 1 B¸nh TÐt")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>L¸ B¸nh + §Ëu Xanh + G¹o NÕp<color>, kh«ng thÓ nÊu B¸nh TÐt")
end
end
function gioto_nau2()
sl1 = GetItemCount(351)
sl2 = GetItemCount(352)
sl3 = GetItemCount(353)
sl4 = GetItemCount(354)

if sl1 >= 1 and sl2 >= 1 and sl3 >= 1 and sl4 >= 1 then
	for i=351,354 do DelItem(i) end
	if GetItemCount(351) == sl1 - 1 and GetItemCount(352) == sl2 - 1 and GetItemCount(353) == sl3 - 1 and GetItemCount(354) == sl4 - 1  then
		AddEventItem(350)
		Msg2Player("B¹n nhËn ®­îc 1 B¸nh Ch­ng")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>L¸ B¸nh + §Ëu Xanh + G¹o NÕp + ThÞt Heo<color>, kh«ng thÓ nÊu B¸nh Ch­ng")
end
end

function gioto_muathitheo()
SayNew("<color=green>LÔ Quan:<color> HiÖn t¹i kh«ng cã sù kiÖn nµo diÔn ra: ",3,
"X¸c nhËn mua 5 ThÞt Heo = 15 v¹n l­îng/gioto_muathitheo1",
"X¸c nhËn mua 5 ThÞt Heo = 1 vµng/gioto_muathitheo2",
"Tho¸t./no")
end

function gioto_muathitheo1()
cash = GetCash()

if GetCash() >= 150000 then
Pay(150000)
if GetCash() == cash - 150000 then
	for k=1,5 do AddEventItem(354) end
	Msg2Player("B¹n nhËn ®­îc <color=yellow>5 ThÞt Heo")
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/ThitHeo_Van.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	
	Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","Ng­¬i kh«ng mang ®ñ 15 v¹n l­îng, kh«ng thÓ mua")
end
end

function gioto_muathitheo2()
cash = GetTask(99)

if GetTask(99) >= 1 then
SetTask(99, GetTask(99) - 1)
SetTask(101, GetTask(101) - 1)
if GetTask(99) == cash - 1 then
	for k=1,5 do AddEventItem(354) end
	Msg2Player("B¹n nhËn ®­îc <color=yellow>5 ThÞt Heo")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/ThitHeo_Vang.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	
	Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","Ng­¬i kh«ng mang ®ñ 1 vµng, kh«ng thÓ mua")
end
end

function nhannapthe()
if GetTask(306) == 88888 then
Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng ¦u §·i N¹p ThÎ, kh«ng thÓ nhËn thªm")
return
end
if GetTask(306) == 9999 then
	SayNew("Ng­¬i ®· ®ñ ®iÒu kiÖn nhËn ¦u §·i N¹p ThÎ. H·y dän dÑp trèng hµnh trang tr­íc khi nhËn\n<color=red>C¶nh b¸o: MÊt do ®Çy r­¬ng kh«ng ®Òn bï ",2,
	"Ta muèn nhËn phÇn th­ëng ¦u §·i N¹p ThÎ /nhannapthe1",
	"§Ó ta dän dÑp l¹i hµnh trang /no")

else
	Talk(1,"","B¹n kh«ng ®ñ ®iÒu kiÖn nhËn ¦u §·i N¹p ThÎ ")
end
end

function nhannapthe1()

if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end

ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if GetTask(306) == 88888 then
Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng ¦u §·i N¹p ThÎ, kh«ng thÓ nhËn thªm")
return
end
if GetTask(306) == 9999 then
	SetTask(306, 88888)
	sx = random(1,10)
	if sx == 1 then
		itemidx = AddItem(0,10,5,random(1,4),0,0,0)
		SetTimeItem(itemidx,550324);
		if thang == 12 then
			SetHSD(itemidx,2018,1,ngay,gio)
		else
			SetHSD(itemidx,2017,thang+1,ngay,gio)
		end
		Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." nhËn ¦u §·i N¹p ThÎ ®­îc "..GetNameItemBox(itemidx).."")
	elseif sx == 2 then
		itemidx = AddEventItem(0)
		SetBindItem(itemidx,1);
		if thang == 12 then
			SetHSD(itemidx,2018,1,ngay,gio)
		else
			SetHSD(itemidx,2017,thang+1,ngay,gio)
		end
		Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." nhËn ¦u §·i N¹p ThÎ ®­îc "..GetNameItemBox(itemidx).."")
	elseif sx == 3 then
		itemidx = AddEventItem(1)
		SetBindItem(itemidx,1);
		if thang == 12 then
			SetHSD(itemidx,2018,1,ngay,gio)
		else
			SetHSD(itemidx,2017,thang+1,ngay,gio)
		end
		Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." nhËn ¦u §·i N¹p ThÎ ®­îc "..GetNameItemBox(itemidx).."")
	else
		itemidx = AddItem(0,11,0,random(1,25),0,0,0)
		SetTimeItem(itemidx,550324);
		if thang == 12 then
			SetHSD(itemidx,2018,1,ngay,gio)
		else
			SetHSD(itemidx,2017,thang+1,ngay,gio)
		end
		Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." nhËn ¦u §·i N¹p ThÎ ®­îc "..GetNameItemBox(itemidx).."")
	end
	
	for p=1,5 do
		idxitem = AddEventItem(117)
		SetBindItem(idxitem , 1)
		idxitem = AddEventItem(118)
		SetBindItem(idxitem , 1)
	end
	KickOutSelf()
	Msg2Player("B¹n ®ñ ®iÒu kiÖn nhÉn ¦u §·i N¹p ThÎ, vui lßng ®îi l¸t nhÐ ")
else
	Talk(1,"","B¹n kh«ng ®ñ ®iÒu kiÖn nhËn ¦u §·i N¹p ThÎ ")
end
end

function denbubt()
gio = tonumber(date("%H"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

if ngay ~= 23 then
Talk(1,"","Thêi gian nhËn th­ëng tõ  17h00 - 24h00 ngµy 23/05/2021")
return
end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end

if GetTask(318) ~= 1200 then
	SetTask(318, 1200)
	
	idxitem = AddEventItem(120)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(120)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(120)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(116)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(116)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(116)
	SetBindItem(idxitem , 1)
	
	ngay = ngay + 3
	if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
	thang = thang + 1
	end
	itemidx = AddEventItem(264)
	SetHSD(itemidx, 2021 , thang, ngay, gio )
	Msg2Player("B¹n nhËn ®­îc ®Òn bï 3 Tiªn Th¶o Lé 6 Giê, 3 N÷ Nhi Hång 6 Giê, 1 Tói M¸u Vip [3 Ngµy]")
	Msg2SubWorld("§¹i hiÖp "..GetName().." ®· nhËn ®Òn bï §¹i Héi Anh Hïng t¹i LÔ Quan")
	Talk(0,"")
else
	Talk(1,"","B¹n ®· nhËn 1 lÇn, kh«ng thÓ nhËn thªm !")
end
end

function nhanthuongtoptinhkiem()

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end

if checktontai() == 1 then
Talk(1,"","Ng­¬i ®· nhËn th­ëng råi, kh«ng thÓ nhËn thªm lÇn n÷a ")
return
end

thoigian = tonumber(date("%H%M%d%m"))
	if DSTOP[monphai][1][3] == 0 then
		DSTOP[monphai][1][1] = GetAccount()
		DSTOP[monphai][1][2] = GetName()
		DSTOP[monphai][1][3] = thoigian
		savetop()
		Msg2Player("Ng­¬i ®· nhËn phÇn th­ëng TOP 1")
		Msg2Player("- Phi V©n")
		Msg2Player("- Nh¹c V­¬ng KiÕm")
		Msg2Player("- 2000 v¹n l­îng")
		Msg2Player("- 300 vµng")
		AddItem(0,10,8,1,0,0,0)
		AddEventItem(164)
		Earn(20000000)
		SetTask(99, GetTask(99) + 300)
		SetTask(101, GetTask(101) + 300)
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng TOP 1 Ph¸i: "..GetFaction().."")
		Talk(0,"")
	elseif DSTOP[monphai][2][3] == 0 then
		DSTOP[monphai][2][1] = GetAccount()
		DSTOP[monphai][2][2] = GetName()
		DSTOP[monphai][2][3] = thoigian
		savetop()
		Msg2Player("Ng­¬i ®· nhËn phÇn th­ëng TOP 2")
		Msg2Player("- ChiÕu D¹ Ngäc S­ Tö ")
		Msg2Player("- 1000 v¹n l­îng")
		Msg2Player("- 200 vµng")
		AddItem(0,10,5,5,0,0,0)
		Earn(10000000)
		SetTask(99, GetTask(99) + 200)
		SetTask(101, GetTask(101) + 200)
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng TOP 2 Ph¸i: "..GetFaction().."")
		Talk(0,"")
	elseif DSTOP[monphai][3][3] == 0 then
		DSTOP[monphai][3][1] = GetAccount()
		DSTOP[monphai][3][2] = GetName()
		DSTOP[monphai][3][3] = thoigian
		savetop()	
		Msg2Player("Ng­¬i ®· nhËn phÇn th­ëng TOP 3")	
		Msg2Player("- Ngùa 90 NgÉu Nhiªn ")
		Msg2Player("- 500 v¹n l­îng")
		Msg2Player("- 100 vµng")
		AddItem(0,10,5,random(1,4),0,0,0)
		Earn(5000000)
		SetTask(99, GetTask(99) + 100)
		SetTask(101, GetTask(101) + 100)
		Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng TOP 3 Ph¸i: "..GetFaction().."")
		Talk(0,"")
	else
		Talk(1,"","HiÖn t¹i ®· cã 3 ng­êi trong M«n Ph¸i lªn cÊp 100 tr­íc, ng­¬i chËm ch©n 1 b­íc råi")
	end
end


function checktontai()
for i=1,getn(DSTOP) do
	for j=1,3 do
		if DSTOP[i][j][2] == GetName() then
			return 1
		end
	end
end
return 0
end
function nhandenbu()

	if GetTask(451) <= 1 then
		Talk(1,"","Ng­¬i kh«ng cã ®iÓm kinh nghiÖm ®Ó nhËn")
		return
	end
	
	kinhnghiem = GetTask(451) * 5 / 1000
	for k=1,1000 do AddOwnExp(kinhnghiem) end
	SetTask(451,1)
	KickOutSelf()
end
function test()
Talk(1,"","Ch­a cËp nhËt ")
end

function phunu83()
SayNew("<color=green>LÔ Quan<color>: Vui lßng chän chøc n¨ng ",3,
"Gia h¹n sù kiÖn 8 th¸ng 3/phunu83_giahan",
"NhËn phÇn th­ëng mèc sù kiÖn /phunu83_phanthuong",
"Tho¸t./no")
end


function phunu83_phanthuong()
gio = tonumber(date("%H"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end
faction = mp()
if faction == 0 then
Talk(1,"","Ng­¬i ch­a gia nhËp ph¸i, kh«ng thÓ sö dông !")
return
end

if GetTask(344) == 0 then
	if GetTask(342) >= 1500 then
			SetTask(344,GetTask(344) + 1)
			if GetTask(344) == 1 then
					idxitem = AddEventItem(0)
					idxitem = AddEventItem(1)
					idxitem = AddEventItem(28)
					SetBindItem(idxitem,1)
					idxitem = AddEventItem(29)
					SetBindItem(idxitem,1)
					idxitem = AddEventItem(30)
					SetBindItem(idxitem,1)
					for p=1,6 do 
						idxitem = AddEventItem(31)
						SetBindItem(idxitem,1)
					end
					Msg2SubWorld("<color=pink>"..GetName().." ®· nhËn phÇn th­ëng mèc 1500 Hoa Hång §á nhËn ®­îc: Vâ L©m MËt TÞch, TÈy Tñy Kinh, 1 Bé Thñy Tinh [Khãa], 1 Bé Tinh Hång B¶o Th¹ch [Khãa]")
					Msg2Player("<color=yellow>L­u ý: §Çy r­¬ng mÊt kh«ng ®Òn bï ")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","Ng­¬i chØ ®¹t ®­îc "..GetTask(342).." / 1500 Hoa Hång §á, kh«ng thÓ nhËn")
	end
elseif GetTask(344) == 1 then
	if GetTask(342) >= 3000 then
			SetTask(344,GetTask(344) + 1)
			if GetTask(344) == 2 then
					idxitem = AddItem(0,10,6,1,0,0,0)
					SetTimeItem(idxitem,550324);
					SetHSD(idxitem , 2017, thang + 1 , ngay , gio)
					Msg2SubWorld("<color=pink>"..GetName().." ®· nhËn phÇn th­ëng mèc 3000 Hoa Hång §á nhËn ®­îc: B«n Tiªu [Khãa - HSD: 30 ngµy]")
					Msg2Player("<color=yellow>L­u ý: §Çy r­¬ng mÊt kh«ng ®Òn bï ")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","Ng­¬i chØ ®¹t ®­îc "..GetTask(342).." / 3000 Hoa Hång §á, kh«ng thÓ nhËn")
	end
else
	Talk(1,"","Ng­¬i ®· nhËn ®ñ tÊt c¶ phÇn th­ëng mèc sù kiÖn")
 end
end

function phunu83_giahan()
	if GetTask(343) >= 1 then
		Talk(1,"","Giíi h¹n sù kiÖn cña b¹n ®· ®¹t mèc tèi ®a <color=yellow>1 lÇn<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 5 then
		for k=1,5 do DelItem(17) end
		if GetItemCount(17) == knb - 5 then
			SetTask(343, GetTask(343) + 1)
			Msg2Player("B¹n ®· gia h¹n sù kiÖn Quèc TÕ Phô N÷ 8 Th¸ng 3 lªn <color=yellow>"..GetTask(343).." lÇn")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(343).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng­¬i kh«ng ®ñ 5 Kim Nguyªn b¶o ®Ó gia h¹n sù kiÖn")
	end
end

function denbux2()
if GetTask(340) == 4567 then
Talk(1,"","B¹n ®· nhËn phÇn th­ëng ®Òn bï b¶o tr×, kh«ng thÓ nhËn thªm")
return
end
			SetTask(340 ,4567)
			SetTask(172, GetTask(172) + 2*60*60*18)
			AddSkillEffect(460,1, GetTask(172))
			SetTask(141,1)
			Msg2Player("B¹n nhËn ®­îc thªm 2 giê nh©n ®«i kinh nghiÖm")

			
			Talk(0,"")
end

function EventTet()
SayNew("<color=green>LÔ Quan<color>: Sù kiÖn Ngò Qu¶ Mõng Xu©n <color=red>b¾t ®Çu tõ ngµy 27/01 , kÕt thóc ngµy 08/02 ",3,
--"N©ng cÊp Nguyªn LiÖu /tet_nangcapnguyenlieu",
--"ChÕ t¹o M©m Ngò Qu¶ /tet_chetao",
--"Mua M©m B¹c /tet_muamambac",
--"Mua M©m Vµng /tet_muamamvang",
"Gia H¹n Sù KiÖn /tet_giahan",
"NhËn phÇn th­ëng Max Sù KiÖn /phanthuongmax",
"Tho¸t./no")
end
function phanthuongmax()

if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end

if GetTask(335) >= 6000 and GetTask(335) < 7000 then
	SetTask(335,10000)
	if GetTask(335) == 10000 then
			SetTask(335,10001)
			sx=random(1,10)
			if sx == 5 then
				AddItem(0,4,3,1,0,0,0)
			else 
				sx2 = random(1,3)
				if sx2 == 1 then
					AddItem(0,9,3,1,0,0,0)
				elseif sx2 == 2 then				
					AddItem(0,3,3,1,0,0,0)
				elseif sx2 == 3 then
					AddItem(0,3,4,1,0,0,0)
				end
			end
			Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng Max Sù KiÖn")
			inlog6(""..GetAccount().." - "..GetName().." - "..GetLevel().."")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i ®· nhËn råi, kh«ng thÓ nhËn thªm")
end
end
function inlog6(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/MaxSuKien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function tet_giahan()
	if GetTask(334) >= 2 then
		Talk(1,"","Giíi h¹n sù kiÖn cña b¹n ®· ®¹t mèc tèi ®a <color=yellow>2 lÇn<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 5 then
		for k=1,5 do DelItem(17) end
		if GetItemCount(17) == knb - 5 then
			SetTask(334, GetTask(334) + 1)
			Msg2Player("B¹n ®· gia h¹n sù kiÖn Ngò Qu¶ Mõng Xu©n lªn <color=yellow>"..GetTask(334).." lÇn")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(334).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng­¬i kh«ng ®ñ 5 Kim Nguyªn b¶o ®Ó gia h¹n sù kiÖn")
	end
end

function tet_muamambac()
SayNew("<color=green>LÔ Quan<color>: M©m B¹c gi¸ <color=yellow>20 v¹n l­îng = 20 c¸i<color>, Ng­¬i cã ch¾c ch¾n muèn mua kh«ng?",2,
"Ta ®ång ý mua M©m B¹c /tet_muamambac2",
"Tho¸t./no")
end

function tet_muamambac2()
vang = GetCash()

if GetCash() >= 200000 then
	Pay(200000)
	if GetCash() == vang - 200000 then
		for k=1,20 do AddEventItem(321) end
		Msg2Player("B¹n nhËn ®­îc 20 M©m B¹c")
		inlog2("Acc:["..GetAccount().."]\tName: ["..GetName().."]\tLv: "..GetLevel().."\Ngan Luong: "..GetCash().."\tBanh: "..GetItemCount(321).."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=red>20 v¹n l­îng<color>, kh«ng thÓ mua")
end
end

function tet_muamamvang()
SayNew("<color=green>LÔ Quan<color>: M©m B¹c gi¸ <color=yellow>1 Kim Nguyªn B¶o = 40 c¸i<color>, Ng­¬i cã ch¾c ch¾n muèn mua kh«ng?",2,
"Ta ®ång ý mua M©m Vµng /tet_muamamvang2",
"Tho¸t./no")
end

function tet_muamamvang2()
sl = GetItemCount(17)

if GetItemCount(17) >= 1 then
	DelItem(17)
	if GetItemCount(17) == sl - 1 then
		for k=1,40 do AddEventItem(322) end
		Msg2Player("B¹n nhËn ®­îc 40 M©m Vµng")
		inlog3("Acc:["..GetAccount().."]\tName: ["..GetName().."]\tLv: "..GetLevel().."\tKNB: "..GetItemCount(17).."\tBanh: "..GetItemCount(322).."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=red>1 Kim Nguyªn B¶o<color>, kh«ng thÓ mua")
end
end



function tet_muaphaohoa()
SayNew("<color=green>LÔ Quan<color>: Ph¸o Hoa N¨m Míi gi¸ <color=yellow>1 Kim Nguyªn B¶o hoÆc 500 v¹n l­îng<color>, Ng­¬i cã ch¾c ch¾n muèn mua kh«ng?",3,
"Mua ph¸o hoa 1 Kim Nguyªn B¶o /tet_muaphaohoa1",
"Mua ph¸o hoa 500 v¹n l­îng /tet_muaphaohoa2",
"Tho¸t./no")
end

function tet_muaphaohoa1()
sl = GetItemCount(17)

if GetItemCount(17) >= 1 then
	DelItem(17)
	if GetItemCount(17) == sl - 1 then
		AddEventItem(327)
		Msg2Player("B¹n nhËn ®­îc Ph¸o Hoa N¨m Míi")
		inlog4("[KNB] Acc:["..GetAccount().."]\tName: ["..GetName().."]\tLv: "..GetLevel().."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=red>1 Kim Nguyªn B¶o<color>, kh«ng thÓ mua")
end
end
function tet_muaphaohoa2()
vang = GetCash()

if GetCash() >= 5000000 then
	Pay(5000000)
	if GetCash() == vang - 5000000 then
		AddEventItem(327)
		Msg2Player("B¹n nhËn ®­îc Ph¸o Hoa N¨m Míi")
		inlog4("[VAN] Acc:["..GetAccount().."]\tName: ["..GetName().."]\tLv: "..GetLevel().."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=red>500 v¹n l­îng<color>, kh«ng thÓ mua")
end
end


function tet_nangcapnguyenlieu()
SayNew("<color=green>LÔ Quan<color>: Chän lo¹i tr¸i c©y cÇn n©ng cÊp: ",5,
"M·ng CÇu /tet_nangcap1",
"Dõa /tet_nangcap1",
"§u §ñ /tet_nangcap1",
"Xoµi /tet_nangcap1",
"Tho¸t./no")
end

function tet_nangcap1(nsel)
i = nsel+1
SetTaskTemp(1 , i)
namecu = ""
namenew = ""
iditem = 312+i
soluong = GetItemCount(iditem)
soluong2 = soluong - mod(soluong,3)

if i == 1 then
namecu = "M·ng CÇu"
namenew = "Dõa"
elseif i == 2 then
namecu = "Dõa"
namenew = "§u §ñ "
elseif i == 3 then
namecu = "§u §ñ "
namenew = "Xoµi"
elseif i == 4 then
namecu = "Xoµi"
namenew = "Sung"
end
SayNew("<color=green>LÔ Quan<color>: B¹n cã ch¾c ch¾n muèn n©ng cÊp <color=yellow>"..soluong2.." "..namecu.."<color> thµnh <color=green>"..(soluong2/3).." "..namenew.."<color> hay kh«ng?\n<color=red>Chó ý: VËt phÈm kh«ng muèn n©ng cÊp h·y mang bá vµo r­¬ng chøa ®å ",2,
"Ta ®ång ý n©ng cÊp /tet_nangcap2",
"Tho¸t./no")
end

function tet_nangcap2()
i = GetTaskTemp(1)
iditem = 312+i
soluong = GetItemCount(iditem)
soluong2 = floor(soluong/3)
namecu = ""
namenew = ""
if soluong2 == 0 then
Msg2Player("B¹n kh«ng ®ñ nguyªn liÖu trong r­¬ng")
return
end
if i == 1 then
namecu = "M·ng CÇu"
namenew = "Dõa"
elseif i == 2 then
namecu = "Dõa"
namenew = "§u §ñ "
elseif i == 3 then
namecu = "§u §ñ "
namenew = "Xoµi"
elseif i == 4 then
namecu = "Xoµi"
namenew = "Sung"
end
for i=1,soluong2 do
	if GetItemCount(iditem) >= 3 then
		DelItem(iditem)
		DelItem(iditem)
		DelItem(iditem)
		AddEventItem(iditem+1)
	else
		Msg2Player("B¹n kh«ng ®ñ nguyªn liÖu trong r­¬ng")
	end
end
Msg2Player("B¹n ®· n©ng cÊp thµnh c«ng "..soluong.." "..namecu.." thµnh "..soluong2.." "..namenew.."")

end

function tet_chetao()
SayNew("<color=green>LÔ Quan<color>: Chän lo¹i ngò qu¶ cÇn chÕ t¹o: ",5,
"1x M©m B¹c Ngò Qu¶ /tet_chetao1",
"1x M©m Vµng Ngò Qu¶ /tet_chetao1",
"10x M©m B¹c Ngò Qu¶ /tet_chetao1",
"10x M©m Vµng Ngò Qu¶ /tet_chetao1",
"Tho¸t./no")
end

function tet_chetao1(nsel)
i = nsel + 1
if i == 1 then
tet_chetao2(313,314,315,316,317,321, "M©m B¹c",1, 323, "M©m B¹c Ngò Qu¶ ")
elseif i == 2 then
tet_chetao2(313,314,315,316,317,322, "M©m Vµng",1, 324, "M©m B¹c Ngò Vµng")
elseif i == 3 then
tet_chetao2(313,314,315,316,317,321, "M©m B¹c",10, 323, "M©m B¹c Ngò Qu¶ ")
elseif i ==4 then
tet_chetao2(313,314,315,316,317,322, "M©m Vµng",10, 324, "M©m B¹c Ngò Vµng")
end
end

function tet_chetao2(nl1,nl2,nl3,nl4,nl5, nl6, namenl, num, idnew, namenew)
sl1 = GetItemCount(nl1)
sl2 = GetItemCount(nl2)
sl3 = GetItemCount(nl3)
sl4 = GetItemCount(nl4)
sl5 = GetItemCount(nl5)
sl6 = GetItemCount(nl6)

if GetItemCount(nl1) >= num and GetItemCount(nl2) >= num and GetItemCount(nl3) >= num and GetItemCount(nl4) >= num and GetItemCount(nl5) >= num and GetItemCount(nl6) >= num then
		for i=1,num do
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
			DelItem(nl6)
		end
		if GetItemCount(nl1) == sl1 - num and GetItemCount(nl2) == sl2 - num and GetItemCount(nl3) == sl3 - num and GetItemCount(nl4) == sl4 - num and GetItemCount(nl5) == sl5 - num and GetItemCount(nl6) == sl6 - num then
			for k=1,num do AddEventItem(idnew) end
			Msg2Player("B¹n nhËn ®­îc "..num.." "..namenew.."")
		else
		Talk(1,"","hack ha em")
		end
		
		
else
	Talk(1,"","<color=red>Nguyªn liÖu kh«ng ®ñ:<color>\n"..namenew.." = M·ng CÇu + Dõa + §u §ñ + Xoµi + Sung + "..namenl.."")
end
end


function giangsinh()
SayNew("<color=green>LÔ Quan<color>: Sù kiÖn Gi¸ng Sinh 2017 ®· b¾t ®Çu tõ 22/12 - 31/12 ",5,
"ChÕ t¹o ng­êi tuyÕt /noel_chetao",
"Mua c©y th«ng /noel_muacaythong",
"Gia h¹n sù kiÖn Gi¸ng Sinh 2017 /noel_giahan",
"NhËn phÇn th­ëng Mèc Sù KiÖn /noel_ptmoc",
"Tho¸t./no")
end

function noel_ptmoc()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end
	if GetTask(463) == 0 then
		if GetTask(465) >= 3000 then
			SetTask(463, 1)
			for p=1,5 do 
					idxitem = AddEventItem(119)
					SetBindItem(idxitem,1)
			end
			Msg2Player("B¹n nhËn ®­îc 5 Tiªn Th¶o Lé 3 Giê ")
		else
			Talk(1,"","B¹n ch­a ®¹t ®­îc mèc nhËn th­ëng: <color=yellow>"..GetTask(465).."000000 / 3000000000 kinh nghiÖm")
		end
	elseif GetTask(463) == 1 then
		if GetTask(465) >= 6000 then
			SetTask(463, 2)
			for p=1,2 do 
					idxitem = AddEventItem(410)
					SetBindItem(idxitem,1)
			end
			Msg2Player("B¹n nhËn ®­îc 2 Tu LuyÖn §an ")
		else
			Talk(1,"","B¹n ch­a ®¹t ®­îc mèc nhËn th­ëng: <color=yellow>"..GetTask(465).."000000 / 6000000000 kinh nghiÖm")
		end
	elseif GetTask(463) == 2 then
		if GetTask(465) >= 10000 then
			SetTask(463, 3)
			for p=1,10 do 
					idxitem = AddEventItem(414)
			end
			for p=1,5 do 
					idxitem = AddEventItem(415)
			end
			Msg2Player("B¹n nhËn ®­îc 10 Ngäc C­êng Hãa vµ 5 §¸ T¸i T¹o ")
		else
			Talk(1,"","B¹n ch­a ®¹t ®­îc mèc nhËn th­ëng: <color=yellow>"..GetTask(465).."000000 / 10000000000 kinh nghiÖm")
		end	
	else
		Talk(1,"","Ng­¬i ®· nhËn ®ñ phÇn th­ëng Mèc Sù KiÖn")
	end
end

function noel_giahan()
	if GetTask(466) >= 2 then
		Talk(1,"","Giíi h¹n sù kiÖn cña b¹n ®· ®¹t mèc tèi ®a <color=yellow>2 lÇn<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 3 then
		for k=1,3 do DelItem(17) end
		if GetItemCount(17) == knb - 3 then
			SetTask(466, GetTask(466) + 1)
			Msg2Player("B¹n ®· gia h¹n sù kiÖn Gi¸ng Sinh 2017 lªn <color=yellow>"..GetTask(466).." lÇn")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(466).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng­¬i kh«ng ®ñ 3 Kim Nguyªn b¶o ®Ó gia h¹n sù kiÖn")
	end
end

function noel_chetao()
SayNew("<color=green>LÔ Quan<color>: Chän lo¹i ng­êi tuyÕt cÇn chÕ t¹o: ",7,
"1x Ng­êi TuyÕt Kh¨n Xanh/noel_chetao1",
"1x Ng­êi TuyÕt Kh¨n §á /noel_chetao1",
"1x Ng­êi TuyÕt Th­êng /noel_chetao1",
"10x Ng­êi TuyÕt Kh¨n Xanh/noel_chetao1",
"10x Ng­êi TuyÕt Kh¨n §á /noel_chetao1",
"10x Ng­êi TuyÕt Th­êng /noel_chetao1",
"Tho¸t./no")
end

function noel_chetao1(nsel)
i = nsel + 1
if i == 1 then
noel_chetao2(416,417,418,419,420, "Kh¨n Choµng Xanh",10000,1, 423, "Ng­êi TuyÕt Kh¨n Xanh")
elseif i == 2 then
noel_chetao2(416,417,418,419,421, "Kh¨n Choµng §á ",30000,1, 424, "Ng­êi TuyÕt Kh¨n §á ")
elseif i == 3 then
noel_chetao2(416,417,418,419,422, "C©y Th«ng",10000,1, 425, "Ng­êi TuyÕt Th­êng")
elseif i == 4 then
noel_chetao2(416,417,418,419,420, "Kh¨n Choµng Xanh",100000,10, 423, "Ng­êi TuyÕt Kh¨n Xanh")
elseif i == 5 then
noel_chetao2(416,417,418,419,421, "Kh¨n Choµng §á ",300000,10, 424, "Ng­êi TuyÕt Kh¨n §á ")
elseif i == 6 then
noel_chetao2(416,417,418,419,422, "C©y Th«ng",100000,10, 425, "Ng­êi TuyÕt Th­êng")
end
end

function noel_chetao2(nl1,nl2,nl3,nl4,nl5, namenl, cash, num, idnew, namenew)
sl1 = GetItemCount(nl1)
sl2 = GetItemCount(nl2)
sl3 = GetItemCount(nl3)
sl4 = GetItemCount(nl4)
sl5 = GetItemCount(nl5)
vang = GetCash()
if GetItemCount(nl1) >= num and GetItemCount(nl2) >= num and GetItemCount(nl3) >= num and GetItemCount(nl4) >= num and GetItemCount(nl5) >= num and GetCash() >= cash then
		for i=1,num do
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
		end
			Pay(cash)
		if GetItemCount(nl1) == sl1 - num and GetItemCount(nl2) == sl2 - num and GetItemCount(nl3) == sl3 - num and GetItemCount(nl4) == sl4 - num and GetItemCount(nl5) == sl5 - num and GetCash() == vang - cash then
			for k=1,num do AddEventItem(idnew) end
			Msg2Player("B¹n nhËn ®­îc "..num.." "..namenew.."")
		else
		Talk(1,"","hack ha em")
		end
		
		
else
	Talk(1,"","<color=red>Nguyªn liÖu kh«ng ®ñ:<color>\n"..namenew.." = Hoa TuyÕt + Cµ Rèt + Cµnh Th«ng + Nãn Gi¸ng Sinh + "..namenl.." + "..cash.." l­îng")
end
end
function noel_muabanhkem()
SayNew("<color=green>LÔ Quan<color>: Ta ®©y b¸n <color=yellow>4 B¸nh Kem Gi¸ng Sinh = 1 Kim Nguyªn B¶o<color>. Ng­¬i cã ch¾c ch¾n mua chø?",2,
"Ta muèn mua C©y Th«ng /noel_muabanhkem1",
"Ta sÏ quay l¹i sau/no")
end

function noel_muabanhkem1()
sl = GetItemCount(17)

if GetItemCount(17) >= 1 then
	DelItem(17)
	if GetItemCount(17) == sl - 1 then
		for k=1,4 do AddEventItem(382) end
		Msg2Player("B¹n nhËn ®­îc 4 B¸nh Kem Gi¸ng Sinh")
		inlog3("Acc:["..GetAccount().."]\tName: ["..GetName().."]\tLv: "..GetLevel().."\tKNB: "..GetItemCount(17).."\tBanh: "..GetItemCount(382).."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=red>1 Kim Nguyªn B¶o<color>, kh«ng thÓ mua")
end
end

function noel_muacaythong()
if CheckFreeBoxItem(0,10,6,1) == 0 then
Talk(1,"","R­¬ng kh«ng ®ñ chç trèng, vui lßng dän l¹i r­¬ng !")
return
end
SayNew("<color=green>LÔ Quan<color>: Ta ®©y b¸n <color=yellow>40 C©y Th«ng = 1 Kim Nguyªn B¶o<color>. Ng­¬i cã ch¾c ch¾n mua chø?",2,
"Ta muèn mua C©y Th«ng /noel_muacaythong1",
"Ta sÏ quay l¹i sau/no")
end

function noel_muacaythong1()
sl = GetItemCount(17)

if GetItemCount(17) >= 1 then
	DelItem(17)
	if GetItemCount(17) == sl - 1 then
		for k=1,40 do AddEventItem(422) end
		Msg2Player("B¹n nhËn ®­îc 40 C©y Th«ng")
		inlog2("Acc:["..GetAccount().."]\tName: ["..GetName().."]\tLv: "..GetLevel().."\tKNB: "..GetItemCount(17).."\tBanh: "..GetItemCount(422).."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=red>1 Kim Nguyªn B¶o<color>, kh«ng thÓ mua")
end
end

function nhiemvuanhhung()
vt = ah_checknhom(GetName())
if vt == 0 then
	SayNew("<color=green>LÔ Quan<color>: Ng­¬i cÇn ta gióp g× ?",2,
	"§¨ng ký Nhãm Anh Hïng /ah_dangky",
	"Tho¸t./no")
else
	SayNew("<color=green>LÔ Quan<color>: Ng­¬i cÇn ta gióp g× ?",4,
	"NhËn nhiÖm vô Anh Hïng /ah_xem",
	"Xem ®iÓm tÝch lòy nhãm/ah_xem",
	"Gi¶i t¸n nhãm /ah_xem",
	"Tho¸t./no")
end
end
function ah_xem()
vt = ah_checknhom(GetName())
Talk(1,"","Nhãm Anh Hïng cña b¹n gåm:\n1. "..DSAH[vt][1].."\n2. "..DSAH[vt][2].."\n3. "..DSAH[vt][3].."\n§iÓm tÝch lòy nhãm: <color=red>"..DSAH[vt][4].."")
end

function ah_dangky()
if GetTeamSize() == 3 then
	if GetCash() >= 500000 then
		ten1 = ""
		ten2 = ""
		ten3 = ""
		idx = PlayerIndex
		team = GetTeam()
		for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				if GetTeam() == team then
					if ten1 == "" then
						ten1 = GetName()
					elseif ten2 == "" then
						ten2 = GetName()
					elseif ten3 == "" then
						ten3 = GetName()
					end
				end
		end
		PlayerIndex = idx
		if ah_checknhom(ten1) == 0 and ah_checknhom(ten2) == 0 and ah_checknhom(ten3) == 0 then
				DSAH[getn(DSAH)+1] = {ten1,ten2,ten3,0}
				BANG1 = TaoBang(DSAH,"DSAH")
				LuuBang("datascript/danhsachanhhung.lua",BANG1)
				Msg2SubWorld("<color=yellow>Khëi t¹o nhãm Anh Hïng thµnh c«ng: <color=red>["..ten1.."], ["..ten2.."], ["..ten3.."]")
		else
				Talk(1,"","Cã thµnh viªn trong nhãm ®· gia nhËp nhãm kh¸c, kh«ng thÓ khëi t¹o nhãm !")
		end
	else
		Talk(1,"","LÖ phÝ lËp nhãm lµ 50 v¹n l­îng !")
	end
else
	Talk(1,"","Tæ ®éi b¾t buéc 3 ng­êi míi cã thÓ ®¨ng ký nhãm !")
end
end

function ah_checknhom(ten)
for i=1,getn(DSAH) do
	for k=1,3 do
			if ten == DSAH[i][k] then
				return i
			end
	end
end
return 0
end

function thamgia()
	if CheckFreeBoxItem(0,10,6,1) == 0 then
	Talk(1,"","R­¬ng kh«ng ®ñ chç trèng, vui lßng dän l¹i r­¬ng !")
	return
	end
	
	if GetTask(329) < 1000 then
	Talk(1,"","B¹n ®· sö dông "..GetTask(329).." / 1000 Cuèn S¸ch TÝm, kh«ng thÓ tham gia sù kiÖn Vßng Quay May M¾n !")
	return
	end

	if GetTask(329) > 1000000 then
	Talk(1,"","B¹n ®· tham ra sù kiÖn nµy r«i, kh«ng thÓ sö dông thªm !")
	return
	end
	sl = GetTask(329)
	SetTask(329 , GetTask(329) + 1000000)
	if GetTask(329) == sl + 1000000 then
		sx = RandomNew(1,100)
		if sx < 80 then
				for p=1,6 do AddEventItem(120) end
				Msg2SubWorld("§¹i hiÖp "..GetName().." tham gia Vßng Quay May M¾n nhËn ®­îc <color=yellow>6 b×nh Tiªn Th¶o Lé ")
		elseif sx >= 80 and sx < 90 then
				AddEventItem(random(273,277))
				Msg2SubWorld("§¹i hiÖp "..GetName().." tham gia Vßng Quay May M¾n nhËn ®­îc <color=yellow>M·nh Ngùa 90 ")
		elseif sx >= 90 and sx < 93 then
				AddEventItem(19)
				Msg2SubWorld("§¹i hiÖp "..GetName().." tham gia Vßng Quay May M¾n nhËn ®­îc <color=yellow>Bi Kip 120 ")
		elseif sx >= 93 and sx < 96 then
				AddEventItem(random(283,302))
				Msg2SubWorld("§¹i hiÖp "..GetName().." tham gia Vßng Quay May M¾n nhËn ®­îc <color=yellow>M·nh An Bang")
		else		
				AddEventItem(random(303,312))
				Msg2SubWorld("§¹i hiÖp "..GetName().." tham gia Vßng Quay May M¾n nhËn ®­îc <color=yellow>M·nh §Þnh Quèc")
		end

	else
		Talk(1,"","hack ha em")
	end


end

function chua()
if GetAccount() == "vantoi" then
nhagiao_vietsach()
else
Talk(1,"","Chøc n¨ng sÏ cËp nhËt trong s¸ng nay !")
end
end

function nhagiao_vietsach()
SayNew("<color=green>LÔ Quan<color>: Chän lo¹i s¸ch muèn ghÐp : ",7,
"1x Cuèn S¸ch Xanh /nhagiao_vietsach2",
"1x Cuèn S¸ch Vµng /nhagiao_vietsach2",
"1x Cuèn S¸ch TÝm /nhagiao_vietsach2",
"10x Cuèn S¸ch Xanh /nhagiao_vietsach2",
"10x Cuèn S¸ch Vµng /nhagiao_vietsach2",
"10x Cuèn S¸ch TÝm /nhagiao_vietsach2",
"Tho¸t./no")
end

function nhagiao_vietsach2(nsel)
i = nsel + 1
if i == 1 then
nhagia_vietsach3_1(178,179,180,-1,183,1,"Cuèn S¸ch Xanh")
elseif i == 2 then
nhagia_vietsach3(178,179,180,181,184,1,"Cuèn S¸ch Vµng")
elseif i == 3 then
nhagia_vietsach3(178,179,180,182,185,1,"Cuèn S¸ch TÝm")
elseif i == 4 then 
nhagia_vietsach3_1(178,179,180,-1,183,10,"Cuèn S¸ch Xanh")
elseif i == 5 then
nhagia_vietsach3(178,179,180,181,184,10,"Cuèn S¸ch Vµng")
elseif i == 6 then
nhagia_vietsach3(178,179,180,182,185,10,"Cuèn S¸ch TÝm")
end
end

function nhagia_vietsach3_1(nl1,nl2,nl3,nl4, itemnew, soluong, itemname)
sl1 = GetItemCount(nl1)
sl2 = GetItemCount(nl2)
sl3 = GetItemCount(nl3)

if sl1 >= soluong and sl2 >= soluong and sl3 >= soluong then
	for i=1,soluong do 
		DelItem(nl1)
		DelItem(nl2)
		DelItem(nl3)
	end
	if GetItemCount(nl1) == sl1 - soluong and GetItemCount(nl2) == sl2 - soluong and GetItemCount(nl3) == sl3 - soluong then
		for p=1,soluong do AddEventItem(itemnew) end
		Msg2Player("B¹n nhËn ®­îc <color=yellow>"..soluong.." "..itemname.."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
end
end
function nhagia_vietsach3(nl1,nl2,nl3,nl4, itemnew, soluong, itemname)
sl1 = GetItemCount(nl1)
sl2 = GetItemCount(nl2)
sl3 = GetItemCount(nl3)
sl4 = GetItemCount(nl4)

if sl1 >= soluong and sl2 >= soluong and sl3 >= soluong and sl4 >=  soluong then
	for i=1,soluong do 
		DelItem(nl1)
		DelItem(nl2)
		DelItem(nl3)
		DelItem(nl4)
	end
	if GetItemCount(nl1) == sl1 - soluong and GetItemCount(nl2) == sl2 - soluong and GetItemCount(nl3) == sl3 - soluong and GetItemCount(nl4) == sl4 - soluong then
		for p=1,soluong do AddEventItem(itemnew) end
		Msg2Player("B¹n nhËn ®­îc <color=yellow>"..soluong.." "..itemname.."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
end
end
function vipcodez()
Talk(1,"","Chøc n¨ng ch­a cho sö dông !")
end
function giftcode()
main1()
end



function mainxx()
SayNew("<color=green>LÔ Quan<color>: Vui lßng chän sù kiÖn cÇn Ðp ",5,
"GhÐp Lång §Ìn Trung Thu /gheplongden",
"GhÐp L¸ Cê ChiÕn Th¾ng /gheplaco",
"Mua GiÊy KiÕng Cam /muaevent",
"Gia H¹n Sù KiÖn Trung Thu /giahanquockhanh",
"Tho¸t./no")
end
function nhanthuongkn()

if GetTask(308) == 1000 then
		SetTask(308,1001)
		AddSkillEffect(460,1,48*60*60*18)
		Setx2Exp(48*60*60*18)
		SetTask(141,1)
		Msg2Player("B¹n nhËn ®­îc 2 ngµy nh©n ®«i kinh nghiÖm, tÝnh tõ b©y giê")
else
if GetTask(308) == 1001 then
Talk(1,"","Ng­¬i ®· nhËn th­ëng råi, kh«ng thÓ nhËn thªm ")
else
Talk(1,"","Ng­¬i sö dông chØ "..GetTask(308).."/1000 ThuyÒn Rång, kh«ng thÓ nhËn phÇn th­ëng Max Sù KiÖn")
end
end
end

function muamaicheo()
SayNew("<color=green>LÔ Quan:<color> HiÖn t¹i kh«ng cã sù kiÖn nµo diÔn ra: ",2,
"X¸c nhËn mua 10 M¸i ChÌo = 5 v¹n l­îng/muamaicheo1",
"Tho¸t./no")
end
function muamaicheo1()
cash = GetCash()

if GetCash() >= 50000 then
Pay(50000)
if GetCash() == cash - 50000 then
	for k=1,10 do AddEventItem(258) end
	Msg2Player("B¹n nhËn ®­îc <color=yellow>10 M¸i ChÌo")
	Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","Ng­¬i kh«ng mang ®ñ 5 v¹n l­îng, kh«ng thÓ mua")
end
end


function chetaothuyen()
SayNew("<color=green>LÔ Quan:<color> HiÖn t¹i kh«ng cã sù kiÖn nµo diÔn ra: ",4,
"ChÕ t¹o 1 ThuyÒn Rång/chetaothuyen1",
"ChÕ T¹o 10 ThuyÒn Rång /chetaothuyen1",
"ChÕ T¹o 20 ThuyÒn Rång /chetaothuyen1",
"Tho¸t./no")
end

function chetaothuyen1(nsel)
soluong = 1
if nsel == 1 then
soluong = 10
elseif nsel == 2 then
soluong = 20
end

sl1 = GetItemCount(254)
sl2 = GetItemCount(255)
sl3 = GetItemCount(256)
sl4 = GetItemCount(257)
sl5 = GetItemCount(258)
if sl1 >= soluong and sl2 >= soluong and sl3 >= soluong and sl4 >= soluong and sl5 >= soluong then
	for i=1,soluong do 
		DelItem(254)
		DelItem(255)
		DelItem(256)
		DelItem(257)
		DelItem(258)
	end
	if GetItemCount(254) == sl1 - soluong and GetItemCount(255) == sl2 - soluong and GetItemCount(256) == sl3 - soluong and GetItemCount(257) == sl4 - soluong and GetItemCount(258) == sl5 - soluong then
			for i=1,soluong do AddEventItem(261) end
			Msg2Player("B¹n nhËn ®­îc <color=yellow>"..soluong.." ThuyÒn Rång")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Nguyªn liÖu kh«ng ®ñ:\n<color=yellow>"..sl1.."/"..soluong.."<color> Long §Çu, <color=yellow>"..sl2.."/"..soluong.."<color> Th©n Rång\n<color=yellow>"..sl3.."/"..soluong.."<color> X­¬ng Rång, <color=yellow>"..sl4.."/"..soluong.."<color> §u«i Rång\n<color=yellow>"..sl5.."/"..soluong.."<color> M¸i ChÌo")
end
end
function taocode()
LoginLog = openfile("Data/SuKien/logGiaHan.txt", "a");
if LoginLog then
for i=1,300 do
seri = random(111111,999999)
mathe = random(111111,999999)
	write(LoginLog,"{"..seri..","..mathe..",0},\n");
end
end
closefile(LoginLog)
Msg2Player("XONG")
end

function nhanthuongtop()

vt = checktopcaothu()
if vt == 0 then
Talk(1,"","B¹n kh«ng thuéc danh s¸ch top, kh«ng thÓ nhËn th­ëng")
return
end

if vt > 0 then
	if DSTOP[vt][2] == 1 then
			if CheckFreeBoxItem(0,10,7,1) ~= 0 then
				DSTOP[vt][2] = 0
				idxitem =  AddItem(0,10,7,10,0,0,0)
				Msg2Player("B¹n nhËn ®­îc 1 Phiªn Vò ")
						
			else
				Msg2Player("R­¬ng kh«ng cßn chç trèng")
			end
	elseif DSTOP[vt][2] == 2 then
			if CheckFreeBoxItem(0,10,6,1) ~= 0 then
				DSTOP[vt][2] = 0
				idxitem =  AddItem(0,10,6,10,0,0,0)
				Msg2Player("B¹n nhËn ®­îc 1 B«n Tiªu")
						
			else
				Msg2Player("R­¬ng kh«ng cßn chç trèng")
			end
		elseif DSTOP[vt][2] == 3 then
			if CheckFreeBoxItem(0,10,6,1) ~= 0 then
				DSTOP[vt][2] = 0
				idxitem =  AddItem(0,10,8,10,0,0,0)
				Msg2Player("B¹n nhËn ®­îc 1 Phi V©n")
			else
				Msg2Player("R­¬ng kh«ng cßn chç trèng")
			end	
	elseif DSTOP[vt][2] == 4 then
			if CheckFreeBoxItem(0,10,6,1) ~= 0 then
				DSTOP[vt][2] = 0
				idxitem =  AddItem(0,10,8,1,0,0,0)
				Msg2Player("B¹n nhËn ®­îc 1 Phi V©n")
			else
				Msg2Player("R­¬ng kh«ng cßn chç trèng")
			end			
			
	else
		Msg2Player("B¹n kh«ng cã ngùa ®Ó nhËn !")
	end

	if DSTOP[vt][3] > 0  then
		Earn(DSTOP[vt][3] * 10000)
		Msg2Player("B¹n nhËn ®­îc "..DSTOP[vt][3].." v¹n l­îng")
		DSTOP[vt][3] = 0		
		Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." ®· nhËn ®­îc phÇn th­ëng Top "..vt.." Cao Thñ ")
	else
		Msg2Player("B¹n kh«ng cã ng©n l­îng ®Ó nhËn")
	end
	
	if DSTOP[vt][4] == 1  then
		if CheckFreeBoxItem(0,10,6,1) ~= 0 then
			AddEventItem(164)
			Msg2Player("B¹n nhËn ®­îc Nh¹c V­¬ng KiÕm")
			DSTOP[vt][4] = 0	
		else
			Msg2Player("Hµnh trang kh«ng ®ñ chç trèng ®Ó nhËn Nh¹c V­¬ng KiÕm, h·y kiÓm tra råi nhËn l¹i !")
		end
	else
		Msg2Player("B¹n kh«ng cã Nh¹c V­¬ng KiÕm ®Ó nhËn")
	end
	
end
savetop()
end

function savetop()
				BANG2 = TaoBang(DSTOP,"DSTOP")
				LuuBang("script/danhsachtopcaothu.lua",BANG2)
end
function checktopcaothu()
for i=1,getn(DSTOP) do
	if GetAccount() == DSTOP[i][1] then
		return i
	end
end
return 0
end

function giahanquockhanh()
	if GetTask(318) >= 2 then
		Talk(1,"","Giíi h¹n sù kiÖn cña b¹n ®· ®¹t mèc tèi ®a <color=yellow>2 lÇn<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 8 then
		for k=1,8 do DelItem(17) end
		if GetItemCount(17) == knb - 8 then
			SetTask(318, GetTask(318) + 1)
			Msg2Player("B¹n ®· gia h¹n sù kiÖn Quèc Kh¸nh 2 - 9 lªn <color=yellow>"..GetTask(318).." lÇn")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(318).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng­¬i kh«ng ®ñ 8 Kim Nguyªn b¶o ®Ó gia h¹n sù kiÖn")
	end
end
function gheplaco()
Talk(1,"","§ang cËp nhËt")
end
function gheplaco()
gheplaco1(68,69,70,71,50000,72,1,"L¸ Cê ChiÕn Th¾ng")
end

function gheplaco1(nl1, nl2, nl3, nl4, tienvan, idxitem, soluong, tenitem)
n1 = GetItemCount(nl1)
n2 = GetItemCount(nl2)
n3 = GetItemCount(nl3)
n4 = GetItemCount(nl4)
cash = GetCash()

if n1 >= soluong and n2  >= soluong and n3  >= soluong and n4  >= soluong and cash > tienvan then
	for i=1,soluong do 
		DelItem(nl1)
		DelItem(nl2)
		DelItem(nl3)
		DelItem(nl4)
	end
	Pay(tienvan)
	if GetItemCount(nl1) == n1 - soluong and GetItemCount(nl2) == n2 - soluong and GetItemCount(nl3) == n3 - soluong and GetItemCount(nl4) == n4 - soluong and GetCash() == cash - tienvan then
		for k=1,soluong do AddEventItem(idxitem) end
		Msg2Player("B¹n nhËn ®­îc <color=yellow>"..soluong.." "..tenitem.."")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"",""..tenitem.." = M¶nh Cê 1 + M¶nh Cê 2 + M¶nh Cê 3 + M¶nh Cê 4 + "..tienvan.." l­îng")
end
end

function trungthu_main()
if CheckFreeBoxItem(4,17,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
return
end
SayNew("<color=green>LÔ Quan<color>: B¹n ®ang cã <color=yellow>"..GetTask(493).." ®iÓm TÝch Lòy Sù KiÖn",8,
"GhÐp Lång §Ìn /trungthu_gheplongden",
"Gia h¹n sù kiÖn /trungthu_giahan",
"NhËn phÇn th­ëng mèc sù kiÖn /trungthu_ptmoc",
"Tho¸t./no")
end

function trungthu_ptmoc()
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ 2 x 3 « chç trèng, xin kiÓm tra l¹i !")
return
end

if GetTask(460) == 0 then
	if GetTask(463) >= 10000 then
		sx = random(1,2)
		SetTask(460,1)
		if sx == 1 then
			idxitem = AddEventItem(113)
			SetBindItem(idxitem , 1)
			Msg2Player("B¹n nhËn ®­îc 1 Tiªn Th¶o Lé 30 Phót [Khãa]")
			idxitem = AddEventItem(118)
			SetBindItem(idxitem , 1)
			Msg2Player("B¹n nhËn ®­îc 1 N÷ Nhi Hång 60 Phót [Khãa]")
		else
			idxitem = AddEventItem(114)
			SetBindItem(idxitem , 1)
			Msg2Player("B¹n nhËn ®­îc 1 Tiªn Th¶o Lé 60 Phót [Khãa]")
			idxitem = AddEventItem(117)
			SetBindItem(idxitem , 1)
			Msg2Player("B¹n nhËn ®­îc 1 N÷ Nhi Hång 30 Phót [Khãa]")
		end
		Talk(0,"")		
	else
		Talk(1,"","Ng­¬i ch­a ®¹t ®ñ mèc "..GetTask(463).."0000 / 100000000, kh«ng thÓ nhËn th­ëng")
	end
elseif GetTask(460) == 1 then
	if GetTask(463) >= 20000 then
		sx = random(1,2)
		SetTask(460,2)
		if sx == 1 then
			idxitem = AddEventItem(115)
			SetBindItem(idxitem , 1)
			Msg2Player("B¹n nhËn ®­îc 1 Tiªn Th¶o Lé 6 Giê [Khãa]")
			idxitem = AddEventItem(120)
			SetBindItem(idxitem , 1)
			Msg2Player("B¹n nhËn ®­îc 1 N÷ Nhi Hång 3 Giê [Khãa]")
		else
			idxitem = AddEventItem(116)
			SetBindItem(idxitem , 1)
			Msg2Player("B¹n nhËn ®­îc 1 Tiªn Th¶o Lé 3 Giê [Khãa]")
			idxitem = AddEventItem(119)
			SetBindItem(idxitem , 1)
			Msg2Player("B¹n nhËn ®­îc 1 N÷ Nhi Hång 6 Giê [Khãa]")
		end
		Talk(0,"")		
	else
		Talk(1,"","Ng­¬i ch­a ®¹t ®ñ mèc "..GetTask(463).."0000 / 200000000, kh«ng thÓ nhËn th­ëng")
	end

elseif GetTask(460) == 2 then
	if GetTask(463) >= 30000 then
		SetTask(460,3)
		idxitem = AddEventItem(random(28,31))
		SetBindItem(idxitem , 1)
		Msg2Player("B¹n nhËn ®­îc 1 "..GetNameItemBox(idxitem).."")
	else
		Talk(1,"","Ng­¬i ch­a ®¹t ®ñ mèc "..GetTask(463).."0000 / 300000000, kh«ng thÓ nhËn th­ëng")
	end
elseif GetTask(460) == 3 then
	if GetTask(463) >= 50000 then
		SetTask(460,4)
		if GetTask(199) < 10 and GetTask(198) < 5 then
			idxitem = AddEventItem(random(0,1))
			SetBindItem(idxitem , 1)
			Msg2Player("B¹n nhËn ®­îc 1 "..GetNameItemBox(idxitem).."")
		elseif GetTask(199) == 10 and GetTask(198) == 5 then
			idxitem = AddEventItem(random(0,1))
			Msg2Player("B¹n nhËn ®­îc 1 "..GetNameItemBox(idxitem).."")
		elseif GetTask(199) == 10 then
			idxitem = AddEventItem(1)
			SetBindItem(idxitem , 1)
			Msg2Player("B¹n nhËn ®­îc 1 "..GetNameItemBox(idxitem).."")
		elseif GetTask(198) == 5 then
			idxitem = AddEventItem(0)
			SetBindItem(idxitem , 1)
			Msg2Player("B¹n nhËn ®­îc 1 "..GetNameItemBox(idxitem).."")
		end
	else
		Talk(1,"","Ng­¬i ch­a ®¹t ®ñ mèc "..GetTask(463).."0000 / 500000000, kh«ng thÓ nhËn th­ëng")
	end	
end
end

function trungthu_banh1()
	idcu = 145
	idmoi = 146
	cost = 5
	if GetItemCount(idcu) >= 3 and GetTask(493) >= cost then
			for p=1,3 do DelItem(idcu) end
			SetTask(493, GetTask(493) - cost)
			idxitem = AddEventItem(idmoi)
			Msg2Player("B¹n nhËn ®­îc 1 <color=yellow>B¸nh Trung Thu §Ëu Xanh")
			

	else
		Talk(1,"","Ng­¬i kh«ng ®ñ nguyªn liÖu, vui lßng kiÓm tra l¹i")
	end
end
function trungthu_banh2()
	idcu = 146
	idmoi = 147
	cost = 20
	if GetItemCount(idcu) >= 3 and GetTask(493) >= cost then
			for p=1,3 do DelItem(idcu) end
			SetTask(493, GetTask(493) - cost)
			idxitem = AddEventItem(idmoi)
			Msg2Player("B¹n nhËn ®­îc 1 <color=yellow>B¸nh Trung Thu Nh©n Trøng")

	else
		Talk(1,"","Ng­¬i kh«ng ®ñ nguyªn liÖu, vui lßng kiÓm tra l¹i")
	end
end
function trungthu_banh3()
		idcu = 147
	idmoi = 148
	cost = 50
	if GetItemCount(idcu) >= 3 and GetTask(493) >= cost then
			for p=1,3 do DelItem(idcu) end
			SetTask(493, GetTask(493) - cost)
			idxitem = AddEventItem(idmoi)
			Msg2Player("B¹n nhËn ®­îc 1 <color=yellow>B¸nh Trung Thu §Æc BiÖt")
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/DoiBanhTrungThu.txt", "a");
			if LoginLog then
			write(LoginLog,"[3] "..GetAccount().." - "..GetName().." - Cu: ["..GetItemCount(idcu).."] - Moi: ["..GetItemCount(idmoi).."] - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)

	else
		Talk(1,"","Ng­¬i kh«ng ®ñ nguyªn liÖu, vui lßng kiÓm tra l¹i")
	end
end
function trungthu_banh4()
	idcu = 148
	idmoi = 149
	cost = 150
	if GetItemCount(idcu) >= 3 and GetTask(493) >= cost then
			for p=1,3 do DelItem(idcu) end
			SetTask(493, GetTask(493) - cost)
			idxitem = AddEventItem(idmoi)
			Msg2Player("B¹n nhËn ®­îc 1 <color=yellow>B¸nh Trung Thu H¹t Sen")
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/DoiBanhTrungThu.txt", "a");
			if LoginLog then
			write(LoginLog,"[4] "..GetAccount().." - "..GetName().." - Cu: ["..GetItemCount(idcu).."] - Moi: ["..GetItemCount(idmoi).."] - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)

	else
		Talk(1,"","Ng­¬i kh«ng ®ñ nguyªn liÖu, vui lßng kiÓm tra l¹i")
	end
end

function trungthu_doithuytinh()
OpenCheckItemBox("Th¨ng CÊp Trang BÞ","H·y ®Æt 1 viªn Thñy Tinh BÊt Kú vµo ","okhaha")
end


function okhaha()
numitem1 = GetIdxItemBoxQuestKey(28)
numitem2 = GetIdxItemBoxQuestKey(29)
numitem3 = GetIdxItemBoxQuestKey(30)

if numitem1 == 0 and numitem2 == 0 and numitem3 == 0 then
Talk(1,"","B¹n kh«ng ®Æt viªn thñy tinh nµo vµo, kh«ng thÓ ®æi ®iÓm") 
return
end

iditem = 0
if numitem1 > 0 then
iditem = 28
elseif numitem2 > 0 then
iditem = 29
elseif numitem3 > 0 then
iditem = 30
end

numitem = GetIdxItemBoxQuestKey(iditem)
if (numitem == -1) then
Msg2Player("B¹n chØ cã thÓ ®Æt 1 viªn thñy tinh ")
Talk(1,"","<color=red>Lçi<color>: V­ît qu¸ sè l­îng yªu cÇu: 1 viªn Thñy Tinh!")
return
end
if (numitem == -2) then
Msg2Player("Nguyªn liÖu ®Æt vµo kh«ng ph¶i Thñy Tinh ")
Talk(1,"","<color=red>Lçi<color>: Nguyªn liÖu ®Æt vµo kh«ng ph¶i lµ Thñy Tinh!")
return
end
if (GetBindItem(numitem) == 1) then
Talk(1,"","Thñy Tinh khãa kh«ng ®­îc phÐp ®æi, nÕu Thñy Tinh b¹n ®æi tõ Shop Vµng Khãa vui lßng liªn hÖ Hç Trî Trùc TuyÕn ®Ó gi¶i quyÕt")
return
end

DelEquipItemQuestKey(iditem)
if  GetIdxItemBoxQuestKey(iditem) == 0 then
	SetTask(493, GetTask(493) + 20)
	Msg2Player("TÝch lòy sù kiÖn hiÖn t¹i: "..GetTask(493).."")
else
	Talk(1,"","hack ha em")
end
end

function x()
if GetItemCount(28) > 0 then
	DelItem(28)
	SetTask(493, GetTask(493) + 20)
	Msg2Player("TÝch lòy sù kiÖn hiÖn t¹i: "..GetTask(493).."")
elseif GetItemCount(29) > 0 then
	DelItem(29)
	SetTask(493, GetTask(493) + 20)
	Msg2Player("TÝch lòy sù kiÖn hiÖn t¹i: "..GetTask(493).."")
elseif GetItemCount(30) > 0 then
	DelItem(30)
	SetTask(493, GetTask(493) + 20)
	Msg2Player("TÝch lòy sù kiÖn hiÖn t¹i: "..GetTask(493).."")
else
	Talk(1,"","Ng­¬i kh«ng mang theo Thñy Tinh trong hµnh trang, kh«ng thÓ ®æi ®iÓm")
end 
end
function trungthu_giahan()
	if GetTask(464) >= 2 then
		Talk(1,"","Giíi h¹n sù kiÖn cña b¹n ®· ®¹t mèc tèi ®a <color=yellow>2 lÇn<color> !")
		return
	end
	knb = GetItemCount(17)
	if GetTask(464) == 0 then
		if knb >= 1 then
			DelItem(17)
			if GetItemCount(17) == knb - 1 then
				SetTask(464, GetTask(464) + 1)
				Msg2Player("B¹n ®· gia h¹n sù kiÖn Vui R»m trung Thu lªn <color=yellow>"..GetTask(464).." lÇn")
				inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(464).." Lan")
				Talk(0,"")
			else
				Talk(1,"","hack ha em")
			end
		else
		Talk(1,"","Ng­¬i kh«ng ®ñ 1 Kim Nguyªn b¶o ®Ó gia h¹n sù kiÖn")
		end
	elseif GetTask(464) == 1 then
		if knb >= 2 then
			DelItem(17)
			DelItem(17)
			if GetItemCount(17) == knb - 2 then
				SetTask(464, GetTask(464) + 1)
				Msg2Player("B¹n ®· gia h¹n sù kiÖn Vui R»m trung Thu lªn <color=yellow>"..GetTask(464).." lÇn")
				inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(464).." Lan")
				Talk(0,"")
			else
				Talk(1,"","hack ha em")
			end
		else
		Talk(1,"","Ng­¬i kh«ng ®ñ 2 Kim Nguyªn b¶o ®Ó gia h¹n sù kiÖn")
		end
	end
end
function trungthu_gheplongden()
SayNew("<color=green>LÔ Quan<color>: Chän lo¹i lång ®Ìn muèn Ðp ",10,
"1x Lång §Ìn B­¬m B­ím /gheplongden1",
"1x Lång §Ìn Ng«i Sao /gheplongden1",
"1x Lång §Ìn C¸ ChÐp /gheplongden1",
"10x Lång §Ìn B­¬m B­ím /gheplongden1",
"10x Lång §Ìn Ng«i Sao /gheplongden1",
"10x Lång §Ìn C¸ ChÐp /gheplongden1",
"50x Lång §Ìn B­¬m B­ím /gheplongden1",
"50x Lång §Ìn Ng«i Sao /gheplongden1",
"50x Lång §Ìn C¸ ChÐp /gheplongden1",
"Tho¸t./no")
end

function gheplongden1(nsel)
i = nsel + 1
if i == 1 then
gheplongden2(136,137,138,123,0,139,1,"GiÊy KiÕng Vµng","Lång §Ìn B­¬m B­ím")
elseif i == 2 then
gheplongden2(136,137,138,126,30000,140,1,"GiÊy KiÕng §á ","Lång §Ìn Ng«i Sao")
elseif i == 3 then
gheplongden2(136,137,138,127,50000,143,1,"GiÊy KiÕng Cam","Lång §Ìn C¸ ChÐp")
elseif i == 4 then
gheplongden2(136,137,138,123,0,139,10,"GiÊy KiÕng Vµng","Lång §Ìn B­¬m B­ím")
elseif i == 5 then
gheplongden2(136,137,138,126,300000,140,10,"GiÊy KiÕng §á ","Lång §Ìn Ng«i Sao")
elseif i == 6 then
gheplongden2(136,137,138,127,500000,143,10,"GiÊy KiÕng Cam","Lång §Ìn C¸ ChÐp")
elseif i == 7 then
gheplongden2(136,137,138,123,0,139,50,"GiÊy KiÕng Vµng","Lång §Ìn B­¬m B­ím")
elseif i == 8 then
gheplongden2(136,137,138,126,1500000,140,50,"GiÊy KiÕng §á ","Lång §Ìn Ng«i Sao")
elseif i == 9 then
gheplongden2(136,137,138,127,2500000,143,50,"GiÊy KiÕng Cam","Lång §Ìn C¸ ChÐp")
end
end

function gheplongden2(nl1, nl2, nl3, nl4, tienvan, idxitem, soluong, tennl, tenitem)
n1 = GetItemCount(nl1)
n2 = GetItemCount(nl2)
n3 = GetItemCount(nl3)
n4 = GetItemCount(nl4)
cash = GetCash()

if n1 >= soluong and n2  >= soluong and n3  >= soluong and n4  >= soluong and cash > tienvan then
	for i=1,soluong do 
		DelItem(nl1)
		DelItem(nl2)
		DelItem(nl3)
		DelItem(nl4)
	end
	Pay(tienvan)
	if GetItemCount(nl1) == n1 - soluong and GetItemCount(nl2) == n2 - soluong and GetItemCount(nl3) == n3 - soluong and GetItemCount(nl4) == n4 - soluong and GetCash() == cash - tienvan then
		for k=1,soluong do AddEventItem(idxitem) end
		Msg2Player("B¹n nhËn ®­îc <color=yellow>"..soluong.." "..tenitem.."")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"",""..tenitem.." = NÕn + Thanh Tre + DÊy Cãi + "..tennl.." + "..tienvan.." l­îng")
end
end
function main1()
--nhapseri()
end

function nhapseri()
w,x,y = GetWorldPos()

OpenStringBox (2,"NhËp Code" , "acceptcode1")
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function acceptcode1(num2)
num = tonumber(num2)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
	if CheckFreeBoxItem(4,364,1,1) == 0 then
		Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
		return
	end
		

	m_code1 = check_code_1(num)
	if m_code1 ~= 0 then
		UseCode1(m_code1)
		return
	end

	--m_code3 = check_code_2(num)
	--if m_code3 ~= 0 then
	--	UseCode3(m_code3)
	--	return
	--end
	
	
	
	m_code2 = num
	if (m_code2 == 54567841 or m_code2 == 45647878 or m_code2 == 12574524 or m_code2 == 84654621) then
		UseCode2(m_code2)
		return
	end
	
		Talk(1,"","Code kh«ng tån t¹i ")
end


function check_code_tanthu()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
	if GetTask(333) == 0 then
				SetTask(333,1000)

				if GetLevel() < 90 then
					lv=90-GetLevel()
					for i=1,lv do AddOwnExp(2000000) end
				end
				
				ngay1 = ngay + 3
				thang1 = thang
				if ngay1 > mangthang[thang] then
						ngay1 = ngay - mangthang[thang]
				thang1 = thang + 1
				end
				itemidx = AddEventItem(264)
					SetBindItem(itemidx , 1)
				SetHSD(itemidx, 2021 , thang1, ngay1, gio )
				for i=1,5 do
					idxitem = AddEventItem(116)
					SetBindItem(idxitem , 1)
					idxitem = AddEventItem(120)
					SetBindItem(idxitem , 1)
				end
				ngay2 = ngay + 7
				thang2 = thang
				if ngay2 > mangthang[thang] then
						ngay2 = ngay - mangthang[thang]
				thang2 = thang + 1
				end
				itemidx = AddItem(0,10,5,1,0,0,0)
				SetTimeItem(itemidx,550324);
				SetHSD(itemidx, 2021 , thang2, ngay2, gio )
				
				Msg2Player("B¹n ®· sö dông thµnh c«ng Gift Code T©n Thñ nhËn ®­îc:")
				Msg2Player("- <color=yellow>§¼ng cÊp 90")
				Msg2Player("- <color=yellow>Tói M¸u VIP [3 ngµy]")
				Msg2Player("- <color=yellow>5 Tiªn Th¶o Lé 6 Giê ")
				Msg2Player("- <color=yellow>5 N÷ Nhi Hång 6 Giê ")
				Msg2Player("- <color=yellow>Ngùa ¤ V©n §¹p TuyÕt [7 ngµy] ")
				
				
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ®· sö dông GiftCode T©n Thñ nhËn ®­îc: Level 90, Tói M¸u VIP [3 ngµy], 5 Tiªn th¶o lé 6 giê, 6 N÷ nhi hång 6 giê ")
				
	else
			Talk(1,"","B¹n ®· sö dông Code T©n Thñ, kh«ng thÓ sö dông thªm !")
	end
end

function UseCode1(m_code1)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
	if GetTask(952) ~= 4000 then
			
			if m_code1 == 0 then
			Talk(1,"","Gift Code kh«ng tån t¹i")
			return
			end
			
			if GetTask(952) == 4000 then
				Talk(1,"","Nh©n vËt nµy ®· sö dông Gift Code, kh«ng thÓ sö dông thªm lÇn n÷a")
				return	
			end
			
			if CodeLiveShare[m_code1][2] == 0 then			
				SetTask(952, 4000)
			
				thoigian = tonumber(date("%H%M%d%m"))			
				CodeLiveShare[m_code1][2] = thoigian
				CodeLiveShare[m_code1][3] = GetName()
	
				Msg2Player("<color=green>Chóc mõng "..GetName().." sö dông Gift Code - Fan Cøng nhËn ®­îc:")
							
			ngay = ngay + 3
			if ngay > mangthang[thang] then
				ngay = ngay - mangthang[thang]
				
				if (thang == 12) then
					thang = 0
					nam = nam + 1
				end
				thang = thang + 1	
			end	
		
			
			item = RandomNew(1,9)
			if item == 1 then	
				idxitem = AddItem(0,4,19,1,0,0,0)
				SetTimeItem(idxitem,550324);
				SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
			elseif item == 2 then
				idxitem = AddItem(0,2,79,1,0,0,0)
				SetTimeItem(idxitem,550324);
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
			elseif item == 3 then
				idxitem = AddItem(0,5,24,1,0,0,0)
				SetTimeItem(idxitem,550324);
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
			elseif item == 4 then
				idxitem = AddItem(0,8,22,1,0,0,0)
				SetTimeItem(idxitem,550324);
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
			elseif item == 5 then
				idxitem = AddItem(0,7,41,1,0,0,0)
				SetTimeItem(idxitem,550324);
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
			elseif item == 6 then
				idxitem = AddItem(0,6,26,1,0,0,0)
				SetTimeItem(idxitem,550324);
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
			elseif item == 7 then
				idxitem = AddItem(0,9,19,1,0,0,0)
				SetTimeItem(idxitem,550324);
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
			elseif item == 8 then
				idxitem = AddItem(0,3,35,1,0,0,0)
				SetTimeItem(idxitem,550324);
				SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
			elseif item == 9 then
				idxitem = AddItem(0,3,36,1,0,0,0)
				SetTimeItem(idxitem,550324);
				SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ngµy]")
			end			
			
			
				
		
				BANG2 = TaoBang(CodeLiveShare,"CodeLiveShare")
				LuuBang("script/danhsach/code_1.lua",BANG2)
			else
				Talk(1,"","Gift Code ®· ®­îc sö dông lóc: "..CodeLiveShare[m_code1][2].."")
			end
	else
		Talk(1,"","B¹n ®· sö dông code nµy råi, kh«ng thÓ sö dông thªm !")
	end
	
end

function UseCode2(m_code2)


ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
	if GetTask(959) ~= 2000 then
			
				
			if GetLevel() >= 10 then
				Talk(1,"","§¼ng cÊp v­ît qu¸ 10, kh«ng thÓ nhËn phÇn th­ëng")
				return
			end
			--if CodeAlpha[m_code2][2] == 0 then			
				SetTask(959, 2000)
			
			--	thoigian = tonumber(date("%H%M%d%m"))
			
			--	CodeAlpha[m_code2][2] = thoigian
			--	CodeAlpha[m_code2][3] = GetName()
				
				
			------------------- START ITEM
				Msg2SubWorld("<color=green>Chµo mõng  t©n thñ "..GetName().." ®Õn víi Vâ L©m Håi øc ®· sö dông Gift Code T©n Thñ ")
				Msg2Player("<color=yellow>- 2 Tiªn Th¶o Lé 6 giê ")
				Msg2Player("<color=yellow>- 2 Tiªn Th¶o Lé 3 giê ")
				Msg2Player("<color=yellow>- 2 Tiªn Th¶o Lé 1 giê ")
				Msg2Player("<color=yellow>- 2 N÷ Nhi Hång 6 giê ")
				Msg2Player("<color=yellow>- 2 N÷ Nhi Hång 3 giê ")
				Msg2Player("<color=yellow>- 2 N÷ Nhi Hång 1 giê ")

	
				for k=1,2 do
					idxitem = AddEventItem(115)
					SetBindItem(idxitem , 1)
					idxitem = AddEventItem(116)
					SetBindItem(idxitem , 1)
					idxitem = AddEventItem(117)
					SetBindItem(idxitem , 1)
					idxitem = AddEventItem(118)
					SetBindItem(idxitem , 1)
					idxitem = AddEventItem(119)
					SetBindItem(idxitem , 1)
					idxitem = AddEventItem(120)
					SetBindItem(idxitem , 1)	
				end
				

			---------------- END ITEM

			--	BANG2 = TaoBang(CodeAlpha,"CodeAlpha")
			--	LuuBang("script/danhsach/code_2.lua",BANG2)
			--else
			--	Talk(1,"","Gift Code ®· ®­îc sö dông cho lóc: "..CodeAlpha[m_code2][2].."")
			--end
	else
		Talk(1,"","B¹n ®· sö dông code nµy råi, kh«ng thÓ sö dông thªm !")
	end
	
end



function UseCode3(m_code2)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))

	if GetTask(988) ~= 1000 then
					
			if CodeAlpha[m_code2][2] == 0 then			
				SetTask(988, 1000)
			
				thoigian = tonumber(date("%H%M%d%m"))
				
				CodeAlpha[m_code2][2] = thoigian
				CodeAlpha[m_code2][3] = GetName()
				
				
			------------------- START ITEM
				Msg2Player("<color=green>Chóc mõng "..GetName().." sö dông Gift Code - §¹i Héi Anh Hïng nhËn ®­îc:")
				Msg2Player("<color=yellow>- 1 ThÇn Hµnh Phï 1 Ngµy")
				Msg2Player("<color=yellow>- 1 Cöu Nguyªn Th¹ch 1 Ngµy")
				
					

			idxitem = AddEventItem(910)
			SetBindItem(idxitem,1)

			ngay = ngay + 1
			if ngay > mangthang[thang] then
				ngay = ngay - mangthang[thang]
				
				if (thang == 12) then
					thang = 0
					nam = nam + 1
				end
				thang = thang + 1	
			end	
		
				idxitem = AddEventItem(696)
				SetBindItem(idxitem,1)			
				SetHSD(idxitem, 2000+nam , thang, ngay, gio )
			---------------- END ITEM

				BANG2 = TaoBang(CodeAlpha,"CodeAlpha")
				LuuBang("script/danhsach/code_2.lua",BANG2)
			else
				Talk(1,"","Gift Code ®· ®­îc sö dông cho lóc: "..CodeAlpha[m_code2][2].."")
			end
	else
		Talk(1,"","B¹n ®· sö dông code nµy råi, kh«ng thÓ sö dông thªm !")
	end
	
end


function UseCode4(m_code2)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
	if GetTask(937) ~= 1000 then
			
			if m_code2 == 0 then
			Talk(1,"","Gift Code kh«ng tån t¹i")
			return
			end
			
			if GetTask(937) == 1000 then
				Talk(1,"","Nh©n vËt nµy ®· sö dông Gift Code, kh«ng thÓ sö dông thªm lÇn n÷a")
				return	
			end
			
			if CODE_1607[m_code2][2] == 0 then			
				SetTask(937, 1000)
			
				thoigian = tonumber(date("%H%M%d%m"))
				
				CODE_1607[m_code2][2] = thoigian
				CODE_1607[m_code2][3] = GetName()
				
				
			------------------- START ITEM
				
				
				ngay1 = ngay + 3
				thang1 = thang
				if ngay1 > mangthang[thang] then
					ngay1 = ngay - mangthang[thang]
					thang1 = thang + 1
				end
				idxitem = AddEventItem(264)
				SetBindItem(idxitem,1)			
				SetHSD(idxitem, 2021 , thang1, ngay1, gio )
				
				Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red>®· nhËn ®­îc code xem Live Stream C«ng Thµnh ChiÕn ")
				
				Msg2Player("Chóc mõng b¹n sö dông Gift Code nhËn ®­îc: ")
				Msg2Player("- <color=yellow>Tói M¸u VIP [3 ngµy]")
				Msg2Player("- <color=yellow>3 Tiªn Th¶o Lé 6 giê")
				Msg2Player("- <color=yellow>3 N÷ Nhi Hång 6 giê")
		
				for i=1,3 do
						idxitem = AddEventItem(116)
						SetBindItem(idxitem,1)				
				end
				for i=1,3 do
						idxitem = AddEventItem(120)
						SetBindItem(idxitem,1)				
				end
				
				
				ngay2 = ngay + 7
				thang2 = thang
				if ngay2 > mangthang[thang] then
					ngay2 = ngay - mangthang[thang]
					thang2 = thang + 1
				end
				idxitem = AddItem(0,10,5,random(3,4),0,0,0)
				SetTimeItem(idxitem,550324);
				SetHSD(idxitem, 2021 , thang2, ngay2, gio )
				Msg2Player("- <color=yellow>- "..GetNameItemBox(idxitem).."")
				
			---------------- END ITEM

				BANG2 = TaoBang(CODE_1607,"CODE_1607")
				LuuBang("script/Code_1607.lua",BANG2)
			else
				Talk(1,"","Gift Code ®· ®­îc sö dông cho lóc: "..CODE_1607[m_code2][2].."")
			end
	else
		Talk(1,"","B¹n ®· sö dông code nµy råi, kh«ng thÓ sö dông thªm !")
	end
	
end

function nhapmathe()
OpenStringBox (2,"NhËp M·" , "acceptcode2")
end
function acceptcode2(num2)
num = tonumber(num2)
if num < 111111 or num > 999999 then
Talk(1,"","ChØ ®­îc nhËp M· Code tõ: 111111 - 999999")
return
end
SetTaskTemp(2,num)
Msg2Player("M· ThÎ ®· nhËp: <color=red>"..GetTaskTemp(2).."")
main1()
end
function kickhoat()
m_codeevent = check_code_3()
if m_codeevent> 0 then
		if GetTask(333) > 0 then
			Talk(1,"","Nh©n vËt nµy ®· sö dông Gift Code, kh«ng thÓ sö dông thªm lÇn n÷a")
			return	
		end
	if Code_Event[m_codeevent][3] == 0 then
			thoigian = tonumber(date("%H%M%d%m"))
			Code_Event[m_codeevent][3] = thoigian
			SetTask(333,m_codeevent)
	

			for i=1,6 do
				itemidx = AddEventItem(117)
				SetBindItem(itemidx,1);
			end
			for i=1,6 do
				itemidx = AddEventItem(118)
				SetBindItem(itemidx,1);
			end
			Msg2Player("B¹n sö dông Gift Code thµnh c«ng nhËn ®­îc: ")
			Msg2Player("- 6 Tiªn Th¶o Lé 1 Giê ")
			Msg2Player("- 6 N÷ Nhi Hång 1 Giê ")
			
			
			BANG2 = TaoBang(Code_Event,"Code_Event")
			LuuBang("script/codeevent.lua",BANG2)
			Msg2Player("Chóc mõng b¹n nhËn thµnh c«ng GIFT CODE")
			
	else
			Talk(1,"","Gift Code ®· ®­îc sö dông lóc: "..Code_Event[m_codeevent][3].."")
	end
else
Talk(1,"","Seri hoÆc m· code kh«ng ®óng, GIFT CODE kh«ng tån t¹i !")
end
end

function check_code_1(num)
for i=1,getn(CodeLiveShare) do
	if num == CodeLiveShare[i][1] then
		return i
	end
end
return 0
end
function check_code_2()
for i=1,getn(CodeAlpha) do
	if num == CodeAlpha[i][1] then
		return i
	end
end
return 0
end
function check_code_3()
for i=1,getn(CODE_0507) do
	if num == CODE_0507[i][1] then
		return i
	end
end
return 0
end

function check_code_4()
for i=1,getn(CODE_1607) do
	if num == CODE_1607[i][1] then
		return i
	end
end
return 0
end

function gheplongdenxxx()
SayNew("<color=green>LÔ Quan:<color>: Chän lo¹i Lång §Ìn muèn chÒ t¹o : ",10,
"10x Lång §Ìn B­¬m B­ím /chetao1",
"10x Lång §Ìn Ng«i Sao /chetao1",
"10x Lång §Ìn èng /chetao1",
"10x Lßng §Ìn Trßn /chetao1",
"10x Lång §Ìn C¸ ChÐp /chetao1",
"Lång §Ìn B­¬m B­ím  /chetao1",
"Lång §Ìn Ng«i Sao /chetao1",
"Lång §Ìn èng /chetao1",
"Lßng §Ìn Trßn /chetao1",
"Lång §Ìn C¸ ChÐp /chetao1")
end

function chetao1(nsel)
i = nsel+1
if i == 1 then
	chetao11(thanhtre,daycoi,nen,giayvang,0,denbuom,10,"GiÊy KiÕng Vµng","Lång §Ìn B­¬m B­ím")
elseif i == 2 then
	chetao11(thanhtre,daycoi,nen,giaylam,100000,densao,10,"GiÊy KiÕng Lam","Lång §Ìn Ng«i Sao")
elseif i == 3 then
	chetao11(thanhtre,daycoi,nen,giayluc,200000,denong,10,"GiÊy KiÕng Lôc","Lång §Ìn èng")
elseif i == 4 then
	chetao11(thanhtre,daycoi,nen,giaydo,300000,dentron,10,"GiÊy KiÕng §á ","Lång §Ìn Trßn")
elseif i == 5 then
	chetao11(thanhtre,daycoi,nen,giaycam,300000,denca,10,"GiÊy KiÕng Cam","Lång §Ìn C¸ ChÐp")
elseif i == 6 then
	chetao11(thanhtre,daycoi,nen,giayvang,0,denbuom,1,"GiÊy KiÕng Vµng","Lång §Ìn B­¬m B­ím")
elseif i == 7 then
	chetao11(thanhtre,daycoi,nen,giaylam,10000,densao,1,"GiÊy KiÕng Lam","Lång §Ìn Ng«i Sao")
elseif i == 8 then
	chetao11(thanhtre,daycoi,nen,giayluc,20000,denong,1,"GiÊy KiÕng Lôc","Lång §Ìn èng")
elseif i == 9 then
	chetao11(thanhtre,daycoi,nen,giaydo,30000,dentron,1,"GiÊy KiÕng §á ","Lång §Ìn Trßn")
elseif i == 10 then
	chetao11(thanhtre,daycoi,nen,giaycam,30000,denca,1,"GiÊy KiÕng Cam","Lång §Ìn C¸ ChÐp")
end
end


function chetao11(nl1,nl2,nl3,nl4,gold,newitem,soluong,name1,newname)
a = GetItemCount(nl1)
b = GetItemCount(nl2)
c = GetItemCount(nl3)
d = GetItemCount(nl4)

f = GetCash()
if GetItemCount(nl1) >= soluong and GetItemCount(nl2) >= soluong and GetItemCount(nl3) >= soluong and GetItemCount(nl4) >= soluong and GetCash() >= gold then
	for k=1,soluong do
	DelItem(nl1)
	DelItem(nl2)
	DelItem(nl3)
	DelItem(nl4)
	end
	Pay(gold)
	if GetItemCount(nl1) == a - soluong and GetItemCount(nl2) == b - soluong and GetItemCount(nl3) == c - soluong and GetItemCount(nl4) == d - soluong and GetCash() == f - gold then
		for k=1,soluong do
			AddEventItem(newitem)
		end
		Msg2Player("B¹n nhËn ®­îc "..soluong.." "..newname.." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end	
else
	Talk(1,"",""..soluong.."x "..newname.."= "..soluong.."x [Thanh Tre + D©y Cãi + NÕn + "..name1.."] + "..gold.." l­îng ")
end
end




function muaevent_2()
SayNew("<color=green>LÔ Quan: <color>: B¹n cã ch¾c ch¾n muèn mua <color=yellow>10 Hép Mùc Mµu Xanh = 5 Vµng<color> kh«ng?",2,
"Ta ®ång ý mua/muaevent_2_1",
"Tho¸t./no")
end
giaycam = 182
function muaevent_2_1()
if CheckFreeBoxItem(4,giaycam,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
return
end

sl = GetItemCount(giaycam) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 5 and GetTask(101) >= 5 then
	SetTask(99,GetTask(99) - 5)
	SetTask(101,GetTask(101) - 5)
	if GetTask(99) == vang-5 and GetTask(101) == vang2 - 5 and GetTask(99) == GetTask(101) then
		for i=1,10 do AddEventItem(giaycam) end
		if GetItemCount(giaycam) ~= sl + 10 then
			Talk(1,"","R­¬ng cña b¹n ®· Full nªn sÏ cã 1 Ýt GiÊy KiÕng Cam bÞ mÊt.")
		end
		Msg2Player("B¹n nhËn ®­îc 10 Hép Mùc Mµu Xanh")
		inlog2(""..GetAccount().." - "..GetName().." - "..GetLevel().." .Vang con: "..GetTask(99).." !")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>5<color> vµng, kh«ng thÓ giao dÞch!")
end
end
function muaevent_1()
SayNew("<color=green>LÔ Quan: <color>: B¹n cã ch¾c ch¾n muèn mua <color=yellow>10 Hép Mùc Mµu Xanh = 10 v¹n l­îng<color> kh«ng?",2,
"Ta ®ång ý mua/muaevent_1_1",
"Tho¸t./no")
end
function muaevent_1_1()
if CheckFreeBoxItem(4,123,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
return
end

sl = GetItemCount(181) 
vang = GetCash()
if GetCash() >= 100000 then
	Pay(100000)
	if GetCash() == vang-100000 then
		for i=1,10 do AddEventItem(181) end
		if GetItemCount(181) ~= sl + 10 then
			Talk(1,"","R­¬ng cña b¹n ®· Full nªn sÏ cã 1 Ýt Hép Mùc Mµu §en bÞ mÊt.")
		end
		Msg2Player("B¹n nhËn ®­îc 10 Hép Mùc Mµu §en")
		inlog3(""..GetAccount().." - "..GetName().." - "..GetLevel().." .Tien van con: "..GetCash().." !")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>170<color> v¹n, kh«ng thÓ giao dÞch!")
end
end

function giahan()
if GetTask(307) >= 2 then
	Talk(1,"","Giíi h¹n sù kiÖn cña b¹n ®· ®¹t mèc tèi ®a <color=yellow>2 lÇn<color> !")
	return
end

vang = GetTask(99)
if GetTask(99) >= 100 then
	SetTask(99,GetTask(99) - 100)
	SetTask(101,GetTask(101) - 100)
	if GetTask(99) == vang - 100 and GetTask(101) == vang - 100 then
		SetTask(307, GetTask(307) + 1)
		Msg2Player("B¹n ®· gia h¹n sù kiÖn §ua ThuyÒn Rång - Hç Trî T©n Thñ lªn <color=yellow>"..GetTask(307).." lÇn")
		inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(307).." Lan")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng­¬i kh«ng ®ñ 100 vµng ®Ó gia h¹n sù kiÖn")
end
end

function inlog2(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/MuaCayThong_1KNB.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlog3(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logMamVang.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlog4(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/DoiPhanThuong.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logGiaHan.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end








--------------- EVENT 2 - 9 ------------------------


function nhanthem()
num = 0
for i=1,getn(danhsach) do
	if GetName() == danhsach[i][2] then
		num = num + danhsach[i][4]
	end
end

Msg2Player("Sè lÇn quay sè cña b¹n tæng céng lµ: <color=yellow>"..num.." lÇn ")
if num >= 100 and num < 500 then
	cleards()
	AddEventItem(50)
	AddEventItem(50)
	Msg2Player("B¹n nhËn ®­îc 2 viªn HuyÒn Tinh 7")
elseif num >= 500 and num < 1000 then
	cleards()
	AddEventItem(51)
	AddEventItem(51)
	Msg2Player("B¹n nhËn ®­îc 2 viªn HuyÒn Tinh 8")
elseif num >= 1000 then 
	cleards()
	AddEventItem(51)
	AddEventItem(51)
	AddEventItem(51)
	AddEventItem(51)
	Msg2Player("B¹n nhËn ®­îc 4 viªn HuyÒn Tinh 8")
else
	Talk(1,"","B¹n kh«ng thuéc tr­êng hîp nhËn th­ëng !")
end



end


function cleards()
for i=1,getn(danhsach) do
	if GetName() == danhsach[i][2] then
		danhsach[i][2] = ""
	end
end
savebang()
end



function rutvatpham()
SayNew("<color=green>Lª Quan:<color> Chän lo¹i vËt phÈm cÇn rót.",4,
"Rót Tiªn Th¶o Lé /rutvp1",
"Rót N÷ Nhi Hång /rutvp1",
"Rót ThiÕt La H¸n /rutvp1",
"Tho¸t./no")
end

function rutvp1(nsel)
i = nsel+1
if i == 1 then
	rutvp2(5,"Tiªn Th¶o Lé ")
elseif i == 2 then
	rutvp2(6,"N÷ Nhi Hång ")

elseif i == 3 then
	rutvp2(7,"ThiÕt La H¸n ")
end
end


function rutvp2(loai,ten)
vtvp = checkvtvatpham(loai)
if vtvp == 0 then
Talk(1,"","B¹n ®· rót hÕt "..ten.." trong danh s¸ch!")
return
end
soluongdem = 0
if vtvp > 0 then
	for i=1,danhsach[vtvp][loai] do
		if CheckFreeBoxItem(4,22,1,1) == 0 then
			break
		end

		
		soluongdem = soluongdem + 1
		danhsach[vtvp][loai] = danhsach[vtvp][loai] - 1

		if loai == 5 then
			xs = random(1,100)
			if xs < 80 then
				AddEventItem(113)
				Msg2Player("B¹n nhËn ®­îc 1 "..ten.." nhá ")
			elseif xs >= 80 and xs < 99 then
				AddEventItem(117)
				Msg2Player("B¹n nhËn ®­îc 1 "..ten.." ")
			else
				AddEventItem(119)
				Msg2Player("B¹n nhËn ®­îc 1 "..ten.." 3 giê ")
			end
		elseif loai == 6 then
			xs = random(1,100)
			if xs < 80 then
				AddEventItem(114)
				Msg2Player("B¹n nhËn ®­îc 1 "..ten.." nhá ")
			elseif xs >= 80 and xs < 99 then
				AddEventItem(118)
				Msg2Player("B¹n nhËn ®­îc 1 "..ten.." ")
			else
				AddEventItem(115)
				Msg2Player("B¹n nhËn ®­îc 1 "..ten.." 3 giê ")
			end
		elseif loai == 7 then
			AddEventItem(2)
			Msg2Player("B¹n nhËn ®­îc 1 "..ten.." ")
		end

		Talk(0,"")
	end
end

Msg2Player("B¹n ®· rót tæng céng "..soluongdem.." "..ten.." ")
if soluongdem > 0 then
	Msg2SubWorld("§¹i hiÖp ["..GetName().."] ®· rót "..soluongdem.." "..ten.." tõ Vßng Quay May M¾n !")
end
savebang()
end


function chonquay(nsel)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if gio ~= 20 then
Talk(1,"","Thêi gian quay sè may m¾n tõ 20h00 - 20h59 mçi ngµy !")
return
end

num = 1
if nsel == 1 then
num = 10
end

if GetTask(132) < num then
Talk(1,"","B¹n kh«ng cã ®ñ "..num.." l­ît quay sè may m¾n !")
return
end

if getn(danhsach) == 0 then
	danhsach[getn(danhsach)+1] = {"","",0,0,0,0,0} -- tk, ten, ngay, solan, ttl, nnh, tlh
	Msg2Player("§· khëi t¹o m¶ng danh s¸ch !")
return
end

vitri = checkdsmang()
if vitri == 0 then
	danhsach[getn(danhsach)+1] = {GetAccount(),GetName(),ngay,0,0,0,0}
	Msg2Player("§· cËp nhËt tªn cña b¹n vµo danh s¸ch quay sè ngµy <color=pink>"..ngay.."/"..thang.."/2014!")
return
end

if GetTask(132) >= num then
	SetTask(132,GetTask(132)-num)
	danhsach[vitri][4] = danhsach[vitri][4] + num	
	Msg2Player("B¹n ®· quay sè tæng céng: <color=yellow>"..danhsach[vitri][4].." lÇn<color=red> trong ngµy <color=pink>"..ngay.."/"..thang.."/2014 ")
	for k=1,num*10 do AddOwnExp(1000000) end
	Msg2Player("B¹n nhËn ®­îc "..(num*10).." triÖu kinh nghiÖm !")

	for k=1,num do
	xs = random(1,300)
	if xs < 260 then
		xs2 = random(1,20)
		if xs2 < 5 then
			danhsach[vitri][5] = danhsach[vitri][5] + 1
			Msg2Player("B¹n nhËn ®­îc 1 Tiªn Th¶o Lé. Sè l­îng Tiªn Th¶o Lé ch­a rót lµ: <color=yellow>"..danhsach[vitri][5].." ")
		elseif xs2 >= 5 and xs2 < 10 then
			danhsach[vitri][6] = danhsach[vitri][6] + 1
			Msg2Player("B¹n nhËn ®­îc 1 N÷ Nhi Hång. Sè l­îng N÷ Nhi Hång ch­a rót lµ: <color=yellow>"..danhsach[vitri][6].." ")
		elseif xs2 == 13 then
			danhsach[vitri][7] = danhsach[vitri][7] + 1
			Msg2Player("B¹n nhËn ®­îc 1 ThiÕt La H¸n. Sè l­îng ThiÕt La H¸n ch­a rót lµ: <color=yellow>"..danhsach[vitri][7].." ")
		else
			m = random(1,5)
			AddOwnExp(m*1000000)
			Msg2Player("B¹n nhËn ®­îc "..m..".000.000 phÇn th­ëng Vßng Quay May M¾n !")
		end
	elseif xs >= 260 and xs < 280 then
		xs2 = random(1,4)
		if xs2 == 1 then
			AddEventItem(31)
			Msg2SubWorld("Chóc mõng ["..GetName().."] quay sè nhËn ®­îc <color=yellow>Tinh Hång B¶o Th¹ch")
		else
			AddEventItem(random(28,30))
			Msg2SubWorld("Chóc mõng ["..GetName().."] quay sè nhËn ®­îc <color=yellow>Thñy Tinh")
		end
	elseif xs >= 280 and xs < 299 then
		xs2 = random(1,10)
		if xs2 == 1 then
			AddEventItem(0)
			Msg2SubWorld("Chóc mõng ["..GetName().."] quay sè nhËn ®­îc <color=yellow>Vâ L©m MËt TÞch")
		elseif xs2 == 2 then
			AddEventItem(1)
			Msg2SubWorld("Chóc mõng ["..GetName().."] quay sè nhËn ®­îc <color=yellow>TÈy Tñy Kinh")
		elseif xs2 == 3 then
			AddEventItem(49)
			Msg2SubWorld("Chóc mõng ["..GetName().."] quay sè nhËn ®­îc <color=yellow>HuyÒn Tinh 6")
		else
			AddEventItem(48)
			Msg2SubWorld("Chóc mõng ["..GetName().."] quay sè nhËn ®­îc <color=yellow>HuyÒn Tinh 5")
		end	
	elseif xs == 299 then
			AddEventItem(50)
			Msg2SubWorld("Chóc mõng ["..GetName().."] quay sè nhËn ®­îc <color=yellow>HuyÒn Tinh 7")	
	else
		xs2 = random(1,4)
		if xs2 == 1 then
		AddItem(0,4,3,1,0,0,0)
		elseif xs2 == 2 then
		AddItem(0,3,3,1,0,0,0)
		elseif xs2 == 3 then
		AddItem(0,3,4,1,0,0,0)
		elseif xs2 == 4 then
		AddItem(0,9,3,1,0,0,0)
		end
		Msg2SubWorld("Chóc mõng ["..GetName().."] quay sè nhËn ®­îc <color=pink>Trang bÞ Hoµng Kim An Bang")	
	end


	end



	Talk(0,"")
else
	Talk(1,"","B¹n kh«ng cã ®ñ "..num.." l­ît quay sè may m¾n !")
end
end


function checkdsmang()
ngay = tonumber(date("%d"))
vt = 0
for i=1,getn(danhsach) do
	if GetName() == danhsach[i][2] and ngay == danhsach[i][3] then
		vt = i
		break
	end
end
return vt
end

function checkvtvatpham(loai)
vt = 0
for i=1,getn(danhsach) do
	if (GetName() == danhsach[i][2] or GetAccount() == danhsach[i][1]) and danhsach[i][loai] > 0 then
		vt = i
		break
	end
end
return vt
end


function hockynang()
if GetFaction() == "" then
Talk(1,"","B¹n ch­a gia nhËp ph¸i kh«ng thÓ nhËn hç trî ")
return
end
if GetLevel() < 120 then
Talk(1,"","B¹n kh«ng ®ñ ®¼ng cÊp 120, kh«ng thÓ nhËn hç trî !")
return
end
num = 0
for i=412,430 do
	if mod(i,2) == 0 then
		if HaveMagic(i) > 0 then
			num = 1
			break
		end
	end
end

if num == 1 then
Talk(1,"","B¹n ®· nhËn kü n¨ng 120 råi, kh«ng thÓ nhËn thªm !")
return
end


sl = GetItemCount(17)
if GetItemCount(17) >= 5 then
	for k=1,5 do DelItem(17) end
	if GetItemCount(17) == sl - 5 then
		if mp() == 1 then
			AddMagic(412,1)
		elseif mp() == 2 then
			AddMagic(414,1)
		elseif mp() == 3 then
			AddMagic(416,1)
		elseif mp() == 4 then
			AddMagic(418,1)
		elseif mp() == 5 then
			AddMagic(420,1)
		elseif mp() == 6 then
			AddMagic(422,1)
		elseif mp() == 7 then
			AddMagic(424,1)
		elseif mp() == 8 then
			AddMagic(426,1)
		elseif mp() == 9 then
			AddMagic(428,1)
		elseif mp() == 10 then
			AddMagic(430,1)
		else
			Talk(1,"","B¹n ch­a gia nhËp ph¸i !")
		end
		Msg2Player("Chóc mõng b¹n ®· häc ®­îc kü n¨ng 120 !")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng mang theo <color=yellow>5 Kim Nguyªn B¶o<color>, kh«ng thÓ häc kü n¨ng !")
end
end


function no()



end

function savebang()
BANG = TaoBang(DSTOP,"DSTOP")
				
LuuBang("script/danhsachtop.lua",BANG)
end

function xacnhan()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))


if getn(danhsach) == 0 then
return
end

soluong = 0
ten = ""
for i=1,getn(danhsach) do
	if ngay == danhsach[i][3] then
		if danhsach[i][4] > soluong then
			soluong = danhsach[i][4]
			ten = danhsach[i][2]
		end
	end
end

Msg2SubWorld("Ng­êi ®ang dÉn ®Çu Vßng Quay May M¾n ngµy "..ngay.."/"..thang.."/2014  lµ <color=pink>"..ten.."")
end

function xacnhan2()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))


if getn(danhsach) == 0 then
return
end

soluong = 0
ten = ""
for i=1,getn(danhsach) do
	if ngay == danhsach[i][3] then
		if danhsach[i][4] > soluong then
			soluong = danhsach[i][4]
			ten = danhsach[i][2]
		end
	end
end

Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=pink>"..ten.."<color=red>] ®· giµnh chiÕn th¾ng trong Vßng Quay May M¾n ngµy "..ngay.."/"..thang.."/2014 víi sè lÇn quay sè: <color=yellow>"..soluong.." lÇn")
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
KickOutSelf()
end


function TayKyNang()
diemkn = GetMagicPoint()
AddMagicPoint(-diemkn)
diemkn2 = (GetLevel()-1)+GetTask(199) + getKyNang()
AddMagicPoint(diemkn2)
RollbackSkill()
UpdateSkill()
KickOutSelf()
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





--==================================


function nhanquavip()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end
SayNew(" B¹n muèn ®æi g× ?",11,
"NhËn Th­ëng VIP 1/nhan_01_VIP",
"NhËn Th­ëng VIP 2 /nhan_02_VIP",
"NhËn Th­ëng VIP 3/nhan_03_VIP",
"NhËn Th­ëng VIP 4 /nhan_04_VIP",
"NhËn Th­ëng VIP 5 /nhan_05_VIP",
"NhËn Th­ëng VIP 6/nhan_06_VIP",
"NhËn Th­ëng VIP 7/nhan_07_VIP",
"NhËn Th­ëng VIP 8/nhan_08_VIP",
"NhËn Th­ëng VIP 9/nhan_09_VIP",
"NhËn Th­ëng VIP 10/nhan_10_VIP",
-- "Mua LB Vinh Dù /muaitem",
-- "§æi Phi V©n [2000 ®iÓm]/muaitem",
"Tho¸t./no")
end

function nhan_01_VIP()
	if GetTask(485) < 1 then
	Talk(1,"","Ng­¬i Ch­a §¹t VIP 1 kh«ng thÎ nhËn !")
	return
	end
	if GetTask(888) >= 1 then
	Talk(1,"","Ng­¬i ®· nhËn råi ko thÓ nhËn l¹i n÷a !")
	return
	end
		SetTask(888,1)
		for p=1,5 do
		itemidx = AddEventItem(120)
		SetBindItem(itemidx,1)
		end
		Msg2SubWorld("Chóc mõng <color=yellow> "..GetName().."<color> nhËn phÇn th­ëng VIP 1: 5 <color=pink>"..GetNameItemBox(itemidx).." ")
end
function nhan_02_VIP()
	if GetTask(485) < 2 then
	Talk(1,"","Ng­¬i Ch­a §¹t VIP 2 kh«ng thÎ nhËn !")
	return
	end
	if GetTask(888) >= 2 then
	Talk(1,"","Ng­¬i ®· nhËn råi ko thÓ nhËn l¹i n÷a !")
	return
	end
	if GetTask(888) == 1 then
	SetTask(888,2)
		for p=1,10 do
		itemidx = AddEventItem(120)
		SetBindItem(itemidx,1)
		end
		Msg2SubWorld("Chóc mõng <color=yellow> "..GetName().."<color> nhËn phÇn th­ëng VIP 2: 10 <color=pink>"..GetNameItemBox(itemidx).." ")
	end
	-- Talk(1,"","Ng­¬i ch­a nhËn th­ëng VIP 1 !")
end
function nhan_03_VIP()
	if GetTask(485) < 3 then
	Talk(1,"","Ng­¬i Ch­a §¹t VIP 3 kh«ng thÎ nhËn !")
	return
	end
	if GetTask(888) >= 3 then
	Talk(1,"","Ng­¬i ®· nhËn råi ko thÓ nhËn l¹i n÷a !")
	return
	end
	if GetTask(888) == 2 then
	SetTask(888,3)
		for p=1,5 do
		itemidx = AddEventItem(713)
		-- SetBindItem(itemidx,1)
		end
		Msg2SubWorld("Chóc mõng <color=yellow> "..GetName().."<color> nhËn phÇn th­ëng VIP 3: 5 <color=pink>B¶o R­¬ng M¶nh Ngùa ")
		end
	-- Talk(1,"","Ng­¬i ch­a nhËn th­ëng VIP 2 !")
end

function nhan_04_VIP()

	if GetTask(485) < 4 then
	Talk(1,"","Ng­¬i Ch­a §¹t VIP 4 kh«ng thÎ nhËn !")
	return
	end
	if GetTask(888) >= 4 then
	Talk(1,"","Ng­¬i ®· nhËn råi ko thÓ nhËn l¹i n÷a !")
	return
	end
	if GetTask(888) == 3 then
	SetTask(888,4)
		for p=1,10 do
		itemidx = AddEventItem(713)
		-- SetBindItem(itemidx,1)
		end
		Msg2SubWorld("Chóc mõng <color=yellow> "..GetName().."<color> nhËn phÇn th­ëng VIP 4: 10 <color=pink>B¶o R­¬ng M¶nh Ngùa ")
		end
	-- Talk(1,"","Ng­¬i ch­a nhËn th­ëng VIP 3 !")
end
function nhan_05_VIP()
	if GetTask(485) < 5 then
	Talk(1,"","Ng­¬i Ch­a §¹t VIP 5 kh«ng thÎ nhËn !")
	return
	end
	if GetTask(888) >= 5 then
	Talk(1,"","Ng­¬i ®· nhËn råi ko thÓ nhËn l¹i n÷a !")
	return
	end
	if GetTask(888) == 4 then
	SetTask(888,5)
		-- for p=1,5 do
		itemidx = AddEventItem(710)
		-- SetBindItem(itemidx,1)
		-- end
		Msg2SubWorld("Chóc mõng <color=yellow> "..GetName().."<color> nhËn phÇn th­ëng VIP 5: 1 <color=pink>B¶o R­¬ng Thiªn Hoµng ")
		end
	-- Talk(1,"","Ng­¬i ch­a nhËn th­ëng VIP 4 !")
end
function nhan_06_VIP()
	if GetTask(485) < 6 then
	Talk(1,"","Ng­¬i Ch­a §¹t VIP 6 kh«ng thÎ nhËn !")
	return
	end
	if GetTask(888) >= 6 then
	Talk(1,"","Ng­¬i ®· nhËn råi ko thÓ nhËn l¹i n÷a !")
	return
	end
	if GetTask(888) == 5 then
	SetTask(888,6)
		-- for p=1,5 do
		itemidx = AddEventItem(710)
		-- SetBindItem(itemidx,1)
		-- end
		Msg2SubWorld("Chóc mõng <color=yellow> "..GetName().."<color> nhËn phÇn th­ëng VIP 6: 1<color=pink>B¶o R­¬ng Thiªn Hoµng ")
			end
	-- Talk(1,"","Ng­¬i ch­a nhËn th­ëng VIP 5 !")
end
function nhan_07_VIP()
	if GetTask(485) < 7 then
	Talk(1,"","Ng­¬i Ch­a §¹t VIP 7 kh«ng thÎ nhËn !")
	return
	end
	if GetTask(888) >= 7 then
	Talk(1,"","Ng­¬i ®· nhËn råi ko thÓ nhËn l¹i n÷a !")
	return
	end
	if GetTask(888) == 6 then
	SetTask(888,7)
		for p=1,2 do
		itemidx = AddEventItem(710)
		-- SetBindItem(itemidx,1)
		end
		Msg2SubWorld("Chóc mõng <color=yellow> "..GetName().."<color> nhËn phÇn th­ëng VIP 7: 2 <color=pink>B¶o R­¬ng Thiªn Hoµng ")
		end
	-- Talk(1,"","Ng­¬i ch­a nhËn th­ëng VIP 6 !")
end
function nhan_08_VIP()
	if GetTask(485) < 8 then
	Talk(1,"","Ng­¬i Ch­a §¹t VIP 8 kh«ng thÎ nhËn !")
	return
	end
	if GetTask(888) >= 8 then
	Talk(1,"","Ng­¬i ®· nhËn råi ko thÓ nhËn l¹i n÷a !")
	return
	end
	if GetTask(888) == 7 then
	SetTask(888,8)
		for p=1,2 do
		itemidx = AddEventItem(710)
		-- SetBindItem(itemidx,1)
		end
		Msg2SubWorld("Chóc mõng <color=yellow> "..GetName().."<color> nhËn phÇn th­ëng VIP 8: 3 <color=pink>B¶o R­¬ng Thiªn Hoµng ")
		end
	-- Talk(1,"","Ng­¬i ch­a nhËn th­ëng VIP 7 !")
end
function nhan_09_VIP()
	if GetTask(485) < 9 then
	Talk(1,"","Ng­¬i Ch­a §¹t VIP 9 kh«ng thÎ nhËn !")
	return
	end
	if GetTask(888) >= 9 then
	Talk(1,"","Ng­¬i ®· nhËn råi ko thÓ nhËn l¹i n÷a !")
	return
	end
	if GetTask(888) == 8 then
	SetTask(888,9)
		-- for p=1,3 do
		itemidx = AddEventItem(243)
		-- SetBindItem(itemidx,1)
		-- end
		Msg2SubWorld("Chóc mõng <color=yellow> "..GetName().."<color> nhËn phÇn th­ëng VIP 9: 1<color=pink>"..GetNameItemBox(itemidx).." ")
		end
	-- Talk(1,"","Ng­¬i ch­a nhËn th­ëng VIP 8 !")
end
function nhan_10_VIP()
	if GetTask(485) < 10 then
	Talk(1,"","Ng­¬i Ch­a §¹t VIP 10 kh«ng thÎ nhËn !")
	return
	end
	if GetTask(888) >= 10 then
	Talk(1,"","Ng­¬i ®· nhËn råi ko thÓ nhËn l¹i n÷a !")
	return
	end
	if GetTask(888) == 9 then
	SetTask(888,10)
		for p=1,2 do
		itemidx = AddEventItem(243)
		-- SetBindItem(itemidx,1)
		end
		Msg2SubWorld("Chóc mõng <color=yellow> "..GetName().."<color> nhËn phÇn th­ëng VIP 10: 2<color=pink>"..GetNameItemBox(itemidx).." ")
		end
	-- Talk(1,"","Ng­¬i ch­a nhËn th­ëng VIP 9 !")
end

function nhanviptest()
if GetTask(485) >= 10 then
	Talk(1,"","Kh«ng thÓ nhËn thªm VIP  !")
	return
end
SetTask(485, GetTask(485) + 1)
Msg2SubWorld("Chóc mõng <color=yellow> "..GetName().."<color> th¨ng cÊp VIP lªn :  <color=pink>VIP "..GetTask(485).."<color> N©ng TØ LÖ May M¾n Trong Qu¸ Tr×nh Bu«n TÈu Giang Hé")
end
function nhantest_1()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
	end
end