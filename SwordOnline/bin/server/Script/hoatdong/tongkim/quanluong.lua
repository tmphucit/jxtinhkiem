Include("\\script\\thuvien\\hamchuot.lua");
Include("\\script\\Global\\doimaump.lua")
Include("\\DataScript\\tongkim\\tongkim.lua")
Include("\\script\\lib\\thuvien.lua")


function main()
-- dofile("script\\hoatdong\\tongkim\\quanluong.lua")
	SayNew("<color=green>Tèng Qu©n Nhu: <color> B¹n ®ang cã: \n+ <color=yellow>"..GetTask(15).."<color> ®iÓm tÝch luü Tèng Kim.",4,
	-- "Cöa Hµng TÝch Lòy Tèng Kim /muadaocu",
	--"Cöa Hµng Ng©n L­îng/shoptk",
	--"Cöa Hµng Vµng /shoptk",
--	"Mua §¹o Cô Tèng Kim/muadaocu",
	--"Mua Ch×a Kho¸ B¹c [5 v¹n] /muachiakhoabac",
	--"Mua Ch×a Kho¸ Vµng [10 v¹n]/muachiakhoavang",
	"§æi §iÓm TÝch Lòy Tèng Kim/doidiemtichluynew",
	-- "TÝch luü ®æi R­¬ng/dlrv",
	"§æi Nh¹c V­¬ng KiÕm [50 NVHT]/dnvhtnvk",
	--"Danh HiÖu VIP /vip_main", 
	"Tho¸t/no")
end

function fixtk1()
SetTask(12,1)
end
function fixtk()
SetTask(12,2)
end

function shoptk(nsel)
i = nsel+1
if i == 1 then
Sale(34,2)
elseif i == 2 then
Sale(33)
elseif i == 3 then
Sale(32,1)
end
end
function doidiemtichluynew()
SayNew("<color=green>Tèng Qu©n Nhu: <color> B¹n ®ang cã: \n+ <color=yellow>"..GetTask(15).."<color> ®iÓm tÝch luü Tèng Kim.",6,
"Phóc Duyªn §¹i [500 ®iÓm]/doidiemtichluynew2",  
"X¸ lîi kim ®¬n [2000 ®iÓm] /doidiemtichluynew2",
"M·nh Ngùa XÝch Thè [5000 ®iÓm] /doidiemtichluynew2",
-- "M·nh Ngùa ChiÕu D¹ /doidiemtichluynew2",
-- "M·nh §Þnh Quèc /doidiemtichluynew2",
-- "M·nh An Bang /doidiemtichluynew2",
"1 triÖu kinh nghiÖm /doitichluykinhnghiem",
"10 ®iÓm Sù KiÖn [2500 ®iÓm] /doitichluysukien1",
"Tho¸t./no")
end

function doidiemtichluynew2(nsel)
i = nsel + 1

tieuhao = 0
iditem = 0
if i == 1 then
	iditem = 175
	tieuhao = 500
elseif i == 2 then
	iditem = 59
	tieuhao = 2000
elseif i == 3 then
	iditem = 655
	tieuhao = 5000
end

if tieuhao == 0 then
Talk(1,"","VËt phÈm ch­a cËp nhËt !")
return
end
if GetTask(15) < tieuhao then
Talk(1,"","Ng­¬i kh«ng ®ñ "..tieuhao.." tÝch lòy, kh«ng thÓ ®æi")
return
end

SetTask(15, GetTask(15) - tieuhao)
idxitem = AddEventItem(iditem)
Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")

end
function doitichluysukien1()
ngay = tonumber(date("%d"))

-- if floor(GetTask(504) / 100) ~= ngay then
-- Msg2Player("Reset ngµy míi: "..floor(GetTask(504) / 100).." !")
-- SetTask(504, ngay * 100)
-- end

-- if mod (GetTask(504) , 100) >= 10 then
-- Talk(1,"","H«m nay ®· nhËn ®ñ 10 triÖu kinh nghiÖm, kh«ng thÓ nhËn thªm")
-- return
-- end

tl = GetTask(15)
if (tl >= 2500) then
SetTask(15,tl-2500)
if (GetTask(15) == (tl-2500)) then
SetTask(612, GetTask(612) + 10)
Msg2Player("B¹n ®· ®æi 2500 ®iÓm tèng kim lÊy 10 ®iÓm Sù KiÖn thµnh c«ng.")

Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Ng­¬i kh«ng ®ñ <color=red> 2500 tÝch luü <color>, bao giê ®ñ h·y ®Õn ®©y.")
end
end;


