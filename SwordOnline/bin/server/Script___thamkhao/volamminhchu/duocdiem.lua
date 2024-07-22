--Author: thaihoa91
Include("\\script\\Global\\passwords.lua");
Include("\\script\\ket_hon\\nguyet_lao.lua");
function main()
	SayNew("<color=green>D­îc §iÕm<color>: Ta chØ biÕt chöa bÖnh vµ cøu gióp ng­êi v« téi.",5,
	"Cöu ChuyÓn Hoµn Hån §an /muadd1",
	"¤ §Çu Hoµn ThÇn §an /muadd1",
	"Ngò Hoa Ngäc Lé Hoµn /muadd1",
	"T¶n Háa Di §éc /muadd1",
	"Tho¸t./no")
end;

function muadd1(nsel)
i = nsel + 1

if i == 1 then
	for k=1,20 do AddItem(1,0,0,5,0,0,0) end
elseif i == 2 then
	for k=1,20 do AddItem(1,1,0,5,0,0,0) end
elseif i == 3 then
	for k=1,20 do AddItem(1,4,0,5,0,0,0) end
elseif i == 4 then
	for k=1,20 do AddItem(1,3,0,5,0,0,0) end

end	

end

function tangtiemnang()
SayNew("HiÖn t¹i ng­¬i ®ang cã <color=yellow>"..GetProp().." ®iÓm tiÒm n¨ng<color>. Ng­¬i muèn ph©n phèi nã vµo ®©u?",5,
"T¨ng Søc M¹nh /tangtn1",
"T¨ng Th©n Ph¸p /tangtn1",
"T¨ng Sinh KhÝ /tangtn1",
"T¨ng Néi C«ng /tangtn1",
"Tho¸t./no")
end
function tangtn1(nsel)
SetTaskTemp(1, nsel + 1)
OpenStringBox(2,"NhËp sè ®iÓm","oktangtn")
Msg2Player("<color=yellow>L­u ý: NÕu kh«ng nhËp sè vµo ®­îc vui lßng tho¸t ra vµo l¹i. HÖ thèng tù ®éng reconnect khi t¨ng ®iÓm thµnh c«ng")
end

function oktangtn(num2)
num = tonumber(num2)
if num < 1 or num > GetProp() then
Talk(1,"","§iÓm tiÒm n¨ng kh«ng hîp lÖ vui lßng nhËp l¹i !")
return
end

i = GetTaskTemp(1)
tiemnang = GetProp()
AddProp(-num)
if GetProp() == tiemnang - num then
	if i == 1 then
		RestAP(GetStrg(1) + num, GetDex(1), GetVit(1), GetEng(1))
	elseif i == 2 then
		RestAP(GetStrg(1), GetDex(1) + num, GetVit(1), GetEng(1))
	elseif i == 3 then
		RestAP(GetStrg(1), GetDex(1), GetVit(1)  + num, GetEng(1))
	elseif i == 4 then
		RestAP(GetStrg(1), GetDex(1) , GetVit(1), GetEng(1)  + num)
	end
	KickOutSelf()
else
	Talk(1,"","Hack ha em")
end
end

function lbbattu()
if GetCash() < 30000 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 3 v¹n l­îng, kh«ng thÓ mua")
return
end

Pay(30000)
AddEventItem(160)
Msg2Player("B¹n nhËn ®­îc 1 <color=yellow>Ng­êi TuyÕt Vui VÎ ")
Msg2Player("<color=green>Chó ý: Mang theo vËt phÈm di chuyÓn ra ngoµi sÏ kh«ng bÞ chÕt trong vßng 10 gi©y!")

end

function muattmvip()
w,x,y = GetWorldPos()
if w == 20 then
SayNew("<color=green>D­îc §iÕm<color>: <enter>VËt phÈm: <color=yellow>[VIP] Thõa Tiªn MËt LÔ Bao<color>. Chän thêi h¹n muèn mua?  <enter>L­u ý: Gi¶m 50% gi¸ mua ë §¶o TÈy Tñy ",3,
"Ta muèn mua 1 ngµy = 5 vµng/yesmuattm",
"Ta muèn mua 3 ngµy = 10 vµng/yesmuattm",
"Tho¸t./no")
else
SayNew("<color=green>D­îc §iÕm<color>: <enter>VËt phÈm: <color=yellow>[VIP] Thõa Tiªn MËt LÔ Bao<color>. Chän thêi h¹n muèn mua?  <enter>L­u ý: Gi¶m 50% gi¸ mua ë §¶o TÈy Tñy ",3,
"Ta muèn mua 1 ngµy = 10 vµng/yesmuattm",
"Ta muèn mua 3 ngµy = 20 vµng/yesmuattm",
"Tho¸t./no")
end
end

giavip = 60
vanvip = 2500000
function yesmuattm2(nsel)
i = nsel + 1
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

