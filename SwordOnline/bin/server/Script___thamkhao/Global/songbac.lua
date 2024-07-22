Include("\\script\\lib\\thuvien.lua")
Include("\\datascript\\songbac\\shopbanhang.lua")
Include("\\datascript\\songbac\\shopkimnguyenbao.lua")
Include("\\datascript\\songbac\\tienhangkimnguyenbao.lua")
Include("\\datascript\\songbac\\tienhang.lua")

MatHang = {
{"Vâ L©m MËt TÞch",0}, -- 1
{"TÈy Tñy Kinh",1},
{"Lam Thñy Tinh",28},
{"Tö Thñy Tinh",29},
{"Lôc Thñy Tinh",30},
{"Tinh Hång B¶o Th¹ch",31},
{"Tiªn Th¶o Lé 1H ",117}, -- 7
{"N÷ Nhi Hång 1H ",118},
{"Tiªn Th¶o Lé 3H ",119},
{"N÷ Nhi Hång 3H ",115},
{"Tiªn Th¶o Lé 6H ",120},
{"N÷ Nhi Hång 6H ",116},
{"X¸ Lîi Kim §¬n",59},
}
function main()
SayNew("<color=red>Giao DÞch Viªn<color>: Ng­¬i cÇn ta gióp g× ?",6,
"Ta muèn B¸n Hµng  /banhang",
"Ta muèn Mua Hµng /muahang",
"Ta muèn NhËn TiÒn ®· b¸n ®­îc /nhantien",
"Ta muèn rót VËt PhÈm ®· treo/nhanitem",
"Giao DÞch Kim Nguyªn B¶o /giaodichknb",
"Tho¸t./no")
end

function giaodichknb()
SayNew("<color=red>Giao DÞch Viªn<color>: Ng­¬i cÇn ta gióp g× ?",5,
"B¸n hÕt Kim Nguyªn B¶o trong hµnh trang/banknb",
"T×m Kim Nguyªn B¶o víi gi¸ thÊp nhËt /muaknb",
"Rót tÊt c¶ ng©n l­îng b¸n ®­îc /nhantienknb",
"Rót tÊt c¶ Kim Nguyªn B¶o ®ang rao b¸n/rutknb",
"Tho¸t./no")
end


function check_shop_knb()
num = 0
min = 0
if getn(ShopKNB) ~= 0 then
	for i=1,getn(ShopKNB) do
		if ShopKNB[i][1] ~= 0 then
				if (min == 0) then
					min = ShopKNB[i][3]
					num = i
				elseif min > ShopKNB[i][3] then
					min = ShopKNB[i][3]
					num = i
				end	
		end
	end
end
return num
end

function muaknb()
vitrishop = check_shop_knb()
if vitrishop == 0 then
Talk(1,"","HiÖn t¹i ch­a cã cöa hµng nµo b¸n mÆt hµng nµy !")
return
end

SetTaskTemp(44,vitrishop)
SayNew("Giao DÞch Viªn:\nLo¹i mÆt hµng: <color=green>Kim Nguyªn B¶o <color>\nGi¸ b¸n: <color=yellow>"..floor(ShopKNB[vitrishop][3]/10000).." v¹n "..mod(ShopKNB[vitrishop][3],10000).." l­îng / 1 c¸i ",2,
"Ta ®ång ý mua mÆt hµng nµy /muaknb_1",
"Ta sÏ thay ®æi sè l­îng cho phï hîp/no")
end

function muaknb_1()
name = ShopKNB
if GetTaskTemp(44) == 0 then
Talk(1,"","Lçi: kh«ng t×m thÊy shop !")
return
end
vt = GetTaskTemp(44)
if name[vt][2] < 1 then
Talk(1,"","Lçi: Sè l­îng trong cöa hµng ®· hÕt!")
return
end

