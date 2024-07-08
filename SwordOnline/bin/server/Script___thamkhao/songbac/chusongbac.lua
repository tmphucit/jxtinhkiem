Include("\\script\\songbac\\datasongbac.lua")
Include("\\script\\songbac\\datanganluong.lua")
Include("\\script\\songbac\\datatienvang.lua")
Include("\\script\\lib\\thuvien.lua")


function main()
Msg2Player("<color=pink>Block th¼ng tay nh÷ng Nh©n VËt ThÇu BÇu Cua vµ Nh©n VËt C¸ §é BÇu Cua ngoµi NPC Chñ Sßng B¹c.")
Msg2Player("<color=green>Nguyªn nh©n: §¸nh qu¸ lín, g©y øc chÕ cho bªn thua, bªn nµo th¾ng còng ®­îc xem lµ B¹n Admin. V× thÕ nghiªm cÊm.")
SayNew("<color=green>Chñ Sßng B¹c<color>: Chóc quý kh¸ch <color=yellow>Ph¸t Tµi Ph¸t Léc<color>. B©y giê nãi xem ta cã thÓ gióp g× cho nhµ ng­¬i?",5,
"§Æt c­îc BÇu Cua [Ng©n L­îng]/datcuoc",
"§Æt c­îc BÇu Cua [Vµng]/datcuoc",
"Xem t×nh h×nh ®Æt c­îc /xem",
"NhËn tiÒn ®Æt c­îc /nhantien1",
"Tho¸t./no")
end
function nhantien1()
SayNew("<color=green>Chñ Sßng B¹c<color>: Ng­¬i muèn rót g× ?",3,
"Ta muèn rót Ng©n L­îng th¾ng c­îc /nhantien",
"Ta muèn rót TiÒn Vµng th¾ng cuéc /nhantien",
"Tho¸t./no")
end

TIME_SONG_BAC = {
{31,3},
{1,4},
{2,4},
{3,4},
{4,4},
}

function check_time_sukien()
thang = tonumber(date("%m"))
ngay = tonumber(date("%d"))

for i=1,getn(TIME_SONG_BAC) do
	if ngay == TIME_SONG_BAC[i][1] and thang == TIME_SONG_BAC[i][2] then
			return 1
	end
end
return 0
end

function RunTimer()
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))

-- if (check_time_sukien() == 0) then
-- return
-- end

if gio == 16 and phut > 45 then
Msg2SubWorld("<color=green>[BÇu Cua] <color=red>Ph¸t Tµi Ph¸t Léc t¹i <color=yellow>Ba L¨ng HuyÖn 197/203.<color=red> Thêi gian cßn l¹i "..(59-phut).." phót n÷a")
return
end
if gio == 14 and phut == 15 then
SetGlbMissionV(11 , 1)
Msg2SubWorld("<color=green>[BÇu Cua] <color=red> L­ît ®Æt c­îc BÇu Cua thø 1 b¾t ®Çu. H·y ®Õn <color=yellow>Ba L¨ng HuyÖn 197/203 <color=red>®Ó tham gia ®Æt c­îc !")
return
end

if GetGlbMissionV(11) > 0 and GetGlbMissionV(11) < 50 then
if mod(phut,5) == 0 or phut == 59 then

	ketqua1 = RandomNew(1,6)
	ketqua2 = RandomNew(1,6)
	ketqua3 = RandomNew(1,6)
	
 	ms = GetGlbMissionV(37)
	check = floor(ms / 1000)
	if check == 5 then
		ketqua1 = floor(mod(ms,1000) / 100)
		ketqua2 = floor(mod(ms,100) / 10)
		ketqua3 = floor(mod(ms,10))
	end
	SetGlbMissionV(37, 0)
	if ketqua1 < 1 or ketqua1 > 6 then
			ketqua1 = RandomNew(1,6)
	end
	if ketqua2 < 1 or ketqua2 > 6 then
			ketqua2 = RandomNew(1,6)
	end	
	if ketqua3 < 1 or ketqua3 > 6 then
			ketqua1 = RandomNew(1,6)
	end
	
	Msg2SubWorld("KÕt Qu¶: <color=yellow>"..CheckTen(ketqua1).." <color=red>- <color=green>"..CheckTen(ketqua2).." <color=red>- <color=blue>"..CheckTen(ketqua3).."")
		
if getn(DataSongBac) == 0 then
Msg2SubWorld("<color=green>[BÇu Cua] <color=red> L­ît thø "..GetGlbMissionV(11).." kh«ng cã ai ®Æt c­îc.")
SetGlbMissionV(11, GetGlbMissionV(11) + 1)
return
end

