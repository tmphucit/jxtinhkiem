Include("\\script\\lib\\thuvien.lua")
Include("\\script\\event\\tetduonglich\\dstopngay.lua")
Include("\\script\\event\\tetduonglich\\dsnhanthuong.lua")
Include("\\script\\event\\tetduonglich\\EventConfig.txt")

ThongBaoXepHang = 0
AutoSave = 0

function main()
SayNew("<color=green>Thiªn Sø N¨m Míi: <color> VÞ huynh ®µi gÆp ta cã viÖc g× kh«ng?...",2,
"NhËn th­ëng Top Sù KiÖn /nhanthuongtopsukien",
"Tho¸t./no")
end


function nhanthuongtopsukien()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ nhËn !")
	return
end
vt = checkdstop()
if vt == 0 then
Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch nhËn th­ëng, vui lßng b¸o Admin ®Ó kiÓm tra l¹i nÕu cã sai xãt!")
return
end

if PHANTHUONG[vt][2] ~= 9999 then
		if PHANTHUONG[vt][2] == 1 then
				idxitem = AddEventItem(694)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Top Event: <color=yellow>"..GetNameItemBox(idxitem).." ")
				inlogtop("["..GetName().."] - ["..GetAccount().."] - ["..GetNameItemBox(idxitem).."]")
		elseif PHANTHUONG[vt][2] == 2 then
				if GetSex() == 0 then
				idxitem = AddEventItem(698)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Top Event: <color=yellow>"..GetNameItemBox(idxitem).." ")
				inlogtop("["..GetName().."] - ["..GetAccount().."] - ["..GetNameItemBox(idxitem).."]")
				else
				idxitem = AddEventItem(699)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Top Event: <color=yellow>"..GetNameItemBox(idxitem).." ")
				inlogtop("["..GetName().."] - ["..GetAccount().."] - ["..GetNameItemBox(idxitem).."]")
				end
				
		elseif PHANTHUONG[vt][2] == 3 then
				idxitem = AddEventItem(687)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Top Event: <color=yellow>"..GetNameItemBox(idxitem).." ")
				inlogtop("["..GetName().."] - ["..GetAccount().."] - ["..GetNameItemBox(idxitem).."]")
		elseif PHANTHUONG[vt][2] == 4 then
				idxitem = AddEventItem(120)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Top Event: <color=yellow>"..GetNameItemBox(idxitem).." ")
				inlogtop("["..GetName().."] - ["..GetAccount().."] - ["..GetNameItemBox(idxitem).."]")
		elseif PHANTHUONG[vt][2] == 5 then
				idxitem = AddEventItem(115)
				idxitem = AddEventItem(119)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng Top Event: <color=yellow>Tiªn Th¶o Lé vµ N÷ Nhi Hång 3 Giê ")
				inlogtop("["..GetName().."] - ["..GetAccount().."] - [Tiªn Th¶o Lé - N÷ Nhi Hång 3 Giê]")
		
		end
		
		
		
		PHANTHUONG[vt][2] = 9999
		BANG = TaoBang(PHANTHUONG,"PHANTHUONG")		
		LuuBang("script/event/tetduonglich/dsnhanthuong.lua",BANG)
end

end


