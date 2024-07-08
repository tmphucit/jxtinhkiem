

function main()


vang = GetTask(99)
SayNew("<color=green>Chñ TiÒn Trang<color>:  HiÖn t¹i ta ®ang gi÷  <color=yellow>"..vang.." TiÒn §ång<color> cña nhµ ng­¬i. Ng­¬i gÆp ta cã viÖc g× kh«ng?.",4,
--"Rót "..knb.." Kim Nguyªn B¶o /rutknb",
--"Rót "..vang.." Vµng/ruttoanbovang",
"Göi TiÒn §ång/new_guitiendong",
"Rót TiÒn §ång/new_ruttiendong",
"NhËn khuyÕn m·i n¹p thÎ /new_khuyenmai",

--"Rót §¹i Kim Nguyªn B¶o/new_rutknb1",
--"Gia h¹n giê ch¬i /giahangiochoi",
--"Vµo b¶n ®å t¹m giam/vaotamgiam",
--"NhËn phÇn th­ëng KhuyÕn M·i/ptquockhanh",
--"NhËn th­ëng Tu LuyÖn §an/nhantuluyendan",
--"Sù kiÖn Gi¶i Phãng MiÒn Nam 30-04/giaiphong_main",
--"§æi Vßng Quay May M¾n /nhanphanthuong83",
--"KiÓm Tra Top N¹p ThÎ /quockhanhnhanphanthuong_duatop",
--"§æi Kin Nguyªn B¶o thµnh Ng©n L­îng/new_doiknb",
"Tho¸t./no")
end

function new_khuyenmai()
if GetTask(995) == 111 then
	SetTask(995, 0)
	AddEventItem(913)
	Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng KhuyÕn M·i N¹p ThÎ: <color=yellow>TÈy Tñy LÖnh")
	inlog_khuyenmai("[500] ["..GetAccount().."] ["..GetName().."]")
elseif 	GetTask(995) == 222 then
	SetTask(995, 0)
	AddEventItem(914)
	Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng KhuyÕn M·i N¹p ThÎ: <color=yellow>TÈy Tñy MiÔn PhÝ ")
	inlog_khuyenmai("[1000] ["..GetAccount().."] ["..GetName().."]")
elseif 	GetTask(995) == 333 then
	SetTask(995, 0)
	AddEventItem(687)
	Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng KhuyÕn M·i N¹p ThÎ: <color=yellow>M· Bµi 8x")
	inlog_khuyenmai("[2000] ["..GetAccount().."] ["..GetName().."]")
elseif 	GetTask(995) == 444 then
	SetTask(995, 0)
	AddItem(0,10,5,2,0,0,0)
	Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng KhuyÕn M·i N¹p ThÎ: <color=yellow>XÝch Thè ")
	inlog_khuyenmai("[3000] ["..GetAccount().."] ["..GetName().."]")
elseif 	GetTask(995) == 555 then
	SetTask(995, 0)
	AddItem(0,10,5,5,0,0,0)
	Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng KhuyÕn M·i N¹p ThÎ: <color=yellow>ChiÕu D¹ Ngäc S­ Tö ")
	inlog_khuyenmai("[5000] ["..GetAccount().."] ["..GetName().."]")

else
	Talk(1,"","B¹n kh«ng cã khuyÕn m·i n¹p thÎ, vui lßng kiÓm tra l¹i !")
end
end
function new_guitiendong()
OpenStringBox(2,"NhËp Sè L­îng","new_guitiendong_1")
end
function new_guitiendong_1(num2)
if num2 == "" then
num2 = 0
end
num = tonumber(num2)