cash = GetCash()
phi = name[vt][3]
oldnum = name[vt][2]
if GetCash() >= phi then
	Pay(phi)
	if GetCash() == cash - phi then
		name[vt][2] = name[vt][2] - 1
		if name[vt][2] < 0 then
		Talk(1,"","Lçi nghiªm träng, b¸o gm gÊp !")		
		return
		end
		
		if name[vt][2] == oldnum - 1 then
			vttien = check_tienhangknb(name[vt][1])
			if vttien == 0 then
				tienhangknb[getn(tienhangknb)+1] = {name[vt][1],phi}
			else
				tienhangknb[vttien][2] = tienhangknb[vttien][2] + phi
			end

			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SongBac/MuaHangKNB.txt", "a");
			if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." - "..name[vt][1].." - Gia: "..name[vt][3].." -- Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			if name[vt][2] == 0 then
				name[vt][1] = 0	
			end
			AddEventItem(17)
			Msg2Player("B¹n nhËn ®­îc <color=green>Kim NguyÖn B¶o")
			--Msg2SubWorld("<color=green>[Shop Offline] <color=red> "..GetName().." ®· mua vËt phÈm Kim Nguyªn B¶o ë Shop Offline.")
			BANG = TaoBang(tienhangknb,"tienhangknb")
			LuuBang("datascript/songbac/tienhangkimnguyenbao.lua",BANG)
			BANG = TaoBang(ShopKNB,"ShopKNB")
			LuuBang("datascript/songbac/shopkimnguyenbao.lua",BANG)
			SaveData()

			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","B¹n kh«ng ®ñ <color=yellow>"..phi.." Vµng<color> ®Ó mua mãn hµng nµy !")
end  
end
function check_tienhangknb(iid)
num = 0
for i=1,getn(tienhangknb) do
	if iid == tienhangknb[i][1] then
		num = i
		break
	end
end
return num
end

function kiemtranhantienknb()
num = 0
for i=1,getn(tienhangknb) do
if GetUUID() == tienhangknb[i][1] then
num = i
break
end
end
return num
end

function nhantienknb()
if getn(tienhangknb) == 0 then
Talk(1,"","HiÖn t¹i ch­a cã danh s¸ch nhËn tiÒn!")
return
end
vt = kiemtranhantienknb()
if vt == 0 then
Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch nhËn tiÒn cña cöa hµng !")
return
end
if tienhangknb[vt][2] == 0 then
Talk(1,"","B¹n kh«ng cã tiÒn ®Ó nhËn!")
return
end

SayNew("<color=red>Giao DÞch Viªn<color>: HiÖn t¹i ng­¬i ®ang cã <color=yellow>"..tienhangknb[vt][2].." l­îng<color>. Ng­¬i cã muèn rót ra kh«ng?",2,
"Ta muèn rót hÕt tiÒn /nhantienknb2",
"Tho¸t./no")
end
function nhantienknb2()
if getn(tienhangknb) == 0 then
Talk(1,"","HiÖn t¹i ch­a cã danh s¸ch nhËn tiÒn !")
return
end
vt = kiemtranhantienknb()
if tienhangknb[vt][2] == 0 then
Talk(1,"","B¹n kh«ng cã tiÒn ®Ó nhËn!")
return
end
tien = GetCash()
tiennhan = tienhangknb[vt][2]
if GetUUID() == tienhangknb[vt][1] then
	tienhangknb[vt][2] = 0
	if tienhangknb[vt][2] == 0 then
		Earn(tiennhan)
		Msg2Player("B¹n nhËn ®­îc <color=yellow>"..tiennhan.." l­îng !")
		
		BANG = TaoBang(tienhangknb,"tienhangknb")
		LuuBang("datascript/songbac/tienhangkimnguyenbao.lua",BANG)
		SaveData()
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SongBac/NhanTienKNB.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetUUID().." - Nhan Tien: "..tiennhan.." Luong- Tien Moi: "..GetCash().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
Talk(1,"","Lçi: Kh«ng trïng tªn trong danh s¸ch !")
end
end

function rutknb()
num = CheckViTriCanRut()
if num == 0 then
Talk(1,"","H×nh nh­ ng­¬i kh«ng cã bµy b¸n Kim Nguyªn B¶o ë chç ta !")
return
end

if ShopKNB[num][1] ~= GetUUID() then
Talk(1,"","Lçi tµi kho¶n, liªn hÖ admin ®Ó xö lý !")
return
end
soluong = ShopKNB[num][2]
if  soluong == 0 then
Talk(1,"","Lçi sè l­îng item, liªn hÖ admin ®Ó xö lý !")
return
end

