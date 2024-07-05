Include("\\script\\lib\\thuvien.lua")
Include("\\datascript\\songbac\\shophopqua1.lua")
Include("\\datascript\\songbac\\shopthuyen1.lua")
Include("\\datascript\\songbac\\shopht7.lua")
Include("\\datascript\\songbac\\shopht8.lua")
Include("\\datascript\\songbac\\shopknb.lua")
Include("\\datascript\\songbac\\tienhang.lua")



function main()
Say("<color=red>Giao DÞch Viªn<color>: Ng­¬i cÇn ta gióp g× ?",5,
"Ta muèn Treo Shop /banhang",
"Ta muèn Mua Hµng /muahang",
"Ta muèn NhËn TiÒn ®· b¸n ®­îc /nhantien",
"Ta muèn rót VËt PhÈm ®· treo/nhanitem",
"Tho¸t./no")
end

function nhanitem()
Say("Giao DÞch Viªn:\nSè l­îng muèn rót: <color=red>"..GetTaskTemp(45).."<color> \nLo¹i mÆt hµng: <color=green>"..checkhanghoa(GetTaskTemp(47)).."",4,
"NhËp sè l­îng muèn rót/banhang_1",
"Chän mÆt hµng/banhang_3",
"T×m kiÕm cöa hµng cã gi¸ b¸n cao nhÊt cña m×nh/nhanitem_1",
"Tho¸t./no")
end

function nhanitem_1()
if GetTaskTemp(45) == 0 then
Talk(1,"","B¹n ch­a nhËp sè l­îng, kh«ng thÓ t×m kiÕm !")
return
end
if GetTaskTemp(47) == 0 then
Talk(1,"","B¹n ch­a chän mÆt hµng, kh«ng thÓ t×m kiÕm !")
return
end

if GetTaskTemp(47) == 1 then
name = shophopqua1
elseif GetTaskTemp(47) == 2 then
name = shopthuyen1
elseif GetTaskTemp(47) == 3 then	
name = shopht7
elseif GetTaskTemp(47) == 4 then
name = shopht8
elseif GetTaskTemp(47) == 5 then
name = shopknb
end

vitrishop = check_item_shop(name)
if vitrishop == 0 then
Talk(1,"","B¹n kh«ng cã treo b¸n mÆt hµng nµy!")
return
end
SetTaskTemp(44,vitrishop)

Say("Giao DÞch Viªn:\nSè l­îng: <color=red>"..GetTaskTemp(45).."/"..name[vitrishop][2].."<color>\nLo¹i mÆt hµng: "..checkhanghoa(GetTaskTemp(47)).."",2,
"Ta ®ång ý rót vËt phÈm tõ cöa hµng nµy/nhanitem_2",
"Ta sÏ thay ®æi sè l­îng cho phï hîp/no")
end

function nhanitem_2()

if GetTaskTemp(47) == 1 then
name = shophopqua1
elseif GetTaskTemp(47) == 2 then
name = shopthuyen1
elseif GetTaskTemp(47) == 3 then	
name = shopht7
elseif GetTaskTemp(47) == 4 then
name = shopht8
elseif GetTaskTemp(47) == 5 then
name = shopknb
end

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
	savebang(GetTaskTemp(47))
	
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

Say("<color=red>Giao DÞch Viªn<color>: HiÖn t¹i ng­¬i ®ang cã <color=yellow>"..tienhang[vt][2].." luong<color>. Ng­¬i cã muèn rót ra kh«ng?",2,
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
tien = GetCash()
tiennhan = tienhang[vt][2]
if GetUUID() == tienhang[vt][1] then
	tienhang[vt][2] = 0
	if tienhang[vt][2] == 0 then
		Earn(tiennhan)
		Msg2Player("B¹n nhËn ®­îc <color=yellow>"..tiennhan.." l­îng !")
				
		savebang(0)
		SaveData()

		if GetCash() ~= tien + tiennhan then
			test = GetCash()
			Pay(GetCash())
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
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetUUID().." - Nhan Tien: "..tiennhan.." - Tien Moi: "..GetCash().." - Time: "..thoigian.."\n");
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
Say("Giao DÞch Viªn:\nSè l­îng: <color=red>"..GetTaskTemp(45).."<color> \nLo¹i mÆt hµng: <color=green>"..checkhanghoa(GetTaskTemp(47)).."",4,
"NhËp sè l­îng muèn mua/banhang_1",
"Chän lo¹i mÆt hµng muèn mua /banhang_3",
"T×m kiÕm víi gi¸ thÊp nhËt /muahang_1",
"Tho¸t./no")
end

