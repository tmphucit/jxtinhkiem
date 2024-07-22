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
SayNew("<color=green>S� Gi� Anh H�ng<color>: Ch�o ��i hi�p, ng��i mu�n ta gi�p g� n�o?",2,
"Ta ��n nh�n ph�n th��ng ��i H�i Anh h�ng L�n 1/nhanphanthuong",
"Tho�t./no")
end


function main_(idx)
gio = tonumber(date("%H"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
day,month,year = tinhngaytieptheo()
w,x,y = GetWorldPos()
if ngay ~= 11 and (ngay == 10 and gio < 17) then
Talk(1,"","B�o danh: 0h00 - 20h00 ng�y 11/04/2020\nTham chi�n: 21h00 ng�y 11/04/2020")
return
end
if w == 106 then
		if TinhTrangThiDau == 1 then
		Talk(1,"","Hi�n t�i ch�a h�t th�i gian thi ��u, kh�ng th� ki�m tra. Vui l�ng ��i v� th� l�i sau")
		return
		end
		SayNew("<color=green>S� Gi� Anh H�ng<color>: H�y ti�u di�t to�n b� ��i ��i Th� r�i h�y quay l�i g�p ta",3,
		"Ta �� gi�nh chi�n th�ng, h�y ��a ta ��n tr�n ti�p theo /kiemtrachienthang",
		"Nh�n M�u Mi�n Ph� /nhanhoithien",
		"Thoat./no")
else
	if gio == 21 and ngay == 11 then
		SayNew("Hi�n t�i �� c�: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ��i <color>��ng k� <enter>Thi ��u: <color=yellow>21h00 ng�y "..day.."/0"..month.."/2020",4,
		"Ta mu�n v�o Khu V�c Chi�n ��u /thamgia",
		"Ki�m tra t�nh h�nh chi�n ��i /kiemtra",
		"Nh�n th��ng ��i H�i Anh H�ng/nhanthuong",
		"Tho�t./no")
	else
		SayNew("Hi�n t�i �� c�: <color=red>"..getn(DANH_SACH).." / "..soluonggioihan.." ��i <color>��ng k� <enter>Thi ��u: <color=yellow>21h00 ng�y "..day.."/0"..month.."/2020<color>\nPh� b�o danh: "..(phi/10000).." v�n l��ng / 1 ng��i",4,
		"Ta mu�n b�o danh ��i H�i Anh H�ng /baodanh",
	--	"Th� nghi�m v�o b�n �� DHAH /thunghiemmap",
		"Ta mu�n ki�m tra t�nh h�nh chi�n ��i /kiemtra",
		"Ta mu�n nh�n th��ng ��i H�i Anh H�ng/nhanthuong",
		"Tho�t./no")
	end
end
end

function thunghiemmap()
NewWorld(106, 235*8,227*16)
SetLogoutRV(1)
SetFightState(1)
Talk(1,"","B�n �� v�o b�n �� ��i H�i Anh H�ng. N�u b� l�i vui l�ng tho�t to�n b� game v� c�p nh�t l�i")
Msg2Player("<color=green>Th� nghi�m v�o b�n �� ��i H�i Anh H�ng tr�nh vi�c khi s� ki�n di�n ra b� l�i do ch�a c�p nh�t. N�u ai �� v�o th�nh c�ng th� kh�ng c�n c�p nh�t n�a !")
end

function nhanhoithien()
if GetFightState() == 0 then
	for i=1,20 do
		idxitem = AddItem(1,4,0,5,0,0,0)
		SetItemLock(idxitem)
	end	
	Msg2Player("B�n nh�n ���c 20 Ng� Hoa Ng�c L� Ho�n")
else
	Talk(1,"","Trong l�c thi ��u, kh�ng ���c nh�n")
end
end

function nhanphanthuong()
vitri = checktennhanthuong()
if vitri == 0 then
Talk(1,"","B�n kh�ng c� t�n trong danh s�ch nh�n th��ng ��i H�i Anh H�ng")
return
end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� 6 x 5 � tr�ng, kh�ng th� nh�n th��ng !")
	return
end
	if 	PHAN_THUONG[vitri][2] == 1 then
		PHAN_THUONG[vitri][2] = 10
		
	Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." nh�n th��ng H�ng 1 ��i H�i Anh H�ng:")	
	Msg2SubWorld("- Ti�n Th�o L� 1 Gi� ")
	Msg2SubWorld("- Ti�n Th�o L� 3 Gi� ")
	Msg2SubWorld("- Ti�n Th�o L� 6 Gi� ")
	Msg2SubWorld("- 30 M�nh Ng�a Chi�u D� ")
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
		Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." nh�n th��ng H�ng 2 ��i H�i Anh H�ng:")
		
		Msg2SubWorld("- Ti�n Th�o L� 1 Gi� ")
		Msg2SubWorld("- Ti�n Th�o L� 3 Gi� ")
		Msg2SubWorld("- Ti�n Th�o L� 6 Gi� ")
		Msg2SubWorld("- 100 M�nh Ng�a X�ch Th� ")
		AddEventItem(117)
		AddEventItem(119)
		AddEventItem(120)
		for i=1,100 do AddEventItem(273) end
		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)
	elseif PHAN_THUONG[vitri][2] == 3 then
		PHAN_THUONG[vitri][2] = 20
		Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." nh�n th��ng H�ng 3 ��i H�i Anh H�ng:")
		
		Msg2SubWorld("- Ti�n Th�o L� 1 Gi� ")
		Msg2SubWorld("- Ti�n Th�o L� 3 Gi� ")
		AddEventItem(117)
		AddEventItem(119)

		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)	
	elseif PHAN_THUONG[vitri][2] == 4 then
		PHAN_THUONG[vitri][2] = 20
		Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." nh�n th��ng H�ng 3 ��i H�i Anh H�ng:")
		
		Msg2SubWorld("- Ti�n Th�o L� 1 Gi� ")
		AddEventItem(117)

		BANG2 = TaoBang(PHAN_THUONG,"PHAN_THUONG")
		LuuBang("script/daihoianhhung/danhsachnhanthuong.lua",BANG2)			
		
	else
	Talk(1,"","B�n �� nh�n ph�n th��ng ��i H�i Anh H�ng r�i, kh�ng th� nh�n th�m")
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
Talk(1,"","Hi�n t�i ch�a h�t th�i gian thi ��u, kh�ng th� ki�m tra. Vui l�ng ��i v� th� l�i sau")
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
					Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>"..GetName().." �� gi�nh chi�n th�ng do kh�ng c� ��i th� ")
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
							Msg2Player("<color=pink>[K�t Qu�] <color=yellow>"..GetName().." �� ��nh b�i to�n b� th�nh vi�n nh�m ��i th� v� vinh d� gi�nh chi�n th�ng")
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
							Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>"..GetName().." �� gi�nh chi�n th�ng v� s� l��ng th�nh vi�n c�n l�i nhi�u h�n")
							Msg2Player("<color=pink>[K�t Qu�] <color=yellow>S� l��ng nh�m m�nh: "..soluongteam.." - S� l��ng nh�m ��i th�: "..soluongdoithu..". Nh�m b�n �� gi�nh chi�n th�ng")
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
							Msg2Player("<color=pink>[K�t Qu�] <color=yellow>Nh�m b�n �� b� thua cu�c do s� l��ng th�nh vi�n c�n l�i �t h�n. S� l��ng ��i m�nh: "..soluongdoithu.." - S� l��ng nh�m ��i th�: "..soluongteam.."")
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
							Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>"..GetName().." �� gi�nh chi�n th�ng v� s� l��ng th�nh vi�n c�n l�i nhi�u h�n")
							Msg2Player("<color=pink>[K�t Qu�] <color=yellow>S� l��ng nh�m m�nh: "..soluongdoithu.." - S� l��ng nh�m ��i th�: "..soluongteam..". Nh�m b�n �� gi�nh chi�n th�ng")
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
							Msg2Player("<color=pink>[K�t Qu�] <color=yellow>Nh�m b�n �� b� thua cu�c do s� l��ng th�nh vi�n c�n l�i �t h�n. S� l��ng ��i m�nh: "..soluongteam.." - S� l��ng nh�m ��i th�: "..soluongdoithu.."")
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
								Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>"..GetName().." �� gi�nh chi�n th�ng v� s� l��ng th�nh vi�n b�ng nhau, T�ng s�t th��ng l�n h�n")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>S� l��ng nh�m m�nh: "..soluongteam.." - S� l��ng nh�m ��i th�: "..soluongdoithu..".")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>T�ng s�t th��ng nh�m m�nh: "..tonglevelteam.." - T�ng s�t th��ng nh�m ��i th�: "..tongleveldoithu..".")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>Nh�m c�a b�n �� gi�nh chi�n th�ng !")
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
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>S� l��ng nh�m m�nh: "..soluongdoithu.." - S� l��ng nh�m ��i th�: "..soluongteam..".")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>T�ng s�t th��ng nh�m m�nh: "..tongleveldoithu.." - T�ng s�t th��ng nh�m ��i th�: "..tonglevelteam..".")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>Nh�m c�a b�n �� thua cu�c !")
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
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>S� l��ng nh�m m�nh: "..soluongteam.." - S� l��ng nh�m ��i th�: "..soluongdoithu..".")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>T�ng s�t th��ng nh�m m�nh: "..tonglevelteam.." - T�ng s�t th��ng nh�m ��i th�: "..tongleveldoithu..".")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>Nh�m c�a b�n �� thua cu�c !")
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
								Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>"..GetName().." �� gi�nh chi�n th�ng v� s� l��ng th�nh vi�n b�ng nhau, T�ng s�t th��ng l�n h�n")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>S� l��ng nh�m m�nh: "..soluongdoithu.." - S� l��ng nh�m ��i th�: "..soluongteam..".")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>T�ng s�t th��ng nh�m m�nh: "..tongleveldoithu.." - T�ng s�t th��ng nh�m ��i th�: "..tonglevelteam..".")
								Msg2Player("<color=pink>[K�t Qu�] <color=yellow>Nh�m c�a b�n �� gi�nh chi�n th�ng !")
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
								Msg2Player("<color=yellow>S� l��ng th�nh vi�n v� T�ng s�t th��ng nh�m m�nh v� nh�m ��i th� b�ng nhau, v� th� c� 2 nh�m b� lo�i.")
								ResetMacDinh()
							end
						end
						for k=1,getn(DANH_SACH[vitri]) do
							if GetName() == DANH_SACH[vitri][k][1] then
								Msg2Player("<color=yellow>S� l��ng th�nh vi�n v� T�ng s�t th��ng nh�m m�nh v� nh�m ��i th� b�ng nhau, v� th� c� 2 nh�m b� lo�i.")
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
Msg2SubWorld("<color=green>Danh s�ch x�p h�ng ��i H�i Anh H�ng: ")
for k=1,getn(DANH_SACH[team]) do
		Msg2SubWorld("- H�ng 1: "..DANH_SACH[team][k][1].."")
		PHAN_THUONG[getn(PHAN_THUONG)+1] = {DANH_SACH[team][k][1], 1,getn(DANH_SACH)}
