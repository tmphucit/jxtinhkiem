--Author: thaihoa91



function main()
	if GetTask(103) == 7 then
	SayNew("<color=green>B�n Ng�a<color>: ��i hi�p <color=fire>"..GetName().."<color> mu�n mua ng�a g�?: ",3,
	"Mua ng�a./muangua",
	"Giao t�n th� ch��ng m�n/giaotinthu",
	"Tho�t./no")	
	else
	SayNew("<color=green>B�n Ng�a<color>: ��i hi�p <color=fire>"..GetName().."<color> mu�n mua ng�a g�?: ",4,
	"Mua ng�a./muangua",
	"Gh�p Ng�a Chi�u D� /ghepxichtho",
	-- "Gh�p Ng�a Phi V�n /ghepphivan",
	"Gh�p Ng�a X�ch Th� /ghepchieuda",
	-- "Ch� T�o Ng�a Phi�n V� /ghepnguapv",
	-- "Ch� T�o Ng�a B�n Ti�u/ghepnguabontieu",
	-- "N�ng C�p Ng�a Si�u Quang /nangcapnguasieuquangxu",
--	"Ph�n T�ch Ng�a Phi�n V� /phantachpv",
--	"Th�ng C�p Ng�a Phi�n V� /thangcapnguapv",
--	"T�i T�o Ng�a Phi�n V� /taitaopv",
	"Tho�t./no")
	end
end;

function muanguavip()
SayNew("<color=green>B�n Ng�a<color>: C�c lo�i ng�a d��i ��y ��ng gi� 1000 v�n l��ng v� 100 danh v�ng ",4,
"Mua � V�n /muanguavip1",
"Mua ��ch L� /muanguavip1",
"Mua Tuy�t �nh /muanguavip1",
"Tho�t /no")
end


function nangcapnguasieuquangxu()
OpenCheckItemBox("N�ng C�p Ng�a","��t ng�a Si�u Quang n�ng c�p v�o","loaddulieunguasieuquangxu")
end

function loaddulieunguasieuquangxu()
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
if GetItemCountBox(28) < 3 then
Talk(1,"","Kh�ng c� Lam Th�y Tinh, kh�ng th� ch� t�o ")
return
end
if GetItemCountBox(29) < 3 then
Talk(1,"","Kh�ng c� T� Th�y Tinh, kh�ng th� ch� t�o ")
return
end
if GetItemCountBox(30) < 3 then
Talk(1,"","Kh�ng c� L�c Th�y Tinh, kh�ng th� ch� t�o ")
return
end

if GetItemCountBox(34) < 100 then
Talk(1,"","Kh�ng c� �� Th�ng C�p Si�u Quang, kh�ng th� ch� t�o ")
return
end

if GetItemCountBox(31) < 6  then
Talk(1,"","Kh�ng c� �� Tinh H�ng B�o Th�ch, kh�ng th� ch� t�o ")
return
end
vang = 500
vang2 = 500
if GetTask(99) < vang and GetTask(101) < vang2 then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..vang2.."<color> Xu !")
return
end
	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)
	
new_c = 0
new_d = 0
    if a == 0 then
		if b == 10 and c == 13 and d == 1 then
			new_d = 2
		elseif b == 10 and c == 13 and d == 2 then
			new_d = 3
		elseif b == 10 and c == 13 and d == 3 then
			new_d = 4
		elseif b == 10 and c == 13 and d == 4 then
			new_d = 5
		elseif b == 10 and c == 13 and d == 5 then
			new_d = 6
		elseif b == 10 and c == 13 and d == 6 then
			new_d = 7
		elseif b == 10 and c == 13 and d == 7 then
			new_d = 8
		elseif b == 10 and c == 13 and d == 8 then
			new_d = 9
		elseif b == 10 and c == 13 and d == 9 then
			new_d = 10
		end
	end
	
	check = 0	
