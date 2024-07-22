--Author: thaihoa91



function main()
	if GetTask(103) == 7 then
	SayNew("<color=green>B¸n Ngùa<color>: §¹i hiÖp <color=fire>"..GetName().."<color> muèn mua ngùa g×?: ",3,
	"Mua ngùa./muangua",
	"Giao tÝn th­ ch­ëng m«n/giaotinthu",
	"Tho¸t./no")	
	else
	SayNew("<color=green>B¸n Ngùa<color>: §¹i hiÖp <color=fire>"..GetName().."<color> muèn mua ngùa g×?: ",2,
	"Mua ngùa./muangua",
	--"§æi M· Bµi /doimabai",
--	"Mua Ngùa 80 /muanguavip",
--	"GhÐp Ngùa XÝch Thè /ghepxichtho",
--	"GhÐp Ngùa ChiÕu D¹ /ghepchieuda",
--	"Ph©n T¸ch Ngùa Phiªn Vò /phantachpv",
--	"Th¨ng CÊp Ngùa Phiªn Vò /thangcapnguapv",
--	"T¸i T¹o Ngùa Phiªn Vò /taitaopv",
	"Tho¸t./no")
	end
end;

function doimabai()

	SayNew("<color=green>B¸n Ngùa<color>: Chän lo¹i thó c­ìi muèn ®æi ",6,
"¤ v©n ®¹p tuyÕt /doimabai2",
"XÝch thè /doimabai2",
"TuyÕt ¶nh /doimabai2",
"§Ých l« /doimabai2",
"ChiÕu d¹ ngäc s­ tö /doimabai2",
"Tho¸t./no")

end


function doimabai2(nsel)
item = 651 + nsel

if GetItemCount(item) == 0 then
Talk(1,"","Ng­¬i kh«ng mang theo M· Bµi, kh«ng thÓ ®æi ")
return
end

DelItem(item)
itemidx = AddItem(0,10,5,nsel+1,0,0,0)
Msg2SubWorld("Chóc mõng <color=green>"..GetName().."<color=red> ®· ®æi thµnh c«ng thó c­ìi: <color=yellow>"..GetNameItemBox(itemidx).."")

end
function muanguavip()
SayNew("<color=green>B¸n Ngùa<color>: C¸c lo¹i ngùa d­íi ®©y ®ång gi¸ 1000 v¹n l­îng vµ 100 danh väng ",4,
"Mua ¤ V©n /muanguavip1",
"Mua §Ých L« /muanguavip1",
"Mua TuyÖt ¶nh /muanguavip1",
"Tho¸t /no")
end

function muanguavip1(nsel)
i = nsel + 1
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
return
end

if GetCash() < 10000000 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 1000 v¹n l­îng, kh«ng thÓ mua")
return
end
if GetTask(100) < 100 then
Talk(1,"","Ng­¬i kh«ng cã ®ñ 100 danh väng, kh«ng thÓ mua")
return
end

Pay(10000000)
SetTask(100, GetTask(100) - 100)
if i == 1 then
	idxitem = AddItem(0,10,5,1,0,0,0)
	Msg2SubWorld("Chóc mõng "..GetName().." ®· mua thµnh c«ng <color=green>"..GetNameItemBox(idxitem).."")
elseif i == 2 then
	idxitem = AddItem(0,10,5,4,0,0,0)
	Msg2SubWorld("Chóc mõng "..GetName().." ®· mua thµnh c«ng <color=green>"..GetNameItemBox(idxitem).."")
elseif i == 3 then
	idxitem = AddItem(0,10,5,3,0,0,0)
	Msg2SubWorld("Chóc mõng "..GetName().." ®· mua thµnh c«ng <color=green>"..GetNameItemBox(idxitem).."")
end
end


function taitaopv()
OpenCheckItemBox("Th¨ng CÊp Phiªn Vò","§Æt Ngùa Phiªn Vò vµo","taitaopv1")
end

function taitaopv1()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh«ng thÓ ph©n t¸ch trang bÞ khãa ")
return
end

if idxitem == -1 then
Talk(1,"","Sè l­îng vËt phÈm v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)
	
soluong = 0
if a == 0 and b == 10 and c == 7 and (d >= 2 and d <= 6) then
	soluong = 1
end	

if GetItemCount(415) < 10 then
Talk(1,"","B¹n kh«ng mang ®ñ 10 viªn §¸ T¸i T¹o, kh«ng thÓ th¨ng cÊp ")
return
end


if soluong == 0 then
	Msg2Player("Nguyªn liÖu ®Æt vµo kh«ng hîp lÖ, vui lßng kiÓm tra l¹i !")
	Msg2Player("L­u ý: ChØ ®­îc ®Æt trang bÞ Ngùa Phiªn Vò - CÊp 2")
	return
end
	tenitem = GetNameItemBox(itemidx)
	DelEquipIdx(itemidx)
	for p=1,10 do DelItem(415) end
	if GetIdxItemBoxUpdateItem() == 0 then
		AddItem(0,10,7,random(2,6),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." T¸i T¹o thµnh c«ng <color=green>Ngùa Phiªn Vò ")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/ThoRen/TaiTaoNguaPhienVu.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetItemCount2(339).."] "..GetAccount().." - "..GetName().." - "..tenitem.." \n");
		end
		closefile(LoginLog)
		Talk(0,"")
	end
end

function thangcapnguapv()
OpenCheckItemBox("Th¨ng CÊp Phiªn Vò","§Æt Ngùa Phiªn Vò vµo","thangcapnguapv1")
end