for i=1,soluong do
	if CheckFreeBoxItem(4,1,1,1) ~= 0 then
		AddEventItem(17)
		ShopKNB[num][2] = ShopKNB[num][2] - 1
		Msg2Player("B¹n nhËn ®­îc 1 Kim Nguyªn B¶o. Sè l­îng cßn l¹i trong Shop: <color=yellow>"..ShopKNB[num][2].." viªn")
	end
end
if ShopKNB[num][2] == 0 then
ShopKNB[num][1] = 0
ShopKNB[num][3] = 0
end

		BANG = TaoBang(ShopKNB,"ShopKNB")
		LuuBang("datascript/songbac/shopkimnguyenbao.lua",BANG)
		SaveData()
		
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SongBac/NhanVatPhamKNB.txt", "a");
		if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." - Nhan: "..soluong.." - Con: "..ShopKNB[num][2].." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		
KickOutSelf()
end

function CheckViTriCanRut()
if getn(ShopKNB) == 0 then
return 0
end
for i=1,getn(ShopKNB) do
	if ShopKNB[i][1] == GetUUID() then
		return i
	end
end
return 0
end
function banknb()
OpenStringBox(2,"NhËp gi¸ tiÒn 1 viªn","okbanknb2")
end
function okbanknb2(num3)
num4 = tonumber(num3)
if num4 <= 0 or num4 == "" or num4 > 2000000000 then
Talk(1,"","Kh«ng ®­îc ®Ó trèng!")
return
end
		soluong = GetItemCount(17)
	if GetItemCount(17) > 0 then
		vitrishop = CheckViTriKNB()
		for i=1,soluong do DelItem(17) end
		if vitrishop == 0 then
			ShopKNB[getn(ShopKNB)+1] = {GetUUID(), soluong, num4}
		else
			ShopKNB[vitrishop][1] = GetUUID()
			ShopKNB[vitrishop][2] = soluong
			ShopKNB[vitrishop][3] = num4
		end
		BANG = TaoBang(ShopKNB,"ShopKNB")
		LuuBang("datascript/songbac/shopkimnguyenbao.lua",BANG)
		SaveData()
		
		Msg2SubWorld("<color=green>[Shop Offline] <color=red> "..GetName().." ®· treo b¸n <color=pink>"..soluong.." Kim Nguyªn B¶o <color=red>víi gi¸ <color=yellow>"..floor(num4/10000).." v¹n "..mod(num4,10000).." l­îng  / 1 viªn")
		Msg2SubWorld("<color=green>§Ó mua hµng, c¸c b¹n ®Õn gÆp Giao DÞch Viªn ®Ó t×m kiÕm vËt phÈm cÇn mua !")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SongBac/BanKimNguyenBao.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetUUID().." - Ban: "..soluong.." - Gia: "..num4.." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","Ng­¬i kh«ng mang theo Kim Nguyªn B¶o, kh«ng thÓ b¸n.")
	end
end
function CheckViTriKNB()
	if getn(ShopKNB) == 0 then
		return 0
	end

	for i=1,getn(ShopKNB) do
		if ShopKNB[i][1] == 0 then
			return i
		end
	end
	return 0
end

function nhanitem()
SayNew("Giao DÞch Viªn:\nSè l­îng muèn rót: <color=red>"..GetTaskTemp(45).."<color> \nLo¹i mÆt hµng: <color=green>"..checkhanghoa(GetTaskTemp(47)).."",4,
"NhËp sè l­îng muèn rót/nhanitem_1",
"Chän mÆt hµng/nhanitem_2",
"T×m kiÕm cöa hµng cã gi¸ b¸n cao nhÊt cña m×nh/nhanitem_3",
"Tho¸t./no")
end


function nhanitem_1()
OpenStringBox(2,"NhËp sè l­îng","oknhanitem_1")
end
function oknhanitem_1(num)
num2 = tonumber(num)
if num2 <= 0 or num2 == "" or num2 > 2000000000 then
Talk(1,"","Kh«ng ®­îc ®Ó trèng!")
return
end
SetTaskTemp(45,num2)
Msg2Player("B¹n ®· nhËp sè l­îng: <color=yellow>"..num2.." ")
nhanitem()
end


