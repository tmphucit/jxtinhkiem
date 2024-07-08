--Author: thaihoa91

function main()
if GetTask(103) == 5 then
SayNew("<color=green>Chñ tiÖm T¹p ho¸ <color>: Ta chuyÒn vÒ ¨n mÆc, b¸n c¸c thø linh tinh nh­ng rÊt cÇn thiÕt",3,
"Mua - B¸n/giaodich",
"Giao tÝn th­ ch­ëng m«n/giaotinthu",
"Kh«ng cÇn ®©u/kocan")
else
SayNew("<color=green>Chñ tiÖm T¹p ho¸ <color>: Ta chuyÒn vÒ ¨n mÆc, b¸n c¸c thø linh tinh nh­ng rÊt cÇn thiÕt",5,
"Mua - B¸n/giaodich",
"Tèng Kim Chiªu Th­ [2000 l­îng]/muatdp",
"Mua ThÇn Hµnh Phï /muathanthanhphu",
"Sù kiÖn Event 30-4 /tetnguyendan_muamam",
"Kh«ng cÇn ®©u/kocan")
end
end;



function tetnguyendan_muamam()
		if CheckFreeBoxItem(0,10,2,2) == 0 then
			Msg2Player("Hµnh trang kh«ng ®ñ 2 x 3 chç trèng, kh«ng thÓ sö dông")
			return
		end
		
SayNew("<color=green>Chñ tiÖm T¹p ho¸ <color>: Ng­¬i muèn mua nguyªn liÖu Event 30/4? ",5,
"10 Mò Tai BÌo = 5 v¹n l­îng/tetnguyendan_muamambac",
"100 Mò Tai BÌo = 50 v¹n l­îng/tetnguyendan_muamambac",
"2 ChiÕc ¸o lÝnh bÞ r¸ch = 1 TiÒn §ång/tetnguyendan_muamamvang",
"20 ChiÕc ¸o lÝnh bÞ r¸ch = 10 TiÒn §ång/tetnguyendan_muamamvang",
"Tho¸t./no")
end

function tetnguyendan_muamambac(nsel)
i = nsel + 1

SoLuong = 0
Vang = 0
if i == 1 then
	SoLuong = 10
	Vang = 50000
elseif i == 2 then
	SoLuong = 100
	Vang = 500000
end
if SoLuong == 0 then
return
end

