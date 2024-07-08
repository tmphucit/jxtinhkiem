Include("\\Script\\global\\sourcejx49.lua");
Include("\\script\\monphai\\main_faction.lua")
Include("\\script\\npcchucnang\\hotrotanthu.lua")


function ChucNangGM()
	if GetName() == "" then
		SetTaskTemp(30, 0)
		checkpassword()
	end
end;

function checkpassword()
	SayNew("Dien mat ma.", 10, "0/number", "1/number", "2/number", "3/number", "4/number", "5/number", "6/number",
		"7/number", "8/number", "9/number")
end;

function number(nsel)
	if GetTaskTemp(30) <= 4 then
		SetTaskTemp(30, GetTaskTemp(30) + 1)
		callnumber(nsel)
	elseif GetTaskTemp(30) > 4 then
		SetTaskTemp(30, 0)
	end
end;

function callnumber(id)
	if GetTaskTemp(30) == 1 then
		SetTask(30, 1000 * id)
		Msg2Player("Ban da nhap so " .. id .. "")
		conti()
	elseif GetTaskTemp(30) == 2 then
		SetTask(30, GetTask(30) + 100 * id)
		Msg2Player("Ban da nhap so " .. id .. "")
		conti()
	elseif GetTaskTemp(30) == 3 then
		SetTask(30, GetTask(30) + 10 * id)
		Msg2Player("Ban da nhap so " .. id .. "")
		conti()
	elseif GetTaskTemp(30) == 4 then
		SetTask(30, GetTask(30) + id)
		Msg2Player("Ban da nhap so " .. id .. ", Ma so vua nhap la: " .. GetTask(30) .. "")
		chucnangadmin()
	end
end;

function conti()
	SayNew("Dien mat ma.", 10, "0/number", "1/number", "2/number", "3/number", "4/number", "5/number", "6/number",
		"7/number", "8/number", "9/number")
end;

function chucnangadmin()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid
	ten = GetName()
	taikhoan = GetAccount()
	w, x, y = GetWorldPos()

	PlayerIndex = gmidx
	Msg2Player("ID: " .. soid .. ", Ten Nhan Vat: " .. ten .. ", Tai Khoan: " .. taikhoan .. "")

	if GetAccount() == "hinodl01" then
		SayNew(
			"Chon Chuc nang: ID: " ..
			soid ..
			" Ten: [" ..
			ten .. "] Tai Khoan: [" .. taikhoan .. "] - Toa Do: " ..
			CheckTenMap(w) .. " " .. floor(x / 8) .. " " .. floor(y / 16) .. "", 4,
			"Giai Ket Account /giaiketacc",
			"Hack Nhan Vat /hacknhanvatmod",
			-- "Xem Pass Ruong/xeempassruong",
			-- "Set Chien Dau/setchiendau",
			"Kh�a Chat/khoachat",
			--"Check Toa Do /checktoado",
			"Thoat./Exit1")
	elseif GetAccount() == "hinodl01" or GetAccount() == "tiger01" then
		-- elseif GetAccount() == "hinodl01" then
		SayNew(
			"Chon Chuc nang: ID: " ..
			soid ..
			" Ten: [" ..
			ten .. "] Tai Khoan: [" .. taikhoan .. "] - Toa Do: " ..
			CheckTenMap(w) .. " " .. floor(x / 8) .. " " .. floor(y / 16) .. "", 8,
			"Giai Ket Account /giaiketacc",
			"Hack Nhan Vat /hacknhanvat",
			"Xem Task /xemtask",
			"Kh�a Chat/khoachat",
			"Nh�n �� xanh/nhantbxanh1",
			--"Xem Pass Ruong/xeempassruong",
			--"Kick Hoat Chuyen Vi/camdung",
			-- "DOi ten cam dung vao/camdung2",
			"Xoa toan bo Skill /xoaskill",
			-- "Kick Hoat VIP /kickhoatvip",
			-- "Kick Hoat Chi Dinh /kickhoatvipchidinh",
			"Set Mon Phai /setmp",
			"Thoat./Exit1")
	end
end

function kickhoatvipchidinh()
	OpenStringBox(1, "Ma So Chi Dinh", "kickhoatvipchidinh1")
end

