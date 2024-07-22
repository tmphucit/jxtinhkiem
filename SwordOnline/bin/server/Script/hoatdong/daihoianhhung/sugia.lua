Include("\\script\\hoatdong\\daihoianhhung\\danhsach.lua")
Include("\\script\\hoatdong\\daihoianhhung\\danhsachthidau.lua")
Include("\\script\\hoatdong\\daihoianhhung\\danhsachthidau_next.lua")
Include("\\script\\hoatdong\\daihoianhhung\\danhsachnhanthuong.lua")
Include("\\script\\lib\\thuvien.lua")
soluonggioihan = 16
soluongthanhvien = 3
phi = 2000000
TinhTrangThiDau = 0

function main(idx)
SayNew("<color=green>Sø Gi¶ Anh Hïng<color>: Chµo ®¹i hiÖp, ng­¬i muèn ta gióp g× nµo?",2,
"Ta ®Õn nhËn phÇn th­ëng §¹i Héi Anh hïng LÇn 1/nhanphanthuong",
"Tho¸t./no")
end


function main_(idx)
gio = tonumber(date("%H"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
day,month,year = tinhngaytieptheo()
w,x,y = GetWorldPos()
if ngay ~= 11 and (ngay == 10 and gio < 17) then
Talk(1,"","B¸o danh: 0h00 - 20h00 ngµy 11/04/2020\nTham chiÕn: 21h00 ngµy 11/04/2020")
return
end
if w == 106 then
		if TinhTrangThiDau == 1 then
		Talk(1,"","HiÖn t¹i ch­a hÕt thêi gian thi ®Êu, kh«ng thÓ kiÓm tra. Vui lßng ®îi vµ thö l¹i sau")
		return
		end
		SayNew("<color=green>Sø Gi¶ Anh Hïng<color>: H·y tiªu diÖt toµn bé §éi §èi Thñ råi h·y quay l¹i gÆp ta",3,
		"Ta ®· giµnh chiÕn th¾ng, h·y ®­a ta ®Õn trËn tiÕp theo /kiemtrachienthang",
		"NhËn M¸u MiÔn PhÝ /nhanhoithien",
		"Thoat./no")
else
	if gio == 21 and ngay == 11 then
		SayNew("HiÖn t¹i ®· cã: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ®éi <color>®¨ng ký <enter>Thi ®Êu: <color=yellow>21h00 ngµy "..day.."/0"..month.."/2020",4,
		"Ta muèn vµo Khu Vùc ChiÕn §Êu /thamgia",
		"KiÓm tra t×nh h×nh chiÕn ®éi /kiemtra",
		"NhËn th­ëng §¹i Héi Anh Hïng/nhanthuong",
		"Tho¸t./no")
	else
		SayNew("HiÖn t¹i ®· cã: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ®éi <color>®¨ng ký <enter>Thi ®Êu: <color=yellow>21h00 ngµy "..day.."/0"..month.."/2020<color>\nPhÝ b¸o danh: "..(phi/10000).." v¹n l­îng / 1 ng­êi",4,
		"Ta muèn b¸o danh §¹i Héi Anh Hïng /baodanh",
	--	"Thö nghiÖm vµo b¶n ®å DHAH /thunghiemmap",
		"Ta muèn kiÓm tra t×nh h×nh chiÕn ®éi /kiemtra",
		"Ta muèn nhËn th­ëng §¹i Héi Anh Hïng/nhanthuong",
		"Tho¸t./no")
	end
end
end

function thunghiemmap()
NewWorld(106, 235*8,227*16)
SetLogoutRV(1)
SetFightState(1)
Talk(1,"","B¹n ®· vµo b¶n ®å §¹i Héi Anh Hïng. NÕu bÞ lçi vui lßng tho¸t toµn bé game vµ cËp nhËt l¹i")
Msg2Player("<color=green>Thö nghiÖm vµo b¶n ®å §¹i Héi Anh Hïng tr¸nh viÖc khi sù kiÖn diÔn ra bÞ lçi do ch­a cËp nhËt. NÕu ai ®· vµo thµnh c«ng th× kh«ng cÇn cËp nhËt n÷a !")
end

function nhanhoithien()
if GetFightState() == 0 then
	for i=1,20 do
		idxitem = AddItem(1,4,0,5,0,0,0)
		SetItemLock(idxitem)
	end	
	Msg2Player("B¹n nhËn ®­îc 20 Ngò Hoa Ngäc Lé Hoµn")
else
	Talk(1,"","Trong lóc thi ®Êu, kh«ng ®­îc nhËn")
end
end

function nhanphanthuong()
vitri = checktennhanthuong()
if vitri == 0 then
Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch nhËn th­ëng §¹i Héi Anh Hïng")
return
end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ 6 x 5 « trèng, kh«ng thÓ nhËn th­ëng !")
	return
end
	if 	PHAN_THUONG[vitri][2] == 1 then
		PHAN_THUONG[vitri][2] = 10
		
	Msg2SubWorld("<color=green>Chóc mõng "..GetName().." nhËn th­ëng H¹ng 1 §¹i Héi Anh Hïng:")	
	Msg2SubWorld("- Tiªn Th¶o Lé 1 Giê ")
	Msg2SubWorld("- Tiªn Th¶o Lé 3 Giê ")
	Msg2SubWorld("- Tiªn Th¶o Lé 6 Giê ")
	Msg2SubWorld("- 30 M·nh Ngùa ChiÕu D¹ ")
	AddEventItem(117)
	AddEventItem(119)
	AddEventItem(120)
	for i=1,30 do AddEventItem(274) end
	sx = RandomNew(1,5)
	if sx == 1 then
	idxitem = AddItem(0,7,41,1,0,100,0)
	Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
	elseif sx == 2 then
	idxitem = AddItem(0,2,79,1,0,100,0)
	Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
	elseif sx == 3 then
	idxitem = AddItem(0,6,26,1,0,100,0)
	Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
	elseif sx == 4 then
	idxitem = AddItem(0,5,24,1,0,100,0)
	Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
	elseif sx == 5 then
	idxitem = AddItem(0,8,22,1,0,100,0)
	Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
	end
	
		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)
	elseif PHAN_THUONG[vitri][2] == 2 then
		PHAN_THUONG[vitri][2] = 20
		Msg2SubWorld("<color=green>Chóc mõng "..GetName().." nhËn th­ëng H¹ng 2 §¹i Héi Anh Hïng:")
		
		Msg2SubWorld("- Tiªn Th¶o Lé 1 Giê ")
		Msg2SubWorld("- Tiªn Th¶o Lé 3 Giê ")
		Msg2SubWorld("- Tiªn Th¶o Lé 6 Giê ")
		Msg2SubWorld("- 100 M·nh Ngùa XÝch Thè ")
		AddEventItem(117)
		AddEventItem(119)
		AddEventItem(120)
		for i=1,100 do AddEventItem(273) end
		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)
	elseif PHAN_THUONG[vitri][2] == 3 then
		PHAN_THUONG[vitri][2] = 20
		Msg2SubWorld("<color=green>Chóc mõng "..GetName().." nhËn th­ëng H¹ng 3 §¹i Héi Anh Hïng:")
		
		Msg2SubWorld("- Tiªn Th¶o Lé 1 Giê ")
		Msg2SubWorld("- Tiªn Th¶o Lé 3 Giê ")
		AddEventItem(117)
		AddEventItem(119)

		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)	
	elseif PHAN_THUONG[vitri][2] == 4 then
		PHAN_THUONG[vitri][2] = 20
		Msg2SubWorld("<color=green>Chóc mõng "..GetName().." nhËn th­ëng H¹ng 3 §¹i Héi Anh Hïng:")
		
		Msg2SubWorld("- Tiªn Th¶o Lé 1 Giê ")
		AddEventItem(117)

		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)			
		
	else
	Talk(1,"","B¹n ®· nhËn phÇn th­ëng §¹i Héi Anh Hïng råi, kh«ng thÓ nhËn thªm")
	end