Msg2SubWorld("<color=pink>Danh s¸ch nh÷ng ng­êi tróng th­ëng l­ît thø: "..GetGlbMissionV(11).."")

XacDinh_NganLuong = 1000000
XacDinh_Vang = 1000000

	for i=1,getn(DataSongBac) do
		num = 0
		if DataSongBac[i][2] == ketqua1 then
				num = num + 1
		end
		if DataSongBac[i][2] == ketqua2 then
				num = num + 1
		end
		if DataSongBac[i][2] == ketqua3 then
				num = num + 1
		end
		
			if DataSongBac[i][3] == 1 then
				XacDinh_NganLuong = XacDinh_NganLuong - DataSongBac[i][4]
			else
				XacDinh_Vang = XacDinh_Vang - DataSongBac[i][4]
			end
			
		if num > 0 then
			thutien = (num+1) * DataSongBac[i][4]
			if DataSongBac[i][3] == 1 then
				Msg2SubWorld("<color=yellow>["..DataSongBac[i][1].."] <color=red>cã "..num.." con "..CheckTen(DataSongBac[i][2]).." nhËn ®­îc: <color=green>"..thutien.." v¹n l­îng")
				XacDinh_NganLuong = XacDinh_NganLuong + thutien
				vt = CheckDataNganLuong(DataSongBac[i][1])
				if vt == 0 then
					DataNganLuong[getn(DataNganLuong)+1] = {DataSongBac[i][1],thutien}
				else
					DataNganLuong[vt][2] = DataNganLuong[vt][2] + thutien
				end
			else
				Msg2SubWorld("<color=yellow>["..DataSongBac[i][1].."] <color=red> cã "..num.." con "..CheckTen(DataSongBac[i][2]).." nhËn ®­îc: <color=yellow>"..thutien.." vµng")
				XacDinh_Vang = XacDinh_Vang + thutien
				
				vt = CheckDataTienVang(DataSongBac[i][1])
				if vt == 0 then
					DataTienVang[getn(DataTienVang)+1] = {DataSongBac[i][1],thutien}
				else
					DataTienVang[vt][2] = DataTienVang[vt][2] + thutien
				end
			end
		end
	end
	DataSongBac = {}
	thoigian = tonumber(date("%H%M%d%m"))
	if XacDinh_NganLuong > 1000000 then
		LoginLog = openfile("Data/SongBac/BauCua_KetQua_Van.txt", "a");
		if LoginLog then
		write(LoginLog,"["..thoigian.."] Thua: "..(XacDinh_NganLuong-1000000).." van luong\n");
		end
		closefile(LoginLog)
	else
		LoginLog = openfile("Data/SongBac/BauCua_KetQua_Van.txt", "a");
		if LoginLog then
		write(LoginLog,"["..thoigian.."] Thang: "..(1000000-XacDinh_NganLuong).." van luong\n");
		end
		closefile(LoginLog)
	end
	
	
	if XacDinh_Vang > 1000000 then
		LoginLog = openfile("Data/SongBac/BauCua_KetQua_Vang.txt", "a");
		if LoginLog then
		write(LoginLog,"["..thoigian.."] Thua: "..(XacDinh_Vang-1000000).." vang\n");
		end
		closefile(LoginLog)
	else
		LoginLog = openfile("Data/SongBac/BauCua_KetQua_Vang.txt", "a");
		if LoginLog then
		write(LoginLog,"["..thoigian.."] Thang: "..(1000000-XacDinh_Vang).." vang\n");
		end
		closefile(LoginLog)
	end
	
	SetGlbMissionV(11, GetGlbMissionV(11) + 1)
	luubang()
end
end
end

function CheckDataNganLuong(playername)
if getn(DataNganLuong) == 0 then
return 0
end
for i=1,getn(DataNganLuong) do
	if DataNganLuong[i][1] == playername then
		return i
	end
end
return 0
end
function CheckDataTienVang(playername)
if getn(DataTienVang) == 0 then
return 0
end
for i=1,getn(DataTienVang) do
	if DataTienVang[i][1] == playername then
		return i
	end
end
return 0
end
function xem()
Msg2Player("<color=pink>L­ît ®Æt c­îc thø: "..GetGlbMissionV(11)..":")
van_tom = 0
van_cua = 0
van_bau = 0
van_ca = 0
van_ga = 0
van_nai = 0
vang_tom = 0
vang_cua = 0
vang_bau = 0
vang_ca = 0
vang_ga = 0
vang_nai = 0

