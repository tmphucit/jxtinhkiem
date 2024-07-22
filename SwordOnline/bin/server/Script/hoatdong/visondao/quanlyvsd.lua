Include("\\datascript\\banghoi\\dsruongvsd.lua")
Include("\\script\\lib\\thuvien.lua")


function main()
SayNew("<color=green>Qu¶n Lý Vi S¬n §¶o <color>: Vi s¬n ®¶o lµ n¬i tÝch tô nhiÒu bÝ Èn vµ kho b¸u quý gi¸ trong tÊm b¶n ®å S¬n Hµ X· T¾c ",4,
"NhiÖm Vô Anh Hïng /nhiemvuanhhung",
--"Qu¶n lý Boss Vâ L©m FC /quanlyboss",
--"C­êng Hãa An Bang /cuonghoaanbang",
"KiÓm tra sè ng­êi ®ang ë Vi S¬n §¶o [10 v¹n]/kiemtra",
--"Th¨ng CÊp HuyÒn Tinh Nhanh/thangcapht",
"Rêi khái Vi S¬n §¶o /roikhoi",
"Tho¸t./no")
end

function cuonghoaanbang()
SayNew("<color=green>Qu¶n Lý Vi S¬n §¶o <color>: vui lßng chän lo¹i trang bÞ muèn c­êng hãa ",5,
"C­êng Hãa An Bang/cuonghoa1",
"Th¨ng cÊp BÝ Kip C­êng Hãa /cuonghoa3",
"KÕt hîp Ngò S¾c B¨ng Tinh/cuonghoa4",
"§æi An Bang Liªn §Êu /cuonghoa2",
"Tho¸t./no")
end

function cuonghoa4()
if GetItemCount(328) > 0 and GetItemCount(329) >0 and GetItemCount(330) > 0 and GetItemCount(331) >0 and GetItemCount(332) >0 and GetCash() >= 2500000 then
	for p=328,332 do DelItem(p) end
	Pay(2500000)
	AddEventItem(333)
	Msg2Player("Chóc mõng b¹n kÕt hîp thµnh c«ng Ngò S¾c B¨ng Tinh")
	Talk(0,"")
else
	Talk(1,"","Ngò S¾c B¨ng Tinh = Kim B¨ng Tinh + Méc B¨ng Tinh + Thæ B¨ng Tinh + Thñy B¨ng Tinh + Háa B¨ng Tinh + 250 v¹n l­îng")
end
end
function cuonghoa2()
OpenCheckItemBox("§æi An Bang","H·y ®Æt 1 An Bang Liªn §Êu vµo ","thangcapabhm2")
end

function thangcapabhm2()
idxitem = GetIdxItemBoxUpdateItem3()