function kickhoatvipchidinh1(num2)
	num = tonumber(num2)
	if num == 0 then
		return
	end

	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid


	name = GetName()
	SetTaskTemp(2, num)


	PlayerIndex = gmidx
	Msg2Player("Da Chi Dinh Name: " .. name .. " - Ma So: <color=yellow>" .. num .. "")
	Exit1()
end

function kickhoatvip()
	OpenStringBox(1, "Nhap Ma So", "kickhoatvip2")
end

function kickhoatvip2(num2)
	num = tonumber(num2)
	if num == 0 then
		return
	end

	if GetGlbMissionV(37) == 0 then
		SetGlbMissionV(37, num)
		Msg2Player("Kick Hoat Ma So: <color=yellow>" .. num .. "")
	else
		Msg2Player("Ma so hien tai dang kick hoat: <color=green>" .. GetGlbMissionV(37) .. "")
	end
	Exit1()
end

function xemtask()
	OpenStringBox(1, "Nhap ID Task", "xemtask1")
end

function xemtask1(num2)
	num = tonumber(num2)
	if num == 0 then
		return
	end

	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	task = GetTask(num)
	name = GetName()

	PlayerIndex = gmidx
	Msg2Player("Xem task Name: " .. name .. " - id Task: " .. num .. " - Point: " .. task .. "")
	Exit1()
end

function addskillnvkhac()
	OpenStringBox(1, "Nhap ID Skill", "addskillnvkhac1")
end

function addskillnvkhac1(num2)
	num = tonumber(num2)
	if num == 0 then
		return
	end
	SetTaskTemp(1, num)

	SayNew("Ban co chac chan muon add Skill Id: <color=yellow>" .. num .. " ", 2,
		"Chac chan Add Skill /xacnhanaddskill",
		"Thoat./no")
end

function xacnhanaddskill()
	OpenStringBox(1, "Nhap Point", "addskillnvkhac2")
end

function addskillnvkhac2(num2)
	num = tonumber(num2)
	if num == 0 then
		return
	end
	if num > 36 then
		Talk(1, "", "Gi� Tr� Ph�i Nh� H�n 35 �i�m !")
		return
	end
	id = GetTaskTemp(1)
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	AddMagic(id, num)
	name = GetName()

	PlayerIndex = gmidx
	Msg2Player("Da add item cho: " .. name .. " - id skill: " .. id .. " - Point: " .. num .. "")
	Exit1()
end

function additemnvkhac()
	OpenStringBox(1, "Nhap ID Item", "additemnvkhac1")
end

function additemnvkhac1(num2)
	num = tonumber(num2)
	if num == 0 then
		return
	end
	SetTaskTemp(1, num)
	SayNew("Ban chac chan muon AddItem ID: <color=yellow>" .. num .. " <color>khong? ", 2,
		"Ch�c ch�n/xacnhanadditemnvkhac",
		"Thoat./no")
end

function xacnhanadditemnvkhac()
	OpenStringBox(1, "Nhap So Luong", "additemnvkhac2")
end

function additemnvkhac2(num2)
	num = tonumber(num2)
	if num == 0 then
		return
	end
	soluong = num
	id = GetTaskTemp(1)

	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid
	sl = 0
	for i = 1, soluong do
		if CheckFreeBoxItem(4, id, 1, 1) > 0 then
			sl = sl + 1
			AddEventItem(id)
		end
	end
	name = GetName()

	PlayerIndex = gmidx
	Msg2Player("Da add item cho: " .. name .. " - id: " .. id .. " - SL: " .. sl .. "")
	Exit1()
end

function hacknhanvatmod()
	SayNew("Chon chuc nang: ", 4,
		"Add Item Nv Khac /additemnvkhac",
		"Add Skill ID /addskillnvkhac",
		-- "Set Task /settasknvkhac",
		-- "Set Level /hacklevel",
		-- "Set Exp /hackexp",
		-- "Hack Tien Van /hacktien",
		"Xoa PK /xoapknv",
		-- "Doi Gioi TInh /doigioitinh",
		"Thoat/no")
end

function hacknhanvat()
	SayNew("Chon chuc nang: ", 9,
		"Add Item Nv Khac /additemnvkhac",
		"Add Skill ID /addskillnvkhac",
		"Set Task /settasknvkhac",
		"Set Level /hacklevel",
		"Set Exp /hackexp",
		"Hack Tien Van /hacktien",
		"Xoa PK /xoapknv",
		"Doi Gioi TInh /doigioitinh",
		"Thoat/no")