end
for i=1,getn(THI_DAU) do
	if THI_DAU[i] ~= team then	
		for k=1,getn(DANH_SACH[THI_DAU[i]]) do
		Msg2SubWorld("- H�ng 2: "..DANH_SACH[THI_DAU[i]][k][1].."")
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
Talk(1,"","Hi�n t�i ch�a s�p x�p xong chi�n ��i, vui l�ng ��i sau 21h00 h�m nay")
return
end
if TinhTrangThiDau == 1 then
Talk(1,"","Hi�n �ang trong th�i gian thi ��u, kh�ng th� tham gia ti�p")
return
end
if TinhTrangThiDau == 2 then
Talk(1,"","Hi�n �ang trong th�i gian ki�m so�t, kh�ng th� tham gia ti�p")
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
				Talk(1,"","��i c�a b�n �� b� lo�i, kh�ng th� tham gia tr�n ti�p theo")
			end
		else
			Talk(1,"","B�n kh�ng c� t�n trong danh s�ch ��ng k� ��i H�i Anh H�ng, kh�ng th� tham gia")
		end
	end
else
		Talk(1,"","Th�i gian di chuy�n v�o Khu V�c Ch� - ��i H�i Anh H�ng t� 21h00 - 21h15, hi�n t�i ng��i kh�ng th� v�o ")
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
			Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red> B�t ��u v�o "..(20-gio).." gi� "..(59 - phut).." ph�t n�a. C�c v� anh h�ng chu�n b� tinh th�n �� chi�n ��u")
		end
		if gio == 21 and ((phut >= 0 and phut < 5) or (phut >= 15 and phut < 20)  or (phut >= 30 and phut < 35)  or (phut >= 45 and phut < 50)) then
			Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>Hi�n t�i �ang trong th�i gian ch� chi�n ��u, c�c ��i ��ng k� v�o Khu V�c Chi�n ��u �� ��i")
		end
		if gio == 21 and ((phut >= 5 and phut < 10) or (phut >= 20 and phut < 25)  or (phut >= 35 and phut < 40)  or (phut >= 50 and phut < 55)) then
			Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>Hi�n t�i �ang trong th�i gian thi ��u, kh�ng nh�n th�m ng��i tham gia.")
		end
		if gio == 21 and ((phut >= 10 and phut < 15) or (phut >= 25 and phut < 30) or (phut >= 40 and phut < 45) or (phut >= 55 and phut < 59))then
			Msg2SubWorld("<color=green>[��i H�i Anh H�ng] <color=red>Hi�n t�i �ang trong th�i gian ki�m so�t, kh�ng nh�n th�m ng��i tham gia.")
		end		
		
