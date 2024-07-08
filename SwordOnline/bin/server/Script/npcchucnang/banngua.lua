--Author: thaihoa91



function main()
	if GetTask(103) == 7 then
	SayNew("<color=green>B¸n Ngùa<color>: §¹i hiÖp <color=fire>"..GetName().."<color> muèn mua ngùa g×?: ",3,
	"Mua ngùa./muangua",
	"Giao tÝn th­ ch­ëng m«n/giaotinthu",
	"Tho¸t./no")	
	else
	SayNew("<color=green>B¸n Ngùa<color>: §¹i hiÖp <color=fire>"..GetName().."<color> muèn mua ngùa g×?: ",4,
	"Mua ngùa./muangua",
	"GhÐp Ngùa ChiÕu D¹ /ghepxichtho",
	-- "GhÐp Ngùa Phi V©n /ghepphivan",
	"GhÐp Ngùa XÝch Thè /ghepchieuda",
	-- "ChÕ T¹o Ngùa Phiªn Vò /ghepnguapv",
	-- "ChÕ T¹o Ngùa B«n Tiªu/ghepnguabontieu",
	-- "N©ng CÊp Ngùa Siªu Quang /nangcapnguasieuquangxu",
--	"Ph©n T¸ch Ngùa Phiªn Vò /phantachpv",
--	"Th¨ng CÊp Ngùa Phiªn Vò /thangcapnguapv",
--	"T¸i T¹o Ngùa Phiªn Vò /taitaopv",
	"Tho¸t./no")
	end
end;

function muanguavip()
SayNew("<color=green>B¸n Ngùa<color>: C¸c lo¹i ngùa d­íi ®©y ®ång gi¸ 1000 v¹n l­îng vµ 100 danh väng ",4,
"Mua ¤ V©n /muanguavip1",
"Mua §Ých L« /muanguavip1",
"Mua TuyÖt ¶nh /muanguavip1",
"Tho¸t /no")
end


function nangcapnguasieuquangxu()
OpenCheckItemBox("N©ng CÊp Ngùa","§Æt ngùa Siªu Quang n©ng cÊp vµo","loaddulieunguasieuquangxu")
end

function loaddulieunguasieuquangxu()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh«ng thÓ ®æi trang bÞ khãa ")
return
end

if idxitem == -1 then
Talk(1,"","Sè l­îng vËt phÈm v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end
if GetItemCountBox(28) < 3 then
Talk(1,"","Kh«ng cã Lam Thñy Tinh, kh«ng thÓ chÕ t¹o ")
return
end
if GetItemCountBox(29) < 3 then
Talk(1,"","Kh«ng cã Tö Thñy Tinh, kh«ng thÓ chÕ t¹o ")
return
end
if GetItemCountBox(30) < 3 then
Talk(1,"","Kh«ng cã Lôc Thñy Tinh, kh«ng thÓ chÕ t¹o ")
return
end

if GetItemCountBox(34) < 100 then
Talk(1,"","Kh«ng cã §¸ Th¨ng CÊp Siªu Quang, kh«ng thÓ chÕ t¹o ")
return
end

if GetItemCountBox(31) < 6  then
Talk(1,"","Kh«ng cã ®ñ Tinh Hång B¶o Th¹ch, kh«ng thÓ chÕ t¹o ")
return
end
vang = 500
vang2 = 500
if GetTask(99) < vang and GetTask(101) < vang2 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..vang2.."<color> Xu !")
return
end
	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)
	
new_c = 0
new_d = 0
    if a == 0 then
		if b == 10 and c == 13 and d == 1 then
			new_d = 2
		elseif b == 10 and c == 13 and d == 2 then
			new_d = 3
		elseif b == 10 and c == 13 and d == 3 then
			new_d = 4
		elseif b == 10 and c == 13 and d == 4 then
			new_d = 5
		elseif b == 10 and c == 13 and d == 5 then
			new_d = 6
		elseif b == 10 and c == 13 and d == 6 then
			new_d = 7
		elseif b == 10 and c == 13 and d == 7 then
			new_d = 8
		elseif b == 10 and c == 13 and d == 8 then
			new_d = 9
		elseif b == 10 and c == 13 and d == 9 then
			new_d = 10
		end
	end
	
	check = 0	
