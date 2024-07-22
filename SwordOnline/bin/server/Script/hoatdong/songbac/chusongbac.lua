Include("\\script\\hoatdong\\songbac\\datasongbac.lua")
Include("\\script\\hoatdong\\songbac\\datanganluong.lua")
Include("\\script\\hoatdong\\songbac\\datatienvang.lua")
Include("\\script\\lib\\thuvien.lua")


function main11()
Talk(1,"","T�nh n�ng t�m kh�a ��i c�p nh�t t�nh n�ng m�i thay th� !")
end
function main()
SayNew("<color=green>Ch� S�ng B�c<color>: Ch�c qu� kh�ch <color=yellow>Ph�t T�i Ph�t L�c<color>. B�y gi� n�i xem ta c� th� gi�p g� cho nh� ng��i?",5,
"��t c��c B�u Cua [Ng�n L��ng]/datcuoc",
"��t c��c B�u Cua [V�ng]/datcuoc",
"Xem t�nh h�nh ��t c��c /xem",
"Nh�n ti�n ��t c��c /nhantien1",
"Tho�t./no")
end
function nhantien1()
SayNew("<color=green>Ch� S�ng B�c<color>: Ng��i mu�n r�t g� ?",3,
"Ta mu�n r�t Ng�n L��ng th�ng c��c /nhantien",
"Ta mu�n r�t Ti�n V�ng th�ng cu�c /nhantien",
"Tho�t./no")
end

function RunTimer__()
end
function RunTimer()
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))

-- if gio == 22 and phut > 45 then
if (gio == 22 or gio == 8) and phut == 45 then
Msg2SubWorld("<color=green>[B�u Cua] <color=red>Ph�t T�i Ph�t L�c t�i <color=yellow>T��ng D��ng 182/202.<color=red> Th�i gian c�n l�i "..(59-phut).." ph�t n�a")
return
end
-- if gio == 23 and phut == 0 then
if (gio == 23 or gio == 9) and phut == 00 then
SetGlbMissionV(11 , 1)
Msg2SubWorld("<color=green>[B�u Cua] <color=red> L��t ��t c��c B�u Cua th� 1 b�t ��u. H�y ��n <color=yellow>T��ng D��ng 182/202 <color=red>�� tham gia ��t c��c !")
return
end

if GetGlbMissionV(11) > 0 and GetGlbMissionV(11) < 13 then
if mod(phut,5) == 0 then
		ketqua1 = RandomNew(1,6)
		ketqua2 = RandomNew(1,6)
		ketqua3 = RandomNew(1,6)
	Msg2SubWorld("K�t Qu�: <color=yellow>"..CheckTen(ketqua1).." <color=red>- <color=green>"..CheckTen(ketqua2).." <color=red>- <color=blue>"..CheckTen(ketqua3).."")
		
if getn(DataSongBac) == 0 then
Msg2SubWorld("<color=green>[B�u Cua] <color=red> L��t th� "..GetGlbMissionV(11).." kh�ng c� ai ��t c��c.")
SetGlbMissionV(11, GetGlbMissionV(11) + 1)
return
end

Msg2SubWorld("<color=pink>Danh s�ch nh�ng ng��i tr�ng th��ng l��t th�: "..GetGlbMissionV(11).."")

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
				Msg2SubWorld("<color=yellow>["..DataSongBac[i][1].."] <color=red>c� "..num.." con "..CheckTen(DataSongBac[i][2]).." nh�n ���c: <color=green>"..thutien.." v�n l��ng")
				XacDinh_NganLuong = XacDinh_NganLuong + thutien
				vt = CheckDataNganLuong(DataSongBac[i][1])
				if vt == 0 then
					DataNganLuong[getn(DataNganLuong)+1] = {DataSongBac[i][1],thutien}
				else
					DataNganLuong[vt][2] = DataNganLuong[vt][2] + thutien
				end
			else
				Msg2SubWorld("<color=yellow>["..DataSongBac[i][1].."] <color=red> c� "..num.." con "..CheckTen(DataSongBac[i][2]).." nh�n ���c: <color=yellow>"..thutien.." v�ng")
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
	if XacDinh_NganLuong > 1000000 then
		LoginLog = openfile("Data/SongBac/BauCua_KetQua.txt", "a");
		if LoginLog then
		write(LoginLog,"Thua: "..(XacDinh_NganLuong-1000000).." van luong\n");
		end
		closefile(LoginLog)
	else
		LoginLog = openfile("Data/SongBac/BauCua_KetQua.txt", "a");
		if LoginLog then
		write(LoginLog,"Thang: "..(1000000-XacDinh_NganLuong).." van luong\n");
		end
		closefile(LoginLog)
	end
	if XacDinh_Vang > 1000000 then
		LoginLog = openfile("Data/SongBac/BauCua_KetQua.txt", "a");
		if LoginLog then
		write(LoginLog,"Thua: "..(XacDinh_Vang-1000000).." vang\n");
		end
		closefile(LoginLog)
	else
		LoginLog = openfile("Data/SongBac/BauCua_KetQua.txt", "a");
		if LoginLog then
		write(LoginLog,"Thang: "..(1000000-XacDinh_Vang).." vang\n");
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
Msg2Player("<color=pink>L��t ��t c��c th�: "..GetGlbMissionV(11)..":")
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
Msg2Player("- ��t c��c T�m: <color=green>"..van_tom.." v�n l��ng")
end
if van_cua > 0 then
Msg2Player("- ��t c��c Cua: <color=green>"..van_cua.." v�n l��ng")
end
if van_bau > 0 then
Msg2Player("- ��t c��c B�u: <color=green>"..van_bau.." v�n l��ng")
end
if van_ca > 0 then
Msg2Player("- ��t c��c C�: <color=green>"..van_ca.." v�n l��ng")
end
if van_ga > 0 then
Msg2Player("- ��t c��c G�: <color=green>"..van_ga.." v�n l��ng")
end
if van_nai > 0 then
Msg2Player("- ��t c��c Nai: <color=green>"..van_nai.." v�n l��ng")
end

