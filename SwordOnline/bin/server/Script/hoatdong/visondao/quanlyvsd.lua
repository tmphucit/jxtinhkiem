Include("\\datascript\\banghoi\\dsruongvsd.lua")
Include("\\script\\lib\\thuvien.lua")


function main()
SayNew("<color=green>Qu�n L� Vi S�n ��o <color>: Vi s�n ��o l� n�i t�ch t� nhi�u b� �n v� kho b�u qu� gi� trong t�m b�n �� S�n H� X� T�c ",4,
"Nhi�m V� Anh H�ng /nhiemvuanhhung",
--"Qu�n l� Boss V� L�m FC /quanlyboss",
--"C��ng H�a An Bang /cuonghoaanbang",
"Ki�m tra s� ng��i �ang � Vi S�n ��o [10 v�n]/kiemtra",
--"Th�ng C�p Huy�n Tinh Nhanh/thangcapht",
"R�i kh�i Vi S�n ��o /roikhoi",
"Tho�t./no")
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
SayNew("<color=green>Qu�n L� Vi S�n ��o <color>: Vi s�n ��o l� n�i t�ch t� nhi�u b� �n v� kho b�u qu� gi� trong t�m b�n �� S�n H� X� T�c ",5,
"Nh�n nhi�m v� Ti�u di�t Ti�u Qu�i/nhannv",
"Nh�n nhi�m v� Truy S�t ��o T�c/nhannv",
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
SayNew("<color=green>Qu�n L� Vi S�n ��o <color>: Ch�n lo�i Huy�n Tinh c�n th�ng c�p: ",3,
"Huy�n Tinh 1/thangcapht1",
"Huy�n Tinh 2/thangcapht2",
--"Huy�n Tinh 3/thangcapht3",
--"Huy�n Tinh 4/thangcapht4",
"Tho�t./no")
end

ht1 = 44
ht2 = 45
ht3 = 46
ht4 = 47
ht5 = 48

function thangcapht1()
num = GetItemCount(ht1)
vang = GetCash()

if num < 3 then
Talk(1,"","B�n kh�ng �� 3 vi�n Huy�n Tinh 1")
return
end
for i=1,num do
	if GetItemCount(ht1) >= 3 then
		if GetCash() >= 10000 then
			xs = random(1,100)
			Pay(10000)
			if xs < 50 then
				DelItem(ht1)
				DelItem(ht1)
				DelItem(ht1)
				AddEventItem(ht2)
				Msg2Player("Th�ng  c�p th�nh c�ng 1 vi�n Huy�n Tinh 2")
			else
				DelItem(ht1)
				Msg2Player("Th�ng c�p th�t b�i, m�t 1 vi�n Huy�n Tinh 1")
			end	
		else		
			Msg2Player("B�n kh�ng �� 10000 l��ng !")
		end
	end
end


end


function thangcapht2()
num = GetItemCount(ht2)
vang = GetCash()

if num < 3 then
Talk(1,"","B�n kh�ng �� 3 vi�n Huy�n Tinh 2")
return
end
for i=1,num do
	if GetItemCount(ht2) >= 3 then
		if GetCash() >= 20000 then
			xs = random(1,100)
			Pay(20000)
			if xs < 50 then
				DelItem(ht2)
				DelItem(ht2)
				DelItem(ht2)
				AddEventItem(ht3)
				Msg2Player("Th�ng  c�p th�nh c�ng 1 vi�n Huy�n Tinh 3")
			else
				DelItem(ht2)
				Msg2Player("Th�ng c�p th�t b�i, m�t 1 vi�n Huy�n Tinh 2")
			end	
		else		
			Msg2Player("B�n kh�ng �� 20000 l��ng !")
		end
	end
end


end

function thangcapht3()
num = GetItemCount(ht3)
vang = GetCash()

if num < 3 then
Talk(1,"","B�n kh�ng �� 3 vi�n Huy�n Tinh 3")
return
end
for i=1,num do
	if GetItemCount(ht3) >= 3 then
		if GetCash() >= 3000 then
			xs = random(1,100)
			Pay(3000)
			if xs < 20 then
				DelItem(ht3)
				DelItem(ht3)
				DelItem(ht3)
				AddEventItem(ht4)
				Msg2Player("Th�ng  c�p th�nh c�ng 1 vi�n Huy�n Tinh 4")
			else
				DelItem(ht3)
				Msg2Player("Th�ng c�p th�t b�i, m�t 1 vi�n Huy�n Tinh 3")
			end	
		else		
			Msg2Player("B�n kh�ng �� 3000 l��ng !")
		end
	end
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
if GetTask(534) == 100 then
NewWorld(4,200*8,200*16)
SetRevPos(41)
else
NewWorld(53,200*8,200*16)
SetRevPos(19)
end
SetPKState(0)
BlockPKState(0)
SetFightState(0)
--AddSkillEffect(504,1,5*18)

end

function nhannv(nsel)
loainhiemvu = nsel + 1
ngay = tonumber(date("%d"))
if ngay ~= floor(GetTask(312) / 1000) then
	SetTask(312 , ngay * 1000)
end

if mod(GetTask(312),1000) >= 10 then
Talk(1,"","H�m nay ng��i �� l�m �� 10 nhi�m v� y�u c�u r�i !")
return
end 
	
if GetTask(309) == 0 then
	if loainhiemvu == 1 then
		loai = RandomNew(1,2) -- TIEU QUAI
	else
		loai = 3
	end
	

	SetTask(309,loai)
	if loai == 1 then
		soluong = RandomNew(100,125)
		SetTask(310, soluong)
		
		Talk(1,"","H�y �i ti�u di�t <color=red>"..soluong.." <color>Vi S�n Ti�u Qu�i, sau �� v� ��y g�p ta �� ph�c m�nh.")
	elseif loai == 2 then
		i = RandomNew(0,4)
		nguhanh = tennguhanh(i)
		soluong = RandomNew(20,25) -- Fix 15 - 20
		SetTask(310, i * 1000 + soluong)
		
		Talk(1,"","H�y �i ti�u di�t <color=red>"..mod(GetTask(310),1000).." <color>Vi S�n Ti�u Qu�i <color=yellow>["..nguhanh.."]<color>, sau �� v� ��y g�p ta �� ph�c m�nh.")
	elseif loai == 3 then
		soluong = RandomNew(1,3)
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
					
					mexp = random(4000000,5000000)
					AddOwnExp(mexp) 
					Msg2Player("B�n nh�n ���c "..mexp.." kinh nghi�m !")
				--	SetTask(484, GetTask(484) + 1)
				--	Msg2Player("B�n nh�n ���c <color=green>1 �i�m T�ch L�y VIP")
					sxitem = RandomNew(1,100)
					if  mod(sxitem,10) == 0 then -- 10%
						idxitem = AddEventItem(random(28,31))
						Msg2SubWorld("Ch�c m�ng "..GetName().." ho�n th�nh nhi�m v� Anh H�ng may m�n nh�n ���c: <color=green>"..GetNameItemBox(idxitem).." ")
					end
					sxitem = RandomNew(1,100)
					if  mod(sxitem,20) == 0 then -- 5%
						idxitem = AddEventItem(666)
						Msg2SubWorld("Ch�c m�ng "..GetName().." ho�n th�nh nhi�m v� Anh H�ng may m�n nh�n ���c: <color=green>"..GetNameItemBox(idxitem).." ")
					end
					
					sxbk = RandomNew(1,100)
					if  mod(sxbk,30) == 0 then -- 3%
						idxitem = AddEventItem(random(426,565))
						Msg2SubWorld("Ch�c m�ng "..GetName().." ho�n th�nh nhi�m v� Anh H�ng may m�n nh�n ���c: <color=pink>�� Ph� - "..GetNameItemBox(idxitem).." ")
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
if GetCash() < 100000 then
Talk(1,"","Ng��i kh�ng �� 10 v�n, kh�ng th� ki�m tra !")
return
end
Pay(100000)
num = 0
idx = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
w,x,y = GetWorldPos()
if w == 24 or w == 287 then
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
	Msg2SubWorld("Ch�c m�ng "..GetName().." �� ti�u di�t Boss V� L�m FC v� mang v� cho m�nh <color=yellow>5 R��ng B�o V�t !")
else
	soluong = 5
	Msg2SubWorld("Ch�c m�ng "..GetName().." �� ti�u di�t Boss V� L�m FC v� mang v� cho <color=yellow>[Bang H�i - "..bang.."] <color=red> 5 R��ng B�o V�t")
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
				Msg2Player("B�n nh�n ���c 5.000.000 kinh nghi�m t� Boss V� L�m FC")	
				SetTask(484, GetTask(484) + 5)
				Msg2Player("B�n nh�n ���c <color=green>5 �i�m T�ch L�y VIP")
			end
		end
end	

PlayerIndex = idx
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