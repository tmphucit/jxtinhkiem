--Author: thaihoa91



function main()
	if GetTask(103) == 7 then
	SayNew("<color=green>B�n Ng�a<color>: ��i hi�p <color=fire>"..GetName().."<color> mu�n mua ng�a g�?: ",3,
	"Mua ng�a./muangua",
	"Giao t�n th� ch��ng m�n/giaotinthu",
	"Tho�t./no")	
	else
	SayNew("<color=green>B�n Ng�a<color>: ��i hi�p <color=fire>"..GetName().."<color> mu�n mua ng�a g�?: ",2,
	"Mua ng�a./muangua",
	--"��i M� B�i /doimabai",
--	"Mua Ng�a 80 /muanguavip",
--	"Gh�p Ng�a X�ch Th� /ghepxichtho",
--	"Gh�p Ng�a Chi�u D� /ghepchieuda",
--	"Ph�n T�ch Ng�a Phi�n V� /phantachpv",
--	"Th�ng C�p Ng�a Phi�n V� /thangcapnguapv",
--	"T�i T�o Ng�a Phi�n V� /taitaopv",
	"Tho�t./no")
	end
end;

function doimabai()

	SayNew("<color=green>B�n Ng�a<color>: Ch�n lo�i th� c��i mu�n ��i ",6,
"� v�n ��p tuy�t /doimabai2",
"X�ch th� /doimabai2",
"Tuy�t �nh /doimabai2",
"��ch l� /doimabai2",
"Chi�u d� ng�c s� t� /doimabai2",
"Tho�t./no")

end


function doimabai2(nsel)
item = 651 + nsel

if GetItemCount(item) == 0 then
Talk(1,"","Ng��i kh�ng mang theo M� B�i, kh�ng th� ��i ")
return
end

DelItem(item)
itemidx = AddItem(0,10,5,nsel+1,0,0,0)
Msg2SubWorld("Ch�c m�ng <color=green>"..GetName().."<color=red> �� ��i th�nh c�ng th� c��i: <color=yellow>"..GetNameItemBox(itemidx).."")

end
function muanguavip()
SayNew("<color=green>B�n Ng�a<color>: C�c lo�i ng�a d��i ��y ��ng gi� 1000 v�n l��ng v� 100 danh v�ng ",4,
"Mua � V�n /muanguavip1",
"Mua ��ch L� /muanguavip1",
"Mua Tuy�t �nh /muanguavip1",
"Tho�t /no")
end

function muanguavip1(nsel)
i = nsel + 1
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
return
end

if GetCash() < 10000000 then
Talk(1,"","Ng��i kh�ng mang �� 1000 v�n l��ng, kh�ng th� mua")
return
end
if GetTask(100) < 100 then
Talk(1,"","Ng��i kh�ng c� �� 100 danh v�ng, kh�ng th� mua")
return
end

Pay(10000000)
SetTask(100, GetTask(100) - 100)
if i == 1 then
	idxitem = AddItem(0,10,5,1,0,0,0)
	Msg2SubWorld("Ch�c m�ng "..GetName().." �� mua th�nh c�ng <color=green>"..GetNameItemBox(idxitem).."")
elseif i == 2 then
	idxitem = AddItem(0,10,5,4,0,0,0)
	Msg2SubWorld("Ch�c m�ng "..GetName().." �� mua th�nh c�ng <color=green>"..GetNameItemBox(idxitem).."")
elseif i == 3 then
	idxitem = AddItem(0,10,5,3,0,0,0)
	Msg2SubWorld("Ch�c m�ng "..GetName().." �� mua th�nh c�ng <color=green>"..GetNameItemBox(idxitem).."")
end
end


function taitaopv()
OpenCheckItemBox("Th�ng C�p Phi�n V�","��t Ng�a Phi�n V� v�o","taitaopv1")
end

function taitaopv1()
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
if a == 0 and b == 10 and c == 7 and (d >= 2 and d <= 6) then
	soluong = 1
end	

if GetItemCount(415) < 10 then
Talk(1,"","B�n kh�ng mang �� 10 vi�n �� T�i T�o, kh�ng th� th�ng c�p ")
return
end


if soluong == 0 then
	Msg2Player("Nguy�n li�u ��t v�o kh�ng h�p l�, vui l�ng ki�m tra l�i !")
	Msg2Player("L�u �: Ch� ���c ��t trang b� Ng�a Phi�n V� - C�p 2")
	return
end
	tenitem = GetNameItemBox(itemidx)
	DelEquipIdx(itemidx)
	for p=1,10 do DelItem(415) end
	if GetIdxItemBoxUpdateItem() == 0 then
		AddItem(0,10,7,random(2,6),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." T�i T�o th�nh c�ng <color=green>Ng�a Phi�n V� ")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/ThoRen/TaiTaoNguaPhienVu.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetItemCount2(339).."] "..GetAccount().." - "..GetName().." - "..tenitem.." \n");
		end
		closefile(LoginLog)
		Talk(0,"")
	end