end


function checktennhanthuong()
for i=1,getn(PHAN_THUONG) do
	if GetName() == PHAN_THUONG[i][1] then
		return i
	end
end
return 0
end

function kiemtrachienthang()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if TinhTrangThiDau ~= 2 then
Talk(1,"","HiÖn t¹i ch­a hÕt thêi gian thi ®Êu, kh«ng thÓ kiÓm tra. Vui lßng ®îi vµ thö l¹i sau")
return
end


vitri = checkten(GetName())
doithu = kiemtradoithu(GetName())
if 	doithu == 0 then
	if checkTempThiDau(vitri) == 0 then
		TempThi_Dau[getn(TempThi_Dau)+1] = vitri
	end
	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 106 then
			for k=1,getn(DANH_SACH[vitri]) do
				if GetName() == DANH_SACH[vitri][k][1] then
					Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>"..GetName().." ®· giµnh chiÕn th¾ng do kh«ng cã ®èi thñ ")
					ResetMacDinh()
				end
			end	
		end
	end
	PlayerIndex = idxplayer
	
	
else
	soluongteam = 0
	tonglevelteam = 0
	soluongdoithu = 0
	tongleveldoithu = 0
	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 106 then
			for k=1,getn(DANH_SACH[doithu]) do
				if GetName() == DANH_SACH[doithu][k][1] then
					soluongdoithu = soluongdoithu + 1
					tongleveldoithu = tongleveldoithu + GetTaskTemp(50)
				end
			end
			for k=1,getn(DANH_SACH[vitri]) do
				if GetName() == DANH_SACH[vitri][k][1] then
					soluongteam = soluongteam + 1
					tonglevelteam = tonglevelteam + GetTaskTemp(50)
				end
			end
		end
	end
	PlayerIndex = idxplayer
	if soluongdoithu == 0 then
		if checkTempThiDau(vitri) == 0 then
			TempThi_Dau[getn(TempThi_Dau)+1] = vitri
		end
			idxplayer = PlayerIndex
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
				if w == 106 then
					for k=1,getn(DANH_SACH[vitri]) do
						if GetName() == DANH_SACH[vitri][k][1] then
							PhanThuongVong(GetName())
							Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>"..GetName().." ®· ®¸nh b¹i toµn bé thµnh viªn nhãm ®èi thñ vµ vinh dù giµnh chiÕn th¾ng")
							ResetMacDinh()
						end
					end
				end
			end
			PlayerIndex = idxplayer
	else
		if soluongteam > soluongdoithu then
			if checkTempThiDau(vitri) == 0 then
				TempThi_Dau[getn(TempThi_Dau)+1] = vitri
			end
			idxplayer = PlayerIndex
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
				if w == 106 then
					for k=1,getn(DANH_SACH[vitri]) do
						if GetName() == DANH_SACH[vitri][k][1] then
							PhanThuongVong(GetName())
							Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>"..GetName().." ®· giµnh chiÕn th¾ng v× sè l­îng thµnh viªn cßn l¹i nhiÒu h¬n")
							Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Sè l­îng nhãm m×nh: "..soluongteam.." - Sè l­îng nhãm ®èi thñ: "..soluongdoithu..". Nhãm b¹n ®· giµnh chiÕn th¾ng")
							ResetMacDinh()
						end
					end
				end
			end
			PlayerIndex = idxplayer		
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
				if w == 106 then
					for k=1,getn(DANH_SACH[doithu]) do
						if GetName() == DANH_SACH[doithu][k][1] then
							Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Nhãm b¹n ®· bÞ thua cuéc do sè l­îng thµnh viªn cßn l¹i Ýt h¬n. Sè l­îng ®éi m×nh: "..soluongdoithu.." - Sè l­îng nhãm ®èi thñ: "..soluongteam.."")
							ResetMacDinh()
						end
					end
				end
			end	
			PlayerIndex = idxplayer	
		elseif 	soluongteam < soluongdoithu then
			if checkTempThiDau(doithu) == 0 then
				TempThi_Dau[getn(TempThi_Dau)+1] = doithu
			end
			idxplayer = PlayerIndex
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
				if w == 106 then
					for k=1,getn(DANH_SACH[doithu]) do
						if GetName() == DANH_SACH[doithu][k][1] then
							PhanThuongVong(GetName())
							Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>"..GetName().." ®· giµnh chiÕn th¾ng v× sè l­îng thµnh viªn cßn l¹i nhiÒu h¬n")
							Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Sè l­îng nhãm m×nh: "..soluongdoithu.." - Sè l­îng nhãm ®èi thñ: "..soluongteam..". Nhãm b¹n ®· giµnh chiÕn th¾ng")
							ResetMacDinh()
						end
					end
				end
			end
			PlayerIndex = idxplayer		
			for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
				if w == 106 then
					for k=1,getn(DANH_SACH[vitri]) do
						if GetName() == DANH_SACH[vitri][k][1] then
							Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Nhãm b¹n ®· bÞ thua cuéc do sè l­îng thµnh viªn cßn l¹i Ýt h¬n. Sè l­îng ®éi m×nh: "..soluongteam.." - Sè l­îng nhãm ®èi thñ: "..soluongdoithu.."")
								ResetMacDinh()
						end
					end
				end
			end	
			PlayerIndex = idxplayer		
		else
			if tonglevelteam > tongleveldoithu then	
				idxplayer = PlayerIndex
				for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
					if w == 106 then
						if checkTempThiDau(vitri) == 0 then
								TempThi_Dau[getn(TempThi_Dau)+1] = vitri
						end		
						for k=1,getn(DANH_SACH[vitri]) do
							if GetName() == DANH_SACH[vitri][k][1] then
								PhanThuongVong(GetName())
								Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>"..GetName().." ®· giµnh chiÕn th¾ng v× sè l­îng thµnh viªn b»ng nhau, Tæng s¸t th­¬ng lín h¬n")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Sè l­îng nhãm m×nh: "..soluongteam.." - Sè l­îng nhãm ®èi thñ: "..soluongdoithu..".")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Tæng s¸t th­¬ng nhãm m×nh: "..tonglevelteam.." - Tæng s¸t th­¬ng nhãm ®èi thñ: "..tongleveldoithu..".")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Nhãm cña b¹n ®· giµnh chiÕn th¾ng !")
								ResetMacDinh()
							end
						end
					end
				end
				PlayerIndex = idxplayer		
				for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
					if w == 106 then
						if checkTempThiDau(vitri) == 0 then
								TempThi_Dau[getn(TempThi_Dau)+1] = vitri
						end		
						for k=1,getn(DANH_SACH[doithu]) do
							if GetName() == DANH_SACH[doithu][k][1] then
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Sè l­îng nhãm m×nh: "..soluongdoithu.." - Sè l­îng nhãm ®èi thñ: "..soluongteam..".")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Tæng s¸t th­¬ng nhãm m×nh: "..tongleveldoithu.." - Tæng s¸t th­¬ng nhãm ®èi thñ: "..tonglevelteam..".")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Nhãm cña b¹n ®· thua cuéc !")
								ResetMacDinh()
							end
						end
					end
				end
				PlayerIndex = idxplayer
			elseif tonglevelteam < tongleveldoithu then	
				idxplayer = PlayerIndex
				for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
					if w == 106 then
						if checkTempThiDau(vitri) == 0 then
								TempThi_Dau[getn(TempThi_Dau)+1] = vitri
						end		
						for k=1,getn(DANH_SACH[vitri]) do
							if GetName() == DANH_SACH[vitri][k][1] then
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Sè l­îng nhãm m×nh: "..soluongteam.." - Sè l­îng nhãm ®èi thñ: "..soluongdoithu..".")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Tæng s¸t th­¬ng nhãm m×nh: "..tonglevelteam.." - Tæng s¸t th­¬ng nhãm ®èi thñ: "..tongleveldoithu..".")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Nhãm cña b¹n ®· thua cuéc !")
								ResetMacDinh()
							end
						end
					end
				end
				PlayerIndex = idxplayer		
				for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				w,x,y = GetWorldPos()
					if w == 106 then
						if checkTempThiDau(vitri) == 0 then
								TempThi_Dau[getn(TempThi_Dau)+1] = vitri
						end		
						for k=1,getn(DANH_SACH[doithu]) do
							if GetName() == DANH_SACH[doithu][k][1] then
								PhanThuongVong(GetName())
								Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>"..GetName().." ®· giµnh chiÕn th¾ng v× sè l­îng thµnh viªn b»ng nhau, Tæng s¸t th­¬ng lín h¬n")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Sè l­îng nhãm m×nh: "..soluongdoithu.." - Sè l­îng nhãm ®èi thñ: "..soluongteam..".")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Tæng s¸t th­¬ng nhãm m×nh: "..tongleveldoithu.." - Tæng s¸t th­¬ng nhãm ®èi thñ: "..tonglevelteam..".")
								Msg2Player("<color=pink>[KÕt Qu¶] <color=yellow>Nhãm cña b¹n ®· giµnh chiÕn th¾ng !")
								ResetMacDinh()
							end
						end
					end
				end
				PlayerIndex = idxplayer	
			else
				idxplayer = PlayerIndex
				for i=1,GetCountPlayerMax() do
					PlayerIndex = i
					w,x,y = GetWorldPos()
					if w == 106 then
						for k=1,getn(DANH_SACH[doithu]) do
							if GetName() == DANH_SACH[doithu][k][1] then
								Msg2Player("<color=yellow>Sè l­îng thµnh viªn vµ Tæng s¸t th­¬ng nhãm m×nh vµ nhãm ®èi thñ b»ng nhau, v× thÕ c¶ 2 nhãm bÞ lo¹i.")
								ResetMacDinh()
							end
						end
						for k=1,getn(DANH_SACH[vitri]) do
							if GetName() == DANH_SACH[vitri][k][1] then
								Msg2Player("<color=yellow>Sè l­îng thµnh viªn vµ Tæng s¸t th­¬ng nhãm m×nh vµ nhãm ®èi thñ b»ng nhau, v× thÕ c¶ 2 nhãm bÞ lo¹i.")
								ResetMacDinh()
							end
						end	
					end
				end
				PlayerIndex = idxplayer		
			end
		end
	end
