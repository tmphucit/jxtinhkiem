Include("\\Script\\class\\data_shop1.lua")
Include("\\Script\\class\\data_shop2.lua")
Include("\\Script\\class\\data_shop3.lua")
Include("\\Script\\class\\cash.lua")
Include("\\script\\cacsukien\\banghoi\\tong.lua")

data1 = "Script/class/data_shop1.lua"
data2 = "Script/class/data_shop2.lua"
data3 = "Script/class/data_shop3.lua"

function banbikip()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban loai bi kip nao ?","Bi Kip 90./loai1","Bi Kip 120./loai2","Bi Kip 150./loai3","Thoat./Exit"})
end;

function loai1()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban loai bi kip mon phai nao ?","Thieu Lam./a1","Thien Vuong./a2","Duong Mon./a3","Ngu Doc./a4","Nga Mi./a5","Tiep Theo./next1","Trang chinh./banbikip","Thoat./Exit"})
end;

function next1()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban loai bi kip mon phai nao ?","Thuy Yen./a6","Cai Bang./a7","Thien Nhan./a8","Vo Dang./a9","Con Lon./a10","Quay Ve./loai1","Thoat./Exit"})
end;

function a1()
if GetItemCount(86) >= 1 and GetItemCount(87) >= 1 and GetItemCount(88) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Dat Ma Do Giang./tl1","Hoanh Tao Thien Quan./tl2","Vo Tuong Tram./tl3","Thoat./Exit"})
elseif GetItemCount(86) >= 1 and GetItemCount(87) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Dat Ma Do Giang./tl1","Hoanh Tao Thien Quan./tl2","Thoat./Exit"})
elseif GetItemCount(86) >= 1 and GetItemCount(88) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Dat Ma Do Giang./tl1","Vo Tuong Tram./tl3","Thoat./Exit"})
elseif GetItemCount(87) >= 1 and GetItemCount(88) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Hoanh Tao Thien Quan./tl2","Vo Tuong Tram./tl3","Thoat./Exit"})
elseif GetItemCount(86) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Dat Ma Do Giang./tl1","Thoat./Exit"})
elseif GetItemCount(87) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Hoanh Tao Thien Quan./tl2","Thoat./Exit"})
elseif GetItemCount(88) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Vo Tuong Tram./tl3","Thoat./Exit"})
end
end;

function tl1()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][2] = BiKip[i][2] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(86)
AddCoin(BOOK90TL)
MsgEx("Ban nhan duoc "..BOOK90TL.." Tien Dong")
end;

function tl2()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][3] = BiKip[i][3] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(87)
AddCoin(BOOK90TL)
MsgEx("Ban nhan duoc "..BOOK90TL.." Tien Dong")
end;
function tl3()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][4] = BiKip[i][4] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(88)
AddCoin(BOOK90TL)
MsgEx("Ban nhan duoc "..BOOK90TL.." Tien Dong")
end;

function a2()
if GetItemCount(89) >= 1 and GetItemCount(90) >= 1 and GetItemCount(91) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Pha Thien Tram./tv1","Truy Tinh Truc Nguyet./tv2","Truy Phong Quyet./tv3","Thoat./Exit"})
elseif GetItemCount(89) >= 1 and GetItemCount(90) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Pha Thien Tram./tv1","Truy Tinh Truc Nguyet./tv2","Thoat./Exit"})
elseif GetItemCount(89) >= 1 and GetItemCount(91) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Pha Thien Tram./tv1","Truy Phong Quyet./tv3","Thoat./Exit"})
elseif GetItemCount(90) >= 1 and GetItemCount(91) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Truy Tinh Truc Nguyet./tv2","Truy Phong Quyet./tv3","Thoat./Exit"})
elseif GetItemCount(89) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Pha Thien Tram./tv1","Thoat./Exit"})
elseif GetItemCount(90) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Truy Tinh Truc Nguyet./tv2","Thoat./Exit"})
elseif GetItemCount(91) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Truy Phong Quyet./tv3","Thoat./Exit"})
end
end;

function tv1()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][5] = BiKip[i][5] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(89)
AddCoin(BOOK90TV)
MsgEx("Ban nhan duoc "..BOOK90TV.." Tien Dong")
end;

function tv2()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][6] = BiKip[i][6] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(90)
AddCoin(BOOK90TV)
MsgEx("Ban nhan duoc "..BOOK90TV.." Tien Dong")
end;

function tv3()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][7] = BiKip[i][7] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(91)
AddCoin(BOOK90TV)
MsgEx("Ban nhan duoc "..BOOK90TV.." Tien Dong")
end;


function a3()
if GetItemCount(92) >= 1 and GetItemCount(93) >= 1 and GetItemCount(94) >= 1 and GetItemCount(95) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Nhiep Hon Nguyet Anh./dm1","Cuu Cung Phi Tinh./dm2","Bao Vu Le Hoa./dm3","Loan Hoan Kich./dm4","Thoat./Exit"})
elseif GetItemCount(92) >= 1 and GetItemCount(93) >= 1 and GetItemCount(94) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Nhiep Hon Nguyet Anh./dm1","Cuu Cung Phi Tinh./dm2","Bao Vu Le Hoa./dm3","Thoat./Exit"})
elseif GetItemCount(92) >= 1 and GetItemCount(93) >= 1 and GetItemCount(95) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Nhiep Hon Nguyet Anh./dm1","Cuu Cung Phi Tinh./dm2","Loan Hoan Kich./dm4","Thoat./Exit"})
elseif GetItemCount(92) >= 1 and GetItemCount(94) >= 1 and GetItemCount(95) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Nhiep Hon Nguyet Anh./dm1","Bao Vu Le Hoa./dm3","Loan Hoan Kich./dm4","Thoat./Exit"})
elseif GetItemCount(93) >= 1 and GetItemCount(94) >= 1 and GetItemCount(95) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Cuu Cung Phi Tinh./dm2","Bao Vu Le Hoa./dm3","Loan Hoan Kich./dm4","Thoat./Exit"})
elseif GetItemCount(92) >= 1 and GetItemCount(93) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Nhiep Hon Nguyet Anh./dm1","Cuu Cung Phi Tinh./dm2","Thoat./Exit"})
elseif GetItemCount(92) >= 1 and GetItemCount(94) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Nhiep Hon Nguyet Anh./dm1","Bao Vu Le Hoa./dm3","Thoat./Exit"})
elseif GetItemCount(92) >= 1 and GetItemCount(95) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Nhiep Hon Nguyet Anh./dm1","Loan Hoan Kich./dm4","Thoat./Exit"})
elseif GetItemCount(93) >= 1 and GetItemCount(94) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Cuu Cung Phi Tinh./dm2","Bao Vu Le Hoa./dm3","Thoat./Exit"})
elseif GetItemCount(94) >= 1 and GetItemCount(95) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Bao Vu Le Hoa./dm3","Loan Hoan Kich./dm4","Thoat./Exit"})
elseif GetItemCount(93) >= 1 and GetItemCount(95) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Cuu Cung Phi Tinh./dm2","Loan Hoan Kich./dm4","Thoat./Exit"})
elseif GetItemCount(92) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Nhiep Hon Nguyet Anh./dm1","Thoat./Exit"})
elseif GetItemCount(93) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Cuu Cung Phi Tinh./dm2","Thoat./Exit"})
elseif GetItemCount(94) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Bao Vu Le Hoa./dm3","Thoat./Exit"})
elseif GetItemCount(95) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?","Loan Hoan Kich./dm4","Thoat./Exit"})
end
end;

