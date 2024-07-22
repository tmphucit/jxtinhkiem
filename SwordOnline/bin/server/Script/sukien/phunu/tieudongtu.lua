Include("\\script\\lib\\thuvien.lua")
Include("\\script\\event\\phunu\\dsbohoahong.lua")
Include("\\script\\event\\phunu\\dstopngay.lua")
Include("\\script\\event\\phunu\\dsnhanthuong.lua")


function KetThucDuaTopNgay()
LoginLog = openfile("Data/DanhSachDuaTopNgay.txt", "a");
if LoginLog then
write(LoginLog,"Ngay "..DUA_TOP[3][1].." ["..DUA_TOP[1][1].." - "..DUA_TOP[1][2].." - "..DUA_TOP[1][3].."] ["..DUA_TOP[2][1].." - "..DUA_TOP[2][2].." - "..DUA_TOP[2][3].."] ,\n");
end
closefile(LoginLog)
Msg2Player("§· cËp nhËt xÕp h¹ng")
end


function CapNhatDuaTopNgay()
if GetName() == DUA_TOP[1][2] then
		DUA_TOP[1][3] = GetTask(938)
		return
end
if GetName() == DUA_TOP[2][2] then
		DUA_TOP[2][3] = GetTask(938)
		return
end

if GetTask(938) > DUA_TOP[1][3] or GetTask(938) > DUA_TOP[2][3] then
	if DUA_TOP[1][3] > DUA_TOP[2][3] then
			DUA_TOP[2][1] = GetAccount() 
			DUA_TOP[2][2] = GetName() 
			DUA_TOP[2][3] = GetTask(938)		
	else
			DUA_TOP[1][1] = GetAccount() 
			DUA_TOP[1][2] = GetName() 
			DUA_TOP[1][3] = GetTask(938)	
	end
end
end


function xephang()
if DUA_TOP[1][3] > DUA_TOP[2][3] then
return 2
else
return 1
end
end

ThongBaoXepHang = 0
AutoSave = 0

function main()
Talk(1,"","HiÖn t¹i kh«ng cã sù kiÖn nµo !")
--SayNew("<color=green>TiÓu §ång Tö: <color> VÞ huynh ®µi gÆp ta cã viÖc g× kh«ng?...",2,
--"NhËn th­ëng sù kiÖn Top Bã Hoa Hång /nhanthuongconheo",
--"GhÐp Bã Hoa Hång /ghepbohoahong",
--"TÆng Bã Hoa Hång /noplaco",
--"KiÓm tra danh s¸ch Top Sù KiÖn /kiemtratop",
--"Gia h¹n sù kiÖn Phô N÷ ViÖt Nam /giahan", 
--"NhËn th­ëng mèc Bã Hoa Hång /nhanthuongmoc",
--"NhËn th­ëng Top Event /nhanthuongtopngay",
--"Tho¸t./no")
end


function nhanthuongtopngay()
vt = checktentopngay()
if vt == 0 then
Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch nhËn th­ëng Top Ngµy")
return
end

if PHAN_THUONG[vt][2] == 1 then
		idxitem = AddEventItem(694)
		Msg2Player("Chóc mõng, b¹n ®· nhËn ®­îc "..GetNameItemBox(idxitem).."")
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
		
elseif PHAN_THUONG[vt][2] == 2 then
		idxitem = AddEventItem(691)
		Msg2Player("Chóc mõng, b¹n ®· nhËn ®­îc "..GetNameItemBox(idxitem).."")
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
elseif PHAN_THUONG[vt][2] == 3 then
		SayNew("B¹n vui lßng chän phÇn th­ëng: ",3,
		"R­¬ng HiÖp Cèt /nhanthuongtopngay1",
		"R­¬ng Nhu T×nh /nhanthuongtopngay1",
		"Tho¸t./no")
elseif PHAN_THUONG[vt][2] == 4 then
		SayNew("B¹n vui lßng chän phÇn th­ëng: ",3,
		"R­¬ng §Þnh Quèc /nhanthuongtopngay1",
		"R­¬ng Thiªn Hoµng /nhanthuongtopngay1",
		"Tho¸t./no")