if vang_tom > 0 then
Msg2Player("- ��t c��c T�m: <color=yellow>"..vang_tom.." v�ng")
end
if vang_cua > 0 then
Msg2Player("- ��t c��c Cua: <color=yellow>"..vang_cua.." v�ng")
end
if vang_bau > 0 then
Msg2Player("- ��t c��c B�u: <color=yellow>"..vang_bau.." v�ng")
end
if vang_ca > 0 then
Msg2Player("- ��t c��c C�: <color=yellow>"..vang_ca.." v�ng")
end
if vang_ga > 0 then
Msg2Player("- ��t c��c G�: <color=yellow>"..vang_ga.." v�ng")
end
if vang_nai > 0 then
Msg2Player("- ��t c��c Nai: <color=yellow>"..vang_nai.." v�ng")
end
end
function no()
end
function nhantien(nsel)
i = nsel + 1
if i == 1 then
vt = CheckDataNganLuong(GetName())
				if vt == 0 then
					Talk(1,"","Ng��i kh�ng c� g�i ti�n � ch� ta, kh�ng th� r�t ")
				else
					if DataNganLuong[vt][2] == 0 then
						Talk(1,"","Ng��i kh�ng c� g�i ti�n � ch� ta, kh�ng th� r�t ")
					else
						soluong = DataNganLuong[vt][2]
						tientruoc = GetCash()
						DataNganLuong[vt][2] = 0
						luubang()
						if DataNganLuong[vt][2] == 0 then
							Earn(soluong * 10000)
							Msg2Player("B�n �� r�t "..soluong.." v�n l��ng ")
							SaveData()
							thoigian = tonumber(date("%H%M%d%m"))
							LoginLog = openfile("Data/SongBac/BauCua_RutNganLuong.txt", "a");
							if LoginLog then
								write(LoginLog,"Ngan Luong: "..GetName().." - Rut: ["..soluong.."] - Tr��c: "..tientruoc.." - Sau: "..GetCash().." - Time: "..thoigian.."\n");
							end
							closefile(LoginLog)
							Talk(0,"")
						end
					end
				end
else
		
vt = CheckDataTienVang(GetName())
				if vt == 0 then
					Talk(1,"","Ng��i kh�ng c� g�i ti�n � ch� ta, kh�ng th� r�t ")
				else
					if DataTienVang[vt][2] == 0 then
						Talk(1,"","Ng��i kh�ng c� g�i ti�n � ch� ta, kh�ng th� r�t ")
					else
						soluong = DataTienVang[vt][2]
						tientruoc = GetTask(99)
						DataTienVang[vt][2] = 0
						luubang()
						if DataTienVang[vt][2] == 0 then
							SetTask(99, GetTask(99) + soluong)
							SetTask(101 , GetTask(99))
							
							Msg2Player("B�n �� r�t "..soluong.." v�ng ")
							SaveData()
							thoigian = tonumber(date("%H%M%d%m"))
							LoginLog = openfile("Data/SongBac/BauCua_RutNganLuong.txt", "a");
							if LoginLog then
								write(LoginLog,"-Tien Vang: "..GetName().." - Rut: ["..soluong.."] - Tr��c: "..tientruoc.." - Sau: "..GetTask(99).." - Time: "..thoigian.."\n");
							end
							closefile(LoginLog)
							Talk(0,"")
						end
					end
				end
end
end