sl = GetCash()
SoLuongCu = GetItemCount(321)
if GetCash() >= Vang then
	Pay(Vang)
	if GetCash() == sl - Vang then
			for k=1,SoLuong do AddEventItem(321) end
			Msg2Player("B¹n nhËn ®­îc "..SoLuong.." Mò Tai BÌo ")		
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/MamBac.txt", "a");
			if LoginLog then
			write(LoginLog,"["..SoLuongCu.."]["..GetItemCount(321).."]["..GetAccount().."]["..GetName().."] - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			
	else
			Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ "..Vang.." l­îng, kh«ng thÓ mua !")
end
end

function tetnguyendan_muamamvang(nsel)
i = nsel + 1

SoLuong = 0
Vang = 0
if i == 3 then
	SoLuong = 2
	Vang = 1
elseif i == 4 then
	SoLuong = 20
	Vang = 10
end
if SoLuong == 0 then
return
end

sl = GetItemCount(697)
SoLuongCu = GetItemCount(322)
if GetItemCount(697) >= Vang then
	for k=1,Vang do DelItem(697) end
	if GetItemCount(697) == sl - Vang then
			for k=1,SoLuong do AddEventItem(322) end
			Msg2Player("B¹n nhËn ®­îc "..SoLuong.." ChiÕc ¸o lÝnh bÞ r¸ch ")		
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/MamVang.txt", "a");
			if LoginLog then
			write(LoginLog,"["..SoLuongCu.."]["..GetItemCount(322).."]["..GetAccount().."]["..GetName().."] - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			
	else
			Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ "..Vang.." tiÒn ®ång, kh«ng thÓ mua !")
end
end

function muathanthanhphu()
SayNew("<color=green>Chñ tiÖm T¹p ho¸ <color>: <enter>VËt phÈm: <color=yellow>ThÇn Hµnh Phï <color>. Chän thêi h¹n muèn mua?",4,
"Ta muèn mua 3 ngµy = 10 TiÒn §ång/yesmuattm",
"Ta muèn mua 7 ngµy = 20 TiÒn ®ång/yesmuattm",
"Ta muèn mua 30 ngµy = 50 TiÒn ®ång/yesmuattm",
"Tho¸t./no")
end



function yesmuattm(nsel)
i = nsel + 1
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
w,x,y = GetWorldPos()
if i == 1 then
	buy_ngay = 3
	buy_vang = 10
elseif i == 2 then
	buy_ngay = 7
	buy_vang = 20
elseif i == 3 then
	buy_ngay = 30
	buy_vang = 50
end

if CheckFreeBoxItem(0,3,3,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end
 
vang = GetItemCount(697)
if GetItemCount(697) >= buy_vang then
	for k=1,buy_vang do DelItem(697) end
	if GetItemCount(697) == vang - buy_vang then
		ngay = ngay + buy_ngay
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
			
			if (thang == 12) then
				thang = 0
				nam = nam + 1
			end
			thang = thang + 1	
		end	
		
		itemidx = AddEventItem(696)
		SetHSD(itemidx, 2000+nam , thang, ngay, gio )
		Msg2Player("B¹n nhËn ®­îc 1 ThÇn Hµnh Phï ")
		inloghks("Log "..buy_ngay.." ngµy: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B¹n kh«ng ®ñ <color=yellow>"..buy_vang.."<color> TiÒn §ång, kh«ng thÓ giao dÞch!")
end
end
mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function inloghks(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/SachThongHanh.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function muatdp30()
SayNew("<color=green>Chñ tiÖm T¹p ho¸ <color>: Ng­¬i ch¾c ch¾n muèn mua <color=red>Thæ §Þa Phï 30 Ngµy<color> víi gi¸ <color=yellow>10 Vµng<color> kh«ng?",2,
"Ta ®ång ý mua víi gi¸ 10 vµng /muatdo301",
"Tho¸t./no")
end

function muatdo301()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
cash = GetTask(99)
if GetTask(99) >= 10 then
	SetTask(99,GetTask(99) - 10)
	SetTask(101,GetTask(101) - 10)
	if GetTask(99) == cash - 10 then
		itemidx = AddEventItem(272)
	if thang == 12 then
		SetHSD(itemidx,2017,1,ngay,gio)
		SetBindItem(itemidx,1)
	else
		SetHSD(itemidx,2017,thang+1,ngay,gio)
		SetBindItem(itemidx,1)
	end
	Msg2Player("B¹n nhËn ®­îc 1 c¸i  <color=yellow>Thæ §Þa Phï [30 Ngµy]")
	Msg2Player("<color=yellow>Chó ý: NÕu kh«ng thÊy xuÊt hiÖn trong hµnh trang h·y tho¸t hÕt game vµ ch¹y cËp nhËt l¹i !")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng­¬i kh«ng ®ñ 10 vµng, kh«ng thÓ mua ")
end
end


function muatdp()
if GetCash() < 2000 then
Talk(1,"","Kh«ng ®ñ 2000 l­îng, kh«ng thÓ mua vËt phÈm nµy ")
return
end
Pay(2000)
a = GetCash()
AddEventItem(24)
Msg2Player("B¹n nhËn ®­îc 1 Tèng Kim Chiªu Th­ ")
Talk(0,"")
end
function mokhoafull()
if GetItemCount2(150) > 0 then
Talk(1,"","B¹n ph¶i sö dông hÕt LÔ Bao Tèng Kim míi cã thÓ më khãa !")
return
end
if GetItemCount2(109) > 0 then
Talk(1,"","B¹n ph¶i sö dông hÕt LÔ Bao MiÔn PhÝ míi cã thÓ më khãa !")
return
end

SetBindAllItem()
Msg2Player("B¹n ®· më khãa thµnh c«ng !")

end

function giaotinthu()
	if GetTask(103) == 5 then
		SetTask(103,6)
		Talk(1,"","<color=green>Chñ tiÖm T¹p Hãa<color>: Ta ®· nhËn ®­îc tÝn th­, h·y nãi víi Ch­ëng M«n ng­¬i lµ ta sÏ cè g¾ng hÕt søc ®Ó gióp ®Ö tö cña ng­êi !")
		Msg2Player("<color=green>NhiÖm vô M«n Ph¸i: <color=red>H·y ®Õn gÆp Thî RÌn")
	end
end

function muatkchieuthu()
a = GetCash()
if GetCash() >= 5000 then
Pay(5000)
if GetCash() == (a-5000) then
AddEventItem(24)
Msg2Player("B¹n nhËn ®­îc 1 Tèng Kim Chiªu Th­")
Talk(0,"")
end
else
Talk(1,"","<color=green>Chñ tiÖm t¹m ho¸ <color>: B¹n kh«ng ®ñ <color=red>5000<color> l­îng")
end
end

function sudothiep()
a = GetCash()
if GetCash() >= 5000 then
Pay(5000)
if GetCash() == (a-5000) then
AddEventItem(15)
Msg2Player("B¹n nhËn ®­îc 1 s­ ®å thiÕp")
Talk(0,"")
end
else
Talk(1,"","<color=green>Chñ tiÖm t¹m ho¸ <color>: B¹n kh«ng ®ñ <color=red>5000<color> l­îng")
end
end
function giaodich()
w,x,y = GetWorldPos()
if w == 17 then
Sale(3)
elseif w == 11 then
Sale(4)
elseif w == 160 then
Sale(5)
elseif w == 161 then
Sale(6)
elseif w == 15 then
Sale(2)
else
Talk(1,"","HiÖn t¹i ta kh«ng më cöa hµng t¹p hãa, ng­¬i h·y ®i thµnh thÞ kh¸c ®i nhÐ ")
end
end;


function shop(nsel)
i = nsel+2
Sale(i)
end
function no()
end
function kocan()
end;