end

function thangcapnguapv()
OpenCheckItemBox("Th�ng C�p Phi�n V�","��t Ng�a Phi�n V� v�o","thangcapnguapv1")
end

function thangcapnguapv1()
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
if a == 0 and b == 10 and c == 7 and d == 1 then
	soluong = 1
end	

if GetItemCount(339) < 100 then
Talk(1,"","B�n kh�ng mang �� 100 m�nh Phi�n V�, kh�ng th� th�ng c�p ")
return
end
if GetItemCount(34) < 100 then
Talk(1,"","B�n kh�ng mang �� 100 �� Th�ng C�p Phi�n V�, kh�ng th� th�ng c�p ")
return
end

if soluong == 0 then
	Msg2Player("Nguy�n li�u ��t v�o kh�ng h�p l�, vui l�ng ki�m tra l�i !")
	Msg2Player("L�u �: Ch� ���c ��t trang b� Ng�a Phi�n V� - C�p 1")
	return
end
	tenitem = GetNameItemBox(itemidx)
	DelEquipIdx(itemidx)
	for p=1,100 do DelItem(339) end
	for p=1,100 do DelItem(34) end
	if GetIdxItemBoxUpdateItem() == 0 then
		AddItem(0,10,7,random(2,6),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." th�ng c�p th�nh c�ng <color=green>Ng�a Phi�n V� ")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/ThoRen/ThangCapNguaPhienVu.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetItemCount2(339).."] "..GetAccount().." - "..GetName().." - "..tenitem.." \n");
		end
		closefile(LoginLog)
		Talk(0,"")
	end
end

function phantachpv()
OpenCheckItemBox("Ph�n R� Phi�n V�","��t Ng�a Phi�n V� v�o","okphantachpv")
end

function okphantachpv()
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
if a == 0 and b == 10 and c == 7 and d == 1 then
	soluong = 1
end	

if soluong == 0 then
	Msg2Player("Nguy�n li�u ��t v�o kh�ng h�p l�, vui l�ng ki�m tra l�i !")
	Msg2Player("L�u �: Ch� ���c ��t trang b� Ng�a Phi�n V� - C�p 1")
	return
end
	tenitem = GetNameItemBox(itemidx)
	DelEquipIdx(itemidx)
	if GetIdxItemBoxUpdateItem() == 0 then
		for p=1,90 do AddEventItem(339) end
		Msg2Player("Ch�c m�ng b�n ph�n t�ch ���c <color=yellow>90 M�nh Phi�n V� ")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/ThoRen/PhanTachNguaPhienVu.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetItemCount2(339).."] "..GetAccount().." - "..GetName().." - "..tenitem.." \n");
		end
		closefile(LoginLog)
		Talk(0,"")
	end
end



function ghepphienvu()
sl = GetItemCount2(339)
if sl < 100 then
Talk(1,"","B�n kh�ng �� 100 M�nh Phi�n V�, kh�ng th� ��i ")
return
end

if GetItemCount2(339) >= 100 then
	for p=1,100 do DelAllItem(339) end
	if GetItemCount2(339) == sl - 100 then
		AddItem(0,10,7,1,0,0,0)
		Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." ��i 100 M�nh Ng�a Phi�n V� th�nh Phi�n V� ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Hack ha em")
end
end



function ghepxichtho()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end

sl = GetItemCount2(273)
if sl < 50 then
Talk(1,"","B�n kh�ng �� 50 m�nh X�ch Th� , kh�ng th� ��i ")
return
end

if GetItemCount2(273) >= 50 then
	for p=1,50 do DelAllItem(273) end
	if GetItemCount2(273) == sl - 50 then
		AddItem(0,10,5,2,0,0,0)
		Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." ��i 50 m�nh X�ch Th� nh�n ���c 1 Ng�a X�ch Th� ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Hack ha em")
end
end

function ghepchieuda()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end

sl = GetItemCount2(274)
if sl < 50 then
Talk(1,"","B�n kh�ng �� 50 m�nh Chi�u D�, kh�ng th� ��i ")
return
end

if GetItemCount2(274) >= 50 then
	for p=1,50 do DelAllItem(274) end
	if GetItemCount2(274) == sl - 50 then
		AddItem(0,10,5,5,0,0,0)
		Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." ��i 50 m�nh Chi�u D� nh�n ���c 1 Ng�a Chi�u D� Ng�c S� T� ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Hack ha em")
end
end

function giaotinthu()
	if GetTask(103) == 7 then
		SetTask(103,8)
		Talk(1,"","<color=green>B�n Ng�a<color>: Ta �� nh�n ���c t�n th�, h�y n�i v�i Ch��ng M�n ng��i l� ta s� c� g�ng h�t s�c �� gi�p �� t� c�a ng��i !")
		Msg2Player("<color=green>Nhi�m v� m�n ph�i: <color=red> Quay v� g�p Ch��ng M�n ")
	end
end

function muangua()
w,x,y = GetWorldPos()
Sale(random(17,21))
end;

function no()
end;
