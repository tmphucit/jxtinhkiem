-- CheckMagicItem(idx,85,100,200)  check id 85 co diem tu 100 - 200 chua. Neu dung tra ve 1, sai ve 0
-- GetLevelItem(idx) -- Level trang bi
-- GetSeriItem(idx) -- Ngu hanh trang bi theo so
--  DelEquipIdx (idx)  Del trang bi trong ruong
-- GetParticularItem(idx)
--  OpenSlectBoxCheck(1,2,5,"ok"); Nhan thuong
-- So nhiem vu trong ngay: 82
-- So nhiem vu lien tiep: 83
-- Giai doan nhiem vu: 84
-- Loai Nhiem vu: 85
-- �i�m nhi�m v� yeu cau: 86
-- �i�m nhiem vu dat duoc: 87
-- Ban do yeu cau nv do chi: 88
-- Ban do SHXT: 89
-- S� l�n huy nhiem vu: 90
-- Phan thuong 1 2 3 : 91 - 93
-- Tri Kinh Nghiem Loai: Task 94, 1 la thieu, 2 la du
Include("\\script\\datau\\diadochi\\head_datau.lua")





function main()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
time = gio * 60 + phut
if GetTask(136) == ngay then
	if (GetTask(82) >= 20) then
	Talk(1,"","H�m nay ng��i �� l�m �� s� nhi�m v� ta y�u c�u, ng�y mai h�y quay l�i nh� !")
	return
	end
else
	SetTask(136,ngay)
	SetTask(137,0)
	SetTask(82,0)
	SetTask(9,0)
	SetTask(2,0)
	SetTask(3,0)
	SetTask(908, 0) -- Reset Task Su Kien
	SetTask(945, 0) -- Reset Task Su Kien
end

if GetTask(3) > 0 then
if time < GetTask(3) then
	Msg2Player(" "..time.." "..GetTask(3).." ")
	Talk(1,"","<color=green>D� T�u: <color>: Ng��i �� h�y nhi�m v� li�n t�c <color=red>3<color> l�n, h� th�ng c�m l�m nhi�m v� 1 gi�, h�y quay l�i sau nh� !")
	return
else
	SetTask(3,0)
	SetTask(2,0)	
end
end



if GetTask(89) < 0 then
SetTask(89,GetTask(89)+1000)
end

if GetTask(84) == 0 then -- Chua nhan nv
soluong = 20 - GetTask(82)
SayNew("<color=green>D� T�u: <color>: V� C�ng t� �� ho�n th�nh <color=yellow>"..GetTask(82).."<color> nhi�m v�, nhi�m v� n�y ng�y h�m nay c� th� th�c hi�n l�i <color=yellow>"..soluong.."<color> l�n n�a, ng��i c� mu�n l�m n�a kh�ng  ",3,
"Ta mu�n nh�n nhi�m v� ti�p theo /nhannv2", 
"Ph�n th��ng m�c /nhanptmoc",
"�� ta ngh� ng�i m�t l�t ��! Ta b�n r�i /no")
elseif GetTask(84) == 1 or GetTask(84) == 2 or GetTask(84) == 3 or GetTask(84) == 4 then -- Da nhan nv chua hoan thanh
	if GetTask(85) == 1 then -- Tim do chi
		SayNew("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20, Ng��i h�y ��n <color=yellow>"..DoChi_Map[GetTask(88)][2].." t�m gi�p ta "..GetTask(86).." t�m Th�n B� �� Ch� ",3,
		"Ta �� ho�n th�nh nhi�m v� l�n n�y /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy",
		"Ta �ang b�n, h�n g�p ng��i sau /no")
	elseif GetTask(85) == 2 then -- tim mat chi
		SayNew("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20, Ng��i h�y ��n <color=yellow>"..DoChi_Map[GetTask(88)][2].." t�m gi�p ta "..GetTask(86).." t�m M�t Ch� ",3,
		"Ta �� ho�n th�nh nhi�m v� l�n n�y /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy",
		"Ta �ang b�n, h�n g�p ng��i sau /no")
	elseif GetTask(85) == 3 then -- Mua Item Shop
		SayNew("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20\nNg��i h�y ��n <color=yellow>"..Mua_Shop[GetTask(88)][1].." - "..Mua_Shop[GetTask(88)][2].." gi�p ta mua "..Mua_Shop[GetTask(88)][3].." [C�p "..Mua_Shop[GetTask(88)][6].."] ",3,
		"��i xi, ta s� �i mua gi�p ng��i /no",
		"Ta ��n giao v�t ph�m nhi�m v� /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy")
	elseif GetTask(85) == 4 then -- Tim Trang Suc : Ten + He
		SayNew("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20\nH�y t�m cho ta 1 <color=yellow>"..TrangSuc_Ten[GetTask(88)][1].."",3,
		"��i xi, ta s� �i mua gi�p ng��i /no",
		"Ta ��n giao v�t ph�m nhi�m v� /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy")
	elseif GetTask(85) == 5 then -- Tim Option
		SayNew("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20\nH�y t�m cho ta 1 trang b� c� <color=yellow>"..Option[GetTask(88)][1].." t� "..Option[GetTask(88)][3].." ��n "..Option[GetTask(88)][4].." ",3,
		"��i xi, ta s� �i mua gi�p ng��i /no",
		"Ta ��n giao v�t ph�m nhi�m v� /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy")
	elseif GetTask(85) == 6 then -- Tim Trang suc _ Option
		SayNew("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20\nH�y t�m cho ta 1 trang b� <color=yellow>"..Item_Option[GetTask(88)][1].." c� "..Item_Option2[GetTask(86)][1].."",3,
		"��i xi, ta s� �i mua gi�p ng��i /no",
		"Ta ��n giao v�t ph�m nhi�m v� /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy")
	elseif GetTask(85) == 7 then -- Tr� danh v�ng, ph�c duy�n, t�ng kim
		SayNew("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20, �� li�n ti�p ho�n th�nh <color=red>"..GetTask(83).."<color> nhi�m v�.\nNg��i h�y �i n�ng <color=yellow>"..Tri_Diem[GetTask(88)][1].." th�m "..Tri_Diem[GetTask(88)][3].." �i�m ",3,
		"Ta �� ho�n th�nh nhi�m v� l�n n�y /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy",
		"Ta �ang b�n, h�n g�p ng��i sau /no")
	elseif GetTask(85) == 8 then -- Tr� PK
		SayNew("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20, �� li�n ti�p ho�n th�nh <color=red>"..GetTask(83).."<color> nhi�m v�.\nNg��i h�y �i n�ng <color=yellow>tr� PK l�n "..GetTask(88).."  �i�m ",3,
		"Ta �� ho�n th�nh nhi�m v� l�n n�y /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy",
		"Ta �ang b�n, h�n g�p ng��i sau /no")
	elseif GetTask(85) == 9 then -- Tr� Kinh Nghi�m
		SayNew("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20, �� li�n ti�p ho�n th�nh <color=red>"..GetTask(83).."<color> nhi�m v�.\nNg��i h�y �i n�ng <color=yellow>Tr� Kinh Nghi�m l�n "..GetTask(88).."  �i�m ",3,
		"Ta �� ho�n th�nh nhi�m v� l�n n�y /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy",
		"Ta �ang b�n, h�n g�p ng��i sau /no")
	end
end
end

function sudungtinvat()

end

function nhanptmoc()
if GetTask(83) >= MANG_MOC[GetTask(106)+1][1] then
	SayNew("<color=green>D� T�u: <color>: B�n �� ho�n th�nh <color=red>"..GetTask(83).."<color> nhi�m v� D� T�u. Vui l�ng nh�n ph�n th��ng ��t m�c <color=yellow>"..MANG_MOC[GetTask(106)+1][1].."<color> c�a m�nh ",2,
	"Ta ��n �� nh�n ph�n th��ng /nhanphanthuong",
	"Ta mu�n xem danh s�ch c�c m�c ph�n th��ng/xemdsmoc")
