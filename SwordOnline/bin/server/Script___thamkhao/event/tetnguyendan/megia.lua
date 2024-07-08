Include("\\script\\lib\\thuvien.lua")
Include("\\script\\event\\tetnguyendan\\danhsachnhanthuong.lua")
Include("\\script\\event\\tetnguyendan\\danhsachtop.lua")

function main_()
SayNew("Ngµy sù kiÖn 30/4 - 01/5 còng ®· ®Õn råi. Tr¸ng sÜ ®Õn ®©y gÆp l·o cã viÖc g× ph¶i kh«ng???",2,
"NhËn th­ëng ®ua top ngµy /nhanthuongduatop_ngay",
"NhËn th­ëng ®ua top sù kiÖn /nhanthuongduatop_event",
"Tho¸t./no")
end
function main()
SayNew("Ngµy sù kiÖn 30/4 - 01/5 còng ®· ®Õn råi. Tr¸ng sÜ ®Õn ®©y gÆp l·o cã viÖc g× ph¶i kh«ng???",5,
"GhÐp Mò - ¸o ChiÕn SÜ /ghepmamnguqua",
"Gia H¹n Sù KiÖn /giahan",
"NhËn phÇn th­ëng Mèc Sù KiÖn /nhanthuongmoc",
--"NhËn quµ Sù KiÖn Event /nhanquatet",
"Tho¸t./no")
end

function nhanthuongduatop_event()
if GetName() == "" or GetName() == "" then
	SayNew("Chän lo¹i phÇn th­ëng :",3,
	"Set An Bang /nhanthuongduatop_event_1",
	"Set §Þnh Quèc /nhanthuongduatop_event_1",
	"Tho¸t./no")
else
	nhanthuongduatop_event_1(0)
end
end
function nhanthuongduatop_event_1(nsel)
typeitem = nsel + 1
vt = CheckDanhSachEvent()
if vt == 0 then
	Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch nhËn th­ëng !")  
	return
end
if THUONG_TOP[vt][3] ~= 0 then
Talk(1,"","Lçi ®· nhËn phÇn th­ëng, liªn hÖ admin !")
return
end	

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ 6 x 5 «, kh«ng thÓ nhËn !")
	return
end

	
thoigian = tonumber(date("%H%M%d%m"))	
THUONG_TOP[vt][3] = thoigian	
BANG2 = TaoBang(THUONG_TOP,"THUONG_TOP")
LuuBang("script/event/tetnguyendan/danhsachtop.lua",BANG2)


LoginLog = openfile("Data/SuKien/NhanThuongTopSuKien.txt", "a");
if LoginLog then
write(LoginLog,"[VT: "..vt.."][Type: "..THUONG_TOP[vt][1].."]["..GetAccount().."]["..GetName().."]["..thoigian.."]\n");
end
closefile(LoginLog)
		