if num <= 0 then
return
end
sl = GetItemCount(697)
if GetItemCount(697) < num then
Talk(1,"","Sè l­îng TiÒn §ång trong hµnh trang kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
return
end

for i=1,num do
		DelItem(697)
end

if GetItemCount(697) == sl - num then
SetTask(99, GetTask(99) + num)
SetTask(101, GetTask(101) + num)
Talk(1,"","§· göi thµnh c«ng <color=yellow>"..num.." TiÒn §ång<color> vµo TiÒn Trang.\nHiÖn t¹i b¹n ®ang göi <color=green>"..GetTask(99).." TiÒn §ång")
inlog("[Göi] "..GetAccount().." - "..GetName().." thµnh c«ng. Hanh Trang: "..GetItemCount(697).."  - TiÒn trang: "..GetTask(99).." ")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end


function new_ruttiendong()
OpenStringBox(2,"NhËp Sè L­îng","new_ruttiendong_1")
end

function new_ruttiendong_1(num2)
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end

if num2 == "" then
num2 = 0
end
num = tonumber(num2)

if num <= 0 then
return
end

if num > 3000 then
num = 3000
end

sl = GetTask(99)
if GetTask(99) < num then
Talk(1,"","Sè l­îng TiÒn §ång trong TiÒn Trang kh«ng ®ñ, vui lßng kiÓm tra l¹i !")
return
end

SetTask(99, GetTask(99) - num)
SetTask(101, GetTask(101) - num)

if GetTask(99) == sl - num then
	for i=1,num do AddEventItem(697) end
Talk(1,"","§· rót thµnh c«ng <color=yellow>"..num.." TiÒn §ång<color>\nHiÖn t¹i tiÒn trang cßn <color=green>"..GetTask(99).." TiÒn §ång")
inlog("[Rót] "..GetAccount().." - "..GetName().." thµnh c«ng. Hanh Trang: "..GetItemCount(697).."  - TiÒn trang: "..GetTask(99).." ")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end






function ptquockhanh()

if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ 2 x 3 « chç trèng, xin kiÓm tra l¹i !")
return
end

if GetTask(459) == 0 then
	if GetTask(461) >= 6 then
		SetTask(459, 1)
		SetTask(100, GetTask(100) + 240)
		Msg2Player("B¹n nhËn ®­îc 240 danh väng")
	else
		Talk(1,"","Ng­¬i ch­a ®¹t ®ñ mèc TÝch Lòy N¹p ThÎ: <color=yellow>"..GetTask(461).." / 6 Kim Nguyªn B¶o<color>, kh«ng  thÓ nhËn phÇn th­ëng")
	end
elseif GetTask(459) == 1 then
	if GetTask(461) >= 12 then
		SetTask(459, 2)
		idxitem = AddEventItem(120)
		SetBindItem(idxitem , 1)
		Msg2Player("B¹n nhËn ®­îc 1 Tiªn Th¶o Lé 6 Giê [Khãa]")
		idxitem = AddEventItem(116)
		SetBindItem(idxitem , 1)
		Msg2Player("B¹n nhËn ®­îc 1 N÷ Nhi Hång 6 Giê [Khãa]")
	else
		Talk(1,"","Ng­¬i ch­a ®¹t ®ñ mèc TÝch Lòy N¹p ThÎ: <color=yellow>"..GetTask(461).." / 12 Kim Nguyªn B¶o<color>, kh«ng  thÓ nhËn phÇn th­ëng")
	end

elseif GetTask(459) == 2 then
	if GetTask(461) >= 30 then
		SetTask(459, 3)
		TayKyNang()
		TayTiemNang()
		KickOutSelf()
	else
		Talk(1,"","Ng­¬i ch­a ®¹t ®ñ mèc TÝch Lòy N¹p ThÎ: <color=yellow>"..GetTask(461).." / 30 Kim Nguyªn B¶o<color>, kh«ng  thÓ nhËn phÇn th­ëng")
	end
elseif GetTask(459) == 3 then
	if GetTask(461) >= 60 then
		SetTask(459, 4)
		for p=1,5 do AddEventItem(650) end
		Msg2Player("B¹n nhËn ®­îc 5 May M¾n Nhãm")
	else
		Talk(1,"","Ng­¬i ch­a ®¹t ®ñ mèc TÝch Lòy N¹p ThÎ: <color=yellow>"..GetTask(461).." / 60 Kim Nguyªn B¶o<color>, kh«ng  thÓ nhËn phÇn th­ëng")
	end
elseif GetTask(459) == 4 then
	if GetTask(461) >= 300 then
		SetTask(459, 5)
		for p=1,5 do AddEventItem(631) end
		Msg2Player("B¹n nhËn ®­îc 5 §¹i Kim Nguyªn B¶o")
	else
		Talk(1,"","Ng­¬i ch­a ®¹t ®ñ mèc TÝch Lòy N¹p ThÎ: <color=yellow>"..GetTask(461).." / 300 Kim Nguyªn B¶o<color>, kh«ng  thÓ nhËn phÇn th­ëng")
	end
end
end


mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function vaotamgiam()
w,x,y = GetWorldPos()
if w == 15 or w == 17 or w == 9 then
	SetTask(481,0)
	NewWorld(27,1569, 3217)
	Msg2Player("B¹n ®· ®­îc ®­a vµo b¶n ®å t¹m giam ")
else
	Talk(1,"","ChØ ®­îc vµo b¶n ®å t¹m giam t¹i Thµnh ThÞ !")
end
end


function giahangiochoi()
if GetItemCount(17) < 1 then
Talk(1,"","B¹n kh«ng mang theo <color=yellow>Kim Nguyªn B¶o<color>, kh«ng thÓ gia h¹n giê ch¬i !")
return
end
slknb = GetItemCount(17)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
DelItem(17)
if GetItemCount(17) == slknb - 1 then		
	thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/logGiaHanKNB.txt", "a");
			if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." -"..GetLevel().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			
tinhtime = nam * 1000000 + thang * 10000 + ngay * 100 + gio
tinhtime1 = GetTask(492) * 1000000 + GetTask(491) * 10000 + GetTask(490) * 100 + GetTask(489)


if (tinhtime >= tinhtime1) then
	SetTask(489, gio)
	SetTask(490, ngay)
	SetTask(491, thang)
	SetTask(492, nam)
end
		SetTask(490, GetTask(490)  + 7)
		if GetTask(491) == 13 then
			SetTask(491,1)
			SetTask(492, GetTask(492) + 1)
		end
		if GetTask(490) > mangthang[GetTask(491)] then
			SetTask(490, GetTask(490) - mangthang[GetTask(491)])
			SetTask(491, GetTask(491) + 1 )
		end
if (tinhtime >= tinhtime1)	 then	
	SetTask(489, gio)
end
		Msg2Player("B¹n ®· gia h¹n thµnh c«ng:<color=yellow> "..GetTask(489).." giê, ngµy "..GetTask(490).." th¸ng "..GetTask(491).." n¨m "..GetTask(492).."")
else
	Talk(1,"","hack ha em")
end
end

function giaiphong_main()
SayNew("<color=green>Chñ TiÒn Trang<color>:  HiÖn t¹i b¹n cã <color=yellow>"..GetTask(438).." ®iÓm TÝch Lòy N¹p ThÎ <color> vµ <color=green>"..GetTask(437).." vµng Sù KiÖn<color> trong tµi kho¶n.",5,
"§æi 40 ®iÓm = 1 Vßng Quay /giaiphong1",
"§æi 50 ®iÓm = 10 Vµng /giaiphong2",
"NhËn phÇn th­ëng Gãi KhuyÕn M·i /giaiphong3",
"Quay Sè Tróng Th­ëng /giaiphong4",
"Tho¸t./no")
end


function giaiphong3()
if GetTask(482) < 1000 then
	if GetTask(437) >= 100 then
			SetTask(482, 1000)

			AddEventItem(161)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc Gãi N¹p ThÎ: <color=yellow>1 Thiªn S¬n TuyÕt Liªn")
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/GoiNapThe.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(437).." - "..GetTask(482).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			Talk(0,"")
	else
		Talk(1,"","Ng­¬i kh«ng ®¹t yªu cÇu Gãi N¹p ThÎ: "..GetTask(437).." / 100")
	end
elseif GetTask(482) < 2000 then
	if GetTask(437) >= 300 then
			SetTask(482, 2000)

			idxitem = AddItem(0,10,8,1,0,0,0)
			SetTimeItem(idxitem,550324);
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc Gãi N¹p ThÎ: <color=yellow>1 Phi V©n")
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/GoiNapThe.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(437).." - "..GetTask(482).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			Talk(0,"")
	else
		Talk(1,"","Ng­¬i kh«ng ®¹t yªu cÇu Gãi N¹p ThÎ: "..GetTask(437).." / 300")
	end
elseif GetTask(482) < 3000 then
	if GetTask(437) >= 1500 then
			SetTask(482, 3000)

			idxitem = AddItem(0,10,6,1,0,0,0)
			SetTimeItem(idxitem,550324);
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc Gãi N¹p ThÎ: <color=yellow>1 B«n Tiªu")
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/GoiNapThe.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(437).." - "..GetTask(482).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			Talk(0,"")
	else
		Talk(1,"","Ng­¬i kh«ng ®¹t yªu cÇu Gãi N¹p ThÎ: "..GetTask(437).." / 1500")
	end	
elseif GetTask(482) < 4000 then
	if GetTask(437) >= 3000 then
			SetTask(482, 4000)

			idxitem = AddItem(0,4,17,6,0,0,0)
			SetTimeItem(idxitem,550324);
			idxitem = AddItem(0,9,17,6,0,0,0)
			SetTimeItem(idxitem,550324);
			idxitem = AddItem(0,3,29,6,0,0,0)
			SetTimeItem(idxitem,550324);
			idxitem = AddItem(0,3,30,6,0,0,0)
			SetTimeItem(idxitem,550324);
			
			Msg2Player("<color=green>NÕu b¹n muèn ®æi §Þnh Quèc Cùc PhÈm vui lßng liªn hÖ Hç Trî Trùc TuyÕn trong h«m nay ®Ó ®æi. Ngµy mai kh«ng gi¶i quyÕt !")
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc Gãi N¹p ThÎ: <color=yellow>1 Set An Bang Hoµn Mü CÊp 6")
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/GoiNapThe.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(437).." - "..GetTask(482).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			Talk(0,"")
	else
		Talk(1,"","Ng­¬i kh«ng ®¹t yªu cÇu Gãi N¹p ThÎ: "..GetTask(437).." / 3000")
	end	
elseif GetTask(482) < 5000 then
	if GetTask(437) >= 7500 then
			SetTask(482, 5000)

			for p=1,100 do AddEventItem(339) end
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc Gãi N¹p ThÎ: <color=yellow>100 M·nh Phiªn Vò ")
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/GoiNapThe.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(437).." - "..GetTask(482).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			Talk(0,"")
	else
		Talk(1,"","Ng­¬i kh«ng ®¹t yªu cÇu Gãi N¹p ThÎ: "..GetTask(437).." / 7500")
	end	
elseif GetTask(482) < 6000 then
	if GetTask(437) >= 15000 then
			SetTask(482, 6000)

			for p=1,100 do AddEventItem(27) end
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc Gãi N¹p ThÎ: <color=yellow>100 Ngäc BÝ Èn ")
			
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/GoiNapThe.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(437).." - "..GetTask(482).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			Talk(0,"")
	else
		Talk(1,"","Ng­¬i kh«ng ®¹t yªu cÇu Gãi N¹p ThÎ: "..GetTask(437).." / 15000")
	end		
else
Talk(1,"","Ng­¬i ®· nhËn ®ñ tÊt c¶ Gãi N¹p ThÎ, kh«ng thÓ nhËn thªm !")
end

end

function giaiphong4()
Talk(1,"","§ang cËp nhËt ! HiÖn t¹i ng­¬i cã "..GetTask(436).." Vßng Quay May M¾n")
end
function giaiphong2()
diem = GetTask(438)

if diem >= 50 then
	SetTask(438, diem - 50)
	if GetTask(438) == diem - 50 then
		SetTask(99, GetTask(99) + 10)
		SetTask(101, GetTask(101) + 10)
		Msg2Player("B¹n nhËn ®­îc 10 vµng")
		
		thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/DoiVongQuay.txt", "a");
if LoginLog then
write(LoginLog,"[VANG: "..GetTask(99).." - "..GetTask(438).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
end
closefile(LoginLog)
		
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ 50 ®iÓm TÝch Lòy N¹p ThÎ, kh«ng thÓ ®æi Vµng")
end
end

function giaiphong1()
diem = GetTask(438)

if diem >= 40 then
	SetTask(438, diem - 40)
	if GetTask(438) == diem - 40 then
		SetTask(436, GetTask(436) + 1)
		Msg2Player("Sè l­ît Vßng Quay May M¾n cña b¹n lµ: <color=yellow>"..GetTask(436).." lÇn")
		
		thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/DoiVongQuay.txt", "a");
if LoginLog then
write(LoginLog,"[QUAY: "..GetTask(436).." - "..GetTask(438).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
end
closefile(LoginLog)
		
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ 40 ®iÓm TÝch Lòy N¹p ThÎ, kh«ng thÓ ®æi Vßng Quay ")
end
end


function nhanphanthuong83()
solan = floor(GetTask(448) / 50)
SayNew("HiÖn t¹i ng­¬i ®ang cã <color=yellow>"..GetTask(448).." vµng tÝch lòy<color>, ng­¬i cã thÓ ®æi lÊy <color=red>"..solan.." Vßng Quay May M¾n<color>. Ng­¬i cã muèn ®æi kh«ng?",2,
"Cã, ta muèn ®æi Vßng Quay May M¾n /nhanthuong83_2",
"Tho¸t./no")
end
function nhanthuong83_2()
solan = floor(GetTask(448) / 50)
SetTask(448 , GetTask(448) - solan*50)
SetTask(445, GetTask(445) + solan)
Msg2Player("<color=pink>B¹n nhËn ®­îc "..solan.." Vßng Quay May M¾n, vui lßng ®Õn NPC LÔ Quan ®Ó quay")
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/DoiVongQuay.txt", "a");
if LoginLog then
write(LoginLog,"["..GetTask(445).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
end
closefile(LoginLog)


end

function nhantuluyendan()
SayNew("HiÖn t¹i b¹n ®ang cã <color=red>"..GetTask(473).." tÝch lòy n¹p thÎ <color>. B¹n cã muèn dïng 50 ®iÓm ®Ó ®æi Tu LuyÖn §an hay kh«ng?",2,
"§æi Tu LuyÖn §an /nhantld",
"Tho¸t./no")
end


function nhantld()
task = GetTask(473)
if GetTask(473) >= 50 then
	SetTask(473, GetTask(473) - 50)
	if GetTask(473) == task - 50 then
		AddEventItem(410)
		Msg2Player("B¹n nhËn ®­îc 1 Tu LuyÖn §an")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/logTuLuyenDan.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(473).."] - ["..GetItemCount(410).."] - "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng ®ñ 50 ®iÓm tÝch lòy n¹p thÎ, kh«ng thÓ ®æi Tu LuyÖn §an")
end
end


function nhanphanthuong()

if GetTask(467) == 9999 then
Talk(1,"","B¹n ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn thªm")
return
end

if GetTask(332) == 0 then
SayNew("Ng­¬i hiÖn t¹i ®ang cã <color=red>"..GetTask(467).." /20 Vµng TÝch Lòy N¹p ThÎ <color>",2,
"NhËn th­ëng Gãi 1 /nhanphanthuong2",
"§Ó ta tÝch lòy thªm./no")
elseif GetTask(332) == 1 then
SayNew("Ng­¬i hiÖn t¹i ®ang cã <color=red>"..GetTask(467).." /80 Vµng TÝch Lòy N¹p ThÎ <color>",2,
"NhËn th­ëng Gãi 2 /nhanphanthuong2",
"§Ó ta tÝch lòy thªm./no")
elseif GetTask(332) == 2 then
SayNew("Ng­¬i hiÖn t¹i ®ang cã <color=red>"..GetTask(467).." / 200 Vµng TÝch Lòy N¹p ThÎ <color>",2,
"NhËn th­ëng Gãi 3 /nhanphanthuong2",
"§Ó ta tÝch lòy thªm./no")
elseif GetTask(332) == 3 then
SayNew("Ng­¬i hiÖn t¹i ®ang cã <color=red>"..GetTask(467).." / 400 Vµng TÝch Lòy N¹p ThÎ <color>",2,
"NhËn th­ëng Gãi 4 /nhanphanthuong2",
"§Ó ta tÝch lòy thªm./no")
elseif GetTask(332) == 4 then
SayNew("Ng­¬i hiÖn t¹i ®ang cã <color=red>"..GetTask(467).." / 800 Vµng TÝch Lòy N¹p ThÎ <color>",2,
"NhËn th­ëng Gãi 5 /nhanphanthuong2",
"§Ó ta tÝch lòy thªm./no")
elseif GetTask(332) == 5 then
SayNew("Ng­¬i hiÖn t¹i ®ang cã <color=red>"..GetTask(467).." / 1500 Vµng TÝch Lòy N¹p ThÎ <color>",2,
"NhËn th­ëng Gãi 6 /nhanphanthuong2",
"§Ó ta tÝch lòy thªm./no")
else
Talk(1,"","Ng­¬i ®· nhËn ®ñ 6 Gãi, kh«ng thÓ nhËn thªm")
end
end


function nhanphanthuong2()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn ! "..CheckFreeBoxItem(4,364,1,1).."")
	return
end

if GetTask(332) == 6 then
Talk(1,"","Ng­¬i ®· nhËn ®ñ 6 Gãi, kh«ng thÓ nhËn thªm")
return
end 
solan = GetTask(332)
if GetTask(332) == 0 then
	if GetTask(467) >= 20 then
		SetTask(332, GetTask(332) + 1)
			if GetTask(332) == solan + 1 then
					for p=1,5 do 
						idxitem = AddEventItem(117) 
						SetBindItem(idxitem , 1)
					end
					Msg2Player("<color=pink>Chóc mõng "..GetName().." nhËn ®­îc Gãi Quµ TÆng 1")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 1] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","§iÓm tÝch lòy n¹p thÎ hiÖn t¹i: <color=yellow>"..GetTask(467).." / 20 vµng")
	end
elseif GetTask(332) == 1 then
	if GetTask(467) >= 80 then
		SetTask(332, GetTask(332) + 1)
			if GetTask(332) == solan + 1 then
					for p=1,10 do 
						idxitem = AddEventItem(118) 
						SetBindItem(idxitem , 1)
					end
					Msg2Player("<color=pink>Chóc mõng "..GetName().." nhËn ®­îc Gãi Quµ TÆng 2")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 2] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","§iÓm tÝch lòy n¹p thÎ hiÖn t¹i: <color=yellow>"..GetTask(467).." / 80 vµng")
	end
elseif GetTask(332) == 2 then
	if GetTask(467) >= 200 then
		SetTask(332, GetTask(332) + 1)
			if GetTask(332) == solan + 1 then
					SetTask(196,0)
					Msg2Player("<color=pink>Chóc mõng "..GetName().." nhËn ®­îc Gãi Quµ TÆng 3")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 3] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","§iÓm tÝch lòy n¹p thÎ hiÖn t¹i: <color=yellow>"..GetTask(467).." / 200 vµng")
	end	
elseif GetTask(332) == 3 then
	if GetTask(467) >= 400 then
		SetTask(332, GetTask(332) + 1)
			if GetTask(332) == solan + 1 then
					for p=1,5 do AddEventItem(0) end
					Msg2Player("<color=pink>Chóc mõng "..GetName().." nhËn ®­îc Gãi Quµ TÆng 4")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 4] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","§iÓm tÝch lòy n¹p thÎ hiÖn t¹i: <color=yellow>"..GetTask(467).." / 400 vµng")
	end		