if idxitem == -1 then
Talk(1,"","Sè l­îng v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

if GetGenreItem(idxitem) ~= 0 then
Talk(1,"","VËt phÈm ®Æt vµo kh«ng ph¶i trang bÞ, kh«ng thÓ ®æi !")
Msg2Player("Lçi: VËt phÈm ®Æt vµo kh«ng ph¶i trang bÞ, kh«ng thÓ ®æi !")
return
end

if GetItemCount(28) == 0 then
Talk(1,"","Ng­¬i kh«ng mang theo <color=yellow>Lam Thñy Tinh<color> trong hµnh trang,  kh«ng thÓ c­êng hãa")
return
end
if GetItemCount(29) == 0 then
Talk(1,"","Ng­¬i kh«ng mang theo <color=yellow>Tö Thñy Tinh<color> trong hµnh trang,  kh«ng thÓ c­êng hãa")
return
end
if GetItemCount(30) == 0 then
Talk(1,"","Ng­¬i kh«ng mang theo <color=yellow>Lôc Thñy Tinh<color> trong hµnh trang,  kh«ng thÓ c­êng hãa")
return
end
if GetItemCount(333) == 0 then
Talk(1,"","Ng­¬i kh«ng mang theo <color=yellow>Ngò S¾c B¨ng Tinh<color> trong hµnh trang,  kh«ng thÓ c­êng hãa")
return
end

loaiitem = 0
if GetDetailTypeItem(idxitem) == 4 and GetParticularItem(idxitem) == 18 then
	loaiitem = 1
elseif GetDetailTypeItem(idxitem) == 3 and GetParticularItem(idxitem) == 33 then
	loaiitem = 2
elseif GetDetailTypeItem(idxitem) == 3 and GetParticularItem(idxitem) == 34 then
	loaiitem = 3
elseif GetDetailTypeItem(idxitem) == 9 and GetParticularItem(idxitem) == 18 then
	loaiitem = 4
end

if loaiitem == 0 then
Talk(1,"","Trang bÞ ®Æt vµo kh«ng ph¶i lµ trang bÞ An Bang Liªn §Êu, kh«ng thÓ c­êng hãa")
return
end


detail = GetDetailTypeItem(idxitem)
particu = GetParticularItem(idxitem)
timeitem = GetTimeItemIdx(idxitem)

xacsuat = 15
if loaiitem ~= 0 then
	for p=28,30 do DelItem(p) end
	DelItem(333)
	xs = random(1,100)
	if xs <= xacsuat then
		SetTimeItem(idxitem,0);
		DelEquipIdx(idxitem)
		if loaiitem == 1 then
			idxnew = AddItem(0,4,3,1,0,0,0)
			SetTimeItem(idxnew, timeitem)
			Msg2SubWorld(""..GetName().." ®æi thµnh c«ng trang bÞ: <color=yellow>"..GetNameItemBox(idxnew).."")
		elseif loaiitem == 2 then
			idxnew = AddItem(0,3,3,1,0,0,0)
			SetTimeItem(idxnew, timeitem)
			Msg2SubWorld(""..GetName().." ®æi thµnh c«ng trang bÞ: <color=yellow>"..GetNameItemBox(idxnew).."")
		elseif loaiitem == 3 then
			idxnew = AddItem(0,3,4,1,0,0,0)
			SetTimeItem(idxnew, timeitem)
			Msg2SubWorld(""..GetName().." ®æi thµnh c«ng trang bÞ: <color=yellow>"..GetNameItemBox(idxnew).."")
		elseif loaiitem == 4 then
			idxnew = AddItem(0,9,3,1,0,0,0)
			SetTimeItem(idxnew, timeitem)
			Msg2SubWorld(""..GetName().." ®æi thµnh c«ng trang bÞ: <color=yellow>"..GetNameItemBox(idxnew).."")
		end	
			
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/CuongHoaAnBang.txt", "a");
		if LoginLog then
		write(LoginLog,"DOI THANH CONG: "..GetAccount().." - "..GetName().." - "..thoigian.." \n");
		end
		closefile(LoginLog)

		Talk(0,"")
	else
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/CuongHoaAnBang.txt", "a");
		if LoginLog then
		write(LoginLog,"DOI THAT BAI: "..GetAccount().." - "..GetName().." - "..thoigian.." \n");
		end
		closefile(LoginLog)
		Talk(1,"","<color=red>C­êng hãa thÊt b¹i, x¸c suÊt thµnh c«ng: 25 %")
		Msg2SubWorld("Xin chia buån cïng <color=green>"..GetName()..", <color=red>®æi thÊt b¹i trang bÞ: <color=yellow>"..GetNameItemBox(idxitem).."")
	end
else
Talk(1,"","Trang bÞ ®Æt vµo kh«ng phï hîp, vui lßng kiÓm tra l¹i !")
end
end
function cuonghoa3()
SayNew("<color=green>Qu¶n Lý Vi S¬n §¶o <color>: vui lßng chän lo¹i vËt phÈm muèn th¨ng cÊp ",3,
"Th¨ng cÊp tõ 1 lªn 2 /cuonghoa3_1",
"Th¨ng cÊp tõ 2 lªn 3 /cuonghoa3_1",
"Tho¸t./no")
end

function cuonghoa3_1(nsel)
i = nsel + 1
if i == 1 then
idcu = 406
idmoi = 407
elseif i == 2 then
idcu = 407
idmoi = 408
end
if GetItemCount(idcu) == 0 then
Talk(1,"","Ng­¬i kh«ng mang theo BÝ KÝp Th¨ng CÊp An Bang CÊp "..i..", kh«ng thÓ th¨ng cÊp")
return
end
xacsuat = 0
if GetItemCount(175) > 0 then
xacsuat = 100
nguyenlieu = 175
elseif GetItemCount(174) > 0 then
xacsuat = 60
nguyenlieu = 174
elseif GetItemCount(173) > 0 then
xacsuat = 30
nguyenlieu = 173
end

if xacsuat == 0 then
Talk(1,"","Ng­¬i kh«ng mang theo <color=yellow>Phóc Duyªn Lé <color>, kh«ng thÓ th¨ng cÊp")
return
end

xs = random(1,100)
if xs <= xacsuat then
	DelItem(nguyenlieu)
	DelItem(idcu)
	idxnew = AddEventItem(idmoi)
	Msg2Player("Th¨ng cÊp thµnh c«ng, b¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxnew).."")
	Talk(0,"")
else
Talk(1,"","<color=red>Th¨ng cÊp thÊt b¹i, mÊt toµn bé nguyªn liÖu th¨ng cÊp")
end
end

function cuonghoa1()
OpenCheckItemBox("Th¨ng CÊp An Bang","H·y ®Æt 1 trang bÞ An Bang vµo ","thangcapabhm1")
end

function thangcapabhm1()
idxitem = GetIdxItemBoxUpdateItem3()

if idxitem == -1 then
Talk(1,"","Sè l­îng v­ît qu¸ 1 trang bÞ ")
Msg2Player("Lçi: Sè l­îng v­ît qu¸ 1 trang bÞ ")
return
end

if GetGenreItem(idxitem) ~= 0 then
Talk(1,"","VËt phÈm ®Æt vµo kh«ng ph¶i trang bÞ, kh«ng thÓ ®æi !")
Msg2Player("Lçi: VËt phÈm ®Æt vµo kh«ng ph¶i trang bÞ, kh«ng thÓ ®æi !")
return
end

if GetItemCount(363) == 0 then
Talk(1,"","Ng­¬i kh«ng mang theo <color=yellow>Danh Väng §an<color> trong hµnh trang,  kh«ng thÓ c­êng hãa")
return
end
if GetItemCount(28) == 0 then
Talk(1,"","Ng­¬i kh«ng mang theo <color=yellow>Lam Thñy Tinh<color> trong hµnh trang,  kh«ng thÓ c­êng hãa")
return
end
xacsuat = 0
nguyenlieu = 0
if GetItemCount(408) > 0 then
xacsuat = 15
nguyenlieu = 408
elseif GetItemCount(407) > 0 then
xacsuat = 10
nguyenlieu = 407
elseif GetItemCount(406) > 0 then
xacsuat = 5
nguyenlieu = 406
end
if xacsuat == 0 then
Talk(1,"","Ng­¬i kh«ng mang theo <color=yellow>BÝ Kip Th¨ng CÊp An Bang<color>, kh«ng thÓ c­êng hãa")
return
end
loaiitem = 0
tenanbang = ""
if GetDetailTypeItem(idxitem) == 4 and GetParticularItem(idxitem) == 3 then
	loaiitem = 1
	tenanbang = "An bang B¨ng Tinh Th¹ch H¹ng Liªn"
elseif GetDetailTypeItem(idxitem) == 3 and GetParticularItem(idxitem) == 3 then
	loaiitem = 2
	tenanbang = "An bang Kª HuyÕt Th¹ch Giíi ChØ "
elseif GetDetailTypeItem(idxitem) == 3 and GetParticularItem(idxitem) == 4 then
	loaiitem = 3
	tenanbang = "An bang Cóc Hoa Th¹ch ChØ Hoµn"
elseif GetDetailTypeItem(idxitem) == 9 and GetParticularItem(idxitem) == 3 then
	loaiitem = 4
	tenanbang = "An Bang §iÒn Hoµng Th¹ch Ngäc Béi"
end

if loaiitem == 0 then
Talk(1,"","Trang bÞ ®Æt vµo kh«ng ph¶i lµ trang bÞ An Bang cã thÓ c­êng hãa")
return
end


detail = GetDetailTypeItem(idxitem)
particu = GetParticularItem(idxitem)
timeitem = GetTimeItemIdx(idxitem)
levelitem = GetLevelItem(idxitem)
if levelitem == 10 then
Talk(1,"","CÊp ®é ®¹t tèi ®a, kh«ng thÓ th¨ng cÊp")
return
end

levelnew = levelitem + 1
if levelnew > 10 then
levelnew = 10
end
if loaiitem ~= 0 then
	DelItem(nguyenlieu)
	DelItem(363)
	DelItem(28)
	xs = random(1,100)
	if xs <= xacsuat then
		SetTimeItem(idxitem,0);
		DelEquipIdx(idxitem)
		idxnew = AddItem(0,detail,particu,levelnew,0,0,0)
		SetTimeItem(idxnew, timeitem)
		Msg2SubWorld(""..GetName().." c­êng hãa thµnh c«ng trang bÞ: <color=yellow>"..GetNameItemBox(idxnew).."")
		
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/CuongHoaAnBang.txt", "a");
		if LoginLog then
		write(LoginLog,"Thanh Cong: "..GetAccount().." - "..GetName().." - "..detail.." - "..particu.." - "..levelnew.." - "..thoigian.." \n");
		end
		closefile(LoginLog)

		Talk(0,"")
	else
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/CuongHoaAnBang.txt", "a");
		if LoginLog then
		write(LoginLog,"That Bai: "..GetAccount().." - "..GetName().." - "..detail.." - "..particu.." - "..levelitem.." - "..thoigian.." \n");
		end
		closefile(LoginLog)
		Msg2SubWorld(""..GetName().." C­êng hãa trang bÞ "..tenanbang.." [CÊp "..levelitem.."] lªn [CÊp "..levelnew.."] thÊt b¹i, xin chia buån !")
		Talk(1,"","<color=red>C­êng hãa thÊt b¹i, x¸c suÊt thµnh c«ng: "..xacsuat.." %")
	end
else
Talk(1,"","Trang bÞ ®Æt vµo kh«ng phï hîp, vui lßng kiÓm tra l¹i !")
end
end

function quanlyboss()
SayNew("<color=green>Qu¶n Lý Vi S¬n §¶o <color>: Vi s¬n ®¶o lµ n¬i tÝch tô nhiÒu bÝ Èn vµ kho b¸u quý gi¸ trong tÊm b¶n ®å S¬n Hµ X· T¾c ",3,
"KiÓm tra sè l­îng R­¬ng B¶o VËt /kiemtrattt",
"Ta muèn rót R­¬ng B¶o VËt /rutttt",
"Tho¸t./no")
end

function kiemtrattt()
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng­¬i kh«ng cã Bang Héi th× kh«ng cÇn ph¶i nãi chuyÖn víi ta ®©u !")
return
end
if vt == 0 then
	Talk(1,"","Bang héi cña ng­¬i kh«ng cã ký göi R­¬ng B¶o VËt ë chç ta !")
else
	Talk(1,"","HiÖn t¹i cßn <color=pink>"..DSRUONG[vt][2].." viªn R­¬ng B¶o VËt<color> ký göi t¹i ®©y !")
end

end
function checktontai(bang)
for i=1,getn(DSRUONG) do 
	if DSRUONG[i][1] == bang then
		return i
	end
end
return 0
end
function rutttt()
	if CheckFreeBoxItem(4,144,1,1) == 0 then
		Talk(1,"","R­¬ng ®· ®Çy, kh«ng thÓ rót")
		return
	end
			
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng­¬i kh«ng cã Bang Héi th× kh«ng cÇn ph¶i nãi chuyÖn víi ta ®©u !")
return
end

if GetTongFigure() == 3 then
if vt == 0 then
	Talk(1,"","Bang héi cña ng­¬i kh«ng cã ký göi R­¬ng B¶o VËt ë chç ta !")
else
	if DSRUONG[vt][2] <= 0 then
		Talk(1,"","<color=green>Qu¶n Lý Phong L¨ng §é <color>: HiÖn t¹i ta kh«ng cã gi÷ viªn R­¬ng B¶o VËt nµo cña nhµ ng­¬ c¶ !")
	else
		num = 0
		for i=1,DSRUONG[vt][2] do
			if CheckFreeBoxItem(4,144,1,1) == 0 then
				break
			end
			num = num + 1
			AddEventItem(144)
			DSRUONG[vt][2] = DSRUONG[vt][2] - 1 
			Msg2Player("B¹n nhËn ®­îc 1 <color=pink>R­¬ng B¶o VËt.")	
		end
		if num ~= 0 then
			Msg2SubWorld(""..bang.."- <color=yellow>"..GetName().."<color=red> ®· rót <color=pink>"..num.." viªn R­¬ng B¶o VËt <color=red>ký göi t¹i Qu¶n Lý Vi S¬n §¶o !")
		else
			Talk(1,"","R­¬ng ®Çy råi mµ cßn rót hoµi vËy !")
		end
		BANG = TaoBang(DSRUONG,"DSRUONG")
		LuuBang("datascript/banghoi/dsruongvsd.lua",BANG)
		SaveData()
	end
end
else
	Talk(1,"","ChØ cã Bang Chñ míi cã thÓ rót R­¬ng B¶o VËt §­îc !")
end


end

function nhiemvuanhhung()
SayNew("<color=green>Qu¶n Lý Vi S¬n §¶o <color>: Vi s¬n ®¶o lµ n¬i tÝch tô nhiÒu bÝ Èn vµ kho b¸u quý gi¸ trong tÊm b¶n ®å S¬n Hµ X· T¾c ",5,
"NhËn nhiÖm vô Tiªu diÖt TiÓu Qu¸i/nhannv",
"NhËn nhiÖm vô Truy S¸t §¹o TÆc/nhannv",
"Tr¶ nhiÖm vô Anh Hïng/tranhiemvu",
"Hñy nhiÖm vô Anh Hïng /huynv",
"Tho¸t./no")
end
function huynv()
SayNew("<color=green>Qu¶n Lý Vi S¬n §¶o <color>: Ng­¬i cã ch¾c ch¾n tèn <color=yellow>50 v¹n l­îng<color> ®Ó hñy nhiÖm vô kh«ng?",2,
"Ta muèn hñy nhiÖm vô/huynv1",
"Ta sÏ cè g¾ng lµm/no")
end
function huynv1()
if GetCash() < 500000 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 50 v¹n l­îng, kh«ng thÓ hñy nhiÖm vô !")
return
end

Pay(500000)
SetTask(309,0)
SetTask(310,0)
SetTask(311,0)
Msg2Player("Hñy nhiÖm vô thµnh c«ng")
end

function thangcapht()
SayNew("<color=green>Qu¶n Lý Vi S¬n §¶o <color>: Chän lo¹i HuyÒn Tinh cÇn th»ng cÊp: ",3,
"HuyÒn Tinh 1/thangcapht1",
"HuyÒn Tinh 2/thangcapht2",
--"HuyÒn Tinh 3/thangcapht3",
--"HuyÒn Tinh 4/thangcapht4",
"Tho¸t./no")
end

ht1 = 44
ht2 = 45
ht3 = 46
ht4 = 47
ht5 = 48

function thangcapht1()
num = GetItemCount(ht1)
vang = GetCash()

if num < 3 then
Talk(1,"","B¹n kh«ng ®ñ 3 viªn HuyÒn Tinh 1")
return
end
for i=1,num do
	if GetItemCount(ht1) >= 3 then
		if GetCash() >= 10000 then
			xs = random(1,100)
			Pay(10000)
			if xs < 50 then
				DelItem(ht1)
				DelItem(ht1)
				DelItem(ht1)
				AddEventItem(ht2)
				Msg2Player("Th¨ng  cÊp thµnh c«ng 1 viªn HuyÒn Tinh 2")
			else
				DelItem(ht1)
				Msg2Player("Th¨ng cÊp thÊt b¹i, mÊt 1 viªn HuyÒn Tinh 1")
			end	
		else		
			Msg2Player("B¹n kh«ng ®ñ 10000 l­îng !")
		end
	end
end


end


function thangcapht2()
num = GetItemCount(ht2)
vang = GetCash()

if num < 3 then
Talk(1,"","B¹n kh«ng ®ñ 3 viªn HuyÒn Tinh 2")
return
end
for i=1,num do
	if GetItemCount(ht2) >= 3 then
		if GetCash() >= 20000 then
			xs = random(1,100)
			Pay(20000)
			if xs < 50 then
				DelItem(ht2)
				DelItem(ht2)
				DelItem(ht2)
				AddEventItem(ht3)
				Msg2Player("Th¨ng  cÊp thµnh c«ng 1 viªn HuyÒn Tinh 3")
			else
				DelItem(ht2)
				Msg2Player("Th¨ng cÊp thÊt b¹i, mÊt 1 viªn HuyÒn Tinh 2")
			end	
		else		
			Msg2Player("B¹n kh«ng ®ñ 20000 l­îng !")
		end
	end
end


end

function thangcapht3()
num = GetItemCount(ht3)
vang = GetCash()

if num < 3 then
Talk(1,"","B¹n kh«ng ®ñ 3 viªn HuyÒn Tinh 3")
return
end
for i=1,num do
	if GetItemCount(ht3) >= 3 then
		if GetCash() >= 3000 then
			xs = random(1,100)
			Pay(3000)
			if xs < 20 then
				DelItem(ht3)
				DelItem(ht3)
				DelItem(ht3)
				AddEventItem(ht4)
				Msg2Player("Th¨ng  cÊp thµnh c«ng 1 viªn HuyÒn Tinh 4")
			else
				DelItem(ht3)
				Msg2Player("Th¨ng cÊp thÊt b¹i, mÊt 1 viªn HuyÒn Tinh 3")
			end	
		else		
			Msg2Player("B¹n kh«ng ®ñ 3000 l­îng !")
		end
	end
end


end

function thangcapht4()
num = GetItemCount(ht4)
vang = GetCash()

if num < 3 then
Talk(1,"","B¹n kh«ng ®ñ 3 viªn HuyÒn Tinh 4")
return
end
for i=1,num do
	if GetItemCount(ht4) >= 3 then
		if GetCash() >= 12000 then
			xs = random(1,100)
			Pay(12000)
			if xs < 30 then
				DelItem(ht4)
				DelItem(ht4)
				DelItem(ht4)
				AddEventItem(ht5)
				Msg2Player("Th¨ng  cÊp thµnh c«ng 1 viªn HuyÒn Tinh 5")
			else
				DelItem(ht4)
				Msg2Player("Th¨ng cÊp thÊt b¹i, mÊt 1 viªn HuyÒn Tinh 4")
			end	
		else		
			Msg2Player("B¹n kh«ng ®ñ 12000 l­îng !")
		end
	end
end


end


function no()
end

function roikhoi()
SayNew("<color=green>Qu¶n Lý Vi S¬n §¶o <color>: Ng­¬i ch¾c ch¾n muèn rêi khái ®©y chø ?",2,
"Ta ch¾c ch¾n muèn rêi khái /roikhoi2",
"Ta ch­a muèn xuèng ®¶o /no")
end

function roikhoi2()
Msg2World("§¹i hiÖp [<color=yellow>"..GetName().."<color=red>] ®· rêi khëi Vi S¬n §¶o !")
if GetTask(534) == 100 then
NewWorld(4,200*8,200*16)
SetRevPos(41)
else
NewWorld(53,200*8,200*16)
SetRevPos(19)
end
SetPKState(0)
BlockPKState(0)
SetFightState(0)
--AddSkillEffect(504,1,5*18)

end

function nhannv(nsel)
loainhiemvu = nsel + 1
ngay = tonumber(date("%d"))
if ngay ~= floor(GetTask(312) / 1000) then
	SetTask(312 , ngay * 1000)
end

if mod(GetTask(312),1000) >= 10 then
Talk(1,"","H«m nay ng­êi ®· lµm ®ñ 10 nhiÖm vô yªu cÇu råi !")
return
end 
	
if GetTask(309) == 0 then
	if loainhiemvu == 1 then
		loai = RandomNew(1,2) -- TIEU QUAI
	else
		loai = 3
	end
	

	SetTask(309,loai)
	if loai == 1 then
		soluong = RandomNew(100,125)
		SetTask(310, soluong)
		
		Talk(1,"","H·y ®i tiªu diÖt <color=red>"..soluong.." <color>Vi S¬n TiÓu Qu¸i, sau ®ã vÒ ®©y gÆp ta ®Ó phôc mÖnh.")
	elseif loai == 2 then
		i = RandomNew(0,4)
		nguhanh = tennguhanh(i)
		soluong = RandomNew(20,25) -- Fix 15 - 20
		SetTask(310, i * 1000 + soluong)
		
		Talk(1,"","H·y ®i tiªu diÖt <color=red>"..mod(GetTask(310),1000).." <color>Vi S¬n TiÓu Qu¸i <color=yellow>["..nguhanh.."]<color>, sau ®ã vÒ ®©y gÆp ta ®Ó phôc mÖnh.")
	elseif loai == 3 then
		soluong = RandomNew(1,3)
		SetTask(310, soluong)
		Talk(1,"","H·y ®i tiªu diÖt <color=red>"..soluong.." <color>Boss Vi S¬n §¹o TÆc, sau ®ã vÒ ®©y gÆp ta ®Ó phôc mÖnh.")
	end
	SetTask(312, GetTask(312) + 1)
	Msg2Player("<color=pink>NhiÖm vô thø: "..mod(GetTask(312),1000).." / 10")
else
	Talk(1,"","Ng­¬i ®ang lµm nhiÖm vô, kh«ng thÓ nhËn thªm n÷a!")
end
end

function tranhiemvu()

loai = GetTask(309)
soluong = GetTask(310)
danglam = GetTask(311)
if loai == 0 then
Talk(1,"","Ta nhí lµ ®©u cã giao nhiÖm vô g× cho nhµ ng­¬i ®©u, xem l¹i ®Çu ãc cña m×nh ®i tiÓu tö µ ")
return
end

	if loai == 1 then
				if danglam >= soluong then
					SetTask(309,0)
					SetTask(310,0)
					SetTask(311,0)
					
					mexp = random(2000000,3000000)
					AddOwnExp(mexp) 
					Msg2Player("B¹n nhËn ®­îc "..mexp.." kinh nghiÖm !")
					--SetTask(484, GetTask(484) + 1)
				--	Msg2Player("B¹n nhËn ®­îc <color=green>1 ®iÓm TÝch Lòy VIP")
				else
					Talk(1,"","NhiÖm vô ®ang lµm: <color=yellow>Tiªu DiÖt TiÓu Qu¸i<color>\nTiÕn tr×nh: <color=green>"..danglam.." <color>/ "..soluong.." con\nKiÓm tra: <color=red>Ch­a Hoµn Thµnh")
				end
	elseif loai == 2 then
				if danglam >= mod(soluong,1000) then
					SetTask(309,0)
					SetTask(310,0)
					SetTask(311,0)
					
					mexp = random(2000000,3000000)
					AddOwnExp(mexp) 
					Msg2Player("B¹n nhËn ®­îc "..mexp.." kinh nghiÖm !")
					
				--	SetTask(484, GetTask(484) + 1)
				--	Msg2Player("B¹n nhËn ®­îc <color=green>1 ®iÓm TÝch Lòy VIP")
		
				else
					Talk(1,"","NhiÖm vô ®ang lµm: <color=yellow>Tiªu DiÖt TiÓu Qu¸i "..tennguhanh(floor(GetTask(310)/1000)).."<color>\nTiÕn tr×nh: <color=green>"..danglam.." <color>/ "..mod(soluong,1000).." con\nKiÓm tra: <color=red>Ch­a Hoµn Thµnh")
				end
	elseif loai == 3 then
			if danglam >= soluong then
					SetTask(309,0)
					SetTask(310,0)
					SetTask(311,0)
					
					mexp = random(4000000,5000000)
					AddOwnExp(mexp) 
					Msg2Player("B¹n nhËn ®­îc "..mexp.." kinh nghiÖm !")
				--	SetTask(484, GetTask(484) + 1)
				--	Msg2Player("B¹n nhËn ®­îc <color=green>1 ®iÓm TÝch Lòy VIP")
					sxitem = RandomNew(1,100)
					if  mod(sxitem,10) == 0 then -- 10%
						idxitem = AddEventItem(random(28,31))
						Msg2SubWorld("Chóc mõng "..GetName().." hoµn thµnh nhiÖm vô Anh Hïng may m¾n nhËn ®­îc: <color=green>"..GetNameItemBox(idxitem).." ")
					end
					sxitem = RandomNew(1,100)
					if  mod(sxitem,20) == 0 then -- 5%
						idxitem = AddEventItem(666)
						Msg2SubWorld("Chóc mõng "..GetName().." hoµn thµnh nhiÖm vô Anh Hïng may m¾n nhËn ®­îc: <color=green>"..GetNameItemBox(idxitem).." ")
					end
					
					sxbk = RandomNew(1,100)
					if  mod(sxbk,30) == 0 then -- 3%
						idxitem = AddEventItem(random(426,565))
						Msg2SubWorld("Chóc mõng "..GetName().." hoµn thµnh nhiÖm vô Anh Hïng may m¾n nhËn ®­îc: <color=pink>§å Phæ - "..GetNameItemBox(idxitem).." ")
					end
				else
					Talk(1,"","NhiÖm vô ®ang lµm: <color=yellow>Tiªu DiÖt Boss Vi S¬n §¹o TÆc<color>\nTiÕn tr×nh: <color=green>"..danglam.." <color>/ "..soluong.." con\nKiÓm tra: <color=red>Ch­a Hoµn Thµnh")
				end
	end
end




function tennguhanh(num)
if num == 0 then
return "HÖ Kim"
elseif num == 1 then
return "HÖ Méc"
elseif num == 2 then
return "HÖ Thñy"
elseif num == 3 then
return "HÖ Háa"
else 
return "HÖ Thæ"
end
end
function kiemtra()
if GetCash() < 100000 then
Talk(1,"","Ng­¬i kh«ng ®ñ 10 v¹n, kh«ng thÓ kiÓm tra !")
return
end
Pay(100000)
num = 0
idx = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
w,x,y = GetWorldPos()
if w == 24 or w == 287 then
num = num + 1
end
end
PlayerIndex = idx
Msg2Player("Sè l­îng ng­êi ch¬i ®ang ë Vi S¬n §¶o : <color=green>"..num.." ng­êi !")


end


function OnDeath()
name = GetName()
bang = GetTongName()
idx = PlayerIndex
h,m,s = GetTimeNew()
inlog6(""..GetTongName().." - "..GetAccount().." - "..GetName().."")
w1,x1,y1 = GetWorldPos()
ngay = tonumber(date("%d"))


if GetTongName() == "" then
	for p=1,5 do AddEventItem(144) end
	Msg2SubWorld("Chóc mõng "..GetName().." ®· tiªu diÖt Boss Vâ L©m FC vµ mang vÒ cho m×nh <color=yellow>5 R­¬ng B¶o VËt !")
else
	soluong = 5
	Msg2SubWorld("Chóc mõng "..GetName().." ®· tiªu diÖt Boss Vâ L©m FC vµ mang vÒ cho <color=yellow>[Bang Héi - "..bang.."] <color=red> 5 R­¬ng B¶o VËt")
	if getn(DSRUONG) == 0 then
		DSRUONG[getn(DSRUONG)+1] = {bang,soluong,"144"}
	else
		vt = checktontai(bang)
		if  vt == 0 then
			DSRUONG[getn(DSRUONG)+1] = {bang,soluong,"144"}
		else
			DSRUONG[vt][2] = DSRUONG[vt][2] + soluong
		end
	end
	BANG = TaoBang(DSRUONG,"DSRUONG")
	LuuBang("datascript/banghoi/dsruongvsd.lua",BANG)
	
		for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			w,x,y = GetWorldPos()
			if w == w1 then
				AddOwnExp(5000000)
				Msg2Player("B¹n nhËn ®­îc 5.000.000 kinh nghiÖm tõ Boss Vâ L©m FC")	
				SetTask(484, GetTask(484) + 5)
				Msg2Player("B¹n nhËn ®­îc <color=green>5 ®iÓm TÝch Lòy VIP")
			end
		end
end	

PlayerIndex = idx
end

function inlog6(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/BOSSVLTK.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function OnDrop()
end