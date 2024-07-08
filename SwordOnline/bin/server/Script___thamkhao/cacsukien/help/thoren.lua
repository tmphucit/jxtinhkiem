Include("\\Script\\global\\sourcejx49.lua");

Include("\\script\\visondao\\MangCheTao.txt")
-- OpenPGBoxItem(): Mo thung ep do
-- GetIdxPGItem(page,num)  Ham lay Idx o thung thu page, o thu num
-- GetSeriItem
-- GetLevelItem
-- GetParticularItem
-- GetDetailTypeItem
-- GetGenreItem(idx)
-- DelEquipIdx(idx) -- Del trang bi
-- DelItemIdx (idx) -- Del Questkey
-- GetItemType(idx) 0 la tb thuong, 1 la hk, 2 la tim
-- GetEquipMagicId(idx,num)  Lay Magic cua dong num tu 1 - 6
-- GetEquipMagicLevel(idx,num) Level cua dong tu 1 - 10
-- IsBlockItem() 1 la khoa, 2 la khong khoa check trang bi co dinh hay ko
--- VIEN DA KHOANG THACH
-- AddEventItemMagic(id,seri,idmagic,levelmacgic,RequirementMagic) add magic khoang thach
---------------------- seri = 5 la khong co ngu hanh
-- GetIdMagicEventItem
-- GetLevelMagicEventItem
-- GetRequirementMagicEventItem

--- TRANG BI TIM
-- AddItemPink(Genara,Detail,Particular,nLevel,nSeries,nLuck,LevelMagic1,IdMagic1,LevelMagic2,IdMagic2,....,LevelMagic6,IdMagic6,1,randomseed)
-- GetEquipMagicRandomSeed(idx) -- Lay gia tri random seed cua 1 trang bi
-- GetEquipMagicLucky(idx,num) - Lay May Man


PHOBIEN = 0	--cho ep do tai bat cu tho ren nao tren ban do.Mac dinh = 0
MAPBLACKSMITH = 37 --Map cho ep do tai do khi PHOBIEN = 1

function main()

if GetTask(103) == 6 then
	SayNew("<color=green>Th� r�n<color> H�y l�a ch�n 1 v� kh� ngang v�i s�c m�nh nh�: ",4,
	"Mua v� kh�/binhthuong",
	"Giao t�n th� ch��ng m�n /giaotinthu",
--	"C��ng H�a Trang B� /thangcapxxx",
	"H�y trang b� kh�a V�nh Vi�n /huytrangbi",
	"Tho�t./no")
elseif GetTask(115) == 15000 then
	SayNew("<color=green>Th� r�n<color> H�y l�a ch�n 1 v� kh� ngang v�i s�c m�nh nh�: ",3,
	"Mua v� kh�/binhthuong",
	"Giao t�n th� ch��ng m�n /giaotinthu",
	"Tho�t./no")
else
	SayNew("<color=green>Th� r�n<color> H�y l�a ch�n 1 v� kh� ngang v�i s�c m�nh nh�: ",6,
	"Mua v� kh�/binhthuong",
	"Ph�c h�i trang b� h�ng /phuchoi",
--	"Gh�p M�nh Kim Phong /ghepmanhkp",
--	"Gh�p M�nh Hi�p C�t /ghepmanhhc",
--	"Gh�p M�nh Nhu T�nh /ghepmanhnt",
	-- "C��ng H�a Trang B� Xanh/chetaohuyentinh",
--	"Trang b� Ho�n M� /chetaohoanmy",
--	"Trang b� C�c Ph�m /chetaocucpham",
	-- "Luy�n Th�nh Huy�n tinh /luyenthanh",
--	"Gh�p M�nh Trang B� /ghepmanh_new",
	"��i th� c��i/nangcapngua",
	"Thay ��i trang b� xanh/thangcapxxx",
	"Gh�p M�nh Ho�ng Kim/ghepmanhhoangkim",
--	"Gh�p M�nh VIP /ghepmanhvip",
--	"Gh�p R��ng T�ng Kim /ghepruongtk",
	"H�y trang b� kh�a V�nh Vi�n /huytrangbi2",
	"H�y trang b� t�n h�i /huytrangbihong",
	"Tho�t./no")
end
end;


function ghepmanhhoangkim()
SayNew("<color=green>Th� r�n<color> Ng��i mu�n ta gi�p g� ?",3,
"Ch� t�o An Bang, ��nh Qu�c/ghepmanhhoangkim1",
"Ph�n r� An Bang, ��nh Qu�c/ghepmanhhoangkim2",
"Tho�t./no")
end


function ghepmanhhoangkim2()
OpenCheckItemBox("Ph�n T�ch Ho�ng Kim","��t 1 m�n Ho�ng Kim v� 1 �� T�i T�o v�o ","ghepmanhhoangkim2_2")
end

function ghepmanhhoangkim2_2()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh�ng th� ph�n t�ch trang b� kh�a ")
return
end

if idxitem == -1 then
Talk(1,"","S� l��ng v�t ph�m v��t qu� 1 trang b� ")
Msg2Player("L�i: S� l��ng v��t qu� 1 trang b� ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	
if a ~= 0 then
Talk(1,"","Nguy�n li�u ��t v�o kh�ng ph�i trang b� !")
return
end	

if GetItemCountBox(415) == 0 then
	Talk(1,"","Ng��i kh�ng b� �� T�i T�o, kh�ng th� ph�n t�ch !")
return	
end
	index = -1
	for i=1,getn(MANGABDQ) do
			if b == MANGABDQ[i][4] and c == MANGABDQ[i][5] then
				index = i		
				break				
			end
	end


	if index == -1 then
		return
	end	
	
	if index > 0 and index <= getn(MANGABDQ) then
		DeleteAllItemInCheckBox()
		if GetAllItemCountInCheckBox() == 0 then
			id = MANGABDQ[index][1]
			num = MANGABDQ[index][2]
			nameitem = MANGABDQ[index][3]
			for k=1,num do AddEventItem(id) end
			Msg2Player("Ph�n r� th�nh c�ng <color=yellow>"..num.." "..nameitem.." ")
			inlog5("[PhanRa] ["..num.." / "..GetItemCount(id).."] ["..nameitem.."]")			
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","Nguy�n li�u ��t v�o kh�ng ��ng, vui l�ng ki�m tra l�i")
	end
end
	
	
function ghepmanhhoangkim1()
OpenCheckItemBox("��i Trang B� Ho�ng Kim.","H�y ��t M�nh Ho�ng Kim v�o","ghepmanhhoangkim1_1")
end



function ghepmanhhoangkim1_1()
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
	for i=1,getn(MANGABDQ) do
			id = MANGABDQ[i][1]
			num = MANGABDQ[i][2]
			if GetItemCountBox(id) == num then
				index = i
				break				
			end
	end
	
	
	if index == -1 then
		return
	end	
	

	xs = 50 + GetItemCountBox(74) * 10
	if index > 0 and index <= getn(MANGABDQ) then
			nganluong = MANGABDQ[index][6]
			if GetCash() <  nganluong then
				Talk(1,"","Ng�n l��ng kh�ng �� "..nganluong.." l��ng, kh�ng th� ��i !")
				return
			end
	
			for k=1,MANGABDQ[index][2] do
				DelItemBox(MANGABDQ[index][1])
			end	
			for k=1,GetItemCountBox(74) do
				DelItemBox(74)
			end
			Pay(nganluong)
			
						levelhk = RandomNew(1,10)
						sx = RandomNew(1,100)
						if sx <= xs then	
							idxitem = AddItem(0, MANGABDQ[index][4], MANGABDQ[index][5], levelhk,0,0,0)
							Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." �� gh�p th�nh c�ng trang b� Ho�ng Kim - <color=yellow>"..GetNameItemBox(idxitem).."")		
							Talk(1,"","Ch�c m�ng b�n nh�n ���c 1 trang b� <color=green>"..GetNameItemBox(idxitem).." ")
							inlog5("[ThanhCong] ["..GetNameItemBox(idxitem).."]")			
						else
							Msg2SubWorld("Xin chia bu�n c�ng ��i hi�p "..GetName().." �� ��i m�nh ho�ng kim th�t b�i.")
							Talk(1,"","<color=red>Xin chia bu�n, ��i trang b� th�t b�i. X�c su�t: "..xs.."% ")
							inlog5("[ThatBai] ["..MANGABDQ[index][3].."]")		
						end
	else
		Talk(1,"","Nguy�n li�u ��t v�o kh�ng ��ng, vui l�ng ki�m tra l�i")
	end
end

function nangcapngua()
SayNew("<color=green>Th� r�n<color> H�y ch�n 1 con th� c��i mu�n ��i ",7,
"Chi�u D� Ng�c S� T� [C�p 80]/nangcapngua1",
"Phi V�n [C�p  100]/nangcapngua2",
"B�n Ti�u [C�p  120] /nangcapngua3",
"Du Huy [C�p  130] /chuaupdate",
"X�ch Long C�u [C�p  140] /chuaupdate",
"Phi�n V� [C�p  150] /chuaupdate",
"Tho�t./no")
end

function chuaupdate()
Talk(1,"","T�nh n�ng ch�a update !")
end
function nangcapngua1()
OpenCheckItemBox("��i Ng�a","H�y ��t 3 Ng�a 80 v�o","nangcapngua1_1")
end

function nangcapngua1_1()

ngua1 = GetItemCountInCheckBox(0,10,5,1)
ngua2 = GetItemCountInCheckBox(0,10,5,2)
ngua3 = GetItemCountInCheckBox(0,10,5,3)
ngua4 = GetItemCountInCheckBox(0,10,5,4)

soluongngua = ngua1 + ngua2 + ngua3 + ngua4
if soluongngua ~= 3 then
Talk(1,"","Ng��i ph�i b� v�o 3 con ng�a c�p 80 kh�ng kh�a m�i c� th� ��i !")
return
end

if GetCash() < 5000000 then
return
end
Pay(5000000)


thanbi = GetItemCountBox(74) * 10
xacsuatthanhcong = 50 + thanbi

DeleteAllItemInCheckBox()
if GetAllItemCountInCheckBox() == 0 then
		sx = RandomNew(1,100)
		if sx < xacsuatthanhcong then
				idxitem = AddItem(0,10,5,5,0,0,0)
				Msg2SubWorld("<color=green>Xin ch�c m�ng ��i hi�p "..GetName().." �� ��i ng�a th�nh c�ng. Nh�n ���c: <color=pink>1 "..GetNameItemBox(idxitem).." ")
				inlogdoingua("[ThanhCong] [ChieuDa]["..xacsuatthanhcong.."%] ["..GetAccount().."] ["..GetName().."]")
		else
				idxitem = AddItem(0,10,5,random(3,4),0,0,0)
				Msg2SubWorld("Xin chia bu�n c�ng ��i hi�p "..GetName().." �� ��i ng�a th�t b�i. Nh�n l�i: <color=yellow>1 "..GetNameItemBox(idxitem).." ")
				Talk(1,"","Xin chia bu�n c�ng ��i hi�p. ��i ng�a th�t b�i. <color=red>X�c su�t "..xacsuatthanhcong.."%")
				inlogdoingua("[ThatBai] [ChieuDa]["..xacsuatthanhcong.."%] ["..GetAccount().."] ["..GetName().."]")
		end
end				
end




function nangcapngua2()
OpenCheckItemBox("��i Ng�a Phi V�n","H�y ��t 3 Chi�u D� v�o","nangcapngua2_1")
end

function nangcapngua2_1()
ngua = GetItemCountInCheckBox(0,10,5,5)
if ngua ~= 3 then
Talk(1,"","Ng��i ph�i b� v�o 3 Ng�a Chi�u D� Ng�c S� T� kh�ng kh�a m�i c� th� ��i !")
return
end

if GetCash() < 10000000 then
return
end
Pay(10000000)

thanbi = GetItemCountBox(74) * 10
xacsuatthanhcong = 50 + thanbi

DeleteAllItemInCheckBox()
if GetAllItemCountInCheckBox() == 0 then
		sx = RandomNew(1,100)
		if sx < xacsuatthanhcong then
				idxitem = AddItem(0,10,8,1,0,0,0)
				Msg2SubWorld("<color=green>Xin ch�c m�ng ��i hi�p "..GetName().." �� ��i ng�a th�nh c�ng. Nh�n ���c: <color=pink>1 "..GetNameItemBox(idxitem).." ")
				inlogdoingua("[ThanhCong] [PhiVan] ["..xacsuatthanhcong.."%] ["..GetAccount().."] ["..GetName().."]")
		else
				idxitem = AddItem(0,10,5,5,0,0,0)
				Msg2SubWorld("Xin chia bu�n c�ng ��i hi�p "..GetName().." �� ��i ng�a th�t b�i. Nh�n l�i: <color=yellow>1 "..GetNameItemBox(idxitem).." ")
				Talk(1,"","Xin chia bu�n c�ng ��i hi�p. ��i ng�a th�t b�i. <color=red>X�c su�t "..xacsuatthanhcong.."%")
				inlogdoingua("[ThatBai] [PhiVan] ["..xacsuatthanhcong.."%] ["..GetAccount().."] ["..GetName().."]")
		end
end				
end


function nangcapngua3()
OpenCheckItemBox("��i Ng�a B�n Ti�u","H�y ��t 3 Phi V�n v�o","nangcapngua3_1")
end

function nangcapngua3_1()
ngua = GetItemCountInCheckBox(0,10,8,1)
if ngua ~= 3 then
Talk(1,"","Ng��i ph�i b� v�o 3 Ng�a Phi V�n kh�ng kh�a m�i c� th� ��i !")
return
end
if GetCash() < 50000000 then
return
end
Pay(50000000)
thanbi = GetItemCountBox(74) * 10
xacsuatthanhcong = 50 + thanbi

DeleteAllItemInCheckBox()
if GetAllItemCountInCheckBox() == 0 then
		sx = RandomNew(1,100)
		if sx < xacsuatthanhcong then
				idxitem = AddItem(0,10,6,1,0,0,0)
				Msg2SubWorld("<color=green>Xin ch�c m�ng ��i hi�p "..GetName().." �� ��i ng�a th�nh c�ng. Nh�n ���c: <color=pink>1 "..GetNameItemBox(idxitem).." ")
				inlogdoingua("[ThanhCong] [BonTieu] ["..xacsuatthanhcong.."%] ["..GetAccount().."] ["..GetName().."]")
		else
				idxitem = AddItem(0,10,8,1,0,0,0)
				Msg2SubWorld("Xin chia bu�n c�ng ��i hi�p "..GetName().." �� ��i ng�a th�t b�i. Nh�n l�i: <color=yellow>1 "..GetNameItemBox(idxitem).." ")
				Talk(1,"","Xin chia bu�n c�ng ��i hi�p. ��i ng�a th�t b�i. <color=red>X�c su�t "..xacsuatthanhcong.."%")
				inlogdoingua("[ThatBai] [PhiVan] ["..xacsuatthanhcong.."%] ["..GetAccount().."] ["..GetName().."]")
		end
end				
end


function huytrangbihong()
OpenCheckItemBox("H�y Trang B� H�ng","H�y ��t 1 trang b� t�n h�i c�n h�y v�o ","huytrangbihong1")
end

function huytrangbihong1()
itemidx = GetIdxItemBoxUpdateItem4()

if (itemidx == 0) then
Msg2Player("B�n ch�a ��t trang b� c�n ph�c h�i v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a ��t trang b� c�n h�y b� v�o !")
return
end

if (itemidx == -1) then
Msg2Player("B�n ��t v�o nhi�u h�n 1 trang b� !")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o nhi�u h�n 1 trang b� !")
return
end

if (itemidx == -3) then
Msg2Player("Trang b� kh�ng b� h�ng, kh�ng th� ph�c h�i !")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o kh�ng b� h�ng, kh�ng th� h�y !")
return
end
	name = GetNameItemBox(itemidx)
	DelEquipIdx(itemidx)
	Talk(1,"","�� h�y th�nh c�ng trang b�: "..name.."")