end
savebang()
end

function checkTempThiDau(num)
for i=1,getn(TempThi_Dau) do
	if TempThi_Dau[i] == num then
		return i
	end
end
return 0
end

function ResetMacDinh()
SetRevPos(66,18)
NewWorld(66,3460,6199)
SetCreateTeam(1);
BlockPKState(0)
SetFightState(0)
SetPKState(0)
SetDeathScript("");
end

function PhanThuongVong(ten)
if TinhTrangThiDau ~= 2 then
return
end
if gio ~= 21 then
return
end
	if phut < 15 then
		PHAN_THUONG[getn(PHAN_THUONG)+1] = {ten,5,getn(DANH_SACH)}
	elseif phut < 30 then
		PHAN_THUONG[getn(PHAN_THUONG)+1] = {ten,4,getn(DANH_SACH)}
	elseif phut < 45 then
		PHAN_THUONG[getn(PHAN_THUONG)+1] = {ten,3,getn(DANH_SACH)}
	end
	BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
	LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)
end

function KetThucNhanThuong(team)
Msg2SubWorld("<color=green>Danh s¸ch xÕp h¹ng §¹i Héi Anh Hïng: ")
for k=1,getn(DANH_SACH[team]) do
		Msg2SubWorld("- H¹ng 1: "..DANH_SACH[team][k][1].."")
		PHAN_THUONG[getn(PHAN_THUONG)+1] = {DANH_SACH[team][k][1], 1,getn(DANH_SACH)}
