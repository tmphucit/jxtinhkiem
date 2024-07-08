function main()
SayNew("<color=green>§¹i ThÇn Tµi<color>: Sù kiÖn Mõng Xu©n MËu TuÊt 2018 tõ 17h00 ngµy 08/02/2018 - 17h00 ngµy 20/02/2018",8,
"GhÐp M©m Ngò Qu¶ /tet_ghepnguqua",
"§æi Tr¸i C©y /tet_doitraicayx",
"Gia h¹n sù kiÖn TÕt MËu TuÊt 2018/tet_giahan",
"NhËn L× X× N¨m Míi /tet_nhanlixi",
"NhËn phÇn th­ëng Mèc Sù KiÖn /tet_nhanthuongmocpt",
"§æi ®iÓm TÝch Lòy Sù KiÖn /tet_doidiem",
"§æi Phóc Léc Thä /tet_doiphucloctho",
"Tho¸t./no")
end

function tet_doiphucloctho()
sl1 = GetItemCount(318)
sl2 = GetItemCount(319)
sl3 = GetItemCount(320)

if GetItemCount(318) >= 1 and GetItemCount(319) >= 1 and GetItemCount(320) >= 1  then
	for p=318,320 do DelItem(p) end
	if GetItemCount(318) == sl1 - 1 and GetItemCount(319) == sl2 - 1 and GetItemCount(320) == sl3 - 1 then
		sx = random(1,100)
		if sx < 40 then
			soluong = random(1,5) 
			for p=1,soluong do AddEventItem(321) end
			Msg2Player("B¹n nhËn ®­îc "..soluong.." M©m B¹c")
		elseif sx >= 40 and sx < 80 then
			soluong = random(1,5) 
			for p=1,soluong do AddOwnExp(1000000) end
			Msg2Player("B¹n nhËn ®­îc "..soluong..".000.000 kinh nghiÖm")	
		elseif sx >= 80 and sx < 97 then
			AddEventItem(59)
			Msg2Player("B¹n nhËn ®­îc 1 X¸ Lîi Kim §¬n")	
		else
			AddEventItem(333)
			Msg2SubWorld("Chóc mõng "..GetName().." sö dông Phóc Léc Thä may m¾n nhËn ®­îc <color=yellow>Ngò S¾c B¨ng Tinh")				
		end
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ bé ch÷ Phóc - Léc - Thä, kh«ng thÓ ®æi phÇn th­ëng")
end
end
function tet_nhanthuongmocpt()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end
if GetTask(457) == 0 then
	if GetTask(459) >= 5000 then
			SetTask(457, GetTask(457) + 1)
			if GetTask(457) == 1 then
				for p=1,200 do AddOwnExp(1000000) end
				Msg2Player("B¹n nhËn ®­îc 200.000.000 kinh nghiÖm")
				for p=1,2 do
					idxitem = AddEventItem(120)
					SetBindItem(idxitem , 1)
				end
				Msg2Player("B¹n nhËn ®­îc 2 Tiªn Th¶o Lé 6 Giê ")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","Sè l­îng M©m Ngò Qu¶ ®· sö dông ch­a ®¹t: <color=red>"..GetTask(459).." / 5000")
	end
elseif GetTask(457) == 1 then
	if GetTask(459) >= 10000 then
			SetTask(457, GetTask(457) + 1)
			if GetTask(457) == 2 then
				for p=1,300 do AddOwnExp(1000000) end
				Msg2Player("B¹n nhËn ®­îc 300.000.000 kinh nghiÖm")
				for p=1,2 do
					idxitem = AddEventItem(410)
					SetBindItem(idxitem , 1)
				end
				Msg2Player("B¹n nhËn ®­îc 2 Tu LuyÖn §an ")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","Sè l­îng M©m Ngò Qu¶ ®· sö dông ch­a ®¹t: <color=red>"..GetTask(459).." / 10000")
	end
