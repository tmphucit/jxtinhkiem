---------------------------------------------------------
----Author: DNTmaster
----Thong Tin:
----Script ep item
---------------------------------------------------------
Include("\\Script\\global\\sourcejx49.lua");
Include("\\Script\\class\\golditem.lua")
Include("\\Script\\global\\huyentinh\\epht.lua");

TIENDUNGEP = 1000	--Gia tien dung de ep item: Gia Tri: Van
SOHUYENTINHCAN = 10	--10 vien huyen tinh cung cap mon do
SOTHUYTINHCAN = 1	--1 nay 1 vien cho moi loai
SOKHOANGTHACHCAN = 1	--1 nay 1 vien cho moi loai
SOHOANGKIMTHACHCAN = 1	--So hoang kim thach dung de ep
LUACHONNGUHANH = 1	--Cho chon ngu hanh
OPTIONCUAITEMEPRA = 5	--Max = 10 co nghia se co them nhieu dong xanh ben duoi.

function thanbithoren()
if GetFaction() ~= "" then
SayEx({"<color=cyan>Tho Ren<color>: Nguoi co muon che tao cac vat pham than bi trong vo lam hay khong?","Che Tao Trang Bi./chetaotrangbi","Che Tao Vu Khi./chetaovukhi","Thoat./Exit"})
elseif GetFaction() == "" then
MsgEx("<color=cyan>Tho Ren<color>: Nguoi chua du kha nang de che tao trang bi Hoang Kim-Bach Kim mon phai.",1)
end
end;

function chetaotrangbi()
if GetFaction() ~= "" then
SayEx({"<color=cyan>Tho Ren<color>: Nguoi thuoc mon phai: <color=red>"..GetFaction().."<color> Nen chi che tao duoc cac mon do cua mon phai.",
"Non./NonMonPhai",
"Ao Giap./AoMonPhai",
"Day Chuyen./DayChuyenMonPhai",
"Ngoc Boi./NgocBoiMonPhai",
"Nhan./NhanMonPhai",
"Bao Tay./BaoTayMonPhai",
"That Lung./ThatLungMonPhai",
"Giay./GiayMonPhai",
"Thoat./Exit"})
elseif GetFaction() == "" then
MsgEx("<color=cyan>Tho Ren<color>: Nguoi chua du kha nang de che tao trang bi Hoang Kim-Bach Kim mon phai.",1)
end
end;

function NonMonPhai()
	SayEx({"Lua chon cap do:",
	"Cap 1./CapDoNon",
	"Cap 2./CapDoNon",
	"Cap 3./CapDoNon",
	"Cap 4./CapDoNon",
	"Cap 5./CapDoNon",
	"Cap 6./CapDoNon",
	"Cap 7./CapDoNon",
	"Cap 8./CapDoNon",
	"Cap 9./CapDoNon",
	"Cap 10./CapDoNon",
	"Thoat./Exit"})
end;

function AoMonPhai()
	SayEx({"Lua chon cap do:",
	"Cap 1./CapDoAo",
	"Cap 2./CapDoAo",
	"Cap 3./CapDoAo",
	"Cap 4./CapDoAo",
	"Cap 5./CapDoAo",
	"Cap 6./CapDoAo",
	"Cap 7./CapDoAo",
	"Cap 8./CapDoAo",
	"Cap 9./CapDoAo",
	"Cap 10./CapDoAo",
	"Thoat./Exit"})
end;

function DayChuyenMonPhai()
	SayEx({"Lua chon cap do:",
	"Cap 1./CapDoDayChuyen",
	"Cap 2./CapDoDayChuyen",
	"Cap 3./CapDoDayChuyen",
	"Cap 4./CapDoDayChuyen",
	"Cap 5./CapDoDayChuyen",
	"Cap 6./CapDoDayChuyen",
	"Cap 7./CapDoDayChuyen",
	"Cap 8./CapDoDayChuyen",
	"Cap 9./CapDoDayChuyen",
	"Cap 10./CapDoDayChuyen",
	"Thoat./Exit"})
end;

