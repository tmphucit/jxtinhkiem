Include("\\script\\lib\\thuvien.lua")
Include("\\datascript\\songbac\\shophopqua1.lua")
Include("\\datascript\\songbac\\shopthuyen1.lua")
Include("\\datascript\\songbac\\shopht7.lua")
Include("\\datascript\\songbac\\shopht8.lua")
Include("\\datascript\\songbac\\shopknb.lua")
Include("\\datascript\\songbac\\tienhang.lua")



function main()
Say("<color=red>Giao D�ch Vi�n<color>: Ng��i c�n ta gi�p g� ?",5,
"Ta mu�n Treo Shop /banhang",
"Ta mu�n Mua H�ng /muahang",
"Ta mu�n Nh�n Ti�n �� b�n ���c /nhantien",
"Ta mu�n r�t V�t Ph�m �� treo/nhanitem",
"Tho�t./no")
end

function nhanitem()
Say("Giao D�ch Vi�n:\nS� l��ng mu�n r�t: <color=red>"..GetTaskTemp(45).."<color> \nLo�i m�t h�ng: <color=green>"..checkhanghoa(GetTaskTemp(47)).."",4,
"Nh�p s� l��ng mu�n r�t/banhang_1",
"Ch�n m�t h�ng/banhang_3",
"T�m ki�m c�a h�ng c� gi� b�n cao nh�t c�a m�nh/nhanitem_1",
"Tho�t./no")
end

function nhanitem_1()
if GetTaskTemp(45) == 0 then
Talk(1,"","B�n ch�a nh�p s� l��ng, kh�ng th� t�m ki�m !")
return
end
if GetTaskTemp(47) == 0 then
Talk(1,"","B�n ch�a ch�n m�t h�ng, kh�ng th� t�m ki�m !")
return
end

if GetTaskTemp(47) == 1 then
name = shophopqua1
elseif GetTaskTemp(47) == 2 then
name = shopthuyen1
elseif GetTaskTemp(47) == 3 then	
name = shopht7
elseif GetTaskTemp(47) == 4 then
name = shopht8
elseif GetTaskTemp(47) == 5 then
name = shopknb
end

vitrishop = check_item_shop(name)
if vitrishop == 0 then
Talk(1,"","B�n kh�ng c� treo b�n m�t h�ng n�y!")
return
end
SetTaskTemp(44,vitrishop)

Say("Giao D�ch Vi�n:\nS� l��ng: <color=red>"..GetTaskTemp(45).."/"..name[vitrishop][2].."<color>\nLo�i m�t h�ng: "..checkhanghoa(GetTaskTemp(47)).."",2,
"Ta ��ng � r�t v�t ph�m t� c�a h�ng n�y/nhanitem_2",
"Ta s� thay ��i s� l��ng cho ph� h�p/no")
end

function nhanitem_2()

if GetTaskTemp(47) == 1 then
name = shophopqua1
elseif GetTaskTemp(47) == 2 then
name = shopthuyen1
elseif GetTaskTemp(47) == 3 then	
name = shopht7
elseif GetTaskTemp(47) == 4 then
name = shopht8
elseif GetTaskTemp(47) == 5 then
name = shopknb
end

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
	savebang(GetTaskTemp(47))
	
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

Say("<color=red>Giao D�ch Vi�n<color>: Hi�n t�i ng��i �ang c� <color=yellow>"..tienhang[vt][2].." luong<color>. Ng��i c� mu�n r�t ra kh�ng?",2,
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
tien = GetCash()
tiennhan = tienhang[vt][2]
if GetUUID() == tienhang[vt][1] then
	tienhang[vt][2] = 0
	if tienhang[vt][2] == 0 then
		Earn(tiennhan)
		Msg2Player("B�n nh�n ���c <color=yellow>"..tiennhan.." l��ng !")
				
		savebang(0)
		SaveData()

		if GetCash() ~= tien + tiennhan then
			test = GetCash()
			Pay(GetCash())
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
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetUUID().." - Nhan Tien: "..tiennhan.." - Tien Moi: "..GetCash().." - Time: "..thoigian.."\n");
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
Say("Giao D�ch Vi�n:\nS� l��ng: <color=red>"..GetTaskTemp(45).."<color> \nLo�i m�t h�ng: <color=green>"..checkhanghoa(GetTaskTemp(47)).."",4,
"Nh�p s� l��ng mu�n mua/banhang_1",
"Ch�n lo�i m�t h�ng mu�n mua /banhang_3",
"T�m ki�m v�i gi� th�p nh�t /muahang_1",
"Tho�t./no")
end