if gio == 21 and (phut == 5 or phut == 20 or phut == 35 or phut == 50 ) then
	TinhTrangThiDau = 1
	idxplayer = PlayerIndex
		for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			w,x,y = GetWorldPos()
			if w == 106 then
				SetFightState(1)
				Msg2Player("<color=yellow>Tr�n ��u b�t ��u. H�y ��nh b�i to�n b� ��i th� �� gi�nh chi�n th�ng")
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
			Msg2Player("<color=yellow>Tr�n thi ��u �� k�t th�c, vui l�ng g�p NPC Ki�m So�t �� nh�n k�t qu�. Th�i gian ki�m tra l�: 5 ph�t ")
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
			Msg2Player("<color=yellow>K�t th�c th�i gian Ki�m So�t, b�n b� ��a ra ngo�i")
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
	Msg2Player("B�n �� ���c ��a v�o <color=yellow>Khu V�c Chi�n ��u "..vt.."")
	Msg2Player("H�y ��nh b�i to�n b� th�nh vi�n c�a ��i ��i Th� �� gi�nh chi�n th�ng")
	Msg2SubWorld("<color=blue>"..GetName().." �� v�o Khu V�c "..vt.."")
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
Talk(1,"","Hi�n t�i ch�a c� chi�n ��i n�o tham gia")
return
end
OpenStringBox(2,"Nh�p Th�  T� 1 - 16","acceptkiemtra")
end