end
for i=1,getn(THI_DAU) do
	if THI_DAU[i] ~= team then	
		for k=1,getn(DANH_SACH[THI_DAU[i]]) do
		Msg2SubWorld("- H¹ng 2: "..DANH_SACH[THI_DAU[i]][k][1].."")
		PHAN_THUONG[getn(PHAN_THUONG)+1] = {DANH_SACH[THI_DAU[i]][k][1], 2,getn(DANH_SACH)}
		end	
	end
end
BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)


idxplayer = PlayerIndex
for t=1,GetCountPlayerMax() do
	PlayerIndex = t
	w,x,y = GetWorldPos()
	if w == 106 then
		SetRevPos(66,18)
		NewWorld(66,3460,6199)
		SetCreateTeam(1);
		BlockPKState(0)
		SetFightState(0)
		SetPKState(0)
		SetDeathScript("");
	end
end
PlayerIndex = idxplayer
TempThi_Dau = {}
THI_DAU = {}
BANG5 = TaoBang(DANH_SACH,"DANH_SACH")
LuuBang("script/daihoianhhung/danhsach_backup.lua",BANG5)
DANH_SACH = {}
savebang()
end

function checkhiep()
return 1
end
function kiemtradoithu(ten)
vitri = checkten(ten)
for k=1,getn(THI_DAU) do
	if vitri == THI_DAU[k] then
		if k == getn(THI_DAU) and mod(k,2) == 1 then
			return 0
		else
			if mod(k,2) == 1 then
				return THI_DAU[k+1]
			else
				return THI_DAU[k-1]
			end
		end
	end
