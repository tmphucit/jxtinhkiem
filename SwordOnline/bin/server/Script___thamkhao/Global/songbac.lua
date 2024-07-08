Include("\\script\\lib\\thuvien.lua")
Include("\\datascript\\songbac\\shopbanhang.lua")
Include("\\datascript\\songbac\\shopkimnguyenbao.lua")
Include("\\datascript\\songbac\\tienhangkimnguyenbao.lua")
Include("\\datascript\\songbac\\tienhang.lua")

MatHang = {
{"V� L�m M�t T�ch",0}, -- 1
{"T�y T�y Kinh",1},
{"Lam Th�y Tinh",28},
{"T� Th�y Tinh",29},
{"L�c Th�y Tinh",30},
{"Tinh H�ng B�o Th�ch",31},
{"Ti�n Th�o L� 1H ",117}, -- 7
{"N� Nhi H�ng 1H ",118},
{"Ti�n Th�o L� 3H ",119},
{"N� Nhi H�ng 3H ",115},
{"Ti�n Th�o L� 6H ",120},
{"N� Nhi H�ng 6H ",116},
{"X� L�i Kim ��n",59},
}
function main()
SayNew("<color=red>Giao D�ch Vi�n<color>: Ng��i c�n ta gi�p g� ?",6,
"Ta mu�n B�n H�ng  /banhang",
"Ta mu�n Mua H�ng /muahang",
"Ta mu�n Nh�n Ti�n �� b�n ���c /nhantien",
"Ta mu�n r�t V�t Ph�m �� treo/nhanitem",
"Giao D�ch Kim Nguy�n B�o /giaodichknb",
"Tho�t./no")
end

function giaodichknb()
SayNew("<color=red>Giao D�ch Vi�n<color>: Ng��i c�n ta gi�p g� ?",5,
"B�n h�t Kim Nguy�n B�o trong h�nh trang/banknb",
"T�m Kim Nguy�n B�o v�i gi� th�p nh�t /muaknb",
"R�t t�t c� ng�n l��ng b�n ���c /nhantienknb",
"R�t t�t c� Kim Nguy�n B�o �ang rao b�n/rutknb",
"Tho�t./no")
end


function check_shop_knb()
num = 0
min = 0
if getn(ShopKNB) ~= 0 then
	for i=1,getn(ShopKNB) do
		if ShopKNB[i][1] ~= 0 then
				if (min == 0) then
					min = ShopKNB[i][3]
					num = i
				elseif min > ShopKNB[i][3] then
					min = ShopKNB[i][3]
					num = i
				end	
		end
	end
end
return num
end

function muaknb()
vitrishop = check_shop_knb()
if vitrishop == 0 then
Talk(1,"","Hi�n t�i ch�a c� c�a h�ng n�o b�n m�t h�ng n�y !")
return
end

SetTaskTemp(44,vitrishop)
SayNew("Giao D�ch Vi�n:\nLo�i m�t h�ng: <color=green>Kim Nguy�n B�o <color>\nGi� b�n: <color=yellow>"..floor(ShopKNB[vitrishop][3]/10000).." v�n "..mod(ShopKNB[vitrishop][3],10000).." l��ng / 1 c�i ",2,
"Ta ��ng � mua m�t h�ng n�y /muaknb_1",
"Ta s� thay ��i s� l��ng cho ph� h�p/no")
end

function muaknb_1()
name = ShopKNB
if GetTaskTemp(44) == 0 then
Talk(1,"","L�i: kh�ng t�m th�y shop !")
return
end
vt = GetTaskTemp(44)
if name[vt][2] < 1 then
Talk(1,"","L�i: S� l��ng trong c�a h�ng �� h�t!")
return
end