function inlogtop(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/NhanThuongTopSuKien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function checkdstop()
index = 0

for i=1,getn(PHANTHUONG) do
	if GetName() == PHANTHUONG[i][1] and PHANTHUONG[i][2] ~= 9999 then
			index = i
			break
	end
end
return index
end

function main_()
gio = tonumber(date("%H"))
if GetTask(990) ~= NgaySuKien then
	SetTask(990, NgaySuKien)
	SetTask(991, 0)
	SetTask(992, 0)
	SetTask(993, 0)
end
if ThongBaoXepHang ~= gio then
	ThongBaoXepHang = gio
	ThongBaoTopSuKien()
end



SayNew("<color=green>Thiªn Sø N¨m Míi: <color> VÞ huynh ®µi gÆp ta cã viÖc g× kh«ng?...",5,
"Nép Ph¸o §¹i /noplaco",
"KiÓm tra danh s¸ch Top Sù KiÖn /kiemtratop",
"Gia h¹n sù kiÖn Mõng N¨m Míi/giahan", 
"Mua R­¬ng Ph¸o/muaruong", 
"Tho¸t./no")
end

function muaruong()
SayNew("<color=green>Thiªn Sø N¨m Míi: <color> Ng­¬i muèn ta gióp g×?",3,
"Mua 10 R­¬ng Ph¸o = 10 TiÒn §ång/muaruong1",
"Mua 10 R­¬ng Ph¸o = 100 V¹n L­îng/muaruong2",
"Tho¸t./no")
end

function muaruong1()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end
vang = GetItemCount(697)
if vang >= 10 then
	for k=1,10 do DelItem(697) end
	if GetItemCount(697) == vang - 10 then
		for p=1,10 do AddEventItem(918) end
		Msg2Player("B¹n nhËn ®­îc 1 R­¬ng Ph¸o")
		
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/Ruong10Vang.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(99).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 10 TiÒn §ång, kh«ng thÓ mua vËt phÈm nµy")
end
end
function muaruong2()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end
vang = GetCash()
if GetCash() >= 1000000 then
	Pay(1000000)
	if GetCash() == vang - 1000000 then
		for p=1,10 do AddEventItem(918) end
		Msg2Player("B¹n nhËn ®­îc 1 R­¬ng Ph¸o")
		
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/Ruong100Van.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(99).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 100 v¹n l­îng, kh«ng thÓ mua vËt phÈm nµy")
end
end


function giahan()
SayNew("<color=green>Thiªn Sø N¨m Míi: <color> Gia h¹n sù kiÖn mÊt phÝ <color=yellow>20 TiÒn §ång<color>, ng­¬i thÊy sao?",2,
"Ta ch¾c ch¾n muèn gia h¹n sù kiÖn/giahan1",
"Tho¸t./no")
end

function giahan1()
if GetTask(993) >= 1 then
	Talk(1,"","Giíi h¹n sù kiÖn cña b¹n ®· ®¹t mèc tèi ®a <color=yellow>2 lÇn<color> !")
	return
end

vang = GetItemCount(697)
if vang >= 20 then
	for k=1,20 do DelItem(697) end	
	if GetItemCount(697) == vang - 20 then
		SetTask(993, GetTask(993) + 1)
		Msg2Player("B¹n ®· gia h¹n sù kiÖn Mõng N¨m Míi lªn <color=yellow>"..GetTask(993).." lÇn")
		inlog5("["..GetTask(993).."] "..GetAccount().." - "..GetName().." - "..GetLevel().."")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng­¬i kh«ng ®ñ 20 TiÒn §ång ®Ó gia h¹n sù kiÖn")
end
end

function noplaco()
OpenStringBox(0,"NhËp 1 - 100","noplaco1")
end
function noplaco1(num2)

gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if gio == 17 and phut < 5 then
Talk(1,"","Kh«ng thÓ nép Ph¸o §¹i trong thêi gian: 17h00 - 17h05. Danh s¸ch Top Sù KiÖn h«m nay ®· chèt !")
return
end

if num2 == "" then
num2 = 0
end
num = tonumber(num2)
if num == 0 then
return
end


if num > 100 then
Talk(1,"","ChØ nép tèi ®a 100 c¸i / lÇn !")
return
end
sl = GetItemCount(917)
if sl < num then
Talk(1,"","Hµnh trang kh«ng ®ñ <color=red>"..num.." Ph¸o §¹i<color>, kh«ng thÓ nép")
return
end

gh = gioihan()
soluong = 0
for i=1,num do
	if GetItemCount(917) == 0 then
		break;
	end
	DelItem(917)
	if GetTask(992) < gh then
		AddOwnExp(4000000)
		SetTask(992, GetTask(992) + 4)		
	end
	SetTask(991, GetTask(991) + 1)
	soluong = soluong + 1
end


if soluong > 0 then
	Msg2Player("Giíi h¹n: <color=yellow>"..GetTask(992)..".000.000<color=red> / "..gh..".000.000")		
	Msg2Player("Sè l­îng Ph¸o §¹i ®· sö dông: <color=green>"..GetTask(991).."")
end

vt = checkds()
if vt == 0 then
		vtmin = checkmin()
		if GetTask(991) > DSTOP[vtmin][2] then
			DSTOP[vtmin][1] = GetName()
			DSTOP[vtmin][2] = GetTask(991)
		end
else
		DSTOP[vt][2] = GetTask(991)
end
end


function gioihan()
if GetTask(993) == 1 then
return 400
else
return 200
end
end


function no()
end

function ThongBaoTopSuKien()
	SapXepHangDuaTop()
	Msg2SubWorld("<color=green>Danh s¸ch Top Sù KiÖn Mõng N¨m Míi:")
	for k=1,getn(DSTOP) do
		if k <= getn(DSTOP) then
			Msg2SubWorld("- H¹ng "..k..": "..DSTOP[k][1].." - "..DSTOP[k][2].." c¸i")
		end
	end
	Msg2SubWorld("<color=pink>L­u ý: Chèt danh s¸ch TOP vµ Reset vµo 17h00 mçi ngµy")
end

function kiemtratop()
phut = tonumber(date("%M"))
	SapXepHangDuaTop()
	Msg2Player("<color=green>Danh s¸ch Top Sù KiÖn Mõng N¨m Míi:")
	for k=1,getn(DSTOP) do
		if k <= getn(DSTOP) then
			Msg2Player("- H¹ng "..k..": "..DSTOP[k][1].." - "..DSTOP[k][2].." c¸i")
		end
	end
	
	if AutoSave ~= phut then
		AutoSave = phut
		savebang()
	end
end

function savebang()
BANG = TaoBang(DSTOP,"DSTOP")		
LuuBang("script/event/tetduonglich/dstopngay.lua",BANG)
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


function checkds()
for i=1,getn(DSTOP) do
	if GetName() == DSTOP[i][1] then
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


function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logGiaHan.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
