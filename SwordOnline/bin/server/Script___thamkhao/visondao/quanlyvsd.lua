Include("\\datascript\\banghoi\\dsruongvsd.lua")
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\visondao\\MangCheTao.txt")


function main()
SayNew("<color=green>Qu¶n Lý Vi S¬n §¶o <color>: Vi s¬n ®¶o lµ n¬i tÝch tô nhiÒu bÝ Èn vµ kho b¸u quý gi¸ trong tÊm b¶n ®å S¬n Hµ X· T¾c ",6,
"NhiÖm Vô Anh Hïng /nhiemvuanhhung",
"Qu¶n lý Boss Vâ L©m Håi øc /quanlyboss",
"ChÕ t¹o trang bÞ hoµng kim /chetaohoangkim",
--"C­êng Hãa An Bang /cuonghoaanbang",
"KiÓm tra sè ng­êi ®ang ë Vi S¬n §¶o /kiemtra",
"Th¨ng CÊp HuyÒn Tinh Nhanh/thangcapht",
"Rêi khái Vi S¬n §¶o /roikhoi",
"Tho¸t./no")
end

function chetaohoangkim()
Talk(1,"","TÝnh n¨ng sÏ ®­îc më vµo 17h00 ngµy 16/02/2022")
end
function chetaohoangkim_()
SayNew("Ng­¬i muèn ta gióp g×? ",3,
"ChÕ t¹o m·nh hoµng kim /chetao_manhhk1",
"§æi trang bÞ hoµng kim /doi_hoangkim",
"Tho¸t./no")
end



function doi_hoangkim()
OpenCheckItemBox("§æi Trang BÞ ","H·y ®Æt M·nh Hoµng Kim vµo","doi_hoangkim1")
end


function doi_hoangkim1()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
		Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng, vui lßng kiÓm tra l¹i")
		return
	end
	chetao_kiemtra_itemkhoa = GetItemBind_CheckBox()
	if (chetao_kiemtra_itemkhoa == -1) then
	Talk(1,"","Kh«ng ®­îc ®Æt trang bÞ vµo !")
	return
	end

	if (chetao_kiemtra_itemkhoa == 1) then
	Talk(1,"","Kh«ng ®­îc ®Æt nguyªn liÖu ®· khãa vµo")
	return
	end

	index = -1
	id = -1
	for i=1,getn(MANGHKMP) do
			id = MANGHKMP[i][1]
			num = MANGHKMP[i][2]
			if GetItemCountBox(id) == num then
				index = i
				break				
			end
	end
	
	
	if id == -1 then
		return
	end	
	
	if index > 0 and index <= getn(MANGHKMP) then
			for k=1,MANGHKMP[index][2] do
					DelItemBox(MANGHKMP[index][1])
			end	
			if GetAllItemCountInCheckBox() == 0 then
					if index <= 9 then
						idxitem = AddItem(MANGHKMP[index][4], MANGHKMP[index][5], MANGHKMP[index][6], random(1,10),0,0,0)
						Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ®· nhËn ®­îc trang bÞ Hoµng Kim - <color=yellow>"..GetNameItemBox(idxitem).."")		
						inlog5("[DoiHKMP] ["..GetNameItemBox(idxitem).."]")
					else
						idxitem = AddItem(MANGHKMP[index][4], MANGHKMP[index][5], MANGHKMP[index][6], MANGHKMP[index][7]+1,0,0,0)
						Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ®· nhËn ®­îc trang bÞ Hoµng Kim - <color=yellow>"..GetNameItemBox(idxitem).."")		
						inlog5("[DoiHKMP] ["..GetNameItemBox(idxitem).."]")						
					end
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","Nguyªn liÖu ®Æt vµo kh«ng ®óng, vui lßng kiÓm tra l¹i")
	end
end





function chetao_manhhk1()
OpenCheckItemBox("KiÓm Tra ChÕ T¹o ","H·y ®Æt nguyªn liÖu vµo ","chetao_manhhk2")
end

function chetao_manhhk2()
chetao_soluong_dopho, chetao_id_dopho = chetao_check_soluong_dopho() 
chetao_soluong_huyentinh, chetao_id_huyentinh = chetao_check_soluong_huyentinh()
chetao_soluong_nguyenlieu = chetao_tongsoluongnguyenlieu()
if chetao_soluong_dopho ~= 1 or chetao_soluong_huyentinh ~= 1 or chetao_soluong_nguyenlieu > 20 then
Talk(1,"","Nguyªn liÖu ®Æt vµo kh«ng ®óng: \n<color=yellow>- "..chetao_soluong_dopho.." / 1 §å Phæ <color>, \n<color=green>- "..chetao_soluong_huyentinh.." / 1 HuyÒn Tinh<color>\n<color=blue>- "..chetao_soluong_nguyenlieu.." / 20 Hç Trî ")
return
end