for i=1,getn(DataSongBac) do
	if GetName() == DataSongBac[i][1] then
		if DataSongBac[i][3] == 1 then
			if DataSongBac[i][2] == 1 then
				van_tom = van_tom + DataSongBac[i][4]
			elseif DataSongBac[i][2] == 2 then
				van_cua = van_cua + DataSongBac[i][4]
			elseif DataSongBac[i][2] == 3 then
				van_bau = van_bau + DataSongBac[i][4]
			elseif DataSongBac[i][2] == 4 then
				van_ca = van_ca + DataSongBac[i][4]
			elseif DataSongBac[i][2] == 5 then
				van_ga = van_ga + DataSongBac[i][4]
			elseif DataSongBac[i][2] == 6 then
				van_nai = van_nai + DataSongBac[i][4]
			end
		elseif DataSongBac[i][3] == 2 then
			if DataSongBac[i][2] == 1 then
				vang_tom = vang_tom + DataSongBac[i][4]
			elseif DataSongBac[i][2] == 2 then
				vang_cua = vang_cua + DataSongBac[i][4]
			elseif DataSongBac[i][2] == 3 then
				vang_bau = vang_bau + DataSongBac[i][4]
			elseif DataSongBac[i][2] == 4 then
				vang_ca = vang_ca + DataSongBac[i][4]
			elseif DataSongBac[i][2] == 5 then
				vang_ga = vang_ga + DataSongBac[i][4]
			elseif DataSongBac[i][2] == 6 then
				vang_nai = vang_nai + DataSongBac[i][4]
			end
		end
	end
end


if van_tom > 0 then
Msg2Player("- §Æt c­îc T«m: <color=green>"..van_tom.." v¹n l­îng")
end
if van_cua > 0 then
Msg2Player("- §Æt c­îc Cua: <color=green>"..van_cua.." v¹n l­îng")
end
if van_bau > 0 then
Msg2Player("- §Æt c­îc BÇu: <color=green>"..van_bau.." v¹n l­îng")
end
if van_ca > 0 then
Msg2Player("- §Æt c­îc C¸: <color=green>"..van_ca.." v¹n l­îng")
end
if van_ga > 0 then
Msg2Player("- §Æt c­îc Gµ: <color=green>"..van_ga.." v¹n l­îng")
end
if van_nai > 0 then
Msg2Player("- §Æt c­îc Nai: <color=green>"..van_nai.." v¹n l­îng")
end

if vang_tom > 0 then
Msg2Player("- §Æt c­îc T«m: <color=yellow>"..vang_tom.." vµng")
end
if vang_cua > 0 then
Msg2Player("- §Æt c­îc Cua: <color=yellow>"..vang_cua.." vµng")
end
if vang_bau > 0 then
Msg2Player("- §Æt c­îc BÇu: <color=yellow>"..vang_bau.." vµng")
end
if vang_ca > 0 then
Msg2Player("- §Æt c­îc C¸: <color=yellow>"..vang_ca.." vµng")
end
if vang_ga > 0 then
Msg2Player("- §Æt c­îc Gµ: <color=yellow>"..vang_ga.." vµng")
end
if vang_nai > 0 then
Msg2Player("- §Æt c­îc Nai: <color=yellow>"..vang_nai.." vµng")
end
end
function no()
end
function nhantien(nsel)
i = nsel + 1
if i == 1 then
vt = CheckDataNganLuong(GetName())
				if vt == 0 then
					Talk(1,"","Ng­¬i kh«ng cã göi tiÒn ë chç ta, kh«ng thÓ rót ")
				else
					if DataNganLuong[vt][2] == 0 then
						Talk(1,"","Ng­¬i kh«ng cã göi tiÒn ë chç ta, kh«ng thÓ rót ")
					else
						soluong = DataNganLuong[vt][2]
						tientruoc = GetCash()
						DataNganLuong[vt][2] = 0
						luubang()
						if DataNganLuong[vt][2] == 0 then
							Earn(soluong * 10000)
							Msg2Player("B¹n ®· rót "..soluong.." v¹n l­îng ")
							SaveData()
							thoigian = tonumber(date("%H%M%d%m"))
							LoginLog = openfile("Data/SongBac/BauCua_RutNganLuong.txt", "a");
							if LoginLog then
								write(LoginLog,"Ngan Luong: "..GetName().." - Rut: ["..soluong.."] - Tr­íc: "..tientruoc.." - Sau: "..GetCash().." - Time: "..thoigian.."\n");
							end
							closefile(LoginLog)
							Talk(0,"")
						end
					end
				end