end
return 0
end

function thamgia()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if getn(THI_DAU) == 0 then
Talk(1,"","HiÖn t¹i ch­a s¾p xÕp xong chiÕn ®éi, vui lßng ®îi sau 21h00 h«m nay")
return
end
if TinhTrangThiDau == 1 then
Talk(1,"","HiÖn ®ang trong thêi gian thi ®Êu, kh«ng thÓ tham gia tiÕp")
return
end
if TinhTrangThiDau == 2 then
Talk(1,"","HiÖn ®ang trong thêi gian kiÓm so¸t, kh«ng thÓ tham gia tiÕp")
return
end
if ngay == day and thang == month then
	if gio == 21 and TinhTrangThiDau == 0 then
		vitri = checkten(GetName())
		if vitri > 0 then
			dem = 0
			for k=1,getn(THI_DAU) do
				if vitri == THI_DAU[k] then
					DiChuyenKhuVuc(k)
					dem = 1
				end
			end		
			if dem == 0 then
				Talk(1,"","§éi cña b¹n ®· bÞ lo¹i, kh«ng thÓ tham gia trËn tiÕp theo")
			end
		else
			Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch ®¨ng ký §¹i Héi Anh Hïng, kh«ng thÓ tham gia")
		end
	end
else
		Talk(1,"","Thêi gian di chuyÓn vµo Khu Vùc Chê - §¹i Héi Anh Hïng tõ 21h00 - 21h15, hiÖn t¹i ng­¬i kh«ng thÓ vµo ")
