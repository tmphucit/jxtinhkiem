-- function main()
-- Talk(1,"","T�nh n�ng t�m kh�a ��i c�p nh�t t�nh n�ng m�i thay th� !")
-- end
function main()
	dofile("script\\admin\\shopktc.lua")
	local nW,nX,nY = GetWorldPos()

	if(GetFightState() == 1) then
	-- Talk(1,"","T�nh n�ng t�m kh�a ��i c�p nh�t t�nh n�ng m�i thay th� !")
		Talk(1,"","Tr�ng th�i kh�ng ���c b�o v�, kh�ng th� th�c hi�n.")
	return end
	 Sale(97,1)
end

function shopvang()
Sale(97,1)
end

function shopnganluong()
-- if GetFightState() == 1 then
-- Talk(1,"","Tr�ng th�i luy�n c�ng m�i c� th� mua v�t ph�m !")
-- return
-- end
-- if GetBlockBox() == 1 then
-- Talk(1,"","B�n ch�a m� kh�a r��ng, kh�ng th� mua v�t ph�m!")
-- return
-- end
SayNew("Ch�n lo�i mu�n mua ",3,
"V�t ph�m h� tr� game/chonloai",
"V�t ph�m qu� /chonloai",
--"Mua KNB = 250 V�n + 50 Danh V�ng /muaknbbangkv",
--"��i KNB = 200 V�n /doiknbtienvan",

"Tho�t./no")
end