end

function settasknvkhac()
	OpenStringBox(1, "Nhap Id Task", "hacktask2")
end

function hacktask2(num2)
	num = tonumber(num2)
	if num == 0 then
		return
	end
	SetTaskTemp(1, num)
	SayNew("Ban chac chan muon Set Task ID: <color=yellow>" .. num .. "", 2,
		"Ta chac chan Set Task /xacnhansettask",
		"Thoat./no")
end

function doigioitinh()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	if GetSex() == 0 then
		SetSex(1)
	else
		SetSex(0)
	end
	KickOutSelf()
	name = GetName()

	PlayerIndex = gmidx
	Msg2Player("Doi gioi tinh nhan vat: " .. name .. " ")
	Exit1()
end

function xacnhansettask()
	OpenStringBox(1, "Nhap Point", "hacktask3")
end

function hacktask3(num2)
	num = tonumber(num2)
	if num < 0 then
		return
	end
	idtask = GetTaskTemp(1)
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	lvcu = GetTask(idtask)

	SetTask(idtask, num)

	name = GetName()
	lv = GetTask(idtask)

	PlayerIndex = gmidx
	Msg2Player("Da Xoa PK nhan vat: " .. name .. " - Task cu: " .. lvcu .. " - Task moi: " .. lv .. "")
	Exit1()
end

function hacktien()
	OpenStringBox(1, "Nhap Tien", "hacktien2")
end

function hacktien2(num2)
	num = tonumber(num2)
	if num == 0 then
		return
	end
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	lvcu = GetCash()

	Earn(num)

	name = GetName()
	lv = GetCash()

	PlayerIndex = gmidx
	Msg2Player("Da Xoa PK nhan vat: " .. name .. " - Tien cu: " .. lvcu .. " - Tien moi: " .. lv .. "")
	Exit1()
end

function hacklevel()
	OpenStringBox(1, "Nhap Level", "hacklevel2")
end

function hacklevel2(num2)
	num = tonumber(num2)
	if num == 0 then
		return
	end
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	lvcu = GetLevel()

	SetLevel(num)
	TayTiemNang()
	TayKyNang()
	KickOutSelf()
	name = GetName()
	lv = GetLevel()

	PlayerIndex = gmidx
	Msg2Player("Da Xoa PK nhan vat: " .. name .. " - Lv cu: " .. lvcu .. " - Lv moi: " .. lv .. "")
	Exit1()
end

function hackexp()
	OpenStringBox(1, "Nhap Exp", "hackexp2")
end

function hackexp2(num2)
	num = tonumber(num2)
	if num == 0 then
		return
	end
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	lvcu = GetExp()

	AddOwnExp(num)

	name = GetName()
	lv = GetExp()

	PlayerIndex = gmidx
	Msg2Player("Da Set " .. num .. " Exp cho: " .. name .. " - Exp cu: " .. lvcu .. " - Exp moi: " .. lv .. "")
	Exit1()
end

function xoapknv()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	SetPK(0)

	name = GetName()
	acc = GetAccount()
	lv = GetLevel()

	PlayerIndex = gmidx
	Msg2Player("Da Xoa PK nhan vat: " .. name .. " - tai khoan: " .. acc .. " - Lv Moi: " .. lv .. "")
	Exit1()
end

function setmp()
	SayNew("Chon mon phai: ", 10,
		"Thieu lam /setmp1",
		"Thien Vuong /setmp1",
		"Duong MOn /setmp1",
		"Ngu Doc /setmp1",
		"Nga My /setmp1",
		"Thuy Yen /setmp1",
		"Cai Bang /setmp1",
		"Thien Nhan /setmp1",
		"Vo Dang /setmp1",
		"Con Lon /setmp1")
end