function dm1()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][8] = BiKip[i][8] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(92)
AddCoin(BOOK90DM)
MsgEx("Ban nhan duoc "..BOOK90DM.." Tien Dong")
end;

function dm2()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][9] = BiKip[i][9] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(93)
AddCoin(BOOK90DM)
MsgEx("Ban nhan duoc "..BOOK90DM.." Tien Dong")
end;

function dm3()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][10] = BiKip[i][10] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(94)
AddCoin(BOOK90DM)
MsgEx("Ban nhan duoc "..BOOK90DM.." Tien Dong")
end;

function dm4()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][11] = BiKip[i][11] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(95)
AddCoin(BOOK90DM)
MsgEx("Ban nhan duoc "..BOOK90DM.." Tien Dong")
end;


function a4()
if GetItemCount(96) >= 1 and GetItemCount(97) >= 1 and GetItemCount(98) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
	"Am Phong Thuc Cot./nd1",
	"Huyen Am Tram./nd2",
	"Doan Can Hu Cot./nd3",
	"Thoat./Exit"})
elseif GetItemCount(96) >= 1 and GetItemCount(97) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
	"Am Phong Thuc Cot./nd1",
	"Huyen Am Tram./nd2",
	"Thoat./Exit"})
elseif GetItemCount(97) >= 1 and GetItemCount(98) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
	"Huyen Am Tram./nd2",
	"Doan Can Hu Cot./nd3",
	"Thoat./Exit"})
elseif GetItemCount(96) >= 1 and GetItemCount(98) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
	"Am Phong Thuc Cot./nd1",
	"Doan Can Hu Cot./nd3",
	"Thoat./Exit"})
elseif GetItemCount(96) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
	"Am Phong Thuc Cot./nd1",
	"Thoat./Exit"})
elseif GetItemCount(97) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
	"Huyen Am Tram./nd2",
	"Thoat./Exit"})
elseif GetItemCount(98) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
	"Doan Can Hu Cot./nd3",
	"Thoat./Exit"})
end
end;

function nd1()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][12] = BiKip[i][12] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(96)
AddCoin(BOOK90ND)
MsgEx("Ban nhan duoc "..BOOK90ND.." Tien Dong")
end;
function nd2()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][13] = BiKip[i][13] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(97)
AddCoin(BOOK90ND)
MsgEx("Ban nhan duoc "..BOOK90ND.." Tien Dong")
end;
function nd3()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][14] = BiKip[i][14] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(98)
AddCoin(BOOK90ND)
MsgEx("Ban nhan duoc "..BOOK90ND.." Tien Dong")
end;


function a5()
if GetItemCount(99) >= 1 and GetItemCount(100) >= 1 and GetItemCount(101) >= 1 then
		SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Tam Nga Te Tuyet./nm1",
		"Phong Suong Toai Anh./nm2",
		"Pho Do Chung Sinh./nm3",
		"Thoat./Exit"})
elseif GetItemCount(99) >= 1 and GetItemCount(100) >= 1 then
		SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Tam Nga Te Tuyet./nm1",
		"Phong Suong Toai Anh./nm2",
		"Thoat./Exit"})
elseif GetItemCount(100) >= 1 and GetItemCount(101) >= 1 then
		SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Phong Suong Toai Anh./nm2",
		"Pho Do Chung Sinh./nm3",
		"Thoat./Exit"})
elseif GetItemCount(99) >= 1 and GetItemCount(101) >= 1 then
		SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Tam Nga Te Tuyet./nm1",
		"Pho Do Chung Sinh./nm3",
		"Thoat./Exit"})
elseif GetItemCount(99) >= 1 then
		SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Tam Nga Te Tuyet./nm1",
		"Thoat./Exit"})
elseif GetItemCount(100) >= 1 then
		SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Phong Suong Toai Anh./nm2",
		"Thoat./Exit"})
elseif GetItemCount(101) >= 1 then
		SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Pho Do Chung Sinh./nm3",
		"Thoat./Exit"})
end
end;

function nm1()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][15] = BiKip[i][15] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(99)
AddCoin(BOOK90NM)
MsgEx("Ban nhan duoc "..BOOK90NM.." Tien Dong")
end;

function nm2()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][16] = BiKip[i][16] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(100)
AddCoin(BOOK90NM)
MsgEx("Ban nhan duoc "..BOOK90NM.." Tien Dong")
end;

function nm3()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][17] = BiKip[i][17] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(101)
AddCoin(BOOK90NM)
MsgEx("Ban nhan duoc "..BOOK90NM.." Tien Dong")
end;

function a6()
if GetItemCount(102) >= 1 and GetItemCount(103) >= 1 then
		SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Bang Tung Vo Anh./ty1",
		"Bang Tam Tien Tu./ty2",
		"Thoat./Exit"})
elseif GetItemCount(102) >= 1 then
		SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Bang Tung Vo Anh./ty1",
		"Thoat./Exit"})