cash = GetCash()
phi = name[vt][3]
oldnum = name[vt][2]
if GetCash() >= phi then
	Pay(phi)
	if GetCash() == cash - phi then
		name[vt][2] = name[vt][2] - 1
		if name[vt][2] < 0 then
		Talk(1,"","L�i nghi�m tr�ng, b�o gm g�p !")		
		return
		end
		
		if name[vt][2] == oldnum - 1 then
			vttien = check_tienhangknb(name[vt][1])
			if vttien == 0 then
				tienhangknb[getn(tienhangknb)+1] = {name[vt][1],phi}
			else
				tienhangknb[vttien][2] = tienhangknb[vttien][2] + phi
			end

			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SongBac/MuaHangKNB.txt", "a");
			if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." - "..name[vt][1].." - Gia: "..name[vt][3].." -- Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			if name[vt][2] == 0 then
				name[vt][1] = 0	
			end
			AddEventItem(17)
			Msg2Player("B�n nh�n ���c <color=green>Kim Nguy�n B�o")
			--Msg2SubWorld("<color=green>[Shop Offline] <color=red> "..GetName().." �� mua v�t ph�m Kim Nguy�n B�o � Shop Offline.")
			BANG = TaoBang(tienhangknb,"tienhangknb")
			LuuBang("datascript/songbac/tienhangkimnguyenbao.lua",BANG)
			BANG = TaoBang(ShopKNB,"ShopKNB")
			LuuBang("datascript/songbac/shopkimnguyenbao.lua",BANG)
			SaveData()

			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","B�n kh�ng �� <color=yellow>"..phi.." V�ng<color> �� mua m�n h�ng n�y !")
end  
end
function check_tienhangknb(iid)
num = 0
for i=1,getn(tienhangknb) do
	if iid == tienhangknb[i][1] then
		num = i
		break
	end
end
return num
end

function kiemtranhantienknb()
num = 0
for i=1,getn(tienhangknb) do
if GetUUID() == tienhangknb[i][1] then
num = i
break
end
end
return num
end

function nhantienknb()
if getn(tienhangknb) == 0 then
Talk(1,"","Hi�n t�i ch�a c� danh s�ch nh�n ti�n!")
return
end
vt = kiemtranhantienknb()
if vt == 0 then
Talk(1,"","B�n kh�ng c� t�n trong danh s�ch nh�n ti�n c�a c�a h�ng !")
return
end
if tienhangknb[vt][2] == 0 then
Talk(1,"","B�n kh�ng c� ti�n �� nh�n!")
return
end

SayNew("<color=red>Giao D�ch Vi�n<color>: Hi�n t�i ng��i �ang c� <color=yellow>"..tienhangknb[vt][2].." l��ng<color>. Ng��i c� mu�n r�t ra kh�ng?",2,
"Ta mu�n r�t h�t ti�n /nhantienknb2",
"Tho�t./no")
end
function nhantienknb2()
if getn(tienhangknb) == 0 then
Talk(1,"","Hi�n t�i ch�a c� danh s�ch nh�n ti�n !")
return
end
vt = kiemtranhantienknb()
if tienhangknb[vt][2] == 0 then
Talk(1,"","B�n kh�ng c� ti�n �� nh�n!")
return
end
tien = GetCash()
tiennhan = tienhangknb[vt][2]
if GetUUID() == tienhangknb[vt][1] then
	tienhangknb[vt][2] = 0
	if tienhangknb[vt][2] == 0 then
		Earn(tiennhan)
		Msg2Player("B�n nh�n ���c <color=yellow>"..tiennhan.." l��ng !")
		
		BANG = TaoBang(tienhangknb,"tienhangknb")
		LuuBang("datascript/songbac/tienhangkimnguyenbao.lua",BANG)
		SaveData()
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SongBac/NhanTienKNB.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetUUID().." - Nhan Tien: "..tiennhan.." Luong- Tien Moi: "..GetCash().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
Talk(1,"","L�i: Kh�ng tr�ng t�n trong danh s�ch !")
end
end

function rutknb()
num = CheckViTriCanRut()
if num == 0 then
Talk(1,"","H�nh nh� ng��i kh�ng c� b�y b�n Kim Nguy�n B�o � ch� ta !")
return
end

if ShopKNB[num][1] ~= GetUUID() then
Talk(1,"","L�i t�i kho�n, li�n h� admin �� x� l� !")
return
end
soluong = ShopKNB[num][2]
if  soluong == 0 then
Talk(1,"","L�i s� l��ng item, li�n h� admin �� x� l� !")
return
end