elseif GetTask(332) == 4 then
	if GetTask(467) >= 800 then
		SetTask(332, GetTask(332) + 1)
			if GetTask(332) == solan + 1 then
					AddEventItem(19)
					Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." nhËn ®­îc Gãi Quµ TÆng 5")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 5] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","§iÓm tÝch lòy n¹p thÎ hiÖn t¹i: <color=yellow>"..GetTask(467).." / 800 vµng")
	end			
elseif GetTask(332) == 5 then
	if GetTask(467) >= 1500 then
		SetTask(332, GetTask(332) + 1)
			if GetTask(332) == solan + 1 then
					AddItem(0,10,5,5,0,0,0)
					Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." nhËn ®­îc Gãi Quµ TÆng 6")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 6] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","§iÓm tÝch lòy n¹p thÎ hiÖn t¹i: <color=yellow>"..GetTask(467).." / 1500 vµng")
	end		
	
end
						

end

Include("\\script\\topnapthe.lua")
Include("\\script\\lib\\thuvien.lua")
function quockhanh_duatop()
Msg2Player("§iÓm tÝch lòy N¹p ThÎ cña b¹n lµ: <color=yellow>"..GetTask(498).."")
Msg2Player("Top N¹p ThÎ lµ: "..NAP_THE[2]..". §iÓm tÝch lòy: "..floor(NAP_THE[4],1000).."xxx Vµng")
if GetTask(498) > NAP_THE[4] then
	NAP_THE[1] = GetAccount()
	NAP_THE[2] = GetName()
	NAP_THE[3] = GetLevel()
	NAP_THE[4] = GetTask(498)
	Msg2Player("B¹n ®· cËp nhËt danh s¸ch Top N¹p ThÎ ")
	Msg2SubWorld("Ng­êi ®øng ®Çu Top N¹p ThÎ hiÖn t¹i lµ: <color=yellow>"..NAP_THE[2].." <color=red>H·y ®Òn gÆp <color=green>NPC TiÒn Trang<color=red> ®Ó kiÓm tra TÝch Lòy N¹p ThÎ ")
	Msg2SubWorld("PhÇn th­ëng <color=yellow>ChiÕu D¹ Ngäc S­ Tö <color=red>cho ai dÉn ®Çu ®Õn 24h00 ngµy 30/08/2017")
	
	BANG = TaoBang(NAP_THE,"NAP_THE")
	LuuBang("script/topnapthe.lua",BANG)