function datcuoc(nsel)
SetTaskTemp(1,nsel + 1)
if GetGlbMissionV(11) == 0 or GetGlbMissionV(11) >= 13 then
Talk(1,"","Hi�n t�i <color=yellow>ch�a t�i gi� <color>M� S�ng, Ch�ng t�i ph�c v� qu� d�n ch�i v�o l�c <color=red>23h00 - 24h00 m�i ng�y<color>. M�i ng�y c� <color=yellow>12<color> l��t ��t c��c ")
return
end
if GetTaskTemp(1) == 1 then
tom,cua,bau,ca,ga,nai = CheckSoLuong(1)
else
tom,cua,bau,ca,ga,nai = CheckSoLuong(2)
end
SayNew("<color=red>L��t Th� "..GetGlbMissionV(11).."<color>\nT�m:  <color=yellow>"..tom.."<color> - Cua: <color=yellow>"..cua.."<color> -  C�: <color=yellow>"..ca.."<color>\nB�u: <color=green>"..bau.."<color> - G�: <color=green>"..ga.."<color> - Nai: <color=green>"..nai.."",7,
"��t c��c T�m/datcuoc1",
"��t c��c Cua/datcuoc1",
"��t c��c B�u/datcuoc1",
"��t c��c C� /datcuoc1",
"��t c��c G� /datcuoc1",
"��t c��c Nai/datcuoc1",
"Tho�t./no")
end

function datcuoc1(nsel)
SetTaskTemp(2 , nsel + 1)
if GetTaskTemp(1) == 1 then
OpenStringBox (2,"��n V�: V�n" , "datcuoctienvan")
else
OpenStringBox (2,"��n V�: V�ng" , "datcuocvang")
end
end

function datcuoctienvan(num2)
num = tonumber(num2)
if num <= 0 then
Talk(1,"","Ng��i ch�a nh�p s� ti�n v�n c�n ��t, vui l�ng ��t c��c l�i !")
return
end
if num > 50 or num < 5 then
Talk(1,"","Ch� ���c ��t c��c t� 5 v�n - 50 v�n l��ng, vui l�ng ��t c��c l�i !")
return
end

datcuoc2(1,num)
end
function datcuocvang(num2)
num = tonumber(num2)
if num <= 0 then
Talk(1,"","Ng��i ch�a nh�p s� ti�n v�n c�n ��t, vui l�ng ��t c��c l�i !")
return
end
if num > 20 or num < 1 then
Talk(1,"","Ch� ���c ��t c��c t� 1 v�ng - 20 v�ng, vui l�ng ��t c��c l�i !")
return
end

datcuoc2(2,num)
end

function datcuoc2(loai,cost)
vitri = CheckViTri(GetTaskTemp(2),loai)

if loai == 1 then
	if GetCash() < cost*10000 then
		Talk(1,"","Ng�n l��ng kh�ng ��, kh�ng th� ��t c��c")
		return
	end
	
	if vitri == 0 then
		DataSongBac[getn(DataSongBac)+1] = {GetName(),GetTaskTemp(2),loai,cost}
	else
		Talk(1,"","Ng��i �� ��t c��c "..CheckTen(GetTaskTemp(2))..", kh�ng th� ��t th�m !")
		return
	end
	
	Pay(cost*10000)
	Msg2Player("B�n �� ��t c��c "..CheckTen(GetTaskTemp(2))..": <color=yellow>"..cost.." v�n l��ng")
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SongBac/BauCua_DatCuoc.txt", "a");
	if LoginLog then
		write(LoginLog,"Luot "..GetGlbMissionV(11).." - "..GetName().." - Dat: ["..GetTaskTemp(2).."] - Gia: ["..cost.." van] - Con: "..GetCash().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	Talk(0,"")
else
	if GetTask(99) < cost then
		Talk(1,"","Ti�n v�ng kh�ng ��, kh�ng th� ��t c��c")
		return
	end
	if vitri == 0 then
	DataSongBac[getn(DataSongBac)+1] = {GetName(),GetTaskTemp(2),loai,cost}
	else
	Talk(1,"","Ng��i �� ��t c��c "..CheckTen(GetTaskTemp(2))..", kh�ng th� ��t th�m !")
	return
	end

	SetTask(99, GetTask(99) - cost)
	SetTask(101, GetTask(101) - cost)
	
	Msg2Player("B�n �� ��t c��c "..CheckTen(GetTaskTemp(2))..": <color=yellow>"..cost.." v�ng")
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
return "T�m"
elseif i == 2 then
return "Cua"
elseif i == 3 then
return "B�u"
elseif i == 4 then
return "C� "
elseif i == 5 then
return "G� "
elseif i == 6 then
return "Nai"
else
return "Kh�ng X�c ��nh"
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