function doitichluykinhnghiem()
ngay = tonumber(date("%d"))

if floor(GetTask(504) / 100) ~= ngay then
Msg2Player("Reset ngµy míi: "..floor(GetTask(504) / 100).." !")
SetTask(504, ngay * 100)
end

if mod (GetTask(504) , 100) >= 10 then
Talk(1,"","H«m nay ®· nhËn ®ñ 10 triÖu kinh nghiÖm, kh«ng thÓ nhËn thªm")
return
end

tl = GetTask(15)
if (tl >= 1000) then
SetTask(15,tl-1000)
if (GetTask(15) == (tl-1000)) then

AddOwnExp(1000000)
Msg2Player("B¹n nhËn ®­îc 1.000.000 kinh nghiÖm")
SetTask(504, GetTask(504) + 1)
Msg2Player("Giíi h¹n:<color=yellow> "..mod(GetTask(504),100).." triÖu / 10 triÖu kinh nghiÖm")

Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Ng­¬i kh«ng ®ñ <color=red> 1000 tÝch luü <color>, bao giê ®ñ h·y ®Õn ®©y.")
end
end;

function vip_main()
SayNew("HiÖn ®ang ng­¬i ®ang cã <color=green>"..GetTask(484).." ®iÓm TÝch Lòy VIP<color>. Ng­¬i muèn ta gióp g× ?",4,
"Th¨ng cÊp Danh HiÖu VIP /vip_thangcap",
"Quay Sè H»ng Ngµy /vip_nhanruong",
"Mua 30 ®iÓm tÝch lòy [5 vµng] /vip_muadiem",
"Tho¸t./no")
end

function vip_muadiem()
ngay = tonumber(date("%d"))
vang = GetTask(99)

if ngay ~= GetTask(476) then
	if GetTask(99) >= 5 then
		SetTask(99, GetTask(99) - 5)
		SetTask(101 , GetTask(99))
		if GetTask(99) == vang - 5 then
			SetTask(484, GetTask(484) + 30)
			SetTask(476, ngay)
			Msg2Player("§iÓm tÝch lòy VIP cña b¹n hiÖn t¹i lµ: <color=green>"..GetTask(484).." ®iÓm")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","Ng­¬i kh«ng ®ñ 5 vµng, kh«ng thÓ mua")
	end
else
	Talk(1,"","Ngµy h«m nay ng­¬i ®· mua ®iÓm TÝch Lòy VIP råi")
end
end
function vip_nhanruong()
Talk(1,"","HiÖn t¹i ng­¬i cßn "..GetTask(478).." sè l­ît quay")
end

function vip_thangcap()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end

if GetTask(485) == 0 then
	diem = 500
	if GetTask(484) >= diem then
			if GetItemCount(17) >= 1 then
				DelItem(17)
				SetTask(485 , 1)
				for i=1,5 do 
					idxitem = AddEventItem(120)
					SetBindItem(idxitem , 1)
				end
				AddOwnExp(10000000)
				Msg2Player("B¹n nhËn ®­îc 5 Tiªn Th¶o Lé 6 Giê [Khãa] + 10.000.000 kinh nghiÖm")
				Msg2SubWorld("<color=green>Chóc mõng "..GetName().." ®· th¨ng cÊp lªn VIP  "..GetTask(485).."")
				inlogvip("Thang Cap VIP "..GetTask(485).." - "..GetAccount().." - "..GetName().."")
			else
				Talk(1,"","Ng­¬i kh«ng mang theo 1 Kim Nguyªn B¶o, kh«ng thÓ th¨ng cÊp")
			end	
	else
		Talk(1,"","Ng­¬i kh«ng ®ñ <color=green>"..diem.." ®iÓm<color>, kh«ng ®ñ ®iÒu kiÖn lªn <color=yellow>VIP "..(GetTask(485) +1).."")
	end