else
	if NAP_THE[4] - GetTask(498) < 200 then
		Msg2Player("§iÓm tÝch lòy n¹p thÎ cña ng­êi Ýt h¬n Top N¹p ThÎ kho¶ng 200 vµng")
	elseif 	NAP_THE[4] - GetTask(498) < 500 then
		Msg2Player("§iÓm tÝch lòy n¹p thÎ cña ng­êi Ýt h¬n Top N¹p ThÎ kho¶ng 500 vµng")
	elseif 	NAP_THE[4] - GetTask(498) < 1000 then
		Msg2Player("§iÓm tÝch lòy n¹p thÎ cña ng­êi Ýt h¬n Top N¹p ThÎ kho¶ng 1000 vµng")
	elseif 	NAP_THE[4] - GetTask(498) < 2000 then
		Msg2Player("§iÓm tÝch lòy n¹p thÎ cña ng­êi Ýt h¬n Top N¹p ThÎ kho¶ng 2000 vµng")
	end	
end
end

function new_doiknb()
SayNew("<color=green>Chuû Tieàn Trang<color>: <color=yellow>1 Kim Nguyeân Baûo = 800 vaïn löôïng<color>. Ngöôi coù muoán ñoåi khoâng?\nTa luoân mua vôùi giaù thaáp hôn thò tröôøng ñeå caân baêng thò tröôøng ",2,
"Ta muoán ñoåi Kim Nguyeân Baûo/new_doiknb2",
"Thoaùt./no")
end
function new_doiknb2()
Talk(1,"","Trong thôøi gian söï kieän, khoâng cho ñoåi Kim Nguyeân Baûo")
end

