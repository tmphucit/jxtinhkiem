function main()
Say("<color=green>Qu�n L� Vi S�n ��o <color>: Vi s�n ��o l� n�i t�ch t� nhi�u b� �n v� kho b�u qu� gi� trong t�m b�n �� S�n H� X� T�c ",6,
"Ki�m tra s� ng��i �ang � Vi S�n ��o /kiemtra",
"Nh�n nhi�m v� Vi S�n ��o /nhannv",
"Th�ng c�p Huy�n Tinh nhanh/thangcapht",
"N�ng c�p trang b� Huy�n Tinh/nangcaptbht",
"R�i kh�i Vi S�n ��o /roikhoi",
"Tho�t./no")
end


function nangcaptbht()
if GetAccount() == "adminso2" then
OpenCheckItemBox("Th�ng C�p Trang B�","H�y ��t 1 trang b� t�m v� 1 vi�n T� Th�y Tinh v�o ","okhaha")
--Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng t� Vi S�n ��o ��c: <color=pink>Trang b� Huy�n Tinh c�p 10 - 6 d�ng ch�a kh�m n�m !")

else
Talk(1,"","Ch�c n�ng �ang test !")
end

end



function okhaha()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey()

Msg2Player(" "..itemidx.." ")

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


if (itemidx == -3) then
Msg2Player("Trang b� ��t v�o �ang trong tr�ng th�i kh�a b�o hi�m, kh�ng th�  th�ng c�p")
Talk(1,"","<color=red>L�i<color>: Kh�ng th� th�ng c�p trang b� �ang kh�a b�o hi�m!")
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
	Msg2Player("TEST "..c.." ")
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

	sx = random(1,130)
	DelEquipItemQuestKey()
	sxtinh =100 - c*10
	if sxtinh > 50 then
	sxtinh = 50
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
		inlogin("Thang cap That bai: "..GetAccount().." - "..GetName().." - "..(100 - c*10).."% ")
		Msg2Player("Th�ng c�p trang b� th�t b�i, x�c su�t th�ng c�p: <color=yellow>"..(100-c*10).."% ")
		Talk(1,"","Th�ng c�p trang b� th�t b�i, x�c su�t th�ng c�p: <color=yellow>"..(100-c*10).."% ")
	
	end
end



function inlogin(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThangCapTBHuyenTinh.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
end







function thangcapht()
Say("<color=green>Qu�n L� Vi S�n ��o <color>: Ch�n lo�i Huy�n Tinh c�n th�ng c�p: ",4,
"Huy�n Tinh 2/thangcapht2",
"Huy�n Tinh 3/thangcapht3",
"Huy�n Tinh 4/thangcapht4",

"Tho�t./no")
end


ht2 = 45
ht3 = 46
ht4 = 47
ht5 = 48

function thangcapht2()
num = GetItemCount(ht2)
vang = GetCash()

if num < 3 then
Talk(1,"","B�n kh�ng �� 3 vi�n Huy�n Tinh 2")
return
end
for i=1,num do
	if GetItemCount(ht2) >= 3 then
		if GetCash() >= 7000 then
			xs = random(1,100)
			Pay(7000)
			if xs < 75 then
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
			Msg2Player("B�n kh�ng �� 7000 l��ng !")
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
		if GetCash() >= 10000 then
			xs = random(1,100)
			Pay(10000)
			if xs < 65 then
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
			Msg2Player("B�n kh�ng �� 10000 l��ng !")
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
			if xs < 55 then
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
Say("<color=green>Qu�n L� Vi S�n ��o <color>: Ng��i ch�c ch�n mu�n r�i kh�i ��y ch� ?",2,
"Ta ch�c ch�n mu�n r�i kh�i /roikhoi2",
"Ta ch�a mu�n xu�ng ��o /no")
end

function roikhoi2()
Msg2World("��i hi�p [<color=yellow>"..GetName().."<color=red>] �� r�i kh�i Vi S�n ��o !")
NewWorld(53,200*8,200*16)
SetRevPos(19)
KickOutSelf()

end

function nhannv()
Talk(1,"","S� c�p nh�t trong th�i gian t�i !")
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