function thangcapnguapv1()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh«ng thÓ ph©n t¸ch trang bÞ khãa ")
return
end

if idxitem == -1 then
Talk(1,"","Sè l­îng vËt phÈm v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)
	
soluong = 0
if a == 0 and b == 10 and c == 7 and d == 1 then
	soluong = 1
end	

if GetItemCount(339) < 100 then
Talk(1,"","B¹n kh«ng mang ®ñ 100 m·nh Phiªn Vò, kh«ng thÓ th¨ng cÊp ")
return
end
if GetItemCount(34) < 100 then
Talk(1,"","B¹n kh«ng mang ®ñ 100 §¸ Th¨ng CÊp Phiªn Vò, kh«ng thÓ th¨ng cÊp ")
return
end

if soluong == 0 then
	Msg2Player("Nguyªn liÖu ®Æt vµo kh«ng hîp lÖ, vui lßng kiÓm tra l¹i !")
	Msg2Player("L­u ý: ChØ ®­îc ®Æt trang bÞ Ngùa Phiªn Vò - CÊp 1")
	return
end
	tenitem = GetNameItemBox(itemidx)
	DelEquipIdx(itemidx)
	for p=1,100 do DelItem(339) end
	for p=1,100 do DelItem(34) end
	if GetIdxItemBoxUpdateItem() == 0 then
		AddItem(0,10,7,random(2,6),0,0,0)
		Msg2SubWorld("Chóc mõng "..GetName().." th¨ng cÊp thµnh c«ng <color=green>Ngùa Phiªn Vò ")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/ThoRen/ThangCapNguaPhienVu.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetItemCount2(339).."] "..GetAccount().." - "..GetName().." - "..tenitem.." \n");
		end
		closefile(LoginLog)
		Talk(0,"")
	end
end

function phantachpv()
OpenCheckItemBox("Ph©n R· Phiªn Vò","§Æt Ngùa Phiªn Vò vµo","okphantachpv")
end

function okphantachpv()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh«ng thÓ ph©n t¸ch trang bÞ khãa ")
return
end

if idxitem == -1 then
Talk(1,"","Sè l­îng vËt phÈm v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)
	
soluong = 0
if a == 0 and b == 10 and c == 7 and d == 1 then
	soluong = 1
end	

if soluong == 0 then
	Msg2Player("Nguyªn liÖu ®Æt vµo kh«ng hîp lÖ, vui lßng kiÓm tra l¹i !")
	Msg2Player("L­u ý: ChØ ®­îc ®Æt trang bÞ Ngùa Phiªn Vò - CÊp 1")
	return
end
	tenitem = GetNameItemBox(itemidx)
	DelEquipIdx(itemidx)
	if GetIdxItemBoxUpdateItem() == 0 then
		for p=1,90 do AddEventItem(339) end
		Msg2Player("Chóc mõng b¹n ph©n t¸ch ®­îc <color=yellow>90 M·nh Phiªn Vò ")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/ThoRen/PhanTachNguaPhienVu.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetItemCount2(339).."] "..GetAccount().." - "..GetName().." - "..tenitem.." \n");
		end
		closefile(LoginLog)
		Talk(0,"")
	end
end



function ghepphienvu()
sl = GetItemCount2(339)
if sl < 100 then
Talk(1,"","B¹n kh«ng ®ñ 100 M·nh Phiªn Vò, kh«ng thÓ ®æi ")
return
end

if GetItemCount2(339) >= 100 then
	for p=1,100 do DelAllItem(339) end
	if GetItemCount2(339) == sl - 100 then
		AddItem(0,10,7,1,0,0,0)
		Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." ®æi 100 M·nh Ngùa Phiªn Vò thµnh Phiªn Vò ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Hack ha em")
end
end



function ghepxichtho()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end

sl = GetItemCount2(273)
if sl < 50 then
Talk(1,"","B¹n kh«ng ®ñ 50 m·nh XÝch Thè , kh«ng thÓ ®æi ")
return
end

if GetItemCount2(273) >= 50 then
	for p=1,50 do DelAllItem(273) end
	if GetItemCount2(273) == sl - 50 then
		AddItem(0,10,5,2,0,0,0)
		Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." ®æi 50 m·nh XÝch Thè nhËn ®­îc 1 Ngùa XÝch Thè ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Hack ha em")
end
end

function ghepchieuda()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end

sl = GetItemCount2(274)
if sl < 50 then
Talk(1,"","B¹n kh«ng ®ñ 50 m·nh ChiÕu D¹, kh«ng thÓ ®æi ")
return
end

if GetItemCount2(274) >= 50 then
	for p=1,50 do DelAllItem(274) end
	if GetItemCount2(274) == sl - 50 then
		AddItem(0,10,5,5,0,0,0)
		Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." ®æi 50 m·nh ChiÕu D¹ nhËn ®­îc 1 Ngùa ChiÕu D¹ Ngäc S­ Tö ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Hack ha em")
end
end

function giaotinthu()
	if GetTask(103) == 7 then
		SetTask(103,8)
		Talk(1,"","<color=green>B¸n Ngùa<color>: Ta ®· nhËn ®­îc tÝn th­, h·y nãi víi Ch­ëng M«n ng­¬i lµ ta sÏ cè g¾ng hÕt søc ®Ó gióp ®Ö tö cña ng­êi !")
		Msg2Player("<color=green>NhiÖm vô m«n ph¸i: <color=red> Quay vÒ gÆp Ch­ëng M«n ")
	end
end

function muangua()
w,x,y = GetWorldPos()
Sale(random(17,21))
end;

function no()
end;