function nhanitem_2()
SayNew("<color=red>Giao DÞch Viªn<color>: Chän mãn hµng cÇn b¸n?",3,
"VËt phÈm Hç Trî LuyÖn C«ng /nhanitem_1_1",
"VËt phÈm Quý /nhanitem_1_1",
"Tho¸t./no")
end
function nhanitem_1_1(nsel)
i = nsel + 1
if i == 1 then
SayNew("<color=red>Giao DÞch Viªn<color>: Chän mãn hµng cÇn b¸n?",8,
""..MatHang[7][1].."/nhanitem_2_2",
""..MatHang[8][1].."/nhanitem_2_2",
""..MatHang[9][1].."/nhanitem_2_2",
""..MatHang[10][1].."/nhanitem_2_2",
""..MatHang[11][1].."/nhanitem_2_2",
""..MatHang[12][1].."/nhanitem_2_2",
""..MatHang[13][1].."/nhanitem_2_2",
"Tho¸t./no")
elseif i == 2 then
SayNew("<color=red>Giao DÞch Viªn<color>: Chän mãn hµng cÇn b¸n?",7,
""..MatHang[1][1].."/nhanitem_2_1",
""..MatHang[2][1].."/nhanitem_2_1",
""..MatHang[3][1].."/nhanitem_2_1",
""..MatHang[4][1].."/nhanitem_2_1",
""..MatHang[5][1].."/nhanitem_2_1",
""..MatHang[6][1].."/nhanitem_2_1",
"Tho¸t./no")
end
end

function nhanitem_2_1(nsel)
SetTaskTemp(47,nsel+1)
Msg2Player("B¹n ®· chän mÆt hµng: <color=yellow>"..checkhanghoa(GetTaskTemp(47)).." ")
nhanitem()
end
function nhanitem_2_2(nsel)
SetTaskTemp(47,nsel+7)
Msg2Player("B¹n ®· chän mÆt hµng: <color=yellow>"..checkhanghoa(GetTaskTemp(47)).." ")
nhanitem()
end


function nhanitem_3()
if GetTaskTemp(45) == 0 then
Talk(1,"","B¹n ch­a nhËp sè l­îng, kh«ng thÓ t×m kiÕm !")
return
end
if GetTaskTemp(47) == 0 then
Talk(1,"","B¹n ch­a chän mÆt hµng, kh«ng thÓ t×m kiÕm !")
return
end

name = BanHang
iditem = checkidhanghoa(GetTaskTemp(47))
vitrishop = check_item_shop(name,iditem)

if vitrishop == 0 then
Talk(1,"","B¹n kh«ng cã treo b¸n mÆt hµng nµy!")
return
end

SetTaskTemp(44,vitrishop)
SayNew("Giao DÞch Viªn:\nSè l­îng: <color=red>"..GetTaskTemp(45).."/"..name[vitrishop][2].."<color>\nLo¹i mÆt hµng: "..checkhanghoa(GetTaskTemp(47)).."",2,
"Ta ®ång ý rót vËt phÈm tõ cöa hµng nµy/nhanitem_3_2",
"Ta sÏ thay ®æi sè l­îng cho phï hîp/no")
end

function nhanitem_3_2()
name = BanHang
if GetTaskTemp(44) == 0 then
Talk(1,"","Lçi: kh«ng t×m thÊy cöa hµng!")
return
end
vt = GetTaskTemp(44)
if GetTaskTemp(45) > name[vt][2] then
Talk(1,"","Sè l­îng muèn rót vÒ nhiÒu h¬n sè l­îng trªn cöa hµng ®ang treo !")
return
end

oldnum = name[vt][2]
name[vt][2] = name[vt][2] - GetTaskTemp(45)
if name[vt][2] == oldnum - GetTaskTemp(45) then
	for i=1,GetTaskTemp(45) do AddEventItem(name[vt][5]) end
	Msg2Player("B¹n nhËn ®­îc <color=green>"..GetTaskTemp(45).." "..checkhanghoa(GetTaskTemp(47)).." ")
	if name[vt][2] == 0 then
		name[vt][1] = 0
	end	
	savebang()
		SaveData()
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SongBac/NhanVatPham.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - Nhan: "..GetTaskTemp(45).." - Con: "..name[vt][2].."- Ten: "..checkhanghoa(GetTaskTemp(47)).." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)

	Talk(0,"")
