Include("\\Script\\global\\sourcejx49.lua");
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
if GetAccount() == "adminso2" then
chetaohuyentinh()
return
end
if GetTask(103) == 6 then
	Say("<color=green>Th� r�n<color> H�y l�a ch�n 1 v� kh� ngang v�i s�c m�nh nh�: ",5,
	"Mua v� kh�/binhthuong",
	"Giao t�n th� ch��ng m�n /giaotinthu",
	"Th�ng C�p Trang B� Xanh/thangcap",
	"H�y trang b� kh�a V�nh Vi�n /huytrangbi",
	"Tho�t./no")
elseif GetTask(115) == 15000 then
	Say("<color=green>Th� r�n<color> H�y l�a ch�n 1 v� kh� ngang v�i s�c m�nh nh�: ",3,
	"Mua v� kh�/binhthuong",
	"Giao t�n th� ch��ng m�n /giaotinthu",
	"Tho�t./no")
else
	Say("<color=green>Th� r�n<color> H�y l�a ch�n 1 v� kh� ngang v�i s�c m�nh nh�: ",4,
	"Mua v� kh�/binhthuong",
	"Th�ng C�p Trang B� Xanh/thangcap",
	"H�y trang b� kh�a V�nh Vi�n /huytrangbi2",
	"Tho�t./no")
end
end;

function huytrangbi2()
Say("<color=green>Th� r�n<color>: Ch�c n�ng n�y l� <color=red>X�a B� Trang B� <color> ch� kh�ng ph�i l� <color=yellow>M� Kh�a Trang B� <color>. N�u ��t item v�o s� m�t v�nh vi�n trang b� n�y v� kh�ng ph�c h�i !",2,
"Ta ��ng � h�y b� trang b� n�y /huytrangbi",
"Tho�t./no")
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


function thangcap()
OpenCheckItemBox("Th�ng C�p Trang B�","H�y ��t 1 trang b� Xanh v� 1 vi�n T� Th�y Tinh v�o ","okhaha")
end

function okhaha()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey()

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


if GetCash() < 100000 then
Talk(1,"","Th�ng c�p trang b� m�i l�n c�n 10 v�n !")
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

	sx = random(1,120)
	DelEquipItemQuestKey()
	sxtinh =100 - c*10
	if sxtinh > 50 then
	sxtinh = 50
	end 
	Pay(100000)
	if sx < sxtinh then
		Msg2Player("<color=yellow>Ch�c m�ng b�n �� th�ng c�p th�nh c�ng trang b� [<color=green>"..GetNameItemBox(itemidx).."<color=yellow>] t� c�p "..c.." l�n c�p "..(c+1).." !")
		if c >= 7 then
			Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] �� th�ng c�p th�nh c�ng trang b� [<color=green>"..GetNameItemBox(itemidx).."<color=red>] t� c�p "..c.." l�n c�p "..(c+1).." !")
			AddGlobalCountNews("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color>] �� th�ng c�p th�nh c�ng trang b� [<color=green>"..GetNameItemBox(itemidx).."<color>] t� c�p "..c.." l�n c�p "..(c+1).." ! ",1)
		end
		DelEquipIdx(itemidx)
		if GetIdxItemBoxUpdateItem() == 0 and GetIdxItemBoxQuestKey() == 0 then
			AddItemPrama(0,a,b,c+1,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end
	else
		inlogin("Thang cap That bai: "..GetAccount().." - "..GetName().." - "..(100 - c*10).."% ")
		Msg2Player("Th�ng c�p trang b� th�t b�i, x�c su�t th�ng c�p: <color=yellow>"..(100-c*10).."% ")
		Talk(1,"","Th�ng c�p trang b� th�t b�i, x�c su�t th�ng c�p: <color=yellow>"..(100-c*10).."% ")
	
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
		Msg2Player("H�y qua Th�nh th� b�t k� t�m B�n Ng�a �� giao t�n th� cu�i c�ng")
	end
end

function chetaohuyentinh()
OpenPGBoxItem()
end

function binhthuong()
w,x,y = GetWorldPos()
if w == 53 or w == 3 then
Sale(8)
elseif w == 15 then
Sale(10)
elseif w == 18 then
Sale(12)
elseif w == 17 then
Sale(14)
elseif w == 9 then
Sale(16)
elseif w == 4 then
	xs = random(1,5)
	if xs == 1 then
		Sale(8)
	elseif xs == 2 then
		Sale(10)
	elseif xs == 3 then
		Sale(12)
	elseif xs == 4 then
		Sale(14)
	elseif xs == 5 then
		Sale(16)
	end
end
end;

function no()
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


