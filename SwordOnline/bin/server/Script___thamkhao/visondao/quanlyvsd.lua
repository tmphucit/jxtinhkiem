Include("\\datascript\\banghoi\\dsruongvsd.lua")
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\visondao\\MangCheTao.txt")


function main()
SayNew("<color=green>Qu�n L� Vi S�n ��o <color>: Vi s�n ��o l� n�i t�ch t� nhi�u b� �n v� kho b�u qu� gi� trong t�m b�n �� S�n H� X� T�c ",6,
"Nhi�m V� Anh H�ng /nhiemvuanhhung",
"Qu�n l� Boss V� L�m H�i �c /quanlyboss",
"Ch� t�o trang b� ho�ng kim /chetaohoangkim",
--"C��ng H�a An Bang /cuonghoaanbang",
"Ki�m tra s� ng��i �ang � Vi S�n ��o /kiemtra",
"Th�ng C�p Huy�n Tinh Nhanh/thangcapht",
"R�i kh�i Vi S�n ��o /roikhoi",
"Tho�t./no")
end

function chetaohoangkim()
Talk(1,"","T�nh n�ng s� ���c m� v�o 17h00 ng�y 16/02/2022")
end
function chetaohoangkim_()
SayNew("Ng��i mu�n ta gi�p g�? ",3,
"Ch� t�o m�nh ho�ng kim /chetao_manhhk1",
"��i trang b� ho�ng kim /doi_hoangkim",
"Tho�t./no")
end



function doi_hoangkim()
OpenCheckItemBox("��i Trang B� ","H�y ��t M�nh Ho�ng Kim v�o","doi_hoangkim1")
end


function doi_hoangkim1()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
		Talk(1,"","H�nh trang kh�ng �� ch� tr�ng, vui l�ng ki�m tra l�i")
		return
	end
	chetao_kiemtra_itemkhoa = GetItemBind_CheckBox()
	if (chetao_kiemtra_itemkhoa == -1) then
	Talk(1,"","Kh�ng ���c ��t trang b� v�o !")
	return
	end

	if (chetao_kiemtra_itemkhoa == 1) then
	Talk(1,"","Kh�ng ���c ��t nguy�n li�u �� kh�a v�o")
	return
	end

	index = -1
	id = -1
	for i=1,getn(MANGHKMP) do
			id = MANGHKMP[i][1]
			num = MANGHKMP[i][2]
			if GetItemCountBox(id) == num then
				index = i
				break				
			end
	end
	
	
	if id == -1 then
		return
	end	
	
	if index > 0 and index <= getn(MANGHKMP) then
			for k=1,MANGHKMP[index][2] do
					DelItemBox(MANGHKMP[index][1])
			end	
			if GetAllItemCountInCheckBox() == 0 then
					if index <= 9 then
						idxitem = AddItem(MANGHKMP[index][4], MANGHKMP[index][5], MANGHKMP[index][6], random(1,10),0,0,0)
						Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." �� nh�n ���c trang b� Ho�ng Kim - <color=yellow>"..GetNameItemBox(idxitem).."")		
						inlog5("[DoiHKMP] ["..GetNameItemBox(idxitem).."]")
					else
						idxitem = AddItem(MANGHKMP[index][4], MANGHKMP[index][5], MANGHKMP[index][6], MANGHKMP[index][7]+1,0,0,0)
						Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." �� nh�n ���c trang b� Ho�ng Kim - <color=yellow>"..GetNameItemBox(idxitem).."")		
						inlog5("[DoiHKMP] ["..GetNameItemBox(idxitem).."]")						
					end
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","Nguy�n li�u ��t v�o kh�ng ��ng, vui l�ng ki�m tra l�i")
	end
end





function chetao_manhhk1()
OpenCheckItemBox("Ki�m Tra Ch� T�o ","H�y ��t nguy�n li�u v�o ","chetao_manhhk2")
end

function chetao_manhhk2()
chetao_soluong_dopho, chetao_id_dopho = chetao_check_soluong_dopho() 
chetao_soluong_huyentinh, chetao_id_huyentinh = chetao_check_soluong_huyentinh()
chetao_soluong_nguyenlieu = chetao_tongsoluongnguyenlieu()
if chetao_soluong_dopho ~= 1 or chetao_soluong_huyentinh ~= 1 or chetao_soluong_nguyenlieu > 20 then
Talk(1,"","Nguy�n li�u ��t v�o kh�ng ��ng: \n<color=yellow>- "..chetao_soluong_dopho.." / 1 �� Ph� <color>, \n<color=green>- "..chetao_soluong_huyentinh.." / 1 Huy�n Tinh<color>\n<color=blue>- "..chetao_soluong_nguyenlieu.." / 20 H� Tr� ")
return
end