elseif GetTask(457) == 2 then
	if GetTask(459) >= 15000 then
			SetTask(457, GetTask(457) + 1)
			if GetTask(457) == 3 then
				for p=1,500 do AddOwnExp(1000000) end
				Msg2Player("B¹n nhËn ®­îc 500.000.000 kinh nghiÖm")
				for p=1,4 do
					idxitem = AddEventItem(410)
					SetBindItem(idxitem , 1)
				end
				Msg2Player("B¹n nhËn ®­îc 4 Tu LuyÖn §an ")
				for p=1,6 do
					idxitem = AddEventItem(120)
					SetBindItem(idxitem , 1)
				end
				Msg2Player("B¹n nhËn ®­îc 6 Tiªn Th¶o Lé 6 Giê ")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","Sè l­îng M©m Ngò Qu¶ ®· sö dông ch­a ®¹t: <color=red>"..GetTask(459).." / 15000")
	end
else
	Talk(1,"","Ng­¬i ®· nhËn toµn bé phÇn th­ëng Mèc Sù KiÖn TÕt Nguyªn §¸n 2018")
end
end
function no()
end
function tet_doidiem()
SayNew("HiÖn t¹i ng­¬i ®ang cã <color=red>"..GetTask(458).." ®iÓm<color> TÝch Lòy Sù KiÖn. Ng­¬i muèn ®æi g× ? ",4,
"Trang bÞ An Bang /tet_doidiem1",
"Trang bÞ §Þnh Quèc /tet_doidiem1",
"§æi VËt PhÈm kh¸c /tet_doidiem1",
"Tho¸t./no")
end


function tet_doidiem1(nsel)
i = nsel + 1
if i == 1 then
SayNew("HiÖn t¹i ng­¬i ®ang cã <color=red>"..GetTask(458).." ®iÓm<color> TÝch Lòy Sù KiÖn. Ng­¬i muèn ®æi g× ? ",5,
"An Bang Cóc Hoa Th¹ch ChØ Hoµn [400 ®iÓm]/tet_doidiem2",
"An Bang Kª HuyÕt Th¹ch Giíi ChØ [400 ®iÓm]/tet_doidiem2",
"An Bang §iÒn Hoµng Th¹ch Ngäc Béi [400 ®iÓm]/tet_doidiem2",
"An Bang B¨ng Tinh Th¹ch H¹ng Liªn [500 ®iÓm]/tet_doidiem2",
"Tho¸t./no")
elseif i == 2 then
SayNew("HiÖn t¹i ng­¬i ®ang cã <color=red>"..GetTask(458).." ®iÓm<color> TÝch Lòy Sù KiÖn. Ng­¬i muèn ®æi g× ? ",6,
"§Þnh Quèc ¤ Sa Ph¸t Qu¸n [300 ®iÓm]/tet_doidiem3",
"§Þnh Quèc Thanh Sa Tr­êng Sam [300 ®iÓm]/tet_doidiem3",
"§Þnh Quèc Ng©n TÇm Yªu §¸i [200 ®iÓm]/tet_doidiem3",
"§Þnh Quèc XÝch QuyÒn NhuyÔn Ngoa [200 ®iÓm]/tet_doidiem3",
"§Þnh Quèc ¤ §»ng Hé UyÓn [200 ®iÓm]/tet_doidiem3",
"Tho¸t./no")
else
SayNew("HiÖn t¹i ng­¬i ®ang cã <color=red>"..GetTask(458).." ®iÓm<color> TÝch Lòy Sù KiÖn. Ng­¬i muèn ®æi g× ? ",3,
"M·nh Phiªn Vò [200 ®iÓm] /tet_doidiem4",
"Ngäc C­êng Hãa [15 ®iÓm] /tet_doidiem4",
"Tho¸t./no")

end
end

function tet_doidiem4(nsel)
i = nsel + 1
loai = 0
if i == 1 then
loai = 339
diem = 200
elseif i == 2 then
loai = 414
diem = 15
end