if a == 0 and ((b == 10 and c == 13 and d == 1) or (b == 10 and c == 13 and d == 2) or (b == 10 and c == 13 and d == 3) or (b == 10 and c == 13 and d == 4) or (b == 10 and c == 13 and d == 5) or (b == 10 and c == 13 and d == 6) or (b == 10 and c == 13 and d == 7) or (b == 10 and c == 13 and d == 8) or (b == 10 and c == 13 and d == 8) or (b == 10 and c == 13 and d == 10)) then
	check = 1
end

if check == 0 then
Talk(1,"","Trang b� b�n ��t v�o kh�ng h�p l� , kh�ng th� n�ng c�p ")
return
end



TimeBox("�ang N�ng C�p",10,"oknangcapnguasieuquangxu");
end

function oknangcapnguasieuquangxu()
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
if GetItemCountBox(28) < 3 then
Talk(1,"","Kh�ng c� Lam Th�y Tinh, kh�ng th� ch� t�o ")
return
end
if GetItemCountBox(29) < 3 then
Talk(1,"","Kh�ng c� T� Th�y Tinh, kh�ng th� ch� t�o ")
return
end
if GetItemCountBox(30) < 3 then
Talk(1,"","Kh�ng c� L�c Th�y Tinh, kh�ng th� ch� t�o ")
return
end

if GetItemCountBox(34) < 100 then
Talk(1,"","Kh�ng c� �� Th�ng C�p Si�u Quang, kh�ng th� ch� t�o ")
return
end

if GetItemCountBox(31) < 6  then
Talk(1,"","Kh�ng c� �� Tinh H�ng B�o Th�ch, kh�ng th� ch� t�o ")
return
end

vang = 500
vang2 = 500
if GetTask(99) < vang and GetTask(101) < vang2 then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..vang2.."<color> Xu !")
return
end

	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)

	
new_c = 0
new_d = 0
    if a == 0 then
		if b == 10 and c == 13 and d == 1 then
			new_d = 2
		elseif b == 10 and c == 13 and d == 2 then
			new_d = 3
		elseif b == 10 and c == 13 and d == 3 then
			new_d = 4
		elseif b == 10 and c == 13 and d == 4 then
			new_d = 5
		elseif b == 10 and c == 13 and d == 5 then
			new_d = 6
		elseif b == 10 and c == 13 and d == 6 then
			new_d = 7
		elseif b == 10 and c == 13 and d == 7 then
			new_d = 8
		elseif b == 10 and c == 13 and d == 8 then
			new_d = 9
		elseif b == 10 and c == 13 and d == 9 then
			new_d = 10
		end
	end
	
	check = 0	
if a == 0 and ((b == 10 and c == 13 and d == 1) or (b == 10 and c == 13 and d == 2) or (b == 10 and c == 13 and d == 3) or (b == 10 and c == 13 and d == 4) or (b == 10 and c == 13 and d == 5) or (b == 10 and c == 13 and d == 6) or (b == 10 and c == 13 and d == 7) or (b == 10 and c == 13 and d == 8) or (b == 10 and c == 13 and d == 8) or (b == 10 and c == 13 and d == 10)) then
	check = 1
end

