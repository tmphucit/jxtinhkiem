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


function main()


gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
time = gio * 60 + phut
ngay = tonumber(date("%d"))
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

if GetTask(85) == 7 and GetTask(88) > 9 then
SetTask(84,0)
elseif GetTask(85) == 9 and GetTask(88) > 3 then
SetTask(84,0)
end
if GetTask(84) == 0 then -- Chua nhan nv
soluong = 20 - GetTask(82)
Say("<color=green>D� T�u: <color>: V� C�ng t� �� ho�n th�nh <color=yellow>"..GetTask(82).."<color> nhi�m v�, nhi�m v� n�y ng�y h�m nay c� th� th�c hi�n l�i <color=yellow>"..soluong.."<color> l�n n�a, ng��i c� mu�n l�m n�a kh�ng  ",3,
"Ta mu�n nh�n nhi�m v� ti�p theo /nhannv2", 
"Nh�n ph�n th��ng/nhanptmoc",
"�� ta ngh� ng�i m�t l�t ��! Ta b�n r�i /no")
elseif GetTask(84) == 1 or GetTask(84) == 2 or GetTask(84) == 3 or GetTask(84) == 4 then -- Da nhan nv chua hoan thanh
	if GetTask(85) == 1 then -- Tim do chi
		Say("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20, Ng��i h�y ��n <color=yellow>"..DoChi_Map[GetTask(88)].." t�m gi�p ta "..GetTask(86).." t�m Th�n B� �� Ch� ",3,
		"Ta �� ho�n th�nh nhi�m v� l�n n�y /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy",
		"Ta �ang b�n, h�n g�p ng��i sau /no")
	elseif GetTask(85) == 2 then -- tim mat chi
		Say("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20, Ng��i h�y ��n <color=yellow>"..DoChi_Map[GetTask(88)].." t�m gi�p ta "..GetTask(86).." t�m M�t Ch� ",3,
		"Ta �� ho�n th�nh nhi�m v� l�n n�y /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy",
		"Ta �ang b�n, h�n g�p ng��i sau /no")
	elseif GetTask(85) == 3 then -- Mua Item Shop
		Say("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20\nNg��i h�y ��n <color=yellow>"..Mua_Shop[GetTask(88)][1].." - "..Mua_Shop[GetTask(88)][2].." gi�p ta mua "..Mua_Shop[GetTask(88)][3].." [C�p "..Mua_Shop[GetTask(88)][6].."] ",3,
		"��i xi, ta s� �i mua gi�p ng��i /no",
		"Ta ��n giao v�t ph�m nhi�m v� /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy")
	elseif GetTask(85) == 4 then -- Tim Trang Suc : Ten + He
		Say("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20\nH�y t�m cho ta 1 <color=yellow>"..TrangSuc_Ten[GetTask(88)][1].."",3,
		"��i xi, ta s� �i mua gi�p ng��i /no",
		"Ta ��n giao v�t ph�m nhi�m v� /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy")
	elseif GetTask(85) == 5 then -- Tim Option
		Say("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20\nH�y t�m cho ta 1 trang b� c� <color=yellow>"..Option[GetTask(88)][1].." t� "..Option[GetTask(88)][3].." ��n "..Option[GetTask(88)][4].." ",3,
		"��i xi, ta s� �i mua gi�p ng��i /no",
		"Ta ��n giao v�t ph�m nhi�m v� /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy")
	elseif GetTask(85) == 6 then -- Tim Trang suc _ Option
		Say("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20\nH�y t�m cho ta 1 trang b� <color=yellow>"..Item_Option[GetTask(88)][1].." c� "..Item_Option2[GetTask(86)][1].."",3,
		"��i xi, ta s� �i mua gi�p ng��i /no",
		"Ta ��n giao v�t ph�m nhi�m v� /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy")
	elseif GetTask(85) == 7 then -- Tr� danh v�ng, ph�c duy�n, t�ng kim
		Say("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20, �� li�n ti�p ho�n th�nh <color=red>"..GetTask(83).."<color> nhi�m v�.\nNg��i h�y �i n�ng <color=yellow>"..Tri_Diem[GetTask(88)][1].." th�m "..Tri_Diem[GetTask(88)][3].." �i�m ",3,
		"Ta �� ho�n th�nh nhi�m v� l�n n�y /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy",
		"Ta �ang b�n, h�n g�p ng��i sau /no")
	elseif GetTask(85) == 8 then -- Tr� PK
		Say("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20, �� li�n ti�p ho�n th�nh <color=red>"..GetTask(83).."<color> nhi�m v�.\nNg��i h�y �i n�ng <color=yellow>tr� PK l�n "..GetTask(88).."  �i�m ",3,
		"Ta �� ho�n th�nh nhi�m v� l�n n�y /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy",
		"Ta �ang b�n, h�n g�p ng��i sau /no")
	elseif GetTask(85) == 9 then -- Tr� Kinh Nghi�m
		Say("<color=green>D� T�u: <color>: ��y l� nhi�m v� th� "..GetTask(82).."/20, �� li�n ti�p ho�n th�nh <color=red>"..GetTask(83).."<color> nhi�m v�.\nNg��i h�y �i n�ng <color=yellow>Tr� Kinh Nghi�m l�n "..GetTask(88).."  �i�m ",3,
		"Ta �� ho�n th�nh nhi�m v� l�n n�y /hoanthanh",
		"Ta mu�n h�y b� nhi�m v� kh�ng l�m n�a /huy",
		"Ta �ang b�n, h�n g�p ng��i sau /no")
	end