Include("\\script\\monphai.lua")
function tet_tichluynapthe()
SayNew("<color=green>Chñ TiÒn Trang<color>: HiÖn t¹i ng­¬i ®· <color=green>TÝch lòy "..GetTask(336).." Vµng<color>,\n<color=red>L­u ý: MÊt do ®Çy r­¬ng chóng t«i sÏ kh«ng phôc håi.",6,
"Gãi §ång [20 Vµng]/tet_goi20",
"Gãi B¹c [100 Vµng]/tet_goi100",
"Gãi Vµng [200 Vµng]/tet_goi200",
"Gãi B¹ch Kim [500 Vµng]/tet_goi500",
"Gãi VIP [1000 Vµng]/tet_goi1000",
"Tho¸t./no")
end

function tet_goi20()
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","§Çy r­¬ng, vui lßng kiÓm tra l¹i !")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if GetTask(336) < 20 then
Talk(1,"","Ng­¬i chØ míi ®¹t <color=yellow>"..GetTask(336).." / 20 Vµng<color>, kh«ng ®ñ ®iÒu kiÖn nhËn th­ëng")
return
end
if GetTask(337) == 0 then
	SetTask(337, GetTask(337) + 1)
	if GetTask(337) == 1 then
		for i=1,3 do 
				idx = AddEventItem(117)
				SetBindItem(idx , 1)
		end
		Msg2Player("B¹n nhËn ®­îc 3 Tiªn Th¶o Lé 1 Giê ")
		for i=1,3 do 
				idx = AddEventItem(118)
				SetBindItem(idx , 1)
		end
		Msg2Player("B¹n nhËn ®­îc 3 N÷ Nhi Hång 1 Giê ")	
		itemidx = AddItem(0,11,0,random(1,25),0,0,0)
		if thang == 1 then
			if ngay == 27 then
			SetHSD(itemidx,2017,2,3,gio)
			elseif ngay == 28 then
			SetHSD(itemidx,2017,2,4,gio)
			elseif ngay == 29 then
			SetHSD(itemidx,2017,2,5,gio)
			elseif ngay == 30 then
			SetHSD(itemidx,2017,2,6,gio)
			elseif ngay == 31 then
			SetHSD(itemidx,2017,2,7,gio)
			end
		else
			SetHSD(itemidx,2017,thang,ngay + 7,gio)
		end
		Msg2Player("B¹n nhËn ®­îc 1 MÆt N¹ 7 ngµy !")
			Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." ®· më Gãi §ång tõ sù kiÖn TÝch Lòy N¹p ThÎ ")
		
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng gãi nµy råi, kh«ng thÓ nhËn thªm")
end
end


function tet_goi100()
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","§Çy r­¬ng, vui lßng kiÓm tra l¹i !")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if GetTask(336) < 100 then
Talk(1,"","Ng­¬i chØ míi ®¹t <color=yellow>"..GetTask(336).." / 100 Vµng<color>, kh«ng ®ñ ®iÒu kiÖn nhËn th­ëng")
return
end
if GetTask(337) == 1 then
	SetTask(337, GetTask(337) + 1)
	if GetTask(337) == 2 then
		for i=1,2 do 
				idx = AddEventItem(119)
				SetBindItem(idx , 1)
		end
		Msg2Player("B¹n nhËn ®­îc 2 Tiªn Th¶o Lé 1 Giê ")
		for i=1,2 do 
				idx = AddEventItem(115)
				SetBindItem(idx , 1)
		end
		Msg2Player("B¹n nhËn ®­îc 2 N÷ Nhi Hång 1 Giê ")	
		sx = random(1,2)
		if sx == 1 then
			for i=28,30 do
				idx= AddEventItem(i) 
				SetBindItem(idx , 1)
			end
			Msg2Player("B¹n nhËn ®­îc 1 Bé thñy Tinh")
		else
			for i=1,6 do 
				idx = AddEventItem(31) 
				SetBindItem(idx , 1)	
			end
			Msg2Player("B¹n nhËn ®­îc 6 viªn Tinh Hång B¶o Th¹ch")
			Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." ®· më Gãi B¹c tõ sù kiÖn TÝch Lòy N¹p ThÎ ")
		end
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
elseif GetTask(337) < 1 then
	Talk(1,"","Ng­¬i ph¶i nhËn tÊt c¶ phÇn th­ëng Gãi thÊp h¬n míi cã thÓ nhËn gãi nµy")