else
Talk(1,"","hack ha em")
end

end

function nhantien()
if getn(tienhang) == 0 then
Talk(1,"","HiÖn t¹i ch­a cã danh s¸ch nhËn tiÒn!")
return
end
vt = kiemtranhantien()
if vt == 0 then
Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch nhËn tiÒn cña cöa hµng !")
return
end
if tienhang[vt][2] == 0 then
Talk(1,"","B¹n kh«ng cã tiÒn ®Ó nhËn!")
return
end

SayNew("<color=red>Giao DÞch Viªn<color>: HiÖn t¹i ng­¬i ®ang cã <color=yellow>"..tienhang[vt][2].." Vµng<color>. Ng­¬i cã muèn rót ra kh«ng?",2,
"Ta muèn rót hÕt tiÒn /nhantien2",
"Tho¸t./no")
end
function nhantien2()
if getn(tienhang) == 0 then
Talk(1,"","HiÖn t¹i ch­a cã danh s¸ch nhËn tiÒn !")
return
end
vt = kiemtranhantien()
if tienhang[vt][2] == 0 then
Talk(1,"","B¹n kh«ng cã tiÒn ®Ó nhËn!")
return
end
tien = GetTask(99)
tiennhan = tienhang[vt][2]
if GetUUID() == tienhang[vt][1] then
	tienhang[vt][2] = 0
	if tienhang[vt][2] == 0 then
		SetTask(99, GetTask(99) + tiennhan)
		SetTask(101, GetTask(101) + tiennhan)
		Msg2Player("B¹n nhËn ®­îc <color=yellow>"..tiennhan.." Vµng !")
				
		savebang()
		SaveData()

		if GetTask(99) ~= tien + tiennhan then
			test = GetTask(99)
			SetTask(99, 0)
			SetTask(101, 0)
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SongBac/NhanTien.txt", "a");
			if LoginLog then
			write(LoginLog,"Loi: "..GetAccount().." - "..GetName().." - Mat: "..test.." - tiennhan: "..tienhang.." - Time: "..thoigian.."\n");
			end

			closefile(LoginLog)


		end

		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SongBac/NhanTien.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetUUID().." - Nhan Tien: "..tiennhan.." Vang - Tien Moi: "..GetTask(99).." Vang- Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
Talk(1,"","Lçi: Kh«ng trïng tªn trong danh s¸ch !")
end


end

function kiemtranhantien()
num = 0
for i=1,getn(tienhang) do
if GetUUID() == tienhang[i][1] then
num = i
break
end
end
return num
end

function muahang()
muahang_1()
--SayNew("Giao DÞch Viªn:\nSè l­îng: <color=red>1<color> \nLo¹i mÆt hµng: <color=green>"..checkhanghoa(GetTaskTemp(47)).."",3,
--"Chän lo¹i mÆt hµng muèn mua /muahang_1",
--"T×m kiÕm víi gi¸ thÊp nhËt /muahang_2",
--"Tho¸t./no")
end

function muahang_2()
if GetTaskTemp(47) == 0 then
Talk(1,"","B¹n ch­a chän mÆt hµng, kh«ng thÓ t×m kiÕm !")
return
end
name = BanHang
idmathang = checkidhanghoa(GetTaskTemp(47))
vitrishop = check_shop(name,idmathang)
if vitrishop == 0 then
Talk(1,"","HiÖn t¹i ch­a cã cöa hµng nµo b¸n mÆt hµng nµy !")
return
end

SetTaskTemp(44,vitrishop)
SayNew("Giao DÞch Viªn:\nLo¹i mÆt hµng: <color=green>"..checkhanghoa(GetTaskTemp(47)).." <color>\nGi¸ b¸n: <color=yellow>"..name[vitrishop][3].." Vµng / 1 c¸i ",2,
"Ta ®ång ý mua mÆt hµng nµy /muahang_3",
"Ta sÏ thay ®æi sè l­îng cho phï hîp/no")
end

function muahang_3()
name = BanHang

if GetTaskTemp(44) == 0 then
Talk(1,"","Lçi: kh«ng t×m thÊy shop !")
return
end

vt = GetTaskTemp(44)