elseif GetItemCount(103) >= 1 then
		SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Bang Tam Tien Tu./ty2",
		"Thoat./Exit"})
end
end;

function ty1()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][18] = BiKip[i][18] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(102)
AddCoin(BOOK90TY)
MsgEx("Ban nhan duoc "..BOOK90TY.." Tien Dong")
end;

function ty2()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][19] = BiKip[i][19] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(103)
AddCoin(BOOK90TY)
MsgEx("Ban nhan duoc "..BOOK90TY.." Tien Dong")
end;

function a7()
if GetItemCount(104) >= 1 and GetItemCount(105) >= 1 then
	SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Phi Long Tai Thien./cb1",
		"Thien Ha Vo Cau./cb2",
		"Thoat./Exit"})
elseif GetItemCount(104) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Phi Long Tai Thien./cb1",
		"Thoat./Exit"})
elseif GetItemCount(105) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Thien Ha Vo Cau./cb2",
		"Thoat./Exit"})
end
end;

function cb1()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][20] = BiKip[i][20] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(104)
AddCoin(BOOK90CB)
MsgEx("Ban nhan duoc "..BOOK90CB.." Tien Dong")
end;

function cb2()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][21] = BiKip[i][21] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(105)
AddCoin(BOOK90CB)
MsgEx("Ban nhan duoc "..BOOK90CB.." Tien Dong")
end;

function a8()
if GetItemCount(106) >= 1 and GetItemCount(107) >= 1 and GetItemCount(108) >= 1 then
	SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Van Long Kich./tn1",
		"Thien Ngoai Luu Tinh./tn2",
		"Nhiep Hon Loan Tam./tn3",
		"Thoat./Exit"})
elseif GetItemCount(106) >= 1 and GetItemCount(107) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Van Long Kich./tn1",
		"Thien Ngoai Luu Tinh./tn2",
		"Thoat./Exit"})
elseif GetItemCount(107) >= 1 and GetItemCount(108) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Thien Ngoai Luu Tinh./tn2",
		"Nhiep Hon Loan Tam./tn3",
		"Thoat./Exit"})
elseif GetItemCount(106) >= 1 and GetItemCount(108) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Van Long Kich./tn1",
		"Nhiep Hon Loan Tam./tn3",
		"Thoat./Exit"})
elseif GetItemCount(106) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Van Long Kich./tn1",
		"Thoat./Exit"})
elseif GetItemCount(107) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Thien Ngoai Luu Tinh./tn2",
		"Thoat./Exit"})
elseif GetItemCount(108) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Nhiep Hon Loan Tam./tn3",
		"Thoat./Exit"})
end
end;

function tn1()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][22] = BiKip[i][22] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(106)
AddCoin(BOOK90TN)
MsgEx("Ban nhan duoc "..BOOK90TN.." Tien Dong")
end;

function tn2()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][23] = BiKip[i][23] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(107)
AddCoin(BOOK90TN)
MsgEx("Ban nhan duoc "..BOOK90TN.." Tien Dong")
end;

function tn3()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][24] = BiKip[i][24] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(108)
AddCoin(BOOK90TN)
MsgEx("Ban nhan duoc "..BOOK90TN.." Tien Dong")
end;

function a1()
if GetItemCount(109) >= 1 and GetItemCount(110) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Thien Dia Vo Cuc./vd1",
		"Nhan Kiem Hop Nhat./vd2",
		"Thoat./Exit"})
elseif GetItemCount(109) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Thien Dia Vo Cuc./vd1",
		"Thoat./Exit"})
elseif GetItemCount(110) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Nhan Kiem Hop Nhat./vd2",
		"Thoat./Exit"})
end
end;

function vd1()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][25] = BiKip[i][25] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(109)
AddCoin(BOOK90VD)
MsgEx("Ban nhan duoc "..BOOK90VD.." Tien Dong")
end;

function vd2()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][26] = BiKip[i][26] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(110)
AddCoin(BOOK90VD)
MsgEx("Ban nhan duoc "..BOOK90VD.." Tien Dong")
end;

function a10()
if GetItemCount(111) >= 1 and GetItemCount(112) >= 1 and GetItemCount(113) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Ngao Tuyet Tieu Phong./cl1",
		"Loi Dong Cuu Thien./cl2",
		"Tuy Tien Ta Cot./cl3",
		"Thoat./Exit"})
elseif GetItemCount(111) >= 1 and GetItemCount(112) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Ngao Tuyet Tieu Phong./cl1",
		"Loi Dong Cuu Thien./cl2",
		"Thoat./Exit"})
elseif GetItemCount(112) >= 1 and GetItemCount(113) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Loi Dong Cuu Thien./cl2",
		"Tuy Tien Ta Cot./cl3",
		"Thoat./Exit"})
elseif GetItemCount(111) >= 1 and GetItemCount(113) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Ngao Tuyet Tieu Phong./cl1",
		"Tuy Tien Ta Cot./cl3",
		"Thoat./Exit"})
elseif GetItemCount(111) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Ngao Tuyet Tieu Phong./cl1",
		"Thoat./Exit"})
elseif GetItemCount(112) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Loi Dong Cuu Thien./cl2",
		"Thoat./Exit"})
elseif GetItemCount(113) >= 1 then
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban sach nao ?",
		"Tuy Tien Ta Cot./cl3",
		"Thoat./Exit"})
end
end;

function cl1()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][27] = BiKip[i][27] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(111)
AddCoin(BOOK90CL)
MsgEx("Ban nhan duoc "..BOOK90CL.." Tien Dong")
end;

function cl2()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][28] = BiKip[i][28] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(112)
AddCoin(BOOK90CL)
MsgEx("Ban nhan duoc "..BOOK90CL.." Tien Dong")
end;

function cl3()
for i =1,getn(BiKip) do
	if BiKip[i][1] == "Bi Kip 90" then
	BiKip[i][29] = BiKip[i][29] +1
	capnhat = TaoBang(BiKip,"BiKip","")
	SaveData(data1,capnhat)
	end
end
DelItem(113)
AddCoin(BOOK90CL)
MsgEx("Ban nhan duoc "..BOOK90CL.." Tien Dong")
end;