function muahang_1()
if GetTaskTemp(45) == 0 then
Talk(1,"","B�n ch�a nh�p s� l��ng, kh�ng th� t�m ki�m!")
return
end
if GetTaskTemp(47) == 0 then
Talk(1,"","B�n ch�a ch�n m�t h�ng, kh�ng th� t�m ki�m !")
return
end

if GetTaskTemp(47) == 1 then
name = shophopqua1
elseif GetTaskTemp(47) == 2 then
name = shopthuyen1
elseif GetTaskTemp(47) == 3 then	
name = shopht7
elseif GetTaskTemp(47) == 4 then
name = shopht8
elseif GetTaskTemp(47) == 5 then
name = shopknb
end

vitrishop = check_shop(name)
if vitrishop == 0 then
Talk(1,"","Hi�n t�i ch�a c� c�a h�ng n�o b�n m�t h�ng n�y !")
return
end
SetTaskTemp(44,vitrishop)

Say("Giao D�ch Vi�n:\nS� l��ng: <color=red>"..GetTaskTemp(45).."/"..name[vitrishop][2].."<color>\nLo�i m�t h�ng: "..checkhanghoa(GetTaskTemp(47)).."\nGi� b�n: <color=yellow>"..name[vitrishop][3].." l��ng / 1 c�i ",2,
"Ta ��ng � mua m�t h�ng n�y /muahang_2",
"Ta s� thay ��i s� l��ng cho ph� h�p/no")
end

function muahang_2()

if GetTaskTemp(47) == 1 then
name = shophopqua1
elseif GetTaskTemp(47) == 2 then
name = shopthuyen1
elseif GetTaskTemp(47) == 3 then	
name = shopht7
elseif GetTaskTemp(47) == 4 then
name = shopht8
elseif GetTaskTemp(47) == 5 then
name = shopknb
end

if GetTaskTemp(44) == 0 then
Talk(1,"","L�i: kh�ng t�m th�y shop !")
return
end

vt = GetTaskTemp(44)

if GetTaskTemp(45) > name[vt][2] then
Talk(1,"","S� l��ng ng��i mu�n mua nhi�u h�n s� l��ng c�a h�ng hi�n t�i, h�y gi�m s� l��ng l�i !")
return
end
cash = GetCash()
tong = GetTaskTemp(45) * name[vt][3]
oldnum = name[vt][2]
if GetCash() >= tong then
	Pay(tong)
	if GetCash() == cash - tong then
		name[vt][2] = name[vt][2] - GetTaskTemp(45)
		if name[vt][2] < 0 then
		Talk(1,"","L�i nghi�m tr�ng, b�o gm g�p !")		
		return
		end
		if name[vt][2] == oldnum - GetTaskTemp(45) then
			vttien = check_tienhang(name[vt][1])
			Msg2Player(" "..vttien.." ")
			if vttien == 0 then
				tienhang[getn(tienhang)+1] = {name[vt][1],tong}
			else
				tienhang[vttien][2] = tienhang[vttien][2] + tong
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
			for k=1,GetTaskTemp(45) do AddEventItem(name[vt][5]) end
			Msg2Player("B�n nh�n ���c <color=green>"..GetTaskTemp(45).." "..checkhanghoa(GetTaskTemp(47)).." ")
			
			savebang(GetTaskTemp(47))
			SaveData()

			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","B�n kh�ng �� <color=yellow>"..tong.." l��ng<color> �� mua m�n h�ng n�y !")
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