xs = chetao_tongxacsuat()
SayNew("X�c su�t ch� t�o th�nh c�ng M�nh Ho�ng Kim: <color=yellow>"..xs.."% <color>. Ng��i ch�c ch�n mu�n ch� t�o ch�?",2,
"Ta mu�n ch� t�o /chetao_manhhk3",
"�� ta ki�m tra l�i nguy�n li�u./no")
end

function chetao_manhhk3()
OpenCheckItemBox("X�c Nh�n Ch� T�o","H�y ��t nguy�n li�u v�o ","chetao_manhhk4")
end

function chetao_manhhk4()
chetao_kiemtra_itemkhoa = GetItemBind_CheckBox()
if (chetao_kiemtra_itemkhoa == -1) then
Talk(1,"","Kh�ng ���c ��t trang b� v�o !")
return
end

if (chetao_kiemtra_itemkhoa == 1) then
Talk(1,"","Kh�ng ���c ��t nguy�n li�u �� kh�a v�o")
return
end

chetao_soluong_dopho, chetao_id_dopho = chetao_check_soluong_dopho() 
chetao_soluong_huyentinh, chetao_id_huyentinh = chetao_check_soluong_huyentinh()
chetao_soluong_nguyenlieu = chetao_tongsoluongnguyenlieu()

if chetao_soluong_dopho ~= 1 or chetao_soluong_huyentinh ~= 1 or chetao_soluong_nguyenlieu > 20 then
Talk(1,"","Nguy�n li�u ��t v�o kh�ng ��ng: \n<color=yellow>- "..chetao_soluong_dopho.." / 1 �� Ph� <color>, \n<color=green>- "..chetao_soluong_huyentinh.." / 1 Huy�n Tinh<color>\n<color=blue>- "..chetao_soluong_nguyenlieu.." / 20 H� Tr� ")
return
end

idhuyentinh = MANGCHETAO[chetao_id_dopho][3]
if chetao_id_huyentinh < idhuyentinh then
Talk(1,"","�� ch� t�o �� ph� n�y y�u c�u t�i thi�u <color=yellow>Huy�n Tinh "..(idhuyentinh-43).." ")
return
end

if GetCash() < 1000000 then
Talk(1,"","Ng�n l��ng kh�ng �� 100 v�n l��ng, kh�ng th� ch� t�o �� ph� ")
return
end

xs = chetao_tongxacsuat()
xacsuat = RandomNew(1,100)

DeleteAllItemInCheckBox()
Pay(1000000)

idmanhghep = MANGCHETAO[chetao_id_dopho][2]
if xacsuat < xs then
		
		idxitem = AddEventItem(idmanhghep)
		Talk(1,"","<color=green>Ch�c m�ng, b�n �� ch� t�o th�nh c�ng <color=yellow>"..GetNameItemBox(idxitem).."")
		Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." �� ch� t�o th�nh c�ng <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog5("[ThanhCong] ["..GetNameItemBox(idxitem).."] ["..idmanhghep.."] ["..xs.."%]")
		
else
		Talk(1,"","<color=red>Xin chia bu�n, giai �o�n ch� t�o th�t b�i. X�c su�t th�nh c�ng: "..xs.."%")
		inlog5("[ThatBai] ["..idmanhghep.."] ["..xs.."%]")
		
end
end



function chetao_tongsoluongnguyenlieu()
count = 0

count = count + GetItemCountBox(74)
count = count + GetItemCountBox(28)
count = count + GetItemCountBox(29)
count = count + GetItemCountBox(30)
count = count + GetItemCountBox(175)
count = count + GetItemCountBox(174)
count = count + GetItemCountBox(173)

return count
end

function chetao_tongxacsuat()
xs = 0

xs = xs + GetItemCountBox(74) * 5
xs = xs + GetItemCountBox(28) * 1
xs = xs + GetItemCountBox(29) * 1
xs = xs + GetItemCountBox(30) * 1
xs = xs + GetItemCountBox(175) * 0.3
xs = xs + GetItemCountBox(174) * 0.2
xs = xs + GetItemCountBox(173) * 0.1

return xs
end


function chetao_check_soluong_dopho()
count = 0
id = -1
for i=1,getn(MANGCHETAO) do
	if GetItemCountBox(MANGCHETAO[i][1]) > 0 then
		count = count + GetItemCountBox(MANGCHETAO[i][1])
		id = i
	end
end
return count,id
end
function chetao_check_soluong_huyentinh()
count = 0
id = -1
for i=44,53 do
	if GetItemCountBox(i) > 0 then
		count = count + GetItemCountBox(i)
		id = i
	end
end
return count,id
end