for i=1,soluong do
	if CheckFreeBoxItem(4,1,1,1) ~= 0 then
		AddEventItem(17)
		ShopKNB[num][2] = ShopKNB[num][2] - 1
		Msg2Player("B�n nh�n ���c 1 Kim Nguy�n B�o. S� l��ng c�n l�i trong Shop: <color=yellow>"..ShopKNB[num][2].." vi�n")
	end
end
if ShopKNB[num][2] == 0 then
ShopKNB[num][1] = 0
ShopKNB[num][3] = 0
end

		BANG = TaoBang(ShopKNB,"ShopKNB")
		LuuBang("datascript/songbac/shopkimnguyenbao.lua",BANG)
		SaveData()
		
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SongBac/NhanVatPhamKNB.txt", "a");
		if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." - Nhan: "..soluong.." - Con: "..ShopKNB[num][2].." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		
KickOutSelf()
end

function CheckViTriCanRut()
if getn(ShopKNB) == 0 then
return 0
end
for i=1,getn(ShopKNB) do
	if ShopKNB[i][1] == GetUUID() then
		return i
	end
end
return 0
end
function banknb()
OpenStringBox(2,"Nh�p gi� ti�n 1 vi�n","okbanknb2")
end
function okbanknb2(num3)
num4 = tonumber(num3)
if num4 <= 0 or num4 == "" or num4 > 2000000000 then
Talk(1,"","Kh�ng ���c �� tr�ng!")
return
end
		soluong = GetItemCount(17)
	if GetItemCount(17) > 0 then
		vitrishop = CheckViTriKNB()
		for i=1,soluong do DelItem(17) end
		if vitrishop == 0 then
			ShopKNB[getn(ShopKNB)+1] = {GetUUID(), soluong, num4}
		else
			ShopKNB[vitrishop][1] = GetUUID()
			ShopKNB[vitrishop][2] = soluong
			ShopKNB[vitrishop][3] = num4
		end
		BANG = TaoBang(ShopKNB,"ShopKNB")
		LuuBang("datascript/songbac/shopkimnguyenbao.lua",BANG)
		SaveData()
		
		Msg2SubWorld("<color=green>[Shop Offline] <color=red> "..GetName().." �� treo b�n <color=pink>"..soluong.." Kim Nguy�n B�o <color=red>v�i gi� <color=yellow>"..floor(num4/10000).." v�n "..mod(num4,10000).." l��ng  / 1 vi�n")
		Msg2SubWorld("<color=green>�� mua h�ng, c�c b�n ��n g�p Giao D�ch Vi�n �� t�m ki�m v�t ph�m c�n mua !")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SongBac/BanKimNguyenBao.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetUUID().." - Ban: "..soluong.." - Gia: "..num4.." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","Ng��i kh�ng mang theo Kim Nguy�n B�o, kh�ng th� b�n.")
	end
end
function CheckViTriKNB()
	if getn(ShopKNB) == 0 then
		return 0
	end

	for i=1,getn(ShopKNB) do
		if ShopKNB[i][1] == 0 then
			return i
		end
	end
	return 0
end

function nhanitem()
SayNew("Giao D�ch Vi�n:\nS� l��ng mu�n r�t: <color=red>"..GetTaskTemp(45).."<color> \nLo�i m�t h�ng: <color=green>"..checkhanghoa(GetTaskTemp(47)).."",4,
"Nh�p s� l��ng mu�n r�t/nhanitem_1",
"Ch�n m�t h�ng/nhanitem_2",
"T�m ki�m c�a h�ng c� gi� b�n cao nh�t c�a m�nh/nhanitem_3",
"Tho�t./no")
end


function nhanitem_1()
OpenStringBox(2,"Nh�p s� l��ng","oknhanitem_1")
end
function oknhanitem_1(num)
num2 = tonumber(num)
if num2 <= 0 or num2 == "" or num2 > 2000000000 then
Talk(1,"","Kh�ng ���c �� tr�ng!")
return
end
SetTaskTemp(45,num2)
Msg2Player("B�n �� nh�p s� l��ng: <color=yellow>"..num2.." ")
nhanitem()
end