function check_item_shop(name)
num = 0
min = 0
if getn(name) ~= 0 then
	for i=1,getn(name) do
		if name[i][1] ~= 0 and GetUUID() == name[i][1] then
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

return num
end



function check_shop(name)
num = 0
min = 0
if getn(name) ~= 0 then
	for i=1,getn(name) do
		if name[i][1] ~= 0 then
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

return num
end


function banhang()

lephi = 0
if GetTaskTemp(47) < 3 and GetTaskTemp(47) > 0 then
	lephi = floor(GetTaskTemp(45) * GetTaskTemp(46) / 100 * 2)
elseif GetTaskTemp(47) == 3 then
	lephi = GetTaskTemp(45) * 100000
elseif GetTaskTemp(47) == 4 then
	lephi = GetTaskTemp(45) * 500000
elseif GetTaskTemp(47) == 5 then
	lephi = GetTaskTemp(45) * 100000
end

lephi = 0

Say("Giao D�ch Vi�n:\nS� l��ng: <color=red>"..GetTaskTemp(45).."<color>\nGi� b�n: <color=yellow>"..GetTaskTemp(46).." l��ng<color>. L� ph�:<color=yellow> "..lephi.." l��ng<color>\nLo�i m�t h�ng: <color=green>"..checkhanghoa(GetTaskTemp(47)).."",5,
"Nh�p s� l��ng mu�n b�n/banhang_1",
"Nh�p gi� b�n tr�n 1 c�i/banhang_2",
"Ch�n lo�i m�t h�ng c�n b�n /banhang_3",
"X�c nh�n Treo B�n /banhang_4",
"Tho�t./no")
end

function checkhanghoa(num)
if num == 1 then
return "H�p Qu� May M�n"
elseif num == 2 then
return "Cu�n S�ch V�ng"
elseif num == 3 then
return "Huy�n Tinh 7"
elseif num == 4 then
return "Huy�n Tinh 8"
elseif num == 5 then
return "Kim Nguy�n B�o"
else
return "Chua Xac Dinh"
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
Msg2Player("B�n �� nh�p gi� b�n: <color=yellow>"..num2.." l��ng")
end
function banhang_3()
Say("<color=red>Giao D�ch Vi�n<color>: Ch�n m�n h�ng c�n b�n?",2,
"H�p Qu� May M�n/banhang1_1",
--"Thuy�n R�ng /banhang1_1",
--"Huyen Tinh 7/banhang1_1",
--"Huyen Tinh 8/banhang1_1",
--"Kim Nguyen Bao/banhang1_1",
"Tho�t./no")
end

function banhang1_1(nsel)
SetTaskTemp(47,nsel+1)
Msg2Player("B�n �� ch�n m�t h�ng: <color=yellow>"..checkhanghoa(nsel+1).." ")
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
if id == 0 then
Talk(1,"","Ng��i ch�a ch�n m�t h�ng, kh�ng th� treo b�n !")
return
end


if GetItemCount(id) < soluong then
Talk(1,"","Trong h�nh trang kh�ng �� <color=yellow>"..soluong.."<color> c�i, kh�ng th� treo b�n !")
return
end

if GetTaskTemp(47) == 1 and soluong < 600 then
Talk(1,"","S� l��ng T�i Nguy�n Li�u quy ��nh t�i thi�u l�: 600 c�i !")
return
elseif GetTaskTemp(47) == 2 and soluong < 100 then
Talk(1,"","S� l��ng Thuy�n R�ng quy ��nh t�i thi�u l�: 100 c�i !")
return
end

lephi = 0
if GetTaskTemp(47) < 3 then
	lephi = floor(GetTaskTemp(45) * GetTaskTemp(46) / 100 * 2)