if GetTaskTemp(45) > name[vt][2] then
Talk(1,"","Sè l­îng ng­¬i muèn mua nhiÒu h¬n sè l­îng cöa hµng hiÖn t¹i, h·y gi¶m sè l­îng l¹i !")
return
end
if name[vt][2] < 1 then
Talk(1,"","Lçi: Sè l­îng trong cöa hµng ®· hÕt!")
return
end

cash = GetTask(99)
phi = name[vt][3]
oldnum = name[vt][2]
if GetTask(99) >= phi and GetTask(101) >= phi then
	SetTask(99, GetTask(99) - phi)
	SetTask(101, GetTask(101) - phi)
	if GetTask(99) == cash - phi then
		name[vt][2] = name[vt][2] - 1
		if name[vt][2] < 0 then
		Talk(1,"","Lçi nghiªm träng, b¸o gm gÊp !")		
		return
		end
		if name[vt][2] == oldnum - 1 then
			vttien = check_tienhang(name[vt][1])
			if vttien == 0 then
				tienhang[getn(tienhang)+1] = {name[vt][1],phi}
			else
				tienhang[vttien][2] = tienhang[vttien][2] + phi
			end

			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SongBac/MuaHang.txt", "a");
			if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." - "..name[vt][1].." - SL: "..GetTaskTemp(45).." - Gia: "..name[vt][3].." - "..checkhanghoa(GetTaskTemp(47)).." - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)

			if name[vt][2] == 0 then
				name[vt][1] = 0	
			end
			AddEventItem(name[vt][5])
			Msg2Player("B¹n nhËn ®­îc <color=green>"..checkhanghoa(GetTaskTemp(47)).." ")
			
			savebang(GetTaskTemp(47))
			SaveData()
			--Msg2SubWorld("<color=green>[Shop Offline] <color=red> "..GetName().." ®· mua vËt phÈm tõ Shop Offline.")
			
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","B¹n kh«ng ®ñ <color=yellow>"..phi.." Vµng<color> ®Ó mua mãn hµng nµy !")
end  
end

function check_tienhang(iid)
num = 0
for i=1,getn(tienhang) do
	if iid == tienhang[i][1] then
		num = i
		break
	end
end
return num
end

function check_item_shop(name,id)
num = 0
min = 0
if getn(name) ~= 0 then
	for i=1,getn(name) do
		if name[i][1] ~= 0 and GetUUID() == name[i][1] then
			if name[i][5] == id then
				if (min == 0) then
					min = name[i][3]
					num = i
				elseif min <= name[i][3] then
					min = name[i][3]
					num = i
				end	
			end
		end
	end
end
return num
end



function check_shop(name,id)
num = 0
min = 0
if getn(name) ~= 0 then
	for i=1,getn(name) do
		if name[i][1] ~= 0 then
			if name[i][5] == id then
				if (min == 0) then
					min = name[i][3]
					num = i
				elseif min > name[i][3] then
					min = name[i][3]
					num = i
				end	
			end
		end
	end
end

return num
end


function banhang()
lephi = 0
SayNew("Giao DÞch Viªn:\nSè l­îng: <color=red>"..GetTaskTemp(45).."<color>\nGi¸ b¸n: <color=yellow>"..GetTaskTemp(46).." Vµng / 1 c¸i<color>.\nLo¹i mÆt hµng: <color=green>"..checkhanghoa(GetTaskTemp(47)).."",5,
"NhËp sè l­îng muèn b¸n/banhang_1",
"NhËp gi¸ b¸n trªn 1 c¸i/banhang_2",
"Chän lo¹i mÆt hµng cÇn b¸n /banhang_3",
"X¸c nhËn Treo B¸n /banhang_4",
"Tho¸t./no")
end

function checkhanghoa(num)
if num > 0 and num <= getn(MatHang) then
return MatHang[num][1]
else
return "Kh«ng X¸c §Þnh "..num..""
end
end