function nhanitem_2()
SayNew("<color=red>Giao D�ch Vi�n<color>: Ch�n m�n h�ng c�n b�n?",3,
"V�t ph�m H� Tr� Luy�n C�ng /nhanitem_1_1",
"V�t ph�m Qu� /nhanitem_1_1",
"Tho�t./no")
end
function nhanitem_1_1(nsel)
i = nsel + 1
if i == 1 then
SayNew("<color=red>Giao D�ch Vi�n<color>: Ch�n m�n h�ng c�n b�n?",8,
""..MatHang[7][1].."/nhanitem_2_2",
""..MatHang[8][1].."/nhanitem_2_2",
""..MatHang[9][1].."/nhanitem_2_2",
""..MatHang[10][1].."/nhanitem_2_2",
""..MatHang[11][1].."/nhanitem_2_2",
""..MatHang[12][1].."/nhanitem_2_2",
""..MatHang[13][1].."/nhanitem_2_2",
"Tho�t./no")
elseif i == 2 then
SayNew("<color=red>Giao D�ch Vi�n<color>: Ch�n m�n h�ng c�n b�n?",7,
""..MatHang[1][1].."/nhanitem_2_1",
""..MatHang[2][1].."/nhanitem_2_1",
""..MatHang[3][1].."/nhanitem_2_1",
""..MatHang[4][1].."/nhanitem_2_1",
""..MatHang[5][1].."/nhanitem_2_1",
""..MatHang[6][1].."/nhanitem_2_1",
"Tho�t./no")
end
end

function nhanitem_2_1(nsel)
SetTaskTemp(47,nsel+1)
Msg2Player("B�n �� ch�n m�t h�ng: <color=yellow>"..checkhanghoa(GetTaskTemp(47)).." ")
nhanitem()
end
function nhanitem_2_2(nsel)
SetTaskTemp(47,nsel+7)
Msg2Player("B�n �� ch�n m�t h�ng: <color=yellow>"..checkhanghoa(GetTaskTemp(47)).." ")
nhanitem()
end


function nhanitem_3()
if GetTaskTemp(45) == 0 then
Talk(1,"","B�n ch�a nh�p s� l��ng, kh�ng th� t�m ki�m !")
return
end
if GetTaskTemp(47) == 0 then
Talk(1,"","B�n ch�a ch�n m�t h�ng, kh�ng th� t�m ki�m !")
return
end

name = BanHang
iditem = checkidhanghoa(GetTaskTemp(47))
vitrishop = check_item_shop(name,iditem)

if vitrishop == 0 then
Talk(1,"","B�n kh�ng c� treo b�n m�t h�ng n�y!")
return
end

SetTaskTemp(44,vitrishop)
SayNew("Giao D�ch Vi�n:\nS� l��ng: <color=red>"..GetTaskTemp(45).."/"..name[vitrishop][2].."<color>\nLo�i m�t h�ng: "..checkhanghoa(GetTaskTemp(47)).."",2,
"Ta ��ng � r�t v�t ph�m t� c�a h�ng n�y/nhanitem_3_2",
"Ta s� thay ��i s� l��ng cho ph� h�p/no")
end

function nhanitem_3_2()
name = BanHang
if GetTaskTemp(44) == 0 then
Talk(1,"","L�i: kh�ng t�m th�y c�a h�ng!")
return
end
vt = GetTaskTemp(44)
if GetTaskTemp(45) > name[vt][2] then
Talk(1,"","S� l��ng mu�n r�t v� nhi�u h�n s� l��ng tr�n c�a h�ng �ang treo !")
return
end

oldnum = name[vt][2]
name[vt][2] = name[vt][2] - GetTaskTemp(45)
if name[vt][2] == oldnum - GetTaskTemp(45) then
	for i=1,GetTaskTemp(45) do AddEventItem(name[vt][5]) end
	Msg2Player("B�n nh�n ���c <color=green>"..GetTaskTemp(45).." "..checkhanghoa(GetTaskTemp(47)).." ")
	if name[vt][2] == 0 then
		name[vt][1] = 0
	end	
	savebang()
		SaveData()
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SongBac/NhanVatPham.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - Nhan: "..GetTaskTemp(45).." - Con: "..name[vt][2].."- Ten: "..checkhanghoa(GetTaskTemp(47)).." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)

	Talk(0,"")