else
	Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng gãi nµy råi, kh«ng thÓ nhËn thªm")
end
end


function tet_goi200()
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","§Çy r­¬ng, vui lßng kiÓm tra l¹i !")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if GetTask(336) < 200 then
Talk(1,"","Ng­¬i chØ míi ®¹t <color=yellow>"..GetTask(336).." / 200 Vµng<color>, kh«ng ®ñ ®iÒu kiÖn nhËn th­ëng")
return
end
if GetTask(337) == 2 then
	SetTask(337, GetTask(337) + 1)
	if GetTask(337) == 3 then
		
		idx = AddEventItem(0)
		SetBindItem(idx , 1)
		Msg2Player("B¹n nhËn ®­îc 1 Vâ L©m MËt TÞch")
		idx = AddEventItem(1)
		SetBindItem(idx , 1)
		Msg2Player("B¹n nhËn ®­îc 1 TÈy Tñy Kinh")
		idx = AddEventItem(251)
		SetBindItem(idx , 1)
		Msg2Player("B¹n nhËn ®­îc 1 Phi Phong")
		idx = AddItem(0,10,5,5,0,0,0)
		SetTimeItem(idx,550324);
		Msg2Player("B¹n nhËn ®­îc 1 ChiÕu D¹ Ngäc S­ Tö ")
			Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." ®· më Gãi Vµng tõ sù kiÖn TÝch Lòy N¹p ThÎ ")
		
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
elseif GetTask(337) < 2 then
	Talk(1,"","Ng­¬i ph¶i nhËn tÊt c¶ phÇn th­ëng Gãi thÊp h¬n míi cã thÓ nhËn gãi nµy")
else
	Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng gãi nµy råi, kh«ng thÓ nhËn thªm")
end
end
function tet_goi500()
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","§Çy r­¬ng, vui lßng kiÓm tra l¹i !")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if GetTask(336) < 500 then
Talk(1,"","Ng­¬i chØ míi ®¹t <color=yellow>"..GetTask(336).." / 500 Vµng<color>, kh«ng ®ñ ®iÒu kiÖn nhËn th­ëng")
return
end
if GetTask(337) == 3 then
	SetTask(337, GetTask(337) + 1)
	if GetTask(337) == 4 then
		
		idx = AddItem(0,10,6,1,0,0,0)
		SetHSD(idx,2017, thang + 1, ngay , gio);
		Msg2Player("B¹n nhËn ®­îc 1 B«n Tiªu ")
			Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." ®· më Gãi B¹ch Kim tõ sù kiÖn TÝch Lòy N¹p ThÎ ")
		
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
elseif GetTask(337) < 3 then
	Talk(1,"","Ng­¬i ph¶i nhËn tÊt c¶ phÇn th­ëng Gãi thÊp h¬n míi cã thÓ nhËn gãi nµy")
else
	Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng gãi nµy råi, kh«ng thÓ nhËn thªm")
end
end


function tet_goi1000()
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","§Çy r­¬ng, vui lßng kiÓm tra l¹i !")
return
end
faction = mp()
if faction == 0 then
Talk(1,"","Ng­¬i ch­a gia nhËp ph¸i, kh«ng thÓ sö dông !")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if GetTask(336) < 1000 then
Talk(1,"","Ng­¬i chØ míi ®¹t <color=yellow>"..GetTask(336).." / 1000 Vµng<color>, kh«ng ®ñ ®iÒu kiÖn nhËn th­ëng")
return
end
if GetTask(337) == 4 then
	SetTask(337, GetTask(337) + 1)
	if GetTask(337) == 5 then
		
		
				MangHKMP = ""
				if faction == 1 then
					MangHKMP = HKMP_ThieuLam
				elseif faction == 2 then
					MangHKMP = HKMP_ThienVuong
				elseif faction == 3 then
					MangHKMP = HKMP_DuongMon
				elseif faction == 4 then
					MangHKMP = HKMP_NguDoc
				elseif faction == 5 then
					MangHKMP = HKMP_NgaMy
				elseif faction == 6 then
					MangHKMP = HKMP_ThuyYen
				elseif faction == 7 then
					MangHKMP = HKMP_CaiBang
				elseif faction == 8 then
					MangHKMP = HKMP_ThienNhan
				elseif faction == 9 then
					MangHKMP = HKMP_VoDang
				elseif faction == 10 then
					MangHKMP = HKMP_ConLon
				end
				
				if MangHKMP ~= "" then
						vt = RandomNew(1,getn(MangHKMP))
						idxitemvip = AddItem(0, MangHKMP[vt][1], MangHKMP[vt][2],MangHKMP[vt][3],0,0,0)
						SetHSD(idxitemvip,2017, thang + 1, ngay , gio);
						Msg2SubWorld("Chóc mõng ®¹i hiÖp ["..GetName().."] më Gãi VIP ®­îc <color=yellow>["..GetNameItemBox(idxitemvip).."]")
						
						thoigian = tonumber(date("%H%M%d%m"))
						LoginLog = openfile("Data/SuKien/VIP.txt", "a");
						if LoginLog then
						write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetFaction().." - "..vt.." - "..faction.." - Time: "..thoigian.."\n");
						end
						closefile(LoginLog)
						
				end
			Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." ®· më Gãi VIP tõ sù kiÖn TÝch Lòy N¹p ThÎ ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
elseif GetTask(337) < 4 then
	Talk(1,"","Ng­¬i ph¶i nhËn tÊt c¶ phÇn th­ëng Gãi thÊp h¬n míi cã thÓ nhËn gãi nµy")
else
	Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng gãi nµy råi, kh«ng thÓ nhËn thªm")
end
end