function banhang_1()
OpenStringBox(2,"NhËp sè l­îng","okbanhang_1")
end
function okbanhang_1(num)
num2 = tonumber(num)
if num2 <= 0 or num2 == "" or num2 > 2000000000 then
Talk(1,"","Kh«ng ®­îc ®Ó trèng!")
return
end
SetTaskTemp(45,num2)
Msg2Player("B¹n ®· nhËp sè l­îng: <color=yellow>"..num2.." ")
banhang()
end
function banhang_2()
OpenStringBox(2,"NhËp gi¸ 1 c¸i","okbanhang_2")
end
function okbanhang_2(num)
num2 = tonumber(num)
if num2 <= 0 or num2 == "" or num2 > 2000000000 then
Talk(1,"","Kh«ng ®­îc ®Ó trèng !")
return
end
SetTaskTemp(46,num2)
Msg2Player("B¹n ®· nhËp gi¸ b¸n: <color=yellow>"..num2.." Vµng")
banhang()
end


function banhang_3()
banhang_3_1(1)
--SayNew("<color=red>Giao DÞch Viªn<color>: Chän mãn hµng cÇn b¸n?",3,
--"VËt phÈm Hç Trî LuyÖn C«ng /banhang_3_1",
--"VËt phÈm Quý /banhang_3_1",
--"Tho¸t./no")
end
function banhang_3_1(nsel)
i = nsel + 1
if i == 1 then
SayNew("<color=red>Giao DÞch Viªn<color>: Chän mãn hµng cÇn b¸n?",8,
""..MatHang[7][1].."/banhang1_2",
""..MatHang[8][1].."/banhang1_2",
""..MatHang[9][1].."/banhang1_2",
""..MatHang[10][1].."/banhang1_2",
""..MatHang[11][1].."/banhang1_2",
""..MatHang[12][1].."/banhang1_2",
""..MatHang[13][1].."/banhang1_2",
"Tho¸t./no")
elseif i == 2 then
SayNew("<color=red>Giao DÞch Viªn<color>: Chän mãn hµng cÇn b¸n?",7,
""..MatHang[1][1].."/banhang1_1",
""..MatHang[2][1].."/banhang1_1",
""..MatHang[3][1].."/banhang1_1",
""..MatHang[4][1].."/banhang1_1",
""..MatHang[5][1].."/banhang1_1",
""..MatHang[6][1].."/banhang1_1",
"Tho¸t./no")
end
end

function banhang1_1(nsel)
SetTaskTemp(47,nsel+1)
Msg2Player("B¹n ®· chän mÆt hµng: <color=yellow>"..checkhanghoa(GetTaskTemp(47)).." ")
banhang()
end
function banhang1_2(nsel)
SetTaskTemp(47,nsel+7)
Msg2Player("B¹n ®· chän mÆt hµng: <color=yellow>"..checkhanghoa(GetTaskTemp(47)).." ")
banhang()
end





function muahang_1()
banhang_1_1(1)
--SayNew("<color=red>Giao DÞch Viªn<color>: Chän mãn hµng cÇn b¸n?",3,
--"VËt phÈm Hç Trî LuyÖn C«ng /banhang_1_1",
--"VËt phÈm Quý /banhang_1_1",
--"Tho¸t./no")
end
function banhang_1_1(nsel)
i = nsel + 1
if i == 1 then
SayNew("<color=red>Giao DÞch Viªn<color>: Chän mãn hµng cÇn b¸n?",8,
""..MatHang[7][1].."/muahang_1_2",
""..MatHang[8][1].."/muahang_1_2",
""..MatHang[9][1].."/muahang_1_2",
""..MatHang[10][1].."/muahang_1_2",
""..MatHang[11][1].."/muahang_1_2",
""..MatHang[12][1].."/muahang_1_2",
""..MatHang[13][1].."/muahang_1_2",
"Tho¸t./no")
elseif i == 2 then
SayNew("<color=red>Giao DÞch Viªn<color>: Chän mãn hµng cÇn b¸n?",7,
""..MatHang[1][1].."/muahang_1_1",
""..MatHang[2][1].."/muahang_1_1",
""..MatHang[3][1].."/muahang_1_1",
""..MatHang[4][1].."/muahang_1_1",
""..MatHang[5][1].."/muahang_1_1",
""..MatHang[6][1].."/muahang_1_1",
"Tho¸t./no")
end
end