function cuonghoaanbang()
SayNew("<color=green>Qu�n L� Vi S�n ��o <color>: vui l�ng ch�n lo�i trang b� mu�n c��ng h�a ",5,
"C��ng H�a An Bang/cuonghoa1",
"Th�ng c�p B� Kip C��ng H�a /cuonghoa3",
"K�t h�p Ng� S�c B�ng Tinh/cuonghoa4",
"��i An Bang Li�n ��u /cuonghoa2",
"Tho�t./no")
end

function cuonghoa4()
if GetItemCount(328) > 0 and GetItemCount(329) >0 and GetItemCount(330) > 0 and GetItemCount(331) >0 and GetItemCount(332) >0 and GetCash() >= 2500000 then
	for p=328,332 do DelItem(p) end
	Pay(2500000)
	AddEventItem(333)
	Msg2Player("Ch�c m�ng b�n k�t h�p th�nh c�ng Ng� S�c B�ng Tinh")
	Talk(0,"")
else
	Talk(1,"","Ng� S�c B�ng Tinh = Kim B�ng Tinh + M�c B�ng Tinh + Th� B�ng Tinh + Th�y B�ng Tinh + H�a B�ng Tinh + 250 v�n l��ng")
end
end
function cuonghoa2()
OpenCheckItemBox("��i An Bang","H�y ��t 1 An Bang Li�n ��u v�o ","thangcapabhm2")
end

function thangcapabhm2()
idxitem = GetIdxItemBoxUpdateItem3()

if idxitem == -1 then
Talk(1,"","S� l��ng v��t qu� 1 trang b� ")
Msg2Player("L�i: S� l��ng v��t qu� 1 trang b� ")
return
end

if GetGenreItem(idxitem) ~= 0 then
Talk(1,"","V�t ph�m ��t v�o kh�ng ph�i trang b�, kh�ng th� ��i !")
Msg2Player("L�i: V�t ph�m ��t v�o kh�ng ph�i trang b�, kh�ng th� ��i !")
return
end

if GetItemCount(28) == 0 then
Talk(1,"","Ng��i kh�ng mang theo <color=yellow>Lam Th�y Tinh<color> trong h�nh trang,  kh�ng th� c��ng h�a")
return
end
if GetItemCount(29) == 0 then
Talk(1,"","Ng��i kh�ng mang theo <color=yellow>T� Th�y Tinh<color> trong h�nh trang,  kh�ng th� c��ng h�a")
return
end
if GetItemCount(30) == 0 then
Talk(1,"","Ng��i kh�ng mang theo <color=yellow>L�c Th�y Tinh<color> trong h�nh trang,  kh�ng th� c��ng h�a")
return
end
if GetItemCount(333) == 0 then
Talk(1,"","Ng��i kh�ng mang theo <color=yellow>Ng� S�c B�ng Tinh<color> trong h�nh trang,  kh�ng th� c��ng h�a")
return
end

loaiitem = 0
if GetDetailTypeItem(idxitem) == 4 and GetParticularItem(idxitem) == 18 then
	loaiitem = 1
elseif GetDetailTypeItem(idxitem) == 3 and GetParticularItem(idxitem) == 33 then
	loaiitem = 2
elseif GetDetailTypeItem(idxitem) == 3 and GetParticularItem(idxitem) == 34 then
	loaiitem = 3
elseif GetDetailTypeItem(idxitem) == 9 and GetParticularItem(idxitem) == 18 then
	loaiitem = 4
end

if loaiitem == 0 then
Talk(1,"","Trang b� ��t v�o kh�ng ph�i l� trang b� An Bang Li�n ��u, kh�ng th� c��ng h�a")
return
end


detail = GetDetailTypeItem(idxitem)
particu = GetParticularItem(idxitem)
timeitem = GetTimeItemIdx(idxitem)