else
Talk(1,"","hack ha em")
end

end

function nhantien()
if getn(tienhang) == 0 then
Talk(1,"","Hi�n t�i ch�a c� danh s�ch nh�n ti�n!")
return
end
vt = kiemtranhantien()
if vt == 0 then
Talk(1,"","B�n kh�ng c� t�n trong danh s�ch nh�n ti�n c�a c�a h�ng !")
return
end
if tienhang[vt][2] == 0 then
Talk(1,"","B�n kh�ng c� ti�n �� nh�n!")
return
end

SayNew("<color=red>Giao D�ch Vi�n<color>: Hi�n t�i ng��i �ang c� <color=yellow>"..tienhang[vt][2].." V�ng<color>. Ng��i c� mu�n r�t ra kh�ng?",2,
"Ta mu�n r�t h�t ti�n /nhantien2",
"Tho�t./no")
end
function nhantien2()
if getn(tienhang) == 0 then
Talk(1,"","Hi�n t�i ch�a c� danh s�ch nh�n ti�n !")
return
end
vt = kiemtranhantien()
if tienhang[vt][2] == 0 then
Talk(1,"","B�n kh�ng c� ti�n �� nh�n!")
return
end
tien = GetTask(99)
tiennhan = tienhang[vt][2]
if GetUUID() == tienhang[vt][1] then
	tienhang[vt][2] = 0
	if tienhang[vt][2] == 0 then
		SetTask(99, GetTask(99) + tiennhan)
		SetTask(101, GetTask(101) + tiennhan)
		Msg2Player("B�n nh�n ���c <color=yellow>"..tiennhan.." V�ng !")
				
		savebang()
		SaveData()

		if GetTask(99) ~= tien + tiennhan then
			test = GetTask(99)
			SetTask(99, 0)
			SetTask(101, 0)
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SongBac/NhanTien.txt", "a");
			if LoginLog then
			write(LoginLog,"Loi: "..GetAccount().." - "..GetName().." - Mat: "..test.." - tiennhan: "..tienhang.." - Time: "..thoigian.."\n");
			end

			closefile(LoginLog)


		end

		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SongBac/NhanTien.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetUUID().." - Nhan Tien: "..tiennhan.." Vang - Tien Moi: "..GetTask(99).." Vang- Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
Talk(1,"","L�i: Kh�ng tr�ng t�n trong danh s�ch !")
end


end

function kiemtranhantien()
num = 0
for i=1,getn(tienhang) do
if GetUUID() == tienhang[i][1] then
num = i
break
end
end
return num
end

function muahang()
muahang_1()
--SayNew("Giao D�ch Vi�n:\nS� l��ng: <color=red>1<color> \nLo�i m�t h�ng: <color=green>"..checkhanghoa(GetTaskTemp(47)).."",3,
--"Ch�n lo�i m�t h�ng mu�n mua /muahang_1",
--"T�m ki�m v�i gi� th�p nh�t /muahang_2",
--"Tho�t./no")
end

function muahang_2()
if GetTaskTemp(47) == 0 then
Talk(1,"","B�n ch�a ch�n m�t h�ng, kh�ng th� t�m ki�m !")
return
end
name = BanHang
idmathang = checkidhanghoa(GetTaskTemp(47))
vitrishop = check_shop(name,idmathang)
if vitrishop == 0 then
Talk(1,"","Hi�n t�i ch�a c� c�a h�ng n�o b�n m�t h�ng n�y !")
return
end

SetTaskTemp(44,vitrishop)
SayNew("Giao D�ch Vi�n:\nLo�i m�t h�ng: <color=green>"..checkhanghoa(GetTaskTemp(47)).." <color>\nGi� b�n: <color=yellow>"..name[vitrishop][3].." V�ng / 1 c�i ",2,
"Ta ��ng � mua m�t h�ng n�y /muahang_3",
"Ta s� thay ��i s� l��ng cho ph� h�p/no")
end

function muahang_3()
name = BanHang

if GetTaskTemp(44) == 0 then
Talk(1,"","L�i: kh�ng t�m th�y shop !")
return
end

vt = GetTaskTemp(44)