function NgocBoiMonPhai()
	SayEx({"Lua chon cap do:",
	"Cap 1./CapDoNgocBoi",
	"Cap 2./CapDoNgocBoi",
	"Cap 3./CapDoNgocBoi",
	"Cap 4./CapDoNgocBoi",
	"Cap 5./CapDoNgocBoi",
	"Cap 6./CapDoNgocBoi",
	"Cap 7./CapDoNgocBoi",
	"Cap 8./CapDoNgocBoi",
	"Cap 9./CapDoNgocBoi",
	"Cap 10./CapDoNgocBoi",
	"Thoat./Exit"})
end;

function NhanMonPhai()
	SayEx({"Lua chon cap do:",
	"Cap 1./CapDoNhan",
	"Cap 2./CapDoNhan",
	"Cap 3./CapDoNhan",
	"Cap 4./CapDoNhan",
	"Cap 5./CapDoNhan",
	"Cap 6./CapDoNhan",
	"Cap 7./CapDoNhan",
	"Cap 8./CapDoNhan",
	"Cap 9./CapDoNhan",
	"Cap 10./CapDoNhan",
	"Thoat./Exit"})
end;

function BaoTayMonPhai()
	SayEx({"Lua chon cap do:",
	"Cap 1./CapDoBaoTay",
	"Cap 2./CapDoBaoTay",
	"Cap 3./CapDoBaoTay",
	"Cap 4./CapDoBaoTay",
	"Cap 5./CapDoBaoTay",
	"Cap 6./CapDoBaoTay",
	"Cap 7./CapDoBaoTay",
	"Cap 8./CapDoBaoTay",
	"Cap 9./CapDoBaoTay",
	"Cap 10./CapDoBaoTay",
	"Thoat./Exit"})
end;

function ThatLungMonPhai()
	SayEx({"Lua chon cap do:",
	"Cap 1./CapDoThatLung",
	"Cap 2./CapDoThatLung",
	"Cap 3./CapDoThatLung",
	"Cap 4./CapDoThatLung",
	"Cap 5./CapDoThatLung",
	"Cap 6./CapDoThatLung",
	"Cap 7./CapDoThatLung",
	"Cap 8./CapDoThatLung",
	"Cap 9./CapDoThatLung",
	"Cap 10./CapDoThatLung",
	"Thoat./ExitX"})
end;

function GiayMonPhai()
	SayEx({"Lua chon cap do:",
	"Cap 1./CapDoGiay",
	"Cap 2./CapDoGiay",
	"Cap 3./CapDoGiay",
	"Cap 4./CapDoGiay",
	"Cap 5./CapDoGiay",
	"Cap 6./CapDoGiay",
	"Cap 7./CapDoGiay",
	"Cap 8./CapDoGiay",
	"Cap 9./CapDoGiay",
	"Cap 10./CapDoGiay",
	"Thoat./ExitX"})
end;

function CapDoNon(nsel)
id = nsel+1
SetTaskTemp(16,id)
SetTaskTemp(15,1)
KiemTraHangHoaTrongNguoi(id)
end;

function CapDoAo(nsel)
id = nsel+1
SetTaskTemp(16,id)
SetTaskTemp(15,2)
KiemTraHangHoaTrongNguoi(id)
end;

function CapDoDayChuyen(nsel)
id = nsel+1
SetTaskTemp(16,id)
SetTaskTemp(15,3)
KiemTraHangHoaTrongNguoi(id)
end;

function CapDoNgocBoi(nsel)
id = nsel+1
SetTaskTemp(16,id)
SetTaskTemp(15,4)
KiemTraHangHoaTrongNguoi(id)
end;

function CapDoNhan(nsel)
id = nsel+1
SetTaskTemp(16,id)
SetTaskTemp(15,5)
KiemTraHangHoaTrongNguoi(id)
end;

function CapDoBaoTay(nsel)
id = nsel+1
SetTaskTemp(16,id)
SetTaskTemp(15,6)
KiemTraHangHoaTrongNguoi(id)
end;