if check == 0 then
Talk(1,"","Trang b� b�n ��t v�o kh�ng h�p l� , kh�ng th� n�ng c�p ")
return
end
	sx = RandomNew(1,100)
	if sx < 30 then
		DelEquipIdx(itemidx)
		for p=1,100 do DelItemBox(34) end
		for p=1,3 do DelItemBox(28) end
		for p=1,3 do DelItemBox(29) end
		for p=1,3 do DelItemBox(30) end
		for p=1,6 do DelItemBox(31) end
		SetTask(99,GetTask(99) - vang)
		SetTask(101,GetTask(101) - vang2)
		Msg2Player(" B�n s� d�ng  <color=yellow>"..vang2.."<color> Xu �� n�ng c�p ")
		if GetIdxItemBoxUpdateItem() == 0 then
				idxitem = AddItem(0,b,c,new_d,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." n�ng c�p th�nh c�ng Ng�a <color=yellow>"..GetNameItemBox(idxitem).." <color>phi�n b�n m�i ")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/NangCapSieuQuangNguaxu.txt", "a");
				if LoginLog then
				write(LoginLog,"["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		end
	else
	    DelEquipIdx(itemidx)
		for p=1,100 do DelItemBox(34) end
		for p=1,3 do DelItemBox(28) end
		for p=1,3 do DelItemBox(29) end
		for p=1,3 do DelItemBox(30) end
		for p=1,6 do DelItemBox(31) end
		SetTask(99,GetTask(99) - vang)
		SetTask(101,GetTask(101) - vang2)
		AddItem(0,b,c,d,0,0,0)
		Msg2Player(" B�n s� d�ng  <color=yellow>"..vang2.."<color> Xu �� n�ng c�p ")
		Msg2SubWorld("Xin chia bu�n c�ng<color=green> "..GetName().."<color> �� n�ng c�p ng�a th�t b�i...! ")
		Talk(1,"","Th�ng b�o: <color=green>��i Th�t B�i<color>. X�c su�t ��i trang b�:<color=red> 50%")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/NangCapNguaSieuQuangxu.txt", "a");
				if LoginLog then
				write(LoginLog,"That Bai: ["..GetNameItemBox(itemidx).."] "..GetAccount().." - "..GetName().."\n");
				end
				closefile(LoginLog)
	end
-- else
	-- Talk(1,"","Trang b� ��t v�o kh�ng h�p l�, vui l�ng ki�m tra l�i")
-- end
	
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

function ghepnguapv()
OpenCheckItemBox("Gh�p M�nh Ng�a Phi�n V�","��t 100 M�nh Ng�a Phi�n V� + 10 Lam Th�y Tinh + 300 V�n v�o","phienvuep")
end


function phienvuep()
if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� tr�ng 2 x 3 �, vui l�ng ki�m tra l�i")
	return
	end
	
if GetItemCountBox(277) < 100 then
Talk(1,"","B�n kh�ng mang �� 100 m�nh Phi�n V�, kh�ng th� th�ng c�p ")
return
end

if GetCash() < 3000000 then
Talk(1,"","Kh�ng c� �� 500 v�n trong h�nh trang, kh�ng th� ch� t�o !")
return
end

if GetItemCountBox(28) < 10 then
Talk(1,"","Kh�ng c� �� 10 Lam Thu� Tinh, kh�ng th� ch� t�o ")
return
end
		-- xacsuat = 30
		if GetItemCountBox(277) == 100 and GetItemCountBox(28) == 10 then
		for k=1,10 do DelItemBox(28) end
		Pay(3000000)
		
		sx = RandomNew(1,100)
		if sx <= 30 then
				for k=1,100 do DelItemBox(277) end
				for k=1,10 do DelItemBox(28) end
				Pay(3000000)
						idxitem = AddItem(0,10,7,1,0,0,0)
				Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." ch� t�o <color=yellow>Th�nh C�ng : <color> <color=pink>"..GetNameItemBox(idxitem).."")
				--inlogeppv("Thanh Cong: ID: [""] - Xac Suat: [""] - Name: ["..GetName().."] - Acc: ["..GetAccount().."] - Time: ["..thoigian.."] \n");
				
		else
				--inlogeppv("That bai: ID: [""] - Xac Suat: [""] - Name: ["..GetName().."] - Acc: ["..GetAccount().."] - Time: ["..thoigian.."] \n");
				Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." ch� t�o <color=yellow>Th�t B�i : <color> <color=pink>Ng�a Phi�n V�")
				--Talk(2,"","<color=red>Xin chia bu�n ! Qu� tr�nh ch� t�o Th�t B�i.... X�c su�t: "..xacsuat.."%","B�n b� m�t <color=yellow> 10 Lam Thu� Tinh")
		end
		else
		Talk(1,"","Kh�ng �� nguy�n li�u ��t v�o, vui l�ng ki�m tra l�i !")
	end	
end



function ghepnguabontieu()
OpenCheckItemBox("Gh�p M�nh Ng�a B�n Ti�u","��t 100 M�nh Ng�a B�n Ti�u + 10 T� Th�y Tinh + 300 V�n v�o","bontieuep")
end


function bontieuep()
if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� tr�ng 2 x 3 �, vui l�ng ki�m tra l�i")
	return
	end
	
