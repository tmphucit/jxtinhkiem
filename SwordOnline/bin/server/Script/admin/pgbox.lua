Include("\\datascript\\banghoi\\mapbanghoi.lua")
function main(slect)


if (slect == 2) then

	check21 = GetIdxPGItem(2,1) -- trang bi

	
	
	check22 = GetIdxPGItem(2,2) -- ht
	check23 = GetIdxPGItem(2,3) -- khoang thach
	if check21 <= 0 or check22 <= 0 or check23 <= 0 then
	Msg2Player("Nguyªn liÖu yªu cÇu ch­a ®Æt vµo ®ñ !!")
	return
	end
	
	if GetCash() < 100000 then
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 10 v¹n l­îng, kh«ng thÓ c­êng hãa ")
	return
	end
	if (GetBindItem(check23) == 1) then
		Talk(1,"","Thñy Tinh khãa kh«ng thÓ dïng cho C­êng Hãa")
	return
	end

	phantich = GetCuongHoa(check21)
	taitao = mod(phantich,1000000)
	cuonghoa = floor(phantich / 1000000)
	if cuonghoa >= 10 then
		Talk(1,"","§¼ng cÊp c­êng hãa ®¹t tèi ®a, kh«ng thÓ c­êng hãa thªm")
		return
	end
	
	DelItemIdx(check22)
	DelItemIdx(check23)
	Pay(100000)
	xacsuatthem = 0
	if GetTask(485) >= 5 then
		xacsuatthem = GetTask(485) 
	end
	tinhxacsuat = cuonghoa_xacsuat(cuonghoa)
	sx = random(1,100)
	if sx < (tinhxacsuat+xacsuatthem-4) or GetTask(465) >= 150 then
		Talk(1,"","<color=yellow>C­êng hãa thµnh c«ng, X¸c suÊt: "..(tinhxacsuat+xacsuatthem).."%")
		SetCuongHoa(check21, (cuonghoa + 1) * 1000000 + taitao)		
		SetTask(465, 0)
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/ThoRen/CuongHoa.txt", "a");
		if LoginLog then
		write(LoginLog,"---ThanhCong: "..GetAccount().." - "..GetName().." - CH: "..GetCuongHoa(check21).." - ["..GetNameItemBox(check21).."] - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		
		Msg2SubWorld("Chóc mõng "..GetName().." c­êng hãa thµnh c«ng trang bÞ "..GetNameItemBox(check21).." lªn <color=yellow>C­êng Hãa "..(cuonghoa+1).."")
	else
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/ThoRen/CuongHoa.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - CH: "..GetCuongHoa(check21).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		SetTask(465,GetTask(465) + tinhxacsuat+xacsuatthem)
	
		--Msg2Player("C­êng hãa trang bÞ "..GetNameItemBox(check21).." thÊt b¹i, xin chia buån")
		Msg2SubWorld(""..GetName().." c­êng hãa trang bÞ "..GetNameItemBox(check21).."[+"..cuonghoa.."] x¸c suÊt "..(tinhxacsuat+xacsuatthem).."% thÊt b¹i, xin chia buån")
		Talk(1,"","Xin chia buån, c­êng hãa thÊt b¹i. <color=green>X¸c suÊt:  "..(tinhxacsuat+xacsuatthem).."%")
	end

elseif slect == 3 then
	check31 = GetIdxPGItem(3,1)
	check32 = GetIdxPGItem(3,2)
	if check31 <= 0 or check32 <= 0 then
		Msg2Player("Nguyªn liÖu yªu cÇu ch­a ®Æt vµo ®ñ !!")
	return
	end
	phantich = GetCuongHoa(check31)
	cuonghoa = floor(phantich / 1000000)	
	b = GetDetailTypeItem(check32)
	cuonghoangoc = 0
	if b < 623 then
		cuonghoangoc = b - 583
	else
		cuonghoangoc = b - 622 + 10
	end
	if cuonghoangoc <= cuonghoa then
	Talk(1,"","§¼ng cÊp c­êng hãa cña trang bÞ ph¶i thÊp h¬n ®¼ng cÊp c­êng hãa cña Ngäc, kh¶m ngäc thÊt b¹i")
	return
	end
	Msg2Player("Debug:  "..cuonghoangoc.." "..GetDetailTypeItem(check31).."")
	if cuonghoangoc > 10 and GetDetailTypeItem(check31) ~= 0 and GetDetailTypeItem(check31) ~= 1 then
		Talk(1,"","VËt phÈm nµy chØ ®­îc kh¶m vµo vò khÝ ")
		return
	end
	
	DelItemIdx(check32)
	SetCuongHoa(check31, cuonghoangoc * 1000000)
	Msg2SubWorld("Chóc mõng "..GetName().." kh¶m <color=yellow>Ngäc C­êng Hãa CÊp "..cuonghoangoc.."<color=red> vµo trang bÞ <color=green>"..GetNameItemBox(check31).." <color=red>thµnh c«ng")
	Msg2Player("Cuong hoa trang bi: "..cuonghoa.." - "..cuonghoangoc.."")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/ThoRen/KhamNgoc.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - CH Trang bi: "..cuonghoa.." - CH Ngoc: "..cuonghoangoc.." - Ten TB: ["..GetNameItemBox(check31).."]  - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	
	
elseif (slect == 4) then
	check41 = GetIdxPGItem(4,1)
	check42 = GetIdxPGItem(4,2)
	check43 = GetIdxPGItem(4,3)
	
	if GetCash() < 50000 then
	Talk(1,"","Ng­¬i kh«ng mang ®ñ 5 v¹n l­îng, kh«ng thÓ t¸i t¹o")
	return
	end
	
	if check41 <= 0 or check42 <= 0 or check43 <= 0 then
		Msg2Player("Nguyªn liÖu yªu cÇu ch­a ®Æt vµo ®ñ !!")
	return
	end
	phantich = GetCuongHoa(check41)
	cuonghoa = floor(phantich / 1000000)	
		
	if cuonghoa == 0 then
		Talk(1,"","Trang bÞ ch­a c­êng hãa, kh«ng thÓ t¸i t¹o")
		return
	end	
	DelItemIdx(check42)
	DelItemIdx(check43)
	Pay(50000)
	d1 =CheckOption(GetEquipMagicId(check41,1))
	d2 = CheckOption(GetEquipMagicId(check41,2))
	d3 = CheckOption(GetEquipMagicId(check41,3))
	d4 = CheckOption(GetEquipMagicId(check41,4))
	d5 = CheckOption(GetEquipMagicId(check41,5))
	d6 = CheckOption(GetEquipMagicId(check41,6))
	
	if d1 == 0 and d2 == 0 and d3 == 0 and d4 == 0 and d5 == 0 and d6 == 0 then
		Talk(1,"","T¸i t¹o thÊt b¹i, gi÷ nguyªn Option hiÖn t¹i !")
		return
	end
	tiendoan = cuonghoa * 1000000 + d1*100000 + d2*10000 + d3*1000 + d4* 100 + d5*10 + d6
	SetTaskTemp(1, tiendoan)
	SetTaskTemp(2 , check41)
	TienDoanCuongHoa(tiendoan, GetEquipMagicId(check41,1), GetEquipMagicId(check41,2),GetEquipMagicId(check41,3),GetEquipMagicId(check41,4),GetEquipMagicId(check41,5),GetEquipMagicId(check41,6))
	


end
end

function TienDoanCuongHoa(tiendoan,opt1,opt2,opt3,opt4,opt5,opt6)
taitao = mod(tiendoan,1000000)
d1 = floor(taitao / 100000)
d2 = mod(floor(taitao / 10000),10)
d3 = mod(floor(taitao / 1000),10)
d4 = mod(floor(taitao / 100),10)
d5 = mod(floor(taitao / 10),10)
d6 = mod(taitao,10)

name = ""	
if d1 == 1 then
name = name.."\n+ "..CheckTenOption(opt1)..""
end
if d2 == 1 then
name = name.."\n+ "..CheckTenOption(opt2)..""
end
if d3 == 1 then
name = name.."\n+ "..CheckTenOption(opt3)..""
end
if d4 == 1 then
name = name.."\n+ "..CheckTenOption(opt4)..""
end
if d5 == 1 then
name = name.."\n+ "..CheckTenOption(opt5)..""
end
if d6 == 1 then
name = name.."\n+ "..CheckTenOption(opt6)..""
end

Msg2Player("Nh÷ng dßng ®­îc t¸i t¹o:<color=yellow>"..name.."")	
SayNew("Nh÷ng dßng sÏ ®­îc t¸i t¹o:<color=yellow>"..name.." ",2,
"Ta ®ång ý t¸i t¹o /dongytaitao",
"Bá qua t¸i t¹o nµy /boqua")
end

function boqua()
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/ThoRen/TaiTao.txt", "a");
	if LoginLog then
	write(LoginLog,"Bá Qua: "..GetAccount().." - "..GetName().." - CH: "..GetCuongHoa(GetTaskTemp(2)).." - ["..GetNameItemBox(GetTaskTemp(2)).."] - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
end
function dongytaitao()
if GetTaskTemp(2) > 0 and GetTaskTemp(1) > 0 then
	SetCuongHoa(GetTaskTemp(2) , GetTaskTemp(1))
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/ThoRen/TaiTao.txt", "a");
	if LoginLog then
	write(LoginLog,"Thanh C«ng: "..GetAccount().." - "..GetName().." - CH: "..GetCuongHoa(GetTaskTemp(2)).." - ["..GetNameItemBox(GetTaskTemp(2)).."] - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	Msg2Player("T¸i t¹o thµnh c«ng")
end
end

function vsadas()
	--SetCuongHoa(check41, )	
	--thoigian = tonumber(date("%H%M%d%m"))
	--LoginLog = openfile("Data/ThoRen/TaiTao.txt", "a");
	--if LoginLog then
	--write(LoginLog,""..GetAccount().." - "..GetName().." - CH: "..GetCuongHoa(check41).." - ["..GetNameItemBox(check41).."] - Time: "..thoigian.."\n");
	--end
	--closefile(LoginLog)
	
	Msg2Player("T¹i t¹o thµnh c«ng")
end
function cuonghoa_xacsuat_thongbao(ch)
if  ch == 0 or ch == 1 or ch == 2 then
return 15
elseif  ch == 3 or ch == 4 or ch == 5 then
return 10
elseif  ch == 6 or ch == 7 or ch == 8 then
return 5
else
return 3
end
end


function CheckOption(id)
sx = RandomNew(1,100)
thanhcong = CheckLoaiOption(id)
--Msg2Player("Xac suat "..id.." : "..thanhcong.."")
if sx < thanhcong then
	return 1
else
	return 0
end
end

function CheckLoaiOption(id)
for i=1,getn(Mang_Option) do
	if Mang_Option[i][1] == id then
		return Mang_Option[i][2]
	end
end
return 0
end

function CheckTenOption(id)
for i=1,getn(Mang_Option) do
	if Mang_Option[i][1] == id then
		return Mang_Option[i][3]
	end
end
return ""

end

Mang_Option = {
{85,	60, "Sinh Lùc"},
{89,	60, "Néi Lùc"},
{88,	60,"Håi Sinh Lùc"},
{92,	60,"Håi Néi Lùc"},
{93,	60, "ThÓ Lùc"},
{101,	40, "Kh¸ng §éc"},
{102,	40,"Kh¸ng Háa"},
{103,	40, "Kh¸ng L«i"},
{104,	40,"Phßng Thñ "},
{105,	40,"Kh¸ng B¨ng"},
{106,	40,"TG Lµm ChËm"},
{108,	40,"TG Tróng §éc"},
{110,   40,"TG Cho¸ng"},
{111,	20,"Tèc ®é di chuyÓn"},
{113,	40,"TG Phôc Håi"},			
{98,	60,"Th©n Ph¸p"},
{99,	60,"Sinh KhÝ "},			
{166,	40,"ChÝnh X¸c"},			
{121,	30, "STVL Ngo¹i"},			
{122,	30, "Háa S¸t Ngo¹i"},			
{123,	30 , "B¨ng S¸t Ngo¹i"},			
{124,	30, "L«i S¸t Ngo¹i"},			
{125,	30, "§éc S¸t Ngo¹i"},
{126,	30, "STVL %"},			
{134,	50, "ChuyÓn Hãa",},
{136,	50, "Hót SL"},
{137,	50, "Hót NL"},
{140,	30, "STVL Néi"},
{141,	30, "§éc S¸t Néi"},
{142,	30, "B¨ng S¸t Néi"},
{143,	30, "Háa S¸t Néi",},
{144,	30, "L«i S¸t Néi"},			
{153,	50, "Håi Sinh Lùc"},
{115,	0},
}

function cuonghoa_xacsuat(ch)
if ch == 0 then
return 50
elseif ch == 1 then
return 25
elseif ch == 2 then
return 20
elseif ch == 3 then
return 15
elseif ch == 4 then
return 10
elseif ch == 5 then
return 10
elseif ch == 6 then
return 5
elseif ch == 7 then
return 5
elseif ch == 8 then
return 5
elseif ch == 9 then
return 3
else
return 1
end
end

function main1(slect)
if (slect == 3) then
	check31 = GetIdxPGItem(3,1)
	check32 = GetIdxPGItem(3,2)
	if (check31 <= 0) then
		Msg2Player("B¹n ch­a ®Æt trang bÞ xanh hoÆc tr¾ng vµo !")	
		return
	end
	if (check32 <= 0) then
		Msg2Player("B¹n ch­a ®Æt huyÒn tinh kho¸ng th¹ch vµo !")	
		return
	end
if (check31 > 0 and check32 > 0) then
	if (GetGenreItem(check31) == 0 and GetItemType(check31) == 0) then
			if (GetDetailTypeItem(check31) == 3 or GetDetailTypeItem(check31) == 4 or GetDetailTypeItem(check31) == 9) then
			Msg2Player("Trang bÞ ®Æt vµo kh«ng ®­îc lµ trang søc!")
			return
			end
			sodong = checkSoDong(GetDetailTypeItem(check32),GetDetailTypeItem(check31))
			a = GetDetailTypeItem(check31)
			b = GetParticularItem(check31)
			c = GetLevelItem(check31)
			d = GetSeriItem(check31)
			if CheckFreeBoxItem(0,a,b,c) == 0 then
			Msg2Player("Hµnh trang kh«ng ®ñ kho¶ng trèng !")
			return
			end
			if GetCash() <= 50000 then
			Msg2Player("B¹n kh«ng mang ®ñ 5 v¹n l­îng !")
			return
			end
			Pay(50000)
			DelItemIdx(check32)
			DelEquipIdx(check31)
			if GetIdxPGItem(3,1) == 0 and GetIdxPGItem(3,2) == 0 then 
				if a >= 2 then
				if (sodong == 1) then
					AddItemPink(0,a,b+xanh_to_tim(a),c,d,0,0,0,0,0,0,0,1,207,0,0,0,0,0,0,0,0,0,0,0,0)
				elseif (sodong == 2) then
					AddItemPink(0,a,b+xanh_to_tim(a),c,d,0,0,0,0,0,0,0,1,207,1,207,0,0,0,0,0,0,0,0,0,0)
				elseif (sodong == 3) then
					AddItemPink(0,a,b+xanh_to_tim(a),c,d,0,0,0,0,0,0,0,1,207,1,207,1,207,0,0,0,0,0,0,0,0)
				elseif (sodong == 4) then
					AddItemPink(0,a,b+xanh_to_tim(a),c,d,0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,0,0,0,0,0,0)
				elseif (sodong == 5) then
					AddItemPink(0,a,b+xanh_to_tim(a),c,d,0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,1,207,0,0,0,0)
				elseif (sodong == 6) then
					AddItemPink(0,a,b+xanh_to_tim(a),c,d,0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,1,207,1,207,0,0)
				end
				else
				if a == 0 then
					loaivk = 200
				elseif a == 1 then
					loaivk = 60
				end
				
				if sodong == 1 then
					AddItemPink(0,a,b,c+loaivk,d,0,0,0,0,0,0,0,1,207,0,0,0,0,0,0,0,0,0,0,0,0)
				elseif sodong == 2 then
					AddItemPink(0,a,b,c+loaivk,d,0,0,0,0,0,0,0,1,207,1,207,0,0,0,0,0,0,0,0,0,0)
				elseif sodong == 3 then
					AddItemPink(0,a,b,c+loaivk,d,0,0,0,0,0,0,0,1,207,1,207,1,207,0,0,0,0,0,0,0,0)
				elseif sodong == 4 then
					AddItemPink(0,a,b,c+loaivk,d,0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,0,0,0,0,0,0)
				elseif sodong == 5 then
					AddItemPink(0,a,b,c+loaivk,d,0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,1,207,0,0,0,0)
				elseif sodong == 6 then
					AddItemPink(0,a,b,c+loaivk,d,0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,1,207,1,207,0,0)
				end		
				end
				Msg2Player("ChÕ t¹o thµnh c«ng Trang bÞ HuyÒn tinh c¬ b¶n ")
				Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Msg2Player("Trang bÞ ®Æt vµo kh«ng ph¶i lµ trang bÞ xanh hoÆc tr¾ng")
	end
else
	Msg2Player("Nguyªn liÖu bá vµo kh«ng thÝch hîp ")
end

elseif (slect == 2) then
	check21 = GetIdxPGItem(2,1) -- trang bi
	check22 = GetIdxPGItem(2,2) -- ht
	check23 = GetIdxPGItem(2,3) -- khoang thach
	check24 = GetIdxPGItem(2,4) 
	check25 = GetIdxPGItem(2,5)
	check26 = GetIdxPGItem(2,6)
	check27 = GetIdxPGItem(2,7)
	check28 = GetIdxPGItem(2,8)
	check29 = GetIdxPGItem(2,9)
	check210 = GetIdxPGItem(2,10)
	check211 = GetIdxPGItem(2,11)
	
	if check21 <= 0 or check22 <= 0 or check23 <= 0 then
	Msg2Player("Nguyªn liÖu yªu cÇu ch­a ®Æt vµo ®ñ !!")
	return
	end
	
	if check_loaiitem(check21,check22,check23,check24,check25,check26,check27,check28,check29,check210,check211,0) ~= 0 then
	Msg2Player("Nguyªn liÖu bá vµo kh«ng thÝch hîp ")
	return
	end

	if GetDetailTypeItem(check23) == 168 or GetDetailTypeItem(check23) == 170 or GetDetailTypeItem(check23) == 172 then
		if GetSeriItem(check21) ~= GetSeriItem(check23) then
			Msg2Player("Thuéc tÝnh ngò hµnh cña trang bÞ vµ kho¸ng th¹ch kh«ng ®ång nhÊt !")
			return
		end 
	end
	

	a = GetDetailTypeItem(check23)
	vitri = a-166
	
	if GetEquipMagicId(check21,vitri) == 0 then
	Msg2Player("Trang bÞ ®Æt vµo kh«ng cã Option dßng thø "..vitri.." ")
	return
	end

	b = GetSeriItem(check23)
	c = GetEquipMagicId(check21,vitri)
	d = Level_Rut_Dong(check21,check22,check23,check24,check25,check26,check27,check28,check29,check210,check211)
	
	
	reqitem = check_reqitem(c)
	if CheckFreeBoxItem(4,a,1,1) == 0 then
	Msg2Player("Hµnh trang kh«ng ®ñ kho¶ng trèng !")
	return
	end
	if GetCash() <= 200000 then
	Msg2Player("B¹n kh«ng mang ®ñ 20 v¹n l­îng !")
	return
	end
	Pay(200000)
	DelEquipIdx(check21)
	DelItemIdx(check22)
	DelItemIdx(check23)
	DelItemIdx(check24)
	DelItemIdx(check25)
	DelItemIdx(check26)
	DelItemIdx(check27)
	DelItemIdx(check28)
	DelItemIdx(check29)
	DelItemIdx(check210)
	DelItemIdx(check211)
	
	if GetIdxPGItem(2,1) == 0 and GetIdxPGItem(2,2) == 0 and GetIdxPGItem(2,3) == 0 and GetIdxPGItem(2,4) == 0 and GetIdxPGItem(2,5) == 0 and GetIdxPGItem(2,6) == 0 and GetIdxPGItem(2,7) == 0 and GetIdxPGItem(2,8) == 0 and GetIdxPGItem(2,9) == 0 and GetIdxPGItem(2,10) == 0 and GetIdxPGItem(2,11) == 0 then
		AddEventItemMagic(a,b,c,d,reqitem)
		Msg2Player("B¹n nhËn ®­îc 1 Kho¸ng th¹ch ma ph¸p")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end

elseif (slect == 1) then
	check11 = GetIdxPGItem(1,1)	
	check12 = GetIdxPGItem(1,2)
	check13 = GetIdxPGItem(1,3)

	if check11 <= 0 or check12 <= 0 or check13 <= 0 then
	Msg2Player("B¹n kh«ng bá ®ñ 3 viªn HuyÒn Tinh!")
	return
	end

	if GetGenreItem(check11) == 4 and GetGenreItem(check12) == 4 and GetGenreItem(check13) == 4 then
		if GetDetailTypeItem(check11) == GetDetailTypeItem(check12) and GetDetailTypeItem(check11) == GetDetailTypeItem(check13) then
			id_questkey = GetDetailTypeItem(check11)
			vitri = checkHT(id_questkey)
			if (id_questkey == 53) then
			Msg2Player("HuyÒn tinh 10 b¹n ®Æt vµo ®· ®¹t cÊp ®é tèi ®a!")
			return
			end
			if CheckFreeBoxItem(4,id_questkey,1,1) == 0 then
			Msg2Player("Hµnh trang kh«ng ®ñ kho¶ng trèng !")
			return
			end
			
			if (GetCash() < MangHT[vitri][4]) then
			Msg2Player("B¹n kh«ng mang ®ñ "..MangHT[vitri][4].." l­îng ®Ó n©ng cÊp HuyÒn Tinh ")
			return	
			end
			Pay(MangHT[vitri][4])
			xs = RandomNew(1,100)
			xsitem = 0
			xsbh = 0
			if GetItemCount(206) > 0 then
			DelItem(206)
			xsitem = 10
			end
			w,x,y = GetWorldPos()
			if w >= 116 then 
			vitribh = checksoluongbang()
			xsbh = MAP_BANG_HOI[vitribh][3] * 2
			end
			xacsuattinh = MangHT[vitri][3] + xsitem + xsbh
			
			if (xs <= xacsuattinh) then
				DelItemIdx(check11)
				DelItemIdx(check12)	
				DelItemIdx(check13)
				if GetIdxPGItem(1,1) == 0 and GetIdxPGItem(1,2) == 0 and GetIdxPGItem(1,3) == 0 then
					AddEventItem(MangHT[vitri+1][2])
					tenitem = MangHT[vitri+1][1]
					Msg2Player("N©ng cÊp thµnh c«ng, b¹n nhËn ®­îc 1 viªn <color=green>"..tenitem.." ")
					if tenitem == "HuyÒn Tinh 7" or tenitem == "HuyÒn Tinh 8" or tenitem == "HuyÒn Tinh 9" then
						Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=yellow>["..GetName().."] <color=red>kÕt hîp thµnh c«ng <color=green>"..tenitem.."")
					end
					
					Talk(0,"")
				else
				Talk(1,"","Hack ha em ")
				end
			else
				DelItemIdx(check13)
				Msg2Player("N©ng cÊp huyÒn tinh thÊt b¹i. X¸c suÊt: <color=yellow>"..xacsuattinh.."% [Ngò S¾c: "..xsitem.."% - Bang Héi: "..xsbh.."%]<color=red> b¹n bÞ mÊt 1 viªn huyÒn tinh !")
			end			
		else
			Msg2Player("HuyÒn tinh kho¸ng th¹ch ®Æt vµo kh«ng cïng cÊp ®é !")
		end
	else
		Talk(1,"","Hack ha em ")
	end
elseif (slect == 4) then
	check41 = GetIdxPGItem(4,1)
	check42 = GetIdxPGItem(4,2)
	check43 = GetIdxPGItem(4,3)
	check44 = GetIdxPGItem(4,4)
	check45 = GetIdxPGItem(4,5)
	check46 = GetIdxPGItem(4,6)
	check47 = GetIdxPGItem(4,7)	
	check48 = GetIdxPGItem(4,8)
	check49 = GetIdxPGItem(4,9)
	check410 = GetIdxPGItem(4,10)
	check411 = GetIdxPGItem(4,11)
	
	
	if (check41 <= 0 or check43 <= 0 or check42 <= 0) then
	Msg2Player("Nguyªn liÖu yªu cÇu ®Æt vµo kh«ng ®ñ ")
	return
	end
	
	if check_loaiitem(check41,check42,check43,check44,check45,check46,check47,check48,check49,check410,check411,2) ~= 0 then
	Msg2Player("Nguyªn liÖu bá vµo kh«ng thÝch hîp ")
	return
	end

	a = GetDetailTypeItem(check41)
	b = GetParticularItem(check41)		
	c = GetLevelItem(check41)
	d = GetSeriItem(check41)

	sodong = GetDetailTypeItem(check43)-166
	if (sodong > check_sodong(check41)) then
	Msg2Player("Option dßng "..sodong.." kh«ng tån t¹i trªn trang bÞ tÝm ®Æt vµo ")
	return
	end
	
	dongep = check_dong207(check41)
		
	
	if (dongep ~= sodong) then
	Msg2Player("Kho¸ng th¹ch ma ph¸p ®Æt vµo kh«ng phï hîp. HiÖn t¹i chØ ®­îc kh¶m vµo dßng "..dongep.."")
	return
	end
	
	if (check_opttrung(check41,check_sodong(check41),GetIdMagicEventItem(check43)) == 1) then
	Msg2Player("Option trªn Kho¸ng th¹ch ma ph¸p ®· cã trªn Trang bÞ HuyÒn tinh ®Æt vµo !")
	return
	end 

	if (GetRequirementMagicEventItem(check43) == 1) then
		if (a >= 2) then
		Msg2Player("Option nµy chØ cã thÓ kh¶m n¹m vµo Vò KhÝ !")	
		return
		end
	elseif (GetRequirementMagicEventItem(check43) == 2) then
		if (a ~= 2) then
		Msg2Player("Option nµy chØ cã thÓ kh¶m n¹m vµo ¸o !")	
		return
		end
	elseif (GetRequirementMagicEventItem(check43) == 3) then
		if (a ~= 5) then
		Msg2Player("Option nµy chØ cã thÓ kh¶m n¹m vµo Giµy!")
		return
		end
	end	

	if GetDetailTypeItem(check43) == 168 or GetDetailTypeItem(check43) == 170 or GetDetailTypeItem(check43) == 172 then
		if GetSeriItem(check41) ~= GetSeriItem(check43) then
			Msg2Player("Ngò hµnh cña kho¸ng th¹ch vµ trang bÞ kh«ng ®ång nhÊt !")
			return
		end 
	end

	if CheckFreeBoxItem(0,a,b,c) == 0 then
		Msg2Player("Hµnh trang kh«ng ®ñ kho¶ng trèng !")
		return
	end
		
	if GetCash() <= 100000 then
	Msg2Player("B¹n kh«ng mang ®ñ 10 v¹n l­îng !")
	return
	end
	
	CheckSoDong = TinhToan_DieuKien(dongep,check44,check45,check46,check47,check48,check49,check410,check411)
	if CheckSoDong == 0 then
	Msg2Player("§iÒu kiÖn kh¶m n¹m kh«ng ®óng !")
		if dongep == 1 then
			Msg2Player("<color=yellow>§iÒu kiÖn dßng "..dongep.."<color=red>: 4 Phóc Duyªn + 0 Thñy Tinh")
		elseif dongep == 2 or dongep == 3 then
			Msg2Player("<color=yellow>§iÒu kiÖn dßng "..dongep.."<color=red>: 6 Phóc Duyªn + 2 Thñy Tinh")
		elseif dongep == 4 or dongep == 5 then
			Msg2Player("<color=yellow>§iÒu kiÖn dßng "..dongep.."<color=red>: 4 Phóc Duyªn + 4 Thñy Tinh")
		elseif dongep == 6 then
			Msg2Player("<color=yellow>§iÒu kiÖn dßng "..dongep.."<color=red>: 2 Phóc Duyªn + 6 Thñy Tinh")
		end	
	return
	end
	
	--Level43 = Level_KhamNam(check41,check42,check43,check44,check45,check46,check47,check48,check49,check410,check411)
	CheckCapDo = 0
	if a == 0 or a == 1 then
		CheckCapDo = TinhToan_CapDo(dongep, GetIdMagicEventItem(check43))+ 1
	else
		CheckCapDo = TinhToan_CapDo(dongep, GetIdMagicEventItem(check43)) 
	end

	Level43 = 10 - (CheckCapDo - GetLevelMagicEventItem(check43))
	if Level43 > 10 then
	Level43 = 10
	end
	--if (1) then
	--Msg2Player("Dong ep: "..dongep.." - ID: "..GetIdMagicEventItem(check43).." - Level: "..GetLevelMagicEventItem(check43).." - Level Yeu Cau: "..CheckCapDo.." - Level thuc te: "..Level43.."")
	--return
	--end

	
	
	lucky1 = GetEquipMagicLucky(check41,1)
	lucky2 = GetEquipMagicLucky(check41,2)
	lucky3 = GetEquipMagicLucky(check41,3)
	lucky4 = GetEquipMagicLucky(check41,4)
	lucky5 = GetEquipMagicLucky(check41,5)
	lucky6 = GetEquipMagicLucky(check41,6)
	-- lucky = MayMan_KhamNam(check41,check42,check43,check44,check45,check46,check47,check48,check49,check410,check411)
	lvht  = loai_HT(check42)
	lvda = CheckCapDo
	if lvht > lvda then
		if (lvht - 1 == lvda) then
			lucky = random(90,100)
		else
			lucky = 100
		end
	else
		if (lvht == lvda) then
		lucky = random(80,100)
		elseif lvht + 1 == lvda then
		lucky = random(50,80)
		elseif lvht + 2 == lvda then
			lucky = random(0,50)
			Level43 = Level43 - 1
		elseif lvht + 3 == lvda then
			lucky = 50
			Level43 = Level43 - 2
		else
			lucky = 50
			Level43 = Level43 - 3
		end
	end
	if (Level43 < 1) then
	Level43 = 1
	end
--	lucky = loai_HT(check42) / CheckCapDo * 100
	if  lucky > 100 then
	lucky = 100
	end
	
	Msg2Player("May m¾n kh¶m n¹m: <color=yellow>"..lucky.."%")
	
	Id43 = GetIdMagicEventItem(check43)
	Level411 = GetEquipMagicLevel(check41,1)
	Id411 = GetEquipMagicId(check41,1)
	Level412 = GetEquipMagicLevel(check41,2)
	Id412 = GetEquipMagicId(check41,2)
	Level413 = GetEquipMagicLevel(check41,3)
	Id413 = GetEquipMagicId(check41,3)
	Level414 = GetEquipMagicLevel(check41,4) 
	Id414 = GetEquipMagicId(check41,4)
	Level415 = GetEquipMagicLevel(check41,5)
	Id415 = GetEquipMagicId(check41,5)
	Level416 = GetEquipMagicLevel(check41,6)
	Id416 = GetEquipMagicId(check41,6)
	random41 = GetEquipMagicRandomSeed(check41)

	Pay(100000)
	DelEquipIdx(check41)
	DelItemIdx(check42)
	DelItemIdx(check43)
	DelItemIdx(check44)
	DelItemIdx(check45)
	DelItemIdx(check46)
	DelItemIdx(check47)
	DelItemIdx(check48)
	DelItemIdx(check49)
	DelItemIdx(check410)
	DelItemIdx(check411)

	if GetIdxPGItem(4,1) == 0 and GetIdxPGItem(4,2) == 0 and GetIdxPGItem(4,3) == 0 and GetIdxPGItem(4,4) == 0 and GetIdxPGItem(4,5) == 0 and GetIdxPGItem(4,6) == 0 and GetIdxPGItem(4,7) == 0 and GetIdxPGItem(4,8) == 0 and GetIdxPGItem(4,9) == 0 and GetIdxPGItem(4,10) == 0 and GetIdxPGItem(4,11) == 0 then
		if (dongep == 1) then
			htidx = AddItemPink(0,a,b,c,d,0,lucky,lucky2,lucky3,lucky4,lucky5,lucky6,Level43,Id43,Level412,Id412,Level413,Id413,Level414,Id414,Level415,Id415,Level416,Id416,0,0)
		elseif (dongep == 2) then
			htidx = AddItemPink(0,a,b,c,d,0,lucky1,lucky,lucky3,lucky4,lucky5,lucky6,Level411,Id411,Level43,Id43,Level413,Id413,Level414,Id414,Level415,Id415,Level416,Id416,1,random41)
		elseif (dongep == 3) then
			htidx = AddItemPink(0,a,b,c,d,0,lucky1,lucky2,lucky,lucky4,lucky5,lucky6,Level411,Id411,Level412,Id412,Level43,Id43,Level414,Id414,Level415,Id415,Level416,Id416,1,random41)
		elseif (dongep == 4) then
			htidx = AddItemPink(0,a,b,c,d,0,lucky1,lucky2,lucky3,lucky,lucky5,lucky6,Level411,Id411,Level412,Id412,Level413,Id413,Level43,Id43,Level415,Id415,Level416,Id416,1,random41)
		elseif (dongep == 5) then
			htidx = AddItemPink(0,a,b,c,d,0,lucky1,lucky2,lucky3,lucky4,lucky,lucky6,Level411,Id411,Level412,Id412,Level413,Id413,Level414,Id414,Level43,Id43,Level416,Id416,1,random41)
		elseif (dongep == 6) then
			htidx = AddItemPink(0,a,b,c,d,0,lucky1,lucky2,lucky3,lucky4,lucky5,lucky,Level411,Id411,Level412,Id412,Level413,Id413,Level414,Id414,Level415,Id415,Level43,Id43,1,random41)
		end	
		Msg2SubWorld("Chóc mõng ["..GetName().."] ®· kh¶m thµnh c«ng <color=pink>"..GetNameItemBox(htidx).." dßng "..dongep.."")	
		Msg2Player("Kh¶m n¹m thµnh c«ng Option vµo Trang bÞ HuyÒn tinh")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end

else
Msg2Player("Chua code")
end
end

function TinhToan_DieuKien(dongep, a4,a5,a6,a7,a8,a9,a10,a11)
thuytinh = 0
pd = 0
thuytinh = thuytinh + check_thuytinh(a4)
pd = pd + check_pd(a4)
thuytinh = thuytinh + check_thuytinh(a5)
pd = pd + check_pd(a5)
thuytinh = thuytinh + check_thuytinh(a6)
pd = pd + check_pd(a6)
thuytinh = thuytinh + check_thuytinh(a7)
pd = pd + check_pd(a7)
thuytinh = thuytinh + check_thuytinh(a8)
pd = pd + check_pd(a8)
thuytinh = thuytinh + check_thuytinh(a9)
pd = pd + check_pd(a9)
thuytinh = thuytinh + check_thuytinh(a10)
pd = pd + check_pd(a10)
thuytinh = thuytinh + check_thuytinh(a11)
pd = pd + check_pd(a11)

if dongep == 1 and pd == 4 and thuytinh == 0 then
return 1
elseif dongep == 2 and pd == 6 and thuytinh == 2 then
return 1
elseif dongep == 3 and pd == 6 and thuytinh == 2 then
return 1
elseif dongep == 4 and pd == 4 and thuytinh == 4 then
return 1
elseif dongep == 5 and pd == 4 and thuytinh == 4 then
return 1
elseif dongep == 6 and pd == 2 and thuytinh == 6 then
return 1
end
return 0
end
MangOption = {
{85,	4,	4,	5},
{89,	4,	4,	5},
{93,	4,	4,	5},
{101,	5,	6,	6},
{102,	5,	6,	6},
{103,	5,	6,	6},
{104,	5,	6,	6},
{105,	5,	6,	6},
{106,	5,	6,	7},
{108,	5,	6,	7},
{110,	5,	6,	7},
{111,	6,	6,	7},
{113,	5,	6,	7},			
{98,	4,	5,	6},
{99,	4,	5,	6},			
{166,	4,	4,	5},			
{115,	6,	7,	8},
{121,	6,	6,	7},			
{123,	6,	6,	7},			
{125,	6,	6,	7},
{126,	5,	6,	6},			
{136,	5,	6,	6},
{137,	5,	6,	6},
{140,	4,	4,	5},
{141,	6,	6,	7},
{142,	6,	6,	7},
{143,	6,	6,	7},
{144,	6,	6,	7},			
{153,	4,	4,	5},
}
function TinhToan_CapDo(dong, idmagic)
for i=1,getn(MangOption) do
	if idmagic == MangOption[i][1] then
			if dong == 1 or dong == 2 then
			return MangOption[i][2]
			elseif dong == 3 or dong == 4 then
			return MangOption[i][3]
			elseif dong == 5 or dong == 6 then
			return MangOption[i][4]
			end
	end
end
return 3
end


function check_loaiitem(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,loai)
Point = 0
if GetGenreItem(a1) ~= 0 then
	if loai == 0 then
		if GetItemType(a1) ~= 0 then
			Point = Point + 1
		end
	elseif loai == 2 then
		if GetItemType(a1) ~= 2 then
			Point = Point + 1
		end
	end
end

if GetGenreItem(a2) ~= 4 or GetDetailTypeItem(a2) < 44 or GetDetailTypeItem(a2) > 53 then
Point = Point + 1
end
if GetGenreItem(a3) ~= 4 or GetDetailTypeItem(a3) < 167 or GetDetailTypeItem(a3) > 172 then
Point = Point + 1
end
if a4 <= 0 or GetGenreItem(a4) == 4 or GetDetailTypeItem(a4) == 28 or GetDetailTypeItem(a4) == 29 or GetDetailTypeItem(a4) == 30 or GetDetailTypeItem(a4) == 173 or GetDetailTypeItem(a4) == 174 or GetDetailTypeItem(a4) == 175 then
Point = Point
else 
Point = Point + 1
end
if a5 <= 0 or GetGenreItem(a5) == 4 or GetDetailTypeItem(a5) == 28 or GetDetailTypeItem(a5) == 29 or GetDetailTypeItem(a5) == 30 or GetDetailTypeItem(a5) == 173 or GetDetailTypeItem(a5) == 174 or GetDetailTypeItem(a5) == 175 then
Point = Point
else 
Point = Point + 1
end
if a6 <= 0 or GetGenreItem(a6) == 4 or GetDetailTypeItem(a6) == 28 or GetDetailTypeItem(a6) == 29 or GetDetailTypeItem(a6) == 30 or GetDetailTypeItem(a6) == 173 or GetDetailTypeItem(a6) == 174 or GetDetailTypeItem(a6) == 175 then
Point = Point
else 
Point = Point + 1
end
if a7 <= 0 or GetGenreItem(a7) == 4 or GetDetailTypeItem(a7) == 28 or GetDetailTypeItem(a7) == 29 or GetDetailTypeItem(a7) == 30 or GetDetailTypeItem(a7) == 173 or GetDetailTypeItem(a7) == 174 or GetDetailTypeItem(a7) == 175 then
Point = Point
else 
Point = Point + 1
end
if a8 <= 0 or GetGenreItem(a8) == 4 or GetDetailTypeItem(a8) == 28 or GetDetailTypeItem(a8) == 29 or GetDetailTypeItem(a8) == 30 or GetDetailTypeItem(a8) == 173 or GetDetailTypeItem(a8) == 174 or GetDetailTypeItem(a8) == 175 then
Point = Point
else 
Point = Point + 1
end
if a9 <= 0 or GetGenreItem(a9) == 4 or GetDetailTypeItem(a9) == 28 or GetDetailTypeItem(a9) == 29 or GetDetailTypeItem(a9) == 30 or GetDetailTypeItem(a9) == 173 or GetDetailTypeItem(a9) == 174 or GetDetailTypeItem(a9) == 175 then
Point = Point
else 
Point = Point + 1
end
if a10 <= 0 or GetGenreItem(a10) == 4 or GetDetailTypeItem(a10) == 28 or GetDetailTypeItem(a10) == 29 or GetDetailTypeItem(a10) == 30 or GetDetailTypeItem(a10) == 173 or GetDetailTypeItem(a10) == 174 or GetDetailTypeItem(a10) == 175 then
Point = Point
else 
Point = Point + 1
end
if a11 <= 0 or GetGenreItem(a11) == 4 or GetDetailTypeItem(a11) == 28 or GetDetailTypeItem(a11) == 29 or GetDetailTypeItem(a11) == 30 or GetDetailTypeItem(a11) == 173 or GetDetailTypeItem(a11) == 174 or GetDetailTypeItem(a11) == 175 then
Point = Point
else 
Point = Point + 1
end

return Point
end

function MayMan_KhamNam(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
--Point = TinhPoint(0,1,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
--phamchat = floor(5 + 50 * (Point/36) - 2 * (mod(GetLevelItem(a1)-1,10) + 1 ))
phamchat = random(1,100)
--phamchat = 100
--Msg2SubWorld("May man: "..phamchat.." %")
return phamchat
end


function Level_KhamNam(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
captong = (loai_HT(a2) + GetLevelMagicEventItem(a3))/2
if (GetDetailTypeItem(a3)-166 == 1 or GetDetailTypeItem(a3)-166 == 2) then
lvlopt = captong * 10 / 7
Point = TinhPoint(0,1,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
elseif (GetDetailTypeItem(a3)-166 == 3 or GetDetailTypeItem(a3)-166 == 4) then
lvlopt = captong * 10 / 7
Point = TinhPoint(0,1,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
elseif (GetDetailTypeItem(a3)-166 == 5 or GetDetailTypeItem(a3)-166 == 6) then
lvlopt = captong * 10 / 8
Point = TinhPoint(1,1,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
end
--Msg2SubWorld(" "..GetName().." ")
lvl2 = (lvlopt - floor(lvlopt))*100
--Msg2SubWorld("lv2: "..lvl2.." ")
xs = random(1,100)
if xs < lvl2 then
phamchat = floor(lvlopt)+1
else
phamchat = floor(lvlopt)
end
--Msg2SubWorld("phamchat 1: "..phamchat.." ")

if phamchat > 10 then
phamchat = 10
elseif phamchat < 1 then
phamchat = 1
end
--Msg2SubWorld("phamchat 2: "..phamchat.." ")

if GetDetailTypeItem(a1) == 1 or GetDetailTypeItem(a1) == 0 then
macdinh = 80
elseif GetDetailTypeItem(a1) >= 2 then
macdinh = 100
end

if (GetDetailTypeItem(a3)-166 == 1) then
	thanhcong = macdinh
else
	sum = 0
	for i=1,(GetDetailTypeItem(a3)-166-1) do
		sum = sum + GetEquipMagicLevel(a1,i)
	end
	if macdinh == 100 then
	thanhcong = floor(macdinh - sum - 2 * (mod(GetLevelItem(a1)-1,10) + 1 ))
	else
	thanhcong = floor(macdinh - sum/2 - 2 * (mod(GetLevelItem(a1)-1,10) + 1 ))
	end
end

--Msg2SubWorld("Dong: "..(GetDetailTypeItem(a3)-166).." - Tinh Diem:  "..Point.." - XS Max: "..thanhcong.." ")
xacsuat = Point * thanhcong / 40 - (GetDetailTypeItem(a3)-167) * 8
--Msg2SubWorld("Xac suat thanh cong quyet dinh: "..xacsuat.." ")
xs2 = random(1,100)
if xs2 > xacsuat then	
	if check_optdb2(GetIdMagicEventItem(a3),phamchat) ~= 0 then
		phamchat = check_optdb2(GetIdMagicEventItem(a3),phamchat)
	else
		phamchat = phamchat - 1
	end
end

if check_optdb2(GetIdMagicEventItem(a3),phamchat) == 0 then
phamchat = phamchat  + 3
end

--Msg2Player("phamchat 3: "..phamchat.." ")

for i=1,getn(Mang_OPTDB) do
	if GetIdMagicEventItem(a3) == Mang_OPTDB[i][1] then
		if phamchat < Mang_OPTDB[i][2] then
			phamchat = Mang_OPTDB[i][2]
		elseif phamchat > Mang_OPTDB[i][getn(Mang_OPTDB[i])] then
			phamchat = Mang_OPTDB[i][getn(Mang_OPTDB[i])]
		end
	end
end
--Msg2SubWorld("phamchat 4: "..phamchat.." ")
if phamchat > 10 then
phamchat = 10
elseif phamchat < 1 then
phamchat = 1
end
--Msg2SubWorld("phamchat 5: "..phamchat.." ")
return phamchat
end


function check_optdb2(num,phamchat)
for i=1,getn(Mang_OPTDB) do
	if num == Mang_OPTDB[i][1] then
		if phamchat <= Mang_OPTDB[i][3] then
			return Mang_OPTDB[i][2]
		end
		if phamchat >= Mang_OPTDB[i][getn(Mang_OPTDB[i])] then
			return random(Mang_OPTDB[i][getn(Mang_OPTDB[i])-1],Mang_OPTDB[i][getn(Mang_OPTDB[i])]-1)
		end	
		for j=3,(getn(Mang_OPTDB[i])-1) do
			if getn(Mang_OPTDB[i])-1 == 3 and phamchat >= Mang_OPTDB[i][3] and phamchat < Mang_OPTDB[i][getn(Mang_OPTDB[i])] then
				return random(Mang_OPTDB[i][2],Mang_OPTDB[i][3]-1)			
			elseif phamchat >= Mang_OPTDB[i][j] and phamchat < Mang_OPTDB[i][j+1] then
				return random(Mang_OPTDB[i][j-1],Mang_OPTDB[i][j]-1)
			end
		end
	end
end
return 0
end

Mang_OPTDB = {
{111,2,4,6,8,10},
{115,2,5,9},
{113,3,6,9},
--{136,2,5,7,10},
--{137,2,5,7,10},
--{92,2,5,7,10},
--{88,1,3,5,6,8,10},
--{96,1,3,5,6,7},
--{104,2,4,6,8,10},
{101,2,4,6,8,10},
{105,2,4,6,8,10},
{102,2,4,6,8,10},
{103,1,4,7,8,10},
--{134,3,6,10},
{110,4,7,10},
{106,3,6,10},
{108,4,6,10}
}

function loai_HT(num)
return GetDetailTypeItem(num)-43
end

function Tinh_Diem_Rut(buoc,num1,loaidong1,thuytinh,phucduyen,sl_thuytinh,sl_pd)
if num1 == 0 then
return 0
end

num = GetDetailTypeItem(num1)
if pd > sl_pd  then
	if num == 173  then
		return 0
	elseif num == 174 then
		return 1
	elseif num == 175 then
		return 2
	end
elseif thuytinh > sl_thuytinh and num >= 28 and num <= 30 then
	if num == 29 then
		return 3
	elseif num == 28 or num == 30 then
		return 2
	end
end

if loaidong1 == 171 or loaidong1 == 169 or loaidong1 == 167 then
loaidong = 1
else
loaidong = 2
end

if num == 29 then
	if buoc == 1 then
		return 5
	else
		return 3
	end
elseif num == 174 then
return 2
elseif num == 173 then
return 1
elseif num == 175 then
return 4
elseif num == 28 then
	if loaidong == 1 and buoc == 0 then
	return 5
	else
	return 3
	end
elseif num == 30 then
	if loaidong == 2 and buoc == 0 then
	return 5
	else
	return 3
	end
end
end

function check_thuytinh(num1)
if num1 <= 0 then
return 0
end
num = GetDetailTypeItem(num1)
if num == 29 or num == 30 or num == 28 then
return 1
else
return 0
end
end

function check_pd(num1)
if num1 <= 0 then
return 0
end
num = GetDetailTypeItem(num1)
if num == 175 then
return 1
else
return 0
end
end



function TinhPoint(dong56,buoc,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
thuytinh = 0
pd = 0
thuytinh = thuytinh + check_thuytinh(a4)
pd = pd + check_pd(a4)
thuytinh = thuytinh + check_thuytinh(a5)
pd = pd + check_pd(a5)
thuytinh = thuytinh + check_thuytinh(a6)
pd = pd + check_pd(a6)
thuytinh = thuytinh + check_thuytinh(a7)
pd = pd + check_pd(a7)
thuytinh = thuytinh + check_thuytinh(a8)
pd = pd + check_pd(a8)
thuytinh = thuytinh + check_thuytinh(a9)
pd = pd + check_pd(a9)
thuytinh = thuytinh + check_thuytinh(a10)
pd = pd + check_pd(a10)
thuytinh = thuytinh + check_thuytinh(a11)
pd = pd + check_pd(a11)
Point = 0
if check_optdb(GetEquipMagicId(a1,GetDetailTypeItem(a3)-166)) == 1 or check_optdb(GetIdMagicEventItem(a3)) == 1 or dong56 == 1 then
Point = Point + Tinh_Diem_Rut(buoc,a4,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a5,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a6,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a7,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a8,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a9,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a10,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a11,GetDetailTypeItem(a3),thuytinh,pd,8,0)
else
Point = Point + Tinh_Diem_Rut(buoc,a4,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a5,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a6,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a7,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a8,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a9,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a10,GetDetailTypeItem(a3),thuytinh,pd,8,0)
Point = Point + Tinh_Diem_Rut(buoc,a11,GetDetailTypeItem(a3),thuytinh,pd,8,0)
end
return Point
end

function Level_Rut_Dong(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
phamchat = loai_HT(a2)
Point = TinhPoint(0,0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
if check_optdb(GetEquipMagicId(a1,GetDetailTypeItem(a3)-166)) == 1 then
xacsuat = Point / 38 * 75
else
xacsuat = Point / 36 * 75
end
xs2 = random(1,100)

rdthem = RandomNew(1,100)
if rdthem < 50 then
xacsuat = xacsuat + RandomNew(1,10)
else
xacsuat = xacsuat - RandomNew(1,10)
end


Msg2Player("X¸c suÊt Rót Dßng hiÖn t¹i: <color=yellow>"..floor(xacsuat,1).."%")
if xs2 > xacsuat then
phamchat = phamchat - 1
Msg2Player("<color=yellow>Rót dßng thÊt b¹i, b¹n bÞ mÊt 1 cÊp HuyÒn Tinh !")
else
Msg2Player("<color=yellow>Rót dßng thµnh c«ng, b¹n gi÷ nguyªn cÊp ®é HuyÒn Tinh !")
end

if phamchat < 1 then
phamchat = 1
elseif phamchat > 10 then
phamchat = 10
end

return phamchat
end	

function check_opttrung(idx,num,magic)
if idx <= 0 then
return 0
end
for i=1,num do
	if (GetEquipMagicId(idx,i) == magic) then
		return 1
	end
end
return 0
end
function check_sodong(idx)
for i=1,6 do
	if (GetEquipMagicId(idx,i) == 0) then
		return i-1
	end
end
return 6
end


function check_dong207(idx)
for i=1,6 do
	if (GetEquipMagicId(idx,i) == 207) then
		return i
	end
end
return "Khong co"
end

function check_optdb(num)
if num == 137 or num == 136 or num == 115 or num == 116 or num == 121 or num == 122 or num == 123 or num == 124 or num == 125 or num == 126 or num == 142 or num == 143 or num == 140 or num == 141 or num == 144 or num == 113 or num == 104 then
return 1
else
return 0
end
end
function check_reqitem(num)
if num == 111 then  -- Toc do di chuyen - Giay
return 3
elseif num == 113 then -- thoi gian phuc hoi - Ao
return 2
elseif num == 166 or num == 137 or num == 136 or num == 115 or num == 116 or num == 121 or num == 122 or num == 123 or num == 124 or num == 125 or num == 126 or num == 142 or num == 143 or num == 140 or num == 141 or num == 144 then  
return 1
else
return 7
end
end



function checkSoDong(num,loai)
	if num == 44 then
	return random(1,5)
	elseif num == 45 then
	return random(2,5)
	elseif num == 46 then
	return random(3,5)
	elseif num == 47 then
	return random(4,5)
	else
	return 5
	end
end

function checkHT(num)
for i=1,getn(MangHT) do
	if (MangHT[i][2] == num) then
		return i
	end
end
end
MangHT = {
{"HuyÒn Tinh 1",44,70,10000},
{"HuyÒn Tinh 2",45,60,20000},
{"HuyÒn Tinh 3",46,50,30000},
{"HuyÒn Tinh 4",47,40,40000},
{"HuyÒn Tinh 5",48,30,50000},
{"HuyÒn Tinh 6",49,20,60000},
{"HuyÒn Tinh 7",50,10,100000},
{"HuyÒn Tinh 8",51,5,500000},
{"HuyÒn Tinh 9",52,0,0},
{"HuyÒn Tinh 10",53,0,0}
}
function xanh_to_tim(num)
if num == 2 then
return 50
elseif num == 5 then
return 20
elseif num == 6 then
return 24
elseif num == 8 then
return 20
elseif num == 7 then
return 27
end
end

function checksoluongbang()
check = 0
for i=1,getn(MAP_BANG_HOI) do
	if GetTongName() == MAP_BANG_HOI[i][1] then
		check = i
		break			
	end
end
return check
end