if a == 0 and ((b == 10 and c == 13 and d == 1) or (b == 10 and c == 13 and d == 2) or (b == 10 and c == 13 and d == 3) or (b == 10 and c == 13 and d == 4) or (b == 10 and c == 13 and d == 5) or (b == 10 and c == 13 and d == 6) or (b == 10 and c == 13 and d == 7) or (b == 10 and c == 13 and d == 8) or (b == 10 and c == 13 and d == 8) or (b == 10 and c == 13 and d == 10)) then
	check = 1
end

if check == 0 then
Talk(1,"","Trang bÞ b¹n ®Æt vµo kh«ng hîp lÖ , kh«ng thÓ n©ng cÊp ")
return
end



TimeBox("§ang N©ng CÊp",10,"oknangcapnguasieuquangxu");
end

function oknangcapnguasieuquangxu()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh«ng thÓ ®æi trang bÞ khãa ")
return
end

if idxitem == -1 then
Talk(1,"","Sè l­îng vËt phÈm v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end
if GetItemCountBox(28) < 3 then
Talk(1,"","Kh«ng cã Lam Thñy Tinh, kh«ng thÓ chÕ t¹o ")
return
end
if GetItemCountBox(29) < 3 then
Talk(1,"","Kh«ng cã Tö Thñy Tinh, kh«ng thÓ chÕ t¹o ")
return
end
if GetItemCountBox(30) < 3 then
Talk(1,"","Kh«ng cã Lôc Thñy Tinh, kh«ng thÓ chÕ t¹o ")
return
end

if GetItemCountBox(34) < 100 then
Talk(1,"","Kh«ng cã §¸ Th¨ng CÊp Siªu Quang, kh«ng thÓ chÕ t¹o ")
return
end

if GetItemCountBox(31) < 6  then
Talk(1,"","Kh«ng cã ®ñ Tinh Hång B¶o Th¹ch, kh«ng thÓ chÕ t¹o ")
return
end

vang = 500
vang2 = 500
if GetTask(99) < vang and GetTask(101) < vang2 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ <color=yellow>"..vang2.."<color> Xu !")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)

	
new_c = 0
new_d = 0
    if a == 0 then
		if b == 10 and c == 13 and d == 1 then
			new_d = 2
		elseif b == 10 and c == 13 and d == 2 then
			new_d = 3
		elseif b == 10 and c == 13 and d == 3 then
			new_d = 4
		elseif b == 10 and c == 13 and d == 4 then
			new_d = 5
		elseif b == 10 and c == 13 and d == 5 then
			new_d = 6
		elseif b == 10 and c == 13 and d == 6 then
			new_d = 7
		elseif b == 10 and c == 13 and d == 7 then
			new_d = 8
		elseif b == 10 and c == 13 and d == 8 then
			new_d = 9
		elseif b == 10 and c == 13 and d == 9 then
			new_d = 10
		end
	end
	
	check = 0	
if a == 0 and ((b == 10 and c == 13 and d == 1) or (b == 10 and c == 13 and d == 2) or (b == 10 and c == 13 and d == 3) or (b == 10 and c == 13 and d == 4) or (b == 10 and c == 13 and d == 5) or (b == 10 and c == 13 and d == 6) or (b == 10 and c == 13 and d == 7) or (b == 10 and c == 13 and d == 8) or (b == 10 and c == 13 and d == 8) or (b == 10 and c == 13 and d == 10)) then
	check = 1
end

if check == 0 then
Talk(1,"","Trang bÞ b¹n ®Æt vµo kh«ng hîp lÖ , kh«ng thÓ n©ng cÊp ")
return
end
	sx = RandomNew(1,100)
	if sx < 30 then
		DelEquipIdx(itemidx)
		for p=1,100 do DelItemBox(34) end
		for p=1,3 do DelItemBox(28) end
		for p=1,3 do DelItemBox(29) end
		for p=1,3 do DelItemBox(30) end
		for p=1,6 do DelItemBox(31) end
		SetTask(99,GetTask(99) - vang)
		SetTask(101,GetTask(101) - vang2)
		Msg2Player(" B¹n sö dông  <color=yellow>"..vang2.."<color> Xu ®Ó n©ng cÊp ")
		if GetIdxItemBoxUpdateItem() == 0 then
				idxitem = AddItem(0,b,c,new_d,0,0,0)
				Msg2SubWorld("Chóc mõng "..GetName().." n©ng cÊp thµnh c«ng Ngùa <color=yellow>"..GetNameItemBox(idxitem).." <color>phiªn b¶n míi ")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/NangCapSieuQuangNguaxu.txt", "a");
				if LoginLog then
				write(LoginLog,"["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		end
	else
	    DelEquipIdx(itemidx)
		for p=1,100 do DelItemBox(34) end
		for p=1,3 do DelItemBox(28) end
		for p=1,3 do DelItemBox(29) end
		for p=1,3 do DelItemBox(30) end
		for p=1,6 do DelItemBox(31) end
		SetTask(99,GetTask(99) - vang)
		SetTask(101,GetTask(101) - vang2)
		AddItem(0,b,c,d,0,0,0)
		Msg2Player(" B¹n sö dông  <color=yellow>"..vang2.."<color> Xu ®Ó n©ng cÊp ")
		Msg2SubWorld("Xin chia buån cïng<color=green> "..GetName().."<color> ®· n©ng cÊp ngùa thÊt b¹i...! ")
		Talk(1,"","Th«ng b¸o: <color=green>§æi ThÊt B¹i<color>. X¸c suÊt ®æi trang bÞ:<color=red> 50%")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/NangCapNguaSieuQuangxu.txt", "a");
				if LoginLog then
				write(LoginLog,"That Bai: ["..GetNameItemBox(itemidx).."] "..GetAccount().." - "..GetName().."\n");
				end
				closefile(LoginLog)
	end
-- else
	-- Talk(1,"","Trang bÞ ®Æt vµo kh«ng hîp lÖ, vui lßng kiÓm tra l¹i")
-- end
	
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

function ghepnguapv()
OpenCheckItemBox("GhÐp M¶nh Ngùa Phiªn Vò","§Æt 100 M¶nh Ngùa Phiªn Vò + 10 Lam Thñy Tinh + 300 V¹n vµo","phienvuep")
end


function phienvuep()
if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng 2 x 3 «, vui lßng kiÓm tra l¹i")
	return
	end
	
if GetItemCountBox(277) < 100 then
Talk(1,"","B¹n kh«ng mang ®ñ 100 m·nh Phiªn Vò, kh«ng thÓ th¨ng cÊp ")
return
end

if GetCash() < 3000000 then
Talk(1,"","Kh«ng cã ®ñ 500 v¹n trong hµnh trang, kh«ng thÓ chÕ t¹o !")
return
end

if GetItemCountBox(28) < 10 then
Talk(1,"","Kh«ng cã ®ñ 10 Lam Thuû Tinh, kh«ng thÓ chÕ t¹o ")
return
end
		-- xacsuat = 30
		if GetItemCountBox(277) == 100 and GetItemCountBox(28) == 10 then
		for k=1,10 do DelItemBox(28) end
		Pay(3000000)
		
		sx = RandomNew(1,100)
		if sx <= 30 then
				for k=1,100 do DelItemBox(277) end
				for k=1,10 do DelItemBox(28) end
				Pay(3000000)
						idxitem = AddItem(0,10,7,1,0,0,0)
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o <color=yellow>Thµnh C«ng : <color> <color=pink>"..GetNameItemBox(idxitem).."")
				--inlogeppv("Thanh Cong: ID: [""] - Xac Suat: [""] - Name: ["..GetName().."] - Acc: ["..GetAccount().."] - Time: ["..thoigian.."] \n");
				
		else
				--inlogeppv("That bai: ID: [""] - Xac Suat: [""] - Name: ["..GetName().."] - Acc: ["..GetAccount().."] - Time: ["..thoigian.."] \n");
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o <color=yellow>ThÊt B¹i : <color> <color=pink>Ngùa Phiªn Vò")
				--Talk(2,"","<color=red>Xin chia buån ! Qu¸ tr×nh chÕ t¹o ThÊt B¹i.... X¸c suÊt: "..xacsuat.."%","B¹n bÞ mÊt <color=yellow> 10 Lam Thuû Tinh")
		end
		else
		Talk(1,"","Kh«ng ®ñ nguyªn liÖu ®Æt vµo, vui lßng kiÓm tra l¹i !")
	end	
end



function ghepnguabontieu()
OpenCheckItemBox("GhÐp M¶nh Ngùa B«n Tiªu","§Æt 100 M¶nh Ngùa B«n Tiªu + 10 Tö Thñy Tinh + 300 V¹n vµo","bontieuep")
end


function bontieuep()
if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng 2 x 3 «, vui lßng kiÓm tra l¹i")
	return
	end
	
if GetItemCountBox(276) < 100 then
Talk(1,"","B¹n kh«ng mang ®ñ 100 m·nh B«n Tiªu, kh«ng thÓ th¨ng cÊp ")
return
end

if GetCash() < 3000000 then
Talk(1,"","Kh«ng cã ®ñ 300 v¹n trong hµnh trang, kh«ng thÓ chÕ t¹o !")
return
end

if GetItemCountBox(29) < 10 then
Talk(1,"","Kh«ng cã ®ñ 10 Tö Thuû Tinh, kh«ng thÓ chÕ t¹o ")
return
end
		-- xacsuat = 30
		if GetItemCountBox(276) == 100 and GetItemCountBox(29) == 10 then
		for k=1,10 do DelItemBox(29) end
		Pay(3000000)
		
		sx = RandomNew(1,100)
		if sx <= 70 then
				for k=1,100 do DelItemBox(276) end
				for k=1,10 do DelItemBox(29) end
				Pay(3000000)
				idxitem = AddItem(0,10,6,1,0,0,0)
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o <color=yellow>Thµnh C«ng : <color> <color=pink>"..GetNameItemBox(idxitem).."")
				--inlogeppv("Thanh Cong: ID: [""] - Xac Suat: [""] - Name: ["..GetName().."] - Acc: ["..GetAccount().."] - Time: ["..thoigian.."] \n");
				
		else
				--inlogeppv("That bai: ID: [""] - Xac Suat: [""] - Name: ["..GetName().."] - Acc: ["..GetAccount().."] - Time: ["..thoigian.."] \n");
				Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." chÕ t¹o <color=yellow>ThÊt B¹i : <color> <color=pink>Ngùa B«n Tiªu")
				--Talk(2,"","<color=red>Xin chia buån ! Qu¸ tr×nh chÕ t¹o ThÊt B¹i.... X¸c suÊt: "..xacsuat.."%","B¹n bÞ mÊt <color=yellow> 10 Lam Thuû Tinh")
		end
		else
		Talk(1,"","Kh«ng ®ñ nguyªn liÖu ®Æt vµo, vui lßng kiÓm tra l¹i !")
	end	
end



function inlogeppv(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/CheTaoNguaPhienVu.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
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
soluongyeucau = 100

sl = GetItemCount2(273)
if sl < soluongyeucau then
Talk(1,"","B¹n kh«ng ®ñ "..soluongyeucau.." m·nh ChiÕu D¹ , kh«ng thÓ ®æi ")
return
end

if GetItemCount2(273) >= soluongyeucau then
	for p=1,soluongyeucau do DelAllItem(273) end
	if GetItemCount2(273) == sl - soluongyeucau then
		AddItem(0,10,5,2,0,0,0)
		Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." ®æi "..soluongyeucau.." m·nh ChiÕu D¹ nhËn ®­îc 1 Ngùa ChiÕu D¹ ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Hack ha em")
end
end


function ghepphivan()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end
soluongyeucau = 50

sl = GetItemCount2(274)
if sl < soluongyeucau then
Talk(1,"","B¹n kh«ng ®ñ "..soluongyeucau.." m·nh Phi V©n , kh«ng thÓ ®æi ")
return
end

if GetItemCount2(274) >= soluongyeucau then
	for p=1,soluongyeucau do DelAllItem(274) end
	if GetItemCount2(274) == sl - soluongyeucau then
		AddItem(0,10,5,5,0,0,0)
		Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." ®æi "..soluongyeucau.." m·nh Phi V©n nhËn ®­îc 1 Ngùa Phi V©n ")
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
soluongyeucau = 100
sl = GetItemCount2(655)
if sl < soluongyeucau then
Talk(1,"","B¹n kh«ng ®ñ "..soluongyeucau.." m·nh XÝch Thè, kh«ng thÓ ®æi ")
return
end

if GetItemCount2(655) >= soluongyeucau then
	for p=1,soluongyeucau do DelAllItem(655) end
	if GetItemCount2(655) == sl - soluongyeucau then
		AddItem(0,10,5,7,0,0,0)
		Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." ®æi "..soluongyeucau.." m·nh XÝch Thè nhËn ®­îc 1 Ngùa XÝch Thè .")
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