else
		
vt = CheckDataTienVang(GetName())
				if vt == 0 then
					Talk(1,"","Ng­¬i kh«ng cã göi tiÒn ë chç ta, kh«ng thÓ rót ")
				else
					if DataTienVang[vt][2] == 0 then
						Talk(1,"","Ng­¬i kh«ng cã göi tiÒn ë chç ta, kh«ng thÓ rót ")
					else
						soluong = DataTienVang[vt][2]
						tientruoc = GetTask(99)
						DataTienVang[vt][2] = 0
						luubang()
						if DataTienVang[vt][2] == 0 then
							SetTask(99, GetTask(99) + soluong)
							SetTask(101 , GetTask(99))
							
							Msg2Player("B¹n ®· rót "..soluong.." vµng ")
							SaveData()
							thoigian = tonumber(date("%H%M%d%m"))
							LoginLog = openfile("Data/SongBac/BauCua_RutNganLuong.txt", "a");
							if LoginLog then
								write(LoginLog,"-Tien Vang: "..GetName().." - Rut: ["..soluong.."] - Tr­íc: "..tientruoc.." - Sau: "..GetTask(99).." - Time: "..thoigian.."\n");
							end
							closefile(LoginLog)
							Talk(0,"")
						end
					end
				end
end
end

function datcuoc(nsel)
-- if (check_time_sukien() == 0 or check_time_sukien() == 1) then
-- Talk(1,"","H«m nay kh«ng tæ chøc ®¸nh b¹c, vui lßng quay l¹i vµo ngµy Thø T­ vµ Chñ NhËt hµng tuÇn !")
-- return
-- end


SetTaskTemp(1,nsel + 1)
if GetGlbMissionV(11) == 0 or GetGlbMissionV(11) >= 50 then
Talk(1,"","HiÖn t¹i <color=yellow>ch­a tíi giê <color>Më Sßng, Chóng t«i phôc vô quý d©n ch¬i vµo lóc <color=red>23h00 - 24h00 mçi ngµy<color>. Mçi ngµy cã <color=yellow>12<color> l­ît ®Æt c­îc ")
return
end
if GetTaskTemp(1) == 1 then
tom,cua,bau,ca,ga,nai = CheckSoLuong(1)
else
tom,cua,bau,ca,ga,nai = CheckSoLuong(2)
end
SayNew("<color=red>L­ît Thø "..GetGlbMissionV(11).."<color>\nT«m:  <color=yellow>"..tom.."<color> - Cua: <color=yellow>"..cua.."<color> -  C¸: <color=yellow>"..ca.."<color>\nBÇu: <color=green>"..bau.."<color> - Gµ: <color=green>"..ga.."<color> - Nai: <color=green>"..nai.."",7,
"§Æt c­îc T«m/datcuoc1",
"§Æt c­îc Cua/datcuoc1",
"§Æt c­îc BÇu/datcuoc1",
"§Æt c­îc C¸ /datcuoc1",
"§Æt c­îc Gµ /datcuoc1",
"§Æt c­îc Nai/datcuoc1",
"Tho¸t./no")
end

function datcuoc1(nsel)
SetTaskTemp(2 , nsel + 1)
if GetTaskTemp(1) == 1 then
OpenStringBox (1,"§¬n VÞ: V¹n" , "datcuoctienvan")
else
OpenStringBox (1,"§¬n VÞ: Vµng" , "datcuocvang")
end
end

function datcuoctienvan(num2)
num = tonumber(num2)
if num <= 0 then
Talk(1,"","Ng­¬i ch­a nhËp sè tiÒn v¹n cÇn ®Æt, vui lßng ®Æt c­îc l¹i !")
return
end
if num > 100 or num < 10 then
Talk(1,"","ChØ ®­îc ®Æt c­îc tõ 10 v¹n - 100 v¹n l­îng, vui lßng ®Æt c­îc l¹i !")
return
end

datcuoc2(1,num)
end
function datcuocvang(num2)
num = tonumber(num2)
if num <= 0 then
Talk(1,"","Ng­¬i ch­a nhËp sè tiÒn v¹n cÇn ®Æt, vui lßng ®Æt c­îc l¹i !")
return
end
if num > 40 or num < 5 then
Talk(1,"","ChØ ®­îc ®Æt c­îc tõ 5 vµng - 40 vµng, vui lßng ®Æt c­îc l¹i !")
return
end

