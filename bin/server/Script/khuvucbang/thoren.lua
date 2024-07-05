Include("\\Script\\global\\sourcejx49.lua");
Include("\\datascript\\banghoi\\mapbanghoi.lua")


function main()
	Say("<color=green>Th� r�n<color> H�y l�a ch�n 1 v� kh� ngang v�i s�c m�nh nh�: ",3,
	"N�ng C�p Huy�n Tinh/chetaohuyentinh",
	"Th�ng C�p Trang B� Xanh/thangcap",
	"Tho�t./no")
end;

function checksoluongbang()
check = 0
for i=1,getn(MAP_BANG_HOI) do
	if GetTongName() == MAP_BANG_HOI[i][1] then
		check = i
		break			
	end
end
return check
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
	vitribh = checksoluongbang()

	if vitribh < 0 or vitribh > getn(MAP_BANG_HOI) then
	Talk(1,"","L�i v��t qu� gi�i h�n L�nh ��a Bang, li�n h� GM �� gi�i quy�t !")
	return
	end

	sx = random(1,120)
	DelEquipItemQuestKey()
	sxbh = MAP_BANG_HOI[vitribh][3]

	sxtinh =100 - c*10 * sxbh * 2
	if sxtinh > 50 then
	sxtinh = 50 + sxbh * 2
	end 

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
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(idx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end
	else
		inlogin("Thang cap That bai: "..GetAccount().." - "..GetName().." - "..(100 - c*10 + sxbh*2).."% ")
		Msg2Player("Th�ng c�p trang b� th�t b�i, x�c su�t th�ng c�p: <color=yellow>"..(100-c*10 + sxbh*2).."% ")
		Talk(1,"","Th�ng c�p trang b� th�t b�i, x�c su�t th�ng c�p: <color=yellow>"..(100-c*10+sxbh*2).."% ")
	
	end
end


function inlogin(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/logchetao.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
end
function chetaohuyentinh()
Say("Hi�n t�i ch� m� ch�c n�ng <color=yellow>Gh�p Huy�n Tinh<color>, nh�ng t�nh n�ng kh�c kh�a",2,
"M� Gh�p Huy�n Tinh/chetao",
"Thoat./no")
end

function giaotinthu()
	if GetTask(103) == 6 then
		SetTask(103,7)
		Talk(1,"","<color=green>Th� R�n <color>: Ta �� nh�n ���c t�n th�, h�y n�i v�i Ch��ng M�n ng��i l� ta s� c� g�ng h�t s�c �� gi�p �� t� c�a ng��i !")
		Msg2Player("H�y qua Th�nh th� b�t k� t�m B�n Ng�a �� giao t�n th� cu�i c�ng")
	end
end

function chetao()
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
end
end;

function no()
end