xacsuat = 15
if loaiitem ~= 0 then
	for p=28,30 do DelItem(p) end
	DelItem(333)
	xs = random(1,100)
	if xs <= xacsuat then
		SetTimeItem(idxitem,0);
		DelEquipIdx(idxitem)
		if loaiitem == 1 then
			idxnew = AddItem(0,4,3,1,0,0,0)
			SetTimeItem(idxnew, timeitem)
			Msg2SubWorld(""..GetName().." ��i th�nh c�ng trang b�: <color=yellow>"..GetNameItemBox(idxnew).."")
		elseif loaiitem == 2 then
			idxnew = AddItem(0,3,3,1,0,0,0)
			SetTimeItem(idxnew, timeitem)
			Msg2SubWorld(""..GetName().." ��i th�nh c�ng trang b�: <color=yellow>"..GetNameItemBox(idxnew).."")
		elseif loaiitem == 3 then
			idxnew = AddItem(0,3,4,1,0,0,0)
			SetTimeItem(idxnew, timeitem)
			Msg2SubWorld(""..GetName().." ��i th�nh c�ng trang b�: <color=yellow>"..GetNameItemBox(idxnew).."")
		elseif loaiitem == 4 then
			idxnew = AddItem(0,9,3,1,0,0,0)
			SetTimeItem(idxnew, timeitem)
			Msg2SubWorld(""..GetName().." ��i th�nh c�ng trang b�: <color=yellow>"..GetNameItemBox(idxnew).."")
		end	
			
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/CuongHoaAnBang.txt", "a");
		if LoginLog then
		write(LoginLog,"DOI THANH CONG: "..GetAccount().." - "..GetName().." - "..thoigian.." \n");
		end
		closefile(LoginLog)

		Talk(0,"")
	else
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/CuongHoaAnBang.txt", "a");
		if LoginLog then
		write(LoginLog,"DOI THAT BAI: "..GetAccount().." - "..GetName().." - "..thoigian.." \n");
		end
		closefile(LoginLog)
		Talk(1,"","<color=red>C��ng h�a th�t b�i, x�c su�t th�nh c�ng: 25 %")
		Msg2SubWorld("Xin chia bu�n c�ng <color=green>"..GetName()..", <color=red>��i th�t b�i trang b�: <color=yellow>"..GetNameItemBox(idxitem).."")
	end
else
Talk(1,"","Trang b� ��t v�o kh�ng ph� h�p, vui l�ng ki�m tra l�i !")
end
end
function cuonghoa3()
SayNew("<color=green>Qu�n L� Vi S�n ��o <color>: vui l�ng ch�n lo�i v�t ph�m mu�n th�ng c�p ",3,
"Th�ng c�p t� 1 l�n 2 /cuonghoa3_1",
"Th�ng c�p t� 2 l�n 3 /cuonghoa3_1",
"Tho�t./no")
end

function cuonghoa3_1(nsel)
i = nsel + 1
if i == 1 then
idcu = 406
idmoi = 407
elseif i == 2 then
idcu = 407
idmoi = 408
end
if GetItemCount(idcu) == 0 then
Talk(1,"","Ng��i kh�ng mang theo B� K�p Th�ng C�p An Bang C�p "..i..", kh�ng th� th�ng c�p")
return
end
xacsuat = 0
if GetItemCount(175) > 0 then
xacsuat = 100
nguyenlieu = 175
elseif GetItemCount(174) > 0 then
xacsuat = 60
nguyenlieu = 174
elseif GetItemCount(173) > 0 then
xacsuat = 30
nguyenlieu = 173
end

if xacsuat == 0 then
Talk(1,"","Ng��i kh�ng mang theo <color=yellow>Ph�c Duy�n L� <color>, kh�ng th� th�ng c�p")
return
end

xs = random(1,100)
if xs <= xacsuat then
	DelItem(nguyenlieu)
	DelItem(idcu)
	idxnew = AddEventItem(idmoi)
	Msg2Player("Th�ng c�p th�nh c�ng, b�n nh�n ���c <color=yellow>"..GetNameItemBox(idxnew).."")
	Talk(0,"")
else
Talk(1,"","<color=red>Th�ng c�p th�t b�i, m�t to�n b� nguy�n li�u th�ng c�p")
end
end

function cuonghoa1()
OpenCheckItemBox("Th�ng C�p An Bang","H�y ��t 1 trang b� An Bang v�o ","thangcapabhm1")
end

function thangcapabhm1()
idxitem = GetIdxItemBoxUpdateItem3()

if idxitem == -1 then
Talk(1,"","S� l��ng v��t qu� 1 trang b� ")
Msg2Player("L�i: S� l��ng v��t qu� 1 trang b� ")
return
end

if GetGenreItem(idxitem) ~= 0 then
Talk(1,"","V�t ph�m ��t v�o kh�ng ph�i trang b�, kh�ng th� ��i !")
Msg2Player("L�i: V�t ph�m ��t v�o kh�ng ph�i trang b�, kh�ng th� ��i !")
return
end