HKMP_ThieuLam = {
{2,33,1},
{2,34,1},
{2,35,1},
{6,4,1},
{6,5,1},
{6,6,1},
{5,6,1},
{5,7,1},
{8,4,1},
{7,16,1},
{9,6,1},
{3,7,1},
{3,8,1},
{0,1,61},
{0,2,61}, -- 15 mon
}
HKMP_ThienVuong = {
{4,6,1},
{2,36,1},
{2,37,1},
{6,7,1},
{6,8,1},
{6,9,1},
{5,8,1},
{5,9,1},
{8,5,1},
{8,6,1},
{8,7,1},
{3,9,1},
{0,3,61},
{0,4,61},
{0,1,121}, -- 15 mon
}
HKMP_DuongMon = {
{4,7,1},
{4,8,1},
{2,38,1},
{2,39,1},
{6,10,1},
{6,11,1},
{6,12,1},
{5,10,1},
{5,11,1},
{5,12,1},
{8,8,1},
{8,9,1},
{7,17,1},
{9,7,1},
{9,8,1},
{3,10,1},
{3,11,1},
{1,1,21},
{1,1,21},
{1,0,41},
{1,2,31}, -- 20 mon
}
HKMP_NguDoc = {
{4,9,1},
{2,40,1},
{2,41,1},
{6,13,1},
{5,13,1},
{5,14,1},
{5,15,1},
{8,10,1},
{8,11,1},
{8,12,1},
{7,18,1},
{7,19,1},
{3,12,1},
{3,13,1},
{0,1,171}, -- 15 mon
}
HKMP_NgaMy = {
{4,10,1},
{2,42,1},
{2,43,1},
{6,14,1},
{5,16,1},
{8,13,1},
{7,20,1},
{7,21,1},
{9,9,1},
{9,16,1},
{3,14,1},
{3,15,1},
{3,16,1},
{3,17,1},
{0,0,61}, -- 15 mon
}
HKMP_ThuyYen = {
{4,11,1},
{2,44,1},
{6,15,1},
{6,16,1},
{8,14,1},
{9,10,1},
{3,18,1},
{0,5,61},
{0,1,181},-- 9 mon
}
HKMP_CaiBang = {
{2,45,1},
{2,46,1},
{6,17,1},
{6,18,1},
{8,15,1},
{8,16,1},
{7,22,1},
{3,19,1},
{3,20,1},
{0,2,121}, -- 10 mon
}
HKMP_ThienNhan = {
{4,12,1},
{4,13,1},
{2,47,1},
{6,19,1},
{6,20,1},
{5,17,1},
{5,18,1},
{8,17,1},
{8,18,1},
{7,23,1},
{7,24,1},
{9,11,1},
{3,21,1},
{3,22,1},
{0,3,121}, -- 15 mon
}
HKMP_VoDang = {
{4,14,1},
{2,48,1},
{6,21,1},
{9,12,1},
{9,13,1},
{3,23,1},
{3,24,1},
{3,25,1},
{0,0,121},
{0,0,171}, -- 10 mon
}
HKMP_ConLon = {
{4,15,1},
{4,16,1},
{2,49,1},
{6,22,1},
{6,23,1},
{5,19,1},
{8,19,1},
{7,25,1},
{7,26,1},
{9,14,1},
{9,15,1},
{3,26,1},
{3,27,1},
{3,28,1},
{0,1,151}, -- 15 mon
}


function new_rutknb()
ngay = tonumber(date("%d"))

if CheckFreeBoxItem(4,17,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
return
end


slknb = GetItemCount(17) 
vang = GetTask(99)
if GetTask(99) >= 20 and CheckFreeBoxItem(4,17,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 20)
	SetTask(101,GetTask(101) - 20)
	if GetTask(99) == vang-20 and CheckFreeBoxItem(4,17,1,1) ~= 0 then
		AddEventItem(17)
		if GetItemCount(17) ~= slknb + 1 then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." KNB moi: "..GetItemCount(17).." KNB cu: "..slknb.."vang")
			SetTask(99,0)
			DelItem(17)
			Talk(1,"","Check hack KNB: B¹n bÞ reset sè vµng hiÖn cã, liªn hÖ GM ®Ó gi¶i quyÕt !")
		end
		inlog("[Rut] "..GetAccount().." - "..GetName()..". Hanh Trang: "..GetItemCount(17).."  - TiÒn Trang : "..GetTask(99).." ")
		Msg2Player("B¹n nhËn ®­îc 1 Kim Nguyªn B¶o ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng cã göi bÊt kú Kim Nguyªn B¶o nµo ë chç ta, kh«ng thÓ rót")
end
end




function new_rutknb1()
ngay = tonumber(date("%d"))

if CheckFreeBoxItem(4,631,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
return
end

slknb = GetItemCount(631) 
vang = GetTask(99)
if GetTask(99) >= 10 and CheckFreeBoxItem(4,631,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 10)
	SetTask(101,GetTask(101) - 10)
	if GetTask(99) == vang-10 and CheckFreeBoxItem(4,631,1,1) ~= 0 then
		AddEventItem(631)
		if GetItemCount(631) ~= slknb + 1 then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." KNB moi: "..GetItemCount(631).." KNB cu: "..slknb.."vang")
			SetTask(99,0)
			DelItem(631)
			Talk(1,"","Check hack KNB: B¹n bÞ reset sè vµng hiÖn cã, liªn hÖ GM ®Ó gi¶i quyÕt !")
		end
		inlog("[Rut] "..GetAccount().." - "..GetName()..". Hanh Trang: "..GetItemCount(631).." x10  - TiÒn Trang : "..GetTask(99).." ")
		Msg2Player("B¹n nhËn ®­îc 1 §¹i Kim Nguyªn B¶o ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng ®ñ <color=yellow>10 Kim Nguyªn B¶o<color> ë chç ta, kh«ng thÓ rót §¹i Kim Nguyªn B¶o.")
end
end
function new_guiknb()
sl = GetItemCount(17) 
sl2 = GetItemCount(631) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetItemCount(17) > 0 then
	DelItem(17)
	if GetItemCount(17) == sl-1 then
		SetTask(99,GetTask(99) + 20)
		SetTask(101,GetTask(101) + 20)
		if GetTask(99) ~= vang + 20 or GetTask(101) ~= vang2 + 20 or GetTask(99) ~= GetTask(101) then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." vang")
			SetTask(99,0)
			SetTask(101,0)
			
			Talk(1,"","Check hack KNB: B¹n bÞ reset sè vµng hiÖn cã, liªn hÖ GM ®Ó gi¶i quyÕt !")
		end
		Msg2Player("B¹n ®· göi thµnh c«ng 1 Kim Nguyªn B¶o !")
		inlog("[Gui] "..GetAccount().." - "..GetName().." thµnh cong. Hanh Trang: "..GetItemCount(17).."  - Tien trang: "..GetTask(99).." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha cung !")
	end