function muahang_1()
if GetTaskTemp(45) == 0 then
Talk(1,"","B¹n ch­a nhËp sè l­îng, kh«ng thÓ t×m kiÕm!")
return
end
if GetTaskTemp(47) == 0 then
Talk(1,"","B¹n ch­a chän mÆt hµng, kh«ng thÓ t×m kiÕm !")
return
end

if GetTaskTemp(47) == 1 then
name = shophopqua1
elseif GetTaskTemp(47) == 2 then
name = shopthuyen1
elseif GetTaskTemp(47) == 3 then	
name = shopht7
elseif GetTaskTemp(47) == 4 then
name = shopht8
elseif GetTaskTemp(47) == 5 then
name = shopknb
end

vitrishop = check_shop(name)
if vitrishop == 0 then
Talk(1,"","HiÖn t¹i ch­a cã cöa hµng nµo b¸n mÆt hµng nµy !")
return
end
SetTaskTemp(44,vitrishop)

Say("Giao DÞch Viªn:\nSè l­îng: <color=red>"..GetTaskTemp(45).."/"..name[vitrishop][2].."<color>\nLo¹i mÆt hµng: "..checkhanghoa(GetTaskTemp(47)).."\nGi¸ b¸n: <color=yellow>"..name[vitrishop][3].." l­îng / 1 c¸i ",2,
"Ta ®ång ý mua mÆt hµng nµy /muahang_2",
"Ta sÏ thay ®æi sè l­îng cho phï hîp/no")
end

function muahang_2()

if GetTaskTemp(47) == 1 then
name = shophopqua1
elseif GetTaskTemp(47) == 2 then
name = shopthuyen1
elseif GetTaskTemp(47) == 3 then	
name = shopht7
elseif GetTaskTemp(47) == 4 then
name = shopht8
elseif GetTaskTemp(47) == 5 then
name = shopknb
end

if GetTaskTemp(44) == 0 then
Talk(1,"","Lçi: kh«ng t×m thÊy shop !")
return
end

vt = GetTaskTemp(44)

if GetTaskTemp(45) > name[vt][2] then
Talk(1,"","Sè l­îng ng­¬i muèn mua nhiÒu h¬n sè l­îng cöa hµng hiÖn t¹i, h·y gi¶m sè l­îng l¹i !")
return
end
cash = GetCash()
tong = GetTaskTemp(45) * name[vt][3]
oldnum = name[vt][2]
if GetCash() >= tong then
	Pay(tong)
	if GetCash() == cash - tong then
		name[vt][2] = name[vt][2] - GetTaskTemp(45)
		if name[vt][2] < 0 then
		Talk(1,"","Lçi nghiªm träng, b¸o gm gÊp !")		
		return
		end
		if name[vt][2] == oldnum - GetTaskTemp(45) then
			vttien = check_tienhang(name[vt][1])
			Msg2Player(" "..vttien.." ")
			if vttien == 0 then
				tienhang[getn(tienhang)+1] = {name[vt][1],tong}
			else
				tienhang[vttien][2] = tienhang[vttien][2] + tong
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
			for k=1,GetTaskTemp(45) do AddEventItem(name[vt][5]) end
			Msg2Player("B¹n nhËn ®­îc <color=green>"..GetTaskTemp(45).." "..checkhanghoa(GetTaskTemp(47)).." ")
			
			savebang(GetTaskTemp(47))
			SaveData()

			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","B¹n kh«ng ®ñ <color=yellow>"..tong.." l­îng<color> ®Ó mua mãn hµng nµy !")
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