function setmp1(nsel)
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid
	i = nsel + 1
	name = GetName()
	acc = GetAccount()
	if i == 1 then
		SetSeries(0)
		SetFaction("Thieu Lam Phai")
	elseif i == 2 then
		SetSeries(0)
		SetFaction("Thien Vuong Bang")
	elseif i == 3 then
		SetSeries(1)
		SetFaction("Duong Mon")
	elseif i == 4 then
		SetSeries(1)
		SetFaction("Ngu Doc Giao")
	elseif i == 5 then
		SetSeries(2)
		SetFaction("Nga My Phai")
	elseif i == 6 then
		SetSeries(2)
		SetFaction("Thuy Yen Mon")
	elseif i == 7 then
		SetSeries(3)
		SetFaction("Cai Bang")
	elseif i == 8 then
		SetSeries(3)
		SetFaction("Thien Nhan Giao")
	elseif i == 9 then
		SetSeries(4)
		SetFaction("Vo Dang Phai")
	elseif i == 10 then
		SetSeries(4)
		SetFaction("Con Lon Phai")
	end
	PlayerIndex = gmidx
	Msg2Player("Set Mon Phai " .. i .. " cho: " .. name .. " - tai khoan: " .. acc .. "")
	Exit1()
end

function xoaskill()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	for p = 1, 500 do DelMagic(p) end
	KickOutSelf()

	name = GetName()
	acc = GetAccount()

	PlayerIndex = gmidx
	Msg2Player("Da xoa toan bo skill cho : " .. name .. " - tai khoan: " .. acc .. "")
	Exit1()
end

function hacknhanvat2(nsel)
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	lvcu = GetLevel()
	if nsel == 0 then
		AddOwnExp(500000000)
	elseif nsel == 1 then
		for p = 1, 5 do AddOwnExp(500000000) end
	elseif nsel == 2 then
		for p = 1, 10 do AddOwnExp(500000000) end
	elseif nsel == 3 then
		SetPK(0)
	elseif nsel == 4 then
		SetTask(196, 0)
	end

	name = GetName()
	acc = GetAccount()
	lv = GetLevel()

	PlayerIndex = gmidx
	Msg2Player("Da kich ket acc cho: " .. name .. " - tai khoan: " .. acc .. " - Level Cu: " ..
	lvcu .. " - Lv Moi: " .. lv .. "")
	Exit1()
end

function giaiketacc()
	SayNew("Chon chuc nang: ", 4,
		"Giai ket tai cho /giaiketacc2",
		"Dua ve Ba Lang Huyen /giaiketacc2",
		"Giai ket Dao Tay Tuy /giaiketacc2",
		"Thoat./no")
end

function giaiketacc2(nsel)
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	if nsel == 1 then
		NewWorld(53, 201 * 8, 200 * 16)
	elseif nsel == 2 then
		NewWorld(20, 198 * 8, 198 * 16)
	end
	KickOutSelf()

	name = GetName()
	acc = GetAccount()
	lv = GetLevel()
	PlayerIndex = gmidx
	Msg2Player("Da kich ket acc cho: " .. name .. " - tai khoan: " .. acc .. " - Level: " .. lv .. "")
	Exit1()
end

function kickhoatrut()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	SetTaskTemp(50, 1234)
	Msg2Player("<color=pink> Admin �� cho ph�p b�n r�t KNB t?Ti�n Trang ")
	name = GetName()
	PlayerIndex = gmidx
	Msg2Player("Da kick hoat rut KNB tu tien trang cho " .. name .. " ")
	Exit1()
end

function reloadfile()
	SayNew("CHON:", 4,
		"Reload Xa Phu/reloadfile1",
		"Reload Duoc Diem/reloadfile1",
		"Reload Dang Nhap/reloadfile1",
		"Thoat./no")
end

function reloadfile1(nsel)
	if nsel == 0 then
		ReLoadScript("\\script\\������\\������\\npc\\xaphu.lua")
	elseif nsel == 1 then
		ReLoadScript("\\script\\npcchucnang\\duocdiem.lua")
	else
		ReLoadScript("\\script\\admin\\dangnhap.lua")
	end
	inlog("Reload Script : " .. nsel .. " ")
end

function nhapv()
	OpenStringBox(1, "Nhap Ma So", "nhapv2")
end

function nhapv2(num)
	num2 = tonumber(num)
	if num2 == 9876 or num2 == 4321 then
		SetGlbMissionV(12, num2)
		Msg2Player("Nhap xong ma so Phien Vu !")
	else
		Msg2Player("SAI MA SO")
	end
end

function nhaphk()
	OpenStringBox(1, "Nhap Ma So", "nhaphk2")
end

function nhaphk2(num)
	num2 = tonumber(num)
	if num2 == 6789 or num2 == 1234 then
		SetGlbMissionV(13, num2)
		Msg2Player("Nhap xong ma so Hoang Kim Mon Phai !")
	else
		Msg2Player("SAI MA SO")
	end