function CapDoThatLung(nsel)
id = nsel+1
SetTaskTemp(16,id)
SetTaskTemp(15,7)
KiemTraHangHoaTrongNguoi(id)
end;

function CapDoGiay(nsel)
id = nsel+1
SetTaskTemp(16,id)
SetTaskTemp(15,8)
KiemTraHangHoaTrongNguoi(id)
end;

function CheckKhoangThach(solg)
	if GetItemCount(115) >= solg and GetItemCount(116) >= solg and GetItemCount(117) >= solg then
	return 1
	else
	return 0
	end
end;

function CheckThuyTinh(solg)
	if GetItemCount(8) >= solg and GetItemCount(9) >= solg and GetItemCount(10) >= solg then
	return 1
	else
	return 0
	end
end;

function traveht(x)
	if x == 1 then
		for i =1,SOHUYENTINHCAN do
		DelItem(55)
		end;
	elseif x == 2 then
		for i =1,SOHUYENTINHCAN do
		DelItem(56)
		end;
	elseif x == 3 then
		for i =1,SOHUYENTINHCAN do
		DelItem(57)
		end;
	elseif x == 4 then
		for i =1,SOHUYENTINHCAN do
		DelItem(58)
		end;
	elseif x == 5 then
		for i =1,SOHUYENTINHCAN do
		DelItem(59)
		end;
	elseif x == 6 then
		for i =1,SOHUYENTINHCAN do
		DelItem(60)
		end;
	elseif x == 7 then
		for i =1,SOHUYENTINHCAN do
		DelItem(61)
		end;
	elseif x == 8 then
		for i =1,SOHUYENTINHCAN do
		DelItem(62)
		end;
	elseif x == 9 then
		for i =1,SOHUYENTINHCAN do
		DelItem(63)
		end;
	elseif x == 10 then
		for i =1,SOHUYENTINHCAN do
		DelItem(64)
		end;
	end
end;

function xoakt(solan)
	for i =1,solan do
	DelItem(115)
	DelItem(116)
	DelItem(117)
	end
end;

function xoatt(solan)
	for i =1,solan do
	DelItem(8)
	DelItem(9)
	DelItem(10)
	end
end;

function xoasachdauvet()
SetTaskTemp(14,0)
SetTaskTemp(15,0)
SetTaskTemp(16,0)
MsgEx("Tho Ren: Che Tao That Bai.")
end;

function KiemTraHangHoaTrongNguoi(idhuyentinh)
	if GetCash() >= Van(TIENDUNGEP) then
		if GetItemCount(114) >= SOHOANGKIMTHACHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if loadhuyentinh(idhuyentinh) >= SOHUYENTINHCAN then
					Pay(Van(TIENDUNGEP))
					for i =1,SOHOANGKIMTHACHCAN do
					DelItem(114)
					end
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(idhuyentinh)
					LuaChonNguHanh()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..idhuyentinh.." de Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..SOHOANGKIMTHACHCAN.." Hoang Kim Thach de che tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
	xoasachdauvet()
	end
end;

function LuaChonNguHanh()
SayEx({"Ta chon ngu hanh:",
"Kim./nguhanh",
"Moc./nguhanh",
"Thuy./nguhanh",
"Hoa./nguhanh",
"Tho./nguhanh"})
end;

function nguhanh(nsel)
SetTaskTemp(14,nsel)
BuocCuoiCung()
end;

function xongroidomaybac()
SetTaskTemp(14,0)
SetTaskTemp(15,0)
SetTaskTemp(16,0)
MsgEx("Tho Ren: Che Tao Tao Trang Bi Thanh Cong My Man.")
end;