if GetItemCount(363) == 0 then
Talk(1,"","Ng��i kh�ng mang theo <color=yellow>Danh V�ng �an<color> trong h�nh trang,  kh�ng th� c��ng h�a")
return
end
if GetItemCount(28) == 0 then
Talk(1,"","Ng��i kh�ng mang theo <color=yellow>Lam Th�y Tinh<color> trong h�nh trang,  kh�ng th� c��ng h�a")
return
end
xacsuat = 0
nguyenlieu = 0
if GetItemCount(408) > 0 then
xacsuat = 15
nguyenlieu = 408
elseif GetItemCount(407) > 0 then
xacsuat = 10
nguyenlieu = 407
elseif GetItemCount(406) > 0 then
xacsuat = 5
nguyenlieu = 406
end
if xacsuat == 0 then
Talk(1,"","Ng��i kh�ng mang theo <color=yellow>B� Kip Th�ng C�p An Bang<color>, kh�ng th� c��ng h�a")
return
end
loaiitem = 0
tenanbang = ""
if GetDetailTypeItem(idxitem) == 4 and GetParticularItem(idxitem) == 3 then
	loaiitem = 1
	tenanbang = "An bang B�ng Tinh Th�ch H�ng Li�n"
elseif GetDetailTypeItem(idxitem) == 3 and GetParticularItem(idxitem) == 3 then
	loaiitem = 2
	tenanbang = "An bang K� Huy�t Th�ch Gi�i Ch� "
elseif GetDetailTypeItem(idxitem) == 3 and GetParticularItem(idxitem) == 4 then
	loaiitem = 3
	tenanbang = "An bang C�c Hoa Th�ch Ch� Ho�n"
elseif GetDetailTypeItem(idxitem) == 9 and GetParticularItem(idxitem) == 3 then
	loaiitem = 4
	tenanbang = "An Bang �i�n Ho�ng Th�ch Ng�c B�i"
end

if loaiitem == 0 then
Talk(1,"","Trang b� ��t v�o kh�ng ph�i l� trang b� An Bang c� th� c��ng h�a")
return
end


detail = GetDetailTypeItem(idxitem)
particu = GetParticularItem(idxitem)
timeitem = GetTimeItemIdx(idxitem)
levelitem = GetLevelItem(idxitem)
if levelitem == 10 then
Talk(1,"","C�p �� ��t t�i �a, kh�ng th� th�ng c�p")
return
end

levelnew = levelitem + 1
if levelnew > 10 then
levelnew = 10
end
if loaiitem ~= 0 then
	DelItem(nguyenlieu)
	DelItem(363)
	DelItem(28)
	xs = random(1,100)
	if xs <= xacsuat then
		SetTimeItem(idxitem,0);
		DelEquipIdx(idxitem)
		idxnew = AddItem(0,detail,particu,levelnew,0,0,0)
		SetTimeItem(idxnew, timeitem)
		Msg2SubWorld(""..GetName().." c��ng h�a th�nh c�ng trang b�: <color=yellow>"..GetNameItemBox(idxnew).."")
		
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/CuongHoaAnBang.txt", "a");
		if LoginLog then
		write(LoginLog,"Thanh Cong: "..GetAccount().." - "..GetName().." - "..detail.." - "..particu.." - "..levelnew.." - "..thoigian.." \n");
		end
		closefile(LoginLog)

		Talk(0,"")
	else
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/CuongHoaAnBang.txt", "a");
		if LoginLog then
		write(LoginLog,"That Bai: "..GetAccount().." - "..GetName().." - "..detail.." - "..particu.." - "..levelitem.." - "..thoigian.." \n");
		end
		closefile(LoginLog)
		Msg2SubWorld(""..GetName().." C��ng h�a trang b� "..tenanbang.." [C�p "..levelitem.."] l�n [C�p "..levelnew.."] th�t b�i, xin chia bu�n !")
		Talk(1,"","<color=red>C��ng h�a th�t b�i, x�c su�t th�nh c�ng: "..xacsuat.." %")
	end
else
Talk(1,"","Trang b� ��t v�o kh�ng ph� h�p, vui l�ng ki�m tra l�i !")
end
end

function quanlyboss()
SayNew("<color=green>Qu�n L� Vi S�n ��o <color>: Vi s�n ��o l� n�i t�ch t� nhi�u b� �n v� kho b�u qu� gi� trong t�m b�n �� S�n H� X� T�c ",3,
"Ki�m tra s� l��ng R��ng B�o V�t /kiemtrattt",
"Ta mu�n r�t R��ng B�o V�t /rutttt",
"Tho�t./no")
end

function kiemtrattt()
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng��i kh�ng c� Bang H�i th� kh�ng c�n ph�i n�i chuy�n v�i ta ��u !")
return
end
if vt == 0 then
	Talk(1,"","Bang h�i c�a ng��i kh�ng c� k� g�i R��ng B�o V�t � ch� ta !")
else
	Talk(1,"","Hi�n t�i c�n <color=pink>"..DSRUONG[vt][2].." vi�n R��ng B�o V�t<color> k� g�i t�i ��y !")
end

end
function checktontai(bang)
for i=1,getn(DSRUONG) do 
	if DSRUONG[i][1] == bang then
		return i
	end