function loai2()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban Bi Kip nao ?","Thieu Lam./b1","Thien Vuong./b2","Duong Mon./b3","Ngu Doc./b4","Nga Mi./b5","Tiep Theo./next2","Trang chinh./banbikip","Thoat./Exit"})
end;

function next2()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban Bi Kip nao ?","Thuy Yen./b6","Cai Bang./b7","Thien Nhan./b8","Vo Dang./b9","Con Lon./b10","Quay ve./loai2","Thoat./Exit"})
end;

function b1()
	if GetItemCount(67) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 120" then
			BiKip[i][2] = BiKip[i][2] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(67)
	AddCoin(BOOK120TL)
	MsgEx("Ban nhan duoc "..BOOK120TL.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function b2()
	if GetItemCount(73) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 120" then
			BiKip[i][3] = BiKip[i][3] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(73)
	AddCoin(BOOK120TV)
	MsgEx("Ban nhan duoc "..BOOK120TV.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function b3()
	if GetItemCount(70) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 120" then
			BiKip[i][4] = BiKip[i][4] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(70)
	AddCoin(BOOK120DM)
	MsgEx("Ban nhan duoc "..BOOK120DM.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function b4()
	if GetItemCount(66) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 120" then
			BiKip[i][5] = BiKip[i][5] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(66)
	AddCoin(BOOK120ND)
	MsgEx("Ban nhan duoc "..BOOK120ND.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function b5()
	if GetItemCount(65) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 120" then
			BiKip[i][6] = BiKip[i][6] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(65)
	AddCoin(BOOK120NM)
	MsgEx("Ban nhan duoc "..BOOK120NM.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function b6()
	if GetItemCount(69) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 120" then
			BiKip[i][7] = BiKip[i][7] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(69)
	AddCoin(BOOK120TY)
	MsgEx("Ban nhan duoc "..BOOK120TY.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function b7()
	if GetItemCount(68) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 120" then
			BiKip[i][8] = BiKip[i][8] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(68)
	AddCoin(BOOK120CB)
	MsgEx("Ban nhan duoc "..BOOK120CB.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function b8()
	if GetItemCount(72) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 120" then
			BiKip[i][9] = BiKip[i][9] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(72)
	AddCoin(BOOK120TN)
	MsgEx("Ban nhan duoc "..BOOK120TN.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function b9()
	if GetItemCount(74) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 120" then
			BiKip[i][10] = BiKip[i][10] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(74)
	AddCoin(BOOK120VD)
	MsgEx("Ban nhan duoc "..BOOK120VD.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function b10()
	if GetItemCount(71) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 120" then
			BiKip[i][11] = BiKip[i][11] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(71)
	AddCoin(BOOK120VD)
	MsgEx("Ban nhan duoc "..BOOK120VD.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function loai3()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban Bi Kip nao ?","Thieu Lam./c1","Thien Vuong./c2","Duong Mon./c3","Ngu Doc./c4","Nga Mi./c5","Tiep Theo./next3","Trang chinh./banbikip","Thoat./Exit"})
end;

function next3()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban Bi Kip nao ?","Thuy Yen./c6","Cai Bang./c7","Thien Nhan./c8","Vo Dang./c9","Con Lon./c10","Quay Ve./loai3","Thoat./Exit"})
end;

function c1()
	if GetItemCount(157) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 150" then
			BiKip[i][2] = BiKip[i][2] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(157)
	AddCoin(BOOK150TL)
	MsgEx("Ban nhan duoc "..BOOK150TL.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function c2()
	if GetItemCount(158) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 150" then
			BiKip[i][3] = BiKip[i][3] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(158)
	AddCoin(BOOK150TV)
	MsgEx("Ban nhan duoc "..BOOK150TV.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function c3()
	if GetItemCount(159) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 150" then
			BiKip[i][4] = BiKip[i][4] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(159)
	AddCoin(BOOK150DM)
	MsgEx("Ban nhan duoc "..BOOK150DM.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function c4()
	if GetItemCount(160) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 150" then
			BiKip[i][5] = BiKip[i][5] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(160)
	AddCoin(BOOK150ND)
	MsgEx("Ban nhan duoc "..BOOK150ND.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function c5()
	if GetItemCount(161) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 150" then
			BiKip[i][6] = BiKip[i][6] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(161)
	AddCoin(BOOK150NM)
	MsgEx("Ban nhan duoc "..BOOK150NM.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function c6()
	if GetItemCount(162) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 150" then
			BiKip[i][7] = BiKip[i][7] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(162)
	AddCoin(BOOK150TY)
	MsgEx("Ban nhan duoc "..BOOK150TY.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function c7()
	if GetItemCount(163) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 150" then
			BiKip[i][8] = BiKip[i][8] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(163)
	AddCoin(BOOK150CB)
	MsgEx("Ban nhan duoc "..BOOK150CB.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function c8()
	if GetItemCount(164) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 150" then
			BiKip[i][9] = BiKip[i][9] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(164)
	AddCoin(BOOK150TN)
	MsgEx("Ban nhan duoc "..BOOK150TN.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function c9()
	if GetItemCount(165) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 150" then
			BiKip[i][10] = BiKip[i][10] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(165)
	AddCoin(BOOK150VD)
	MsgEx("Ban nhan duoc "..BOOK150VD.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function c10()
	if GetItemCount(166) >= 1 then
		for i =1,getn(BiKip) do
			if BiKip[i][1] == "Bi Kip 150" then
			BiKip[i][11] = BiKip[i][11] +1
			capnhat = TaoBang(BiKip,"BiKip","")
			SaveData(data1,capnhat)
			end
		end
	DelItem(166)
	AddCoin(BOOK150CL)
	MsgEx("Ban nhan duoc "..BOOK150CL.." Tien Dong")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co vat pham ta muon mua...",1)
	end
end;

function CountItemInShop(ad,id)
	for i = 1,getn(BiKip) do
		if BiKip[i][1] == ad then
			return BiKip[i][id]
		end
	end
end;

function ExitO()
SetTaskTemp(TaskTienDong,0)
end;

function BuyBook90(cash,id)
a = CountItemInShop("Bi Kip 90",id)
	if  a == 0 or a == nil then
		MsgEx("<color=cyan>Thong Tin<color>: Vat pham nay ta chua co hang quay lai vao luc khac.",1)
	elseif a > 0 then
		if AddCoin() >= cash then
			for i =1,getn(BiKip) do
				if BiKip[i][1] == "Bi Kip 90" then
				BiKip[i][id] = BiKip[i][id] - 1
				capnhat = TaoBang(BiKip,"BiKip","")
				SaveData(data1,capnhat)
				end
			end
			gia = -1*cash
			AddCoin(gia)
			iditem = 84 + id
			AddEventItem(iditem)
			MsgEx("Ban mua duoc mot cuon bi kip 90.")
			ExitO()
		else
		MsgEx("Ban can co "..cash.." tien dong moi mua duoc.")
		end
	end
end;

function muabikip()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon mua Bi Kip nao ?","Bi Kip 90./loai_1","Bi Kip 120./loai_2","Bi Kip 150./loai_3","Thoat./Exit"})
end;

function loai_1()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban loai bi kip mon phai nao ?","Thieu Lam./az1","Thien Vuong./az2","Duong Mon./az3","Ngu Doc./az4","Nga Mi./az5","Tiep Theo./next_1","Trang chinh./muabikip","Thoat./Exit"})
end;

function next_1()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban loai bi kip mon phai nao ?","Thuy Yen./az6","Cai Bang./az7","Thien Nhan./az8","Vo Dang./az9","Con Lon./az10","Quay Ve./loai_1","Thoat./Exit"})
end;

function az1()
a = CountItemInShop("Bi Kip 90",2)
b = CountItemInShop("Bi Kip 90",3)
c = CountItemInShop("Bi Kip 90",4)
SayNewEx({"<color=cyan>Thong Tin<color>: Dat Ma Do Giang: "..a.." cuon\nHoanh Tao Thien Quan: "..b.." cuon\nVo Tuong Tram: "..c.." cuon.","Dat Ma Do Giang./tlz","Hoanh Tao Thien Quan./tlz","Vo Tuong Tram./tlz","Thoat./ExitO"})
end;

function tlaz(nsel)
vs = nsel + 2
gia = BOOK90TL+5
	if vs == 2 then
	BuyBook90(gia,vs)
	elseif vs == 3 then
	BuyBook90(gia,vs)
	elseif vs == 4 then
	BuyBook90(gia,vs)
	end
end;

function az2()
a = CountItemInShop("Bi Kip 90",5)
b = CountItemInShop("Bi Kip 90",6)
c = CountItemInShop("Bi Kip 90",7)
SayNewEx({"<color=cyan>Thong Tin<color>: Pha Thien Tram: "..a.." cuon\nTruy Tinh Truc Nguyet: "..b.." cuon\nTruy Phong Quyet: "..c.." cuon.","Pha Thien Tram./tvz","Truy Tinh Truc Nguyet./tvz","Truy Phong Quyet./tvz","Thoat./ExitO"})
end;

function tvz(nsel)
vs = nsel + 5
gia = BOOK90TV+5
	if vs == 5 then
	BuyBook90(gia,vs)
	elseif vs == 6 then
	BuyBook90(gia,vs)
	elseif vs == 7 then
	BuyBook90(gia,vs)
	end
end;

function az3()
a = CountItemInShop("Bi Kip 90",8)
b = CountItemInShop("Bi Kip 90",9)
c = CountItemInShop("Bi Kip 90",10)
d = CountItemInShop("Bi Kip 90",11)
SayNewEx({"<color=cyan>Thong Tin<color>: Nhiep Hon Nguyet Anh: "..a.." cuon\tCuu Cung: "..b.." cuon\nBao Vu: "..c.." cuon\tLoan Hoan Kich: "..d.." cuon.","Nhiep Hon./dmz","Cuu Cung./dmz","Bao Vu./dmz","Loan Hoan Kich./dmz","Thoat./ExitO"})
end;

function dmz(nsel)
vs = nsel + 5
gia = BOOK90DM+5
	if vs == 8 then
	BuyBook90(gia,vs)
	elseif vs == 9 then
	BuyBook90(gia,vs)
	elseif vs == 10 then
	BuyBook90(gia,vs)
	elseif vs == 11 then
	BuyBook90(gia,vs)
	end
end;

function az4()
a = CountItemInShop("Bi Kip 90",12)
b = CountItemInShop("Bi Kip 90",13)
c = CountItemInShop("Bi Kip 90",14)
SayNewEx({"<color=cyan>Thong Tin<color>: Am Phong Thuc Cot: "..a.." cuon\nHuyen Am Tram: "..b.." cuon\nDoan Can Hu Cot: "..c.." cuon.","Am Phong./ndz","Huyen Am Tram./ndz","Doan Can./ndz","Thoat./ExitO"})
end;

function ndz()
vs = nsel + 12
gia = BOOK90ND+5
	if vs == 12 then
	BuyBook90(gia,vs)
	elseif vs == 13 then
	BuyBook90(gia,vs)
	elseif vs == 14 then
	BuyBook90(gia,vs)
	end
end;

function az5()
a = CountItemInShop("Bi Kip 90",15)
b = CountItemInShop("Bi Kip 90",16)
c = CountItemInShop("Bi Kip 90",17)
SayNewEx({"<color=cyan>Thong Tin<color>: Tam Nga Te Tuyet: "..a.." cuon\nPhong Suong Toai Anh: "..b.." cuon\nPho Do Chung Sinh: "..c.." cuon.","Tam Nga./nmz","Phong Suong./nmz","Pho Do./nmz","Thoat./ExitO"})
end;

function nmz(nsel)
vs = nsel + 15
gia = BOOK90NM+5
	if vs == 15 then
	BuyBook90(gia,vs)
	elseif vs == 16 then
	BuyBook90(gia,vs)
	elseif vs == 17 then
	BuyBook90(gia,vs)
	end
end;

function az6()
a = CountItemInShop("Bi Kip 90",18)
b = CountItemInShop("Bi Kip 90",19)
SayNewEx({"<color=cyan>Thong Tin<color>: Bang Tung Vo Anh: "..a.." cuon\nBang Tam Tien Tu: "..b.." cuon","Bang Tung Vo Anh./tyz","Bang Tam Tien Tu./tyz","Thoat./ExitO"})
end;

function tyz(nsel)
vs = nsel + 18
gia = BOOK90TY+5
BuyBook90(gia,vs)
end;

function az7()
a = CountItemInShop("Bi Kip 90",20)
b = CountItemInShop("Bi Kip 90",21)
SayNewEx({"<color=cyan>Thong Tin<color>: Phi Long Tai Thien: "..a.." cuon\nThien Ha Vo Cau: "..b.." cuon","Phi Long Tai Thien./cbz","Thien Ha Vo Cau./cbz","Thoat./ExitO"})
end;

function cbz(nsel)
vs = nsel + 20
gia = BOOK90CB+5
BuyBook90(gia,vs)
end;

function az8()
a = CountItemInShop("Bi Kip 90",22)
b = CountItemInShop("Bi Kip 90",23)
c = CountItemInShop("Bi Kip 90",24)
SayNewEx({"<color=cyan>Thong Tin<color>: Van Long Kich: "..a.." cuon\nThien Ngoai Luu Tinh: "..b.." cuon\nNhiep Hon Loan Tam: "..b.." cuon.","Van Long./tnz","Thien Ngoai./tnz","Nhiep Hon./tnz","Thoat./ExitO"})
end;

function tnz(nsel)
vs = nsel + 22
gia = BOOK90TN+5
BuyBook90(gia,vs)
end;

function az9()
a = CountItemInShop("Bi Kip 90",25)
b = CountItemInShop("Bi Kip 90",26)
SayNewEx({"<color=cyan>Thong Tin<color>: Thien Dia Vo Cuc: "..a.." cuon\nNhan Kiem Hop Nhat: "..b.." cuon","Thien Dia Vo Cuc./vdz","Nhan Kiem Hop Nhat./vdz","Thoat./ExitO"})
end;

function vdz(nsel)
vs = nsel + 25
gia = BOOK90VD+5
BuyBook90(gia,vs)
end;

function az10()
a = CountItemInShop("Bi Kip 90",27)
b = CountItemInShop("Bi Kip 90",28)
c = CountItemInShop("Bi Kip 90",29)
SayNewEx({"<color=cyan>Thong Tin<color>: Ngao Tuyet Tieu Phong: "..a.." cuon\nLoi Dong Cuu Thien: "..b.." cuon\nTuy Tien Ta Cot: "..b.." cuon.","Ngao Tuyet./clz","Loi Dong./clz","Tuy Tien./clz","Thoat./ExitO"})
end;

function clz(nsel)
vs = nsel + 27
gia = BOOK90CL+5
BuyBook90(gia,vs)
end;

function BuyBook120(cash,id,iditem)
a = CountItemInShop("Bi Kip 120",id)
	if  a == 0 or a == nil then
		MsgEx("<color=cyan>Thong Tin<color>: Vat pham nay ta chua co hang quay lai vao luc khac.",1)
	elseif a > 0 then
		if AddCoin() >= cash then
			for i =1,getn(BiKip) do
				if BiKip[i][1] == "Bi Kip 120" then
				BiKip[i][id] = BiKip[i][id] - 1
				capnhat = TaoBang(BiKip,"BiKip","")
				SaveData(data1,capnhat)
				end
			end
			gia = -1*cash
			AddCoin(gia)
			AddEventItem(iditem)
			MsgEx("Ban mua duoc mot cuon bi kip 120.")
			ExitO()
		else
		MsgEx("Ban can co "..cash.." tien dong moi mua duoc.")
		end
	end
end;

function loai_2()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban loai bi kip mon phai nao ?","Thieu Lam./bz1","Thien Vuong./bz2","Duong Mon./bz3","Ngu Doc./bz4","Nga Mi./bz5","Tiep Theo./next_2","Trang chinh./muabikip","Thoat./Exit"})
end;

function next_2()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban loai bi kip mon phai nao ?","Thuy Yen./bz6","Cai Bang./bz7","Thien Nhan./bz8","Vo Dang./bz9","Con Lon./bz10","Quay Ve./loai_2","Thoat./Exit"})
end;

function bz1()
a = CountItemInShop("Bi Kip 120",2)
SayNewEx({"<color=cyan>Lai Buon<color>: Hien tai dang co <color=red>"..a.." cuon<color> Dai Thua Nhu Lai Chu.\nNguoi co muon mua hay khong?","Ta mua./tlx","Thoat./Exit"})
end;

function tlx()
cash = BOOK120TL + 10
BuyBook120(cash,2,67)
end;

function bz2()
a = CountItemInShop("Bi Kip 120",3)
SayNewEx({"<color=cyan>Lai Buon<color>: Hien tai dang co <color=red>"..a.." cuon<color> Dao Hua Thien.\nNguoi co muon mua hay khong?","Ta mua./tvx","Thoat./Exit"})
end;

function tvx()
cash = BOOK120TV + 10
BuyBook120(cash,3,73)
end;

function bz3()
a = CountItemInShop("Bi Kip 120",4)
SayNewEx({"<color=cyan>Lai Buon<color>: Hien tai dang co <color=red>"..a.." cuon<color> Me Tung Anh.\nNguoi co muon mua hay khong?","Ta mua./dmx","Thoat./Exit"})
end;

function dmx()
cash = BOOK120DM + 10
BuyBook120(cash,4,70)
end;

function bz4()
a = CountItemInShop("Bi Kip 120",5)
SayNewEx({"<color=cyan>Lai Buon<color>: Hien tai dang co <color=red>"..a.." cuon<color> Hap Tinh Yem.\nNguoi co muon mua hay khong?","Ta mua./ndx","Thoat./Exit"})
end;

function ndx()
cash = BOOK120ND + 10
BuyBook120(cash,5,66)
end;

function bz5()
a = CountItemInShop("Bi Kip 120",6)
SayNewEx({"<color=cyan>Lai Buon<color>: Hien tai dang co <color=red>"..a.." cuon<color> Be Nguyet Phat Tran.\nNguoi co muon mua hay khong?","Ta mua./nmx","Thoat./Exit"})
end;

function nmx()
cash = BOOK120NM + 10
BuyBook120(cash,6,65)
end;

function bz6()
a = CountItemInShop("Bi Kip 120",7)
SayNewEx({"<color=cyan>Lai Buon<color>: Hien tai dang co <color=red>"..a.." cuon<color> Ngu Tuyet An.\nNguoi co muon mua hay khong?","Ta mua./tyx","Thoat./Exit"})
end;

function tyx()
cash = BOOK120TY + 10
BuyBook120(cash,6,69)
end;

function bz7()
a = CountItemInShop("Bi Kip 120",8)
SayNewEx({"<color=cyan>Lai Buon<color>: Hien tai dang co <color=red>"..a.." cuon<color> Hon Thien Khi Cong.\nNguoi co muon mua hay khong?","Ta mua./cbx","Thoat./Exit"})
end;

function cbx()
cash = BOOK120CB + 10
BuyBook120(cash,6,68)
end;

function bz8()
a = CountItemInShop("Bi Kip 120",9)
SayNewEx({"<color=cyan>Lai Buon<color>: Hien tai dang co <color=red>"..a.." cuon<color> Ma Am Phe Phach.\nNguoi co muon mua hay khong?","Ta mua./tnx","Thoat./Exit"})
end;

function tnx()
cash = BOOK120TN + 10
BuyBook120(cash,6,72)
end;

function bz9()
a = CountItemInShop("Bi Kip 120",10)
SayNewEx({"<color=cyan>Lai Buon<color>: Hien tai dang co <color=red>"..a.." cuon<color> Luong Nghi Chan Khi.\nNguoi co muon mua hay khong?","Ta mua./vdx","Thoat./Exit"})
end;

function vdx()
cash = BOOK120VD + 10
BuyBook120(cash,6,74)
end;

function bz10()
a = CountItemInShop("Bi Kip 120",11)
SayNewEx({"<color=cyan>Lai Buon<color>: Hien tai dang co <color=red>"..a.." cuon<color> Xuat U Bat Nhiem.\nNguoi co muon mua hay khong?","Ta mua./clx","Thoat./Exit"})
end;

function clx()
cash = BOOK120CL + 10
BuyBook120(cash,6,71)
end;

function loai_3()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban loai bi kip mon phai nao ?","Thieu Lam./caz1","Thien Vuong./caz2","Duong Mon./caz3","Ngu Doc./caz4","Nga Mi./caz5","Tiep Theo./next_3","Trang chinh./muabikip","Thoat./Exit"})
end;

function next_3()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban loai bi kip mon phai nao ?","Thuy Yen./caz6","Cai Bang./caz7","Thien Nhan./caz8","Vo Dang./caz9","Con Lon./caz10","Quay Ve./loai_3","Thoat./Exit"})
end;

function BuyBook150(cash,id)
a = CountItemInShop("Bi Kip 150",id)
	if  a == 0 or a == nil then
		MsgEx("<color=cyan>Thong Tin<color>: Vat pham nay ta chua co hang quay lai vao luc khac.",1)
	elseif a > 0 then
		if AddCoin() >= cash then
			for i =1,getn(BiKip) do
				if BiKip[i][1] == "Bi Kip 150" then
				BiKip[i][id] = BiKip[i][id] - 1
				capnhat = TaoBang(BiKip,"BiKip","")
				SaveData(data1,capnhat)
				end
			end
			gia = -1*cash
			AddCoin(gia)
			iditem = 155 + id
			AddEventItem(iditem)
			MsgEx("Ban mua duoc mot cuon bi kip 150.")
			ExitO()
		else
		MsgEx("Ban can co "..cash.." tien dong moi mua duoc.")
		end
	end
end;

function caz1()
cash = BOOK150TL + 20
BuyBook150(cash,2)
end;

function caz2()
cash = BOOK150TV + 20
BuyBook150(cash,3)
end;

function caz3()
cash = BOOK150DM + 20
BuyBook150(cash,4)
end;

function caz4()
cash = BOOK150ND + 20
BuyBook150(cash,5)
end;

function caz5()
cash = BOOK150NM + 20
BuyBook150(cash,6)
end;

function caz6()
cash = BOOK150TY + 20
BuyBook150(cash,7)
end;

function caz7()
cash = BOOK150CB + 20
BuyBook150(cash,8)
end;

function caz8()
cash = BOOK150TN + 20
BuyBook150(cash,9)
end;

function caz9()
cash = BOOK150VD + 20
BuyBook150(cash,10)
end;

function caz10()
cash = BOOK150CL + 20
BuyBook150(cash,11)
end;

function bankhoangthach()
SayNewEx({"<color=cyan>Lai Buon<color>: Nhuoi muon mua ban loai khoang thach nao?","Huyen Tinh./htinh","Phi Thuy./pthuy","Thuy Tinh./ttinh","Hong Kim Thach./hkimthach","Thoat./Exit"})
end;

function htinh()
SayNewEx({"<color=cyan>Lai Buon<color>: Nhuoi muon ban Huyen Tinh cap may?","1/hz","2/hz","3/hz","4/hz","5/hz","6/hz","7/hz","8/hz","9/hz","10/hz","Thoat./Exit"})
end;

function CountItemInShop2(ad,id)
	for i = 1,getn(KhoangThach) do
		if KhoangThach[i][1] == ad then
			return KhoangThach[i][id]
		end
	end
end;

function LiveCashShop(cash,id,iditem,tenshop)
a = CountItemInShop2(tenshop,id)
	if  a == 0 or a == nil then
		MsgEx("<color=cyan>Thong Tin<color>: Vat pham nay ta chua co hang quay lai vao luc khac.",1)
	elseif a > 0 then
		if AddCoin() >= cash then
			for i =1,getn(KhoangThach) do
				if KhoangThach[i][1] == tenshop then
				KhoangThach[i][id] = KhoangThach[i][id] - 1
				capnhat = TaoBang(KhoangThach,"KhoangThach","")
				SaveData(data2,capnhat)
				end
			end
			gia = -1*cash
			AddCoin(gia)
			AddEventItem(iditem)
			MsgEx("Nguoi nhan duoc mot vat pham tu Lai Buon.")
		else
		MsgEx("Ban can co "..cash.." tien dong moi mua duoc.")
		end
	end
end;

function BanHuyenTinh(iditem,idshop,tenshop,gold)
	if GetItemCount(iditem) >= 1 then
		DelItem(iditem)
		for i =1,getn(KhoangThach) do
			if KhoangThach[i][1] == tenshop then
			KhoangThach[i][idshop] = KhoangThach[i][idshop] +1
			capnhat = TaoBang(KhoangThach,"KhoangThach","")
			SaveData(data1,capnhat)
			end
		end
		AddCoin(gold)
		MsgEx("Ban nhan duoc "..gold.." Tien Dong.")
	else
	MsgEx("<color=cyan>Lai Buon<color>: Nguoi khong co mon hang ta can mua...",1)
	end
end;

function hz(nsel)
id = nsel + 1
if id == 1 then
BanHuyenTinh(55,2,"Huyen Tinh",HUYENTINH1)
elseif id == 2 then
BanHuyenTinh(56,3,"Huyen Tinh",HUYENTINH2)
elseif id == 3 then
BanHuyenTinh(57,4,"Huyen Tinh",HUYENTINH3)
elseif id == 4 then
BanHuyenTinh(58,5,"Huyen Tinh",HUYENTINH4)
elseif id == 5 then
BanHuyenTinh(59,6,"Huyen Tinh",HUYENTINH5)
elseif id == 6 then
BanHuyenTinh(60,7,"Huyen Tinh",HUYENTINH6)
elseif id == 7 then
BanHuyenTinh(61,8,"Huyen Tinh",HUYENTINH7)
elseif id == 8 then
BanHuyenTinh(62,9,"Huyen Tinh",HUYENTINH8)
elseif id == 9 then
BanHuyenTinh(63,10,"Huyen Tinh",HUYENTINH9)
elseif id == 10 then
BanHuyenTinh(64,11,"Huyen Tinh",HUYENTINH10)
end
end;

function pthuy()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban loai Phi Thuy nao ?","Tu Phi Thuy./ptz","Lam Phi Thuy./ptz","Luc Phi Thuy./ptz","Thoat./Exit"})
end;

function ptz(nsel)
id = nsel + 1
if id == 1 then
BanHuyenTinh(115,2,"Phi Thuy",TUPHTHUY)
elseif id == 2 then
BanHuyenTinh(116,3,"Phi Thuy",LAMPHITHUY)
elseif id == 3 then
BanHuyenTinh(117,4,"Phi Thuy",LUCPHITHUY)
end
end;

function ttinh()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon ban loai Thuy Tinh nao ?","Lam Thuy Tinh./ttz","Tu Thuy Tinh./ttz","Luc Thuy Tinh./ttz","Thoat./Exit"})
end;

function ttz(nsel)
id = nsel + 1
if id == 1 then
BanHuyenTinh(8,5,"Phi Thuy",LAMTHUYTINH)
elseif id == 2 then
BanHuyenTinh(9,6,"Phi Thuy",TUTHUYTINH)
elseif id == 3 then
BanHuyenTinh(10,7,"Phi Thuy",LUCTHUYTINH)
end
end;

function hkimthach()
BanHuyenTinh(114,8,"Phi Thuy",HOANGKIMTHACH)
end;

function muakhoangthach()
SayNewEx({"<color=cyan>Lai Buon<color>: Nhuoi muon mua ban loai khoang thach nao?","Huyen Tinh./htinhx","Phi Thuy./pthuyx","Thuy Tinh./ttinhx","Hong Kim Thach./hkimthachx","Thoat./Exit"})
end;

function htinhx()
SayNewEx({"<color=cyan>Lai Buon<color>: Nhuoi muon ban Huyen Tinh cap may?","1/hzx","2/hzx","3/hzx","4/hzx","5/hzx","6/hzx","7/hzx","8/hzx","9/hzx","10/hzx","Thoat./Exit"})
end;

function hzx(nsel)
id = nsel+1
	if id == 1 then
	LiveCashShop(2,2,55,"Huyen Tinh")
	elseif id == 2 then
	LiveCashShop(3,3,56,"Huyen Tinh")
	elseif id == 3 then
	LiveCashShop(4,4,57,"Huyen Tinh")
	elseif id == 4 then
	LiveCashShop(5,5,58,"Huyen Tinh")
	elseif id == 5 then
	LiveCashShop(6,6,59,"Huyen Tinh")
	elseif id == 6 then
	LiveCashShop(7,7,60,"Huyen Tinh")
	elseif id == 7 then
	LiveCashShop(10,8,61,"Huyen Tinh")
	elseif id == 8 then
	LiveCashShop(11,9,62,"Huyen Tinh")
	elseif id == 9 then
	LiveCashShop(12,10,63,"Huyen Tinh")
	elseif id == 10 then
	LiveCashShop(15,11,64,"Huyen Tinh")
	end
end;

function pthuyx()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon mua loai Phi Thuy nao ?","Tu Phi Thuy./ptx","Lam Phi Thuy./ptx","Luc Phi Thuy./ptx","Thoat./Exit"})
end;

function ptx(nsel)
if id == 1 then
LiveCashShop(TUPHTHUY+5,2,115,"Phi Thuy")
elseif id == 2 then
LiveCashShop(LAMPHITHUY+5,3,116,"Phi Thuy")
elseif id == 3 then
LiveCashShop(LUCPHITHUY+5,4,117,"Phi Thuy")
end
end;

function ttinhx()
SayNewEx({"<color=cyan>Lai Buon<color>: Nguoi muon mua loai Thuy Tinh nao ?","Lam Thuy Tinh./ttx","Tu Thuy Tinh./ttx","Luc Thuy Tinh./ttx","Thoat./Exit"})
end;

function ttx(nsel)
id = nsel+1
	if id == 1 then
	LiveCashShop(LAMTHUYTINH+5,5,8,"Phi Thuy")
	elseif id == 2 then
	LiveCashShop(TUTHUYTINH+5,6,9,"Phi Thuy")
	elseif id == 3 then
	LiveCashShop(LUCTHUYTINH+5,7,10,"Phi Thuy")
	end
end;

function hkimthachx()
LiveCashShop(HOANGKIMTHACH+5,8,114,"Phi Thuy")
end;