function BuocCuoiCung()
	if GetTaskTemp(15) == 1 then
		if kiemtramonphai() == 1 then
		nontl(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 2 then
		nontv(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 3 then
		nondm(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 4 then
		nonnd(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 5 then
		nonnm(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 6 then
		nonty(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 7 then
		noncb(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 8 then
		nontn(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 9 then
		nonvd(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 10 then
		noncl(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		end
	elseif GetTaskTemp(15) == 2 then
		if kiemtramonphai() == 1 then
		aotl(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 2 then
		aotv(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 3 then
		aodm(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 4 then
		aond(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 5 then
		aonm(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 6 then
		aoty(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 7 then
		aocb(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 8 then
		aotn(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 9 then
		aovd(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 10 then
		aocl(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		end
	elseif GetTaskTemp(15) == 3 then
		if kiemtramonphai() == 1 then
		daychuyentl(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 2 then
		daychuyentv(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 3 then
		daychuyendm(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 4 then
		daychuyennd(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 5 then
		daychuyennm(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 6 then
		daychuyenty(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 7 then
		daychuyencb(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 8 then
		daychuyentn(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 9 then
		daychuyenvd(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 10 then
		daychuyencl(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		end
	elseif GetTaskTemp(15) == 4 then
		if kiemtramonphai() == 1 then
		ngocboitl(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 2 then
		ngocboitv(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 3 then
		ngocboidm(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 4 then
		ngocboind(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 5 then
		ngocboinm(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 6 then
		ngocboity(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 7 then
		ngocboicb(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 8 then
		ngocboitn(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 9 then
		ngocboivd(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 10 then
		ngocboicl(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		end
	elseif GetTaskTemp(15) == 5 then
		if kiemtramonphai() == 1 then
		nhantl(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 2 then
		nhantv(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 3 then
		nhandm(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 4 then
		nhannd(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 5 then
		nhannm(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 6 then
		nhanty(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 7 then
		nhancb(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 8 then
		nhantn(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 9 then
		nhanvd(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 10 then
		nhancl(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		end
	elseif GetTaskTemp(15) == 6 then
		if kiemtramonphai() == 1 then
		baotaytl(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 2 then
		baotaytv(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 3 then
		baotaydm(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 4 then
		baotaynd(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 5 then
		baotaynm(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 6 then
		baotayty(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 7 then
		baotaycb(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 8 then
		baotaytn(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 9 then
		baotayvd(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 10 then
		baotaycl(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		end
	elseif GetTaskTemp(15) == 7 then
		if kiemtramonphai() == 1 then
		thatlungtl(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 2 then
		thatlungtv(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 3 then
		thatlungdm(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 4 then
		thatlungnd(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 5 then
		thatlungnm(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 6 then
		thatlungty(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 7 then
		thatlungcb(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 8 then
		thatlungtn(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 9 then
		thatlungvd(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 10 then
		thatlungcl(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		end
	elseif GetTaskTemp(15) == 8 then
		if kiemtramonphai() == 1 then
		giaytl(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 2 then
		giaytv(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 3 then
		giaydm(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 4 then
		giaynd(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 5 then
		giaynm(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 6 then
		giayty(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 7 then
		giaycb(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 8 then
		giaytn(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 9 then
		giayvd(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		elseif kiemtramonphai() == 10 then
		giaycl(GetTaskTemp(16),GetTaskTemp(14),OPTIONCUAITEMEPRA)
		xongroidomaybac()
		end
	end
end;

function kiemtramonphai()
	if GetFaction() == "Thieu Lam Phai" then
	return 1
	elseif GetFaction() == "Thien Vuong Bang" then
	return 2
	elseif GetFaction() == "Duong Mon" then
	return 3
	elseif GetFaction() == "Ngu Doc Giao" then
	return 4
	elseif GetFaction() == "Nga My Phai" then
	return 5
	elseif GetFaction() == "Thuy Yen Mon" then
	return 6
	elseif GetFaction() == "Cai Bang" then
	return 7
	elseif GetFaction() == "Thien Nhan Giao" then
	return 8
	elseif GetFaction() == "Vo Dang Phai" then
	return 9
	elseif GetFaction() == "Con Lon Phai" then
	return 10
	end
end;

function chetaovukhi()
	SayEx({"Lua chon cap do:",
	"Cap 1./chetaovukhi_1",
	"Cap 2./chetaovukhi_1",
	"Cap 3./chetaovukhi_1",
	"Cap 4./chetaovukhi_1",
	"Cap 5./chetaovukhi_1",
	"Cap 6./chetaovukhi_1",
	"Cap 7./chetaovukhi_1",
	"Cap 8./chetaovukhi_1",
	"Cap 9./chetaovukhi_1",
	"Cap 10./chetaovukhi_1",
	"Thoat./ExitX"})
end;

function chetaovukhi_1(nsel)
iz = nsel+1
SetTaskTemp(15,iz)
SayEx({"Ta chon ngu hanh:",
"Kim./nguhanhvk",
"Moc./nguhanhvk",
"Thuy./nguhanhvk",
"Hoa./nguhanhvk",
"Tho./nguhanhvk"})
end;

function nguhanhvk(nsel)
SetTaskTemp(14,nsel)
chetaovukhi_2()
end;

function chetaovukhi_2()
	if kiemtramonphai() == 1 then
	SayEx({"<color=cyan>Tho Ren<color>: Nguoi muon che tao loai Vu Khi nao ?",
	"Tu Khong Giang Ma Gioi Dao./thieulamdao",
	"Phuc Ma Tu Kim Con./thieulambong",
	"Thoat./Exit"})
	elseif kiemtramonphai() == 2 then
	SayEx({"<color=cyan>Tho Ren<color>: Nguoi muon che tao loai Vu Khi nao ?",
	"Ke Nghiep Bon Loi Toan Long Thuong./thienvuongthuong",
	"Hoan Thien Hoan Dai Than Chuy./thienvuongchuy",
	"Ngu Long Luong Ngan Bao Dao./thienvuongdao",
	"Thoat./Exit"})
	elseif kiemtramonphai() == 3 then
	SayEx({"<color=cyan>Tho Ren<color>: Nguoi muon che tao loai Vu Khi nao ?",
	"Sam Hoan Phi Tinh Doat Hon./duongmon1",
	"Bang Han Dan Chi Phi Dao./duongmon2",
	"Thien Quang Hoa Vu Man Thien./duongmon3",
	"Thoat./Exit"})
	elseif kiemtramonphai() == 4 then
	SayEx({"<color=cyan>Tho Ren<color>: Nguoi muon che tao loai Vu Khi nao ?",
	"U Lung Thuc Cot Song Nhan./ngudocsongdao",
	"Minh Ao Ta Sat Doc Nhan./ngudocdao",
	"Thoat./Exit"})
	elseif kiemtramonphai() == 5 then
	SayEx({"<color=cyan>Tho Ren<color>: Nguoi muon che tao loai Vu Khi nao ?",
	"Vo Gian Y Thien Kiem./ngamykiem",
	"Vo Yem Phong Suong Lien Hoan Dao./ngamysongdao",
	"Thoat./Exit"})
	elseif kiemtramonphai() == 6 then
	SayEx({"<color=cyan>Tho Ren<color>: Nguoi muon che tao loai Vu Khi nao ?",
	"Bich Hai Uyen Uong Lien Hoan Dao./thuyyensongdao",
	"Te Hoang Phuong Bao Dao./thuyyendao",
	"Thoat./Exit"})
	elseif kiemtramonphai() == 7 then
	SayEx({"<color=cyan>Tho Ren<color>: Nguoi muon che tao loai Vu Khi nao ?",
	"Dich Hy Luc Ngoc Truong./caibang1",
	"Dong Cuu Phi Long Con./caibang2",
	"Thoat./Exit"})
	elseif kiemtramonphai() == 8 then
	SayEx({"<color=cyan>Tho Ren<color>: Nguoi muon che tao loai Vu Khi nao ?",
	"Ma Sat Quy Coc U Minh Thuong./thiennhan1",
	"Ma Nghi Hiep Hoa Phan Thanh Thuong./thiennhan2",
	"Thoat./Exit"})
	elseif kiemtramonphai() == 9 then
	SayEx({"<color=cyan>Tho Ren<color>: Nguoi muon che tao loai Vu Khi nao ?",
	"Lang Nhac Thai Cap Kiem./vodang1",
	"Cap Phong Chan Vo Kiem./vodang2",
	"Thoat./Exit"})
	elseif kiemtramonphai() == 10 then
	SayEx({"<color=cyan>Tho Ren<color>: Nguoi muon che tao loai Vu Khi nao ?",
	"Suong Tinh Thien Nien Han Thiet./conlondao",
	"Loi Khung Cuu Thien Kiem./conlonkiem",
	"Thoat./Exit"})
	end
end;

function thieulamdao()
	if GetItemCount(45) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+60
					AddItem(0,0,1,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function thieulambong()
	if GetItemCount(49) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+60
					AddItem(0,0,2,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function thienvuongthuong()
	if GetItemCount(47) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+60
					AddItem(0,0,3,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function thienvuongchuy()
	if GetItemCount(48) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+60
					AddItem(0,0,4,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function thienvuongdao()
	if GetItemCount(45) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+120
					AddItem(0,0,1,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function duongmon1()
	if GetItemCount(51) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+30
					AddItem(0,1,0,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function duongmon2()
	if GetItemCount(52) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+30
					AddItem(0,1,1,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function duongmon3()
	if GetItemCount(53) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+30
					AddItem(0,1,2,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function ngudocsongdao()
	if GetItemCount(50) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+180
					AddItem(0,0,5,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function ngudocdao()
	if GetItemCount(45) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+200
					AddItem(0,0,1,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function ngamykiem()
	if GetItemCount(46) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+60
					AddItem(0,0,0,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function ngamysongdao()
	if GetItemCount(50) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+120
					AddItem(0,0,5,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function thuyyensongdao()
	if GetItemCount(50) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+60
					AddItem(0,0,5,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function thuyyendao()
	if GetItemCount(45) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+180
					AddItem(0,0,1,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function caibang1()
	if GetItemCount(49) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+120
					AddItem(0,0,2,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function caibang2()
	if GetItemCount(49) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+180
					AddItem(0,0,2,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function thiennhan1()
	if GetItemCount(47) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+120
					AddItem(0,0,3,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function thiennhan2()
	if GetItemCount(47) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+180
					AddItem(0,0,3,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function vodang1()
	if GetItemCount(46) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+120
					AddItem(0,0,0,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function vodang2()
	if GetItemCount(46) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+180
					AddItem(0,0,0,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function conlondao()
	if GetItemCount(45) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+120
					AddItem(0,0,4,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;

function conlonkiem()
	if GetItemCount(46) >= 1 then
		if loadhuyentinh(GetTaskTemp(15)) >= SOHUYENTINHCAN then
			if CheckKhoangThach(SOKHOANGTHACHCAN) == 1 then
				if CheckThuyTinh(SOTHUYTINHCAN) == 1 then
					if GetCash() >= Van(TIENDUNGEP) then
					Pay(Van(TIENDUNGEP))
					xoakt(SOKHOANGTHACHCAN)
					xoatt(SOTHUYTINHCAN)
					traveht(GetTaskTemp(15))
					level = GetTaskTemp(15)+190
					AddItem(0,0,0,level,GetTaskTemp(14),0,OPTIONCUAITEMEPRA)
					xongroidomaybac()
					else
					MsgEx("<color=cyan>Tho Ren<color>: Nguoi can co "..TIENDUNGEP.." Van de thuc hien viec Che Tao Trang Bi.",1)
					xoasachdauvet()
					end
				else
				MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOTHUYTINHCAN.." Vien Thuy Tinh cua moi loai de Che Tao Trang Bi.",1)
				xoasachdauvet()
				end
			else
			MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOKHOANGTHACHCAN.." Vien Phi Thuy cua moi loai de Che Tao Trang Bi.",1)
			xoasachdauvet()
			end
		else
		MsgEx("<color=cyan>Tho Ren<color>: Nguoi can "..SOHUYENTINHCAN.." vien Huyen Tinh Cap "..GetTaskTemp(15).." de Che Tao Trang Bi.",1)
		xoasachdauvet()
		end
	else
	MsgEx("Nguoi can 1 cuon do Pho de che tao duoc mon do nay.",1)
	end
end;