if loai ~= 0 then
	if GetTask(458) >= diem then
		SetTask(458, GetTask(458) - diem)
		idxitem = AddEventItem(loai)
		Msg2SubWorld("Chóc mõng "..GetName().." sö dông "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
		Talk(0,"")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/DoiDiemTichLuy.txt", "a");
		if LoginLog then
		write(LoginLog,"[Vat Pham "..i.."] "..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(458).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","§iÓm tÝch lòy sù kiÖn kh«ng ®ñ "..diem.." ®iÓm, kh«ng thÓ ®æi phÇn th­ëng")
	end
else
Talk(1,"","Hack ha em")
end
end
function tet_doidiem3(nsel)
i = nsel + 1
loai = 0
cap = 0
diem = 0
if i == 1 then
loai = 7
cap = 15
diem = 300
elseif i == 2 then
loai = 2
cap = 30
diem = 300
elseif i == 3 then
loai = 6
cap = 3
diem = 200
elseif i == 4 then
loai = 5
cap = 5
diem = 200
elseif i == 5 then
loai = 8
cap = 3
diem = 200
end

if loai ~= 0 and cap ~= 0 then
	if GetTask(458) >= diem then
		SetTask(458, GetTask(458) - diem)
		idxitem = AddItem(0,loai,cap,random(5,10),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." sö dông "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
		Talk(0,"")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/DoiDiemTichLuy.txt", "a");
		if LoginLog then
		write(LoginLog,"[§Þnh Quèc "..i.."] "..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(458).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","§iÓm tÝch lòy sù kiÖn kh«ng ®ñ "..diem.." ®iÓm, kh«ng thÓ ®æi phÇn th­ëng")
	end
else
Talk(1,"","Hack ha em")
end
end
function tet_doidiem2(nsel)
i = nsel + 1
loai = 0
cap = 0
diem = 0
if i == 1 then
loai = 3
cap = 3
diem = 400
elseif i == 2 then
loai = 3
cap = 4
diem = 400
elseif i == 3 then
loai = 9
cap = 3
diem = 400
elseif i == 4 then
loai = 4
cap = 3
diem = 500
end

if loai ~= 0 and cap ~= 0 then
	if GetTask(458) >= diem then
		SetTask(458, GetTask(458) - diem)
		idxitem = AddItem(0,loai,cap,random(4,9),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." sö dông "..diem.." ®iÓm TÝch Lòy Sù KiÖn nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
		Talk(0,"")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/DoiDiemTichLuy.txt", "a");
		if LoginLog then
		write(LoginLog,"[An Bang "..i.."] "..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(458).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","§iÓm tÝch lòy sù kiÖn kh«ng ®ñ "..diem.." ®iÓm, kh«ng thÓ ®æi phÇn th­ëng")
	end
else
Talk(1,"","Hack ha em")
end
end


function tet_nhanlixi()
Talk(1,"","Ta chØ tÆng phong bao l× x× vµo c¸c ngµy ®Çu n¨m 16, 17, 18/02/2018. Ng­¬i h·y quay l¹i sau nhÐ ")
end

function tet_giahan()
	if GetTask(460) >= 2 then
		Talk(1,"","Giíi h¹n sù kiÖn cña b¹n ®· ®¹t mèc tèi ®a <color=yellow>2 lÇn<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 3 then
		for k=1,3 do DelItem(17) end
		if GetItemCount(17) == knb - 3 then
			SetTask(460, GetTask(460) + 1)
			Msg2Player("B¹n ®· gia h¹n sù kiÖn TÕt MËu TuÊt 2018 lªn <color=yellow>"..GetTask(460).." lÇn")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(460).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng­¬i kh«ng ®ñ 3 Kim Nguyªn b¶o ®Ó gia h¹n sù kiÖn")
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

function tet_doitraicayx()
SayNew("<color=green>§¹i ThÇn Tµi<color>: Chän lo¹i tr¸i c©y cÇn ®æi ",5,
"§æi Dõa /tet_doitraicay1",
"§æi §u §ñ /tet_doitraicay1",
"§æi Xoµi /tet_doitraicay1",
"§æi Sung /tet_doitraicay1",
"Tho¸t./no")
end

function tet_doitraicay1(nsel)
SetTaskTemp(1,nsel)
OpenStringBox(2,"NhËp Sè L­îng","tet_doitraicay2")
end

function tet_doitraicay2(num2)
num = tonumber(num2)
if num < 0 or num > 15 then
Talk(1,"","ChØ ®­îc nhËp tõ 1 - 15, vui lßng nhËp l¹i")
return
end
default = 313 + GetTaskTemp(1)

for i=1,num do
	soluong = 0
	if GetItemCount(default) >= 3 then
		for p=1,3 do DelItem(default) end
		AddEventItem(default+1)
		Talk(0,"")
	else
		Msg2Player("B¹n kh«ng ®ñ nguyªn liÖu, vui lßng kiÓm tra l¹i")
		break
	end	
end

end

function tet_ghepnguqua()
SayNew("<color=green>§¹i ThÇn Tµi<color>: Chän lo¹i cÇn chÕ t¹o ",7,
"1 M©m B¹c Ngò Qu¶ /tet_chetao1",
"1 M©m Vµng Ngò Qu¶ /tet_chetao1",
"10 M©m B¹c Ngò Qu¶ /tet_chetao1",
"10 M©m Vµng Ngò Qu¶ /tet_chetao1",
"50 M©m B¹c Ngò Qu¶ /tet_chetao1",
"50 M©m Vµng Ngò Qu¶ /tet_chetao1",
"Tho¸t./no")
end

function tet_chetao1(nsel)
i = nsel + 1
if i == 1 then
	tet_chetao2(321,323,"M©m B¹c",1)
elseif i == 2 then	
	tet_chetao2(322,324,"M©m Vµng",1)
elseif i == 3 then	
	tet_chetao2(321,323,"M©m B¹c",10)
elseif i == 4 then	
	tet_chetao2(322,324,"M©m Vµng",10)
elseif i == 5 then	
	tet_chetao2(321,323,"M©m B¹c",50)
elseif i == 6 then	
	tet_chetao2(322,324,"M©m Vµng",50)
end
end

function tet_chetao2(nguyenlieu, itemnew, nlname, soluong)
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end
sl1 = GetItemCount(313)
sl2 = GetItemCount(314)
sl3 = GetItemCount(315)
sl4 = GetItemCount(316)
sl5 = GetItemCount(317)
sl6 = GetItemCount(nguyenlieu)
if GetItemCount(313) >= soluong and GetItemCount(314) >= soluong and GetItemCount(315) >= soluong and GetItemCount(316) >= soluong and GetItemCount(317) >= soluong and GetItemCount(nguyenlieu) >= soluong then
	for i=1,soluong do
		DelItem(313)
		DelItem(314)
		DelItem(315)
		DelItem(316)
		DelItem(317)
		DelItem(nguyenlieu)
	end
	if GetItemCount(313) == sl1 - soluong and GetItemCount(314) == sl2 - soluong and GetItemCount(315) == sl3 - soluong and GetItemCount(316) == sl4 - soluong and GetItemCount(317) == sl5 - soluong and GetItemCount(nguyenlieu) == sl6 - soluong then
		for p=1,soluong do AddEventItem(itemnew) end
		Msg2Player("B¹n nhËn ®­îc "..soluong.." "..nlname.." Ngò Qu¶ ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(2,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i",""..nlname.." Ngò Qu¶ = M·ng CÇu + Dõa + §u §ñ + Xoµi + Sung + "..nlname.."")
end
end

function main1()
if (1) then
Talk(1,"","Chøc n¨ng chöa më, vui lßng theo dâi trang chñ ®Ó biÕt thªm chi tiÕt ")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
	SayNew("<color=green>ThÇn Tµi<color>: Chóc nhµ ng­¬i 1 n¨m míi ph¸t tµi, h·y nhËn bao L× X× §Çu N¨m mµ ta ban tÆng",2,
	"§æi Phóc Léc Thä /doiphucloctho",
	"Tho¸t./no")
end

function denbu50trieu()
if GetTask(340) ~= 0 then
Talk(1,"","B¹n ®· nhËn phÇn th­ëng ®Òn bï b¶o tr×, kh«ng thÓ nhËn thªm")
return
end
if GetLevel() >= 80 then
	if GetTask(340) == 0 then
		SetTask(340 , GetTask(340) + 1)
		if GetTask(340) == 1 then
			for k=1,50 do AddOwnExp(1000000) end
			Msg2Player("B¹n nhËn ®­îc 50 triÖu kinh nghiÖm")			
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","§¼ng cÊp d­íi 80 kh«ng thÓ nhËn ®Òn bï ")
end
end
function doiphucloctho()
sl1 = GetItemCount(318)
sl2 = GetItemCount(319)
sl3 = GetItemCount(320)

if CheckFreeBoxItem(0,3,3,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end

if sl1 >= 1 and sl2 >= 1 and sl3 >= 1 then
	for i=318,320 do DelItem(i) end
	if GetItemCount(318) == sl1 - 1 and GetItemCount(319) == sl2 - 1 and GetItemCount(320) == sl3 - 1 then
		 sx = RandomNew(1,100)
		 if sx < 80 then
			
			ngold = 5000
				Earn(ngold)
				Msg2Player("B¹n nhËn ®­îc "..ngold.." l­îng")
				
		elseif sx >= 80 and sx < 85 then
			-- Kinh Nghiem
			nexp = random(1000000,10000000)
			AddOwnExp(nexp)
			Msg2Player("B¹n nhËn ®­îc "..nexp.." kinh nghiÖm")
		elseif sx >= 85 and sx < 90 then
			sx2 = random(1,100)
			if sx2 < 50 then
				idxitem = AddEventItem(random(113,114))
				Msg2Player("B¹n nhËn ®­îc 1 "..GetNameItemBox(idxitem).."")
			elseif sx2 >= 50 and sx2 < 80 then
				idxitem = AddEventItem(random(117,118))
				Msg2Player("B¹n nhËn ®­îc 1 "..GetNameItemBox(idxitem).."")
			elseif sx2 >= 80 and sx < 90 then
				idxitem = AddEventItem(119)
				Msg2Player("B¹n nhËn ®­îc 1 "..GetNameItemBox(idxitem).."")
			else
				idxitem = AddEventItem(115)
				Msg2Player("B¹n nhËn ®­îc 1 "..GetNameItemBox(idxitem).."")
			end
		elseif sx >= 90 and sx < 98 then
				ngold = random(5000,100000)
				Earn(ngold)
				Msg2Player("B¹n nhËn ®­îc "..ngold.." l­îng")
		elseif sx >= 98 and sx < 100 then
			-- VP Quy
			idxitem = AddEventItem(random(28,31))
			Msg2SubWorld("Chóc mõng "..GetName().." ®­îc ThÇn Tµi ban tÆng 1 <color=green>"..GetNameItemBox(idxitem).." ")
		else
			-- VIP
			idxitem = AddEventItem(random(283,312))
			Msg2SubWorld("Chóc mõng "..GetName().." ®­îc ThÇn Tµi ban tÆng 1 <color=green>"..GetNameItemBox(idxitem).." ")
		end
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ bé ch÷ Phóc - Léc - Thä , vui lßng kiÓm tra l¹i ")
end
end

function mualixi()
gio = tonumber(date("%H"))
ngay = tonumber(date("%d"))
if gio < 6 or gio >= 18 then
Talk(1,"","Ta chØ ph¸t Bao L× X× tõ 6:00 - 18:00 trong 3 ngµy ®Çu n¨m th«i")
return
end

if GetLevel() < 100 then
Talk(1,"","§¼ng cÊp trªn 100 míi cã thÓ nhËn Bao L× X× ")
return
end

if floor(GetTask(339)/1000) == ngay then
Talk(1,"","Ng­¬i ®· nhËn Bao L× X× h«m nay råi, mai h·y quay l¹i nhÐ ")
return
end

SetTask(339, ngay*1000)
idxitem = AddEventItem(325)
SetBindItem(idxitem , 1)
Msg2SubWorld("Chóc mõng "..GetName().." ®· nhËn ®­îc Bao L× X× cña ThÇn Tµi")
end

function nangcap()
knb = GetItemCount(17)

if GetItemCount(17) >= 1 then
	if GetItemCount(325) >= 1 then
			DelItem(17)
			DelItem(325)
			idxitem = AddEventItem(326)
			SetBindItem(idxitem , 1)
			Msg2Player("Ta ®· ®æi cho nhµ ng­¬i 1 Bao L× X× [Lín]")
			inlog2("Acc:["..GetAccount().."]\tName: ["..GetName().."]\tLv: "..GetLevel().."")
	else
		Talk(1,"","Ng­¬i kh«ng cã Bao L× X× [Nhá], kh«ng thÓ ®æi ")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang theo 1 Kim Nguyªn B¶o, kh«ng thÓ ®æi")
end
end


function inlog2(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/NangCapBaoLiXi.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlog3(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/SuDungPhucLocTho.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