function thuyenrong_trong()
	if CheckFreeBoxItem(4,260,1,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
	return
	end
	vang = GetTask(99)
	vang2 = GetTask(101)
	if GetTask(99) >= 10 and GetTask(101) >= 10 then
		SetTask(99,GetTask(99) - 10)
		SetTask(101,GetTask(101) - 10)
		if GetTask(99) == vang-10 and GetTask(101) == vang2 - 10 and GetTask(99) == GetTask(101) then
			AddEventItem(362)
			Msg2Player("B�n nh�n ���c 1 H�p Kim Ch�")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","B�n kh�ng �� <color=yellow>10<color> v�ng, kh�ng th� giao d�ch!")
	end
end


function doiknbtienvan()
	if CheckFreeBoxItem(4,261,1,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
	return
	end
	
	if GetTask(100) < 30 then
	Talk(1,"","Ng��i kh�ng c� �� 30 danh v�ng , kh�ng th� mua")
	return
	end
	
	if GetTask(505) < 50 then
	Talk(1,"","Ng��i kh�ng c� �� t�ch l� 50 Xu, kh�ng th� mua")
	return
	end
	
	if GetItemCount(17) < 1 then
	Talk(1,"","Ng��i kh�ng mang theo KNB, xin ki�m tra l�i !")
	return
	end
	if GetItemCount(17) >= 1 then
		DelItem(17)
		Earn(2000000)
		Msg2Player("B�n nh�n ���c 200 V�n L��ng ")
	end
end


function muaknbbangkv()
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
return
end

if GetCash() < 2500000 then
Talk(1,"","Ng��i kh�ng mang �� 250 v�n l��ng, kh�ng th� mua")
return
end
if GetTask(100) < 50 then
Talk(1,"","Ng��i kh�ng c� �� 100 danh v�ng, kh�ng th� mua")
return
end
	Pay(2500000)
	SetTask(100, GetTask(100) - 50)
	idxitem = AddEventItem(17)
	Msg2SubWorld("Ch�c m�ng "..GetName().." �� mua th�nh c�ng <color=green>"..GetNameItemBox(idxitem).."")
end


function thucuoi()
SayNew("Hi�n ng��i �ang c� <color=yellow>"..GetTask(99).." V�ng<color>. H�y ch�n v�t ph�m mu�n mua :",7,
"� V�n ��p Tuy�t [60 v�ng]/thucuoi1",
"X�ch Th� [80 v�ng]/thucuoi1",
"Tuy�t �nh [50 v�ng]/thucuoi1",
"��ch L� [50 v�ng]/thucuoi1",
"Chi�u D� 30 ng�y [50 v�ng]/thucuoi2",
"Phi V�n 30 ng�y [100 v�ng]/thucuoi3",
"Tho�t./no")
end

function thucuoi2()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

vang = GetTask(99)
gia = 50
	if CheckFreeBoxItem(0,10,5,1) == 0 then
			Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
			return
			end
if GetTask(99) >= gia then
	SetTask(99 , GetTask(99) - gia)
	SetTask(101, GetTask(99))
	if GetTask(99) == vang - gia then
		idxitem = AddItem(0,10,5,5,0,0,0)
		SetHSD(idxitem , 2017, thang + 1, ngay , gio)
		Msg2Player("B�n nh�n ���c 1 Chi�u D� Ng�c  S� T� ")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� "..gia.." v�ng, kh�ng th� mua !")
end	
end
function thucuoi3()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

vang = GetTask(99)
gia = 100
	if CheckFreeBoxItem(0,10,5,1) == 0 then
			Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
			return
			end
if GetTask(99) >= gia then
	SetTask(99 , GetTask(99) - gia)
	SetTask(101, GetTask(99))
	if GetTask(99) == vang - gia then
		idxitem = AddItem(0,10,8,1,0,0,0)
		SetHSD(idxitem , 2017, thang + 1, ngay , gio)
		Msg2Player("B�n nh�n ���c 1 Phi V�n ")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� "..gia.." v�ng, kh�ng th� mua !")
end	
end


function thucuoi1(nsel)
i = nsel + 1
vang = GetTask(99)
gia = 120
name = "Phi V�n"
if i == 1 then
	gia = 60
	name = "� V�n ��p Tuy�t"
elseif i == 2 then
	gia = 80
	name = "X�ch Th� "
elseif i == 3 then
	gia = 50
	name = "Tuy�t �nh"	
elseif i == 4 then
	gia = 50
	name = "��ch L� "	
end

	if CheckFreeBoxItem(0,10,5,1) == 0 then
			Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
			return
			end
		
		
if GetTask(99) >= gia then
	SetTask(99 , GetTask(99) - gia)
	SetTask(101, GetTask(99))
	if GetTask(99) == vang - gia then
			itemidx = AddItem(0,10,5,i,0,0,0)
			Msg2Player("B�n nh�n ���c 1 "..GetNameItemBox(itemidx).."")
			inlog2("[VIP] "..GetNameItemBox(itemidx).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Vang con: "..GetTask(99).."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� "..gia.." v�ng, kh�ng th� mua !")
end
end

function chonloai(nsel)
i = nsel + 1
SetTaskTemp(2, i)
if i == 1 then
SayNew("H�y ch�n v�t ph�m mu�n mua :",6,
"Ti�n Th�o L� 6H [150 v�n]/muavphotro",
"N� Nhi H�ng 6H [150 v�n]/muavphotro",  
"X� L�i Kim ��n [15 v�n]/muavphotro",
"Thi�n S�n B�o L� [100 v�n]/muavphotro",
"B�t Nh� T�m Kinh [500 v�n]/muavphotro",
-- "Phi Phong [10 v�n]/muavphotro",
-- "Th�a Ti�n M�t 3D [200 v�n]/muavphotro",
-- "Th�a Ti�n M�t 7D [500 v�n]/muavphotro",
"Tho�t./no")
elseif i == 2 then
SayNew("H�y ch�n v�t ph�m mu�n mua :",7,
"T� Th�y Tinh [200 v�n]/muavpquy",
"L�c Th�y Tinh [150 v�n]/muavpquy",
"Lam Th�y Tinh [150 v�n]/muavpquy",
"Tinh H�ng B�o Th�ch [150 v�n]/muavpquy", 
"L�nh b�i Phong L�ng �� [30 v�n]/muavpquy",
"L�nh b�i V��t �i [30 v�n]/muavpquy",
-- "L�nh b�i �y th�c [100 v�n]/muavpquy",
"Tho�t./no")
end
end
mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function muavpquy(nsel)
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","H�nh trang kh�ng �� 2 x 3 ch� tr�ng, kh�ng th� mua.")
return
end
i = nsel + 1
sotien = 0
idvatpham = 0
if i == 1 then
sotien = 2000000
idvatpham = 29
elseif i == 2 then
sotien = 1500000
idvatpham = 30
elseif i == 3 then
sotien = 1500000
idvatpham = 28
elseif i == 4 then
sotien = 1500000
idvatpham = 31
elseif i == 5 then
sotien = 300000
idvatpham = 135
elseif i == 6 then
sotien = 300000
idvatpham = 156
elseif i == 7 then
sotien = 1000000
idvatpham = 725
end

if idvatpham == 0 then
Talk(1,"","L�i, li�n h� admin x� l� !")
return
end

van = GetCash()
if van > sotien then
	Pay(sotien)
	if GetCash() == van - sotien then
		idxitem = AddEventItem(idvatpham)
		Msg2Player("B�n v�a mua <color=yellow>"..GetNameItemBox(idxitem).." trong K� Tr�n C�c")
		inlog2("Name: "..GetNameItemBox(idxitem).." - ID:"..idvatpham.." - Num: "..GetItemCount(idvatpham).." Old: "..van.." - New: "..GetCash().." Info: ["..GetAccount().."]  ["..GetName().."] ["..GetLevel().."]")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng �� "..sotien.." l��ng, kh�ng th� mua v�t ph�m n�y !")
end


end
function muavphotro(nsel)
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","H�nh trang kh�ng �� 2 x 3 ch� tr�ng, kh�ng th� mua.")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
i = nsel + 1
sotien = 0
idvatpham = 0
if i == 1 then
sotien = 1500000
idvatpham = 120
elseif i == 2 then
sotien = 1500000
idvatpham = 116
elseif i == 3 then
sotien = 150000
idvatpham = 59
elseif i == 4 then
sotien = 1000000
idvatpham = 653
elseif i == 5 then
sotien = 5000000
idvatpham = 252
elseif i == 6 then
sotien = 100000
idvatpham = 251
elseif i == 7 then
sotien = 2000000
idvatpham = 264
elseif i == 8 then
sotien = 5000000
idvatpham = 264
end

if idvatpham == 0 then
Talk(1,"","L�i, li�n h� admin x� l� !")
return
end

van = GetCash()
if van > sotien then
	Pay(sotien)
	if GetCash() == van - sotien then
		idxitem = AddEventItem(idvatpham)
		if i == 6 then
			ngay = ngay + 1
			if ngay > mangthang[thang] then
				ngay = ngay - mangthang[thang]
				thang = thang + 1
			end
			SetHSD(idxitem, 2022 , thang, ngay, gio )
			SetBindItem(idxitem,1)
		elseif i == 7 then
			ngay = ngay + 3
			if ngay > mangthang[thang] then
				ngay = ngay - mangthang[thang]
				thang = thang + 1
			end
			SetHSD(idxitem, 2022 , thang, ngay, gio )
			SetBindItem(idxitem,1)
			
		elseif i == 8 then
			ngay = ngay + 7
			if ngay > mangthang[thang] then
				ngay = ngay - mangthang[thang]
				thang = thang + 1
			end
			SetHSD(idxitem, 2022 , thang, ngay, gio )
			SetBindItem(idxitem,1)
			
		end
		Msg2Player("B�n v�a mua <color=yellow>"..GetNameItemBox(idxitem).." trong K� Tr�n C�c")
		inlog2("Name: "..GetNameItemBox(idxitem).." - ID:"..idvatpham.." - Num: "..GetItemCount(idvatpham).." Old: "..van.." - New: "..GetCash().." Info: ["..GetAccount().."]  ["..GetName().."] ["..GetLevel().."]")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng �� "..sotien.." l��ng, kh�ng th� mua v�t ph�m n�y !")
end
end



function shop1_1()
SayNew("Ng��i c� ch�c ch�n mu�n mua <color=yellow>Nh�n 2 Kinh Nghi�m 1 Ng�y<color> v�i gi� <color=yellow>15 v�ng<color> kh�ng?",2,
"Ta ��ng � /shop1_1_x",
"Tho�t./no")
end

function shop1_1_x()
ngay = tonumber(date("%d"))
vang = GetTask(99)
if GetTask(99) >= 15 then
	SetTask(99, GetTask(99) - 15)
	SetTask(101, GetTask(101) - 15)
	if GetTask(99) == vang - 15 then
		SetTask(172, GetTask(172) + 24*60*60*18)
		AddSkillEffect(460,1,GetTask(172))
		SetTask(141,1)
		Msg2Player("B�n nh�n ���c th�m 1 ng�y nh�n ��i kinh nghi�m. Th�i gian nh�n ��i hi�n t�i: <color=yellow>"..floor(GetTask(172) / 1080).." ph�t")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng �� 15 v�ng, kh�ng th� mua")
end
end


function shop1_2()
SayNew("Ng��i c� ch�c ch�n mu�n mua <color=yellow>Max V� L�m M�t T�ch<color> v�i gi� <color=yellow>50 v�ng<color> kh�ng?",2,
"Ta ��ng � /shop1_2_x",
"Tho�t./no")
end

function shop1_2_x()
if GetTask(199) == 10 then
return
end

ngay = tonumber(date("%d"))
vang = GetTask(99)
giatien = 50
if GetTask(99) >= giatien then
	SetTask(99, GetTask(99) - giatien)
	SetTask(101, GetTask(101) - giatien)
	if GetTask(99) == vang - giatien then
		AddMagicPoint(10-GetTask(199))
		SetTask(199, 10)
		KickOutSelf()
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng �� "..giatien.." v�ng, kh�ng th� mua")
end
end


function shop1_3()
SayNew("Ng��i c� ch�c ch�n mu�n mua <color=yellow>Max T�y T�y Kinh<color> v�i gi� <color=yellow>30 v�ng<color> kh�ng?",2,
"Ta ��ng � /shop1_3_x",
"Tho�t./no")
end

function shop1_3_x()
if GetTask(198) == 5 then
return
end

ngay = tonumber(date("%d"))
vang = GetTask(99)
giatien = 30
if GetTask(99) >= giatien then
	SetTask(99, GetTask(99) - giatien)
	SetTask(101, GetTask(101) - giatien)
	if GetTask(99) == vang - giatien then
		AddProp(5*(5-GetTask(198)))
		SetTask(198, 5)
		Msg2Player("B�n �� Max T�y T�y Kinh")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng �� "..giatien.." v�ng, kh�ng th� mua")
end
end
function muaktc(nsel)
i = nsel + 1
SetTaskTemp(1,i)
OpenStringBox (2,"Nh�p S� L��ng" , "acceptcode1")
end
function acceptcode1(num2)
num = tonumber(num2)
SetTaskTemp(3 ,num)
SayNew("Ng��i c� ch�c ch�n mu�n mua <color=yellow>"..num.."x "..MangKTC[GetTaskTemp(2)][GetTaskTemp(1)][1].."<color> v�i gi� <color=yellow>"..(MangKTC[GetTaskTemp(2)][GetTaskTemp(1)][2]*num).." v�ng<color> kh�ng?",2,
"Ta ��ng � /muaktc2",
"Tho�t./no")
end


function muaktc2()

i = GetTaskTemp(2)
j = GetTaskTemp(1)
sl = GetTaskTemp(3)
tongtien = sl*MangKTC[i][j][2]
if GetTask(99) >= tongtien then
		for k=1,sl do 
			if CheckFreeBoxItem(4,MangKTC[i][j][3],1,1) == 0 then
			Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
			break
			end
		
			vang = GetTask(99)
			SetTask(99, GetTask(99) - MangKTC[i][j][2])
			SetTask(101 , GetTask(99))
			if GetTask(99) == vang - MangKTC[i][j][2] then
				AddEventItem(MangKTC[i][j][3])
				Msg2Player("B�n nh�n ���c <color=yellow>1 "..MangKTC[i][j][1].."")
				inlog2(""..MangKTC[i][j][1].." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Vang con: "..GetTask(99).."")
				Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
		end
else
	Talk(1,"","Ng��i kh�ng �� <color=yellow>"..tongtien.." v�ng<color> �� mua <color=green>"..sl.."x "..MangKTC[i][j][1].."<color>. H�y ki�m tra l�i")
end
end


function inlog2(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/KyTranCac.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


MangKTC = {
{ -- Loai 1
	--{"Ti�n Th�o L� 1 Gi� ",1,117}, -- 7
	--{"Ti�n Th�o L� 3 Gi� ",3,119},
	--{"Ti�n Th�o L� 6 Gi� ",6,120},
	--{"N� Nhi H�ng 1 Gi� ",1,118},
	--{"N� Nhi H�ng 3 Gi� ",3,115},
	--{"N� Nhi H�ng 6 Gi� ",6,116},
},
{ -- Loai 2
	{"X� L�i Kim ��n",1,59},
	{"B�n Nh��c T�m Kinh",5,252},
	{"Phi Phong",5,251},
	{"T� Th�y Tinh",6,29},
	{"L�c Th�y Tinh",6,30},
	{"Lam Th�y Tinh",6,28},
	--{"Tinh H�ng B�o Th�ch",4,31},
	--{"V� L�m M�t T�ch",10,0},
	--{"T�y T�y Kinh",10,1},
	{"T�i M�t N� ",10,188},
	{"Nh�c V��ng Ki�m",100,164},
},
{
	{"L�nh b�i Phong L�ng �� ",1,135},
	{"L�nh b�i Li�n Ho�n �i ",1,156},
	{"Ho�ng Kim S�t Ti�u ",5,128},
	{"Ho�ng Kim S�t ��i ",10,129},
},
}

function no()
end


function doimatkhau()
Talk(1,"","T�nh n�ng �ang ho�n thi�n !")
end
function taomatkhau()
if GetTask(152) == 0 then
Talk(1,"","B�n ch�a t�o m�t kh�u r��ng, kh�ng th� t�o m�t kh�u k� tr�n c�c")
return
end
if loaitru(GetTask(152)) == 0 or loaitru(GetTask(152)) == 1 then
Talk(1,"","M�t kh�u r��ng c�a b�n kh�ng ��ng nguy�n t�c, vui l�ng t�o m�t kh�u r��ng kh�c")
return 
end

if GetTask(305) == 0 then
	OpenStringBox(1,"T�o M� KTC","Accept")
else
	Talk(1,"","B�n �� c� <color=yellow>M�t Kh�u K� Tr�n C�c<color>, kh�ng th� t�o !")
end
end

function moshop()
		if GetTask(305) == 0 then
				Sale(24,1)
				Msg2Player("<color=pink>H� Th�ng:<color=red> H�y t�o m�t kh�u K� Tr�n C�c �� ��m b�o an to�n cho b�n. N�u b�n kh�ng t�o m�t kh�u m� b� hack ch�ng t�i s� kh�ng gi�i quy�t")
		else
				OpenStringBox(1,"Nh�p M� KTC","Accept2")
		end
end

function loaitru(num)
mang = {}
mang[1] = floor(num/100000)
mang[2] = floor((num - mang[1]*100000)/10000)
mang[3] = floor((num - mang[1]*100000 - mang[2]*10000)/1000)
mang[4] = floor((num - mang[1]*100000 - mang[2]*10000  - mang[3]*1000)/100)
mang[5] = floor((num - mang[1]*100000 - mang[2]*10000  - mang[3]*1000 - mang[4]*100)/10)
mang[6] = floor(num - mang[1]*100000 - mang[2]*10000  - mang[3]*1000 - mang[4]*100  - mang[5]*10)

sltrung = 0
for i=1,6 do
	sltrung = 1
	for j=i,6 do
		if mang[i] == mang[j] and i ~= j then
			sltrung = sltrung + 1
		end
	end
	if sltrung >= 3 then
		break
	end
end

sldongian = 0
for i=1,getn(DonGian) do
	if num == DonGian[i] then
		return 1
	end
end

if sltrung >= 3 then
return 0
else
return 2
end
end

DonGian = {
123456,
112233,
654321,
123321,
123123,
123567,
123789,
123678,
121314,
122334,
}


function Accept(num2)
num = tonumber(num2)

if num < 111111 or num > 999999 then
Talk(1,"","M�t kh�u K� Tr�n C�c ch� ���c t� 111111 - 999999")
return
end

if loaitru(num) == 0 then
Talk(1,"","M�t kh�u c�a b�n kh�ng ���c c� <color=yellow>3 s� tr�ng nhau<color>")
return
end
if loaitru(num) == 1 then
Talk(1,"","M�t kh�u c�a b�n <color=yellow>Qu� ��n Gi�n<color>, kh�ng th� t�o.")
return
end
if num == GetTask(152) then
Talk(1,"","M�t kh�u K� Tr�n C�c kh�ng ���c gi�ng v�i M�t kh�u R��ng")
return
end

SetTask(305, num)

thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/MatKhauKTC/taomatkhau.txt", "a");
if LoginLog then
write(LoginLog,""..GetAccount().." - "..GetName().." - ["..GetTask(305).."] - "..thoigian.."\n");
end
closefile(LoginLog)


Msg2Player("M�t kh�u K� Tr�n C�c c�a b�n l�: <color=yellow>"..GetTask(305).."")

end

function Accept2(num2)
num = tonumber(num2)
if GetTask(305) == num then
Sale(24,1)
else
Talk(1,"","B�n nh�p sai m� k� tr�n c�c, li�n h� H� Tr� Tr�c Tuy�n n�u qu�n m�t kh�u")
end
end