function muahang_1_1(nsel)
SetTaskTemp(47,nsel+1)
Msg2Player("B¹n ®· chän mÆt hµng: <color=yellow>"..checkhanghoa(GetTaskTemp(47)).." ")
muahang_2()
end
function muahang_1_2(nsel)
SetTaskTemp(47,nsel+7)
Msg2Player("B¹n ®· chän mÆt hµng: <color=yellow>"..checkhanghoa(GetTaskTemp(47)).." ")
muahang_2()
end




function banhang_4()
soluong = GetTaskTemp(45)
if soluong == 0 then
Talk(1,"","Ng­¬i ch­a nhËp sè l­îng, kh«ng thÓ treo b¸n !")
return
end
gia = GetTaskTemp(46)
if gia == 0 then
Talk(1,"","Ng­êi ch­a nhËp gi¶ b¸n, kh«ng thÓ treo b¸n !")
return
end

id = checkidhanghoa(GetTaskTemp(47))
if GetTaskTemp(47) < 1 or GetTaskTemp(47) > getn(MatHang) then
Talk(1,"","Ng­¬i ch­a chän mÆt hµng, kh«ng thÓ treo b¸n !")
return
end


if GetItemCount(id) < soluong then
Talk(1,"","Trong hµnh trang kh«ng ®ñ <color=yellow>"..soluong.."<color> c¸i, kh«ng thÓ treo b¸n !")
return
end
lephi = 0
if GetCash() < lephi then
Talk(1,"","B¹n kh«ng mang ®ñ lÖ phÝ treo b¸n: "..lephi.." l­îng")
return
end

if GetItemBindAll(MatHang[GetTaskTemp(47)][2]) > 0 then
Talk(1,"","Trong hµnh trang cã "..checkhanghoa(GetTaskTemp(47)).." bÞ khãa. H·y cÊt hÕt vµo r­¬ng råi treo b¸n l¹i !")
return
end


sl = GetItemCount(id)
if GetItemCount(id) >= soluong then
	for i=1,soluong do DelItem(id) end
	if GetItemCount(id) == sl - soluong then
		vitri = checkshopclear()
		idquest = 0
		if GetTaskTemp(47) > 0 and GetTaskTemp(47) <= getn(MatHang) then
		idquest = MatHang[GetTaskTemp(47)][2]
		end
		name = BanHang
		
		--Pay(lephi)
		--Msg2Player("B¹n bÝ mÊt <color=yellow>"..lephi.." l­îng<color> lÖ phÝ treo b¸n !")
		
		if vitri == 0 then
			name[getn(name)+1] = {GetUUID(),GetTaskTemp(45),GetTaskTemp(46),GetTaskTemp(47),idquest}
			vitri = getn(name)
		else
			name[vitri] = {GetUUID(),GetTaskTemp(45),GetTaskTemp(46),GetTaskTemp(47),idquest}
		end
		savebang()
		SaveData()
		Msg2SubWorld("<color=green>[Shop Offline] <color=red>§¹i hiÖp "..GetName().." treo b¸n <color=pink>"..checkhanghoa(GetTaskTemp(47)).." <color=red>víi gi¸ <color=yellow>"..gia.." vµng / 1 c¸i!")
		Msg2SubWorld("§Ó mua hµng, c¸c b¹n ®Õn gÆp <color=green>Giao DÞch Viªn ë gÇn Xa Phu <color=red>®Ó t×m kiÕm vËt phÈm cÇn mua !")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SongBac/RaoBan.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetUUID().." - SL: "..GetTaskTemp(45).." - Gia: "..GetTaskTemp(46).." - "..checkhanghoa(GetTaskTemp(47)).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		SetTaskTemp(45,0)
		SetTaskTemp(46,0)
		SetTaskTemp(47,0)
		KickOutSelf()
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
end

end




function checkshopclear()
num = 0
name = BanHang
if getn(name) == 0 then
return 0
end
	for i=1,getn(name) do	
		if name[i][1] == 0 then
			num = i
			break
		end
	end
return num
end

function savebang()
BANG = TaoBang(BanHang,"BanHang")
LuuBang("datascript/songbac/shopbanhang.lua",BANG)
BANG = TaoBang(tienhang,"tienhang")				
LuuBang("datascript/songbac/tienhang.lua",BANG)
end


function checkidhanghoa(num)
if num > 0 and num <= getn(MatHang) then
return MatHang[num][2]
else
return 3
end
end

function no()
end