xs = chetao_tongxacsuat()
SayNew("X¸c suÊt chÕ t¹o thµnh c«ng M·nh Hoµng Kim: <color=yellow>"..xs.."% <color>. Ng­¬i ch¾c ch¾n muèn chÕ t¹o chø?",2,
"Ta muèn chÕ t¹o /chetao_manhhk3",
"§Ó ta kiÓm tra l¹i nguyªn liÖu./no")
end

function chetao_manhhk3()
OpenCheckItemBox("X¸c NhËn ChÕ T¹o","H·y ®Æt nguyªn liÖu vµo ","chetao_manhhk4")
end

function chetao_manhhk4()
chetao_kiemtra_itemkhoa = GetItemBind_CheckBox()
if (chetao_kiemtra_itemkhoa == -1) then
Talk(1,"","Kh«ng ®­îc ®Æt trang bÞ vµo !")
return
end

if (chetao_kiemtra_itemkhoa == 1) then
Talk(1,"","Kh«ng ®­îc ®Æt nguyªn liÖu ®· khãa vµo")
return
end

chetao_soluong_dopho, chetao_id_dopho = chetao_check_soluong_dopho() 
chetao_soluong_huyentinh, chetao_id_huyentinh = chetao_check_soluong_huyentinh()
chetao_soluong_nguyenlieu = chetao_tongsoluongnguyenlieu()

if chetao_soluong_dopho ~= 1 or chetao_soluong_huyentinh ~= 1 or chetao_soluong_nguyenlieu > 20 then
Talk(1,"","Nguyªn liÖu ®Æt vµo kh«ng ®óng: \n<color=yellow>- "..chetao_soluong_dopho.." / 1 §å Phæ <color>, \n<color=green>- "..chetao_soluong_huyentinh.." / 1 HuyÒn Tinh<color>\n<color=blue>- "..chetao_soluong_nguyenlieu.." / 20 Hç Trî ")
return
end

idhuyentinh = MANGCHETAO[chetao_id_dopho][3]
if chetao_id_huyentinh < idhuyentinh then
Talk(1,"","§Ó chÕ t¹o ®å phæ nµy yªu cÇu tèi thiÓu <color=yellow>HuyÒn Tinh "..(idhuyentinh-43).." ")
return
end

if GetCash() < 1000000 then
Talk(1,"","Ng©n l­îng kh«ng ®ñ 100 v¹n l­¬ng, kh«ng thÓ chÕ t¹o ®å phæ ")
return
end

xs = chetao_tongxacsuat()
xacsuat = RandomNew(1,100)

DeleteAllItemInCheckBox()
Pay(1000000)

idmanhghep = MANGCHETAO[chetao_id_dopho][2]
if xacsuat < xs then
		
		idxitem = AddEventItem(idmanhghep)
		Talk(1,"","<color=green>Chóc mõng, b¹n ®· chÕ t¹o thµnh c«ng <color=yellow>"..GetNameItemBox(idxitem).."")
		Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ®· chÕ t¹o thµnh c«ng <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog5("[ThanhCong] ["..GetNameItemBox(idxitem).."] ["..idmanhghep.."] ["..xs.."%]")
		
else
		Talk(1,"","<color=red>Xin chia buån, giai ®o¹n chÕ t¹o thÊt b¹i. X¸c suÊt thµnh c«ng: "..xs.."%")
		inlog5("[ThatBai] ["..idmanhghep.."] ["..xs.."%]")
		
end
end



function chetao_tongsoluongnguyenlieu()
count = 0

count = count + GetItemCountBox(74)
count = count + GetItemCountBox(28)
count = count + GetItemCountBox(29)
count = count + GetItemCountBox(30)
count = count + GetItemCountBox(175)
count = count + GetItemCountBox(174)
count = count + GetItemCountBox(173)

return count
end

function chetao_tongxacsuat()
xs = 0

xs = xs + GetItemCountBox(74) * 5
xs = xs + GetItemCountBox(28) * 1
xs = xs + GetItemCountBox(29) * 1
xs = xs + GetItemCountBox(30) * 1
xs = xs + GetItemCountBox(175) * 0.3
xs = xs + GetItemCountBox(174) * 0.2
xs = xs + GetItemCountBox(173) * 0.1

return xs
end


function chetao_check_soluong_dopho()
count = 0
id = -1
for i=1,getn(MANGCHETAO) do
	if GetItemCountBox(MANGCHETAO[i][1]) > 0 then
		count = count + GetItemCountBox(MANGCHETAO[i][1])
		id = i
	end
end
return count,id
end
function chetao_check_soluong_huyentinh()
count = 0
id = -1
for i=44,53 do
	if GetItemCountBox(i) > 0 then
		count = count + GetItemCountBox(i)
		id = i
	end