end

function ghepmanhhc()
if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� tr�ng 2 x 3 �, vui l�ng ki�m tra l�i")
	return
	end
if GetItemCount(271) >= 50 then
	for p=1,50 do DelItem(271) end
	sx = random(1,10)
	if sx < 7 then
		idxitem = AddItem(0,3,6,1,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ch� t�o th�nh c�ng <color=green>"..GetNameItemBox(idxitem).."")
	elseif sx == 7 or sx == 8  then
		idxitem = AddItem(0,4,5,1,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ch� t�o th�nh c�ng <color=green>"..GetNameItemBox(idxitem).."")
	elseif sx == 9 then
		idxitem = AddItem(0,9,4,1,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ch� t�o th�nh c�ng <color=green>"..GetNameItemBox(idxitem).."")
	elseif sx == 10 then
		idxitem = AddItem(0,2,31,1,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ch� t�o th�nh c�ng <color=green>"..GetNameItemBox(idxitem).."")
	end

else
Talk(1,"","B�n kh�ng mang �� 50 m�nh hi�p c�t, kh�ng th� gh�p ")
end
end


function ghepmanhnt()
if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� tr�ng 2 x 3 �, vui l�ng ki�m tra l�i")
	return
	end
if GetItemCount(270) >= 50 then
	for p=1,50 do DelItem(270) end
	sx = random(1,10)
	if sx < 8 then
		idxitem = AddItem(0,3,5,1,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ch� t�o th�nh c�ng <color=green>"..GetNameItemBox(idxitem).."")
	elseif sx == 8 or sx == 9 then
		idxitem = AddItem(0,4,4,1,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ch� t�o th�nh c�ng <color=green>"..GetNameItemBox(idxitem).."")
	elseif sx == 10 then
		idxitem = AddItem(0,9,5,1,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ch� t�o th�nh c�ng <color=green>"..GetNameItemBox(idxitem).."")
	end
else
Talk(1,"","B�n kh�ng mang �� 50 m�nh  nhu t�nh, kh�ng th� gh�p ")
end
end

function ghepmanhkp()
SayNew("Ch�n lo�i trang b� c�n gh�p: ",9,
"D�y Chuy�n /ghepmanhkp1",
"Ng�c B�i /ghepmanhkp1",
"Nh�n /ghepmanhkp1",
"�o Gi�p /ghepmanhkp1",
"N�n /ghepmanhkp1",
"Gi�y /ghepmanhkp1",
"Th�t L�ng /ghepmanhkp1",
"Bao Tay /ghepmanhkp1",
"Tho�t./no")
end


function ghepmanhkp1(nsel)
i = nsel + 1
b = 0
c = 0

if i == 1 then
b = 4
c = 2
elseif i == 2 then
b = 9
c = 2
elseif i == 3 then
b = 3
c = random(1,2)
elseif i == 4 then
b = 2
c = 29
elseif i == 5 then
b = 7
c = 14 
elseif i == 6 then
b = 5
c = 4
elseif i == 7 then
b = 6
c = 2
elseif i == 8 then
b = 8
c = 2
end
if b == 0 and c == 0 then
Talk(1,"","L�i r�i b�n �i")
return
end
sl = GetItemCount(639)
if GetItemCount(639) >= 50 then
		for p=1,50 do DelItem(639) end
		if GetItemCount(639) == sl - 50 then
			idxitem = AddItem(0,b,c,2,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." ch� t�o th�nh c�ng trang b�:<color=green> "..GetNameItemBox(idxitem).."")
		else
			Talk(1,"","hack ha em")
		end
else
	Talk(1,"","Ng��i kh�ng mang �� 50 m�nh Kim Phong, kh�ng th� gh�p ")
end

end

function chetaocucpham()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� nh�n !")
	return
end
SayNew("<color=green>Th� R�n<color>: Ng��i mu�n ch� t�o g� ?",5,
"Ph�n T�ch Tinh Th�ch/hoanmy_tach",
"��i ��nh Qu�c C�c Ph�m /cucpham_doi",
"Th�ng c�p ��nh Qu�c C�c Ph�m /cucpham_thangcap",
"T�i t�o ��nh Qu�c C�c Ph�m /cucpham_taitao",
"Tho�t./no")
end
function cucpham_taitao()
Talk(1,"","�ang c�p nh�t")
end


function cucpham_doi()
SayNew("<color=green>Th� R�n<color>: Ch�n trang b� mu�n ��i:\nL� ph� ��i: 10 Tinh Th�ch C�c Ph�m + 10 Lam Th�y Tinh + 500 v�n l��ng",6,
"��nh Qu�c � Sa Ph�t Qu�n/cucpham_okdoi",
"��nh Qu�c X�ch Quy�n Nhuy�n Ngoa/cucpham_okdoi",
"��nh Qu�c Thanh Sa Tr��ng Sam /cucpham_okdoi",
"��nh Qu�c T� ��ng H� Uy�n /cucpham_okdoi",
"��nh Qu�c Ng�n T�m Y�u ��i /cucpham_okdoi",
"Tho�t./no")
 end
function cucpham_okdoi(nsel)
i = nsel + 1

if GetItemCount(568) < 10 then
Talk(1,"","Ng��i kh�ng mang �� 10 vi�n C�c Ph�m Tinh Th�ch")
return
end

if GetItemCount(28) < 10 then
Talk(1,"","Ng��i kh�ng mang �� 10 vi�n Lam Th�y Tinh")
return
end

if GetCash() < 5000000 then
Talk(1,"","Ng��i kh�ng mang �� 500 v�n l��ng")
return
end
sl1 = GetItemCount(568)
sl2 = GetItemCount(28)
sl3 = GetCash()
if GetItemCount(568) >= 10 and GetItemCount(28) >= 10 and GetCash() >= 5000000 then
	for p=1,10 do DelItem(568) end
	for p=1,10 do DelItem(28) end
	Pay(5000000)
	if GetItemCount(568) == sl1 - 10 and GetItemCount(28) == sl2 - 10 and GetCash() == sl3 - 5000000 then
		if i == 1 then
			idxitem = AddItem(0,7,43,1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." ��i th�nh c�ng trang b�: <color=yellow>"..GetNameItemBox(idxitem).."")
		elseif i == 2 then
			idxitem = AddItem(0,5,26,1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." ��i th�nh c�ng trang b�: <color=yellow>"..GetNameItemBox(idxitem).."")
		elseif i == 3 then
			idxitem = AddItem(0,2,81,1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." ��i th�nh c�ng trang b�: <color=yellow>"..GetNameItemBox(idxitem).."")
		elseif i == 4 then
			idxitem = AddItem(0,8,24,1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." ��i th�nh c�ng trang b�: <color=yellow>"..GetNameItemBox(idxitem).."")
		elseif i == 5 then
			idxitem = AddItem(0,6,28,1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." ��i th�nh c�ng trang b�: <color=yellow>"..GetNameItemBox(idxitem).."")
		end		
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/DoiCucPham.txt", "a");
				if LoginLog then
				write(LoginLog,"[Doi Trang Bi: "..i.."] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
	
			
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
end
end



function cucpham_thangcap()
SayNew("Th�ng c�p ��nh Qu�c C�c Ph�m y�u c�u: 2 T� Th�y Tinh, 300 v�n l��ng v� 10 C�c Ph�m Tinh Th�ch",2,
"Ta mu�n th�ng c�p ��nh Qu�c C�c Ph�m /cucpham_thangcap1",
"Tho�t./no")
end

function cucpham_thangcap1()
OpenCheckItemBox("Th�ng C�p ��nh Qu�c","��t trang b� ��nh Qu�c C�c Ph�m c�n th�ng c�p v�o ","okcucphamthangcap")
end

function okcucphamthangcap()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh�ng th� ��i trang b� kh�a ")
return
end

if idxitem == -1 then
Talk(1,"","S� l��ng v�t ph�m v��t qu� 1 trang b� ")
Msg2Player("L�i: S� l��ng v��t qu� 1 trang b� ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)

	
	if d == 10 then
	Talk(1,"","Trang b� hi�n t�i ��t c�p �� t�i �a, kh�ng th� th�ng  c�p")
	return
	end
check = 0	
if a == 0 and ((b == 7 and c == 43) or (b == 5 and c == 26) or (b == 2 and c == 81) or (b == 8 and c == 24) or (b == 6 and c == 28)) then
	check = 1
end

if check == 0 then
Talk(1,"","Trang b� b�n ��t v�o kh�ng ph�i ��nh Qu�c C�c Ph�m, kh�ng th� th�ng c�p")
return
end
if GetItemCount(29) < 2 then
Talk(1,"","B�n kh�ng mang �� 2 vi�n T� Th�y Tinh, kh�ng th� th�ng c�p")
return
end	
if GetItemCount(568) < 10 then
Talk(1,"","B�n kh�ng mang �� 10 C�c Ph�m Tinh Th�ch, kh�ng th� th�ng c�p")
return
end	
if GetCash() < 3000000 then
Talk(1,"","B�n kh�ng mang �� 300 v�n l��ng, kh�ng th� th�ng c�p")
return
end
	
	xacsuat = 0
	if d == 1 then
	xacsuat = 80
	elseif d == 2 then
	xacsuat = 70
	elseif d == 3 then
	xacsuat = 60
	elseif d == 4 then
	xacsuat = 50
	elseif d == 5 then
	xacsuat = 40
	elseif d == 6 then
	xacsuat = 30
	elseif d == 7 then
	xacsuat = 20
	elseif d == 8 then
	xacsuat = 10
	elseif d == 9 then
	xacsuat = 5
	end
	
	xacsuatthem = 0
	if GetTask(485) == 6 or GetTask(485) == 7 then
		xacsuatthem = 5
	elseif GetTask(485) == 8 or GetTask(485) == 9 then
		xacsuatthem = 10
	elseif GetTask(485) == 10 then
		xacsuatthem = 15
	end
	
	
	sx = RandomNew(1,120)
	
	
	if sx < xacsuat+xacsuatthem then
		DelEquipIdx(itemidx)
		for p=1,10 do DelItem(568) end
		for p=1,2 do DelItem(29) end
		Pay(3000000)
		if GetIdxItemBoxUpdateItem() == 0 then
				idxitem = AddItem(a,b,c,d+1,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." th�ng c�p th�nh c�ng trang b� l�n: <color=yellow>"..GetNameItemBox(idxitem).." - C�p "..(d+1).."")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/ThangCapCucPham.txt", "a");
				if LoginLog then
				write(LoginLog,"["..GetNameItemBox(idxitem).." - Cap "..d.." - "..xacsuat.."%] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		end
	else
		for p=1,10 do DelItem(568) end
		for p=1,2 do DelItem(29) end
		Pay(3000000)
		Msg2SubWorld("Xin chia bu�n c�ng "..GetName().." �� th�ng c�p <color=green>"..GetNameItemBox(itemidx).." - C�p "..d.." <color=red>th�t b�i. X�c su�t th�nh c�ng: <color=green>"..(xacsuat+xacsuatthem).."%")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/ThangCapCucPham.txt", "a");
				if LoginLog then
				write(LoginLog,"That Bai: ["..GetNameItemBox(itemidx).." - Cap "..d.." - "..xacsuat.."%] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		
	end
end

function cucpham_taitao()
SayNew("<color=green>Th� R�n<color>: T�i t�o c�n 5 �� T�i T�o + 100 v�n l��ng.\nL�u �: <color=yellow>T�i t�o xong s� ng�u nhi�n l�i ch� s� thu�c t�nh trang b� ",2,
"Ta mu�n T�i T�o ��nh Qu�c C�c Ph�m/cucpham_taitao1",
"Tho�t./no")
end

function cucpham_taitao1()
OpenCheckItemBox("T�i T�o An Bang","��t trang b� ��nh Qu�c C�c Ph�m c�n th�ng c�p v�o ","okcucphamtaitao")
end

function okcucphamtaitao()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh�ng th� t�i t�o trang b� kh�a ")
return
end

if idxitem == -1 then
Talk(1,"","S� l��ng v�t ph�m v��t qu� 1 trang b� ")
Msg2Player("L�i: S� l��ng v��t qu� 1 trang b� ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)

check = 0	
if a == 0 and ((b == 7 and c == 43) or (b == 5 and c == 26) or (b == 2 and c == 81) or (b == 8 and c == 24) or (b == 6 and c == 28)) then
	check = 1
end

if check == 0 then
Talk(1,"","Trang b� b�n ��t v�o kh�ng ph�i An Bang Ho�n M�, kh�ng th� t�i t�o")
return
end
if GetItemCount(333) < 1 then
Talk(1,"","B�n kh�ng mang �� 1 vi�n Ng� S�c B�ng Tinh, kh�ng th� t�i t�o")
return
end	
if GetItemCount(415) < 5 then
Talk(1,"","B�n kh�ng mang �� 5 vi�n �� T�i T�o, kh�ng th� t�i t�o")
return
end	
if GetCash() < 1000000 then
Talk(1,"","B�n kh�ng mang �� 100 v�n l��ng, kh�ng th� th�ng c�p")
return
end
	
		DelEquipIdx(itemidx)
		for p=1,5 do DelItem(415) end
		DelItem(333)
		Pay(1000000)
		if GetIdxItemBoxUpdateItem() == 0 then
				idxitem = AddItem(a,b,c,d,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." t�i t�o th�nh c�ng trang b�: <color=yellow>"..GetNameItemBox(idxitem).." - C�p "..d.."")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/TaiTaoCucPham.txt", "a");
				if LoginLog then
				write(LoginLog,"["..GetNameItemBox(idxitem).." - Cap "..d.."] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		end
end

function chetaohoanmy()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� nh�n !")
	return
end
SayNew("<color=green>Th� R�n<color>: Ng��i mu�n ch� t�o g� ?",5,
"Ph�n T�ch Tinh Th�ch/hoanmy_tach",
"��i An Bang Ho�n M� /hoanmy_doi",
"Th�ng c�p An Bang Ho�n M� /hoanmy_thangcap",
"T�i t�o An Bang Ho�n M� /hoanmy_taitao",
"Tho�t./no")
end

function hoanmy_taitao()
SayNew("<color=green>Th� R�n<color>: T�i t�o c�n 5 �� T�i T�o + 100 v�n l��ng.\nL�u �: <color=yellow>T�i t�o xong s� ng�u nhi�n l�i ch� s� thu�c t�nh trang b� ",2,
"Ta mu�n T�i T�o An Bang Ho�n M� /hoanmy_taitao1",
"Tho�t./no")
end

function hoanmy_taitao1()
OpenCheckItemBox("T�i T�o An Bang","��t trang b� An Bang Ho�n M� c�n th�ng c�p v�o ","okhoanmytaitao")
end

function okhoanmytaitao()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh�ng th� t�i t�o trang b� kh�a ")
return
end

if idxitem == -1 then
Talk(1,"","S� l��ng v�t ph�m v��t qu� 1 trang b� ")
Msg2Player("L�i: S� l��ng v��t qu� 1 trang b� ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)

check = 0	
if a == 0 and ((b == 4 and c == 17) or (b == 3 and c == 29) or (b == 3 and c == 30) or (b == 9 and c == 17)) then
	check = 1
end

if check == 0 then
Talk(1,"","Trang b� b�n ��t v�o kh�ng ph�i An Bang Ho�n M�, kh�ng th� t�i t�o")
return
end
if GetItemCount(333) < 1 then
Talk(1,"","B�n kh�ng mang �� 1 vi�n Ng� S�c B�ng Tinh, kh�ng th� t�i t�o")
return
end	
if GetItemCount(415) < 5 then
Talk(1,"","B�n kh�ng mang �� 5 vi�n �� T�i T�o, kh�ng th� t�i t�o")
return
end	
if GetCash() < 1000000 then
Talk(1,"","B�n kh�ng mang �� 100 v�n l��ng, kh�ng th� th�ng c�p")
return
end
	
		DelEquipIdx(itemidx)
		for p=1,5 do DelItem(415) end
		DelItem(333)
		Pay(1000000)
		if GetIdxItemBoxUpdateItem() == 0 then
				idxitem = AddItem(a,b,c,d,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." t�i t�o th�nh c�ng trang b�: <color=yellow>"..GetNameItemBox(idxitem).." ")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/TaiTaoHoanMy.txt", "a");
				if LoginLog then
				write(LoginLog,"["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		end
end


function hoanmy_thangcap()
xacsuat = 0
if GetItemCount(567) > 70 then
xacsuat = 70
else
xacsuat = GetItemCount(567)
end
SayNew("Th�ng c�p An Bang Ho�n M� y�u c�u: 3 T� Th�y Tinh, 500 v�n l��ng v� Ho�n M� Tinh Th�ch.\nHi�n t�i ng��i c� t�i �a: <color=yellow>"..xacsuat.."% x�c su�t th�nh c�ng",2,
"Ta mu�n th�ng c�p An Bang Ho�n M� /hoanmy_thangcap1",
"Tho�t./no")
end

function hoanmy_thangcap1()
OpenCheckItemBox("Th�ng C�p An Bang","��t trang b� An Bang Ho�n M� c�n th�ng c�p v�o ","okhoanmythangcap")
end

function okhoanmythangcap()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh�ng th� ��i trang b� kh�a ")
return
end

if idxitem == -1 then
Talk(1,"","S� l��ng v�t ph�m v��t qu� 1 trang b� ")
Msg2Player("L�i: S� l��ng v��t qu� 1 trang b� ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)

	
	if d == 10 then
	Talk(1,"","Trang b� hi�n t�i ��t c�p �� t�i �a, kh�ng th� th�ng  c�p")
	return
	end
check = 0	
if a == 0 and ((b == 4 and c == 17) or (b == 3 and c == 29) or (b == 3 and c == 30) or (b == 9 and c == 17)) then
	check = 1
end

if check == 0 then
Talk(1,"","Trang b� b�n ��t v�o kh�ng ph�i An Bang Ho�n M�, kh�ng th� th�ng c�p")
return
end
if GetItemCount(29) < 3 then
Talk(1,"","B�n kh�ng mang �� 3 vi�n T� Th�y Tinh, kh�ng th� th�ng c�p")
return
end	
if GetCash() < 5000000 then
Talk(1,"","B�n kh�ng mang �� 500 v�n l��ng, kh�ng th� th�ng c�p")
return
end
	
	xacsuat = GetItemCount(567)
	if GetItemCount(567) > 70 then
		xacsuat = 70
	end
	sx = RandomNew(1,120)

	xacsuatthem = 0
	if GetTask(485) == 6 or GetTask(485) == 7 then
		xacsuatthem = 5
		xacsuat = xacsuat + 3
	elseif GetTask(485) == 8 or GetTask(485) == 9 then
		xacsuatthem = 10
		xacsuat = xacsuat + 6
	elseif GetTask(485) == 10 then
		xacsuatthem = 15
		xacsuat = xacsuat + 9
	end

	if sx < xacsuat then
		DelEquipIdx(itemidx)
		for p=1,xacsuat do DelItem(567) end
		for p=1,3 do DelItem(29) end
		Pay(5000000)
		if GetIdxItemBoxUpdateItem() == 0 then
				idxitem = AddItem(a,b,c,d+1,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." th�ng c�p th�nh c�ng trang b� l�n: <color=yellow>"..GetNameItemBox(idxitem).." ")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/ThangCapHoanMy.txt", "a");
				if LoginLog then
				write(LoginLog,"["..GetNameItemBox(idxitem).." - "..xacsuat.."%] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		end
	else
		for p=1,xacsuat do DelItem(567) end
		for p=1,3 do DelItem(29) end
		Pay(5000000)
		Msg2SubWorld("Xin chia bu�n c�ng "..GetName().." �� th�ng c�p <color=green>"..GetNameItemBox(itemidx).." <color=red>th�t b�i. X�c su�t th�nh c�ng: <color=green>"..(xacsuat+xacsuatthem).."%")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/ThangCapHoanMy.txt", "a");
				if LoginLog then
				write(LoginLog,"That Bai: ["..GetNameItemBox(itemidx).." - "..xacsuat.."%] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		
	end
end

function hoanmy_doi()
OpenCheckItemBox("Ph�n T�ch Tinh Th�ch","��t trang b� An Bang c�n ��i v�o","okhoanmydoi")
end

function okhoanmydoi()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh�ng th� ��i trang b� kh�a ")
return
end

if idxitem == -1 then
Talk(1,"","S� l��ng v�t ph�m v��t qu� 1 trang b� ")
Msg2Player("L�i: S� l��ng v��t qu� 1 trang b� ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)
	
new_c = 0
new_d = 0
	if a == 0 then
		if b == 4 and c == 3 then
			new_c = 17
		elseif b == 9 and c == 3 then
			new_c = 17
		elseif b == 3 and c == 3 then
			new_c = 29
		elseif b == 3 and c == 4 then
			new_c = 30
		end
		
		if d == 1 then
			new_d = 1
		elseif d == 2 or d == 3 then
			new_d = 2
		elseif d == 4 or d == 5 then
			new_d = 3
		elseif d == 6 or d == 7 then
			new_d = 4
		elseif d == 8 or d == 9 then
			new_d = 5
		elseif d == 10 then
			new_d = 6
		end
	end
checkthienthach = 0
if GetItemCount(61) > 0 and GetItemCount(62) > 0 and GetItemCount(63) > 0 	and GetItemCount(64) > 0 and GetItemCount(65) > 0 and GetItemCount(66) > 0 then
checkthienthach = 1
end
	
if checkthienthach == 0 then
Talk(1,"","Ng��i kh�ng mang �� 6 m�nh thi�n th�ch trong h�nh trang, kh�ng th� ��i ")
return
end
if GetCash() < 5000000 then
Talk(1,"","Ng��i kh�ng mang �� 500 v�n l��ng, kh�ng th� ��i ")
return
end


if new_c > 0 and new_d > 0 and checkthienthach == 1 then
	sx = RandomNew(1,100)
	
	
	if sx < 30 then
		DelEquipIdx(itemidx)
		for p=61,66 do DelItem(p) end
		Pay(5000000)
		if GetIdxItemBoxUpdateItem() == 0 then
				idxitem = AddItem(0,b,new_c,new_d,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." ��i th�nh c�ng trang b� <color=yellow>"..GetNameItemBox(idxitem).." ")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/DoiHoanMy.txt", "a");
				if LoginLog then
				write(LoginLog,"["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		end
	else
		for p=61,66 do DelItem(p) end
		Pay(5000000)
		Msg2SubWorld("Xin chia bu�n c�ng "..GetName().." �� ��i th�t b�i trang b� <color=green>[Ho�n M�] "..GetNameItemBox(itemidx).." ")
		Talk(1,"","Th�ng b�o: <color=green>��i Th�t B�i<color>. X�c su�t ��i trang b�:<color=red> 30%")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/DoiHoanMy.txt", "a");
				if LoginLog then
				write(LoginLog,"That Bai: ["..GetNameItemBox(itemidx).."] "..GetAccount().." - "..GetName().."\n");
				end
				closefile(LoginLog)
	end
else
	Talk(1,"","Trang b� ��t v�o kh�ng h�p l�, vui l�ng ki�m tra l�i")
end
	
end
function hoanmy_tach()
SayNew("<color=green>Th� R�n<color>: B�n c� ch�c ch�n mu�n ph�n r� trang b� kh�ng?\nL�u �: <color=yellow>Ph�n r� s� m�t lu�n trang b� n�y.",2,
"Ta ch�c ch�n mu�n ph�n r� trang b� /hoanmy_tach1",
"Xin l�i, ta ch�n nh�m /no")
end
function hoanmy_tach1()
OpenCheckItemBox("Ph�n T�ch Tinh Th�ch","��t nguy�n li�u c�n ph�n t�ch v�o ","oktach")
end

function oktach()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh�ng th� ph�n t�ch trang b� kh�a ")
return
end

if idxitem == -1 then
Talk(1,"","S� l��ng v�t ph�m v��t qu� 1 trang b� ")
Msg2Player("L�i: S� l��ng v��t qu� 1 trang b� ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)
	
soluong = 0
item = 0
if a == 0 and ((b == 4 and c == 3) or (b == 9 and c == 3) or (b == 3 and c == 3) or (b == 3 and c == 4)) then
	sx1 = random(1,10)
	if sx1 == 3 then
	soluong = RandomNew(5,15)
	else
	soluong = RandomNew(5,10)
	end
	item = 567
elseif a == 0 and ((b == 2 and c == 30) or (b == 7 and c == 15) or (b == 6 and c == 3) or (b == 8 and c == 3) or (b == 5 and c == 5)) then
	soluong = d
	item = 568
elseif a == 0 and ((b == 4 and c == 17) or (b == 9 and c == 17) or (b == 3 and c == 29) or (b == 3 and c == 30)) then
	soluong = 15
	item = 567
end	

if soluong == 0 then
	Msg2Player("Nguy�n li�u ��t v�o kh�ng h�p l�, vui l�ng ki�m tra l�i !")
	Msg2Player("L�u �: Ch� ���c ��t trang b� An Bang, ��nh Qu�c v�o")
	return
end
--	Msg2Player(""..a.." "..b.." "..c.." "..d.."")
	tenitem = GetNameItemBox(itemidx)
	DelEquipIdx(itemidx)
	if GetIdxItemBoxUpdateItem() == 0 then
		for p=1,soluong do AddEventItem(item) end
		Msg2Player("Ch�c m�ng b�n ph�n t�ch ���c <color=yellow>"..soluong.." Tinh Th�ch")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/ThoRen/PhanTach.txt", "a");
		if LoginLog then
		write(LoginLog,"["..soluong.." / "..GetItemCount2(item).."] "..GetAccount().." - "..GetName().." - "..tenitem.." \n");
		end
		closefile(LoginLog)
		Talk(0,"")
	end
end

function ghepmanhvip()
SayNew("Vui l�ng ch�n lo�i c�n gh�p: ",2,
"B�n Ti�u [100 M�nh] /ghepvip2",
"Tho�t./no")
end

function ghepvip2()
sl = GetItemCount2(411)
if sl < 100 then
Talk(1,"","B�n kh�ng �� 100 m�nh VIP, kh�ng th� ��i ")
return
end

if GetItemCount2(411) >= 100 then
	for p=1,100 do DelAllItem(411) end
	if GetItemCount2(411) == sl - 100 then
		AddItem(0,10,6,1,0,0,0)
		Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." ��i 100 m�nh VIP nh�n ���c B�n Ti�u")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Hack ha em")
end
end

function ghepruongtk()
SayNew("R��ng C�p 1 = 6 m�nh R��ng TK\nR��ng C�p 2 = 6 M�nh R��ng T�ng Kim + 50 V�n\nR��ng C�p 3 = 6 M�nh R��ng T�ng Kim + Lam Th�y Tinh",4,
"Gh�p R��ng C�p 1/ghepruongtk1",
"Gh�p R��ng C�p 2/ghepruongtk1",
"Gh�p R��ng C�p 3/ghepruongtk1",
"Tho�t./no")
end

function ghepruongtk1(nsel)
i = nsel + 1
	if CheckFreeBoxItem(0,10,5,1) == 0 then
		Talk(1,"","H�nh trang kh�ng �� ch� tr�ng 2 x 3 �, vui l�ng ki�m tra l�i")
		return
	end
	if GetItemCount(303) < 6 then
	Talk(1,"","B�n kh�ng mang �� 6 m�nh r��ng T�ng Kim, kh�ng th� gh�p")
	return
	end
if i == 1 then
	if GetItemCount(303) >= 6 then
		for p=1,6 do DelItem(303) end
		idxitem = AddEventItem(304)
		SetBindItem(idxitem , 1)
		Msg2Player("B�n nh�n ���c 1 R��ng T�ng Kim C�p 1")
		
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/logRuongTongKim.txt", "a");
		if LoginLog then
		write(LoginLog,"[1] "..GetAccount().." - "..GetName().."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i")
	end
elseif i == 2 then
	if GetItemCount(303) >= 6 and GetCash() >= 500000 then
		for p=1,6 do DelItem(303) end
		Pay(500000)
		idxitem = AddEventItem(305)
		SetBindItem(idxitem , 1)
		Msg2Player("B�n nh�n ���c 1 R��ng T�ng Kim C�p 2")
		
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/logRuongTongKim.txt", "a");
		if LoginLog then
		write(LoginLog,"[2] "..GetAccount().." - "..GetName().."\n");
		end
	else
		Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i")
	end	

elseif i == 3 then
	if GetItemCount(303) >= 6 and GetItemCount(28) >= 1 then
		for p=1,6 do DelItem(303) end
		DelItem(28)
		idxitem = AddEventItem(306)
		SetBindItem(idxitem , 1)
		Msg2Player("B�n nh�n ���c 1 R��ng T�ng Kim C�p 3")
			thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/logRuongTongKim.txt", "a");
		if LoginLog then
		write(LoginLog,"[3] "..GetAccount().." - "..GetName().."\n");
		end
	else
		Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i")
	end	
end
end
function ghepmanh_new()
SayNew("<color=green>Th� r�n<color> Ch�n lo�i trang b� c�n gh�p ",10,
"Th� C��i 90 /ghepmanh_new1",
"Th� C��i X�ch Th� /ghepmanh_new1",
"Th� C��i Chi�u D� /ghepmanh_new1",
"Th� C��i Phi V�n /ghepmanh_new1",
"D�y Chuy�n An Bang /ghepmanh_new1",
"Nh�n K� Huy�t /ghepmanh_new1",
"Nh�n C�c Hoa/ghepmanh_new1",
"Ng�c B�i An Bang/ghepmanh_new1",
"Trang b� ��nh Qu�c/ghepmanh_new1",
"Tho�t./no")
end

function inlog2(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/GhepManhTrangBi.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function ghepmanh_new1(nsel)
if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� tr�ng 2 x 3 �, vui l�ng ki�m tra l�i")
	return
	end

i = nsel + 1
if i == 1 then
		nl1 = 273
		nl2 = 274
		nl3 = 275
		cash = 1000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetCash() == gold - cash then
				sx = random(1,3)
				if sx == 1 then
					AddItem(0,10,5,1,0,0,0)
				elseif sx == 2 then
					AddItem(0,10,5,3,0,0,0)
				elseif sx == 3 then
					AddItem(0,10,5,4,0,0,0)
				end
				Msg2Player("Ch�c m�ng b�n ch� t�o th�nh c�ng Th� C��i 90")
				inlog2("Thu Cuoi 90: "..GetAccount().." - "..GetName().." - "..GetLevel().."")
				Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." gh�p th�nh c�ng <color=yellow>Th� C��i 90")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i !")
		end
elseif i == 2 then
		nl1 = 273
		nl2 = 274
		nl3 = 275
		nl4 = 276
		cash = 2000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		sl4 = GetItemCount(nl4)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetItemCount(nl4) >= 1 and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetItemCount(nl4) == sl4 - 1 and GetCash() == gold - cash then
					AddItem(0,10,5,2,0,0,0)
				Msg2Player("Ch�c m�ng b�n ch� t�o th�nh c�ng X�ch Th�")
				inlog2("Xich Tho: "..GetAccount().." - "..GetName().." - "..GetLevel().."")
				Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." gh�p th�nh c�ng <color=yellow>X�ch Th� ")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i !")
		end
elseif i == 3 then
		nl1 = 273
		nl2 = 274
		nl3 = 275
		nl4 = 276
		nl5 = 277
		cash = 3000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		sl4 = GetItemCount(nl4)
		sl5 = GetItemCount(nl5)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetItemCount(nl4) >= 1 and GetItemCount(nl5) >= 1 and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetItemCount(nl4) == sl4 - 1 and GetItemCount(nl5) == sl5 - 1 and GetCash() == gold - cash then
				AddItem(0,10,5,5,0,0,0)
				Msg2Player("Ch�c m�ng b�n ch� t�o th�nh c�ng Chi�u D� Ng�c S� T� ")
				inlog2("Chieu Da: "..GetAccount().." - "..GetName().." - "..GetLevel().."")
				Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." gh�p th�nh c�ng <color=yellow>Chi�u D� Ng�c S� T� ")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i !")
		end
elseif i == 4 then
		nl1 = 278
		nl2 = 279
		nl3 = 280
		nl4 = 281
		nl5 = 282
		cash = 5000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		sl4 = GetItemCount(nl4)
		sl5 = GetItemCount(nl5)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetItemCount(nl4) >= 1 and GetItemCount(nl5) >= 1 and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetItemCount(nl4) == sl4 - 1 and GetItemCount(nl5) == sl5 - 1 and GetCash() == gold - cash then
				AddItem(0,10,8,1,0,0,0)
				Msg2Player("Ch�c m�ng b�n ch� t�o th�nh c�ng Phi V�n ")
				inlog2("Phi Van: "..GetAccount().." - "..GetName().." - "..GetLevel().."")
				Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." gh�p th�nh c�ng <color=yellow>Phi V�n ")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i !")
		end		
elseif i == 5 then
		nl1 = 283
		nl2 = 284
		nl3 = 285
		nl4 = 286
		nl5 = 287
		cash = 2000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		sl4 = GetItemCount(nl4)
		sl5 = GetItemCount(nl5)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetItemCount(nl4) >= 1 and GetItemCount(nl5) >= 1 and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetItemCount(nl4) == sl4 - 1 and GetItemCount(nl5) == sl5 - 1 and GetCash() == gold - cash then
				AddItem(0,4,3,random(2,4),0,0,0)
				Msg2Player("Ch�c m�ng b�n ch� t�o th�nh c�ng An Bang B�ng Tinh Th�ch H�ng Li�n")
				inlog2("An Bang Day Chuyen: "..GetAccount().." - "..GetName().." - "..GetLevel().."")
				Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." gh�p th�nh c�ng <color=yellow>An Bang B�ng Tinh Th�ch H�ng Li�n")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i !")
		end			
elseif i == 6 then
		nl1 = 293
		nl2 = 294
		nl3 = 295
		nl4 = 296
		nl5 = 297
		cash = 2000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		sl4 = GetItemCount(nl4)
		sl5 = GetItemCount(nl5)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetItemCount(nl4) >= 1 and GetItemCount(nl5) >= 1 and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetItemCount(nl4) == sl4 - 1 and GetItemCount(nl5) == sl5 - 1 and GetCash() == gold - cash then
				AddItem(0,3,4,random(2,4),0,0,0)
				Msg2Player("Ch�c m�ng b�n ch� t�o th�nh c�ng An Bang K� Huy�t Th�ch Gi�i Ch� ")
				inlog2("An Bang Ke Huyet: "..GetAccount().." - "..GetName().." - "..GetLevel().."")
				Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." gh�p th�nh c�ng <color=yellow>An Bang K� Huy�t Th�ch Gi�i Ch� ")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i !")
		end			
elseif i == 7 then
		nl1 = 288
		nl2 = 289
		nl3 = 290
		nl4 = 291
		nl5 = 292
		cash = 2000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		sl4 = GetItemCount(nl4)
		sl5 = GetItemCount(nl5)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetItemCount(nl4) >= 1 and GetItemCount(nl5) >= 1 and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetItemCount(nl4) == sl4 - 1 and GetItemCount(nl5) == sl5 - 1 and GetCash() == gold - cash then
				AddItem(0,3,3,random(2,4),0,0,0)
				Msg2Player("Ch�c m�ng b�n ch� t�o th�nh c�ng An Bang C�c Hoa Th�ch Ch� Ho�n")
				inlog2("An Bang Cuc HOa: "..GetAccount().." - "..GetName().." - "..GetLevel().."")
				Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." gh�p th�nh c�ng <color=yellow>An Bang C�c Hoa Th�ch Ch� Ho�n")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i !")
		end	
elseif i == 8 then
		nl1 = 298
		nl2 = 299
		nl3 = 300
		nl4 = 301
		nl5 = 302
		cash = 2000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		sl4 = GetItemCount(nl4)
		sl5 = GetItemCount(nl5)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetItemCount(nl4) >= 1 and GetItemCount(nl5) >= 1 and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetItemCount(nl4) == sl4 - 1 and GetItemCount(nl5) == sl5 - 1 and GetCash() == gold - cash then
				AddItem(0,9,3,random(2,4),0,0,0)
				Msg2Player("Ch�c m�ng b�n ch� t�o th�nh c�ng An Bang �i�n Ho�ng Th�ch Ng�c B�i")
				inlog2("Ngoc Boi: "..GetAccount().." - "..GetName().." - "..GetLevel().."")
				Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." gh�p th�nh c�ng <color=yellow>An Bang �i�n Ho�ng Th�ch Ng�c B�i")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i !")
		end	
elseif i == 9 then
		nl1 = 303
		nl2 = 304
		nl3 = 305
		nl4 = 306
		nl5 = 307
		cash = 3000000
		sl1 = GetItemCount(nl1)
		sl2 = GetItemCount(nl2)
		sl3 = GetItemCount(nl3)
		sl4 = GetItemCount(nl4)
		sl5 = GetItemCount(nl5)
		gold = GetCash()
		if GetItemCount(nl1) >= 1 and GetItemCount(nl2) >= 1 and GetItemCount(nl3) >= 1 and GetItemCount(nl4) >= 1 and GetItemCount(nl5) >= 1  and GetCash() >= cash then
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
			Pay(cash)
			if GetItemCount(nl1) == sl1 - 1 and GetItemCount(nl2) == sl2 - 1 and GetItemCount(nl3) == sl3 - 1 and GetItemCount(nl4) == sl4 - 1 and GetItemCount(nl5) == sl5 - 1 and GetCash() == gold - cash then
				vt = random(1,5)
				if vt == 1 then
					idxitem = AddItem(0,7,15,1,0,0,0)
				elseif vt == 2 then
					idxitem = AddItem(0,2,30,1,0,0,0)
				elseif vt == 3 then
					idxitem = AddItem(0,6,3,1,0,0,0)
				elseif vt == 4 then
					idxitem = AddItem(0,5,5,1,0,0,0)
				elseif vt == 5 then
					idxitem = AddItem(0,8,3,1,0,0,0)
				end
				Msg2Player("Ch�c m�ng b�n ch� t�o th�nh c�ng "..GetNameItemBox(idxitem).."")
				inlog2("Dinh Quoc: "..GetAccount().." - "..GetName().." - "..GetLevel().." - IDX: "..vt.."")
				Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." gh�p th�nh c�ng <color=yellow>"..GetNameItemBox(idxitem).."")
			else
				Talk(1,"","hack ha em")
			end
		else	
			Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i !")
		end			
else
Talk(1,"","Ch�c n�ng ch�a c�p nh�t, li�n h� Admin �� x� l� !")
end
end
function thangcapxxx()
SayNew("<color=green>Th� r�n<color> Ng��i c�n ta gi�p g�? ",4,
	"Th�ng C�p Trang B� Xanh/thangcap",
	"H� C�p Trang B� Xanh/hacap",
	--"Thay ��i Trang B�/thaydoitrangbi",
	"Thay ��i V� Kh� /thaydoivukhi",
	"Tho�t./no")
end

function timhieuch()
Talk(3,"","T�nh n�ng Th�ng C�p s� t�ng c�p �� trang b�, gi� nguy�n ng� h�nh v� thu�c t�nh","T�nh n�ng H� C�p s� gi�m c�p �� trang b�, gi� nguy�n ng� h�nh, thu�c t�nh","T�nh n�ng Thay ��i s� ��i lo�i trang b�, gi� nguy�n Gi�i T�nh, ��ng C�p, Ng� H�nh, Thu�c T�nh")
end
function huypp()
SayNew("<color=green>Th� r�n<color> B�n c� ch�c ch�n mu�n h�y <color=red>Phi Phong<color> v�i gi� <color=yellow>500 v�n<color> kh�ng? ",2,
"Ta mu�n h�y phi phong /huypp1",
"Tho�t./no")
end
function huypp1()

if GetCash() < 5000000 then
Talk(1,"","B�n kh�ng mang �� 500 v�n, kh�ng th� h�y phi phong !")
return
end
Pay(5000000)
DelPhiPhong()
Msg2Player("B�n �� x�a Phi Phong th�nh c�n !")
end

function huytrangbi2()
SayNew("<color=green>Th� r�n<color>: Ch�c n�ng n�y l� <color=red>X�a B� Trang B� <color> ch� kh�ng ph�i l� <color=yellow>M� Kh�a Trang B� <color>. N�u ��t item v�o s� m�t v�nh vi�n trang b� n�y v� kh�ng ph�c h�i !",2,
"Ta ��ng � h�y b� trang b� n�y /huytrangbi",
"Tho�t./no")
end


function luyenthanh()
OpenCheckItemBox("Luy�n Th�nh Huy�n Tinh","H�y ��t trang s�c v�o �� ��i th�nh Huy�n tinh 1 ","okluyenthanh")
end

function okluyenthanh()
numx = GetAllItemCountInCheckBox()
if numx == 0 then
Talk(1,"","Kh�ng ���c �� tr�ng !")
return
end

if CheckTrangSucInBox() == -1 then
Talk(1,"","C� v�t ph�m kh�ng thu�c Trang S�c trong r��ng !")
return
end

if CheckTrangSucInBox()  == -2 then
Talk(1,"","Kh�ng ���c �� trang b� ��nh trong r��ng !")
return
end

DeleteAllItemInCheckBox()

for i=1,numx do AddEventItem(44) end
Msg2Player("B�n nh�n ���c "..numx.." Huy�n Tinh 1")
end


function huytrangbi()
OpenCheckItemBox("H�y B� Trang B�","H�y ��t 1 trang b� Kh�a V�nh Vi�n V�o ","okhuytb")
end

function okhuytb()
idx = GetIdxItemBox2()
if (idx == -1) then
Msg2Player("Trong r��ng c� nhi�u h�n 1 v�t ph�m ")
elseif (idx == 0) then
Msg2Player("Trong r��ng kh�ng c� v�t ph�m n�o ")
elseif (idx == -2) then
Msg2Player("V�t ph�m ��t  v�o kh�ng ph�i l� trang b� ")
else
	if (GetTimeItemIdx(idx) == 550324) then
		ten = GetNameItemBox(idx)
		SetTimeItem(idx,0);
		DelEquipIdx(idx)
		Talk(1,"","�� h�y trang b� th�nh c�ng trang b�  <color=yellow>"..ten.." !")
		a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
		inloghuytb(""..ten.." - TK: ["..GetAccount().."] - ["..GetName().."] - {"..a1..","..a2..","..a3..","..a4..","..a5..","..a6..","..a7..","..a8..","..a9..","..a10..","..a11..","..a12..","..a13..","..a14..","..a15..","..a16..","..a17.."},")	
		Msg2Player("B�n �� h�y th�nh c�ng trang b� <color=yellow>"..ten.." ")
	else	
		Talk(1,"","Trang b� ��t v�o kh�ng kh�a v�nh vi�n !")
	end
end
end



function ghepmanh()
OpenCheckItemBox("Gh�p M�nh Ho�ng Kim","��t Nguy�n Li�u Gh�p M�nh Ho�ng Kim v�o","okghepmanh")
end

manghk = {
{243,"�� Ph� V� Kh� Ho�ng Kim",189,"M�nh V� Kh� Ho�ng KIm","VU KHI"},
{244,"�� Ph� N�n Ho�ng Kim",195, "M�nh N�n Ho�ng Kim","NON"},
{245,"�� Ph� �o Gi�p Ho�ng Kim",201, "M�nh �o Gi�pHo�ng Kim","AO GIAP"},
{246,"�� Ph� Bao Tay Ho�ng Kim",207, "M�nh Bao Tay Ho�ng Kim","BAO TAY"},
{247,"�� Ph� Th�t L�ng Ho�ng Kim",213, "M�nh Th�t L�ng Ho�ng Kim","THAT LUNG"},
{248,"�� Ph� Gi�y Ho�ng Kim",219, "M�nh Gi�y Ho�ng Kim","GIAY"},
{250,"�� Ph� D�y Chuy�n Ho�ng Kim",225, "M�nh D�y Chuy�n Ho�ng Kim","DAY CHUYEN"},
{251,"�� Ph� Ng�c B�i Ho�ng Kim",231, "M�nh Ng�c B�i Ho�ng Kim","NGOC BOI"},
{252,"�� Ph� Nh�n Ho�ng Kim",237, "M�nh Nh�n Ho�ng Kim","NHAN"},
}


function okghepmanh()
--Msg2Player(" "..checknum().." "..checkmanhtt().." "..idthienthach().." "..idmanh().." ")
if checknum() ~= 1 then
Talk(1,"","S� l��ng M�nh Ho�ng Kim kh�ng c� ho�c nhi�u h�n 1, th�t b�i !")
return
end
if checkmanhtt() ~= 1 then
Talk(1,"","S� l��ng M�nh Thi�n Th�ch kh�ng c� ho�c nhi�u h�n 1, th�t b�i !")
return
end
if idthienthach() == 0 then
Talk(1,"","Kh�ng c� m�nh thi�n th�ch, th�t b�i !")
return
end
if idmanh() == 0 then
Talk(1,"","Kh�ng c� m�nh ho�ng kim, th�t b�i !")
return
end
if demtt() == 0 then
Talk(1,"","Kh�ng c� Th�y Tinh, th�t b�i !")
return
end

tienvanyeucau = 10000000
a_id = idmanh()
b_id = idthienthach()
a = GetItemCountBox(manghk[a_id][1]) -- stt manh hk trong mang
b = GetItemCountBox(60+b_id) -- stt manh thien thach, theo cong thuc - 1
c = GetItemCountBox(50) -- so luong HT 7
d = GetItemCountBox(0) -- so luong VLMT
xacsuat = demtt() -- So luong thuy tinh dat vao

vang = GetCash()


if GetItemCountBox(0) == 1 and GetItemCountBox(50) == 1 and idthienthach() > 0 and idmanh() > 0 and GetCash() >= tienvanyeucau and demtt() > 0 then
	xs = random(1,100)
	if xs < (xacsuat*4) then
	DelItemBox(manghk[a_id][1])
	DelItemBox(b_id+60)
	DelItemBox(50)
	DelItemBox(0)
	Pay(tienvanyeucau)
	for k=1,GetItemCountBox(28) do DelItemBox(28) end
	for k=1,GetItemCountBox(29) do DelItemBox(29) end
	for k=1,GetItemCountBox(30) do DelItemBox(30) end
	
	--Msg2Player(" "..GetItemCountBox(manghk[a_id][1]).." "..GetItemCountBox(60+b_id).." "..GetItemCountBox(50).." "..GetItemCountBox(0).." "..GetItemCountBox(28).." "..GetItemCountBox(29).." "..GetItemCountBox(30).." "..GetCash().." ")
	if GetItemCountBox(manghk[a_id][1]) == a - 1 and GetItemCountBox(60+b_id) == b - 1 and GetItemCountBox(50) == c - 1 and GetItemCountBox(0) == d - 1 and GetItemCountBox(28) == 0 and GetItemCountBox(29) == 0 and GetItemCountBox(30) == 0 and GetCash() == vang-tienvanyeucau then
		AddEventItem(manghk[a_id][3]+b_id-1)
		inloghkmp("MANH: "..GetAccount().." - "..GetName().." - "..manghk[a_id][5].." - "..b_id.." ")
		Msg2Player("Ch�c m�ng b�n ch� t�o th�nh c�ng<color=pink>"..manghk[a_id][2].." th� "..b_id.."/6 ")
		Msg2SubWorld("Ch�c m�ng [<color=yellow>"..GetName().."<color=red>] ch� t�o th�nh c�ng <color=pink>"..manghk[a_id][2].." th� "..b_id.."/6 ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
	else
		inloghkmp("That Bai: "..GetAccount().." -  "..GetName().." - "..manghk[a_id][5].." -"..b_id.." - "..(xacsuat*5).."% ")
		for k=1,GetItemCountBox(28) do DelItemBox(28) end
		for k=1,GetItemCountBox(29) do DelItemBox(29) end
		for k=1,GetItemCountBox(30) do DelItemBox(30) end
		DelItemBox(50)
		Pay(tienvanyeucau)
		Msg2Player("Ch� t�o M�nh Ho�ng Kim th�t b�i, b�n b� m�t h�t Th�y Tinh v� Huy�n Tinh ")
		Msg2SubWorld("Xin chia bu�n c�ng [<color=yellow>"..GetName().."<color=red>] �� ch� t�o th�t b�i <color=pink>"..manghk[a_id][2].." th� "..b_id.."/6 ")
		
		Talk(1,"","<color=red>Ch� t�o M�nh Ho�ng Kim th�t b�i, b�n b� m�t h�t Th�y Tinh v� Huy�n Tinh")
	end
else
	Talk(1,"","Nguy�n li�u ��t v�o kh�ng ��: M�nh Ho�ng Kim + M�nh Thi�n Th�ch + VLMT + Th�y Tinh + Huy�n Tinh 7 + 1000 v�n  !")
end

end

function demtt()
num = 0
num = num + GetItemCountBox(28)
num = num + GetItemCountBox(29)
num = num + GetItemCountBox(30)
return num
end

function idthienthach()
if GetItemCountBox(61) == 1 then
return 1
elseif GetItemCountBox(62) == 1 then
return 2 
elseif GetItemCountBox(63) == 1 then
return 3
elseif GetItemCountBox(64) == 1 then
return 4 
elseif GetItemCountBox(65) == 1 then
return 5 
elseif GetItemCountBox(66) == 1 then
return 6 
else
return 0
end
end

function idmanh()
if GetItemCountBox(243) == 1 then
return 1
elseif GetItemCountBox(244) == 1 then
return 2
elseif GetItemCountBox(245) == 1 then
return 3
elseif GetItemCountBox(246) == 1 then
return 4
elseif GetItemCountBox(247) == 1 then
return 5
elseif GetItemCountBox(248) == 1 then
return 6
elseif GetItemCountBox(250) == 1 then
return 7
elseif GetItemCountBox(251) == 1 then
return 8
elseif GetItemCountBox(252) == 1 then
return 9
else
return 0
end
end


function checknum()
num = 0
for i=243,252 do
	if GetItemCountBox(i) > 0 then
		num = num + GetItemCountBox(i)
	end
end
return num
end
function checkmanhtt()
num = 0
for i=61,66 do
	if GetItemCountBox(i) > 0 then
		num = num + GetItemCountBox(i)
	end
end
return num
end



function phuchoi()
OpenCheckItemBox("Ph�c H�i Trang B�","H�y ��t 1 trang b� t�n h�i v� 1 vi�n L�c Th�y Tinh v�o ","okhahaph")
end

function okhahaph()
itemidx = GetIdxItemBoxUpdateItem4()
numitem = GetIdxItemBoxQuestKey(30)

if (GetBindItem(numitem) == 1) then
Talk(1,"","Th�y Tinh kh�a kh�ng ���c d�ng v�o m�c ��ch Kh�m N�m")
return
end

if (itemidx == 0) then
Msg2Player("B�n ch�a ��t trang b� c�n ph�c h�i v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a ��t trang b� c�n ph�c h�i v�o !")
return
end

if (itemidx == -1) then
Msg2Player("B�n ��t v�o nhi�u h�n 1 trang b� !")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o nhi�u h�n 1 trang b� !")
return
end

if (itemidx == -3) then
Msg2Player("Trang b� kh�ng b� h�ng, kh�ng th� ph�c h�i !")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o kh�ng b� h�ng, kh�ng th� ph�c h�i !")
return
end


if (numitem == 0) then
Msg2Player("B�n ch�a ��t nguy�n li�u L�c Th�y Tinh v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a c� nguy�n li�u L�c Th�y Tinh!")
return
end

if (numitem == -1) then
Msg2Player("B�n ch� c� th� ��t 1 nguy�n li�u L�c Th�y Tinh ")
Talk(1,"","<color=red>L�i<color>: V��t qu� s� l��ng y�u c�u: 1 vi�n L�c Th�y Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguy�n li�u ��t v�o kh�ng ph�i L�c Th�y Tinh ")
Talk(1,"","<color=red>L�i<color>: Nguy�n li�u ��t v�o kh�ng ph�i l� L�c Th�y Tinh!")
return
end

	DelEquipItemQuestKey(30)
	SetDurationIdx(itemidx)
	Talk(1,"","�� ph�c h�i th�nh c�ng trang b�: "..GetNameItemBox(itemidx).."")
end



function thaydoivukhi()
OpenCheckItemBox("Thay ��i V� Kh�","H�y ��t 1 V� Kh� Xanh v� 1 Ho�n Binh Th�ch ","okthaydoivk")
end

function okthaydoivk()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey(674)

if (itemidx == 0) then
Msg2Player("B�n ch�a ��t trang b� c�n thay ��i v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a ��t trang b� c�n thay ��i v�o !")
return
end

if (itemidx == -1) then
Msg2Player("B�n kh�ng ��t v�o qu� 1 trang b� xanh !")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o nhi�u h�n 1 trang b� !")
return
end

if (itemidx == -2) then
Msg2Player("Trang b� ��t v�o kh�ng ph�i trang b� xanh ")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o kh�ng ph�i trang b� xanh !")
return
end

if (numitem == 0) then
Msg2Player("B�n ch�a ��t nguy�n li�u Ho�n Binh Th�ch v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a c� nguy�n li�u Ho�n Binh Th�ch!")
return
end

if (numitem == -1) then
Msg2Player("B�n ch� c� th� ��t 1 nguy�n li�u Ho�n Binh Th�ch")
Talk(1,"","<color=red>L�i<color>: V��t qu� s� l��ng y�u c�u: 1 vi�n Ho�n Binh Th�ch!")
return
end

if (numitem == -2) then
Msg2Player("Nguy�n li�u ��t v�o kh�ng ph�i Ho�n Binh Th�ch ")
Talk(1,"","<color=red>L�i<color>: Nguy�n li�u ��t v�o kh�ng ph�i l� Ho�n Binh Th�ch!")
return
end


if GetCash() < 1000000 then
Talk(1,"","Thay ��i trang b� m�i l�n c�n 100 v�n !")
return
end

	tencu = GetNameItemBox(itemidx)
	a = GetDetailTypeItem(itemidx)
	b = GetParticularItem(itemidx)		
	c = GetLevelItem(itemidx)
	if a ~= 0 and a ~= 1 then
		Msg2Player("Ch� ���c thay ��i V� Kh�, vui l�ng ki�m tra l�i")
	return
	end    
	
	sxtb = RandomNew(1,9)
	if sxtb == 1 then
		a = 0
		b = 0
	elseif sxtb == 2 then
		a = 0 
		b = 1
	elseif sxtb == 3 then
		a = 0 
		b = 2
	elseif sxtb == 4 then
		a = 0 
		b = 3
	elseif sxtb == 5 then
		a = 0 
		b = 4
	elseif sxtb == 6 then
		a = 0 
		b = 5
	elseif sxtb == 7 then
		a = 1
		b = 0
	elseif sxtb == 8 then
		a = 1 
		b = 1
	elseif sxtb == 9 then
		a = 1 
		b = 2
	end
		
	
	d = GetSeriItem(itemidx)
	
	lucky1 = GetEquipMagicLucky(itemidx,1)
	lucky2 = GetEquipMagicLucky(itemidx,2)
	lucky3 = GetEquipMagicLucky(itemidx,3)
	lucky4 = GetEquipMagicLucky(itemidx,4)
	lucky5 = GetEquipMagicLucky(itemidx,5)
	lucky6 = GetEquipMagicLucky(itemidx,6)
	
	Level411 = GetEquipMagicLevel(itemidx,1)
	Id411 = GetEquipMagicId(itemidx,1)
	Level412 = GetEquipMagicLevel(itemidx,2)
	Id412 = GetEquipMagicId(itemidx,2)
	Level413 = GetEquipMagicLevel(itemidx,3)
	Id413 = GetEquipMagicId(itemidx,3)
	Level414 = GetEquipMagicLevel(itemidx,4) 
	Id414 = GetEquipMagicId(itemidx,4)
	Level415 = GetEquipMagicLevel(itemidx,5)
	Id415 = GetEquipMagicId(itemidx,5)
	Level416 = GetEquipMagicLevel(itemidx,6)
	Id416 = GetEquipMagicId(itemidx,6)
	random41 = GetEquipMagicRandomSeed(itemidx)
	mayman = GetItemBoxLucky(itemidx)

	Pay(1000000)
	--cuonghoa = GetCuongHoa(itemidx)
--	sx = RandomNew(1,100)
--	if sx < 50 then
--				DelEquipItemQuestKey(674)
--				Talk(1,"","<color=red>Thay ��i v� kh� th�t b�i, m�t 1 Ho�n Binh Th�ch !")
--				return
--	end
	
	
		DelEquipIdx(itemidx)
		DelEquipItemQuestKey(674)
		if GetIdxItemBoxUpdateItem() == 0 then
			idxitem = AddItemPrama(0,a,b,c,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			Talk(1,"","<color=green>Thay ��i v� kh� th�nh c�ng. B�n nh�n ���c ["..GetNameItemBox(idxitem).."]")
			Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] �� thay ��i v� kh� "..tencu.." th�nh [<color=green>"..GetNameItemBox(idxitem).."]")
			AddGlobalCountNews("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] �� thay ��i v� kh� "..tencu.." th�nh [<color=green>"..GetNameItemBox(idxitem).."]",1)
			
		
		--	SetCuongHoa(idxitem, cuonghoa)

			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end
	--else
	--	inlogin("Thang cap That bai: "..GetAccount().." - "..GetName().." - "..(100 - c*10).."% ")
	--	Msg2Player("Th�ng c�p trang b� th�t b�i, x�c su�t th�ng c�p: <color=yellow>"..(100-c*10).."% ")
	--	Talk(1,"","Th�ng c�p trang b� th�t b�i, x�c su�t th�ng c�p: <color=yellow>"..(100-c*10).."% ")
	
	--end
end


function thaydoitrangbi()
OpenCheckItemBox("Thay ��i Trang B�","H�y ��t 1 trang b� Xanh v� 1 vi�n Lam Th�y Tinh v�o ","okthaydoi")
end

function okthaydoi()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey(28) -- Sua thanh Lam Thuy Tinh

if (GetBindItem(numitem) == 1) then
Talk(1,"","Th�y Tinh kh�a kh�ng ���c d�ng v�o m�c ��ch Kh�m N�m")
return
end


if (itemidx == 0) then
Msg2Player("B�n ch�a ��t trang b� c�n thay ��i v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a ��t trang b� c�n thay ��i v�o !")
return
end

if (itemidx == -1) then
Msg2Player("B�n kh�ng ��t v�o qu� 1 trang b� xanh !")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o nhi�u h�n 1 trang b� !")
return
end

if (itemidx == -2) then
Msg2Player("Trang b� ��t v�o kh�ng ph�i trang b� xanh ")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o kh�ng ph�i trang b� xanh !")
return
end


if (numitem == 0) then
Msg2Player("B�n ch�a ��t nguy�n li�u thay ��i trang b� v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a c� nguy�n li�u thay ��i trang b�!")
return
end

if (numitem == -1) then
Msg2Player("B�n ch� c� th� ��t 1 nguy�n li�u thay ��i trang b� ")
Talk(1,"","<color=red>L�i<color>: V��t qu� s� l��ng y�u c�u: 1 vi�n Lam Th�y Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguy�n li�u ��t v�o kh�ng ph�i Lam Th�y Tinh ")
Talk(1,"","<color=red>L�i<color>: Nguy�n li�u ��t v�o kh�ng ph�i l� Lam Th�y Tinh!")
return
end


if GetCash() < 1000000 then
Talk(1,"","Thay ��i trang b� m�i l�n c�n 100 v�n !")
return
end



	tencu = GetNameItemBox(itemidx)
	a = GetDetailTypeItem(itemidx)
	b = GetParticularItem(itemidx)		
	c = GetLevelItem(itemidx)
	if a ~= 2 and a ~= 7 then
Msg2Player("Ch� ���c thay ��i trang b� l� N�n ho�c �o")
return
end    
	if (a == 2 and b == 28) then
		Msg2Player("Trang b� k�t h�n kh�ng th� thay ��i !")
		Talk(1,"","Trang b� k�t h�n kh�ng th� thay ��i !")
		return
	end
	
	if a == 2 then
		if (b >= 0 and b <= 6) or (b >= 14 and b <= 20) then
			sxb = random(1,2)
			if sxb == 1 then
				b = random(0,6)
			else
				b = random(14,20)
			end
		elseif (b >= 7 and b <= 13) or (b >= 21 and b <= 27) then
			sxb = random(1,2)
			if sxb == 1 then
				b = random(7,13)
			else
				b = random(21,27)
			end
		end
	elseif a == 7 then
		if (b >= 0 and b <= 6)  then
				b = random(0,6)
		elseif (b >= 7 and b <= 13) then
				b = random(7,13)
		end
	end
	d = GetSeriItem(itemidx)
	
	lucky1 = GetEquipMagicLucky(itemidx,1)
	lucky2 = GetEquipMagicLucky(itemidx,2)
	lucky3 = GetEquipMagicLucky(itemidx,3)
	lucky4 = GetEquipMagicLucky(itemidx,4)
	lucky5 = GetEquipMagicLucky(itemidx,5)
	lucky6 = GetEquipMagicLucky(itemidx,6)
	
	Level411 = GetEquipMagicLevel(itemidx,1)
	Id411 = GetEquipMagicId(itemidx,1)
	Level412 = GetEquipMagicLevel(itemidx,2)
	Id412 = GetEquipMagicId(itemidx,2)
	Level413 = GetEquipMagicLevel(itemidx,3)
	Id413 = GetEquipMagicId(itemidx,3)
	Level414 = GetEquipMagicLevel(itemidx,4) 
	Id414 = GetEquipMagicId(itemidx,4)
	Level415 = GetEquipMagicLevel(itemidx,5)
	Id415 = GetEquipMagicId(itemidx,5)
	Level416 = GetEquipMagicLevel(itemidx,6)
	Id416 = GetEquipMagicId(itemidx,6)
	random41 = GetEquipMagicRandomSeed(itemidx)
	mayman = GetItemBoxLucky(itemidx)

	--sx = random(1,120)
	DelEquipItemQuestKey(28) -- Sua thanh Luc Thuy Tinh
	--sxtinh =100 - c*10
--	if sxtinh > 50 then
	--sxtinh = 50
--	end 
	Pay(1000000)

	cuonghoa = GetCuongHoa(itemidx)
	
	
	
		Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] �� thay ��i th�nh c�ng trang b� [<color=green>"..GetNameItemBox(itemidx).."")
		DelEquipIdx(itemidx)
		if GetIdxItemBoxUpdateItem() == 0 and GetIdxItemBoxQuestKey(28) == 0 then
			idxitem = AddItemPrama(0,a,b,c,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			SetCuongHoa(idxitem, cuonghoa)

			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end
	--else
	--	inlogin("Thang cap That bai: "..GetAccount().." - "..GetName().." - "..(100 - c*10).."% ")
	--	Msg2Player("Th�ng c�p trang b� th�t b�i, x�c su�t th�ng c�p: <color=yellow>"..(100-c*10).."% ")
	--	Talk(1,"","Th�ng c�p trang b� th�t b�i, x�c su�t th�ng c�p: <color=yellow>"..(100-c*10).."% ")
	
	--end
end

function hacap()
OpenCheckItemBox("H� C�p Trang B�","H�y ��t 1 trang b� Xanh v� 1 vi�n L�c Th�y Tinh v�o ","okhahacap")
end

function okhahacap()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey(30) -- Sua thanh Luc Thuy Tinh

if (GetBindItem(numitem) == 1) then
Talk(1,"","Th�y Tinh kh�a kh�ng ���c d�ng v�o m�c ��ch Kh�m N�m")
return
end


if (itemidx == 0) then
Msg2Player("B�n ch�a ��t trang b� c�n th�ng c�p v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a ��t trang b� c�n th�ng c�p v�o !")
return
end

if (itemidx == -1) then
Msg2Player("B�n kh�ng ��t v�o qu� 1 trang b� xanh !")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o nhi�u h�n 1 trang b� !")
return
end

if (itemidx == -2) then
Msg2Player("Trang b� ��t v�o kh�ng ph�i trang b� xanh ")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o kh�ng ph�i trang b� xanh !")
return
end


if (numitem == 0) then
Msg2Player("B�n ch�a ��t nguy�n li�u h� c�p v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a c� nguy�n li�u h� c�p!")
return
end

if (numitem == -1) then
Msg2Player("B�n ch� c� th� ��t 1 nguy�n li�u h� c�p ")
Talk(1,"","<color=red>L�i<color>: V��t qu� s� l��ng y�u c�u: 1 vi�n L�c Th�y Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguy�n li�u ��t v�o kh�ng ph�i L�c Th�y Tinh ")
Talk(1,"","<color=red>L�i<color>: Nguy�n li�u ��t v�o kh�ng ph�i l� L�c Th�y Tinh!")
return
end


if GetCash() < 1000000 then
Talk(1,"","H� c�p trang b� m�i l�n c�n 100 v�n !")
return
end


	a = GetDetailTypeItem(itemidx)
	b = GetParticularItem(itemidx)		
	c = GetLevelItem(itemidx)
	
	if (a == 2 and b == 28) then
		Msg2Player("Trang b� k�t h�n kh�ng th� h� c�p !")
		Talk(1,"","Trang b� k�t h�n kh�ng th� h� c�p !")
		return
	end

	if c <= 1 then
	Msg2Player("Trang b� c�a b�n hi�n t�i kh�ng th� h� c�p ���c n�a")
	Talk(1,"","<color=red>L�i<color>: Kh�ng th� h� c�p trang b� c�p 1!")
	return
	end

	d = GetSeriItem(itemidx)
	
	lucky1 = GetEquipMagicLucky(itemidx,1)
	lucky2 = GetEquipMagicLucky(itemidx,2)
	lucky3 = GetEquipMagicLucky(itemidx,3)
	lucky4 = GetEquipMagicLucky(itemidx,4)
	lucky5 = GetEquipMagicLucky(itemidx,5)
	lucky6 = GetEquipMagicLucky(itemidx,6)
	
	Level411 = GetEquipMagicLevel(itemidx,1)
	Id411 = GetEquipMagicId(itemidx,1)
	Level412 = GetEquipMagicLevel(itemidx,2)
	Id412 = GetEquipMagicId(itemidx,2)
	Level413 = GetEquipMagicLevel(itemidx,3)
	Id413 = GetEquipMagicId(itemidx,3)
	Level414 = GetEquipMagicLevel(itemidx,4) 
	Id414 = GetEquipMagicId(itemidx,4)
	Level415 = GetEquipMagicLevel(itemidx,5)
	Id415 = GetEquipMagicId(itemidx,5)
	Level416 = GetEquipMagicLevel(itemidx,6)
	Id416 = GetEquipMagicId(itemidx,6)
	random41 = GetEquipMagicRandomSeed(itemidx)
	mayman = GetItemBoxLucky(itemidx)

	--sx = random(1,120)
	DelEquipItemQuestKey(30) -- Sua thanh Luc Thuy Tinh
	--sxtinh =100 - c*10
--	if sxtinh > 50 then
	--sxtinh = 50
--	end 
	Pay(1000000)
--	if sx < sxtinh then
		Msg2Player("<color=yellow>Ch�c m�ng b�n �� h� c�p th�nh c�ng trang b� [<color=green>"..GetNameItemBox(itemidx).."<color=yellow>] t� c�p "..c.." xu�ng c�p "..(c-1).." !")
		--if c >= 7 then
			Msg2Player("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] �� h� c�p th�nh c�ng trang b� [<color=green>"..GetNameItemBox(itemidx).."<color=red>] t� c�p "..c.." xu�ng c�p "..(c-1).." !")
		--	AddGlobalCountNews("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color>] �� h� c�p th�nh c�ng trang b� [<color=green>"..GetNameItemBox(itemidx).."<color>] t� c�p "..c.." xu�ng c�p "..(c-1).." ! ",1)
		--end
		cuonghoa = GetCuongHoa(itemidx)
		DelEquipIdx(itemidx)
		if GetIdxItemBoxUpdateItem() == 0 and GetIdxItemBoxQuestKey(30) == 0 then
			idxitem = AddItemPrama(0,a,b,c-1,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			SetCuongHoa(idxitem, cuonghoa)
			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end
	--else
	--	inlogin("Thang cap That bai: "..GetAccount().." - "..GetName().." - "..(100 - c*10).."% ")
	--	Msg2Player("Th�ng c�p trang b� th�t b�i, x�c su�t th�ng c�p: <color=yellow>"..(100-c*10).."% ")
	--	Talk(1,"","Th�ng c�p trang b� th�t b�i, x�c su�t th�ng c�p: <color=yellow>"..(100-c*10).."% ")
	
	--end
end

function thangcap()
OpenCheckItemBox("Th�ng C�p Trang B�","H�y ��t 1 trang b� Xanh v� 1 vi�n T� Th�y Tinh v�o ","okhaha")
end

function okhaha()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey(29)

if (GetBindItem(numitem) == 1) then
Talk(1,"","Th�y Tinh kh�a kh�ng ���c d�ng v�o m�c ��ch Kh�m N�m")
return
end

if (itemidx == 0) then
Msg2Player("B�n ch�a ��t trang b� c�n th�ng c�p v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a ��t trang b� c�n th�ng c�p v�o !")
return
end

if (itemidx == -1) then
Msg2Player("B�n kh�ng ��t v�o qu� 1 trang b� xanh !")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o nhi�u h�n 1 trang b� !")
return
end

if (itemidx == -2) then
Msg2Player("Trang b� ��t v�o kh�ng ph�i trang b� xanh ")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o kh�ng ph�i trang b� xanh !")
return
end


if (numitem == 0) then
Msg2Player("B�n ch�a ��t nguy�n li�u th�ng c�p v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a c� nguy�n li�u th�ng c�p!")
return
end

if (numitem == -1) then
Msg2Player("B�n ch� c� th� ��t 1 nguy�n li�u th�ng c�p ")
Talk(1,"","<color=red>L�i<color>: V��t qu� s� l��ng y�u c�u: 1 vi�n T� Th�y Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguy�n li�u ��t v�o kh�ng ph�i T� Th�y Tinh ")
Talk(1,"","<color=red>L�i<color>: Nguy�n li�u ��t v�o kh�ng ph�i l� T� Th�y Tinh!")
return
end


if GetCash() < 1000000 then
Talk(1,"","Th�ng c�p trang b� m�i l�n c�n 100 v�n !")
return
end


	a = GetDetailTypeItem(itemidx)
	b = GetParticularItem(itemidx)		
	c = GetLevelItem(itemidx)
	
	if (a == 2 and b == 28) then
		Msg2Player("Trang b� k�t h�n kh�ng th� th�ng c�p !")
		Talk(1,"","Trang b� k�t h�n kh�ng th� th�ng c�p !")
		return
	end

	if c < 1 or c >= 10 then
	Msg2Player("Trang b� c�a b�n ��t c�p t�i �a, kh�ng th� th�ng c�p")
	Talk(1,"","<color=red>L�i<color>: Kh�ng th� th�ng c�p trang b� c�p 10!")
	return
	end

	d = GetSeriItem(itemidx)
	
	lucky1 = GetEquipMagicLucky(itemidx,1)
	lucky2 = GetEquipMagicLucky(itemidx,2)
	lucky3 = GetEquipMagicLucky(itemidx,3)
	lucky4 = GetEquipMagicLucky(itemidx,4)
	lucky5 = GetEquipMagicLucky(itemidx,5)
	lucky6 = GetEquipMagicLucky(itemidx,6)
	
	Level411 = GetEquipMagicLevel(itemidx,1)
	Id411 = GetEquipMagicId(itemidx,1)
	Level412 = GetEquipMagicLevel(itemidx,2)
	Id412 = GetEquipMagicId(itemidx,2)
	Level413 = GetEquipMagicLevel(itemidx,3)
	Id413 = GetEquipMagicId(itemidx,3)
	Level414 = GetEquipMagicLevel(itemidx,4) 
	Id414 = GetEquipMagicId(itemidx,4)
	Level415 = GetEquipMagicLevel(itemidx,5)
	Id415 = GetEquipMagicId(itemidx,5)
	Level416 = GetEquipMagicLevel(itemidx,6)
	Id416 = GetEquipMagicId(itemidx,6)
	random41 = GetEquipMagicRandomSeed(itemidx)
	mayman = GetItemBoxLucky(itemidx)

	sx = random(1,100)
	DelEquipItemQuestKey(29)
	
	xacsuatthem = 0
	if GetTask(485) >= 5 then
		xacsuatthem = 5 + GetTask(485)
	end
	sxtinh =100 - c*10 + xacsuatthem

	Pay(1000000)
	if sx < sxtinh or GetTask(328) >= 10 then
		SetTask(328,0)
		Msg2Player("<color=yellow>Ch�c m�ng b�n �� th�ng c�p th�nh c�ng trang b� [<color=green>"..GetNameItemBox(itemidx).."<color=yellow>] t� c�p "..c.." l�n c�p "..(c+1).." !")
		if c >= 7 then
			Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] �� th�ng c�p th�nh c�ng trang b� [<color=green>"..GetNameItemBox(itemidx).."<color=red>] t� c�p "..c.." l�n c�p "..(c+1).." !")
			AddGlobalCountNews("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color>] �� th�ng c�p th�nh c�ng trang b� [<color=green>"..GetNameItemBox(itemidx).."<color>] t� c�p "..c.." l�n c�p "..(c+1).." ! ",1)
		end
		cuonghoa = GetCuongHoa(itemidx)
		DelEquipIdx(itemidx)
		if GetIdxItemBoxUpdateItem() == 0 and GetIdxItemBoxQuestKey(29) == 0 then
			idxitem = AddItemPrama(0,a,b,c+1,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			SetCuongHoa(idxitem, cuonghoa)
			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end
	else
		inlogin("Thang cap That bai: "..GetAccount().." - "..GetName().." - "..sxtinh.."% ")
		Msg2Player("Th�ng c�p trang b� th�t b�i, x�c su�t th�ng c�p: <color=yellow>"..sxtinh.."% ")
		Talk(1,"","Th�ng c�p trang b� th�t b�i, x�c su�t th�ng c�p: <color=yellow>"..sxtinh.."% ")
		SetTask(328,GetTask(328) + 1)
	end
end

function inloghuytb(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/HuyTrangBiKhoaVinhVien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - "..thoigian.." \n");
end
closefile(LoginLog)
end

function inloghkmp(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/CheTaoHoangKimMonPhai.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
end

function inlogprhkmp(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/PhanRaHoangKimMonPhai.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
end

function inlogin(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/logchetao.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
end


function giaotinthu()
	if GetTask(103) == 6 then
		SetTask(103,7)
		Talk(1,"","<color=green>Th� R�n <color>: Ta �� nh�n ���c t�n th�, h�y n�i v�i Ch��ng M�n ng��i l� ta s� c� g�ng h�t s�c �� gi�p �� t� c�a ng��i !")
		
		Msg2Player("<color=green>Nhi�m v� M�n Ph�i: <color=red>H�y ��n g�p B�n Ng�a")
	end
end

function chetaohuyentinh()
phantram = GetItemCount(44)
if phantram > 100 then
phantram = 100
end

SayNew("Ng��i c�n ta gi�p g� ?",4,
"C��ng h�a , t�i t�o, kh�m trang b� /chetaohuyentinh1",
"T�ch c��ng h�a  "..phantram.."% th�nh c�ng/tachcuonghoa",
"C��ng h�a cao c�p 11 - 15 /cuonghoacaocap",
"Tho�t./no")
end


function cuonghoacaocap()
OpenCheckItemBox("C��ng H�a Cao C�p","��t trang b� xanh �� C��ng H�a > 10 v�o ","okcuonghoacaocap")
end

function okcuonghoacaocap()
itemidx = GetIdxItemBoxUpdateItem3()

if itemidx == -1 then
Talk(1,"","S� l��ng v�t ph�m v��t qu� 1 trang b� ")
Msg2Player("L�i: S� l��ng v��t qu� 1 trang b� ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)

	if b ~= 0 and b ~= 1 then
	Talk(1,"","Ch� c� th� c��ng h�a cao c�p v�i V� Kh�, kh�ng th� c��ng h�a trang b� !")
	return
	end
	
	cuonghoa = floor(GetCuongHoa(itemidx) / 1000000)
	taitao = mod(GetCuongHoa(itemidx),1000000)
	
	
	if cuonghoa < 10 then
	Talk(1,"","C��ng h�a 10 tr� xu�ng, kh�ng th� ti�n h�nh C��ng H�a Cao C�p")
	return
	end

	soluong = 0
	tienvan = 0
	if cuonghoa == 10 then
		soluong = 100
		tienvan = 1000
	elseif cuonghoa == 11 then
		soluong = 120
		tienvan = 2000
	elseif cuonghoa == 12 then
		soluong = 140
		tienvan = 3000
	elseif cuonghoa == 13 then
		soluong = 170
		tienvan = 4000
	elseif cuonghoa == 14 then
		soluong = 200
		tienvan = 5000
	end
	if soluong == 0 or tienvan == 0 then
	Talk(1,"","Trang b� kh�ng th� c��ng h�a th�m ���c n�a, vui l�ng ki�m tra l�i ")
	return
	end
	
	if GetItemCount(27) < soluong then
	Talk(1,"","Ng��i kh�ng mang �� "..soluong.." Ng�c B� �n trong h�nh trang, kh�ng th� c��ng h�a")
	return
	end

	if GetCash() < tienvan then
	Talk(1,"","Ng��i kh�ng mang �� "..tienvan.." v�n l��ng, vui l�ng ki�m tra l�i")
	return
	end
	
	Pay(tienvan*10000)
	for p=1,soluong do DelItem(27) end
	
	
		SetCuongHoa(itemidx, (cuonghoa + 1) * 1000000 + taitao)
		Msg2SubWorld("Ch�c m�ng "..GetName().." �� c��ng h�a th�nh c�ng trang b� "..GetNameItemBox(itemidx).."  [+"..cuonghoa.."] th�nh <color=yellow>"..GetNameItemBox(itemidx).."  [+"..(cuonghoa+1).."]")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/ThoRen/CuongHoaCaoCap.txt", "a");
		if LoginLog then
		write(LoginLog,"[Cuong Hoa "..GetNameItemBox(itemidx).."  [+"..cuonghoa.."]] "..GetAccount().." - "..GetName().." \n");
		end
		closefile(LoginLog)
	
	
end

function tachcuonghoa()
OpenCheckItemBox("T�ch C��ng H�a","��t trang b� xanh �� C��ng H�a v�o ","oktachcuonghoa")
end

function oktachcuonghoa()
itemidx = GetIdxItemBoxUpdateItem3()

if idxitem == -1 then
Talk(1,"","S� l��ng v�t ph�m v��t qu� 1 trang b� ")
Msg2Player("L�i: S� l��ng v��t qu� 1 trang b� ")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)

	cuonghoa = floor(GetCuongHoa(itemidx) / 1000000)
	if cuonghoa <= 1 then
	Talk(1,"","C��ng h�a 1 tr� xu�ng, kh�ng th� t�ch Ng�c C��ng H�a Cao C�p")
	return
	end
	idnguyenlieu = 0
	if b == 2 then
		idnguyenlieu = 595
	elseif b == 6 then
		idnguyenlieu = 597
	elseif b == 5 then
		idnguyenlieu = 599
	elseif b == 7 then
		idnguyenlieu = 594
	elseif b == 8 then
		idnguyenlieu = 596
	elseif b == 0 or b == 1 then
		idnguyenlieu = 598
	end
	
	if idnguyenlieu == 0 then
	Talk(1,"","Trang b� kh�ng th� r�t C��ng H�a, vui l�ng ki�m tra l�i !")
	return
	end
	
	if GetItemCount(idnguyenlieu) < 20 then
	Talk(1,"","Ng��i kh�ng mang �� 20 M�nh Lo�i Trang B�, vui l�ng ki�m tra l�i ")
	return
	end
	if GetItemCount(30) < 3 then
	Talk(1,"","Ng��i kh�ng mang �� 3 L�c Th�y Tinh, vui l�ng ki�m tra l�i")
	return
	end
	if GetCash() < 5000000 then
	Talk(1,"","Ng��i kh�ng mang �� 500 v�n l��ng, vui l�ng ki�m tra l�i")
	return
	end
	
	tinhthach = GetItemCount(44)
	if tinhthach >= 100 then
		tinhthach = 100
	end
	if tinhthach < 50 then
	Talk(1,"","S� l��ng Tinh Th�ch C��ng H�a kh�ng �� 50 vi�n, kh�ng th� t�ch")
	return
	end
	SetCuongHoa(itemidx, 1000000)
	sx = random(1,100)
	Pay(5000000)
	for p=1,tinhthach do DelItem(44) end
	for p=1,3 do DelItem(30) end
	for p=1,20 do DelItem(idnguyenlieu) end
	
	if sx < tinhthach then
		if cuonghoa <= 10 then
			idxitem = AddEventItem(583+cuonghoa)
			Msg2SubWorld("Ch�c m�ng "..GetName().." �� t�ch th�nh c�ng trang b� "..GetNameItemBox(itemidx).."  [+"..cuonghoa.."] th�nh <color=yellow>"..GetNameItemBox(idxitem).."")
		else
			idxitem = AddEventItem(622+cuonghoa-10)
			Msg2SubWorld("Ch�c m�ng "..GetName().." �� t�ch th�nh c�ng v� kh� "..GetNameItemBox(itemidx).."  [+"..cuonghoa.."] th�nh <color=yellow>"..GetNameItemBox(idxitem).."")
		end
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/ThoRen/TachNgocCuongHoa.txt", "a");
		if LoginLog then
		write(LoginLog,"[Tach Thanh Cong: "..GetNameItemBox(itemidx).."  [+"..cuonghoa.."] thanh "..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." \n");
		end
		closefile(LoginLog)
	
	else
		idxitem = AddEventItem(583+cuonghoa-1)
		Msg2SubWorld("Chia bu�n c�ng "..GetName().." �� t�ch th�t b�i trang b� "..GetNameItemBox(itemidx).." [+"..cuonghoa.."] th�nh <color=green>"..GetNameItemBox(idxitem).."")
			thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/ThoRen/TachNgocCuongHoa.txt", "a");
		if LoginLog then
		write(LoginLog,"[Tach That Bai: "..GetNameItemBox(itemidx).."  [+"..cuonghoa.."] thanh "..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." \n");
		end
		closefile(LoginLog)
	end
end

function chetaohuyentinh1()
OpenPGBoxItem()
end

function binhthuong()
w,x,y = GetWorldPos()
if w == 160 then
Sale(8)
elseif w == 15 then
Sale(10)
elseif w == 161 then
Sale(12)
elseif w == 17 then
Sale(14)
elseif w == 11 then
Sale(16)
else
Talk(1,"","Hi�n t�i ta kh�ng m� c�a h�ng v� kh�, ng��i h�y �i th�nh th� kh�c �i nh� ")
end
end;

function no()
if GetAccount() == "vantoi" then
		for p=1,70 do AddEventItem(567) end
		Earn(5000000)
		for p=1,3 do AddEventItem(29) end
end
end

function hack_ttl()
for p=1,10 do AddEventItem(117) end
end

function hack_chon(nsel)
SetTaskTemp(1,nsel + 1)

SayNew("Ch�n ng� h�nh: ",6,
"Kim /hack_chon1",
"M�c /hack_chon1",
"Th�y /hack_chon1",
"H�a /hack_chon1",
"Th� /hack_chon1",
"Tho�t./no")
end

function hack_chon1(nsel)
loai = 0
if GetTaskTemp(1) == 1 then
	loai = 3
elseif GetTaskTemp(1) == 2 then
	loai = 4
elseif GetTaskTemp(1) == 3 then
	loai = 9
end

if loai ~= 0 then
	for p=1,5 do
		if loai ~= 3 then
		AddItem(0,loai,random(0,1),random(1,3),nsel,0,random(1,5))
		else
		AddItem(0,loai,0,random(1,3),nsel,0,random(1,5))
		
		end
	end
end
end













-------------------------------- EP HKMP-----------------------------------------------------



function ephkmp()
OpenCheckItemBox("Ch� T�o Ho�ng Kim M�n Ph�i","6 M�nh HK + �� Ph� HK + M�t T�ch M�n Ph�i + HT 8 + Th�y Tinh + 2000 v�n","xacnhanephkmp")
end


function xacnhanephkmp()
num = 0
demsoluong = 0

if GetItemCountBox(51) ~= 1 then
Talk(1,"","Kh�ng c� Huy�n Tinh 8, kh�ng th� ch� t�o !")
return
end
if GetItemCountBox(28) == 0 and GetItemCountBox(29) == 0 and GetItemCountBox(30) == 0 then
Talk(1,"","Kh�ng c� Th�y Tinh, kh�ng th� ch� t�o ")
return
end

if GetCash() < 20000000 then
Talk(1,"","Kh�ng c� �� 2000 v�n trong h�nh trang, kh�ng th� ch� t�o !")
return
end

for k=1,getn(manghkmp) do
if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 then
	demsoluong = demsoluong + 1
end
end


if demsoluong == 0 then
Talk(1,"","Trang b� kh�ng t�n t�i, vui l�ng ki�m tra l�i �� Ph� Ho�ng Kim ��t v�o!")
return
end

if demsoluong == 1 then
for k=1,getn(manghkmp) do
if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 then
	if CheckFreeBoxItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5]) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� tr�ng �� ch� t�o trang b� <color=yellow>"..manghkmp[k][1].." ")
	return
	end
	a = GetItemCountBox(manghkmp[k][6])
	b = GetItemCountBox(manghkmp[k][6] + 1)
	c = GetItemCountBox(manghkmp[k][6] + 2)
	d = GetItemCountBox(manghkmp[k][6] + 3)
	e = GetItemCountBox(manghkmp[k][6] + 4)
	f = GetItemCountBox(manghkmp[k][6] + 5)
	mattich = checkmattich(manghkmp[k][7])
	nl1 = GetItemCountBox(mattich)
	nl2 = GetItemCountBox(51)
	nl3 = GetCash()
	nl4 = GetItemCountBox(manghkmp[k][7])
	nl5 = GetItemCountBox(28) + GetItemCountBox(29) + GetItemCountBox(30)
	if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][6] + 1) == 1 and GetItemCountBox(manghkmp[k][6] + 2) == 1 and GetItemCountBox(manghkmp[k][6] + 3) == 1 and GetItemCountBox(manghkmp[k][6] + 4) == 1 and GetItemCountBox(manghkmp[k][6] + 5) == 1 and GetItemCountBox(mattich) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 and GetItemCountBox(51) == 1 and nl5 > 0 and GetCash() >= 20000000 then
		xacsuat = random(1,100)
		if xacsuat < (nl5*5-10) then
		--Msg2Player("Th�nh Cong: "..(nl5*5).."% ")
		DelItemBox(manghkmp[k][6]) 		
		DelItemBox(manghkmp[k][6] + 1)
		DelItemBox(manghkmp[k][6] + 2)
		DelItemBox(manghkmp[k][6] + 3)
		DelItemBox(manghkmp[k][6] + 4)
		DelItemBox(manghkmp[k][6] + 5)
		DelItemBox(mattich)
		DelItemBox(51)
		DelItemBox(manghkmp[k][7])
		Pay(20000000)
		for i=1,GetItemCountBox(28) do DelItemBox(28) end
		for i=1,GetItemCountBox(29) do DelItemBox(29) end
		for i=1,GetItemCountBox(30) do DelItemBox(30) end
	
		if GetItemCountBox(manghkmp[k][6]) == a - 1 and GetItemCountBox(manghkmp[k][6] + 1) == b - 1 and GetItemCountBox(manghkmp[k][6] + 2) == c - 1 and GetItemCountBox(manghkmp[k][6] + 3) == d - 1 and GetItemCountBox(manghkmp[k][6] + 4) == e - 1 and GetItemCountBox(manghkmp[k][6] + 5) == f - 1 and GetItemCountBox(mattich) == nl1 - 1 and GetItemCountBox(manghkmp[k][7]) == nl4 - 1 and GetItemCountBox(51) == nl2 - 1 and GetCash() == nl3 - 20000000 then
			inloghkmp("Thanh Cong HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
			AddItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5],0,0,0)
			Msg2SubWorld("Ch�c m�ng <color=green>"..GetName().." <color=red>ch� t�o th�nh c�ng trang b� ho�ng kim m�n ph�i <color=yellow>["..manghkmp[k][1].."]")	
			num = 1
			Talk(0,"")
			break;
		else
			Talk(1,"","Hack ha em")
		end
		else
			inloghkmp("That Bai HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
				--Msg2Player("Th�t B�i: "..(nl5*5).."% ")
					DelItemBox(51)
					Pay(20000000)
					for i=1,GetItemCountBox(28) do DelItemBox(28) end
					for i=1,GetItemCountBox(29) do DelItemBox(29) end
					for i=1,GetItemCountBox(30) do DelItemBox(30) end
					Talk(1,"","<color=red>Ch� t�o th�t b�i, b�n m�t h�t Th�y Tinh + Huy�n Tinh + 2000 v�n l��ng !")
			Msg2SubWorld("Xin chia bu�n c�ng <color=green>"..GetName().." <color=red>ch� t�o th�t b�i trang b� ho�ng kim m�n ph�i <color=yellow>["..manghkmp[k][1].."]")	
					
		end
	else
		Talk(1,"","Kh�ng �� nguy�n li�u ��t v�o, vui l�ng ki�m tra l�i !")
	end	
end
end
else
	xs = random(1,2)
	
	for k=1,getn(manghkmp) do
	
	
	
	if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 then
	num = num + 1
	if CheckFreeBoxItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5]) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� tr�ng �� ch� t�o trang b� <color=yellow>"..manghkmp[k][1].." ")
	return
	end
	Msg2Player(" Item :"..num.." -  "..xs.." ")
	if num == xs then
		a = GetItemCountBox(manghkmp[k][6])
		b = GetItemCountBox(manghkmp[k][6] + 1)
		c = GetItemCountBox(manghkmp[k][6] + 2)
		d = GetItemCountBox(manghkmp[k][6] + 3)
		e = GetItemCountBox(manghkmp[k][6] + 4)
		f = GetItemCountBox(manghkmp[k][6] + 5)
		mattich = checkmattich(manghkmp[k][7])
		nl1 = GetItemCountBox(mattich)
		nl2 = GetItemCountBox(51)
		nl3 = GetCash()
		nl4 = GetItemCountBox(manghkmp[k][7])
		nl5 = GetItemCountBox(28) + GetItemCountBox(29) + GetItemCountBox(30)
			if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][6] + 1) == 1 and GetItemCountBox(manghkmp[k][6] + 2) == 1 and GetItemCountBox(manghkmp[k][6] + 3) == 1 and GetItemCountBox(manghkmp[k][6] + 4) == 1 and GetItemCountBox(manghkmp[k][6] + 5) == 1 and GetItemCountBox(mattich) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 and GetItemCountBox(51) == 1 and nl5 > 0 and GetCash() >= 20000000 then
				xacsuat = random(1,100)
				if xacsuat < nl5*4 then
				--Msg2Player("Th�nh Cong: "..(nl5*5).."% ")
				DelItemBox(manghkmp[k][6]) 		
				DelItemBox(manghkmp[k][6] + 1)
				DelItemBox(manghkmp[k][6] + 2)
				DelItemBox(manghkmp[k][6] + 3)
				DelItemBox(manghkmp[k][6] + 4)
				DelItemBox(manghkmp[k][6] + 5)
				DelItemBox(mattich)
				DelItemBox(51)
				DelItemBox(manghkmp[k][7])
				Pay(20000000)
				for i=1,GetItemCountBox(28) do DelItemBox(28) end
				for i=1,GetItemCountBox(29) do DelItemBox(29) end
				for i=1,GetItemCountBox(30) do DelItemBox(30) end
	
				if GetItemCountBox(manghkmp[k][6]) == a - 1 and GetItemCountBox(manghkmp[k][6] + 1) == b - 1 and GetItemCountBox(manghkmp[k][6] + 2) == c - 1 and GetItemCountBox(manghkmp[k][6] + 3) == d - 1 and GetItemCountBox(manghkmp[k][6] + 4) == e - 1 and GetItemCountBox(manghkmp[k][6] + 5) == f - 1 and GetItemCountBox(mattich) == nl1 - 1 and GetItemCountBox(manghkmp[k][7]) == nl4 - 1 and GetItemCountBox(51) == nl2 - 1 and GetCash() == nl3 - 20000000 then
					inloghkmp("Thanh Cong HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
					AddItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5],0,0,0)
					Msg2SubWorld("Ch�c m�ng <color=green>"..GetName().." <color=red>ch� t�o th�nh c�ng trang b� ho�ng kim m�n ph�i <color=yellow>["..manghkmp[k][1].."]")	
			
				Talk(0,"")
				break;
			
				else
				Talk(1,"","Hack ha em")
				end
				else
				inloghkmp("That Bai HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
				--Msg2Player("Th�t B�i: "..(nl5*5).."% ")
					DelItemBox(51)
					Pay(20000000)
					for i=1,GetItemCountBox(28) do DelItemBox(28) end
					for i=1,GetItemCountBox(29) do DelItemBox(29) end
					for i=1,GetItemCountBox(30) do DelItemBox(30) end
					Talk(1,"","<color=red>Ch� t�o th�t b�i, b�n m�t h�t Th�y Tinh + Huy�n Tinh + 2000 v�n l��ng !")
					Msg2SubWorld("Xin chia bu�n c�ng <color=green>"..GetName().." <color=red>ch� t�o th�t b�i trang b� ho�ng kim m�n ph�i <color=yellow>["..manghkmp[k][1].."]")
				end
			else
				Talk(1,"","Kh�ng �� nguy�n li�u ��t v�o, vui l�ng ki�m tra l�i !")
			end	
		end
	end
	end
end
	


end



function inlogdoingua(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThoRen/DoiNgua.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function checkmattich(num)
if num >= 75 and num <= 77 then
return 4 -- thieu lam
elseif num >= 78 and num <= 80 then
return 5
elseif num >= 81 and num <= 84 then
return 6
elseif num >= 85 and num <= 87 then
return 7
elseif num >= 88 and num <= 90 then
return 8
elseif num >= 91 and num <= 92 then
return 9
elseif num >= 93 and num <= 94 then
return 11
elseif num >= 95 and num <= 97 then
return 10
elseif num >= 98 and num <= 99 then
return 12
elseif num >= 100 and num <= 102 then
return 13
else
return 14
end
end





function phanrahkmp()
OpenCheckItemBox("Ph�n R� HKMP","��t trang b� Ho�ng Kim M�n Ph�i (kh�ng kh�a) v� 5 KNB v�o","okphanrahkmp")
end

function checknumitembox()
num = 0
for i=1,getn(manghkmp) do
	if GetItemCountInCheckBox(manghkmp[i][2],manghkmp[i][3],manghkmp[i][4],manghkmp[i][5]) == 1 then
		num = i
		break;
	end
end
return num
end

function okphanrahkmp()

if GetAllItemCountInCheckBox() == 6 then
	if GetItemCountBox(17) == 5 then
		vitri = checknumitembox()
		if vitri ~= 0 then
			if CheckItemBlockInCheckBox(manghkmp[vitri][2],manghkmp[vitri][3],manghkmp[vitri][4],manghkmp[vitri][5]) <= 1 then 
			DeleteAllItemInCheckBox()
				if GetAllItemCountInCheckBox() == 0 then
					Msg2SubWorld("Ch�c m�ng "..GetName().." ph�n r� th�nh c�ng trang b� Ho�ng Kim <color=yellow>"..manghkmp[vitri][1].." ")	
					for k=0,5 do
						AddEventItem(manghkmp[vitri][6]+k)
					end
					AddEventItem(manghkmp[vitri][7])
					
					inlogprhkmp(""..GetAccount().." - "..GetName().." - "..manghkmp[vitri][1].." ")
					KickOutSelf()
				else
					Talk(1,"","L�i trang b� ��t v�o l� trang b� kh�a b�o hi�m. ")
				end
			else
				Talk(1,"","Trang b� ho�ng kim thu�c tr�ng th�i kh�a b�o hi�m, ko th� ph�n r� ")
			end
		else
			Talk(1,"","Trang b� ��t v�o kh�ng ph�i l� Ho�ng Kim M�n Ph�i ")
		end
	else
		Talk(1,"","L�i 2: Nguy�n li�u ��t v�o ch� ���c 1 HKMP + 5 KNB ")
	end
else
	Talk(1,"","Nguy�n li�u ��t v�o ch� ���c 1 HKMP + 5 KNB")
end

end






manghkmp = {
-- Day Chuyen
{"Ng� Long Chi�n Th�n Phi Qu�i Gi�p",0,4,6,1,225,80},
{"��a Ph�ch H�c Di�m Xung Thi�n Li�n",0,4,7,1,225,84},
{"Thi�n Quang ��nh T�m Ng�ng Th�n Ph� ",0,4,8,1,225,81},
{"Ch� Ph��c Di�t L�i C�nh Ph� ",0,4,9,1,225,87},
{"V� Tr�n Thanh T�m H��ng Thi�n Ch�u",0,4,10,1,225,90},
{"B�ch H�i Ho�n Ch�u V� Li�n",0,4,11,1,225,92},
{"Ma Ho�ng �n Xu�t H� H�ng Khuy�n",0,4,12,1,225,97},
{"Ma Th� Ma Ph� T�m Li�n",0,4,13,1,225,95},
{"C�p Phong Tam Thanh Ph� ",0,4,14,1,225,98},
{"V� �o Ky B�n Ph� Ch� ",0,4,15,1,225,102},
{"L�i Khung Thi�n ��a H� Ph� ",0,4,16,1,225,100},

-- Nhan
{"T� Kh�ng Gi�i Lu�t Ph�p Gi�i",0,3,7,1,237,76},
{"Ph�c Ma Ph�t T�m Nhuy�n Kh�u",0,3,8,1,237,77},
{"Ng� Long Tuy�t M�nh Ch� Ho�n",0,3,9,1,237,80},
{"��a Ph�ch T�ch L�ch L�i H�a Gi�i",0,3,10,1,237,84},
{"Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n",0,3,11,1,237,81},
{"Ch� Ph��c U �o Ch� Ho�n",0,3,12,1,237,87},
{"Minh �o ��c Y�t Ch� Ho�n",0,3,13,1,237,86},
{"V� Gian B�ch Ng�c Ban Ch� ",0,3,14,1,237,89},
{"V� Ma B�ng Tinh Ch� Ho�n",0,3,15,1,237,88},
{"V� Tr�n Ph�t Quang Ch� Ho�n",0,3,16,1,237,90},
{"V� Tr�n T� Bi Ng�c Ban Ch� ",0,3,17,1,237,90},
{"T� Ho�ng Th�y Ng�c Ch� Ho�n",0,3,18,1,237,91},
{"��ng C�u Ki�n Long Ban Ch� ",0,3,19,1,237,93},
{"��ch Kh�i Th�o Gian Th�ch Gi�i ",0,3,20,1,237,94},
{"Ma Th� Nghi�p H�a U Linh Gi�i",0,3,21,1,237,95},
{"Ma S�t V�n Long Th� Ch�u Gi�i",0,3,22,1,237,96},
{"C�p Phong Thanh T�ng Ph�p Gi�i",0,3,23,1,237,98},
{"L�ng Nh�c N� L�i Gi�i",0,3,24,1,237,99},
{"L�ng Nh�c Thi�n ��a Huy�n Ho�ng Gi�i",0,3,25,1,237,99},
{"V� �o Th�c T�m Ch� Ho�n",0,3,26,1,237,102},
{"S��ng Tinh Phong B�o Ch� Ho�n",0,3,27,1,237,101},
{"L�i Khung C�u Thi�n D�n L�i Gi�i",0,3,28,1,237,100},

-- Ngoc Boi
{"M�ng Long Ph�t Ph�p Huy�n B�i",0,9,6,1,231,75},
{"B�ng H�n Huy�n Thi�n B�ng H�a B�i",0,9,7,1,231,82},
{"S�m Ho�ng Huy�n Thi�t T��ng Ng�c B�i",0,9,8,1,231,83},
{"V� Tr�n Ph�t T�m T� H�u Y�u Ph�i",0,9,9,1,231,90},
{"B�ch H�i H�ng L�ng Ba",0,9,10,1,231,92},
{"Ma Th� Huy�t Ng�c Th�t S�t B�i",0,9,11,1,231,95},
{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",0,9,12,1,231,98},
{"L�ng Nh�c V� C�c Huy�n Ng�c B�i",0,9,13,1,231,99},
{"V� �o Thanh �nh Huy�n Ng�c B�i",0,9,14,1,231,102},
{"L�i Khung Linh Ng�c U�n L�i",0,9,15,1,231,100},
{"V� Ma T�y T��ng Ng�c Kh�u",0,9,16,1,231,88},

-- Bao Tay
{"T� Kh�ng Nhuy�n B� H� Uy�n",0,8,4,1,207,76},
{"K� Nghi�p H�a V�n K� L�n Th� ",0,8,5,1,207,78},
{"H�m Thi�n H� ��u Kh�n Th�c Uy�n",0,8,6,1,207,79},
{"Ng� Long T�n Phong H� Uy�n",0,8,7,1,207,80},
{"��a Ph�ch Kh�u T�m Tr�c",0,8,8,1,207,84},
{"Thi�n Quang Song B�o H�n Thi�t Tr�c",0,8,9,1,207,81},
{"Ch� Ph��c Xuy�n T�m ��c Uy�n",0,8,10,1,207,87},
{"U Lung Ng�n Thi�n H� Uy�n",0,8,11,1,207,85},
{"Minh �o H� C�t H� Uy�n",0,8,12,1,207,86},
{"V� Gian C�m V�n H� Uy�n",0,8,13,1,207,89},
{"T� Ho�ng B�ng Tung C�m Uy�n",0,8,14,1,207,91},
{"��ng C�u Kh�ng Long H� Uy�n",0,8,15,1,207,93},
{"��ch Kh�i C�u T�ch B� H� Uy�n",0,8,16,1,207,94},
{"Ma Ho�ng Huy�t Y Th� Tr�c",0,8,17,1,207,97},
{"Ma S�t C� H�a L�u Thi�n Uy�n",0,8,18,1,207,96},
{"S��ng Tinh B�ng Tinh Thi�n Tinh Th�",0,8,19,1,207,101},

-- GIAY
{"M�ng Long ��t Ma T�ng H�i",0,5,6,1,219,75},
{"Ph�c Ma Ph� �� T�ng H�i",0,5,7,1,219,77},
{"K� Nghi�p Chu T��c L�ng V�n Ngoa",0,5,8,1,219,78},
{"H�m Thi�n Th�a Long Chi�n Ngoa",0,5,9,1,219,79},
{"��a Ph�ch ��a H�nh Thi�n L� Ngoa",0,5,10,1,219,84},
{"B�ng H�n Nguy�t �nh Ngoa",0,5,11,1,219,82},
{"S�m Ho�ng Tinh V�n Phi L� ",0,5,12,1,219,83},
{"Ch� Ph��c B�ng H�a Th�c C�t Ngoa",0,5,13,1,219,87},
{"U Lung M�c Th� Nhuy�n L� ",0,5,14,1,219,85},
{"Minh �o Song Ho�n X� H�i",0,5,15,1,219,86},
{"V� Ma H�ng Truy Nhuy�n Th�p H�i",0,5,16,1,219,88},
{"Ma Ho�ng ��ng ��p Ngoa",0,5,17,1,219,97},
{"Ma Th� S�n H�i Phi H�ng L� ",0,5,18,1,219,95},
{"V� �o Tung Phong Tuy�t �nh Ngoa",0,5,19,1,219,102},

-- THAT LUNG
{"M�ng Long Huy�n Ti Ph�t ��i",0,6,4,1,213,75},
{"T� Kh�ng H� Ph�p Y�u ��i",0,6,5,1,213,76},
{"Ph�c Ma � Kim Nhuy�n �i�u",0,6,6,1,213,77},
{"K� Nghi�p B�ch H� V� Song Kh�u",0,6,7,1,213,78},
{"H�m Thi�n Uy V� Th�c Y�u ��i",0,6,8,1,213,79},
{"Ng� Long Thi�n M�n Th�c Y�u Ho�n",0,6,9,1,213,80},
{"B�ng H�n T�m Ti�n Y�u Kh�u",0,6,10,1,213,82},
{"S�m Ho�ng H�n Gi�o Y�u Th�c",0,6,11,1,213,83},
{"Thi�n Quang S�m La Th�c ��i",0,6,12,1,213,81},
{"U Lung Thanh Ng� Tri�n Y�u",0,6,13,1,213,85},
{"V� Gian Ph�t V�n Ti ��i",0,6,14,1,213,89},
{"T� Ho�ng B�ng Tuy�t B�ch V�n Th�c ��i",0,6,15,1,213,91},
{"B�ch H�i H�ng Linh Kim Ti ��i",0,6,16,1,213,92},
{"��ng C�u Ti�m Long Y�u ��i",0,6,17,1,213,93},
{"��ch Kh�i Truy�n M�ng Y�u ��i",0,6,18,1,213,94},
{"Ma Ho�ng Kh� C�c Th�c Y�u ��i",0,6,19,1,213,97},
{"Ma S�t X�ch K� T�a Y�u Kh�u",0,6,20,1,213,96},
{"C�p Phong Huy�n Ti Tam �o�n C�m",0,6,21,1,213,98},
{"S��ng Tinh Thanh Phong L� ��i",0,6,22,1,213,101},
{"L�i Khung Phong L�i Thanh C�m ��i",0,6,23,1,213,100},

-- NON
{"M�ng Long Ch�nh H�ng T�ng M�o",0,7,16,1,195,75},
{"��a Ph�ch Ng� H�nh Li�n Ho�n Qu�n",0,7,17,1,195,84},
{"Ch� Ph��c Ph� Gi�p ��u Ho�n",0,7,18,1,195,87},
{"U Lung Kim X� Ph�t ��i",0,7,19,1,195,85},
{"V� Ma Ma Ni Qu�n",0,7,20,1,195,88},
{"V� Tr�n Ng�c N� T� T�m Qu�n",0,7,21,1,195,90},
{"��ng C�u Phi Long ��u Ho�n",0,7,22,1,195,93},
{"Ma Ho�ng Kim Gi�p Kh�i",0,7,23,1,195,97},
{"Ma Th� Li�t Di�m Qu�n Mi�n",0,7,24,1,195,95},
{"V� �o B�c Minh ��o Qu�n",0,7,25,1,195,102},
{"L�i Khung H�n Tung B�ng B�ch Qu�n",0,7,26,1,195,100},


-- AO GIAP

{"M�ng Long Kim Ti Ch�nh H�ng C� Sa",0,2,33,1,201,75},
{"T� Kh�ng T� Kim C� Sa",0,2,34,1,201,76},
{"Phuc Ma Huy�n Ho�ng C� Sa",0,2,35,1,201,77},
{"K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",0,2,36,1,201,78},
{"H�m Thi�n V� Th�n T��ng Kim Gi�p",0,2,37,1,201,79},
{"B�ng H�n Huy�n Y  Th�c Gi�p",0,2,38,1,201,82},
{"S�m Ho�ng Kim Ti�n Li�n Ho�n Gi�p",0,2,39,1,201,83},
{"U Lung X�ch Y�t M�t Trang",0,2,40,1,201,85},
{"Minh �o U ��c �m Y",0,2,41,1,201,86},
{"V� Gian Thanh Phong Truy Y",0,2,42,1,201,89},
{"V� Ma T� Kh�m C� Sa",0,2,43,1,201,88},
{"T� Ho�ng T� T�m Khinh Sa Y",0,2,44,1,201,91},
{"��ng C�u Gi�ng Long C�i Y",0,2,45,1,201,93},
{"��ch Kh�i C�u ��i C�i Y",0,2,46,1,201,94},
{"Ma S�t T�n D��ng �nh Huy�t Gi�p",0,2,47,1,201,96},
{"L�ng Nh�c V� Ng� ��o B�o",0,2,48,1,201,99},
{"S��ng Tinh Ng�o S��ng ��o B�o",0,2,49,1,201,101},


-- VU KHI
{"V� Gian � Thi�n Ki�m",0,0,0,61,189,89},
{"T� Kh�ng Gi�ng Ma Gi�i �ao",0,0,1,61,189,76},
{"Ph�c Ma T� Kim C�n",0,0,2,61,189,77},
{"K� Nghi�p B�n L�i To�n Long Th��ng",0,0,3,61,189,78},
{"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y",0,0,4,61,189,79},
{"B�ch H�i Uy�n ��ng Li�n Ho�n �ao",0,0,5,61,189,92},
{"L�ng Nh�c Th�i C�c Ki�m",0,0,0,121,189,99},
{"Ng� Long L��ng Ng�n B�o �ao",0,0,1,121,189,80},
{"��ch Kh�i L�c Ng�c Tr��ng",0,0,2,121,189,94},
{"Ma S�t Qu� C�c U Minh Th��ng",0,0,3,121,189,96},
{"S��ng Tinh Thi�n Ni�n H�n Thi�t",0,0,1,151,189,101},
{"C�p Phong Ch�n V� Ki�m",0,0,0,171,189,98},
{"Minh �o T� S�t ��c Nh�n",0,0,1,171,189,86},
{"T� Ho�ng Ph�ng Nghi �ao",0,0,1,181,189,91},
{"B�ng H�n ��n Ch� Phi �ao",0,1,1,21,189,82},
{"S�m Ho�ng Phi Tinh �o�t H�n",0,1,0,41,189,83},
{"Thi�n Quang Hoa V� M�n Thi�n",0,1,2,31,189,81},

}


function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/CheTaoManhHoangKim.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