else
	SayNew("<color=green>D� T�u: <color>: B�n �� ho�n th�nh <color=red>"..GetTask(83).."<color> nhi�m v� D� T�u. Ph�n th��ng nh�n ���c khi ��t m�c <color=yellow>"..MANG_MOC[GetTask(106)+1][1].."<color> nhi�m v� ho�n th�nh li�n ti�p ",2,
	--"Nh�n ph�n th��ng ho�n th�nh 20 nhi�m v� m�i ng�y/nhanphanthuongngay",
	"Ta s� c� g�ng th�m /no",
	"Ta mu�n xem danh s�ch c�c m�c ph�n th��ng/xemdsmoc")
	
end
end

function nhanptnvmoingay()
nl = GetTask(111)
if GetTask(111) >= 100 then
	Talk(1,"","B�n �� nh�n ph�n th��ng ng�y h�m nay r�i !")
elseif GetTask(111) >= 20 and GetTask(111) < 100 then
	SetTask(111,100)
	

	if GetLevel() >= 80 then
	sx = RandomNew(1,2)
	if sx == 1 then
		AddEventItem(117)
		Msg2Player("B�n nh�n ���c 1 Ti�n Th�o L� 1 gi� ")
	else
		AddEventItem(118)
		Msg2Player("B�n nh�n ���c 1 N� Nhi H�ng 1 gi� ")
	end
	else
		Earn(10000)
		Msg2Player("B�n nh�n ���c 1 v�n l��ng !")
	end
	Talk(0,"")
else
	Talk(1,"","B�n ho�n th�nh "..GetTask(111).." / 20 nhi�m v� ng�y h�m nay, ch�a ��t y�u c�u !")
end
end

function nhanphanthuong()
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","�� tr�ng h�nh trang 2 x 3 � �� nh�n ph�n th��ng , n�u kh�ng s� b� m�t !")
return
end

sl = GetTask(106)
if GetTask(83) >= MANG_MOC[sl+1][1] then
	SetTask(106,GetTask(106)+1)
	if GetTask(106) == sl+1 then
		phanthuongmoc(GetTask(106))
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n ch�a ��t m�c ti�p theo: "..MANG_MOC[sl+1][1].." nhi�m v�")
end
end

MANG_MOC = {
{100,1},
{200,2},
{300,3},
{400,4},
{500,5},
{700,6},
{1000,7},
{1500,8},
{2000,9},
{3000,10},
{4000,11},
{6000,12},
{8000,13},
}