end
return count,id
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
SayNew("<color=green>Qu¶n Lý Vi S¬n §¶o <color>: Vi s¬n ®¶o lµ n¬i tÝch tô nhiÒu bÝ Èn vµ kho b¸u quý gi¸ trong tÊm b¶n ®å S¬n Hµ X· T¾c ",4,
"NhËn nhiÖm vô Anh Hïng/nhannv",
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
SayNew("<color=green>Qu¶n Lý Vi S¬n §¶o <color>: Chän lo¹i HuyÒn Tinh cÇn th»ng cÊp: ",10,
"HuyÒn Tinh 1/thangcapht1",
"HuyÒn Tinh 2/thangcapht1",
"HuyÒn Tinh 3/thangcapht1",
"HuyÒn Tinh 4/thangcapht1",
"HuyÒn Tinh 5/thangcapht1",
"HuyÒn Tinh 6/thangcapht1",
"HuyÒn Tinh 7/thangcapht1",
"HuyÒn Tinh 8/thangcapht1",
"HuyÒn Tinh 9/thangcapht1",
"Tho¸t./no")
end


function thangcapht1(nsel)
idht = 44+nsel
num = GetItemCount(idht)

if num < 3 then
Talk(1,"","B¹n kh«ng ®ñ 3 viªn HuyÒn Tinh "..(nsel+1).."")
return
end
soluong = 0
for i=1,floor(num/3) do
				DelItem(idht)
				DelItem(idht)
				DelItem(idht)
				idxitem = AddEventItem(idht+1)
				Msg2Player("Th¨ng  cÊp thµnh c«ng 1 viªn <color=yellow>"..GetNameItemBox(idxitem).."")
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
NewWorld(53,1600,3200)
SetRevPos(19)
KickOutSelf()
end

function nhannv()
ngay = tonumber(date("%d"))
if ngay ~= floor(GetTask(312) / 1000) then
	SetTask(312 , ngay * 1000)
end

if mod(GetTask(312),1000) >= 10 then
Talk(1,"","H«m nay ng­êi ®· lµm ®ñ 10 nhiÖm vô yªu cÇu råi !")
return
end 
	
if GetTask(309) == 0 then
	loai = 1 -- TIEU QUAI
	sx = random(1,10)
	if sx < 4 then
		loai = 2 -- Tieu Qua Theo He
	elseif sx == 10 or sx == 9 then
		loai = 3 -- BOSS VSD
	end
	

	SetTask(309,loai)
	if loai == 1 then
		soluong = RandomNew(50,80)
		SetTask(310, soluong)
		
		Talk(1,"","H·y ®i tiªu diÖt <color=red>"..soluong.." <color>Vi S¬n TiÓu Qu¸i, sau ®ã vÒ ®©y gÆp ta ®Ó phôc mÖnh.")
	elseif loai == 2 then
		i = RandomNew(0,4)
		nguhanh = tennguhanh(i)
		soluong = RandomNew(15,20) -- Fix 15 - 20
		SetTask(310, i * 1000 + soluong)
		
		Talk(1,"","H·y ®i tiªu diÖt <color=red>"..mod(GetTask(310),1000).." <color>Vi S¬n TiÓu Qu¸i <color=yellow>["..nguhanh.."]<color>, sau ®ã vÒ ®©y gÆp ta ®Ó phôc mÖnh.")
	elseif loai == 3 then
		soluong = RandomNew(1,2)
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
					
					mexp = random(2000000,3000000) * soluong
					AddOwnExp(mexp) 
					Msg2Player("B¹n nhËn ®­îc "..mexp.." kinh nghiÖm !")
					--SetTask(484, GetTask(484) + 1)
					--Msg2Player("B¹n nhËn ®­îc <color=green>1 ®iÓm TÝch Lòy VIP")
					sxitem = random(1,10)
					if sxitem == 5 then
						idxitem = AddEventItem(random(28,30))
						Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh <color=yellow>NhiÖm Vô Anh hïng<color=red> may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).." ")
					end
					
					sxitem2 = random(1,100)
					if sxitem2 == 50 then
						idxitem = AddEventItem(74)
						Msg2SubWorld("Chóc mõng ["..GetName().."] hoµn thµnh <color=yellow>NhiÖm Vô Anh hïng<color=red> may m¾n nhËn ®­îc <color=green>"..GetNameItemBox(idxitem).." ")
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
num = 0
idx = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
w,x,y = GetWorldPos()
if w == 24 then
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
	Msg2SubWorld("Chóc mõng "..GetName().." ®· tiªu diÖt Boss Vâ L©m Håi øc vµ mang vÒ cho m×nh <color=yellow>5 R­¬ng B¶o VËt !")
else
	soluong = 5
	Msg2SubWorld("Chóc mõng "..GetName().." ®· tiªu diÖt Boss Vâ L©m Håi øc vµ mang vÒ cho <color=yellow>[Bang Héi - "..bang.."] <color=red> 5 R­¬ng B¶o VËt")
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
				Msg2Player("B¹n nhËn ®­îc 5.000.000 kinh nghiÖm tõ Boss Vâ L©m Håi øc")	
				SetTask(484, GetTask(484) + 5)
				Msg2Player("B¹n nhËn ®­îc <color=green>5 ®iÓm TÝch Lòy VIP")
			end
		end
end	

PlayerIndex = idx
end

function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/CheTaoManhHoangKim.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
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