end
end


function RunTimer()
end
function RunTimer_()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
day,month,year = tinhngaytieptheo()



if ngay == day and thang == month and nam == year then
if getn(DANH_SACH) == 0 then
return
end

		if gio == 21 and phut == 0 then -- Xep Hang Danh Sach
			THI_DAU = {}
			for i = 1,getn(DANH_SACH) do
					sx = RandomNew(1,100)
					if sx < 30 then
						THI_DAU[getn(THI_DAU)+1] = i
					end
			end
			for i = 1,getn(DANH_SACH) do
				if checkdanhsachthidau(i) == 0 then
					sx = RandomNew(1,100)
					if sx < 30 then
						THI_DAU[getn(THI_DAU)+1] = i
					end
				end
			end		
			for p=1,getn(DANH_SACH) do
				if checkdanhsachthidau(p) == 0 then
						THI_DAU[getn(THI_DAU)+1] = p
				end
			end
			savebang()
		end
		if gio < 21 and phut == 0 then
			Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red> B¾t ®Çu vµo "..(20-gio).." giê "..(59 - phut).." phót n÷a. C¸c vÞ anh hïng chuÈn bÞ tinh thÇn ®Ó chiÕn ®Êu")
		end
		if gio == 21 and ((phut >= 0 and phut < 5) or (phut >= 15 and phut < 20)  or (phut >= 30 and phut < 35)  or (phut >= 45 and phut < 50)) then
			Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>HiÖn t¹i ®ang trong thêi gian chê chiÕn ®Êu, c¸c ®éi ®¨ng ký vµo Khu Vùc ChiÕn §Êu ®Ó ®îi")
		end
		if gio == 21 and ((phut >= 5 and phut < 10) or (phut >= 20 and phut < 25)  or (phut >= 35 and phut < 40)  or (phut >= 50 and phut < 55)) then
			Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>HiÖn t¹i ®ang trong thêi gian thi ®Êu, kh«ng nhËn thªm ng­êi tham gia.")
		end
		if gio == 21 and ((phut >= 10 and phut < 15) or (phut >= 25 and phut < 30) or (phut >= 40 and phut < 45) or (phut >= 55 and phut < 59))then
			Msg2SubWorld("<color=green>[§¹i Héi Anh Hïng] <color=red>HiÖn t¹i ®ang trong thêi gian kiÓm so¸t, kh«ng nhËn thªm ng­êi tham gia.")
		end		
		
if gio == 21 and (phut == 5 or phut == 20 or phut == 35 or phut == 50 ) then
	TinhTrangThiDau = 1
	idxplayer = PlayerIndex
		for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			w,x,y = GetWorldPos()
			if w == 106 then
				SetFightState(1)
				Msg2Player("<color=yellow>TrËn ®Êu b¾t ®Çu. H·y ®¸nh b¹i toµn bé ®èi thñ ®Ó giµnh chiÕn th¾ng")
			end
		end
	PlayerIndex = idxplayer
	TempThi_Dau = {}
end		

if gio == 21 and (phut == 10 or phut == 25 or phut == 40 or phut == 55) then -- KET THUC TRAN DAU
	TinhTrangThiDau = 2
	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 106 and GetFightState() == 1 then
			SetFightState(0)
			Msg2Player("<color=yellow>TrËn thi ®Êu ®· kÕt thóc, vui lßng gÆp NPC KiÓm So¸t ®Ó nhËn kÕt qu¶. Thêi gian kiÓm tra lµ: 5 phót ")
		end
	end
	PlayerIndex = idxplayer
	end