function phanthuongmoc(vt)
if  MANG_MOC[vt][2] == 1 then
				idxitem = AddEventItem(117)
				Msg2SubWorld(""..GetName().." ��t m�c "..MANG_MOC[vt][1].." nhi�m v� d� t�u li�n ti�p nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif  MANG_MOC[vt][2] == 2 then
				idxitem = AddEventItem(119)
				Msg2SubWorld(""..GetName().." ��t m�c "..MANG_MOC[vt][1].." nhi�m v� d� t�u li�n ti�p nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif  MANG_MOC[vt][2] == 3 then
				idxitem = AddEventItem(120)
				Msg2SubWorld(""..GetName().." ��t m�c "..MANG_MOC[vt][1].." nhi�m v� d� t�u li�n ti�p nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif  MANG_MOC[vt][2] == 4 then
				idxitem = AddEventItem(120)
				idxitem2 = AddEventItem(116)
				Msg2SubWorld(""..GetName().." ��t m�c "..MANG_MOC[vt][1].." nhi�m v� d� t�u li�n ti�p nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem)..", "..GetNameItemBox(idxitem2).."")
elseif  MANG_MOC[vt][2] == 5 then
				idxitem = AddEventItem(1)
				Msg2SubWorld(""..GetName().." ��t m�c "..MANG_MOC[vt][1].." nhi�m v� d� t�u li�n ti�p nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif  MANG_MOC[vt][2] == 6 then
				idxitem = AddEventItem(0)
				Msg2SubWorld(""..GetName().." ��t m�c "..MANG_MOC[vt][1].." nhi�m v� d� t�u li�n ti�p nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")				
elseif  MANG_MOC[vt][2] == 7 then
				idxitem = AddEventItem(random(698,699))
				Msg2SubWorld(""..GetName().." ��t m�c "..MANG_MOC[vt][1].." nhi�m v� d� t�u li�n ti�p nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")				
elseif  MANG_MOC[vt][2] == 8 then
				idxitem = AddEventItem(random(698,699))
				Msg2SubWorld(""..GetName().." ��t m�c "..MANG_MOC[vt][1].." nhi�m v� d� t�u li�n ti�p nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")		
elseif  MANG_MOC[vt][2] == 9 then
				idxitem = AddEventItem(694)
				Msg2SubWorld(""..GetName().." ��t m�c "..MANG_MOC[vt][1].." nhi�m v� d� t�u li�n ti�p nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")		
elseif  MANG_MOC[vt][2] == 10 then
				idxitem = AddEventItem(692)
				Msg2SubWorld(""..GetName().." ��t m�c "..MANG_MOC[vt][1].." nhi�m v� d� t�u li�n ti�p nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")		
elseif  MANG_MOC[vt][2] == 11 then
				idxitem = AddEventItem(691)
				Msg2SubWorld(""..GetName().." ��t m�c "..MANG_MOC[vt][1].." nhi�m v� d� t�u li�n ti�p nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")			
elseif  MANG_MOC[vt][2] == 12 then
				idxitem = AddItem(0,10,8,1,0,0,0)
				Msg2SubWorld(""..GetName().." ��t m�c "..MANG_MOC[vt][1].." nhi�m v� d� t�u li�n ti�p nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")		
elseif  MANG_MOC[vt][2] == 13 then
			
					
end
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/LogNhanPhanThuongMoc.txt", "a");
if LoginLog then
write(LoginLog,"[1] "..GetAccount().." - "..GetName().." - "..MANG_MOC[vt][1].."  - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function xemdsmoc()
SayNew("<color=green>D� T�u: <color>: Ch�n m�c nh�n ph�n th��ng: ",9,
"��t m�c 100 nhi�m v� /moc1",
"��t m�c 200 nhi�m v� /moc1",
"��t m�c 300 nhi�m v� /moc1",
"��t m�c 400 nhi�m v� /moc1",
"��t m�c 500 nhi�m v� /moc1",
"��t m�c 700 nhi�m v� /moc1",
"��t m�c 1000 nhi�m v� /moc1",
"Ti�p theo /xemdsmoc1",
"Tho�t./no")
end
function xemdsmoc1()
SayNew("<color=green>D� T�u: <color>: Ch�n m�c nh�n ph�n th��ng: ",8,
"��t m�c 1500 nhi�m v� /moc2",
"��t m�c 2000 nhi�m v� /moc2",
"��t m�c 3000 nhi�m v� /moc2",
"��t m�c 4000 nhi�m v� /moc2",
"��t m�c 6000 nhi�m v� /moc2",
"��t m�c 8000 nhi�m v� /moc2",
"Quay l�i /xemdsmoc",
"Tho�t./no")
end

function moc1(nsel)
i = nsel+1
if i == 1 then
	Talk(1,"","��t m�c 100 nhi�m v� nh�n ���c: <color=yellow>1 Ti�n Th�o L� 1 Gi� ")
elseif i == 2 then
	Talk(1,"","��t m�c 200 nhi�m v� nh�n ���c: <color=yellow>1 Ti�n Th�o L� 3 Gi� ")
elseif i == 3 then
	Talk(1,"","��t m�c 300 nhi�m v� nh�n ���c: <color=yellow>1 Ti�n Th�o L� 6 Gi� ")
elseif i == 4 then
	Talk(1,"","��t m�c 400 nhi�m v� nh�n ���c: <color=yellow>1 Ti�n Th�o L� 6 Gi� + Nh� Nhi H�ng 6 Gi� ")
elseif i == 5 then
	Talk(1,"","��t m�c 500 nhi�m v� nh�n ���c: <color=yellow>1 Cu�n T�y T�y Kinh")
elseif i == 6 then
	Talk(1,"","��t m�c 700 nhi�m v� nh�n ���c: <color=yellow>1 Cu�n V� L�m M�t T�ch")
elseif i == 7 then
	Talk(1,"","��t m�c 1000 nhi�m v� nh�n ���c: <color=yellow>1 R��ng Hi�p C�t / Nhu T�nh")
end
end
function moc2(nsel)
i = nsel+1
if i == 1 then
	Talk(1,"","��t m�c 1500 nhi�m v� nh�n ���c: <color=yellow>1 R��ng Hi�p C�t / Nhu T�nh")
elseif i == 2 then
	Talk(1,"","��t m�c 2000 nhi�m v� nh�n ���c: <color=yellow>1 R��ng Thi�n Ho�ng")
elseif i == 3 then
	Talk(1,"","��t m�c 3000 nhi�m v� nh�n ���c: <color=yellow>1 R��ng ��nh Qu�c")
elseif i == 4 then
	Talk(1,"","��t m�c 4000 nhi�m v� nh�n ���c: <color=yellow>1 R��ng An Bang")
elseif i == 5 then
	Talk(1,"","��t m�c 6000 nhi�m v� nh�n ���c: <color=yellow>1 Phi V�n Th�n M� ")
elseif i == 6 then
	Talk(1,"","��t m�c 700 nhi�m v� nh�n ���c: <color=yellow>1 R��ng Ho�ng Kim M�n Ph�i")
end
end

function hoanthanh()
if GetTask(945) < 10 then
	if GetItemCount(656) > 0 and GetTask(82) + 1 ~= GetTaskTemp(1) then
	DelItem(656)
	SetTask(84,2)
	SetTaskTemp(1, GetTask(82) + 1)
	SetTask(83,GetTask(83)+1)
	SetTask(945, GetTask(945) + 1)
	Msg2Player("B�n �� s� d�ng 1 T�n V�t - Sa �� D� T�u �� ho�n th�nh nhi�m v� !")
	Msg2Player("Gi�i h�n s� d�ng trong ng�y: <color=green>"..GetTask(945).." / 10.")
	end
end

if GetTask(84) == 1 then -- Dang lam nhiem vu
	if GetTask(85) == 1 or GetTask(85) == 2 then
		if GetTask(87) >= GetTask(86) then
			nl = GetTask(84)
			SetTask(84,GetTask(84)+1)
			if (GetTask(84) == nl+1) then
				nl2 = GetTask(83)
				SetTask(83,GetTask(83)+1)
				if GetTask(83) == nl2+1 then
					hoanthanh()
					Talk(0,"")
				else
					Talk(1,"","Hack ha em")
				end
			else
				Talk(1,"","Hack ha em")
			end
		else
			SayNew("<color=green>D� T�u: <color>: Ng��i ch� t�m ���c "..GetTask(87).." / "..GetTask(86).." t�m m� mu�n ho�n th�nh nhi�m v� �, h�y �i t�m nhanh l�n !",1,
			"V�ng ta s� �i ngay /no")
		end
	elseif GetTask(85) == 3 or GetTask(85) == 4 or GetTask(85) == 5  or GetTask(85) == 6 then
		giaonhiemvu()
	elseif GetTask(85) == 7 then
		SetTask(87,GetTask(Tri_Diem[GetTask(88)][2]))
		if GetTask(87) >= GetTask(86) then
			nl = GetTask(84)
			SetTask(84,GetTask(84)+1)
			if (GetTask(84) == nl+1) then
				nl2 = GetTask(83)
				SetTask(83,GetTask(83)+1)
				if GetTask(83) == nl2+1 then
					hoanthanh()
					Talk(0,"")
				else
					Talk(1,"","Hack ha em")
				end
			else
				Talk(1,"","Hack ha em")
			end
		else
			sl = Tri_Diem[GetTask(88)][3] - (GetTask(86)-GetTask(87))
			SayNew("<color=green>D� T�u: <color>: Ng��i ch� n�ng <color=yellow>"..Tri_Diem[GetTask(88)][1].."<color> ���c <color=red>"..sl.." / "..Tri_Diem[GetTask(88)][3].."<color> �i�m, c� g�ng l�n !",1,
			"V�ng ta s� �i ngay /no")
		end
	elseif GetTask(85) == 8 then
		SetTask(87,GetPK())
		if GetTask(87) >= GetTask(86) then
			nl = GetTask(84)
			SetTask(84,GetTask(84)+1)
			if (GetTask(84) == nl+1) then
				nl2 = GetTask(83)
				SetTask(83,GetTask(83)+1)
				if GetTask(83) == nl2+1 then
					hoanthanh()
					Talk(0,"")
				else
					Talk(1,"","Hack ha em")
				end
			else
				Talk(1,"","Hack ha em")
			end
		else
			sl = GetTask(88) - (GetTask(86)-GetTask(87))
			SayNew("<color=green>D� T�u: <color>: Ng��i ch� n�ng <color=yellow>Tr� PK<color> ���c <color=red>"..sl.." / "..GetTask(88).."<color> �i�m, c� g�ng l�n !",1,
			"V�ng ta s� �i ngay /no")
		end
	elseif GetTask(85) == 9 then
		if GetTask(94) == 1 then
			SetTask(87,GetExp())
			if GetTask(87) >= GetTask(86) then
				nl = GetTask(84)
				SetTask(84,GetTask(84)+1)
				if (GetTask(84) == nl+1) then
					nl2 = GetTask(83)
					SetTask(83,GetTask(83)+1)
					if GetTask(83) == nl2+1 then
						hoanthanh()
						Talk(0,"")
					else
						Talk(1,"","Hack ha em")
					end
				else
					Talk(1,"","Hack ha em")
				end
			else
				sl = GetTask(88) - (GetTask(86)-GetTask(87))
				SayNew("<color=green>D� T�u: <color>: Ng��i ch� n�ng <color=yellow>Tr� Kinh Nghi�m<color> ���c <color=red>"..sl.." / "..GetTask(88).."<color> �i�m, c� g�ng l�n !",1,
				"V�ng ta s� �i ngay /no")
			end
		elseif GetTask(94) == 2 then
			if GetLevel() > GetTask(87) then
				nl = GetTask(84)
				SetTask(84,GetTask(84)+1)
				if (GetTask(84) == nl+1) then
					nl2 = GetTask(83)
					SetTask(83,GetTask(83)+1)
					if GetTask(83) == nl2+1 then
						hoanthanh()
						Talk(0,"")
					else
						Talk(1,"","Hack ha em")
					end
				else
					Talk(1,"","Hack ha em")
				end
			elseif GetLevel() == GetTask(87) then
				if GetExp() >= GetTask(86) then
					nl = GetTask(84)
					SetTask(84,GetTask(84)+1)
					if (GetTask(84) == nl+1) then
						nl2 = GetTask(83)
						SetTask(83,GetTask(83)+1)
						if GetTask(83) == nl2+1 then
							hoanthanh()
							Talk(0,"")
						else
							Talk(1,"","Hack ha em")
						end
					else
						Talk(1,"","Hack ha em")
					end
				else	
					sl1 = GetTask(88) - GetTask(86)
					sl2 = sl1 + GetExp()
					SayNew("<color=green>D� T�u: <color>: Ng��i ch� n�ng <color=yellow>Tr� Kinh Nghi�m<color> ���c <color=red>"..sl2.." / "..GetTask(88).."<color> �i�m, c� g�ng l�n !",1,
					"V�ng ta s� �i ngay /no")
				end		
			else
				sl1 = GetTask(88) - GetTask(86)
				sl2 = GetLevelExp() - sl1
				sl3 = GetExp() - sl2
				SayNew("<color=green>D� T�u: <color>: Ng��i ch� n�ng <color=yellow>Tr� Kinh Nghi�m<color> ���c <color=red>"..sl3.." / "..GetTask(88).."<color> �i�m, c� g�ng l�n !",1,
				"V�ng ta s� �i ngay /no")
			end
		end
	end
elseif GetTask(84) == 2 then -- Da hoan thanh nhung chua nhan thuong
	SetTask(91, Win_Item_DuocPham())
	SetTask(92, Win_Gold() * 5)
	SetTask(93, Win_Exp())
	--SetTask(307, 1)
	SetTask(308, RandomNew(1,5))
	nl = GetTask(84)
	SetTask(84,GetTask(84)+1)
	if (GetTask(84) == nl+1) then
				hoanthanh()
	else
		Talk(1,"","Hack ha em")
	end
elseif GetTask(84) == 3 then -- Da xac nhan phan thuong chi viec chon
	if GetTask(91) > 0 and GetTask(91) <= getn(Mang_Win_Item) then
			SayNew("<color=green>D� T�u<color>: Vui l�ng ch�n ph�n th��ng: ",4,
			"- "..Mang_Win_Item[GetTask(91)][2].." /phanthuongnew",
			"- "..GetTask(92).." l��ng/phanthuongnew",
			"- "..GetTask(93).." kinh nghi�m/phanthuongnew",
			"- C� h�i h�y b� nhi�m v�/phanthuongnew")
	--	OpenSlectBoxCheck(GetTask(91),GetTask(92),GetTask(93),"phanthuong")
	else
		Talk(1,"","Hack ha em")
	end
	
end
end

function Win_Item_DuocPham()
-- xxx
nhom1 = RandomNew(1,9)
nhom2 = RandomNew(1,9)
nhom3 = RandomNew(1,15)
nhom4 = RandomNew(1,15)
nhom5 = RandomNew(1,22)
nhom6 = RandomNew(1,30)
nhom7 = RandomNew(1,46)

loainv = GetTask(85)
if GetLevel() < 10 then
	return nhom1
elseif GetLevel() >= 10 and GetLevel() < 80 then
	sx = RandomNew(1,100)
	if sx < 70 then
		return nhom1
	else
		return nhom2
	end
else
	if loainv == 1 then
			sx = RandomNew(1,1000)
			if sx < 700 then
				return nhom1
			elseif sx >= 700 and sx < 950 then
				return nhom2
			elseif sx >= 950 and sx < 980 then
				return nhom3
			elseif sx >= 980 and sx < 993 then
				return nhom4
			elseif sx >= 993 and sx < 998 then
				return nhom5
			elseif sx >= 998 and sx < 1000 then
				return nhom6
			else
				return nhom7
			end
	elseif loainv == 3 then
			sx = RandomNew(1,1000)
			if sx < 900 then
				return nhom1
			elseif sx >= 900 and sx < 950 then
				return nhom2
			elseif sx >= 950 and sx < 990 then
				return nhom3
			elseif sx >= 990 and sx < 998 then
				return nhom4
			else
				return nhom5
			end
	elseif loainv == 2 then
		sx = RandomNew(1,1000)
			if sx < 500 then
				return nhom1
			elseif sx >= 500 and sx < 800 then
				return nhom2
			elseif sx >= 800 and sx < 850 then
				return nhom3
			elseif sx >= 850 and sx < 900 then
				return nhom4
			elseif sx >= 950 and sx < 980 then
				return nhom5
			elseif sx >= 980 and sx < 1000 then
				return nhom6
			else
				return nhom7
			end
	elseif loainv == 4 or loainv == 6 then
					sx = RandomNew(1,1000)
			if sx < 500 then
				return nhom1
			elseif sx >= 500 and sx < 800 then
				return nhom2
			elseif sx >= 800 and sx < 850 then
				return nhom3
			elseif sx >= 850 and sx < 950 then
				return nhom4
			elseif sx >= 950 and sx < 980 then
				return nhom5
			elseif sx >= 980 and sx < 1000 then
				return nhom6
			else
				return nhom7
			end
	elseif loainv == 5 then
			sx = RandomNew(1,1000)
			if sx < 800 then
				return nhom1
			elseif sx >= 800 and sx < 900 then
				return nhom2
			elseif sx >= 900 and sx < 980 then
				return nhom3
			elseif sx >= 980 and sx < 995 then
				return nhom4
			elseif sx >= 995 and sx < 1000 then
				return nhom5
			else
				return nhom6
			end
	else
		return 1
	end	
end
end

function Win_Gold_New()
nhom1 = RandomNew(500,1000)
nhom2 = RandomNew(5000,10000)
nhom3 = RandomNew(10000,20000)
nhom4 = RandomNew(20000,30000)
nhom5 = RandomNew(30000,40000)
nhom6 = RandomNew(50000,100000)
nhom7 = RandomNew(100000,300000)

loainv = GetTask(85)
if GetLevel() < 10 then
	return nhom1
elseif GetLevel() >= 10 and GetLevel() < 30 then
	sx = RandomNew(1,100)
	if sx < 70 then
		return nhom1
	else
		return nhom2
	end
else
	if loainv == 1 then
			sx = RandomNew(1,1000)
			if sx < 700 then
				return nhom1
			elseif sx >= 700 and sx < 800 then
				return nhom2
			elseif sx >= 800 and sx < 850 then
				return nhom3
			elseif sx >= 850 and sx < 900 then
				return nhom4
			elseif sx >= 900 and sx < 980 then
				return nhom5
			elseif sx >= 980 and sx < 1000 then
				return nhom6
			else
				return nhom7
			end
	elseif loainv == 3 then
			sx = RandomNew(1,1000)
			if sx < 700 then
				return nhom1
			elseif sx >= 700 and sx < 800 then
				return nhom2
			elseif sx >= 800 and sx < 900 then
				return nhom3
			elseif sx >= 900 and sx < 990 then
				return nhom4
			else
				return nhom5
			end
	elseif loainv == 2 then
		sx = RandomNew(1,1000)
			if sx < 200 then
				return nhom1
			elseif sx >= 200 and sx < 400 then
				return nhom2
			elseif sx >= 400 and sx < 600 then
				return nhom3
			elseif sx >= 600 and sx < 750 then
				return nhom4
			elseif sx >= 750 and sx < 950 then
				return nhom5
			elseif sx >= 950 and sx < 990 then
				return nhom6
			else
				return nhom7
			end
	elseif loainv == 4 or loainv == 6 then
					sx = RandomNew(1,1000)
			if sx < 200 then
				return nhom1
			elseif sx >= 200 and sx < 400 then
				return nhom2
			elseif sx >= 400 and sx < 700 then
				return nhom3
			elseif sx >= 700 and sx < 900 then
				return nhom4
			elseif sx >= 900 and sx < 990 then
				return nhom5
			elseif sx >= 990 and sx < 998 then
				return nhom6
			else
				return nhom7
			end
	elseif loainv == 5 then
			sx = RandomNew(1,1000)
			if sx < 600 then
				return nhom1
			elseif sx >= 600 and sx < 800 then
				return nhom2
			elseif sx >= 80 and sx < 900 then
				return nhom3
			elseif sx >= 900 and sx < 970 then
				return nhom4
			elseif sx >= 970 and sx < 998 then
				return nhom5
			else
				return nhom6
			end
	else
		return 1
	end	
end
end




function Win_Exp_New()
loainv = GetTask(85)
nExp3 = 1500000

	if loainv == 1 then
		nExp = nExp3
	elseif loainv == 3 then
		nExp = nExp3 / 3
	elseif loainv == 2 then
		nExp = nExp3 * 2
	elseif loainv == 4 or loainv == 6 then
		nExp = nExp3 * 3/2
	elseif loainv == 5 then
		nExp = nExp3 * 2/ 3
	else
		nExp = nExp3
	end	
	
nExp = nExp * RandomNew(80,120) / 100	

return nExp
end



function phanthuongnew(nsel)
	i = nsel + 1
	nl = GetTask(84)
	SetTask(84,GetTask(84)-3)
	if GetTask(84) == nl-3 then
		if i == 1 then
				giatri = Mang_Win_Item[GetTask(91)][1]
				if giatri == 0 then
					AddEventItem(Mang_Win_Item[GetTask(91)][3])
				else
					for t=1,giatri do AddItem(Mang_Win_Item[GetTask(91)][3],Mang_Win_Item[GetTask(91)][4],Mang_Win_Item[GetTask(91)][5],Mang_Win_Item[GetTask(91)][6],0,0,0) end
				end
				if GetTask(91) > 30 then
					Msg2SubWorld("��i hi�p "..GetName().." ho�n th�nh Nhi�m V� D� T�u nh�n ���c <color=yellow>"..Mang_Win_Item[GetTask(91)][2].."")
				else
					Msg2Player("B�n nh�n ���c <color=yellow>"..Mang_Win_Item[GetTask(91)][2].."")
				end
		elseif i == 2 then
				cash = GetCash()
				Earn(GetTask(92))
				Msg2Player("B�n nh�n ���c <color=yellow>"..GetTask(92).." l��ng")
				if  GetTask(92) >= 300000 then
					Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." ho�n th�nh nhi�m v� D� T�u nh�n ���c "..GetTask(92).." l��ng")
				elseif  GetTask(92) >= 200000 then
					Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." ho�n th�nh nhi�m v� D� T�u nh�n ���c "..GetTask(92).." l��ng")
				elseif  GetTask(92) >= 120000 then
					Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." ho�n th�nh nhi�m v� D� T�u nh�n ���c "..GetTask(92).." l��ng")
				elseif GetTask(92) >= 80000 then
					Msg2SubWorld("<color=blue>Ch�c m�ng "..GetName().." ho�n th�nh nhi�m v� D� T�u nh�n ���c "..GetTask(92).." l��ng")
				end
				SetTask(92,0)
		elseif i == 3 then
				m = floor(GetTask(93) / 5)
				for i=1,5 do AddOwnExp(m) end
				Msg2Player("B�n nh�n ���c <color=yellow>"..GetTask(93).." kinh nghi�m")
				SetTask(93,0)		
		elseif i == 4 then
				SetTask(90,GetTask(90)+1)	
				Msg2Player("B�n nh�n ���c 1 l�n c� h�i h�y b� nhi�m v�  !")
		end
		SetTask(86,0)
		SetTask(87,0)
		SetTask(85,0)
		SetTask(88,0)
		SetTask(82,GetTask(82)+1)
		SetTask(2,0)
		SetTask(3,0)
		-- Event
		ngay = tonumber(date("%d"))
		gio = tonumber(date("%H"))



			SetTask(908, GetTask(908) + 1)
			--Msg2Player("�i�u ki�n s� ki�n Nh� Gi�oVi�t Nam: <color=yellow>"..GetTask(908).." / 20")	
			if GetTask(908) == 20 then
				thang = tonumber(date("%m"))
				ngay = tonumber(date("%d"))
				if thang == 11 or (ngay == 1 and thang == 12) then
				--AddEventItem(908)
				--Msg2Player("B�n nh�n ���c <color=yellow>1 Th� G�i Th�y �� ")
				end
				
			end

		-- End
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end	
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function AddLaThu1Ngay()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

		ngay = ngay + 1
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
			thang = thang + 1
		end
		itemidx = AddEventItem(657)
		SetHSD(itemidx, 2021 , thang, ngay, gio )
		Msg2Player("B�n nh�n ���c 1 L� Th� G�i M� ")
end

function phanthuong(nid)
AddEventItem(44)
Msg2Player("B�n nh�n ���c <color=green>Huy�n Tinh 1")

if GetTask(84) == 3 then
	nl = GetTask(84)
	SetTask(84,GetTask(84)-3)
	if GetTask(84) == nl-3 then
		if (nid == 1) then
			Win_Exp()
		elseif (nid == 2) then
			SetTask(90,GetTask(90)+1)	
			Msg2Player("B�n nh�n ���c 1 l�n c� h�i h�y b� nhi�m v�  !")
		elseif (nid == 3) then
			Win_Item()
		elseif (nid == 4) then
				xs2 = RandomNew(1,3)
				if xs2 == 1 then
					Win_Exp()
				elseif xs2 == 2 then
					Win_Gold()
				elseif xs2 == 3 then
					Win_Item()
				end	
			
		elseif (nid == 5) then
			Win_Gold()
		end
		SetTask(86,0)
		SetTask(87,0)
		SetTask(85,0)
		SetTask(88,0)
		SetTask(82,GetTask(82)+1)
		if GetTask(111) >= 100 and GetTask(82) < 30 then
			SetTask(111,1)
		else
			SetTask(111,GetTask(111)+1)
		end	
		SetTask(2,0)
		SetTask(3,0)
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
end
end

function hoangkim()
item = RandomNew(1,230)
if item == 1 then
AddItem(0,3,3,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh Nhi�m v� D� T�u H�ng nh�n ���c [An Bang C�c Hoa Th�ch Ch� Ho�n]")
elseif item == 2 then
AddItem(0,3,4,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh Nhi�m v� D� T�u H�ng nh�n ���c [An Bang K� Huy�t Th�ch Gi�i Ch�]")
elseif item == 3 then
AddItem(0,9,3,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh Nhi�m v� D� T�u H�ng nh�n ���c [An Bang �i�n Ho�ng Th�ch Ng�c B�i]")
elseif item == 4 or item == 11 or item == 17 then
AddItem(0,3,6,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh Nhi�m v� D� T�u H�ng nh�n ���c [Hi�p C�t �an T�m Gi�i]")
elseif item == 5 or item == 12 or item == 18 then
AddItem(0,3,5,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh Nhi�m v� D� T�u H�ng nh�n ���c [Nhu T�nh Ph�ng Nghi Gi�i Ch�]")
elseif item == 14 or item == 15 or item == 19 then
AddItem(0,9,4,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh Nhi�m v� D� T�u H�ng nh�n ���c [Hi�p C�t T�nh � K�t]")
elseif item == 6 or item == 13 or item == 20 then
AddItem(0,9,5,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh Nhi�m v� D� T�u H�ng nh�n ���c [Nhu T�nh Tu� T�m Ng�c B�i]")
elseif item == 7 or item == 16 or item == 21 then
AddItem(0,9,5,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh Nhi�m v� D� T�u H�ng nh�n ���c [Nhu T�nh Tu� T�m Ng�c B�i]")
elseif item == 8 then
AddItem(0,7,15,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh Nhi�m v� D� T�u H�ng nh�n ���c [��nh Qu�c � Sa Ph�t Qu�n]")
elseif item == 9 or item == 22 then
AddItem(0,8,3,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh Nhi�m v� D� T�u H�ng nh�n ���c [��nh Qu�c T� ��ng H� Uy�n]")
elseif item == 10 or item == 23 then
AddItem(0,5,5,1,0,0,0)
Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh Nhi�m v� D� T�u H�ng nh�n ���c [��nh Qu�c X�ch Quy�n Nhuy�n Ngoa]")
else
	rnd = RandomNew(1,9)
	if rnd == 1 then
	AddItem(0,6,2,1,0,0,0)
	elseif rnd == 2 then
	AddItem(0,5,4,1,0,0,0)
	elseif rnd == 3 then
	AddItem(0,9,2,1,0,0,0)
	elseif rnd == 4 then
	AddItem(0,7,14,1,0,0,0)
	elseif rnd == 5 then
	AddItem(0,2,29,1,0,0,0)
	elseif rnd == 6 then
	AddItem(0,8,2,1,0,0,0)
	elseif rnd == 7 then
	AddItem(0,4,2,1,0,0,0)
	elseif rnd == 8 then
	AddItem(0,3,1,1,0,0,0)
	else 
	AddItem(0,3,2,1,0,0,0)
	end
	Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh Nhi�m v� D� T�u H�ng nh�n ���c Trang b� Kim Phong")
end
end



function tinh_exp_dc()
if GetLevel() >= 90 then
return 10
else
return floor(GetLevel()/10)+1
end
end

function tinh_exp_soluong()
if GetLevel() <= 30 then
return 3
elseif GetLevel() >= 30 and GetLevel() <= 59  then
return 6
elseif GetLevel() >= 60 and GetLevel() <= 79 then
return 9
elseif GetLevel() >= 80 and GetLevel() <= 119 then
return 12
else
return 15
end
end

function Win_Exp()
if tinh_exp_dc() < 1 or tinh_exp_dc() > getn(Mang_Exp2) then
Msg2Player("Lien he GM de bao loi. Loi nhan exp: "..tinh_exp_dc().." ")
print("Lien he GM de bao loi. Loi nhan exp: "..tinh_exp_dc().." ")
return
end
diem2 = 1
diemexp = 5 * tinh_exp_soluong() * Mang_Exp2[tinh_exp_dc()]
if GetTask(85) == 1 then
	if GetTask(88) < 1 or GetTask(88) > getn(DoChi_Map) then
	SetTask(88,11)
	end
	diem2 = 10 * tinh_exp_soluong() * Mang_Exp2[tinh_exp_dc()]
elseif GetTask(85) == 2 then
	if GetTask(88) < 1 or GetTask(88) > getn(DoChi_Map) then
	SetTask(88,11)
	end
	diem2 = 40 * tinh_exp_soluong() * Mang_Exp2[tinh_exp_dc()]
elseif GetTask(85) == 3 then
	diem2 = diemexp / 5 
elseif GetTask(85) == 4 or GetTask(85) ==  6 then
	diem2 = diemexp / 2 *8
elseif GetTask(85) == 5 then
	diem2 = diemexp / 3 * 8	
elseif GetTask(85) == 8 then
	if GetTask(88) == 1 then
		diem2 = diemexp / 2
	elseif GetTask(88) == 2 then
		diem2 = diemexp
	else
		diem2 = diemexp * 2
	end
elseif GetTask(85) == 9 then
	if GetTask(88) == 1000000 then
		diem2 = diemexp * 1 / 3
	elseif GetTask(88) == 2000000 then
		diem2 = diemexp / 2
	elseif GetTask(88) == 3000000 then
		diem2 = diemexp * 2 / 3
	elseif GetTask(88) == 4000000 then
		diem2 = diemexp * 3 / 3
	else
		diem2 = diemexp * 4 / 3
	end
elseif GetTask(85) == 7 then
	if GetTask(88) == 1 or GetTask(88) == 4 then
		diem2 = diemexp / 4
	elseif GetTask(88) == 2 or GetTask(88) == 5 then
		diem2 = diemexp / 3
	elseif GetTask(88) == 3 or GetTask(88) == 6 then
		diem2 = diemexp / 2
	elseif GetTask(88) == 7 then
		diem2 = diemexp / 2
	elseif GetTask(88) == 8 then
		diem2 = diemexp 
	else
		diem2 = diemexp * 2
	end
else
	diem2 = 100000
end
diem3 = 0
diem4 = 0
diem2 = floor(diem2)
diem3 = diem2 - (diem2 * 20 / 100) 
diem4 = diem2 + (diem2 * 20 / 100) 

diemnhanduoc = floor(RandomNew(diem3,diem4))
diemnhanduoc = diemnhanduoc * 30

return diemnhanduoc
end

function tinh_gold_soluong()
if GetLevel() >= 100 then
return 10
else
return floor(GetLevel()/10)+1
end
end

function Win_Gold()
if tinh_exp_dc() < 1 or tinh_exp_dc() > getn(Mang_Exp2) then
Msg2Player("Lien he GM de bao loi. Loi nhan gold: "..tinh_exp_dc().." ")
print("Lien he GM de bao loi. Loi nhan exp: "..tinh_exp_dc().." ")
return
end
diemexp = 20 * tinh_exp_soluong() * Mang_Gold2[tinh_exp_dc()] * 15 / 100
diem2 = 1
if GetTask(85) == 1 then
	diem2 = diemexp
elseif GetTask(85) == 2 then
	diem2 = diemexp*2
elseif GetTask(85) == 3 then
	diem2 = diemexp / 5
elseif GetTask(85) == 4 or GetTask(85) ==  6 then
	diem2 = diemexp / 2
elseif GetTask(85) == 5 then
	diem2 = diemexp / 3	
elseif GetTask(85) == 8 then
	if GetTask(88) == 1 then
		diem2 = diemexp / 2
	elseif GetTask(88) == 2 then
		diem2 = diemexp
	elseif GetTask(88) == 3 then
		diem2 = diemexp * 2
	end
elseif GetTask(85) == 9 then
	if GetTask(88) == 1000000 then
		diem2 = diemexp * 1 / 3
	elseif GetTask(88) == 2000000 then
		diem2 = diemexp / 2
	elseif GetTask(88) == 3000000 then
		diem2 = diemexp * 2 / 3
	elseif GetTask(88) == 4000000 then
		diem2 = diemexp * 3 / 3
	else
		diem2 = diemexp * 4 / 3
	end
elseif GetTask(85) == 7 then
	if GetTask(88) == 1 or GetTask(88) == 4 then
		diem2 = diemexp / 4
	elseif GetTask(88) == 2 or GetTask(88) == 5 then
		diem2 = diemexp / 3
	elseif GetTask(88) == 3 or GetTask(88) == 6 then
		diem2 = diemexp / 2
	elseif GetTask(88) == 7 then
		diem2 = diemexp / 2
	elseif GetTask(88) == 8 then
		diem2 = diemexp 
	elseif GetTask(88) == 9 then
		diem2 = diemexp * 2
	end
else
	diem2 = 20000
end

diem2 = floor(diem2 / 5)
diem3 = diem2 - diem2 * 20 / 100
diem4 = diem2 + diem2 * 20 / 100
diem2 = floor(RandomNew(diem3,diem4))
return diem2
end

function Win_Item()
xs = RandomNew(1,100)	
if xs <= 75 then
	xs3 = RandomNew(1,3)
	if xs3 == 1 then
		AddEventItem(103)
		Msg2Player("B�n nh�n ���c 1 Ng� Hoa Ng�c L� Ho�n L� Bao")	
	elseif xs3 == 2 then
		AddEventItem(104)
		Msg2Player("B�n nh�n ���c 1 C�u Chuy�n Ho�n H�n �an L� Bao")			
	else
		AddEventItem(105)
		Msg2Player("B�n nh�n ���c 1 Th� � Ho�n Th�n �an L� Bao")	
	
	end
elseif xs > 75 and xs <= 99 then
	xs2 = RandomNew(1,100)
	if xs2 <= 60 then
		AddEventItem(173)
		Msg2Player("B�n nh�n ���c 1 b�nh Ph�c Duy�n L� ")
	elseif xs2 > 60 and xs2 <= 90 then
		AddEventItem(174)
		Msg2Player("B�n nh�n ���c 1 b�nh Ph�c Duy�n L� ")
	elseif xs2 > 90 and xs2 < 100 then
		AddEventItem(175)
		Msg2Player("B�n nh�n ���c 1 b�nh Ph�c Duy�n L� ")
	end
else
	xs3 = RandomNew(1,30) 
	if xs3 == 1 then
		AddEventItem(RandomNew(28,30))
		Msg2Player("B�n nh�n  ���c 1 vi�n Th�y Tinh")
		Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." ho�n th�nh nhi�m v� D� T�u nh�n ���c 1 Th�y Tinh !")
	elseif xs3 == 2 then
		AddEventItem(1)
		Msg2Player("B�n nh�n  ���c 1 T�y T�y Kinh")
		Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." ho�n th�nh nhi�m v� D� T�u nh�n ���c 1 T�y T�y Kinh !")
	elseif xs3 == 3 then
		AddEventItem(0)
		Msg2Player("B�n nh�n  ���c 1 V� l�m m�t t�ch")
		Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." ho�n th�nh nhi�m v� D� T�u nh�n ���c 1 V� L�m M�t T�ch !")
	elseif xs3 == 4 then
		AddEventItem(31)
		Msg2Player("B�n nh�n  ���c 1 vi�n Tinh H�ng B�o Th�ch")
		Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." ho�n th�nh nhi�m v� D� T�u nh�n ���c 1 Tinh H�ng B�o Th�ch !")
	elseif xs3 > 4 and xs3 < 16 then
		AddEventItem(113)
		Msg2Player("B�n nh�n ���c 1 Ti�n Th�o L� !")
		Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." ho�n th�nh nhi�m v� D� T�u nh�n ���c 1 Ti�n Th�o L� !")
	
	else
		AddEventItem(114)
		Msg2Player("B�n nh�n ���c 1 N� Nhi H�ng !")
		Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." ho�n th�nh nhi�m v� D� T�u nh�n ���c 1 N� Nhi H�ng !")
	end		
end
end




function tinhxacsuat()
if GetLevel() < 80 then
	sx = RandomNew(1,100)
	if sx < 40 then
		return 1
	elseif sx >= 40 and sx < 50 then
		return 3
	elseif sx >= 50 and sx < 65 then
		return 6 -- Tim Option
	elseif sx >= 65 and sx < 85 then
		return 4
	elseif sx >= 85 and sx < 95 then
		return 5
	else
		return 2
	end	
elseif GetLevel() >= 80 and GetLevel() < 90 then
	sx = RandomNew(1,100)
	if sx < 40 then
		return 1
	elseif sx >= 40 and sx < 50 then
		return 3
	elseif sx >= 50 and sx < 65 then
		return 6 -- Tim Option
	elseif sx >= 65 and sx < 85 then
		return 4
	elseif sx >= 85 and sx < 95 then
		return 5
	else
		return 2
	end
else
	return RandomNew(1,7)
end
end


function nhannv2()
ngay = tonumber(date("%d"))
nl = GetTask(84)
SetTask(84,GetTask(84)+1)
if GetTask(84) == (nl+1) then
	loainv = tinhxacsuat()
	SetTask(85,loainv)
	if (loainv == 1) then
		SetTask(86,soluongdochi())
		SetTask(87,0)
		SetTask(88,mapdochi())
	elseif (loainv == 2) then
		SetTask(86,soluongmatchi())
		SetTask(87,0)
		SetTask(88,mapdochi())
	elseif (loainv == 3) then
		SetTask(88,RandomNew(1,getn(Mua_Shop)))
	elseif (loainv == 4) then	
		if GetLevel() < 30 then
			SetTask(88,RandomNew(1,75))
		else
			SetTask(88,RandomNew(1,getn(TrangSuc_Ten)))
		end	
	elseif (loainv == 5) then
		SetTask(88,RandomNew(1,getn(Option)))
	elseif (loainv == 6) then
		SetTask(88,RandomNew(1,getn(Item_Option)))
		SetTask(86,RandomNew(1,getn(Item_Option2)))	
	elseif (loainv == 7) then
		SetTask(88,RandomNew(1,getn(Tri_Diem)))
		SetTask(86,GetTask(Tri_Diem[GetTask(88)][2])+Tri_Diem[GetTask(88)][3])
		SetTask(87,GetTask(Tri_Diem[GetTask(88)][2]))
	elseif (loainv == 8) then
		SetTask(88,1)
		
		SetTask(86,GetPK()+GetTask(88))
		SetTask(87,GetPK())
	elseif (loainv == 9) then
		kn = GetLevelExp()
		SetTask(88,Mang_KN[RandomNew(1,getn(Mang_KN))])

		if (kn - (GetTask(88)+GetExp()) > 0) then
			SetTask(86,GetExp()+GetTask(88))
			SetTask(87,GetExp())
			SetTask(94,1)
		else
			SetTask(94,2)
			knlv1 = GetLevelExp() - GetExp()	
			knlv2 = GetTask(88) - knlv1
			SetTask(86,knlv2)
			SetTask(87,GetLevel()+1)			
		end
	end
	main()
end
end

function giaonhiemvu()
if GetTask(85) == 3 then
OpenCheckItemBox("H�m Ki�m Tra Item","H�y ��t v�o ��y "..Mua_Shop[GetTask(88)][3].." [C�p "..Mua_Shop[GetTask(88)][6].."] �� mua ���c","ok")
elseif GetTask(85) == 4 then
OpenCheckItemBox("H�m Ki�m Tra Item","H�y ��t v�o ��y "..TrangSuc_Ten[GetTask(88)][1].." �� t�m ���c","ok")
elseif GetTask(85) == 5 then
OpenCheckItemBox("H�m Ki�m Tra Item","H�y ��t v�o ��y 1 trang b� c� "..Option[GetTask(88)][1].." t� "..Option[GetTask(88)][3].." ��n "..Option[GetTask(88)][4].." �� t�m ���c","ok")
elseif GetTask(85) == 6 then
OpenCheckItemBox("H�m Ki�m Tra Item","H�y ��t v�o ��y 1 trang b� "..Item_Option[GetTask(88)][1].." c� "..Item_Option2[GetTask(86)][1].." �� t�m ���c","ok")
end
end


function ok()
idx = GetIdxItemBox ()
if (idx == -1) then
Msg2Player("Trong r��ng c� nhi�u h�n 1 v�t ph�m ")
elseif (idx == 0) then
Msg2Player("Trong r��ng kh�ng c� v�t ph�m n�o ")
elseif (idx == -2) then
Msg2Player("V�t ph�m ��t  v�o kh�ng ph�i l� trang b� ")
elseif (idx == -3) then
Msg2Player("Trang b� ��t v�o �� b� kh�a b�o hi�m ")
else
if GetTask(85) == 3 then
	if GetDetailTypeItem(idx) == Mua_Shop[GetTask(88)][4] and GetParticularItem(idx) == Mua_Shop[GetTask(88)][5] and GetLevelItem(idx) == Mua_Shop[GetTask(88)][6] then
	DelEquipIdx(idx)
	if GetIdxItemBox() == 0 then
		nl = GetTask(84)
		SetTask(84,GetTask(84) + 1)
		if GetTask(84) == nl+1 then
			nl2 = GetTask(83)
			SetTask(83,GetTask(83)+1)
			if GetTask(83) == nl2+1 then
				hoanthanh()
				Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
		else 
			Talk(1,"","Hack ha em")
		end
	else 
		Talk(1,"","Hack ha em")
	end
	else 
	Talk(1,"","Trang b� ��t v�o kh�ng ph�i l� <color=yellow>"..Mua_Shop[GetTask(88)][3].." [C�p "..Mua_Shop[GetTask(88)][6].."]<color> ")
	end
elseif GetTask(85) == 4 then
	if GetDetailTypeItem(idx) == TrangSuc_Ten[GetTask(88)][2] and GetParticularItem(idx) == TrangSuc_Ten[GetTask(88)][3] and GetLevelItem(idx) == TrangSuc_Ten[GetTask(88)][4] and GetSeriItem(idx) == TrangSuc_Ten[GetTask(88)][5] then
	DelEquipIdx(idx)
	if GetIdxItemBox() == 0 then
		nl = GetTask(84)
		SetTask(84,GetTask(84) + 1)
		if GetTask(84) == nl+1 then
			nl2 = GetTask(83)
			SetTask(83,GetTask(83)+1)
			if GetTask(83) == nl2+1 then
				hoanthanh()
				Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
		else 
			Talk(1,"","Hack ha em")
		end
	else 
		Talk(1,"","Hack ha em")
	end
	else 
	Talk(1,"","Trang b� ��t v�o kh�ng ph�i l� <color=yellow>"..TrangSuc_Ten[GetTask(88)][1].."<color> ")
	end
elseif GetTask(85) == 5 then
	if CheckMagicItem(idx,Option[GetTask(88)][2],Option[GetTask(88)][3],Option[GetTask(88)][4]) == 1 then
	DelEquipIdx(idx)
	if GetIdxItemBox() == 0 then
		nl = GetTask(84)
		SetTask(84,GetTask(84) + 1)
		if GetTask(84) == nl+1 then
			nl2 = GetTask(83)
			SetTask(83,GetTask(83)+1)
			if GetTask(83) == nl2+1 then
				hoanthanh()
				Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
		else 
			Talk(1,"","Hack ha em")
		end
	else 
		Talk(1,"","Hack ha em")
	end
	else 
	Talk(1,"","Trang b� ��t v�o kh�ng c� <color=yellow>"..Option[GetTask(88)][1].."<color> t� <color=red>"..Option[GetTask(88)][3].."<color> ��n <color=red>"..Option[GetTask(88)][4].."")
	end
elseif GetTask(85) == 6 then
	if CheckMagicItem(idx,Item_Option2[GetTask(86)][2],1,200) == 1 and GetDetailTypeItem(idx) == Item_Option[GetTask(88)][2] and GetParticularItem(idx) == Item_Option[GetTask(88)][3] and GetLevelItem(idx) == Item_Option[GetTask(88)][4] then
	DelEquipIdx(idx)
	if GetIdxItemBox() == 0 then
		nl = GetTask(84)
		SetTask(84,GetTask(84) + 1)
		if GetTask(84) == nl+1 then
			nl2 = GetTask(83)
			SetTask(83,GetTask(83)+1)
			if GetTask(83) == nl2+1 then
				hoanthanh()
				Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
		else 
			Talk(1,"","Hack ha em")
		end
	else 
		Talk(1,"","Hack ha em")
	end
	else 
	Talk(1,"","Trang b� ��t v�o kh�ng ph�i l� <color=yellow>"..Item_Option[GetTask(88)][1].."<color> c� <color=red>"..Item_Option2[GetTask(86)][1].."")
	end
end
end
end

-- NHIEM VU THAN BI DO CHI
function soluongdochi()
lv = GetLevel()
if lv < 30 then
return 3
elseif lv < 60 then
return 6
elseif lv < 80 then
return 9
elseif lv < 120 then
return 12
else
return 15
end
end

function soluongmatchi()
lv = GetLevel()
if lv < 40 then
return 1
elseif lv >= 40 and lv < 90 then
return RandomNew(1,2)
else
return RandomNew(1,3)
end
end

function mapdochi()

if GetLevel() < 10 then
return RandomNew(1,3)
elseif GetLevel() < 20 then
return RandomNew(4,6)
elseif GetLevel() < 30 then
return RandomNew(7,9)
elseif GetLevel() < 40 then
return RandomNew(10,12)
elseif GetLevel() < 50 then
return RandomNew(13,15)
elseif GetLevel() < 60 then
return RandomNew(16,20)
elseif GetLevel() < 70 then
return RandomNew(21,25)
elseif GetLevel() < 80 then
return RandomNew(26,29)
elseif GetLevel() < 90 then
return RandomNew(30,35)
else
return RandomNew(36,getn(DoChi_Map))
end
end

function huy()
if GetTask(90) == 0 then
	SayNew("<color=green>D� T�u: <color>: Hi�n t�i b�n kh�ng c� c� h�i n�o �� h�y b� nhi�m v�, b�n ch� c� th� l�m l�i t� ��u th�i ! ",3,
	"��ng, ta kh�ng mu�n l�m nhi�m v� qu� qu�i n�y ��u /huynv1",
	"Ta mu�n s� d�ng 100 m�nh S�n H� X� T�c �� h�y b� nhi�m v� l�n n�y /huynv2",
	"Uhm! �� ta suy ngh� l�i �� /no")
else
	SayNew("<color=green>D� T�u: <color>: Hi�n t�i b�n v�n c�n <color=yellow>"..GetTask(90).."<color> c� h�i h�y b� nhi�m v�, s� �i�m t�ch l�y v�n ���c gi� nguy�n. ",2,
	"��ng, ta kh�ng mu�n l�m nhi�m v� qu� qu�i n�y ��u /huynv3",
	"Ta s� c� g�ng l�m ti�p nhi�m v� n�y /no")
end
end


function huynv1()
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/HuyNhiemVuDaTau.txt", "a");
if LoginLog then
write(LoginLog,"[1] "..GetAccount().." - "..GetName().." - "..GetTask(83).."  - Time: "..thoigian.."\n");
end
closefile(LoginLog)

SetTask(84,0)
SetTask(86,0)
SetTask(87,0)
SetTask(85,0)
SetTask(88,0)
SetTask(83,0)
SetTask(106,0)
SetTask(82,GetTask(82)+1)
Msg2Player("B�n �� h�y nhi�m v� th�nh c�ng, s� l�n ho�n th�nh nhi�m v� li�n ti�p hi�n t�i l� 0")


SetTask(2,GetTask(2) + 1)
Msg2Player("B�n �� h�y "..GetTask(2).." li�n t�c. N�u b�n h�y 3 l�n li�n t�c, s� kh�ng th� l�m d� t�u sau 1 gi� n�a !")
if GetTask(2) >= 3 then
time = gio * 60 + phut + 60
SetTask(3,time)
Msg2Player("B�n �� h�y nhi�m v� li�n t�c 3 l�n, vui l�ng quay l�i ��y sau 1 gi� n�a !")
end
Talk(0,"")
end

function huynv2()
nl = GetTask(89)
if GetTask(89) >= 1000 then
	SetTask(89,GetTask(89)-1000)
	if GetTask(89) == nl-1000 then
		SetTask(84,0)
		SetTask(86,0)
		SetTask(87,0)
		SetTask(85,0)
		SetTask(88,0)
		SetTask(82,GetTask(82)+1)

		Msg2Player("B�n �� s� d�ng 100 m�nh b�n �� S�n H� X� T�c v� h�y nhi�m v� th�nh c�ng !")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","<color=green>D� T�u: <color>: Ng��i kh�ng mang  �� 100 t�m b�n �� S�n h� X� t�c, h�y �i ki�m �� r�i ta s� cho ng��i h�y b� nhi�m v� n�y ")
end
end

function huynv3()
nl = GetTask(90)
if GetTask(90) >0 then
	SetTask(90,GetTask(90)-1)
	if GetTask(90) == nl-1 then
		SetTask(84,0)
		SetTask(86,0)
		SetTask(87,0)
		SetTask(85,0)
		SetTask(88,0)
		SetTask(82,GetTask(82)+1)
		Msg2Player("B�n �� s� d�ng c� h�i h�y b� nhi�m v� c�a D� T�u v� h�y nhi�m v� th�nh c�ng !")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Hack ha em")
end
end




function no()
end