elseif GetTask(485) == 1 then
	diem = 1200
	if GetTask(484) >= diem then
			if GetItemCount(17) >= 1 then
				DelItem(17)
				SetTask(485 , 2)
				for i=1,3 do 
					idxitem = AddEventItem(RandomNew(28,30))
				end
				AddOwnExp(10000000)
				Msg2Player("B¹n nhËn ®­îc 3 Thñy  Tinh + 10.000.000 kinh nghiÖm")
				Msg2SubWorld("<color=green>Chóc mõng "..GetName().." ®· th¨ng cÊp lªn VIP "..GetTask(485).."")
				inlogvip("Thang Cap VIP "..GetTask(485).." - "..GetAccount().." - "..GetName().."")
			else
				Talk(1,"","Ng­¬i kh«ng mang theo 1 Kim Nguyªn B¶o, kh«ng thÓ th¨ng cÊp")
			end	
	else
		Talk(1,"","Ng­¬i kh«ng ®ñ <color=green>"..diem.." ®iÓm<color>, kh«ng ®ñ ®iÒu kiÖn lªn <color=yellow>VIP "..(GetTask(485) +1).."")
	end	
elseif GetTask(485) == 2 then
	diem = 2500
	if GetTask(484) >= diem then
			if GetItemCount(17) >= 1 then
				DelItem(17)
				SetTask(485 , 3)
				SetTask(196,0)
				AddOwnExp(10000000)
				Msg2Player("B¹n nhËn ®­îc 1 LÇn TÈy Tñy MiÔn PhÝ + 10.000.000 kinh nghiÖm")
				Msg2SubWorld("<color=green>Chóc mõng "..GetName().." ®· th¨ng cÊp lªn VIP "..GetTask(485).."")
				inlogvip("Thang Cap VIP "..GetTask(485).." - "..GetAccount().." - "..GetName().."")
			else
				Talk(1,"","Ng­¬i kh«ng mang theo 1 Kim Nguyªn B¶o, kh«ng thÓ th¨ng cÊp")
			end	
	else
		Talk(1,"","Ng­¬i kh«ng ®ñ <color=green>"..diem.." ®iÓm<color>, kh«ng ®ñ ®iÒu kiÖn lªn <color=yellow>VIP "..(GetTask(485) +1).."")
	end	
elseif GetTask(485) == 3 then
	diem = 3500
	if GetTask(484) >= diem then
			if GetItemCount(17) >= 1 then
				DelItem(17)
				SetTask(485 , 4)
				for p=1,5 do AddEventItem(407) end
				AddOwnExp(10000000)
				Msg2Player("B¹n nhËn ®­îc 5 BÝ Kip Th¨ng CÊp An Bang CÊp 2 + 10.000.000 kinh nghiÖm")
				Msg2SubWorld("<color=green>Chóc mõng "..GetName().." ®· th¨ng cÊp lªn VIP "..GetTask(485).."")
				inlogvip("Thang Cap VIP "..GetTask(485).." - "..GetAccount().." - "..GetName().."")
			else
				Talk(1,"","Ng­¬i kh«ng mang theo 1 Kim Nguyªn B¶o, kh«ng thÓ th¨ng cÊp")
			end	
	else
		Talk(1,"","Ng­¬i kh«ng ®ñ <color=green>"..diem.." ®iÓm<color>, kh«ng ®ñ ®iÒu kiÖn lªn <color=yellow>VIP "..(GetTask(485) +1).."")
	end	
elseif GetTask(485) == 4 then
	diem = 5000
	if GetTask(484) >= diem then
			if GetItemCount(17) >= 1 then
				DelItem(17)
				SetTask(485 ,5)
				AddOwnExp(10000000)
				Msg2Player("B¹n nhËn ®­îc Vßng S¸ng VIP 5 + 10.000.000 kinh nghiÖm")
				Msg2SubWorld("<color=green>Chóc mõng "..GetName().." ®· th¨ng cÊp lªn VIP "..GetTask(485).."")
				inlogvip("Thang Cap VIP "..GetTask(485).." - "..GetAccount().." - "..GetName().."")
			else
				Talk(1,"","Ng­¬i kh«ng mang theo 1 Kim Nguyªn B¶o, kh«ng thÓ th¨ng cÊp")
			end	
	else
		Talk(1,"","Ng­¬i kh«ng ®ñ <color=green>"..diem.." ®iÓm<color>, kh«ng ®ñ ®iÒu kiÖn lªn <color=yellow>VIP "..(GetTask(485) +1).."")
	end	
else
		Talk(1,"","Ch­a cËp nhËt VIP 6")
end
end