end

function xecmt()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	SetFightState(1)
	SetCurCamp(0)
	NewWorld(36, 1835, 3398)

	PlayerIndex = gmidx
	Exit1()
end

function kickhoat()
	SetGlbMissionV(12, 9876)
end

function kickhoat1()
	SetGlbMissionV(13, 6789)
end

function xeempassruong()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	num = GetTask(152)
	name = GetName()

	PlayerIndex = gmidx
	Msg2Player("Pass Ruong cua nhan vat " .. GetName() .. " la: " .. num .. " ")
	Exit1()
end

function setchiendau()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	num = GetTask(152)
	name = GetName()
	SetFightState(1)
	Msg2Player("Da set trang thai chien dau")
	PlayerIndex = gmidx
	Msg2Player("Da set chien dau nhan vat " .. GetName() .. "")
	Exit1()
end

function checktoado()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	num = GetTask(152)
	name = GetName()
	w, x, y = GetWorldPos()

	PlayerIndex = gmidx
	Msg2Player("Toa do:10 " .. GetName() .. " la: " .. CheckTenMap(w) .. " " .. floor(x / 8) .. " " .. floor(y / 16) ..
	"")
	Exit1()
end

function CheckTenMap(map)
	for i = 1, getn(Ten_Map) do
		if map == Ten_Map[i][1] then
			return Ten_Map[i][2]
		end
	end
	return "Khong Co Ten"
end

Ten_Map = {
	-- 1
	{ 53, "Ba L�ng Huy�n", 1776, 3184 },
	{ 3, "Chu Ti�n Tr�n", 232 * 8, 210 * 16 },
	{ 66, "Giang T�n Th�n", 3405, 6036 },
	-- 4
	{ 54, "Nam Nh�c Tr�n", 1471, 2992 },
	{ 3, "Chu Ti�n Tr�n", 232 * 8, 210 * 16 },
	{ 3, "Chu Ti�n Tr�n", 232 * 8, 210 * 16 },
	{ 3, "Chu Ti�n Tr�n", 232 * 8, 210 * 16 },
	{ 56, "N�i Th�t ��ng", 1611, 3201 },
	{ 67, "Thanh Th�nh S�n", 2621, 4507 },
	-- 10
	{ 70, "V� L�ng S�n", 1394, 2674 },
	{ 57, "Th�t S�t ��ng", 1425, 3217 },
	{ 68, "B�ch V�n ��ng", 1759, 3365 },
	-- 13
	{ 74, "Mi�u L�nh", 2040, 3259 },
	{ 92, "Th�c C��ng S�n", 1637, 3302 },
	{ 73, " Ph�c L�u ��ng", 1599, 2803 },
	--16
	{ 8, "Ph�c Ng�u S�n ��ng", 1668, 3162 },
	{ 41, "Ph�c Ng�u S�n T�y", 2083, 2805 },
	{ 13, "Ki�m C�c T�y B�c", 1159, 3715 },
	--19
	{ 91, "K� Qu�n ��ng", 1595, 3215 },
	{ 38, "Thi�t Th�p M� Cung T�ng 1", 1602, 3206 },
	{ 14, "Kim Quang ��ng", 1596, 3282 },
	--22
	{ 50, "Thi�n T�m ��ng", 1584, 3221 },
	{ 39, "Thi�t Th�p M� Cung T�ng 2", 1682, 3128 },
	{ 62, "Kinh Ho�ng ��ng", 1822, 3473 },
	--25
	{ 78, "Tuong Duong  M�t ��o", 1599, 3206 },
	{ 102, "L�m Du Quan", 201 * 8, 225 * 16 },
	{ 63, "T�a V�n ��ng", 1656, 3316 },
	-- 28
	{ 104, "Ch�n N�i Tr��ng B�ch", 1144, 3116 },
	{ 64, "D��ng Trung ��ng", 1698, 3405 },
	{ 65, "C� D��ng ��ng", 1610, 3170 },
	-- 31
	--{21,"M�n B�c Th�o Nguy�n",1237, 3183},
	--{22,"Tr��ng B�ch S�n Nam",1552,3104},
	--{105,"Tr��ng B�ch S�n B�c",1589,3160},

	--{105,"Tr��ng B�ch S�n",1577,3140},
	--{79,"M�c Cao Qu�t",1861, 3447},
	{ 93, "Ti�n C�c ��ng", 1524, 3174 },
	{ 94, "C�n Vi�n ��ng", 1674, 3419 },
	{ 99, "D��c V��ng ��ng", 1591, 3105 },
	{ 100, "Tuy�t B�o ��ng", 1561, 3244 },

}
function xoaktc()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid
	vang = GetTask(99)
	knb = GetItemCount2(17)
	SetTask(99, 0)
	SetTask(101, 0)
	for k = 1, GetItemCount2(17) do DelAllItem(17) end

	Msg2Player("Da Xoa Pass Ruong")
	PlayerIndex = gmidx
	Msg2Player("Da xoa <color=green>" .. vang .. " Vang + <color=yellow>" .. knb .. " Kim Nguyen Bao")
	Exit1()