if GetTaskTemp(45) > name[vt][2] then
Talk(1,"","S� l��ng ng��i mu�n mua nhi�u h�n s� l��ng c�a h�ng hi�n t�i, h�y gi�m s� l��ng l�i !")
return
end
if name[vt][2] < 1 then
Talk(1,"","L�i: S� l��ng trong c�a h�ng �� h�t!")
return
end

cash = GetTask(99)
phi = name[vt][3]
oldnum = name[vt][2]
if GetTask(99) >= phi and GetTask(101) >= phi then
	SetTask(99, GetTask(99) - phi)
	SetTask(101, GetTask(101) - phi)
	if GetTask(99) == cash - phi then
		name[vt][2] = name[vt][2] - 1
		if name[vt][2] < 0 then
		Talk(1,"","L�i nghi�m tr�ng, b�o gm g�p !")		
		return
		end
		if name[vt][2] == oldnum - 1 then
			vttien = check_tienhang(name[vt][1])
			if vttien == 0 then
				tienhang[getn(tienhang)+1] = {name[vt][1],phi}
			else
				tienhang[vttien][2] = tienhang[vttien][2] + phi
			end

			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SongBac/MuaHang.txt", "a");
			if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." - "..name[vt][1].." - SL: "..GetTaskTemp(45).." - Gia: "..name[vt][3].." - "..checkhanghoa(GetTaskTemp(47)).." - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)

			if name[vt][2] == 0 then
				name[vt][1] = 0	
			end
			AddEventItem(name[vt][5])
			Msg2Player("B�n nh�n ���c <color=green>"..checkhanghoa(GetTaskTemp(47)).." ")
			
			savebang(GetTaskTemp(47))
			SaveData()
			--Msg2SubWorld("<color=green>[Shop Offline] <color=red> "..GetName().." �� mua v�t ph�m t� Shop Offline.")
			
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","B�n kh�ng �� <color=yellow>"..phi.." V�ng<color> �� mua m�n h�ng n�y !")
end  
end

function check_tienhang(iid)
num = 0
for i=1,getn(tienhang) do
	if iid == tienhang[i][1] then
		num = i
		break
	end
end
return num
end

function check_item_shop(name,id)
num = 0
min = 0
if getn(name) ~= 0 then
	for i=1,getn(name) do
		if name[i][1] ~= 0 and GetUUID() == name[i][1] then
			if name[i][5] == id then
				if (min == 0) then
					min = name[i][3]
					num = i
				elseif min <= name[i][3] then
					min = name[i][3]
					num = i
				end	
			end
		end
	end
end
return num
end



function check_shop(name,id)
num = 0
min = 0
if getn(name) ~= 0 then
	for i=1,getn(name) do
		if name[i][1] ~= 0 then
			if name[i][5] == id then
				if (min == 0) then
					min = name[i][3]
					num = i
				elseif min > name[i][3] then
					min = name[i][3]
					num = i
				end	
			end
		end
	end
end

return num
end


function banhang()
lephi = 0
SayNew("Giao D�ch Vi�n:\nS� l��ng: <color=red>"..GetTaskTemp(45).."<color>\nGi� b�n: <color=yellow>"..GetTaskTemp(46).." V�ng / 1 c�i<color>.\nLo�i m�t h�ng: <color=green>"..checkhanghoa(GetTaskTemp(47)).."",5,
"Nh�p s� l��ng mu�n b�n/banhang_1",
"Nh�p gi� b�n tr�n 1 c�i/banhang_2",
"Ch�n lo�i m�t h�ng c�n b�n /banhang_3",
"X�c nh�n Treo B�n /banhang_4",
"Tho�t./no")
end

function checkhanghoa(num)
if num > 0 and num <= getn(MatHang) then
return MatHang[num][1]
else
return "Kh�ng X�c ��nh "..num..""
end
end