function inlogvip(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/DanhHieuVIP.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function testmuachiakhoavang()
Talk(1,"","Chøc n¨ng sÏ cËp nhËt vµo ngµy mai")
end

function test()
SayNew("<color=green>Kim Qu©n Nhu: <color> B¹n ®ang cã: \n+ <color=yellow>"..GetTask(15).."<color> ®iÓm tÝch luü Tèng Kim.\nNg­¬i muèn ®æi phÇn th­ëng g×?",3,
--"§æi Tu LuyÖn Ch©u [4000 ®iÓm]/doitongkim1",
"§æi Tiªn Th¶o Lé 3 Giê [10000 ®iÓm]/doitongkim1",
"§æi N÷ Nhi Hång 3 Giê [10000 ®iÓm]/doitongkim1",
--"§æi 1 triÖu kinh nghiÖm [1000 ®iÓm]/doidiemkinhnghiem",
"Tho¸t./no")
end

function doidiemkinhnghiem()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

task = GetTask(15)
cost = 1000
if floor(GetTask(347)/1000) ~= ngay then
	SetTask(347 , ngay * 1000)
end

if mod(GetTask(347),1000) >= 20 then
Talk(1,"","B¹n ®· nhËn ®ñ 20.000.000 kinh nghiÖm h«m nay")
return
end

if GetTask(15) >= cost then
		SetTask(15 , GetTask(15) - cost)
		if GetTask(15) == task - cost then
			SetTask(347, GetTask(347) + 1)
			AddOwnExp(1000000)
			Msg2Player("Giíi h¹n sö dông TÝch Lòy: "..mod(GetTask(347),1000).." / 20 lÇn")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","B¹n kh«ng ®ñ "..cost.." ®iÓm tÝch lòy tèng kim, kh«ng thÓ ®æi")
	end

end
function doitongkim1(nsel)
i = nsel + 1
task = GetTask(15)
ngay = tonumber(date("%d"))
if i == 1 and GetTask(334) ~= ngay then
	cost = 10000
	idquestkey = 119
	if GetTask(15) >= cost then
		SetTask(15 , GetTask(15) - cost)
		if GetTask(15) == task - cost then
			idxitem = AddEventItem(idquestkey)
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			SetTask(334,ngay)
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","B¹n kh«ng ®ñ "..cost.." ®iÓm tÝch lòy tèng kim, kh«ng thÓ ®æi")
	end
elseif i == 2 and GetTask(335) ~= ngay then
	cost = 10000
idquestkey = 115
	if GetTask(15) >= cost then
		SetTask(15 , GetTask(15) - cost)
		if GetTask(15) == task - cost then
			idxitem = AddEventItem(idquestkey)
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			SetTask(335,ngay)
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","B¹n kh«ng ®ñ "..cost.." ®iÓm tÝch lòy tèng kim, kh«ng thÓ ®æi")
	end
else
	Talk(1,"","B¹n ®· mua vËt phÈm nµy trong ngµy h«m nay råi, kh«ng thÓ mua thªm")
end

if cost ~= 0 then

end
end

function muachiakhoavang()
cash = GetCash()
if GetCash() >= 100000 then
	Pay(100000)
	if GetCash() == cash - 100000 then
		AddEventItem(271)
		Msg2Player("B¹n nhËn ®­îc 1 <color=yellow>Ch×a Khãa Vµng")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng­¬i kh«ng ®ñ 10 v¹n l­îng, kh«ng thÓ mua vËt phÈm nµy !")
end
end
function muachiakhoabac()
cash = GetCash()
if GetCash() >= 50000 then
	Pay(50000)
	if GetCash() == cash - 50000 then
		AddEventItem(270)
		Msg2Player("B¹n nhËn ®­îc 1 <color=yellow>Ch×a Khãa B¹c")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng­¬i kh«ng ®ñ 5 v¹n l­îng, kh«ng thÓ mua vËt phÈm nµy !")
end
end
function muadaocu()
Sale(25,2)
Msg2Player("B¹n hiÖn ®ang cã "..GetTask(15).." ®iÓm tÝch lòy !")
end

function ddtldnvht()
SayNew("<color=green>Tèng Qu©n Nhu: <color> HiÖn giê ng­¬i ®ang cã <color=fire>"..GetTask(122).."<color> ®iÓm tÝch luü chiÕn trËn, ®Ó ®æi nh¹c v­¬ng hån th¹ch cÇn <color=wood>10<color> ®iÓm tÝch luü chiÕn trËn, ng­¬i ®æi chø ?",2,"Ta muèn ®æi Nh¹c V­¬ng Hån th¹ch/ddtldnvhtok","Tho¸t/no")
end;
function giaodich()
Sale(23)
end
function dnvhtnvk()

sl = GetItemCount(165)

if sl >= 50 then

for i=1,50 do
DelItem(165)
end

if GetItemCount(165) == sl-50 then
AddEventItem(164)
Msg2Player("B¹n ®· nhËn ®­îc 1 Nh¹c V­¬ng KiÕm")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end

else
Talk(1,"","Ng­¬i kh«ng ®ñ <color=red> 50 Nh¹c V­¬ng Hån Th¹ch<color>, kh«ng thÓ luyÖn thµnh Nh¹c V­¬ng KiÕm !")
end

end;
function doihc()
SayNew("<color=green>Kim Qu©n Nhu <color>: Vui lßng chän mèc tÝch lòy b¹n muèn ®æi  ",4,
"§æi 500 tÝch lòy/doiexp1",
"§æi 1000 tÝch lòy/doiexp1",
"§æi 2000 tÝch lòy/doiexp1",
"Tho¸t./no")
end

kinhnghiem={{10,187},{50,262},{60,337},{70,412},{80,600},{90,750},{100,975},{999,0}}
soluongquai =  {{80,500,1200},{90,700,1500},{100,800,1800},{120,900,1800},{150,1000,1800},{200,1200,1800}}

function doiexp1(nsel)
i = nsel+1
if i == 1 then
doiexp2(500)
elseif i == 2 then
doiexp2(1000)
elseif i == 3 then
doiexp2(2000)
end
end

function doiexp2(num)
tl = GetTask(15)
if GetLevel() < 80 then
Talk(1,"","§¼ng cÊp cña b¹n kh«ng ®ñ 80, kh«ng thÓ ®æi kinh nghiÖm !")
return
end
if (tl >= num) then
	vt = 1
	for i=1,getn(soluongquai) do
	if (GetLevel() >= soluongquai[i][1]) and (GetLevel() < soluongquai[i+1][1]) then
	vt = i
	end
	end
	exp = soluongquai[vt][2] * soluongquai[vt][3] * 3 
	exp2 = exp / 10000 * num / 2
SetTask(15,tl-num)
if (GetTask(15) == (tl-num)) then
	AddOwnExp(exp2)
	Msg2Player("B¹n nhËn ®­îc "..exp2.." ®iÓm kinh nghiÖm")
	Msg2Player("B¹n ®· dïng "..num.." ®iÓm tÝch luü ®æi kinh nghiÖm")
	Talk(0,"")
else
Msg2Player("Hack a cung yeu !")
end
else
Talk(1,"","Ng­¬i kh«ng ®ñ <color=red> "..num.." tÝch luü <color>, bao giê ®ñ h·y ®Õn ®©y.")
end
end


function doiexp1xx()
tl = GetTask(15)
if (tl >= 4000) then
SetTask(15,tl-4000)
vt = 1
for i=1,getn(kinhnghiem) do
if (GetLevel() >= kinhnghiem[i][1]) and (GetLevel() < kinhnghiem[i+1][1]) then
vt = i
end
end
kn = 1000 * kinhnghiem[vt][2]
if (GetTask(15) == (tl-4000)) then
AddOwnExp(kn/2)
Msg2Player("B¹n nhËn ®­îc "..(kn/2).." ®iÓm kinh nghiÖm")
Msg2Player("B¹n ®· dïng 4000 ®iÓm tÝch luü ®æi kinh nghiÖm")
else
Msg2Player("Hack a cung yeu !")
end
else
Talk(1,"","Ng­¬i kh«ng ®ñ <color=red> 4000 tÝch luü <color>, bao giê ®ñ h·y ®Õn ®©y.")
end
end;


function ddtldnvhtok()
tl = GetTask(122)
if (tl >= 10) then
SetTask(122,tl-10)
if (GetTask(122) == (tl-10)) then
AddEventItem(165)
Msg2Player("B¹n nhËn ®­îc 1 Nh¹c V­¬ng Hån Th¹ch")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Ng­êi kh«ng ®ñ <color=red> 10 ®iÓm tÝch lòy chiÕn trËn <color>, bao giê ®ñ h·y ®Õn ®©y.")
end
end;




function dlrv()
SayNew("<color=green>Tèng Qu©n Nhu: <color> HiÖn t¹i ng­¬i ®ang cã <color=fire>"..GetTask(15).."<color> ®iÓm tÝch luü, tuú ng­¬i sö dông",2,
--"§æi R­¬ng B¹c (10000 ®iÓm)/lanhrb",
"§æi R­¬ng B¹ch Kim (3000 ®iÓm)/lanhckb",
"Tho¸t/no")
end;

function lanhrb()

tl = GetTask(15)
if (tl >= 10000) then
SetTask(15,tl-10000)
if (GetTask(15) == (tl-10000)) then
AddEventItem(267)
Msg2Player("B¹n ®¶ nhËn ®­îc 1 R­¬ng B¹c")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Ng­¬i kh«ng ®ñ <color=red> 10000 tÝch luü <color>, bao giê ®ñ h·y ®Õn ®©y.")
end
end;

function lanhrv()

tl = GetTask(15)
if (tl >= 8000) then
SetTask(15,tl-8000)
if (GetTask(15) == (tl-8000)) then
AddEventItem(143)
Msg2Player("B¹n ®· nhËn ®­îc 1 R­¬ng Vµng")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Ng­¬i kh«ng ®ñ <color=red> 8000 tÝch lòy <color>, bao gio du hay den day.")
end
end;


function lanhckb()
tl = GetTask(15)
if (tl >= 3000) then
SetTask(15,tl-3000)
if (GetTask(15) == (tl-3000)) then
AddEventItem(269)
Msg2Player("B¹n ®· nhËn ®­îc 1 R­¬ng B¹ch Kim")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Ng­¬ng kh«ng ®ñ <color=red> 3000 tÝch luü <color>, bao giê ®ñ h·y ®Õn ®©y.")
end
end;


function lanhckv()
tl = GetTask(15)
if (tl >= 200) then
SetTask(15,tl-200)
if (GetTask(15) == (tl-200)) then
AddEventItem(145)
Msg2Player("Ban da nhan duoc 1 Chia Khoa Vang")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Nguoi khong du <color=red> 200 tich lòy <color>, bao gio du hay den day.")
end
end;




function topcaothu()
Talk(1,"","Top cao thñ Tèng Kim hiÖn t¹i lµ: [<color=red>"..TOP_TUAN[1].."<color>] víi sè ®iÓm: <color=yellow>"..TOP_TUAN[2].."<color> ®iÓm tÝch lòy !")
Msg2Player("Top cao thñ Tèng Kim hiÖn t¹i lµ: ["..TOP_TUAN[1].."] víi sè ®iÓm: "..TOP_TUAN[2].." ®iÓm tÝch lòy !")
end

function capnhathang()
	if GetTask(126) > TOP_TUAN[2] then
		TOP_TUAN[1] = GetName()
		TOP_TUAN[2] = GetTask(126)
		TOP_TUAN[6] = GetUUID()
		TOP_TUAN[3] = GetTask(13)
		TOP_TUAN[4] = GetLevel()
		TOP_TUAN[5] = GetTask(139)
		TOP_TUAN[7] = GetAccount()
		Msg2Player("B¹n ®· vµo danh s¸ch Top Cao Thñ Tèng Kim tuÇn nµy víi sè ®iÓm tÝch lòy: "..GetTask(126).." ")
		BANG4 = TaoBang(TOP_TUAN,"TOP_TUAN")				
		LuuBang("Datascript/hoatdong/tongkim/tongkim.lua",BANG4)
	else
		Msg2Player("§iÓm cña b¹n kh«ng ®ñ ®Ó vµo Top Tèng Kim !")
		Msg2Player("§iÓm tÝch lòy cña ng­êi dÉn ®Çu Tèng Kim TuÇn nµy lµ: "..TOP_TUAN[2].." ")
	end
end

function no()
end;




function checksoluong()
SetGlbMissionV(83,0)
SetGlbMissionV(84,0)
for i=1,2000 do
PlayerIndex = i
w,x,y = GetWorldPos()
if GetTask(12) == 1 and w == 33 then
SetGlbMissionV(83,GetGlbMissionV(83)+1)
elseif GetTask(12) == 2 and w == 33 then
SetGlbMissionV(84,GetGlbMissionV(84)+1)
end
end
end