if CheckFreeBoxItem(0,3,3,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end

if i == 1 then
	buy_ngay = 1
	buy_van = 500000
elseif i == 2 then
	buy_ngay = 3
	buy_van = 1400000
elseif i == 3 then
	if GetAccount() == "vantoi" then
	buy_ngay = 10
	else
	buy_ngay = 7
	end
	buy_van = 3000000	
end
 
vang = GetCash()
if GetCash() >= buy_van and CheckFreeBoxItem(0,3,3,1) ~= 0 then
	Pay(buy_van)
	if GetCash() == vang-buy_van and CheckFreeBoxItem(0,3,3,1) ~= 0 then
	
		ngay = ngay + buy_ngay
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
			thang = thang + 1
		end
		itemidx = AddEventItem(264)
		SetHSD(itemidx, 2018 , thang, ngay, gio )
		Msg2Player("B¹n nhËn ®­îc 1 [VIP] Thõa Tiªn MËt LÔ Bao")
		
		inloghks("Log "..buy_ngay.." ngay: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>"..buy_van.."<color> l­îng, kh«ng thÓ giao dÞch!")
end
end

function yesmuattm(nsel)
i = nsel + 1
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
w,x,y = GetWorldPos()
if i == 1 then
	buy_ngay = 1
	buy_vang = 10
elseif i == 2 then
	buy_ngay = 3
	buy_vang = 20
end

if CheckFreeBoxItem(0,3,3,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end
 
 if w == 20 then
 buy_vang = buy_vang / 2
 end
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= buy_vang and GetTask(101) >= buy_vang and CheckFreeBoxItem(0,3,3,1) ~= 0 then
	SetTask(99,GetTask(99) - buy_vang)
	SetTask(101,GetTask(101) - buy_vang)
	if GetTask(99) == vang-buy_vang and GetTask(101) == vang2 - buy_vang and GetTask(99) == GetTask(101) and CheckFreeBoxItem(0,3,3,1) ~= 0 then
		ngay = ngay + buy_ngay
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
			thang = thang + 1
		end
		itemidx = AddEventItem(264)
		SetHSD(itemidx, 2021 , thang, ngay, gio )
		SetBindItem(itemidx,1)
		Msg2Player("B¹n nhËn ®­îc 1 [VIP] Thõa Tiªn MËt LÔ Bao")
		inloghks("Log "..buy_ngay.." ngay: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>"..giavip.."<color> vµng, kh«ng thÓ giao dÞch!")
end
end


function yesmuattm1()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
nam = tonumber(date("%y"))

if CheckFreeBoxItem(0,3,3,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end
 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 80 and GetTask(101) >= 80 and CheckFreeBoxItem(0,3,3,1) ~= 0 then
	SetTask(99,GetTask(99) - 80)
	SetTask(101,GetTask(101) - 80)
	if GetTask(99) == vang-80 and GetTask(101) == vang2 - 80 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(0,3,3,1) ~= 0 then
		if thang == 12 then
			thang = 1
			nam = nam + 1
		else
			thang = thang + 1
		end
		itemidx = AddEventItem(264)
		SetHSD(itemidx, nam + 2000 , thang, ngay, gio )
		SetBindItem(itemidx,1)
		Msg2Player("B¹n nhËn ®­îc 1 [VIP] Thõa Tiªn MËt LÔ Bao")
		Msg2SubWorld("§¹i hiÖp "..GetName().." ®· mua [VIP] Thõa Tiªn MËt LÔ Bao 30 ngµy. Con ®­êng tu luyÖn phÝa tr­íc b©y giê ®· trë nªn ®¬n gi¶n h¬n ")
		inloghks("Log 30 ngay: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>80<color> vµng, kh«ng thÓ giao dÞch!")
end
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}

function inloghks(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/ThuaTienMat_3V.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function nhanmaumienphi()
if GetLevel() < 130 then
for i=1,20 do
			idx = AddItem(1,2,0,3,0,0,0)
			SetItemLock(idx)
		end
Msg2Player("B¹n nhËn ®­îc 20 B×nh D­îc PhÈm MiÔn PhÝ !")
else
Talk(1,"","Tói Thuèc chØ hç trî cho t©n thñ ®¼ng cÊp d­íi 130 !")
end
end

function muanhanh()
SayNew("B¹n muèn mua thuèc nµo: ?",10,
"Kim S¸ng D­îc LÔ Bao (Trung) /muanhanh2",
"Kim S¸ng D­îc LÔ Bao (§¹i)/muanhanh2",
"Cöu ChuyÓn Hoµn Hån §an LÔ Bao/muanhanh2",
"Ng­ng ThÇn §an LÔ Bao (Trung)/muanhanh2",
"Ng­ng ThÇn §an LÔ Bao (§¹i)/muanhanh2",
"Thñ ¤ Hoµn ThÇn §an LÔ Bao/muanhanh2",
"Thõa Tiªn MËt LÔ Bao (trung)/muanhanh2",
"Thõa Tiªn MËt LÔ Bao (§¹i)/muanhanh2",
"Ngò Hoa Ngäc Lé Hoµn LÔ Bao/muanhanh2",
"Tho¸t./no")
end

function muanhanh2(nsel)
SetTaskTemp(1, nsel+1)
SayNew("B¹n cã ch¾c ch¾n mua <color=green>"..DuocPham[nsel+1][2].."<color> víi gi¸ <color=yellow>"..DuocPham[nsel+1][3].." l­îng",2,
"Ta ch¾c ch¾n muèn mua vËt phÈm nµy /muanhanh3",
"Tho¸t./no")
end
function muanhanh3()
OpenStringBox(2,"NhËp sè l­îng","muanhanh4")
end

function muanhanh4(num2)
num = tonumber(num2)
if num == 0 then
return
end

vt = GetTaskTemp(1)
if vt < 1 and vt > getn(DuocPham) then
return
end
if CheckFreeBoxItem(0,3,3,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end
cash = GetCash()
if GetCash() < num*DuocPham[vt][3] then
Talk(1,"","Ng­¬i kh«ng mang ®ñ "..(num*DuocPham[vt][3]).." l­îng, kh«ng thÓ mua vËt phÈm nµy")
return
end

Pay(num*DuocPham[vt][3])
if GetCash() == cash - num*DuocPham[vt][3] then
	for p=1,num do AddEventItem(DuocPham[vt][1]) end
	Msg2Player("B¹n nhËn ®­îc "..num.." "..DuocPham[vt][2].."")
else
	Talk(1,"","Hack ha em")
end
end

DuocPham = {
{108, "Kim S¸ng D­îc Trung",2000},
{110, "Kim S¸ng D­îc §¹i",5000},
{104, "C÷u ChuyÓn Hoµn Hån §an LÔ Bao",40000},
{112, "Ng­ng ThÇn §an Trung",2000},
{111, "Ng­ng ThÇn §an §¹i",5000},
{105, "Thñ ¤ Hoµn ThÇn §an LÔ Bao",40000},
{107, "Thõa Tiªn MËt Trung",3000},
{109, "Thõa Tiªn MËt §¹i",7500},
{103, "Ngò Hoa Ngäc Lé Hoµn LÔ Ba",60000},
}
function muannh()
if CheckFreeBoxItem(4,114,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end


sl = GetItemCount(114) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 1 and GetTask(101) >= 1 then
	SetTask(99,GetTask(99) - 1)
	SetTask(101,GetTask(101) - 1)
	if GetTask(99) == vang-1 and GetTask(101) == vang2 - 1 and GetTask(99) == GetTask(101) then
		AddEventItem(118)
		Msg2Player("B¹n ®· mua 1 b×nh N÷ Nhi Hång gi¸ 1 vµng ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>1<color> vµng !")
end
end

function lagmau()
sl = GetCash()
if GetCash() >= 5000 then
Pay(5000)
if GetCash() == sl - 5000 then
AddEventItem(111)
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B¹n kh«ng ®ñ 5000 l­îng !")
end
end


function lagmau2()
sl = GetCash()
if GetCash() >= 40000 then
Pay(40000)
if GetCash() == sl - 40000 then
AddEventItem(105)
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B¹n kh«ng ®ñ 40000 l­îng !")
end
end
function thuatien()
sl = GetCash()
if GetCash() >= 7500 then
Pay(7500)
if GetCash() == sl - 7500 then
AddEventItem(109)
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B¹n kh«ng ®ñ 5000 l­îng !")
end
end

function kimsang()
sl = GetCash()
if GetCash() >= 5000 then
Pay(5000)
if GetCash() == sl - 5000 then
AddEventItem(110)
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B¹n kh«ng ®ñ 5000 l­îng !")
end
end

function giaotinthu()
	if GetTask(103) == 4 then
		SetTask(103,5)
		Talk(1,"","<color=green>D­îc §iÕm <color>: Ta ®· nhËn ®­îc tÝn th­, h·y nãi víi Ch­ëng M«n ng­¬i lµ ta sÏ cè g¾ng hÕt søc ®Ó gióp ®Ö tö cña ng­êi !")
	end
end

function muanguhoa()
tv = GetCash()
		if GetCash() >= 5000 then
		Pay(5000)
			if GetCash() == (tv-5000) then
			AddEventItem(18)
			Msg2Player("B¹n nhËn ®­îc 1 Ngò Hoa T¸n.")
			Talk(0,"")
			else
			Talk(1,"","Hack ha em")
			end
		else
		Talk(1,"","<color=green>D­îc §iÕm <color>: B¹n kh«ng ®ñ 5000 l­îng kh«n thÓ mua Ngò Hoa T¸n")
		end
end

function giaodich()
w,X,Y = GetWorldPos()
if w == 66 or w == 3 then
Sale(22);
else
	Sale(7);
end
end;

function kogiaodich()
end;