if GetItemCountBox(276) < 100 then
Talk(1,"","B�n kh�ng mang �� 100 m�nh B�n Ti�u, kh�ng th� th�ng c�p ")
return
end

if GetCash() < 3000000 then
Talk(1,"","Kh�ng c� �� 300 v�n trong h�nh trang, kh�ng th� ch� t�o !")
return
end

if GetItemCountBox(29) < 10 then
Talk(1,"","Kh�ng c� �� 10 T� Thu� Tinh, kh�ng th� ch� t�o ")
return
end
		-- xacsuat = 30
		if GetItemCountBox(276) == 100 and GetItemCountBox(29) == 10 then
		for k=1,10 do DelItemBox(29) end
		Pay(3000000)
		
		sx = RandomNew(1,100)
		if sx <= 70 then
				for k=1,100 do DelItemBox(276) end
				for k=1,10 do DelItemBox(29) end
				Pay(3000000)
				idxitem = AddItem(0,10,6,1,0,0,0)
				Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." ch� t�o <color=yellow>Th�nh C�ng : <color> <color=pink>"..GetNameItemBox(idxitem).."")
				--inlogeppv("Thanh Cong: ID: [""] - Xac Suat: [""] - Name: ["..GetName().."] - Acc: ["..GetAccount().."] - Time: ["..thoigian.."] \n");
				
		else
				--inlogeppv("That bai: ID: [""] - Xac Suat: [""] - Name: ["..GetName().."] - Acc: ["..GetAccount().."] - Time: ["..thoigian.."] \n");
				Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." ch� t�o <color=yellow>Th�t B�i : <color> <color=pink>Ng�a B�n Ti�u")
				--Talk(2,"","<color=red>Xin chia bu�n ! Qu� tr�nh ch� t�o Th�t B�i.... X�c su�t: "..xacsuat.."%","B�n b� m�t <color=yellow> 10 Lam Thu� Tinh")
		end
		else
		Talk(1,"","Kh�ng �� nguy�n li�u ��t v�o, vui l�ng ki�m tra l�i !")
	end	
end



function inlogeppv(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/CheTaoNguaPhienVu.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
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
soluongyeucau = 100

sl = GetItemCount2(273)
if sl < soluongyeucau then
Talk(1,"","B�n kh�ng �� "..soluongyeucau.." m�nh Chi�u D� , kh�ng th� ��i ")
return
end

if GetItemCount2(273) >= soluongyeucau then
	for p=1,soluongyeucau do DelAllItem(273) end
	if GetItemCount2(273) == sl - soluongyeucau then
		AddItem(0,10,5,2,0,0,0)
		Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." ��i "..soluongyeucau.." m�nh Chi�u D� nh�n ���c 1 Ng�a Chi�u D� ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Hack ha em")
end
end


function ghepphivan()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end
soluongyeucau = 50

sl = GetItemCount2(274)
if sl < soluongyeucau then
Talk(1,"","B�n kh�ng �� "..soluongyeucau.." m�nh Phi V�n , kh�ng th� ��i ")
return
end

if GetItemCount2(274) >= soluongyeucau then
	for p=1,soluongyeucau do DelAllItem(274) end
	if GetItemCount2(274) == sl - soluongyeucau then
		AddItem(0,10,5,5,0,0,0)
		Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." ��i "..soluongyeucau.." m�nh Phi V�n nh�n ���c 1 Ng�a Phi V�n ")
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
soluongyeucau = 100
sl = GetItemCount2(655)
if sl < soluongyeucau then
Talk(1,"","B�n kh�ng �� "..soluongyeucau.." m�nh X�ch Th�, kh�ng th� ��i ")
return
end

if GetItemCount2(655) >= soluongyeucau then
	for p=1,soluongyeucau do DelAllItem(655) end
	if GetItemCount2(655) == sl - soluongyeucau then
		AddItem(0,10,5,7,0,0,0)
		Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." ��i "..soluongyeucau.." m�nh X�ch Th� nh�n ���c 1 Ng�a X�ch Th� .")
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