end
end

function nhanptmoc()
if GetTask(83) >= (GetTask(106)+1)*100 then
	Say("<color=green>D� T�u: <color>: B�n �� ho�n th�nh <color=red>"..GetTask(83).."<color> nhi�m v� D� T�u. Vui l�ng nh�n ph�n th��ng ��t m�c <color=yellow>"..((GetTask(106)+1)*100).."<color> c�a m�nh ",2,
	"Ta ��n �� nh�n ph�n th��ng /nhanphanthuong",
	"Ta mu�n xem danh s�ch c�c m�c ph�n th��ng/xemdsmoc")
else
	Say("<color=green>D� T�u: <color>: B�n �� ho�n th�nh <color=red>"..GetTask(83).."<color> nhi�m v� D� T�u. Ph�n th��ng nh�n ���c khi ��t m�c <color=yellow>"..((GetTask(106)+1)*100).."<color> nhi�m v� ho�n th�nh li�n ti�p ",3,
	"Nh�n ph�n th��ng ho�n th�nh 20 nhi�m v� m�i ng�y/nhanptnvmoingay",
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
	sx = random(1,2)
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
if GetTask(83) >= (sl+1)*100 then
	SetTask(106,GetTask(106)+1)
	if GetTask(106) == sl+1 then
		phanthuongmoc(GetTask(106))
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","hack ha em")
end
end

function phanthuongmoc(num)
if num == 10 then
	sx1 = random(1,2)
	if sx1 == 1 then
		for i=1,random(1,3) do
			AddEventItem(120) -- TTL 6 gio
		end
		Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh m�c 1000 nhi�m v� D� T�u nh�n ���c ph�n th��ng Ti�n Th�o L� 6 gi� ")
	else
		for i=1,random(1,3) do
			AddEventItem(116) -- NNH 6 gio
		end
		Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh m�c 1000 nhi�m v� D� T�u nh�n ���c ph�n th��ng N� Nhi H�ng 6 gi� ")
	end

elseif num == 20 then
	sx1 = random(1,2)
	if sx1 == 1 then
		AddEventItem(28)
		AddEventItem(29)
		AddEventItem(30)		
		Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh m�c 2000 nhi�m v� D� T�u nh�n ���c 1 B� Th�y Tinh ")
	else
		for i=1,6 do 
			AddEventItem(31)
		end	
		Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh m�c 2000 nhi�m v� D� T�u nh�n ���c 1 B� Tinh H�ng B�o Th�ch ")
	end
elseif num == 30 then
	sx1 = random(1,2)
	if sx1 == 1 then
		for i=1,random(1,3) do
			AddEventItem(0) -- VLMT
		end
		Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh m�c 3000 nhi�m v� D� T�u nh�n ���c ph�n th��ng V� L�m M�t T�ch ")
	else
		for i=1,random(1,3) do
			AddEventItem(1) -- TTK
		end
		Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh m�c 3000 nhi�m v� D� T�u nh�n ���c ph�n th��ng T�y T�y Kinh ")
	end
elseif num == 40 then
	sx = random(1,2)
	if sx == 1 then
		sx1 = random(1,3)
		if sx1 == 1 then
		AddItem(0,4,4,1,0,0,0) -- DC Nhu Tinh
		elseif sx1 == 2 then
		AddItem(0,9,5,1,0,0,0)
		else
		AddItem(0,3,5,1,0,0,0)
		end
		Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh m�c 4000 nhi�m v� D� T�u nh�n ���c ph�n th��ng Trang b� Nhu T�nh")
	else	
		sx1 = random(1,4)
		if sx1 == 1 then
		AddItem(0,4,5,1,0,0,0) -- DC Hiep Cot
		elseif sx1 == 2 then
		AddItem(0,2,31,1,0,0,0)
		elseif sx1 == 3 then
		AddItem(0,9,4,1,0,0,0)
		else
		AddItem(0,3,6,1,0,0,0)
		end
		Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh m�c 4000 nhi�m v� D� T�u nh�n ���c ph�n th��ng Trang b� Hi�p C�t ")
	end
elseif num == 50 then
	sx1 = random(1,5)
	if sx1 == 1 then
	AddItem(0,2,30,1,0,0,0)
	elseif sx1 == 2 then
	AddItem(0,6,3,1,0,0,0)
	elseif sx1 == 3 then
	AddItem(0,5,5,1,0,0,0)
	elseif sx1 == 4 then
	AddItem(0,8,3,1,0,0,0)
	else
	AddItem(0,7,15,1,0,0,0)
	end
	Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh m�c 5000 nhi�m v� D� T�u nh�n ���c ph�n th��ng Trang b� ��nh Qu�c ")
elseif num == 60 then
	sx1 = random(1,4)
	if sx1 == 1 then
	AddItem(0,4,3,1,0,0,0) -- DC An Bang
	elseif sx1 == 2 then
	AddItem(0,9,3,1,0,0,0)
	elseif sx1 == 3 then
	AddItem(0,3,3,1,0,0,0)
	else
	AddItem(0,3,4,1,0,0,0)		
	end
	Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh m�c 6000 nhi�m v� D� T�u nh�n ���c ph�n th��ng Trang b� An Bang")
elseif num == 80 then
	
	Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh m�c 8000 nhi�m v� D� T�u nh�n ���c ph�n th��ng Th�n Th� Phi V�n")
else
	sx1 = random(1,4)
	if sx1 == 1 then
		for i=1,random(1,3) do
			AddEventItem(118) -- NNH 1 gio
		end
	elseif sx1 == 2 then
		AddEventItem(115) -- NNH 3 gio
	elseif sx1 == 3 then
		for i=1,random(1,3) do
			AddEventItem(117) -- TLL 1 gio
		end
	else
		AddEventItem(119) -- TTL 3 gio
	end
end
--KickOutSelf()
end


function xemdsmoc()
Say("<color=green>D� T�u: <color>: Ch�n m�c nh�n ph�n th��ng: ",10,
"1000 nhi�m v� /moc1",
"2000 nhi�m v� /moc1",
"3000 nhi�m v� /moc1",
"4000 nhi�m v� /moc1",
"5000 nhi�m v� /moc1",
"6000 nhi�m v� /moc1",
"8000 nhi�m v� /moc1",
"10000 nhi�m v� /moc1",
"Ho�n th�nh 100 nhi�m v� /moc1",
"Tho�t./no")
end

function moc1(nsel)
i = nsel+1
if i == 1 then
	Talk(1,"","Ho�n th�nh 1000 nhi�m v� nh�n ���c 1 - 3 N� Nhi H�ng 6 gi� ho�c 1 - 3 Ti�n Th�o L� 6 gi� ")
elseif i == 2 then
	Talk(1,"","Ho�n th�nh 2000 nhi�m v� nh�n ���c 1 b� Th�y Tinh ho�c 1 b� Tinh H�ng B�o Th�ch")
elseif i == 3 then
	Talk(1,"","Ho�n th�nh 3000 nhi�m v� nh�n ���c 1 - 3 V� L�m M�t T�ch ho�c 1 - 3 T�y T�y Kinh ")
elseif i == 4 then
	Talk(1,"","Ho�n th�nh 4000 nhi�m v� nh�n ���c trang b� Hi�p C�t ho�c trang b� Nhu T�nh ")
elseif i == 5 then
	Talk(1,"","Ho�n th�nh 5000 nhi�m v� nh�n ���c 1 trang b� ��nh Qu�c")
elseif i == 6 then
	Talk(1,"","Ho�n th�nh 6000 nhi�m v� nh�n ���c 1 trang b� An Bang ")
elseif i == 7 then
	Talk(1,"","Ho�n th�nh 8000 nhi�m v� nh�n ���c 1 th�n th� Phi V�n ")
elseif i == 8 then
	Talk(1,"","Ho�n th�nh 10.000 nhi�m v� nh�n ���c 1 trang b� VIP c�a Sevrer [C�p nh�t sau] ")
elseif i == 9 then
	Talk(1,"","C� ho�n th�nh 100 nhi�m v� D� T�u nh�n ���c ng�u nhi�n Ti�n Th�o L�, Ti�n Th�o L� 3 gi�, N� Nhi H�ng, N� Nhi H�ng 3 gi�. S� l��ng 1 - 3")
end
end
function hoanthanh()
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
			Say("<color=green>D� T�u: <color>: Ng��i ch� t�m ���c "..GetTask(87).." / "..GetTask(86).." t�m m� mu�n ho�n th�nh nhi�m v� �, h�y �i t�m nhanh l�n !",1,
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
			Say("<color=green>D� T�u: <color>: Ng��i ch� n�ng <color=yellow>"..Tri_Diem[GetTask(88)][1].."<color> ���c <color=red>"..sl.." / "..Tri_Diem[GetTask(88)][3].."<color> �i�m, c� g�ng l�n !",1,
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
			Say("<color=green>D� T�u: <color>: Ng��i ch� n�ng <color=yellow>Tr� PK<color> ���c <color=red>"..sl.." / "..GetTask(88).."<color> �i�m, c� g�ng l�n !",1,
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
				Say("<color=green>D� T�u: <color>: Ng��i ch� n�ng <color=yellow>Tr� Kinh Nghi�m<color> ���c <color=red>"..sl.." / "..GetTask(88).."<color> �i�m, c� g�ng l�n !",1,
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
					Say("<color=green>D� T�u: <color>: Ng��i ch� n�ng <color=yellow>Tr� Kinh Nghi�m<color> ���c <color=red>"..sl2.." / "..GetTask(88).."<color> �i�m, c� g�ng l�n !",1,
					"V�ng ta s� �i ngay /no")
				end		
			else
				sl1 = GetTask(88) - GetTask(86)
				sl2 = GetLevelExp() - sl1
				sl3 = GetExp() - sl2
				Say("<color=green>D� T�u: <color>: Ng��i ch� n�ng <color=yellow>Tr� Kinh Nghi�m<color> ���c <color=red>"..sl3.." / "..GetTask(88).."<color> �i�m, c� g�ng l�n !",1,
				"V�ng ta s� �i ngay /no")
			end
		end
	end
elseif GetTask(84) == 2 then -- Da hoan thanh nhung chua nhan thuong
	SetTask(91,random(1,3))
	while 1 do
		SetTask(92,random(1,5))
		if GetTask(92) ~= GetTask(91) then
			break;
		end
	end
	while 1 do
		SetTask(93,random(1,5))
		if GetTask(93) ~= GetTask(91) and GetTask(93) ~= GetTask(92) then
			break;
		end
	end	
	nl = GetTask(84)
	SetTask(84,GetTask(84)+1)
	if (GetTask(84) == nl+1) then
		hoanthanh()
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
elseif GetTask(84) == 3 then -- Da xac nhan phan thuong chi viec chon
	OpenSlectBoxCheck(GetTask(91),GetTask(92),GetTask(93),"phanthuong")
	
end
end

function phanthuong(nid)
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
				xs2 = random(1,3)
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
item = random(1,230)
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
	rnd = random(1,9)
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
if GetLevel() >= 100 then
return 11
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
diemexp = 20 * tinh_exp_soluong() * Mang_Exp2[tinh_exp_dc()]
if GetTask(85) == 1 then
	if GetTask(88) < 1 or GetTask(88) > getn(DoChi_Map) then
	SetTask(88,11)
	end
	diem2 = 20 * GetTask(86) * Exp_Map[GetTask(88)]
elseif GetTask(85) == 2 then
	if GetTask(88) < 1 or GetTask(88) > getn(DoChi_Map) then
	SetTask(88,11)
	end
	diem2 = 400 * GetTask(86)  * Exp_Map[GetTask(88)]
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
	if GetTask(88) == 250000 then
		diem2 = diemexp / 3
	elseif GetTask(88) == 500000 then
		diem2 = diemexp / 2
	else
		diem2 = diemexp * 2 / 3
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
	diem2 = 800000
end
diem3 = 0
diem4 = 0
diem2 = floor(diem2)
diem3 = diem2 - (diem2 * 20 / 100) 
diem4 = diem2 + (diem2 * 20 / 100) 
diemnhanduoc = floor(random(diem3,diem4))*3
for chia =1,50 do
	AddOwnExp(diemnhanduoc/50)
end
Msg2Player("B�n nh�n ���c "..diemnhanduoc.." kinh nghi�m ")
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
	if GetTask(88) == 250000 then
		diem2 = diemexp / 3
	elseif GetTask(88) == 500000 then
		diem2 = diemexp / 2
	else
		diem2 = diemexp * 2 / 3
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
diem2 = floor(random(diem3,diem4))
Earn(diem2)	
Msg2Player("B�n nh�n ���c "..diem2.." l��ng ")
end

function Win_Item()
xs = random(1,100)	
if xs <= 75 then
	xs3 = random(1,3)
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
	xs2 = random(1,100)
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
	xs3 = random(1,30) 
	if xs3 == 1 then
		AddEventItem(random(28,30))
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



function xs_chonloai()
s = random(1,100)
if s <= 20 then
return 1
elseif s > 20 and s <= 85 then
return 2
else
return 3
end
end

function tinhxacsuat()
chonloai = xs_chonloai()
sx = random(1,100)
if chonloai == 1 then
	if GetLevel() < 50 then	
		return 1
	elseif GetLevel() >= 50 and GetLevel() < 100 then
		if sx <= 90 then
			return 1
		else
			return 2
		end
	else
		if sx <= 80 then
			return 1
		else
			return 2
		end
	end
elseif chonloai == 2 then
	if GetLevel() < 50 then
		return 3
	elseif GetLevel() >= 50 and GetLevel() < 100 then
		if sx < 80 then
		return 3
		elseif sx >= 80 and sx < 100 then
		return 5
		else		
		return 4
		end
	else
		if sx < 20 then
		return 3
		elseif sx >= 20 and sx < 50 then
		return 5
		elseif sx >= 50 and sx < 80 then
		return 4
		else
		return 6
		end
	end	
elseif chonloai == 3 then
	if GetLevel() < 50 then
		return 9
	elseif GetLevel() >= 50 and GetLevel() < 100 then
		if sx <= 70 then		
		return 9
		else
		return 7
		end
	else
		if sx < 50 then
		return 9
		elseif sx >= 50 and sx < 96 then
		return 7
		else
		return 8
		end		
	end
end
end



function nhannv2()
ngay = tonumber(date("%d"))
nl = GetTask(84)
SetTask(84,GetTask(84)+1)
if GetTask(84) == (nl+1) then
	if GetLevel() < 10 then
		loainv = 1
	else
		loainv = tinhxacsuat()
	end
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
		if GetLevel() >= 10 and GetLevel() < 30 then
			SetTask(88,random(61,65))
		elseif GetLevel() >= 30 and GetLevel() < 70 then
			SetTask(88,random(1,40))
		else
			SetTask(88,random(1,getn(Mua_Shop)))
		end
	elseif (loainv == 4) then
		SetTask(88,random(1,getn(TrangSuc_Ten)))
	elseif (loainv == 5) then
		SetTask(88,random(1,getn(Option)))
	elseif (loainv == 6) then
		SetTask(88,random(1,getn(Item_Option)))
		SetTask(86,random(1,getn(Item_Option2)))	
	elseif (loainv == 7) then
		SetTask(88,random(1,getn(Tri_Diem)))
		SetTask(86,GetTask(Tri_Diem[GetTask(88)][2])+Tri_Diem[GetTask(88)][3])
		SetTask(87,GetTask(Tri_Diem[GetTask(88)][2]))
	elseif (loainv == 8) then
		SetTask(88,random(1,3))
		SetTask(86,GetPK()+GetTask(88))
		SetTask(87,GetPK())
	elseif (loainv == 9) then
		kn = GetLevelExp()
		if GetLevel() < 10 then
			SetTask(88,5000)
		elseif GetLevel() >= 10 and GetLevel() < 30 then
			SetTask(88,20000)
		elseif GetLevel() >= 30 and GetLevel() < 50 then
			SetTask(88,50000)	
		else
			SetTask(88,Mang_KN[random(1,getn(Mang_KN))])
		end
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
-- Tri Kinh Nghiem
Mang_KN = {250000,500000,1000000}

-- Tri Diem
Tri_Diem = {
{"Danh V�ng",100,5},
{"Danh V�ng",100,10},
{"Danh V�ng",100,15},
{"Ph�c Duy�n",162,10},
{"Ph�c Duy�n",162,20},
{"Ph�c Duy�n",162,30},
{"Ph�c Duy�n",162,10},
{"Ph�c Duy�n",162,20},
{"Ph�c Duy�n",162,30},
}

-- Tim Item + Option

Item_Option2 = {
{"T�ng Sinh L�c",85},
{"T�ng N�i L�c",89},
{"T�ng Th� L�c",93},
{"T�ng Kh�ng ��c",101},
{"T�ng Kh�ng H�a",102},
{"T�ng Kh�ng L�i",103},
{"T�ng Kh�ng B�ng",105},
{"Th�i Gian L�m Ch�m",106},
{"Th�i Gian Tr�ng ��c",108},
{"Th�i Gian Cho�ng",110},
{"May M�n",135},
}

Item_Option = {
{"Ho�ng Ng�c Gi�i Ch� ",3,0,1},
{"Nh�n Qu� Tr�m",3,0,2,},
{"Ph� Dung Th�ch Gi�i Ch� ",3,0,3},
{"D�y Chuy�n ��ng",4,0,1},
{"Ng�n H�ng Li�m",4,0,2},
{"Kim H�ng Li�m",4,0,3},
{"L�c T�ng Th�ch H� Th�n Ph� ",4,1,1},
{"San H� H� Th�n Ph� ",4,1,2},
{"Mi�u Nh�n H� Th�n Ph� ",4,1,3},
{"Hu�n Y H��ng Nang",9,0,1},
{"M�t L� H��ng Nang",9,0,2},
{"Nh� H��ng H��ng Nang",9,0,3},
{"L�c Du Ng�c B�i",9,1,1},
{"Kinh B�ch Ng�c B�i",9,1,2},
{"��o Hoa Ng�c B�i",9,1,3},
}


-- Tim Option
Option = {
{"T�ng sinh l�c",85,1,100},
{"T�ng sinh l�c",85,50,150},
{"T�ng sinh l�c",85,100,200},
{"T�ng n�i l�c",89,1,100},
{"T�ng n�i l�c",89,50,150},
{"T�ng n�i l�c",89,100,200},
{"T�ng th� l�c",93,1,100},
{"T�ng th� l�c",93,50,150},
{"T�ng th� l�c",93,100,200},
{"T�ng kh�ng t�t c� ",114,1,5},
{"T�ng kh�ng t�t c� ",114,5,10},
{"T�ng S�c M�nh",97,1,3},
{"T�ng S�c M�nh",97,3,5},
{"T�ng S�c M�nh",97,5,10},
{"T�ng Th�n Ph�p",98,1,3},
{"T�ng Th�n Ph�p",98,3,5},
{"T�ng Th�n Ph�p",98,5,10},
{"T�ng Sinh Kh� ",99,1,3},
{"T�ng Sinh Kh� ",99,3,5},
{"T�ng Sinh Kh� ",99,5,10},
{"T�ng Kh�ng ��c",101,1,5},
{"T�ng Kh�ng ��c",101,5,10},
{"T�ng Kh�ng ��c",101,10,15},
{"T�ng Kh�ng H�a",102,1,5},
{"T�ng Kh�ng H�a",102,5,10},
{"T�ng Kh�ng H�a",102,10,15},
{"T�ng Kh�ng L�i",103,1,5},
{"T�ng Kh�ng L�i",103,5,10},
{"T�ng Kh�ng L�i",103,10,15},
{"T�ng Ph�ng Th� ",104,1,5},
{"T�ng Ph�ng Th� ",104,5,10},
{"T�ng Ph�ng Th� ",104,10,15},
{"T�ng Kh�ng B�ng",105,1,5},
{"T�ng Kh�ng B�ng",105,5,10},
{"T�ng Kh�ng B�ng",105,10,15},
{"Th�i Gian L�m Ch�m",106,20,20},
{"Th�i Gian Tr�ng ��c",108,20,20},
{"Th�i Gian Cho�ng",110,20,20},
{"Th�i Gian Ph�c H�i",113,20,20},
{"T�c �� ��nh ngo�i c�ng",115,10,10},
{"T�c �� ��nh ngo�i c�ng",115,20,20},
{"H�t n�i l�c",137,1,3},
{"H�t sinh l�c",136,1,3},
{"T�ng may m�n",135,1,5},
{"Ph�c h�i sinh l�c",88,1,5},
}

-- Nhiem vu Tim Trang Suc 

-- Trang Suc Theo Ten
TrangSuc_Ten = {
{"Ho�ng Ng�c Gi�i Ch� - H� Kim",3,0,1,0},
{"Ho�ng Ng�c Gi�i Ch� - H� M�c",3,0,1,1},
{"Ho�ng Ng�c Gi�i Ch� - H� Th�y",3,0,1,2},
{"Ho�ng Ng�c Gi�i Ch� - H� H�a",3,0,1,3},
{"Ho�ng Ng�c Gi�i Ch� - H� Th� ",3,0,1,4},
{"Nh�n Qu� Tr�m - H� Kim",3,0,2,0},
{"Nh�n Qu� Tr�m - H� M�c",3,0,2,1},
{"Nh�n Qu� Tr�m - H� Th�y",3,0,2,2},
{"Nh�n Qu� Tr�m - H� H�a",3,0,2,3},
{"Nh�n Qu� Tr�m - H� Th� ",3,0,2,4},
{"Ph� Dung Th�ch Gi�i Ch� - H� Kim",3,0,3,0},
{"Ph� Dung Th�ch Gi�i Ch� - H� M�c",3,0,3,1},
{"Ph� Dung Th�ch Gi�i Ch� - H� Th�y",3,0,3,2},
{"Ph� Dung Th�ch Gi�i Ch� - H� H�a",3,0,3,3},
{"Ph� Dung Th�ch Gi�i Ch� - H� Th� ",3,0,3,4},
{"D�y Chuy�n ��ng - H� Kim",4,0,1,0},
{"D�y Chuy�n ��ng - H� M�c",4,0,1,1},
{"D�y Chuy�n ��ng - H� Th�y",4,0,1,2},
{"D�y Chuy�n ��ng - H� H�a",4,0,1,3},
{"D�y Chuy�n ��ng - H� Th� ",4,0,1,4},
{"Ng�n H�ng Li�m - H� Kim",4,0,2,0},
{"Ng�n H�ng Li�m - H� M�c",4,0,2,1},
{"Ng�n H�ng Li�m - H� Th�y",4,0,2,2},
{"Ng�n H�ng Li�m - H� H�a",4,0,2,3},
{"Ng�n H�ng Li�m - H� Th� ",4,0,2,4},
{"Kim H�ng Li�m - H� Kim",4,0,3,0},
{"Kim H�ng Li�m - H� M�c",4,0,3,1},
{"Kim H�ng Li�m - H� Th�y",4,0,3,2},
{"Kim H�ng Li�m - H� H�a",4,0,3,3},
{"Kim H�ng Li�m - H� Th� ",4,0,3,4},
{"L�c T�ng Th�ch H� Th�n Ph� - H� Kim",4,1,1,0},
{"L�c T�ng Th�ch H� Th�n Ph� - H� M�c",4,1,1,1},
{"L�c T�ng Th�ch H� Th�n Ph� - H� Th�y",4,1,1,2},
{"L�c T�ng Th�ch H� Th�n Ph� - H� H�a",4,1,1,3},
{"L�c T�ng Th�ch H� Th�n Ph� - H� Th� ",4,1,1,4},
{"San H� H� Th�n Ph� - H� Kim",4,1,2,0},
{"San H� H� Th�n Ph� - H� M�c",4,1,2,1},
{"San H� H� Th�n Ph� - H� Th�y",4,1,2,2},
{"San H� H� Th�n Ph� - H� H�a",4,1,2,3},
{"San H� H� Th�n Ph� - H� Th� ",4,1,2,4},
{"Mi�u Nh�n H� Th�n Ph� - H� Kim",4,1,3,0},
{"Mi�u Nh�n H� Th�n Ph� - H� M�c",4,1,3,1},
{"Mi�u Nh�n H� Th�n Ph� - H� Th�y",4,1,3,2},
{"Mi�u Nh�n H� Th�n Ph� - H� H�a",4,1,3,3},
{"Mi�u Nh�n H� Th�n Ph� - H� Th� ",4,1,3,4},
{"Hu�n Y H��ng Nang - H� Kim",9,0,1,0},
{"Hu�n Y H��ng Nang - H� M�c",9,0,1,1},
{"Hu�n Y H��ng Nang - H� Th�y",9,0,1,2},
{"Hu�n Y H��ng Nang - H� H�a",9,0,1,3},
{"Hu�n Y H��ng Nang - H� Th� ",9,0,1,4},
{"M�t L� H��ng Nang - H� Kim",9,0,2,0},
{"M�t L� H��ng Nang - H� M�c",9,0,2,1},
{"M�t L� H��ng Nang - H� Th�y",9,0,2,2},
{"M�t L� H��ng Nang - H� H�a",9,0,2,3},
{"M�t L� H��ng Nang - H� Th� ",9,0,2,4},
{"Nh� H��ng H��ng Nang - H� Kim",9,0,3,0},
{"Nh� H��ng H��ng Nang - H� M�c",9,0,3,1},
{"Nh� H��ng H��ng Nang - H� Th�y",9,0,3,2},
{"Nh� H��ng H��ng Nang - H� H�a",9,0,3,3},
{"Nh� H��ng H��ng Nang - H� Th� ",9,0,3,4},
{"L�c Du Ng�c B�i - H� Kim",9,1,1,0},
{"L�c Du Ng�c B�i - H� M�c",9,1,1,1},
{"L�c Du Ng�c B�i - H� Th�y ",9,1,1,2},
{"L�c Du Ng�c B�i - H� H�a",9,1,1,3},
{"L�c Du Ng�c B�i - H� Th� ",9,1,1,4},
{"Kinh B�ch Ng�c B�i - H� Kim",9,1,2,0},
{"Kinh B�ch Ng�c B�i - H� M�c",9,1,2,1},
{"Kinh B�ch Ng�c B�i - H� Th�y",9,1,2,2},
{"Kinh B�ch Ng�c B�i - H� H�a",9,1,2,3},
{"Kinh B�ch Ng�c B�i - H� Th� ",9,1,2,4},
{"��o Hoa Ng�c B�i - H� Kim",9,1,3,0},
{"��o Hoa Ng�c B�i - H� M�c",9,1,3,1},
{"��o Hoa Ng�c B�i - H� Th�y",9,1,3,2},
{"��o Hoa Ng�c B�i - H� H�a",9,1,3,3},
{"��o Hoa Ng�c B�i - H� Th� ",9,1,3,4}
}





-- Nhiem Vu Mua Do O Shop
Mua_Shop = {
{"T�p H�a","Ph��ng T��ng","Ng�u B� Y�u ��i",6,0,1},
{"T�p H�a","Ph��ng T��ng","Lang B� Y�u ��i",6,0,2},
{"T�p H�a","Ph��ng T��ng","� ��ng Y�u ��i",6,0,3},
{"T�p H�a","Ph��ng T��ng","M�ng B� Y�u ��i",6,0,4},
{"T�p H�a","Ph��ng T��ng","Ng�c B� Y�u ��i",6,0,5},
{"T�p H�a","Ph��ng T��ng","Tinh ��ng Y�u ��i",6,1,1},
{"T�p H�a","Ph��ng T��ng","T�ch Y�u ��i",6,1,2},
{"T�p H�a","Ph��ng T��ng","Ho�ng ��ng Y�u ��i",6,1,3},
{"T�p H�a","Ph��ng T��ng","Thi�t Y�u ��i",6,1,4},
{"T�p H�a","Ph��ng T��ng","Tinh ��ng Y�u ��i",6,1,5},
{"T�p H�a","Th�nh ��","Thanh ��ng Th� Tr�c",8,0,1},
{"T�p H�a","Th�nh ��","Luy�n ��ng Th� Tr�c",8,0,2},
{"T�p H�a","Th�nh ��","T�n Thi�t H� Uy�n",8,0,3},
{"T�p H�a","Th�nh ��","Ng�n T� Tr�c",8,0,4},
{"T�p H�a","Th�nh ��","Kim T� Tr�c",8,0,5},
{"T�p H�a","Th�nh ��","Ng�u B� H� Uy�n",8,1,1},
{"T�p H�a","Th�nh ��","Lang B� H� Uy�n",8,1,2},
{"T�p H�a","Th�nh ��","� ��ng H� Uy�n",8,1,3},
{"T�p H�a","Th�nh ��","M�ng B� H� Uy�n",8,1,4},
{"T�p H�a","Th�nh ��","Ng�c B� H� Uy�n",8,1,5},
{"T�p H�a","T��ng D��ng","Th�o Ngoa",5,0,1},
{"T�p H�a","T��ng D��ng","B� Ngoa",5,0,2},
{"T�p H�a","T��ng D��ng","Thi�n T�ng B� Ngoa",5,0,3},
{"T�p H�a","T��ng D��ng","C�t Ngoa",5,0,4},
{"T�p H�a","T��ng D��ng","Ng�u B� Ngoa",5,1,1},
{"T�p H�a","T��ng D��ng","T�t Ngoa",5,1,2},
{"T�p H�a","T��ng D��ng","� B� Ngoa",5,1,3},
{"T�p H�a","T��ng D��ng","��ng M�ng Ngoa",5,1,4},
{"T�p H�a","T��ng D��ng","T� Ngoa",5,2,1},
{"T�p H�a","T��ng D��ng","L�ng T� Ngoa",5,2,2},
{"T�p H�a","Bi�n Kinh","Sa Di Ph�c",2,0,1},
{"T�p H�a","Bi�n Kinh","�o kho�c c�a ��o s� ",2,1,1},
{"T�p H�a","Bi�n Kinh","C�n Y",2,2,1},
{"T�p H�a","Bi�n Kinh","Th� B� tr��ng b�o",2,3,1},
{"T�p H�a","Bi�n Kinh","T�a T� Gi�p",2,4,1},
{"T�p H�a","Bi�n Kinh","Lan B� Y",2,5,1},
{"T�p H�a","Bi�n Kinh","�o v�i th� ",2,6,1},
{"T�p H�a","Bi�n Kinh","Sa Ni Ph�c",2,7,1},
{"T�p H�a","Bi�n Kinh","N� Th�c ��o Y",2,8,1},
{"T�p H�a","Bi�n Kinh","Th�c C�m Y",2,9,1},
{"B�n Ng�a","Bi�n Kinh","Li�t Ho�ng M� ",10,0,1},
{"B�n Ng�a","Bi�n Kinh","Li�t Ho�ng M� ",10,0,2},
{"B�n Ng�a","Bi�n Kinh","Ho�ng M� ",10,0,3},
{"B�n Ng�a","Bi�n Kinh","Ho�ng M� ",10,0,4},
{"B�n Ng�a","Bi�n Kinh","Ho�ng Phi�u",10,0,5},
{"B�n Ng�a","T��ng D��ng","Li�t B�ch M� ",10,2,1},
{"B�n Ng�a","T��ng D��ng","Li�t B�ch M� ",10,2,2},
{"B�n Ng�a","T��ng D��ng","B�ch M� ",10,2,3},
{"B�n Ng�a","T��ng D��ng","B�ch M� ",10,2,4},
{"B�n Ng�a","T��ng D��ng","Ng�c Hoa Th�ng",10,2,5},
{"B�n Ng�a","Th�nh ��","Li�t H�c M� ",10,3,1},
{"B�n Ng�a","Th�nh ��","Li�t H�c M� ",10,3,2},
{"B�n Ng�a","Th�nh ��","H�c M� ",10,3,3},
{"B�n Ng�a","Th�nh ��","H�c M� ",10,3,4},
{"B�n Ng�a","Th�nh ��","H�c K� ",10,3,5},
{"B�n Ng�a","Ph��ng T��ng","Li�t Thanh M� ",10,1,1},
{"B�n Ng�a","Ph��ng T��ng","Li�t Thanh M� ",10,1,2},
{"B�n Ng�a","Ph��ng T��ng","Thanh Th�ng",10,1,3},
{"B�n Ng�a","Ph��ng T��ng","Thanh Th�ng",10,1,4},
{"B�n Ng�a","Ph��ng T��ng","T� L�u",10,1,5},
{"T�p H�a","Ba L�ng Huy�n","Sa Di Ph�c",2,0,1},
{"T�p H�a","Ba L�ng Huy�n","�o Kho�c ��o s� ",2,1,1},
{"T�p H�a","Ba L�ng Huy�n","C�n Y",2,2,1},
{"T�p H�a","Ba L�ng Huy�n","Th� B� Tr��ng B�o",2,3,1},
{"T�p H�a","Ba L�ng Huy�n","Lan B� Y",2,5,1},

}

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
elseif lv >= 30 and lv < 60 then
return 6
elseif lv >= 60 and lv < 80 then
return 9
elseif lv >= 80 and lv < 120 then
return 12
else
return 15
end
end

function soluongmatchi()
lv = GetLevel()
if lv < 80 then
return 1
elseif lv >= 80 and lv < 120 then
return random(1,2)
else
return random(1,3)
end
end

function mapdochi()
lv = GetLevel()
if lv < 90 then
return floor(lv/10)+1
else
return random(10,13)
end
end

DoChi_Map = {"Ba L�ng Huy�n","Hoa S�n","Ph�c Ng�u S�n","Tuy�t B�o ��ng","D��c V��ng ��ng","T�n L�ng","Xi V�u ��ng","L�m Du Quan","Ch�n N�i Tr��ng B�ch","Tr��ng B�ch S�n Nam","Tr��ng B�ch S�n B�c","M�c Cao Qu�t","M�n B�c Th�o Nguy�n"}
Exp_Map = {37,92,202,285,487,562,637,825,1200,1500,1500,1500,1500}
Mang_Exp2 = {37,92,202,285,487,562,637,825,1200,1500,1800}
Mang_Gold2 = {32,60,124,180,245,360,420,528,631,745,900}

function huy()
if GetTask(90) == 0 then
	Say("<color=green>D� T�u: <color>: Hi�n t�i b�n kh�ng c� c� h�i n�o �� h�y b� nhi�m v�, b�n ch� c� th� l�m l�i t� ��u th�i ! ",3,
	"��ng, ta kh�ng mu�n l�m nhi�m v� qu� qu�i n�y ��u /huynv1",
	"Ta mu�n s� d�ng 100 m�nh S�n H� X� T�c �� h�y b� nhi�m v� l�n n�y /huynv2",
	"Uhm! �� ta suy ngh� l�i �� /no")
else
	Say("<color=green>D� T�u: <color>: Hi�n t�i b�n v�n c�n <color=yellow>"..GetTask(90).."<color> c� h�i h�y b� nhi�m v�, s� �i�m t�ch l�y v�n ���c gi� nguy�n. ",2,
	"��ng, ta kh�ng mu�n l�m nhi�m v� qu� qu�i n�y ��u /huynv3",
	"Ta s� c� g�ng l�m ti�p nhi�m v� n�y /no")
end
end

function huynv1()
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