end

if gio == 21 and (phut == 15 or phut == 30 or phut == 45 or phut == 59) then -- SAP XEP LAI DANH SACH
	idxplayer = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 106 then
			ResetMacDinh()
			Msg2Player("<color=yellow>KÕt thóc thêi gian KiÓm So¸t, b¹n bÞ ®­a ra ngoµi")
		end
	end
	PlayerIndex = idxplayers
	if getn(TempThi_Dau) == 1 then
		KetThucNhanThuong(TempThi_Dau[1])		
		return
	end
	TinhTrangThiDau = 0
	THI_DAU = {}
	for t=1,getn(TempThi_Dau) do
		THI_DAU[getn(THI_DAU)+1] = TempThi_Dau[t]
	end
	TempThi_Dau = {}
	savebang()
end
end



function DiChuyenKhuVuc(num)
vt = 0
if mod(num,2) == 1 then
vt = floor(num / 2) + 1
else
vt = floor(num / 2)
end
if vt ~= 0 then
	phe = mod(num,2) + 1
	NewWorld(106, TOA_DO[vt][1]*8, TOA_DO[vt][2]*16)
	SetPKState(2)
	SetCreateTeam(0);
	SetLogoutRV(1);
	LeaveTeam()
	BlockPKState(1)
	SetFightState(0)
	if phe == 1 then
		SetCurCamp(1)
	else
		SetCurCamp(2)
	end 
	SetDeathScript("\\script\\hoatdong\\daihoianhhung\\playerdie.lua");
	Msg2Player("B¹n ®· ®­îc ®­a vµo <color=yellow>Khu Vùc ChiÕn §Êu "..vt.."")
	Msg2Player("H·y ®¸nh b¹i toµn bé thµnh viªn cña §éi §èi Thñ ®Ó giµnh chiÕn th¾ng")
	Msg2SubWorld("<color=blue>"..GetName().." ®· vµo Khu Vùc "..vt.."")
end
end

TOA_DO_BACKUP = {
{{1778,3170},{1778,3329}},
{{1867,3185},{1857,3348}},
{{1861,3522},{1771,3580}},
{{1871,3699},{1780,3691}},
{{1680,3563},{1573,3547}},
{{1582,3708},{1692,3712}},
{{1678,3377},{1577,3353}},
{{1681,3180},{1584,3202}},
}
TOA_DO = {
{235,227},
{218,214},
{235,222},
{175,208},
{163,214},
{158,217},
{191,205},
{191,200},
{191,211},
{191,216},
{191,222},
{191,227},
{191,233},
{196,236},
{197,230},
{197,197},
{197,203},
{197,208},
{197,213},
{197,219},
{197,225},
{202,200},
{202,205},
{202,194},
{202,211},
{202,217},
{202,222},
{202,227},
{202,233},
{202,238},
{208,192},
{208,197},
{208,202},
{208,208},
{207,220},
{208,224},
{208,230},
{207,235},
{207,241},
{218,203},
{218,208},
{218,219},
{218,230},
{218,235},
{225,211},
{224,222},
{223,227},
{229,213},
{229,230},
{235,206},
{235,213},
}


function checkdanhsachthidau(stt)
for i=1,getn(THI_DAU) do
	if stt == THI_DAU[i] then
		return 1
	end
end
return 0
end

function kiemtra()
if getn(DANH_SACH) == 0 then
Talk(1,"","HiÖn t¹i ch­a cã chiÕn ®éi nµo tham gia")
return
end
OpenStringBox(2,"NhÊp Thø  Tù 1 - 16","acceptkiemtra")
end


function acceptkiemtra(num2)
num = tonumber(num2)
if num <= getn(DANH_SACH) then
	Msg2Player("<color=yellow>Danh s¸ch chiÕn ®éi thø "..num..":")
	for i=1,getn(DANH_SACH[num]) do
		Msg2Player(""..i..". ["..DANH_SACH[num][i][2].."] "..DANH_SACH[num][i][1].." - Lvl: "..DANH_SACH[num][i][3].."")
	end