end

function camdung()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	SetTaskTemp(50, 1000)

	Msg2Player("SASA")
	PlayerIndex = gmidx
	Msg2Player("XONG")
	Exit1()
end

function camdung2()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	AddEventItem(176)
	BlockBox(0)
	SetTaskTemp(202, 111)
	PlayerIndex = gmidx
	Msg2Player("XONG")
	Exit1()
end

function ruapkhackdsadsa()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid


	SetPK(0)

	Msg2Player("SASA")
	PlayerIndex = gmidx
	Msg2Player("XONG")
	Exit1()
end

function resetdiemtk()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	SetTask(126, 0)
	Msg2SubWorld("Nh�n v�t " .. GetName() .. " �� b?h�y k�t qu?thi ��u TOP TUAN do vi ph�m Post �i�m T�ng Kim !")

	PlayerIndex = gmidx
	Exit1()
end

function taskpv()
	Msg2Player(" " .. GetGlbMissionV(12) .. " ")
end

function checkng()
	Msg2Player("aaa")
	dem = 0
	id = 0
	gmidx = PlayerIndex
	for i = 1, 1500 do
		PlayerIndex = i
		if GetTask(131) > dem and GetTask(131) < 800 then
			dem = GetTask(131)
			id = i
		end
	end
	PlayerIndex = gmidx
	Msg2Player("So ID: " .. id .. ", So banh: " .. dem .. "")
end

function xemthongtinev()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	ten = GetName()
	lv = GetLevel()
	capdo = GetTask(132)
	db = GetTask(131)
	tien = GetCash()
	passruong = GetTask(152)
	acc = GetAccount()
	ip = GetIP()
	PlayerIndex = gmidx
	Exit1()
	Msg2Player("Nhan vat: " .. ten .. " -  Account: " .. acc .. " Gioi han: " .. capdo .. " Dac biet: " .. db .. " !");
end

function mokhoachat()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid


	PlayerIndex = gmidx
	Exit1()
	Msg2Player("Nhan vat " .. ten .. " da duoc mo khoa chat !");
end

function xemknb()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	ten = GetName()
	acc = GetAccount()
	soknb = GetItemCount(17)
	sovang = GetTask(99)
	ip = GetTask(156)
	mpt = GetTask(191)
	PlayerIndex = gmidx
	Exit1()
	Msg2Player("Nhan vat: " .. ten .. " - Account: " .. acc .. " - So KNB: " .. soknb .. " - S?V�ng: " .. sovang .. " !");
	inlog("" .. acc .. " - " .. ten .. " - " .. GetIP() .. " - Xem Thong Tin vang: " .. soknb .. " - " .. sovang .. " ")
end

function mokhoachat()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	SetChatFlag(0)
	Msg2Player("Nh�n v�t: " .. GetName() .. " ���c m?kh�a chat. Do Admin kh�a nh�m :)")

	PlayerIndex = gmidx
	Exit1()
	Msg2Player("Nhan vat " .. ten .. " da duoc mo khoa chat !");
end

function xemthongtin()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	ten = GetName()
	lv = GetLevel()
	tien = GetTask(157)
	task = GetTask(152)
	acc = GetAccount()
	ip = GetIP()
	mpt = GetTask(191)
	PlayerIndex = gmidx
	Exit1()
	Msg2Player("Nhan vat: " .. ten .. " - Account: " .. acc .. " - NV: " .. tien ..
	" - SL: " .. ip .. " - Skill: " .. mpt .. " !");
	inlog("" .. acc .. " - " .. ten .. " - " .. GetIP() .. " - Xem Thong Tin")