function banhang_1()
OpenStringBox(2,"Nh�p s� l��ng","okbanhang_1")
end
function okbanhang_1(num)
num2 = tonumber(num)
if num2 <= 0 or num2 == "" or num2 > 2000000000 then
Talk(1,"","Kh�ng ���c �� tr�ng!")
return
end
SetTaskTemp(45,num2)
Msg2Player("B�n �� nh�p s� l��ng: <color=yellow>"..num2.." ")
banhang()
end
function banhang_2()
OpenStringBox(2,"Nh�p gi� 1 c�i","okbanhang_2")
end
function okbanhang_2(num)
num2 = tonumber(num)
if num2 <= 0 or num2 == "" or num2 > 2000000000 then
Talk(1,"","Kh�ng ���c �� tr�ng !")
return
end
SetTaskTemp(46,num2)
Msg2Player("B�n �� nh�p gi� b�n: <color=yellow>"..num2.." V�ng")
banhang()
end


function banhang_3()
banhang_3_1(1)
--SayNew("<color=red>Giao D�ch Vi�n<color>: Ch�n m�n h�ng c�n b�n?",3,
--"V�t ph�m H� Tr� Luy�n C�ng /banhang_3_1",
--"V�t ph�m Qu� /banhang_3_1",
--"Tho�t./no")
end
function banhang_3_1(nsel)
i = nsel + 1
if i == 1 then
SayNew("<color=red>Giao D�ch Vi�n<color>: Ch�n m�n h�ng c�n b�n?",8,
""..MatHang[7][1].."/banhang1_2",
""..MatHang[8][1].."/banhang1_2",
""..MatHang[9][1].."/banhang1_2",
""..MatHang[10][1].."/banhang1_2",
""..MatHang[11][1].."/banhang1_2",
""..MatHang[12][1].."/banhang1_2",
""..MatHang[13][1].."/banhang1_2",
"Tho�t./no")
elseif i == 2 then
SayNew("<color=red>Giao D�ch Vi�n<color>: Ch�n m�n h�ng c�n b�n?",7,
""..MatHang[1][1].."/banhang1_1",
""..MatHang[2][1].."/banhang1_1",
""..MatHang[3][1].."/banhang1_1",
""..MatHang[4][1].."/banhang1_1",
""..MatHang[5][1].."/banhang1_1",
""..MatHang[6][1].."/banhang1_1",
"Tho�t./no")
end
end

function banhang1_1(nsel)
SetTaskTemp(47,nsel+1)
Msg2Player("B�n �� ch�n m�t h�ng: <color=yellow>"..checkhanghoa(GetTaskTemp(47)).." ")
banhang()
end
function banhang1_2(nsel)
SetTaskTemp(47,nsel+7)
Msg2Player("B�n �� ch�n m�t h�ng: <color=yellow>"..checkhanghoa(GetTaskTemp(47)).." ")
banhang()
end





function muahang_1()
banhang_1_1(1)
--SayNew("<color=red>Giao D�ch Vi�n<color>: Ch�n m�n h�ng c�n b�n?",3,
--"V�t ph�m H� Tr� Luy�n C�ng /banhang_1_1",
--"V�t ph�m Qu� /banhang_1_1",
--"Tho�t./no")
end
function banhang_1_1(nsel)
i = nsel + 1
if i == 1 then
SayNew("<color=red>Giao D�ch Vi�n<color>: Ch�n m�n h�ng c�n b�n?",8,
""..MatHang[7][1].."/muahang_1_2",
""..MatHang[8][1].."/muahang_1_2",
""..MatHang[9][1].."/muahang_1_2",
""..MatHang[10][1].."/muahang_1_2",
""..MatHang[11][1].."/muahang_1_2",
""..MatHang[12][1].."/muahang_1_2",
""..MatHang[13][1].."/muahang_1_2",
"Tho�t./no")
elseif i == 2 then
SayNew("<color=red>Giao D�ch Vi�n<color>: Ch�n m�n h�ng c�n b�n?",7,
""..MatHang[1][1].."/muahang_1_1",
""..MatHang[2][1].."/muahang_1_1",
""..MatHang[3][1].."/muahang_1_1",
""..MatHang[4][1].."/muahang_1_1",
""..MatHang[5][1].."/muahang_1_1",
""..MatHang[6][1].."/muahang_1_1",
"Tho�t./no")
end
end