end
return 0
end
function rutttt()
	if CheckFreeBoxItem(4,144,1,1) == 0 then
		Talk(1,"","R��ng �� ��y, kh�ng th� r�t")
		return
	end
			
bang = GetTongName()
vt =checktontai(bang)
if GetTongName() == "" then
Talk(1,"","Ng��i kh�ng c� Bang H�i th� kh�ng c�n ph�i n�i chuy�n v�i ta ��u !")
return
end

if GetTongFigure() == 3 then
if vt == 0 then
	Talk(1,"","Bang h�i c�a ng��i kh�ng c� k� g�i R��ng B�o V�t � ch� ta !")
else
	if DSRUONG[vt][2] <= 0 then
		Talk(1,"","<color=green>Qu�n L� Phong L�ng �� <color>: Hi�n t�i ta kh�ng c� gi� vi�n R��ng B�o V�t n�o c�a nh� ng�� c� !")
	else
		num = 0
		for i=1,DSRUONG[vt][2] do
			if CheckFreeBoxItem(4,144,1,1) == 0 then
				break
			end
			num = num + 1
			AddEventItem(144)
			DSRUONG[vt][2] = DSRUONG[vt][2] - 1 
			Msg2Player("B�n nh�n ���c 1 <color=pink>R��ng B�o V�t.")	
		end
		if num ~= 0 then
			Msg2SubWorld(""..bang.."- <color=yellow>"..GetName().."<color=red> �� r�t <color=pink>"..num.." vi�n R��ng B�o V�t <color=red>k� g�i t�i Qu�n L� Vi S�n ��o !")
		else
			Talk(1,"","R��ng ��y r�i m� c�n r�t ho�i v�y !")
		end
		BANG = TaoBang(DSRUONG,"DSRUONG")
		LuuBang("datascript/banghoi/dsruongvsd.lua",BANG)
		SaveData()
	end
end
else
	Talk(1,"","Ch� c� Bang Ch� m�i c� th� r�t R��ng B�o V�t ���c !")
end


end

function nhiemvuanhhung()
SayNew("<color=green>Qu�n L� Vi S�n ��o <color>: Vi s�n ��o l� n�i t�ch t� nhi�u b� �n v� kho b�u qu� gi� trong t�m b�n �� S�n H� X� T�c ",4,
"Nh�n nhi�m v� Anh H�ng/nhannv",
"Tr� nhi�m v� Anh H�ng/tranhiemvu",
"H�y nhi�m v� Anh H�ng /huynv",
"Tho�t./no")
end
function huynv()
SayNew("<color=green>Qu�n L� Vi S�n ��o <color>: Ng��i c� ch�c ch�n t�n <color=yellow>50 v�n l��ng<color> �� h�y nhi�m v� kh�ng?",2,
"Ta mu�n h�y nhi�m v�/huynv1",
"Ta s� c� g�ng l�m/no")
end
function huynv1()
if GetCash() < 500000 then
Talk(1,"","Ng��i kh�ng mang �� 50 v�n l��ng, kh�ng th� h�y nhi�m v� !")
return
end

Pay(500000)
SetTask(309,0)
SetTask(310,0)
SetTask(311,0)
Msg2Player("H�y nhi�m v� th�nh c�ng")
end

function thangcapht()
SayNew("<color=green>Qu�n L� Vi S�n ��o <color>: Ch�n lo�i Huy�n Tinh c�n th�ng c�p: ",10,
"Huy�n Tinh 1/thangcapht1",
"Huy�n Tinh 2/thangcapht1",
"Huy�n Tinh 3/thangcapht1",
"Huy�n Tinh 4/thangcapht1",
"Huy�n Tinh 5/thangcapht1",
"Huy�n Tinh 6/thangcapht1",
"Huy�n Tinh 7/thangcapht1",
"Huy�n Tinh 8/thangcapht1",
"Huy�n Tinh 9/thangcapht1",
"Tho�t./no")
end


function thangcapht1(nsel)
idht = 44+nsel
num = GetItemCount(idht)

if num < 3 then
Talk(1,"","B�n kh�ng �� 3 vi�n Huy�n Tinh "..(nsel+1).."")
return
end
soluong = 0
for i=1,floor(num/3) do
				DelItem(idht)
				DelItem(idht)
				DelItem(idht)
				idxitem = AddEventItem(idht+1)
				Msg2Player("Th�ng  c�p th�nh c�ng 1 vi�n <color=yellow>"..GetNameItemBox(idxitem).."")
end
end




function thangcapht4()
num = GetItemCount(ht4)
vang = GetCash()