elseif GetTaskTemp(47) == 3 then
	lephi = GetTaskTemp(45) * 50000
elseif GetTaskTemp(47) == 4 then
	lephi = GetTaskTemp(45) * 200000
elseif GetTaskTemp(47) == 5 then
	lephi = GetTaskTemp(45) * 50000
end

if GetCash() < lephi then
Talk(1,"","B�n kh�ng mang �� l� ph� treo b�n: "..lephi.." l��ng")
return
end

sl = GetItemCount(id)
if GetItemCount(id) >= soluong then
	for i=1,soluong do DelItem(id) end
	if GetItemCount(id) == sl - soluong then
		vitri = checkshopclear()
		idquest = 0
		if GetTaskTemp(47) == 1 then
		name = shophopqua1
		idquest = 67
		elseif GetTaskTemp(47) == 2 then
		name = shopthuyen1
		idquest = 163
		elseif GetTaskTemp(47) == 3 then	
		name = shopht7
		idquest = 50
		elseif GetTaskTemp(47) == 4 then
		name = shopht8
		idquest = 51
		elseif GetTaskTemp(47) == 5 then
		name = shopknb
		idquest = 17
		end
		Pay(lephi)
		Msg2Player("B�n b� m�t <color=yellow>"..lephi.." l��ng<color> l� ph� treo b�n !")
		
		if vitri == 0 then
			name[getn(name)+1] = {GetUUID(),GetTaskTemp(45),GetTaskTemp(46),GetTaskTemp(47),idquest}
			vitri = getn(name)
		else
			name[vitri] = {GetUUID(),GetTaskTemp(45),GetTaskTemp(46),GetTaskTemp(47),idquest}
		end
		savebang(GetTaskTemp(47))
		SaveData()
		Msg2SubWorld("Shop Offline: "..GetName().." �� treo b�n <color=pink>"..soluong.." "..checkhanghoa(GetTaskTemp(47)).." <color=red>v�i gi� <color=yellow>"..gia.." l��ng / 1 c�i!")
		Msg2SubWorld("<color=green>�� mua h�ng, c�c b�n ��n Ba L�ng Huy�n 198/201 g�p Giao D�ch Vi�n �� mua H�p Qu� May M�n v�i gi� th�p nh�t !")
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
if GetTaskTemp(47) == 1 then
name = shophopqua1
elseif GetTaskTemp(47) == 2 then
name = shopthuyen1
elseif GetTaskTemp(47) == 3 then	
name = shopht7
elseif GetTaskTemp(47) == 4 then
name = shopht8
elseif GetTaskTemp(47) == 5 then
name = shopknb
end

	for i=1,getn(name) do	
		if name[i][1] == 0 then
			num = i
			break
		end
	end
return num
end

function savebang(num)
if num == 1 then
BANG = TaoBang(shophopqua1,"shophopqua1")				
LuuBang("datascript/songbac/shophopqua1.lua",BANG)
elseif num == 2 then
BANG = TaoBang(shopthuyen1,"shopthuyen1")				
LuuBang("datascript/songbac/shopthuyen1.lua",BANG)
elseif num == 3 then
BANG = TaoBang(shopht7,"shopht7")				
LuuBang("datascript/songbac/shopht7.lua",BANG)
elseif num == 4 then
BANG = TaoBang(shopht8,"shopht8")				
LuuBang("datascript/songbac/shopht8.lua",BANG)
elseif num == 5 then
BANG = TaoBang(shopknb,"shopknb")				
LuuBang("datascript/songbac/shopknb.lua",BANG)
end


BANG = TaoBang(tienhang,"tienhang")				
LuuBang("datascript/songbac/tienhang.lua",BANG)
end


function checkidhanghoa(num)
if num == 1 then
return 67
elseif num == 2 then
return 163
elseif num == 3 then
return 50
elseif num == 4 then
return 51
elseif num == 5 then
return 17
else
return 0
end
end

function no()
end