function check_item_shop(name)
num = 0
min = 0
if getn(name) ~= 0 then
	for i=1,getn(name) do
		if name[i][1] ~= 0 and GetUUID() == name[i][1] then
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

return num
end



function check_shop(name)
num = 0
min = 0
if getn(name) ~= 0 then
	for i=1,getn(name) do
		if name[i][1] ~= 0 then
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

return num
end


function banhang()

lephi = 0
if GetTaskTemp(47) < 3 and GetTaskTemp(47) > 0 then
	lephi = floor(GetTaskTemp(45) * GetTaskTemp(46) / 100 * 2)
elseif GetTaskTemp(47) == 3 then
	lephi = GetTaskTemp(45) * 100000
elseif GetTaskTemp(47) == 4 then
	lephi = GetTaskTemp(45) * 500000
elseif GetTaskTemp(47) == 5 then
	lephi = GetTaskTemp(45) * 100000
end

lephi = 0

Say("Giao DÞch Viªn:\nSè l­îng: <color=red>"..GetTaskTemp(45).."<color>\nGi¸ b¸n: <color=yellow>"..GetTaskTemp(46).." l­îng<color>. LÖ phÝ:<color=yellow> "..lephi.." l­îng<color>\nLo¹i mÆt hµng: <color=green>"..checkhanghoa(GetTaskTemp(47)).."",5,
"NhËp sè l­îng muèn b¸n/banhang_1",
"NhÊp gi¸ b¸n trªn 1 c¸i/banhang_2",
"Chän lo¹i mÆt hµng cÇn b¸n /banhang_3",
"X¸c nhËn Treo B¸n /banhang_4",
"Tho¸t./no")
end

function checkhanghoa(num)
if num == 1 then
return "Hép Quµ May M¾n"
elseif num == 2 then
return "Cuèn S¸ch Vµng"
elseif num == 3 then
return "HuyÒn Tinh 7"
elseif num == 4 then
return "HuyÒn Tinh 8"
elseif num == 5 then
return "Kim Nguyªn B¶o"
else
return "Chua Xac Dinh"
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
Msg2Player("B¹n ®· nhËp gi¸ b¸n: <color=yellow>"..num2.." l­îng")
end
function banhang_3()
Say("<color=red>Giao DÞch Viªn<color>: Chän mãn hµng cÇn b¸n?",2,
"Hép Quµ May M¾n/banhang1_1",
--"ThuyÒn Rång /banhang1_1",
--"Huyen Tinh 7/banhang1_1",
--"Huyen Tinh 8/banhang1_1",
--"Kim Nguyen Bao/banhang1_1",
"Tho¸t./no")
end

function banhang1_1(nsel)
SetTaskTemp(47,nsel+1)
Msg2Player("B¹n ®· chän mÆt hµng: <color=yellow>"..checkhanghoa(nsel+1).." ")
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
if id == 0 then
Talk(1,"","Ng­¬i ch­a chän mÆt hµng, kh«ng thÓ treo b¸n !")
return
end


if GetItemCount(id) < soluong then
Talk(1,"","Trong hµnh trang kh«ng ®ñ <color=yellow>"..soluong.."<color> c¸i, kh«ng thÓ treo b¸n !")
return
end

if GetTaskTemp(47) == 1 and soluong < 600 then
Talk(1,"","Sè l­îng Tói Nguyªn LiÖu quy ®Þnh tèi thiÕu lµ: 600 c¸i !")
return
elseif GetTaskTemp(47) == 2 and soluong < 100 then
Talk(1,"","Sè l­îng ThuyÒn Rång quy ®Þnh tèi thiÓu lµ: 100 c¸i !")
return
end

lephi = 0
if GetTaskTemp(47) < 3 then
	lephi = floor(GetTaskTemp(45) * GetTaskTemp(46) / 100 * 2)