if num < 3 then
Talk(1,"","B�n kh�ng �� 3 vi�n Huy�n Tinh 4")
return
end
for i=1,num do
	if GetItemCount(ht4) >= 3 then
		if GetCash() >= 12000 then
			xs = random(1,100)
			Pay(12000)
			if xs < 30 then
				DelItem(ht4)
				DelItem(ht4)
				DelItem(ht4)
				AddEventItem(ht5)
				Msg2Player("Th�ng  c�p th�nh c�ng 1 vi�n Huy�n Tinh 5")
			else
				DelItem(ht4)
				Msg2Player("Th�ng c�p th�t b�i, m�t 1 vi�n Huy�n Tinh 4")
			end	
		else		
			Msg2Player("B�n kh�ng �� 12000 l��ng !")
		end
	end
end


end


function no()
end

function roikhoi()
SayNew("<color=green>Qu�n L� Vi S�n ��o <color>: Ng��i ch�c ch�n mu�n r�i kh�i ��y ch� ?",2,
"Ta ch�c ch�n mu�n r�i kh�i /roikhoi2",
"Ta ch�a mu�n xu�ng ��o /no")
end

function roikhoi2()
Msg2World("��i hi�p [<color=yellow>"..GetName().."<color=red>] �� r�i kh�i Vi S�n ��o !")
NewWorld(53,1600,3200)
SetRevPos(19)
KickOutSelf()
end

function nhannv()
ngay = tonumber(date("%d"))
if ngay ~= floor(GetTask(312) / 1000) then
	SetTask(312 , ngay * 1000)
end

if mod(GetTask(312),1000) >= 10 then
Talk(1,"","H�m nay ng��i �� l�m �� 10 nhi�m v� y�u c�u r�i !")
return
end 
	
if GetTask(309) == 0 then
	loai = 1 -- TIEU QUAI
	sx = random(1,10)
	if sx < 4 then
		loai = 2 -- Tieu Qua Theo He
	elseif sx == 10 or sx == 9 then
		loai = 3 -- BOSS VSD
	end
	

	SetTask(309,loai)
	if loai == 1 then
		soluong = RandomNew(50,80)
		SetTask(310, soluong)
		
		Talk(1,"","H�y �i ti�u di�t <color=red>"..soluong.." <color>Vi S�n Ti�u Qu�i, sau �� v� ��y g�p ta �� ph�c m�nh.")
	elseif loai == 2 then
		i = RandomNew(0,4)
		nguhanh = tennguhanh(i)
		soluong = RandomNew(15,20) -- Fix 15 - 20
		SetTask(310, i * 1000 + soluong)
		
		Talk(1,"","H�y �i ti�u di�t <color=red>"..mod(GetTask(310),1000).." <color>Vi S�n Ti�u Qu�i <color=yellow>["..nguhanh.."]<color>, sau �� v� ��y g�p ta �� ph�c m�nh.")
	elseif loai == 3 then
		soluong = RandomNew(1,2)
		SetTask(310, soluong)
		Talk(1,"","H�y �i ti�u di�t <color=red>"..soluong.." <color>Boss Vi S�n ��o T�c, sau �� v� ��y g�p ta �� ph�c m�nh.")
		
	end
	SetTask(312, GetTask(312) + 1)
	Msg2Player("<color=pink>Nhi�m v� th�: "..mod(GetTask(312),1000).." / 10")
else
	Talk(1,"","Ng��i �ang l�m nhi�m v�, kh�ng th� nh�n th�m n�a!")
end
end

function tranhiemvu()