function muahang_1_1(nsel)
SetTaskTemp(47,nsel+1)
Msg2Player("B�n �� ch�n m�t h�ng: <color=yellow>"..checkhanghoa(GetTaskTemp(47)).." ")
muahang_2()
end
function muahang_1_2(nsel)
SetTaskTemp(47,nsel+7)
Msg2Player("B�n �� ch�n m�t h�ng: <color=yellow>"..checkhanghoa(GetTaskTemp(47)).." ")
muahang_2()
end




function banhang_4()
soluong = GetTaskTemp(45)
if soluong == 0 then
Talk(1,"","Ng��i ch�a nh�p s� l��ng, kh�ng th� treo b�n !")
return
end
gia = GetTaskTemp(46)
if gia == 0 then
Talk(1,"","Ng��i ch�a nh�p gi� b�n, kh�ng th� treo b�n !")
return
end

id = checkidhanghoa(GetTaskTemp(47))
if GetTaskTemp(47) < 1 or GetTaskTemp(47) > getn(MatHang) then
Talk(1,"","Ng��i ch�a ch�n m�t h�ng, kh�ng th� treo b�n !")
return
end


if GetItemCount(id) < soluong then
Talk(1,"","Trong h�nh trang kh�ng �� <color=yellow>"..soluong.."<color> c�i, kh�ng th� treo b�n !")
return
end
lephi = 0
if GetCash() < lephi then
Talk(1,"","B�n kh�ng mang �� l� ph� treo b�n: "..lephi.." l��ng")
return
end

if GetItemBindAll(MatHang[GetTaskTemp(47)][2]) > 0 then
Talk(1,"","Trong h�nh trang c� "..checkhanghoa(GetTaskTemp(47)).." b� kh�a. H�y c�t h�t v�o r��ng r�i treo b�n l�i !")
return
end


sl = GetItemCount(id)
if GetItemCount(id) >= soluong then
	for i=1,soluong do DelItem(id) end
	if GetItemCount(id) == sl - soluong then
		vitri = checkshopclear()
		idquest = 0
		if GetTaskTemp(47) > 0 and GetTaskTemp(47) <= getn(MatHang) then
		idquest = MatHang[GetTaskTemp(47)][2]
		end
		name = BanHang
		
		--Pay(lephi)
		--Msg2Player("B�n b� m�t <color=yellow>"..lephi.." l��ng<color> l� ph� treo b�n !")
		
		if vitri == 0 then
			name[getn(name)+1] = {GetUUID(),GetTaskTemp(45),GetTaskTemp(46),GetTaskTemp(47),idquest}
			vitri = getn(name)
		else
			name[vitri] = {GetUUID(),GetTaskTemp(45),GetTaskTemp(46),GetTaskTemp(47),idquest}
		end
		savebang()
		SaveData()
		Msg2SubWorld("<color=green>[Shop Offline] <color=red>��i hi�p "..GetName().." treo b�n <color=pink>"..checkhanghoa(GetTaskTemp(47)).." <color=red>v�i gi� <color=yellow>"..gia.." v�ng / 1 c�i!")
		Msg2SubWorld("�� mua h�ng, c�c b�n ��n g�p <color=green>Giao D�ch Vi�n � g�n Xa Phu <color=red>�� t�m ki�m v�t ph�m c�n mua !")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SongBac/RaoBan.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetUUID().." - SL: "..GetTaskTemp(45).." - Gia: "..GetTaskTemp(46).." - "..checkhanghoa(GetTaskTemp(47)).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		SetTaskTemp(45,0)
		SetTaskTemp(46,0)
		SetTaskTemp(47,0)
		KickOutSelf()
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
end

end




function checkshopclear()
num = 0
name = BanHang
if getn(name) == 0 then
return 0
end
	for i=1,getn(name) do	
		if name[i][1] == 0 then
			num = i
			break
		end
	end
return num
end

function savebang()
BANG = TaoBang(BanHang,"BanHang")
LuuBang("datascript/songbac/shopbanhang.lua",BANG)
BANG = TaoBang(tienhang,"tienhang")				
LuuBang("datascript/songbac/tienhang.lua",BANG)
end


function checkidhanghoa(num)
if num > 0 and num <= getn(MatHang) then
return MatHang[num][2]
else
return 3
end
end

function no()
end