else
Talk(1,"","HiÖn t¹i chØ cã "..getn(DANH_SACH).." chiÕn ®éi ®¨ng ký tham gia, vui lßng nhËp sè nhá h¬n")
end

end
function baodanh()
gio = tonumber(date("%H"))
if gio >= 20 then
Talk(1,"","Thêi gian bao danh tõ 0h00 - 20h00 ngµy 11/04/2020, qu¸ thêi gian trªn kh«ng cho b¸o danh")
return
end


if getn(DANH_SACH) >= soluonggioihan then
	Talk(1,"","HiÖn t¹i tuÇn nµy ®· ®ñ "..soluonggioihan.." tæ b¸o danh, ng­¬i vui lßng ®îi tuÇn sau nhÐ ")
	return
end

if GetTeam() == nil then
Talk(1,"","B¹n ch­a lËp tæ ®éi, kh«ng thÓ ®¨ng ký tham gia")
return
end

if GetTeamSize() ~= soluongthanhvien then
Talk(1,"","Tæ ®éi b¾t buéc "..soluongthanhvien.." thµnh viªn, kh«ng thÓ ®¨ng ký tham gia")
return
end

if IsCaptain() ~= 1 then
Talk(1,"","ChØ cã tr­ëng nhãm míi cã thÓ ®¨ng ký ")
return
end




team = GetTeam()
name = GetName()
inum = 0

idxplayer = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
			if checkten(GetName()) > 0 then
					inum = 1
					Msg2World(""..GetName().." ®· b¸o danh tõ tr­íc, b¸o danh thÊt b¹i")
					break
			elseif GetCash() < phi then
					inum = 1
					Msg2World(""..GetName().." kh«ng mang ®ñ "..phi.." l­îng, b¸o danh thÊt b¹i")
					break
			end
	end
end
PlayerIndex = idxplayer
if inum == 1 then
return
end

num = getn(DANH_SACH) + 1
DANH_SACH[num] = {}
Msg2SubWorld("<color=yellow>"..GetName().." ®· b¸o danh §¹i Héi Anh Hïng sè thø tù: "..num.." / 16 chiÕn ®éi")
Msg2SubWorld("<color=yellow>Danh s¸ch ®¨ng ký gåm:")
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		Pay(phi)
		DANH_SACH[num][getn(DANH_SACH[num])+1] = {GetName(),GetFaction(),GetLevel()}
		Msg2SubWorld(""..getn(DANH_SACH[num])..".  ["..GetFaction().."] "..GetName().."- Lvl: "..GetLevel().."")
	end
end
PlayerIndex = idxplayer
savebang()

end

function checkten(name)
for k=1,getn(DANH_SACH) do
	for j=1,getn(DANH_SACH[k]) do
			if name == DANH_SACH[k][j][1] then
				return k
			end
	end
end
return 0
end


function savebang()
BANG = TaoBang(DANH_SACH,"DANH_SACH")
LuuBang("script/daihoianhhung/danhsach.lua",BANG)
BANG1 = TaoBang(THI_DAU,"THI_DAU")
LuuBang("script/daihoianhhung/danhsachthidau.lua",BANG1)
BANG3 = TaoBang(TempThi_Dau,"TempThi_Dau")
LuuBang("script/daihoianhhung/danhsachthidau_next.lua",BANG3)
end

mang_thi_dau = {
{7,14,21,28},
{4,11,18,25},
{4,11,18,25},
{1,8,16,22,29},
{6,13,20,27},
{4,10,17,24},
{1,8,15,22,29},
{5,12,19,27},
{3,10,18,24,31},
{2,8,15,22,29},
{5,12,19,26},
{3,6,10,17,24,31},
}
mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}

function tinhngaytieptheo()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))

return 11,4,nam
end
function tinhngaytieptheo_backup()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))

for i=1,getn(mang_thi_dau[thang]) do
	if ngay <= mang_thi_dau[thang][1] then
		return mang_thi_dau[thang][1],thang,nam
	elseif ngay > mang_thi_dau[thang][getn(mang_thi_dau[thang])] then
		if thang == 12 then
			return mang_thi_dau[1][1],1,nam+1
		else
			return mang_thi_dau[thang + 1][1],thang+1,nam
		end
	elseif ngay > mang_thi_dau[thang][i] and ngay <= mang_thi_dau[thang][i+1] then
			return mang_thi_dau[thang][i+1],thang,nam
	end
end
return 0
end

function no()
end