elseif GetItemCount(631) > 0 then
	DelItem(631)
	if GetItemCount(631) == sl2-1 then
		SetTask(99,GetTask(99) + 10)
		SetTask(101,GetTask(101) + 10)
		if GetTask(99) ~= vang + 10 or GetTask(101) ~= vang2 + 10 or GetTask(99) ~= GetTask(101) then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." vang")
			SetTask(99,0)
			SetTask(101,0)
			
			Talk(1,"","Check hack KNB: B¹n bÞ reset sè vµng hiÖn cã, liªn hÖ GM ®Ó gi¶i quyÕt !")
		end
		Msg2Player("B¹n ®· göi thµnh c«ng 1 §¹i Kim Nguyªn B¶o !")
		inlog("[Gui] "..GetAccount().." - "..GetName().." thµnh cong. Hanh Trang: "..GetItemCount(631).." x10 - Tien trang: "..GetTask(99).." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha cung !")
	end

else
	Talk(1,"","B¹n kh«ng mang theo <color=yellow>Kim Nguyªn B¶o<color>")
end
end

function guiknb5()
SayNew("<color=green>Chñ TiÒn Trang<color>: \nNg­¬i cã ch¾c ch¾n muèn ®æi <color=yellow>Kim Nguyªn B¶o<color>  thµnh <color=yellow>Vµng<color>\n<color=red>Chó ý:<color> Ng­¬i sÏ kh«ng thÓ rót ra ®­îc.",2,
"Ta ch¾c ch¾n muèn göi Kim Nguyªn B¶o/guiknb",
"§Ó ta suy nghÜ l¹i /no")
end

function ruttoanbovang()
tongvang = GetTask(306)
knb = floor(tongvang / 20)
vangchuakichhoat = tongvang - knb * 20

sl = GetTask(306)
vang = GetTask(99)
vang2 = GetTask(101)
if vangchuakichhoat > 0 then
	SetTask(306,GetTask(306) - vangchuakichhoat)
	if GetTask(306) == sl - vangchuakichhoat then
		SetTask(99,GetTask(99) + vangchuakichhoat)
		SetTask(101,GetTask(101) + vangchuakichhoat)
		if GetTask(99) ~= vang + vangchuakichhoat or GetTask(101) ~= vang2 + vangchuakichhoat or GetTask(99) ~= GetTask(101) then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." vang")
			SetTask(99,0)
			SetTask(101,0)
			Talk(1,"","Check hack KNB: B¹n bÞ reset sè vµng hiÖn cã, liªn hÖ GM ®Ó gi¶i quyÕt !")
		end
		Msg2Player("B¹n nhËn ®­îc <color=yellow>"..sl.." vµng !")
		inlog(""..GetAccount().." - "..GetName().." da doi KNB thanh cong. KNB: "..GetItemCount(17).." - Vang: "..GetTask(99).."")
		Talk(0,"")
	else
		Talk(1,"","hack ha cung !")
	end
else
	Talk(1,"","B¹n kh«ng cã vµng ch­a kÝch ho¹t")
end
end



function rutknb()
if CheckFreeBoxItem(4,17,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
return
end


slknb = GetItemCount(17) 
vang = GetTask(306)
if GetTask(306) >= 20 and CheckFreeBoxItem(4,17,1,1) ~= 0 then
	SetTask(306,GetTask(306) - 20)
	if GetTask(306) == vang-20 and CheckFreeBoxItem(4,17,1,1) ~= 0 then
		AddEventItem(17)
		if GetItemCount(17) ~= slknb + 1 then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(306).." KNB moi: "..GetItemCount(17).." KNB cu: "..slknb.."vang")
			SetTask(306,0)
			DelItem(17)
			Talk(1,"","Check hack KNB: B¹n bÞ reset sè vµng hiÖn cã, liªn hÖ GM ®Ó gi¶i quyÕt !")
		end
		inlog(""..GetAccount().." - "..GetName().." da doi vang thanh cong. KNB: "..GetItemCount(17).." - Vang: "..GetTask(306).."")
		Msg2Player("B¹n nhËn ®­îc 1 Kim Nguyªn B¶o ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng cã <color=yellow>Kim Nguyªn B¶o<color> ch­a kÝch ho¹t")
end
end

function thuhoi()
sl = GetItemCount(161) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetItemCount(161) > 0 then
	DelItem(161)
	if GetItemCount(161) == sl-1 then
		SetTask(99,GetTask(99) + 100)
		SetTask(101,GetTask(101) + 100)
		if GetTask(99) ~= vang + 100 or GetTask(101) ~= vang2 + 100 or GetTask(99) ~= GetTask(101) then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." vang")
			SetTask(99,0)
			SetTask(101,0)
			
			Talk(1,"","Check hack KNB: B¹n bÞ reset sè vµng hiÖn cã, liªn hÖ GM ®Ó gi¶i quyÕt !")
		end
		Msg2Player("B¹n nhËn ®­îc 100 vµng !")
		inlog(""..GetAccount().." - "..GetName().." da doi Thien Son Tuyet Lien - Vang: "..GetTask(99).."")
		Talk(0,"")
	else
		Talk(1,"","hack ha cung !")
	end
else
	Talk(1,"","B¹n kh«ng mang theo <color=yellow>Thiªn S¬n TuyÕt Liªn<color>")
end
end


function guiknb()
sl = GetItemCount(17) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetItemCount(17) > 0 then
	DelItem(17)
	if GetItemCount(17) == sl-1 then
		SetTask(99,GetTask(99) + 20)
		SetTask(101,GetTask(101) + 20)
		if GetTask(99) ~= vang + 20 or GetTask(101) ~= vang2 + 20 or GetTask(99) ~= GetTask(101) then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." vang")
			SetTask(99,0)
			SetTask(101,0)
			
			Talk(1,"","Check hack KNB: B¹n bÞ reset sè vµng hiÖn cã, liªn hÖ GM ®Ó gi¶i quyÕt !")
		end
		Msg2Player("B¹n nhËn ®­îc 20 vµng !")
		inlog(""..GetAccount().." - "..GetName().." da doi KNB thanh cong. KNB: "..GetItemCount(17).." - Vang: "..GetTask(99).."")
		Talk(0,"")
	else
		Talk(1,"","hack ha cung !")
	end
else
	Talk(1,"","B¹n kh«ng mang theo <color=yellow>Kim Nguyªn B¶o<color>")
end
end



function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/logKimNguyenBao.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlog_khuyenmai(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/LogNapThe/NhanKhuyenMai.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function no()
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