function acceptkiemtra(num2)
num = tonumber(num2)
if num <= getn(DANH_SACH) then
	Msg2Player("<color=yellow>Danh s�ch chi�n ��i th� "..num..":")
	for i=1,getn(DANH_SACH[num]) do
		Msg2Player(""..i..". ["..DANH_SACH[num][i][2].."] "..DANH_SACH[num][i][1].." - Lvl: "..DANH_SACH[num][i][3].."")
	end
else
Talk(1,"","Hi�n t�i ch� c� "..getn(DANH_SACH).." chi�n ��i ��ng k� tham gia, vui l�ng nh�p s� nh� h�n")
end

end
function baodanh()
gio = tonumber(date("%H"))
if gio >= 20 then
Talk(1,"","Th�i gian bao danh t� 0h00 - 20h00 ng�y 11/04/2020, qu� th�i gian tr�n kh�ng cho b�o danh")
return
end


if getn(DANH_SACH) >= soluonggioihan then
	Talk(1,"","Hi�n t�i tu�n n�y �� �� "..soluonggioihan.." t� b�o danh, ng��i vui l�ng ��i tu�n sau nh� ")
	return
end

if GetTeam() == nil then
Talk(1,"","B�n ch�a l�p t� ��i, kh�ng th� ��ng k� tham gia")
return
end

if GetTeamSize() ~= soluongthanhvien then
Talk(1,"","T� ��i b�t bu�c "..soluongthanhvien.." th�nh vi�n, kh�ng th� ��ng k� tham gia")
return
end

if IsCaptain() ~= 1 then
Talk(1,"","Ch� c� tr��ng nh�m m�i c� th� ��ng k� ")
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
					Msg2World(""..GetName().." �� b�o danh t� tr��c, b�o danh th�t b�i")
					break
			elseif GetCash() < phi then
					inum = 1
					Msg2World(""..GetName().." kh�ng mang �� "..phi.." l��ng, b�o danh th�t b�i")
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
Msg2SubWorld("<color=yellow>"..GetName().." �� b�o danh ��i H�i Anh H�ng s� th� t�: "..num.." / 16 chi�n ��i")
Msg2SubWorld("<color=yellow>Danh s�ch ��ng k� g�m:")
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