elseif PHAN_THUONG[vt][2] == 5 then
		SayNew("B¹n vui lßng chän phÇn th­ëng: ",5,
		"D©y ChuyÒn An Bang /nhanthuongtopngay1",
		"NhÉn Cóc Hoa /nhanthuongtopngay1",
		"NhÉn Kª HuyÕt /nhanthuongtopngay1",
		"Ngäc Béi An Bang /nhanthuongtopngay1",
		"Tho¸t./no")		
	elseif PHAN_THUONG[vt][2] == 6 then
		SayNew("B¹n vui lßng chän phÇn th­ëng: ",6,
		"Nãn §Þnh Quèc /nhanthuongtopngay1",
		"¸o §Þnh Quèc /nhanthuongtopngay1",
		"Bao Tay §Þnh Quèc /nhanthuongtopngay1",
		"Giµy §Þnh Quèc /nhanthuongtopngay1",
		"Th¾t L­ng §Þnh Quèc /nhanthuongtopngay1",
		"Tho¸t./no")			
	elseif PHAN_THUONG[vt][2] == 7 then
		idxitem = AddEventItem(694)
		Msg2Player("Chóc mõng, b¹n ®· nhËn ®­îc "..GetNameItemBox(idxitem).."")
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
else
		Talk(1,"","B¹n ®· nhËn phÇn th­ëng råi, kh«ng thÓ nhËn thªm")
end
end

function nhanthuongtopngay1(nsel)
i = nsel + 1
vt = checktentopngay()
if vt == 0 then
Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch nhËn th­ëng Top Ngµy")
return
end