elseif GetTaskTemp(47) == 3 then
	lephi = GetTaskTemp(45) * 50000
elseif GetTaskTemp(47) == 4 then
	lephi = GetTaskTemp(45) * 200000
elseif GetTaskTemp(47) == 5 then
	lephi = GetTaskTemp(45) * 50000
end

if GetCash() < lephi then
Talk(1,"","B¹n kh«ng mang ®ñ lÖ phÝ treo b¸n: "..lephi.." l­îng")
return
end

sl = GetItemCount(id)
if GetItemCount(id) >= soluong then
	for i=1,soluong do DelItem(id) end
	if GetItemCount(id) == sl - soluong then
		vitri = checkshopclear()
		idquest = 0
		if GetTaskTemp(47) == 1 then
		name = shophopqua1
		idquest = 67
		elseif GetTaskTemp(47) == 2 then
		name = shopthuyen1
		idquest = 163
		elseif GetTaskTemp(47) == 3 then	
		name = shopht7
		idquest = 50
		elseif GetTaskTemp(47) == 4 then
		name = shopht8
		idquest = 51
		elseif GetTaskTemp(47) == 5 then
		name = shopknb
		idquest = 17
		end
		Pay(lephi)
		Msg2Player("B¹n bÝ mÊt <color=yellow>"..lephi.." l­îng<color> lÖ phÝ treo b¸n !")
		
		if vitri == 0 then
			name[getn(name)+1] = {GetUUID(),GetTaskTemp(45),GetTaskTemp(46),GetTaskTemp(47),idquest}
			vitri = getn(name)
		else
			name[vitri] = {GetUUID(),GetTaskTemp(45),GetTaskTemp(46),GetTaskTemp(47),idquest}
		end
		savebang(GetTaskTemp(47))
		SaveData()
		Msg2SubWorld("Shop Offline: "..GetName().." ®· treo b¸n <color=pink>"..soluong.." "..checkhanghoa(GetTaskTemp(47)).." <color=red>víi gi¸ <color=yellow>"..gia.." l­îng / 1 c¸i!")
		Msg2SubWorld("<color=green>§Ó mua hµng, c¸c b¹n ®Õn Ba L¨ng HuyÖn 198/201 gÆp Giao DÞch Viªn ®Ó mua Hép Quµ May M¾n víi gi¸ thÊp nhÊt !")
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
if GetTaskTemp(47) == 1 then
name = shophopqua1
elseif GetTaskTemp(47) == 2 then
name = shopthuyen1
elseif GetTaskTemp(47) == 3 then	
name = shopht7
elseif GetTaskTemp(47) == 4 then
name = shopht8
elseif GetTaskTemp(47) == 5 then
name = shopknb
end

	for i=1,getn(name) do	
		if name[i][1] == 0 then
			num = i
			break
		end
	end
return num
end

function savebang(num)
if num == 1 then
BANG = TaoBang(shophopqua1,"shophopqua1")				
LuuBang("datascript/songbac/shophopqua1.lua",BANG)
elseif num == 2 then
BANG = TaoBang(shopthuyen1,"shopthuyen1")				
LuuBang("datascript/songbac/shopthuyen1.lua",BANG)
elseif num == 3 then
BANG = TaoBang(shopht7,"shopht7")				
LuuBang("datascript/songbac/shopht7.lua",BANG)
elseif num == 4 then
BANG = TaoBang(shopht8,"shopht8")				
LuuBang("datascript/songbac/shopht8.lua",BANG)
elseif num == 5 then
BANG = TaoBang(shopknb,"shopknb")				
LuuBang("datascript/songbac/shopknb.lua",BANG)
end


BANG = TaoBang(tienhang,"tienhang")				
LuuBang("datascript/songbac/tienhang.lua",BANG)
end


function checkidhanghoa(num)
if num == 1 then
return 67
elseif num == 2 then
return 163
elseif num == 3 then
return 50
elseif num == 4 then
return 51
elseif num == 5 then
return 17
else
return 0
end
end

function no()
end