if THUONG_TOP[vt][3] ~= 0 then	
	Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." nhËn th­ëng Top Sù KiÖn nhËn ®­îc: ")
	if THUONG_TOP[vt][1] == 3 then
		if typeitem == 1 then
			idxitem = AddItem(0,4,3,4,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")
			idxitem = AddItem(0,3,3,4,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")
			idxitem = AddItem(0,3,4,4,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")
			idxitem = AddItem(0,9,3,4,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")				
		elseif typeitem == 2 then
			idxitem = AddItem(0,7,15,10,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")	
			idxitem = AddItem(0,2,30,10,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")	
			idxitem = AddItem(0,6,3,10,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")	
			idxitem = AddItem(0,5,5,10,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")	
			idxitem = AddItem(0,8,3,10,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")		
		end
	elseif THUONG_TOP[vt][1] == 4 then
		if typeitem == 1 then
			idxitem = AddItem(0,4,3,2,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")
			idxitem = AddItem(0,3,3,2,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")
			idxitem = AddItem(0,3,4,2,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")
			idxitem = AddItem(0,9,3,2,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")				
		elseif typeitem == 2 then
			idxitem = AddItem(0,7,15,random(1,10),0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")	
			idxitem = AddItem(0,2,30,random(1,10),0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")	
			idxitem = AddItem(0,6,3,random(1,10),0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")	
			idxitem = AddItem(0,5,5,random(1,10),0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")	
			idxitem = AddItem(0,8,3,random(1,10),0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")	
		end	
	elseif THUONG_TOP[vt][1] == 1 then
			idxitem = AddItem(0,5,19,2,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")
	elseif THUONG_TOP[vt][1] == 2 then	
			idxitem = AddItem(0,4,12,2,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")
	elseif THUONG_TOP[vt][1] == 5 then
			idxitem = AddItem(0,4,3,1,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")
			idxitem = AddItem(0,3,3,1,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")
			idxitem = AddItem(0,3,4,1,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")
			idxitem = AddItem(0,9,3,1,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")	
	elseif THUONG_TOP[vt][1] == 6 then
			idxitem = AddItem(0,7,15,random(1,10),0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")	
			idxitem = AddItem(0,2,30,random(1,10),0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")	
			idxitem = AddItem(0,6,3,random(1,10),0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")	
			idxitem = AddItem(0,5,5,random(1,10),0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")	
			idxitem = AddItem(0,8,3,random(1,10),0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")	
	elseif THUONG_TOP[vt][1] == 7 then
			idxitem = AddItem(0,0,0,122,0,0,0)
			Msg2SubWorld("<color=green>- "..GetNameItemBox(idxitem).."")
	end
else
	Talk(1,"","Hack ha em")
end
end


function nhanthuongduatop_ngay()
vt = CheckDanhSachNgay()
if vt == 0 then
	Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch nhËn th­ëng !")  
	return
end

if PHAN_THUONG[vt][3] ~= 0 then
Talk(1,"","Lçi ®· nhËn phÇn th­ëng, liªn hÖ admin !")
return
end
	
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ 6 x 5 «, kh«ng thÓ nhËn !")
	return
end
	
thoigian = tonumber(date("%H%M%d%m"))	
PHAN_THUONG[vt][3] = thoigian	
BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
LuuBang("script/event/tetnguyendan/danhsachnhanthuong.lua",BANG2)


LoginLog = openfile("Data/SuKien/NhanThuongTopNgay.txt", "a");
if LoginLog then
write(LoginLog,"[VT: "..vt.."][Type: "..PHAN_THUONG[vt][1].."]["..GetAccount().."]["..GetName().."]["..thoigian.."]\n");
end
closefile(LoginLog)
		
if PHAN_THUONG[vt][3] ~= 0 then	
	Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." nhËn th­ëng Top Sù KiÖn nhËn ®­îc: ")
	if PHAN_THUONG[vt][1] == 1 then
			AddEventItem(694)
			Msg2SubWorld("<color=green>- R­¬ng Thiªn Hoµng")
	elseif PHAN_THUONG[vt][1] == 2 then
			AddEventItem(692)
			Msg2SubWorld("<color=green>- R­¬ng §Þnh Quèc")
	elseif PHAN_THUONG[vt][1] == 3 then
		if GetSex() == 0 then
			AddEventItem(698)
			Msg2SubWorld("<color=green>- R­¬ng HiÖp Cèt")
		else
			AddEventItem(699)
			Msg2SubWorld("<color=green>- R­¬ng Nhu T×nh")
		end
	elseif PHAN_THUONG[vt][1] == 4 then
			AddEventItem(687)
			Msg2SubWorld("<color=green>- M· Bµi 80")
	elseif PHAN_THUONG[vt][1] == 5 then
			AddEventItem(120)
			Msg2SubWorld("<color=green>- Tiªn Th¶o Lé 6 Giê ")
	elseif PHAN_THUONG[vt][1] == 6 then
			AddEventItem(120)
			AddEventItem(120)
			Msg2SubWorld("<color=green>- 2 x Tiªn Th¶o Lé 6 Giê ")
	end
else
	Talk(1,"","Hack ha em")
end
end

function CheckDanhSachNgay()
for i=1,getn(PHAN_THUONG) do
	if GetName() == PHAN_THUONG[i][2] and PHAN_THUONG[i][3] == 0 then
		return i
	end
end
return 0
end
function CheckDanhSachEvent()
for i=1,getn(THUONG_TOP) do
	if GetName() == THUONG_TOP[i][2] and THUONG_TOP[i][3] == 0 then
		return i
	end
end
return 0
end

function ghepmamnguqua()
SayNew("Chän lo¹i cÇn ghÐp:",3,
"GhÐp ChiÕc mò chiÕn sÜ /ghepnguqua",
"GhÐp TÊm ¸o chiÕn sÜ /ghepnguqua",
"Tho¸t./no")
end

function ghepnguqua(nsel)
i = nsel + 1
IDITEM = 0
IDITEM = 0
NAME = ""
if i == 1 then
	IDNL = 321
	IDITEM = 323
	NAME = "ChiÕc mò chiÕn sÜ "
elseif i == 2 then
	IDNL = 322
	IDITEM = 324
	NAME = "TÊm ¸o chiÕn sÜ "
end
if IDITEM == 0 then
return
end

soluong = 0
for k=1,100 do
		if GetItemCount(313) > 0 and GetItemCount(314) > 0 and  GetItemCount(315) > 0 and  GetItemCount(316) > 0 and  GetItemCount(317) > 0 and GetItemCount(IDNL) > 0 and GetCash() >= 5000 then
				DelItem(313)
				DelItem(314)
				DelItem(315)
				DelItem(316)
				DelItem(317)
				DelItem(IDNL)
				Pay(5000)
				AddEventItem(IDITEM)
				soluong = soluong + 1
		end
end

if soluong > 0 then
	Msg2Player("B¹n nhËn ®­îc: "..soluong.." "..NAME.."")
else
	Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
end
end


function nhanquatet()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))


if GetTask(987) == 0 then
Talk(1,"","Ng­¬i ch­a nhËn th­ëng ë NguyÖt L·o, kh«ng thÓ nhËn phÇn th­ëng cña ta !")
return
end
if thang == 1 then
Talk(1,"","Thêi gian nhËn phÇn th­ëng: 01/02 - 05/02 !")
return
end

if GetLevel() < 110 then
Talk(1,"","§¹t ®¼ng cÊp 110 råi quay l¹i gÆp ta, sÏ cã 1 phÇn quµ nhá cho quý b»ng h÷u !")
return
end

if GetTask(987) == 888888 then
Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn thªm !")
return
end

SetTask(987, 888888)
idxitem = AddEventItem(0)
SetBindItem(idxitem , 1)
idxitem = AddEventItem(1)
SetBindItem(idxitem, 1)

Msg2Player("Chóc mõng b¹n nhËn th­ëng MÑ Giµ nhËn ®­îc:")
Msg2Player("<color=yellow>- Vâ L©m MËt TÞch")
Msg2Player("<color=yellow>- TÈy Tñy Kinh")
end


function nhanthuongmoc()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ sö dông event!")
	return
end

if GetTask(971) == 0 then
	if GetTask(985) >= 1000000 then
			SetTask(971, GetTask(971) + 1)
			if GetTask(971) == 1 then
				
			idxitem = AddEventItem(116)
			SetBindItem(idxitem, 1)
			idxitem = AddEventItem(120)
			SetBindItem(idxitem, 1)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 1 - Event 30/4 - 01/5 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." ")
			inlog2("["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().."")
				
			end
	else
		Talk(1,"","Mèc 1 ®¹t ®­îc: "..GetTask(985).."000 / 1.000.000.000")
	end
elseif GetTask(971) == 1 then
	if GetTask(985) >= 2000000 then
			SetTask(971, GetTask(971) + 1)
			if GetTask(971) == 2 then
					
			sxitem = RandomNew(1,1000)
			idxitem = -1
			if sxitem < 400 then
					idxitem = AddEventItem(698)		
			elseif sxitem < 800 then
					idxitem = AddEventItem(699)
			elseif sxitem < 950 then
					idxitem = AddEventItem(687)		
			elseif sxitem < 990 then
					idxitem = AddEventItem(694)					
			end
			if idxitem == -1 then
				return
			end			
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 2 - Event 30/4 - 01/5 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." ")
			inlog2("["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().."")
			
			end
	else
		Talk(1,"","Mèc 2 ®¹t ®­îc: "..GetTask(985).."000 / 2.000.000.000")
	end
elseif GetTask(971) == 2 then
		if GetTask(985) >= 3000000 then
			SetTask(971, GetTask(971) + 1)
			if GetTask(971) == 3 then
			
				sxitem = RandomNew(1,1000)
			idxitem = -1
			if sxitem < 800 then
					idxitem = AddEventItem(687)		
			elseif sxitem < 940 then
					idxitem = AddEventItem(692)	
			elseif sxitem < 990 then
					idxitem = AddEventItem(691)				
			else
					idxitem = AddItem(0,10,8,1,0,0,0)			
			end
			if idxitem == -1 then
				return
			end			
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Event 30/4 - 01/5 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." ")
			inlog2("["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().."")
			

			end
	else
		Talk(1,"","Mèc 3 ®¹t ®­îc: "..GetTask(985).."000 / 3.000.000.000")
	end



else
	Talk(1,"","B¹n ®· nhËn ®ñ tÊt c¶ phÇn th­ëng, kh«ng thÓ nhËn thªm")
end
end


function giahan()
SayNew("<color=green>ThÇy §å:<color> Gia h¹n sù kiÖn mÊt phÝ <color=yellow>100 TiÒn §ång<color>, ng­¬i thÊy sao?",2,
"Ta ch¾c ch¾n muèn gia h¹n sù kiÖn/giahan1",
"Tho¸t./no")
end

function muavatpham()
SayNew("<color=green>ThÇy §å:<color>",2,
"Mua 100 ch÷ S­ gi¸ 10 TiÒn §ång/muavatpham1",
"Tho¸t./no")
end

function muavatpham1()
	if CheckFreeBoxItem(0,10,2,2) == 0 then
			Msg2Player("Hµnh trang kh«ng ®ñ 2 x 3 chç trèng, kh«ng thÓ mua")
			return
		end
		
vang = GetItemCount(697)
if vang >= 10 then
	for k=1,10 do DelItem(697) end	
	if GetItemCount(697) == vang - 10 then
		for i=1,100 do AddEventItem(907) end	
		inlog4("["..GetItemCount(907).."] "..GetAccount().." - "..GetName().."")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng­¬i kh«ng ®ñ 10 TiÒn §ång ®Ó mua vËt phÈm")
end
end

function giahan1()
if GetTask(986) >= 2 then
	Talk(1,"","Giíi h¹n sù kiÖn cña b¹n ®· ®¹t mèc tèi ®a <color=yellow>2 lÇn<color> !")
	return
end

vang = GetItemCount(697)
if vang >= 100 then
	for k=1,100 do DelItem(697) end	
	if GetItemCount(697) == vang - 100 then
		SetTask(986, GetTask(986) + 1)
		Msg2Player("B¹n ®· gia h¹n sù kiÖn event 30/4 - 01/5 lªn <color=yellow>"..GetTask(986).." lÇn")
		inlog5("["..GetTask(986).."] "..GetAccount().." - "..GetName().."")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng­¬i kh«ng ®ñ 100 TiÒn §ång ®Ó gia h¹n sù kiÖn")
end
end

function tangbochu()
sl1 = GetItemCount(904)
sl2 = GetItemCount(905)
sl3 = GetItemCount(906)
sl4 = GetItemCount(907)
cash = GetCash()

if sl1 == 0 or sl2 == 0 or sl3 == 0 or sl4 == 0 or cash < 10000 then
Talk(1,"","Ng­¬i ®ang ®ïa giìn víi ta sao? Khi nµo gom ®ñ m·nh hay ®Õn t×m ta.")
return
end

gh = gioihan()
if GetTask(970) >= gh then
	Talk(1,"","Ng­¬i cÇn ph¶i gia h¹n míi cã thÓ tÆng tiÕp !")
	return
end
	

soluong = 0
for i=1,20 do
		if GetItemCount(904) == 0 or GetItemCount(905) == 0 or GetItemCount(906) == 0 or GetItemCount(907) == 0 or cash < 10000 then
			break;
		end
		if GetTask(970) >= gh then		
			Msg2Player("V­ît giíi h¹n bé ch÷, ngõng tÆng")
			break;
		end
		if CheckFreeBoxItem(0,10,2,2) == 0 then
			Msg2Player("Hµnh trang kh«ng ®ñ 2 x 3 chç trèng, ngõng tÆng")
			break
		end
	
		DelItem(904)
		DelItem(905)
		DelItem(906)
		DelItem(907)
		Pay(10000)
		soluong = soluong + 1
		SetTask(970, GetTask(970) + 2000)
		AddOwnExp(2000000)			
		XacSuatVatPham()	
end

if soluong > 0 then
		Msg2Player("B¹n ®· tÆng "..soluong.." Event 30/4 - 01/5 ")
		Msg2Player("Giíi h¹n: "..GetTask(970).."000 / "..gh.."000")
end
end


function XacSuatVatPham()
sx = RandomNew(1,40)
if sx == 20 then
			sx2 = RandomNew(1,200)
			if sx2 < 50 then
					idxitem = AddEventItem(random(173,174))
					Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			elseif sx2 < 80 then
					idxitem = AddEventItem(114)
					Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")		
			elseif sx2 < 120 then
					idxitem = AddEventItem(113)
					Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			elseif sx2 < 130 then
					idxitem = AddEventItem(118)
					Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			elseif sx2 < 140 then								
					sx3 = RandomNew(1,9)
					if sx3 == 1 then
					itemidx = AddItem(0,2,80,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 2 then
					itemidx = AddItem(0,4,21,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 3 then
					itemidx = AddItem(0,6,27,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 4 then
					itemidx = AddItem(0,5,25,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 5 then
					itemidx = AddItem(0,8,23,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 6 then
					itemidx = AddItem(0,7,42,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 7 then
					itemidx = AddItem(0,9,21,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 8 then
					itemidx = AddItem(0,3,40,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 9 then
					idxitem = AddItem(0,3,41,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					end
			elseif sx2 < 170 then		
					sx3 = RandomNew(1,9)
					if sx3 == 1 then
						idxitem = AddItem(0,5,4,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 2 then		
						idxitem = AddItem(0,4,2,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 3 then
						idxitem = AddItem(0,7,14,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 4 then
						idxitem = AddItem(0,9,2,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 5 then
						idxitem = AddItem(0,2,29,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 6 then
						idxitem = AddItem(0,3,2,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 7 then
						idxitem = AddItem(0,6,2,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 8 then
						idxitem = AddItem(0,8,2,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 9 then
						idxitem = AddItem(0,3,1,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					end				
			elseif sx2 < 180 then
					idxitem = AddEventItem(117)
					Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 < 190 then
					idxitem = AddEventItem(115)
					Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 < 198 then
					idxitem = AddEventItem(116)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 < 192 then
					idxitem = AddEventItem(random(28,31))
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 == 197 then
					idxitem = AddEventItem(687)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 == 198 then
					idxitem = AddEventItem(120)
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 == 199 then
					idxitem = AddEventItem(random(0,1))
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 == 200 then
					idxitem = AddEventItem(random(698,699))
					Msg2SubWorld("Chóc mõng "..GetName().." tÆng NhÊt Tù Vi S­ nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
			end
end
end


function gioihan()
if GetTask(969) == 0 then
return 2000000
elseif GetTask(969) == 1 then
return 4000000
elseif GetTask(969) == 2 then
return 6000000
else
return 0
end
end

function no()
end
function inlog4(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logMuaVatPham10Vang.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlog2(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logMocSuKien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logGiaHanTetNguyenDan.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end