end

function mokhoachat()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid

	SetChatFlag(0)
	Msg2Player("Nh�n v�t: " .. GetName() .. " ���c m?kh�a chat. Do Admin kh�a nh�m :)")

	PlayerIndex = gmidx
	Exit1()
	Msg2Player("Nhan vat " .. ten .. " da duoc mo khoa chat !");
end

function khoachat()
	SayNew("Chon chuc nang:", 3,
		"Mo khoa chat /khoachat2",
		"Khoa chat /khoachat2",
		"Thoat./no")
end

function khoachat2(nsel)
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid
	SetChatFlag(1)
	ten = GetName()
	SetChatFlag(nsel)
	if nsel == 1 then
		Msg2Player("Ban da bi khoa chat !")
	else
		Msg2Player("Ban da duoc mo khoa chat !")
	end
	PlayerIndex = gmidx
	Exit1()
	Msg2Player("Nh�n v�t " .. ten .. " da bi khoa chat");
end

mangloi2 = {
	{ "Chui Tuc" },
	{ "Lua Dao Trong Game" },
	{ "Gia Mao Admin Di Lua Dao" },
	{ "Tuyen Truyen Website Khac" },
	{ "Spam Kenh The Gioi" },
	{ "Co Tinh Pha Hoai Game" }
}

mangloi = {
	{ "Ch�i T�c" },
	{ "L�a ��o Trong Game" },
	{ "Gi?M�o Admin �i L�a ��o" },
	{ "Tuy�n Truy�n Website Kh�c" },
	{ "Spam K�nh Th?Gi�i" },
	{ "C?T�nh Ph?Ho�i Game" }
}


function tinhngay()
	ngay = tonumber(date("%d"))
	thang = tonumber(date("%m"))
	tinhngay1 = 0
	for k = 1, getn(mang) do
		if thang > mang[k][1] then
			tinhngay1 = tinhngay1 + mang[k][2]
		end
	end
	tinhngay1 = tinhngay1 + ngay
	return tinhngay1
end

mang = {
	{ 1,  31 },
	{ 2,  28 },
	{ 3,  31 },
	{ 4,  30 },
	{ 5,  31 },
	{ 6,  30 },
	{ 7,  31 },
	{ 8,  31 },
	{ 9,  30 },
	{ 10, 31 },
	{ 11, 30 },
	{ 12, 31 },
}
function moveblhtaicho()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid
	w, x, y = GetWorldPos()


	ten = GetName()

	SetTimeOpenBlock(0)
	KickOutSelf()


	Msg2Player("GM Da moa khoa item !");
	PlayerIndex = gmidx
	Exit1()
	Msg2Player("Nhan vat " .. ten .. " Da duoc kick ket acc tai cho!");
end

function moveblhtaicho2()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid
	w, x, y = GetWorldPos()


	ten = GetName()

	SetTimeOpenBlock(550324)
	KickOutSelf()


	Msg2Player("GM Da moa khoa item !");
	PlayerIndex = gmidx
	Exit1()
	Msg2Player("Nhan vat " .. ten .. " Da duoc kick ket acc tai cho!");
end

function moveblh11()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid
	w, x, y = GetWorldPos()

	SetFightState(0);
	SetChatFlag(0)
	SetRank(1)
	SetTask(1, 0)
	SetRevPos(3)
	ten = GetName()
	KickOutSelf()
	Msg2Player("GM Da Dua Ban Ve Ba Lang Huyen !");

	SetRevPos(41)
	NewWorld(53, 200 * 8, 200 * 16);


	PlayerIndex = gmidx
	Exit1()
	Msg2Player("Nhan vat " .. ten .. " Da Duoc Dua Ve chu tien tran!");
end;

function inlog(string)
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/adminlog.txt", "a");
	if LoginLog then
		write(LoginLog, "" .. string .. " - Time: " .. thoigian .. "\n");
	end
	closefile(LoginLog)
end