datcuoc2(2,num)
end

function datcuoc2(loai,cost)
vitri = CheckViTri(GetTaskTemp(2),loai)

if loai == 1 then
	if GetCash() < cost*10000 then
		Talk(1,"","Ng©n l­îng kh«ng ®ñ, kh«ng thÓ ®Æt c­îc")
		return
	end
	
	if vitri == 0 then
		DataSongBac[getn(DataSongBac)+1] = {GetName(),GetTaskTemp(2),loai,cost}
	else
		Talk(1,"","Ng­¬i ®· ®Æt c­îc "..CheckTen(GetTaskTemp(2))..", kh«ng thÓ ®Æt thªm !")
		return
	end
	
	Pay(cost*10000)
	Msg2Player("B¹n ®· ®Æt c­îc "..CheckTen(GetTaskTemp(2))..": <color=yellow>"..cost.." v¹n l­îng")
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SongBac/BauCua_DatCuoc.txt", "a");
	if LoginLog then
		write(LoginLog,"Luot "..GetGlbMissionV(11).." - "..GetName().." - Dat: ["..GetTaskTemp(2).."] - Gia: ["..cost.." van] - Con: "..GetCash().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	Talk(0,"")
else
	if GetTask(99) < cost then
		Talk(1,"","TiÒn vµng kh«ng ®ñ, kh«ng thÓ ®Æt c­îc")
		return
	end
	if vitri == 0 then
	DataSongBac[getn(DataSongBac)+1] = {GetName(),GetTaskTemp(2),loai,cost}
	else
	Talk(1,"","Ng­¬i ®· ®Æt c­îc "..CheckTen(GetTaskTemp(2))..", kh«ng thÓ ®Æt thªm !")
	return
	end

	SetTask(99, GetTask(99) - cost)
	SetTask(101, GetTask(101) - cost)
	
	Msg2Player("B¹n ®· ®Æt c­îc "..CheckTen(GetTaskTemp(2))..": <color=yellow>"..cost.." vµng")
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SongBac/BauCua_DatCuoc.txt", "a");
	if LoginLog then
		write(LoginLog,"Luot "..GetGlbMissionV(11).." - "..GetName().." - Dat: ["..GetTaskTemp(2).."] - Gia: ["..cost.." vang] - Con: "..GetTask(99).." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	Talk(0,"")
end

luubang()
end

function CheckViTri(num,loai)
if getn(DataSongBac) == 0 then
return 0
end
for i=1,getn(DataSongBac) do
	if num == DataSongBac[i][2] and loai == DataSongBac[i][3] and GetName() == DataSongBac[i][1]	then
		return i
	end
end
return 0
end
function luubang()
	BANG2 = TaoBang(DataSongBac,"DataSongBac")
	LuuBang("script/songbac/datasongbac.lua",BANG2)
	BANG2 = TaoBang(DataNganLuong,"DataNganLuong")
	LuuBang("script/songbac/datanganluong.lua",BANG2)
	BANG2 = TaoBang(DataTienVang,"DataTienVang")
	LuuBang("script/songbac/datatienvang.lua",BANG2)
end

function CheckTen(i)
if i == 1 then
return "T«m"
elseif i == 2 then
return "Cua"
elseif i == 3 then
return "BÇu"
elseif i == 4 then
return "C¸ "
elseif i == 5 then
return "Gµ "
elseif i == 6 then
return "Nai"
else
return "Kh«ng X¸c §Þnh"
end
end

function CheckSoLuong(loai)
tom = 0
cua = 0
bau = 0
ca = 0
ga = 0
nai = 0
for i=1,getn(DataSongBac) do
	if DataSongBac[i][3] == loai then
		if DataSongBac[i][2] == 1 then
			tom = tom + DataSongBac[i][4]
		elseif DataSongBac[i][2] == 2 then
			cua = cua + DataSongBac[i][4]
		elseif DataSongBac[i][2] == 3 then
			bau = bau + DataSongBac[i][4]
		elseif DataSongBac[i][2] == 4 then
			ca = ca + DataSongBac[i][4]
		elseif DataSongBac[i][2] == 5 then
			ga = ga + DataSongBac[i][4]
		elseif DataSongBac[i][2] == 6 then
			nai = nai + DataSongBac[i][4]
		end
	end
end
return tom,cua,bau,ca,ga,nai
end