if PHAN_THUONG[vt][2] == 3 then
	if i == 1 then
		idxitem = AddEventItem(698)
		Msg2Player("Chóc mõng, b¹n ®· nhËn ®­îc "..GetNameItemBox(idxitem).."")	
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 2 then
		idxitem = AddEventItem(699)
		Msg2Player("Chóc mõng, b¹n ®· nhËn ®­îc "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	end
elseif PHAN_THUONG[vt][2] == 4 then
	if i == 1 then
		idxitem = AddEventItem(692)
		Msg2Player("Chóc mõng, b¹n ®· nhËn ®­îc "..GetNameItemBox(idxitem).."")			
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 2 then
		idxitem = AddEventItem(694)
		Msg2Player("Chóc mõng, b¹n ®· nhËn ®­îc "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	end
elseif PHAN_THUONG[vt][2] == 5 then
	if i == 1 then
		idxitem = AddItem(0,4,3,random(5,9),0,0,0)
		Msg2Player("Chóc mõng, b¹n ®· nhËn ®­îc "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 2 then
		idxitem = AddItem(0,3,3,random(5,9),0,0,0)
		Msg2Player("Chóc mõng, b¹n ®· nhËn ®­îc "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 3 then
		idxitem = AddItem(0,3,4,random(5,9),0,0,0)
		Msg2Player("Chóc mõng, b¹n ®· nhËn ®­îc "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 4 then
		idxitem = AddItem(0,9,3,random(5,9),0,0,0)
		Msg2Player("Chóc mõng, b¹n ®· nhËn ®­îc "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	end
elseif PHAN_THUONG[vt][2] == 6 then
	if i == 1 then
		idxitem = AddItem(0,7,15,random(5,9),0,0,0)
		Msg2Player("Chóc mõng, b¹n ®· nhËn ®­îc "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 2 then
		idxitem = AddItem(0,2,30,random(5,9),0,0,0)
		Msg2Player("Chóc mõng, b¹n ®· nhËn ®­îc "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 3 then
		idxitem = AddItem(0,8,3,random(5,9),0,0,0)
		Msg2Player("Chóc mõng, b¹n ®· nhËn ®­îc "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 4 then
		idxitem = AddItem(0,5,5,random(5,9),0,0,0)
		Msg2Player("Chóc mõng, b¹n ®· nhËn ®­îc "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	elseif i == 5 then
		idxitem = AddItem(0,6,3,random(5,9),0,0,0)
		Msg2Player("Chóc mõng, b¹n ®· nhËn ®­îc "..GetNameItemBox(idxitem).."")		
		
		PHAN_THUONG[vt][2] = 9999
		BANG = TaoBang(PHAN_THUONG,"PHAN_THUONG")		
		LuuBang("script/event/phunu/dsnhanthuong.lua",BANG)
	end
else
		Talk(1,"","B¹n ®· nhËn phÇn th­ëng råi, kh«ng thÓ nhËn thªm")
end
end

function checktentopngay()
if getn(PHAN_THUONG) == 0 then
return 0
end

for i=1,getn(PHAN_THUONG) do
	if GetName() == PHAN_THUONG[i][1] then
		return i
	end
end
return 0
end

function nhanthuongmoc()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ sö dông lång ®Ìn!")
	return
end

if GetTask(965) == 0 then
	if GetTask(963) >= 1000000 then
			SetTask(965, GetTask(965) + 1)
			if GetTask(965) == 1 then
				
			itemname = AddEventItem(120)
			SetBindItem(itemname, 1)
			itemname = AddEventItem(120)
			SetBindItem(itemname, 1)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 1 - Bã Hoa Hång ®­îc: <color=yellow>2 Tiªn Th¶o Lé 6 Giê ")
			inlog2("[Tiªn Th¶o Lé] "..GetAccount().." - "..GetName().."")
				
			end
	else
		Talk(1,"","Mèc 1 ®¹t ®­îc: "..GetTask(963).."000 / 1.000.000.000")
	end
elseif GetTask(965) == 1 then
	if GetTask(963) >= 2000000 then
			SetTask(965, GetTask(965) + 1)
			if GetTask(965) == 2 then
						
			itemname = AddEventItem(random(0,1))
			SetBindItem(itemname, 1)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 2 - Bã Hoa Hång ®­îc: <color=yellow>"..GetNameItemBox(itemname).." ")
			inlog2("["..GetNameItemBox(itemname).."] "..GetAccount().." - "..GetName().."")
				
			end
	else
		Talk(1,"","Mèc 2 ®¹t ®­îc: "..GetTask(963).."000 / 2.000.000.000")
	end
elseif GetTask(965) == 2 then
		if GetTask(963) >= 1500000 then
			SetTask(965, GetTask(965) + 1)
			if GetTask(965) == 3 then
				
				
				AddEventItem(685)	
				Msg2Player("B¹n nhËn ®­îc 1 VÐ Phong V©n Lo¹n ChiÕn")
				if GetGlbMissionV(37) == 1111 then
					SetGlbMissionV(37, 0)
					idxitem = AddEventItem(691)
					AddGlobalCountNews("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Bã Hoa Hång ®­îc <color=yellow>"..GetNameItemBox(idxitem).."",1)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Bã Hoa Hång ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
				elseif GetGlbMissionV(37) == 2222 then
					SetGlbMissionV(37, 0)
					idxitem = AddEventItem(692)
					AddGlobalCountNews("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Bã Hoa Hång ®­îc <color=yellow>"..GetNameItemBox(idxitem).."",1)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Bã Hoa Hång ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")			
				elseif GetGlbMissionV(37) == 3333 then
					SetGlbMissionV(37, 0)
					idxitem = AddEventItem(694)
					AddGlobalCountNews("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Bã Hoa Hång ®­îc <color=yellow>"..GetNameItemBox(idxitem).."",1)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Bã Hoa Hång ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")			
				else		
					
					
					itemname = AddEventItem(random(698,699))
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn th­ëng Mèc 3 - Bã Hoa Hång ®­îc: <color=yellow>"..GetNameItemBox(itemname).." ")
					inlog2("["..GetNameItemBox(itemname).."] "..GetAccount().." - "..GetName().."")
					
					
					
				end
			end
	else
		Talk(1,"","Mèc 3 ®¹t ®­îc: "..GetTask(963).."000 / 3.000.000.000")
	end



else
	Talk(1,"","B¹n ®· nhËn ®ñ tÊt c¶ phÇn th­ëng, kh«ng thÓ nhËn thªm")
end
end

function giahan()
SayNew("<color=green>TiÓu §ång Tö:<color> Gia h¹n sù kiÖn mÊt phÝ <color=yellow>50 TiÒn §ång<color>, ng­¬i thÊy sao?",2,
"Ta ch¾c ch¾n muèn gia h¹n sù kiÖn/giahan1",
"Tho¸t./no")
end

function giahan1()
if GetTask(962) >= 2 then
	Talk(1,"","Giíi h¹n sù kiÖn cña b¹n ®· ®¹t mèc tèi ®a <color=yellow>2 lÇn<color> !")
	return
end

vang = GetItemCount(697)
if vang >= 50 then
	for k=1,50 do DelItem(697) end	
	if GetItemCount(697) == vang - 50 then
		SetTask(962, GetTask(962) + 1)
		Msg2Player("B¹n ®· gia h¹n sù kiÖn Phô N÷ ViÖt Nam lªn <color=yellow>"..GetTask(962).." lÇn")
		inlog5("["..GetTask(962).."] "..GetAccount().." - "..GetName().." - "..GetLevel().."")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng­¬i kh«ng ®ñ 50 TiÒn §ång ®Ó gia h¹n sù kiÖn")
end
end

function ghepbohoahong()


soluong = 0
for i=1,100 do
	if CheckFreeBoxItem(0,3,0,1) == 0 then
		Msg2Player("Hµnh trang kh«ng ®ñ chç trèng, ngõng ghÐp")
		break
	end
	if GetItemCount(729) > 0 and GetItemCount(730) > 0 and GetItemCount(731) > 0 and GetItemCount(732) > 0 and GetCash() >= 10000 then
		for k=729,732 do DelItem(k) end
		Pay(10000)
		AddEventItem(733)
		soluong = soluong + 1
	end
end

if soluong > 0 then
	Msg2Player("GhÐp thµnh c«ng "..soluong.." Bã Hoa Hång")
else
	Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
end

end


function nhanthuongconheo()
vt = checkds()
if vt == 0 then
Talk(1,"","Nh©n vËt cña b¹n kh«ng cã tªn trong danh s¸ch nhËn th­ëng")
return
end

if DSTOP[vt][2] == 9999 then
Talk(1,"","B¹n ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn thªm")
return
end
if CheckFreeBoxItem(0,10,2,2) == 0 then
	Msg2Player("Hµnh trang kh«ng ®ñ 2 x 3 chç trèng, kh«ng thÓ nhËn th­ëng")
	return
end
	
	if vt == 1 then
			Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp "..GetName().." ®· nhËn phÇn th­ëng TOP "..vt..": ")
			idxitem = AddEventItem(691)
			Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
			idxitem = AddItem(0,10,5,5,0,0,0)
			Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
			DSTOP[vt][2] = 9999
			savebang()
	elseif vt == 2 then
		SayNew("B¹n vui lßng chän phÇn th­ëng: ",4,
		"R­¬ng Thiªn Hoµng /chonhang2",
		"R­¬ng §Þnh Quèc /chonhang2",
		"ChiÕu D¹ /chonhang2",
		"Tho¸t./no")
	elseif vt == 3 or vt == 4 then
		SayNew("B¹n vui lßng chän phÇn th­ëng: ",3,
		"R­¬ng Thiªn Hoµng /chonhang2",
		"R­¬ng §Þnh Quèc /chonhang2",
		"Tho¸t./no")
	else
		SayNew("B¹n vui lßng chän phÇn th­ëng: ",3,
		"R­¬ng Nhu T×nh /chonhang3",
		"R­¬ng HiÖp Cèt /chonhang3",
		"Tho¸t./no")
	end
end

function chonhang2(nsel)
vt = checkds()
if vt == 0 then
Talk(1,"","Nh©n vËt cña b¹n kh«ng cã tªn trong danh s¸ch nhËn th­ëng")
return
end

Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp "..GetName().." ®· nhËn phÇn th­ëng TOP "..vt..": ")
i = nsel + 1
if i == 1 then
	idxitem = AddEventItem(694)
	Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
	DSTOP[vt][2] = 9999
	savebang()
elseif i == 2 then
	idxitem = AddEventItem(692)
	Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
	DSTOP[vt][2] = 9999
	savebang()
elseif i == 3 then
	idxitem = AddItem(0,10,5,5,0,0,0)
	Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
	DSTOP[vt][2] = 9999
	savebang()
end
end

function chonhang3(nsel)
vt = checkds()
if vt == 0 then
Talk(1,"","Nh©n vËt cña b¹n kh«ng cã tªn trong danh s¸ch nhËn th­ëng")
return
end

Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp "..GetName().." ®· nhËn phÇn th­ëng TOP "..vt..": ")
i = nsel + 1
if i == 1 then
	idxitem = AddEventItem(699)
	Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
	DSTOP[vt][2] = 9999
	savebang()
elseif i == 2 then
	idxitem = AddEventItem(698)
	Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
	DSTOP[vt][2] = 9999
	savebang()
end
end
function noplaco()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

if gio == 17 and ngay == 3 and thang == 10 then
Talk(1,"","Sù kiÖn t¹m thêi khãa ®Ó chèt danh s¸ch §ua Top Sù kiÖn Trung Thu.\n- 18h00 h«m nay sÏ ®­îc sö dông tiÕp. \n- 17h00 ngµy 05/10 kÕt thóc toµn bé Sù kiÖn Trung Thu")
return
end

OpenStringBox(2,"NhËp sè l­îng","noplaco1")
end


function noplaco1(num2)
if num2 == "" then
return
end
num = tonumber(num2)
if num == 0 then
return
end
if num > 100 then
Talk(1,"","Tèi ®a 100 Bã Hoa Hång / 1 lÇn nép")
return
end

if GetItemCount(733) < num then
Talk(1,"","Sè l­îng Bã Hoa Hång kh«ng ®ñ ®Ó nép")
return
end

ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))


gh = gioihan()
	
if GetTask(963) >= gh and GetTask(962) ~= 2 then
Talk(1,"","B¹n ®· ®¹t giíi h¹n tèi ®a: "..GetTask(963).."000 / "..gh.."000 kinh nghiÖm sù kiÖn")
return
end	
if GetTask(939) ~= ngay then
		SetTask(939, ngay)
		SetTask(938, 0)
end		
	
soluong = 0
for i=1,num do
	if CheckFreeBoxItem(0,10,2,2) == 0 then
		Msg2Player("Hµnh trang kh«ng ®ñ 2 x 3 chç trèng, ngõng nép")
		break
	end
	DelItem(733)
	
--	if (ngay == 29 and gio < 17) or ngay < 29 then
--		SetTask(964, GetTask(964) + 1)
--	end
--	
--	if ngay >= 25 and ngay <= 29 then
--		SetTask(938, GetTask(938) + 1)
--	end
	
	
	soluong = soluong + 1
	
	XacSuatVatPham()
	
	if GetTask(963) < gh then
		SetTask(963, GetTask(963) + 1000)
		AddOwnExp(1000000)
	end
end

if soluong > 0 then
	Msg2Player("B¹n ®· sö dông "..soluong.." Bã Hoa Hång")
	Msg2Player("Giíi h¹n: "..GetTask(963).."000 / "..gh.."000 kinh nghiÖm")
	
--	ngay = tonumber(date("%d"))
--	thang = tonumber(date("%m"))
--	gio = tonumber(date("%H"))
--
--		vt = checkds()
--		if vt == 0 then
--				vtmin = checkmin()
--				if GetTask(964) > DSTOP[vtmin][2] then
--					DSTOP[vtmin][1] = GetName()
--					DSTOP[vtmin][2] = GetTask(964)
--				end
--		else
--				DSTOP[vt][2] = GetTask(964)
--		end
--		Msg2Player("Bã Hoa Hång ®· sö dông: <color=yellow>"..GetTask(964).." c¸i")
--		
--		if DUA_TOP[3][1] ~= ngay then
--				KetThucDuaTopNgay()
--				DUA_TOP = {{"","",0},{"","",0},	{ngay}}			
--			end
--			
--		if ngay >= 25 and ngay <= 29 then	
--			Msg2Player("Sè l­îng sö dông trong ngµy: <color=green>"..GetTask(938).." c¸i")
--			CapNhatDuaTopNgay()	
--		end
		
end

end

function gioihan()
if GetTask(962) == 0 then
return 1000000
elseif GetTask(962) == 1 then
return 2000000
elseif GetTask(962) == 2 then
return 3000000
else
return 0
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
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Bã Hoa Hång nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 2 then
					itemidx = AddItem(0,4,21,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Bã Hoa Hång nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 3 then
					itemidx = AddItem(0,6,27,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Bã Hoa Hång nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 4 then
					itemidx = AddItem(0,5,25,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Bã Hoa Hång nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 5 then
					itemidx = AddItem(0,8,23,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Bã Hoa Hång nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 6 then
					itemidx = AddItem(0,7,42,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Bã Hoa Hång nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 7 then
					itemidx = AddItem(0,9,21,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Bã Hoa Hång nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 8 then
					itemidx = AddItem(0,3,40,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Bã Hoa Hång nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 9 then
					idxitem = AddItem(0,3,41,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Bã Hoa Hång nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
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
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Bã Hoa Hång nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 < 192 then
					idxitem = AddEventItem(random(28,31))
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Bã Hoa Hång nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 == 197 then
					idxitem = AddEventItem(687)
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Bã Hoa Hång nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 == 198 then
					idxitem = AddEventItem(120)
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Bã Hoa Hång nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 == 199 then
					idxitem = AddEventItem(random(0,1))
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Bã Hoa Hång nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 == 200 then
					idxitem = AddEventItem(random(698,699))
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Bã Hoa Hång nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
			end
end
end


function no()
end


function kiemtratop()
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

	SapXepHangDuaTop()
	Msg2Player("<color=green>Danh sach Top Sù KiÖn Phô N÷ ViÖt Nam:")
	for k=1,getn(DSTOP) do
		if k <= getn(DSTOP) then
			Msg2Player("- H¹ng "..k..": "..DSTOP[k][1].." - "..DSTOP[k][2].." c¸i")
		end
	end
	
	Msg2Player("<color=green>Danh sach Top Ngµy "..ngay.." / "..thang..":")
	xh = xephang()
	if xh == 2 then
	Msg2Player("- H¹ng 1: "..DUA_TOP[1][2].." - Sè l­îng: "..DUA_TOP[1][3].." c¸i")
	Msg2Player("- H¹ng 2: "..DUA_TOP[2][2].." - Sè l­îng: "..DUA_TOP[2][3].." c¸i")
	else
	Msg2Player("- H¹ng 1: "..DUA_TOP[2][2].." - Sè l­îng: "..DUA_TOP[2][3].." c¸i")
	Msg2Player("- H¹ng 2: "..DUA_TOP[1][2].." - Sè l­îng: "..DUA_TOP[1][3].." c¸i")
	end

	
	if AutoSave ~= phut then
		AutoSave = phut
		savebang()
	end
end

function savebang()
BANG = TaoBang(DSTOP,"DSTOP")		
LuuBang("script/event/phunu/dsbohoahong.lua",BANG)
BANG = TaoBang(DUA_TOP,"DUA_TOP")		
LuuBang("script/event/phunu/dstopngay.lua",BANG)
end

function checkmin()
vtmin = 1
giatrimin = DSTOP[vtmin][2]
for i=2,getn(DSTOP) do
		if giatrimin > DSTOP[i][2] then
			vtmin = i
			giatrimin = DSTOP[i][2]
		end
end
return vtmin
end
function checkmin_ngay()
vtmin = 1
giatrimin = DSTOP_NGAY[vtmin][2]
for i=2,getn(DSTOP_NGAY) do
		if giatrimin > DSTOP_NGAY[i][2] then
			vtmin = i
			giatrimin = DSTOP_NGAY[i][2]
		end
end
return vtmin
end


function checkds()
for i=1,getn(DSTOP) do
	if GetName() == DSTOP[i][1] then
		return i
	end
end
return 0
end

function checkds_ngay()
for i=1,getn(DSTOP_NGAY) do
	if GetName() == DSTOP_NGAY[i][1] then
		return i
	end
end
return 0
end


tam_duatop = {"",0}
function SapXepHangDuaTop()
for i=1,getn(DSTOP) do
	for j=1,getn(DSTOP) do
		if DSTOP[i][2] > DSTOP[j][2] then
			tam_duatop = DSTOP[i]
			DSTOP[i] = DSTOP[j]
			DSTOP[j] = tam_duatop
		end
	end
end

end