loai = GetTask(309)
soluong = GetTask(310)
danglam = GetTask(311)
if loai == 0 then
Talk(1,"","Ta nh� l� ��u c� giao nhi�m v� g� cho nh� ng��i ��u, xem l�i ��u �c c�a m�nh �i ti�u t� � ")
return
end

	if loai == 1 then
				if danglam >= soluong then
					SetTask(309,0)
					SetTask(310,0)
					SetTask(311,0)
					
					mexp = random(2000000,3000000)
					AddOwnExp(mexp) 
					Msg2Player("B�n nh�n ���c "..mexp.." kinh nghi�m !")
					--SetTask(484, GetTask(484) + 1)
				--	Msg2Player("B�n nh�n ���c <color=green>1 �i�m T�ch L�y VIP")
				else
					Talk(1,"","Nhi�m v� �ang l�m: <color=yellow>Ti�u Di�t Ti�u Qu�i<color>\nTi�n tr�nh: <color=green>"..danglam.." <color>/ "..soluong.." con\nKi�m tra: <color=red>Ch�a Ho�n Th�nh")
				end
	elseif loai == 2 then
				if danglam >= mod(soluong,1000) then
					SetTask(309,0)
					SetTask(310,0)
					SetTask(311,0)
					
					mexp = random(2000000,3000000)
					AddOwnExp(mexp) 
					Msg2Player("B�n nh�n ���c "..mexp.." kinh nghi�m !")
					
				--	SetTask(484, GetTask(484) + 1)
				--	Msg2Player("B�n nh�n ���c <color=green>1 �i�m T�ch L�y VIP")
		
				else
					Talk(1,"","Nhi�m v� �ang l�m: <color=yellow>Ti�u Di�t Ti�u Qu�i "..tennguhanh(floor(GetTask(310)/1000)).."<color>\nTi�n tr�nh: <color=green>"..danglam.." <color>/ "..mod(soluong,1000).." con\nKi�m tra: <color=red>Ch�a Ho�n Th�nh")
				end
	elseif loai == 3 then
			if danglam >= soluong then
					SetTask(309,0)
					SetTask(310,0)
					SetTask(311,0)
					
					mexp = random(2000000,3000000) * soluong
					AddOwnExp(mexp) 
					Msg2Player("B�n nh�n ���c "..mexp.." kinh nghi�m !")
					--SetTask(484, GetTask(484) + 1)
					--Msg2Player("B�n nh�n ���c <color=green>1 �i�m T�ch L�y VIP")
					sxitem = random(1,10)
					if sxitem == 5 then
						idxitem = AddEventItem(random(28,30))
						Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh <color=yellow>Nhi�m V� Anh h�ng<color=red> may m�n nh�n ���c <color=green>"..GetNameItemBox(idxitem).." ")
					end
					
					sxitem2 = random(1,100)
					if sxitem2 == 50 then
						idxitem = AddEventItem(74)
						Msg2SubWorld("Ch�c m�ng ["..GetName().."] ho�n th�nh <color=yellow>Nhi�m V� Anh h�ng<color=red> may m�n nh�n ���c <color=green>"..GetNameItemBox(idxitem).." ")
					end
					
				else
					Talk(1,"","Nhi�m v� �ang l�m: <color=yellow>Ti�u Di�t Boss Vi S�n ��o T�c<color>\nTi�n tr�nh: <color=green>"..danglam.." <color>/ "..soluong.." con\nKi�m tra: <color=red>Ch�a Ho�n Th�nh")
				end
	end
end




function tennguhanh(num)
if num == 0 then
return "H� Kim"
elseif num == 1 then
return "H� M�c"
elseif num == 2 then
return "H� Th�y"
elseif num == 3 then
return "H� H�a"
else 
return "H� Th�"
end
end
function kiemtra()
num = 0
idx = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
w,x,y = GetWorldPos()
if w == 24 then
num = num + 1
end
end
PlayerIndex = idx
Msg2Player("S� l��ng ng��i ch�i �ang � Vi S�n ��o : <color=green>"..num.." ng��i !")


end


function OnDeath()
name = GetName()
bang = GetTongName()
idx = PlayerIndex
h,m,s = GetTimeNew()
inlog6(""..GetTongName().." - "..GetAccount().." - "..GetName().."")
w1,x1,y1 = GetWorldPos()
ngay = tonumber(date("%d"))


if GetTongName() == "" then
	for p=1,5 do AddEventItem(144) end
	Msg2SubWorld("Ch�c m�ng "..GetName().." �� ti�u di�t Boss V� L�m H�i �c v� mang v� cho m�nh <color=yellow>5 R��ng B�o V�t !")
else
	soluong = 5
	Msg2SubWorld("Ch�c m�ng "..GetName().." �� ti�u di�t Boss V� L�m H�i �c v� mang v� cho <color=yellow>[Bang H�i - "..bang.."] <color=red> 5 R��ng B�o V�t")
	if getn(DSRUONG) == 0 then
		DSRUONG[getn(DSRUONG)+1] = {bang,soluong,"144"}
	else
		vt = checktontai(bang)
		if  vt == 0 then
			DSRUONG[getn(DSRUONG)+1] = {bang,soluong,"144"}
		else
			DSRUONG[vt][2] = DSRUONG[vt][2] + soluong
		end
	end
	BANG = TaoBang(DSRUONG,"DSRUONG")
	LuuBang("datascript/banghoi/dsruongvsd.lua",BANG)
	
		for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			w,x,y = GetWorldPos()
			if w == w1 then
				AddOwnExp(5000000)
				Msg2Player("B�n nh�n ���c 5.000.000 kinh nghi�m t� Boss V� L�m H�i �c")	
				SetTask(484, GetTask(484) + 5)
				Msg2Player("B�n nh�n ���c <color=green>5 �i�m T�ch L�y VIP")
			end
		end
end	

PlayerIndex = idx
end

function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/CheTaoManhHoangKim.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlog6(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/BOSSVLTK.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function OnDrop()
end