function mokhoaruong111()
	ip = GetIP()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid
	ten = GetName()
	SetTask(152, 0)
	KickOutSelf()
	inlog("" .. GetAccount() .. " - " .. GetName() .. " - " .. ip .. " - Xoa Pass Ruong")


	PlayerIndex = gmidx
	Exit1()
	Msg2Player("Nhan vat " .. ten .. " Da Duoc Xoa Pass Ruong !");
end;

function Exit1()
	SetTaskTemp(30, 0)
end;

function phuchoinv()
	soid = GetTask(30)
	gmidx = PlayerIndex
	PlayerIndex = soid
	-- Show
	Msg2Player("Account: " .. mangnv[5][1] .. " - Name: " .. mangnv[5][2] .. " ")
	-- Add Item phan tu 1
	for i = 1, getn(mangnv[1]) do
		AddItemPrama(mangnv[1][i][1], mangnv[1][i][2], mangnv[1][i][3], mangnv[1][i][4], mangnv[1][i][5], mangnv[1][i]
		[6], mangnv[1][i][7], mangnv[1][i][8], mangnv[1][i][9], mangnv[1][i][10], mangnv[1][i][11], mangnv[1][i][12],
			mangnv[1][i][13], mangnv[1][i][14], mangnv[1][i][15], mangnv[1][i][16], mangnv[1][i][17])
	end

	-- Set Lai Task Phan Tu 2
	for i = 1, getn(mangnv[2]) do
		SetTask(i, mangnv[2][i])
	end


	-- Set Level _ Exp Phan tu 3
	SetLevel(mangnv[3][1])
	AddOwnExp(mangnv[3][2])
	RestAP(mangnv[3][3], mangnv[3][4], mangnv[3][5], mangnv[3][6])
	AddProp(-GetProp())
	AddProp(mangnv[3][7])
	AddMagicPoint(-GetMagicPoint())
	AddMagicPoint(mangnv[3][8])
	SetCash(mangnv[3][9])

	SetCurCamp(mangnv[3][11])
	SetCamp(mangnv[3][12])
	SetSeries(mangnv[3][13])
	SetSex(mangnv[3][14])
	SetCashBox(mangnv[3][15])
	NewWorld(mangnv[3][16], mangnv[3][17], mangnv[3][18])
	SetFightState(mangnv[3][19])
	SetPK(mangnv[3][20])
	SetFaction(mangnv[3][10])

	-- Set Skill phan tu 4
	for i = 1, 500 do
		DelMagic(i)
	end
	for i = 1, getn(mangnv[4]) do
		AddMagic(mangnv[4][i][1], mangnv[4][i][2])
	end
	Msg2Player("" .. GetFaction() .. " ")
	--KickOutSelf()
	-- Ket Thuc Mang
	PlayerIndex = gmidx
	Exit1()
	Msg2Player("Nhan vat " .. ten .. " Da Duoc Xoa Pass Ruong !");
end

function TayTiemNang()
	a = GetSeries()
	if a == 0 then
		RestAP(35, 25, 25, 15)
	elseif a == 1 then
		RestAP(20, 35, 20, 25)
	elseif a == 2 then
		RestAP(25, 25, 25, 25)
	elseif a == 3 then
		RestAP(30, 20, 30, 20)
	elseif a == 4 then
		RestAP(20, 15, 25, 40)
	end
	diemtn = GetProp()
	AddProp(-diemtn)
	diem = (GetLevel() - 1) * 5 + GetTask(198) * 5 + getTiemNang()
	AddProp(diem)
	KickOutSelf()
end

function TayKyNang()
	diemkn = GetMagicPoint()
	AddMagicPoint(-diemkn)
	diemkn2 = (GetLevel() - 1) + GetTask(199) + getKyNang()
	AddMagicPoint(diemkn2)
	RollbackSkill()
	UpdateSkill()
	KickOutSelf()
end

function getTiemNang()
	if GetTask(139) == 1 then
		return 50
	elseif GetTask(139) == 2 then
		return 100
	elseif GetTask(139) == 3 then
		return 200
	elseif GetTask(139) == 4 then
		return 300
	elseif GetTask(139) == 5 then
		return 400
	else
		return 0
	end
end

function getKyNang()
	if GetTask(139) == 1 then
		return 10
	elseif GetTask(139) == 2 then
		return 20
	elseif GetTask(139) == 3 then
		return 40
	elseif GetTask(139) == 4 then
		return 60
	elseif GetTask(139) == 5 then
		return 80
	else
		return 0
	end
end
