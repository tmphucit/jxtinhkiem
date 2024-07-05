Include("\\datascript\\thanbi\\logvodanh.lua")
Include("\\script\\lib\\thuvien.lua")

function main()
-- Say("<color=green>Th�n B� Th��ng Nh�n<color>: Ta chuy�n mua b�n v�t ph�m gi� tr� cao b�ng ng�n l��ng",4,
-- "Mua X� L�i Kim ��n /muathanbi",
-- "Mua L�nh B�i PLD /mualb",
-- "Mua Qu� Ho�ng Kim/muaquahk",
-- "Mua B� Kip 120 /muabk120",
-- "Tho�t./no")
-- end
Talk(1,"","T�nh n�ng �ang c�p nh�t ...C�m �n c�c h� �� tham gia <color =bule>B�ch Long<color> V� L�m")
end

function muabk120()
Say("<color=green>Th�n B� Th��ng Nh�n<color>: B�n c� ch�c ch�n mu�n mua Bi Kip 120 v�i gi� <color=yellow>200<color> v�ng ",2,
"Mua Bi Kip 120/yesbk120",
"Kh�ng mua/no")
end

function yesbk120()

if CheckFreeBoxItem(0,10,8,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end
 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 200 and GetTask(101) >= 200 and CheckFreeBoxItem(0,10,8,1) ~= 0 then
	SetTask(99,GetTask(99) - 200)
	SetTask(101,GetTask(101) - 200)
	if GetTask(99) == vang-200 and GetTask(101) == vang2 - 200 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(0,10,8,1) ~= 0 then
		AddEventItem(19)
		inlogbk("Log: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B�n nh�n ���c 1 Bi K�p 120")
		Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." �� mua th�nh c�ng <color=yellow>B� Kip 120<color> t�i Shop Th�n B� Th��ng Nh�n")
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>200<color> v�ng, kh�ng th� giao d�ch!")
end
end

function muaphivan()
Say("<color=green>Th�n B� Th��ng Nh�n<color>: B�n c� ch�c ch�n mu�n mua Phi V�n Th�n M� v�i gi� <color=yellow>250<color> v�ng ",2,
"Mua Phi V�n/yespv",
"Kh�ng mua/no")
end

function yespv()
if CheckFreeBoxItem(0,10,8,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end
 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 250 and GetTask(101) >= 250 and CheckFreeBoxItem(0,10,8,1) ~= 0 then
	SetTask(99,GetTask(99) - 250)
	SetTask(101,GetTask(101) - 250)
	if GetTask(99) == vang-250 and GetTask(101) == vang2 - 250 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(0,10,8,1) ~= 0 then
		AddItem(0,10,8,1,0,0,0)
		inlogphivan("Log: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B�n nh�n ���c 1 Phi V�n Th�n M� ")
		Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." �� mua th�nh c�ng <color=yellow>Th�n M� Phi V�n<color> t�i Shop Th�n B� Th��ng Nh�n")
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>250<color> v�ng, kh�ng th� giao d�ch!")
end
end

function xoanv()
for i=1,getn(VoDanh) do
	if VoDanh[i][3] ~= 9999 then
		Talk(1,"","�� x�a t�i kho�n: "..VoDanh[i][1].." - Nh�n v�t: "..VoDanh[i][2].." ")
		VoDanh[i][3] = 9999
		savebang()
		return
	end
end
end
function kiemtranv()
vt = kiemtranv2()
if vt == 0 then
Talk(1,"","Hi�n kh�ng c� nh�n v�t n�o c�n gi�i quy�t c� !")
return
end
Talk(1,"","T�i Kho�n s�p h�t h�n: [<color=green>"..VoDanh[vt][1].."<color>] - NV: "..VoDanh[vt][2].." - Mua ng�y: "..VoDanh[vt][4].." th�ng "..VoDanh[vt][5].." ")
end
function kiemtranv2()
for i=1,getn(VoDanh) do
	if VoDanh[i][3] ~= 9999 then
		return i
	end
end
return 0
end

function muavodanh()
Say("<color=green>Th�n B� Th��ng Nh�n<color>: \nC�p Nh�n V� Danh Gi�i Ch� [30 ng�y]. \nGi�: 10 Kim Nguy�n B�o\nNg��i c� ch�c ch�n mu�n mua kh�ng? ",2,
"Ta ��ng � mua v�t ph�m n�y /muavodanh2",
"Xin l�i �� l�m phi�n ng��i/no")
end


function muavodanh2()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

slknb = GetItemCount(17)
if GetItemCount(17) >= 10 then
	for i=1,10 do DelItem(17) end
	if GetItemCount(17) == slknb - 10 then
		item1=AddItem(0,3,31,2,0,0,0)
		SetTimeItem(item1,550324);
		item2=AddItem(0,3,32,2,0,0,0)
		SetTimeItem(item2,550324);
		thoigian = tonumber(date("%H%M%d%m"))
		VoDanh[getn(VoDanh)+1] = {GetAccount(),GetName(),GetLevel(),ngay,thang,time}
		savebang()
		Msg2SubWorld("Ch�c m�ng "..GetName().." �� mua th�nh c�ng trang b� V� Danh Gi�i Ch� [30 ng�y] ")
		Msg2Player("<color=green>H�n s� d�ng: Ng�y "..ngay.." Th�ng "..(thang+1).." N�m 2015")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","�� mua v�t ph�m n�y c�n <color=yellow>10 Kim Nguy�n B�o<color> !")
end


end

function muasudolenh()
if CheckFreeBoxItem(4,14,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end

slknb = GetItemCount(14) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 10 and GetTask(101) >= 10 and CheckFreeBoxItem(4,14,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 10)
	SetTask(101,GetTask(101) - 10)
	if GetTask(99) == vang-10 and GetTask(101) == vang2 - 10 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,14,1,1) ~= 0 then
		AddEventItem(14)
		inlogsudolenh("Vang: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B�n nh�n ���c 1 S� �� L�nh")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>10<color> v�ng, kh�ng th� giao d�ch !")
end
end

function muathienson()
if CheckFreeBoxItem(4,161,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end

slknb = GetItemCount(161) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 55 and GetTask(101) >= 55 and CheckFreeBoxItem(4,161,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 55)
	SetTask(101,GetTask(101) - 55)
	if GetTask(99) == vang-55 and GetTask(101) == vang2 - 55 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,161,1,1) ~= 0 then
		AddEventItem(161)
		inlogtstl("Vang: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B�n nh�n ���c 1 Thien Son Tuyet Lien")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>55<color> v�ng, kh�ng th� giao d�ch !")
end
end

function muatt()
Say("<color=green>Th�n B� Th��ng Nh�n<color>: Ta chuy�n mua b�n v�t ph�m gi� tr� cao b�ng ng�n l��ng",3,
"Mua Lam Th�y Tinh/mualtt",
"Mua L�c Th�y Tinh/mualamtt",
"Tho�t./no")
end

function muaquahk()
Say("<color=green>Th�n B� Th��ng Nh�n<color>: Qu� Ho�ng Kim ng��i mu�n mua theo h�nh th�c n�o?  ",3,
"50 v�n /muaquahk1",
"4 v�ng /muaquahk2",
"Tho�t./no")
end


function muaquahk1()
sl = GetItemCount(22)
a = GetCash()
if GetCash()  >= 500000 then
	Pay(500000)
	if GetCash() == (a-500000) then
		AddEventItem(22)
		Msg2Player("B�n nh�n ���c 1 Qu� Ho�ng Kim !")
		inlogquahk("Tien Van: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 50 v�n l��ng !")
end
end


function muaquahk2()
if CheckFreeBoxItem(4,22,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end

slknb = GetItemCount(22) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 4 and GetTask(101) >= 4 and CheckFreeBoxItem(4,22,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 4)
	SetTask(101,GetTask(101) - 4)
	if GetTask(99) == vang-4 and GetTask(101) == vang2 - 4 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,22,1,1) ~= 0 then
		AddEventItem(22)
		inlogquahk("Vang: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B�n nh�n ���c 1 Qu� Ho�ng Kim")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>4<color> v�ng, kh�ng th� giao d�ch !")
end
end

function mualtt()
sl = GetItemCount(28)
a = GetCash()
if GetCash()  >= 2500000 then
	Pay(2500000)
	if GetCash() == (a-2500000) then
		AddEventItem(28)
		Msg2Player("B�n nh�n ���c 1 L�c Th�y Tinh !")
		inlogtb("Luc Thuy Tinh: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 250 v�n l��ng !")
end
end


function mualamtt()
sl = GetItemCount(30)
a = GetCash()
if GetCash()  >= 2500000 then
	Pay(2500000)
	if GetCash() == (a-2500000) then
		AddEventItem(30)
		Msg2Player("B�n nh�n ���c 1 Lam Th�y Tinh !")
		inlogtb("Lam Thuy Tinh: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 250 v�n l��ng !")
end
end

function muamdtb()
Say("Ch�n h�nh th�c thanh to�n:" ,3,
"60 v�n l��ng /muamdtb1",
"2 v�ng/muamdtb2",
"Tho�t./no")
end

function muamdtb1()
sl = GetItemCount(253)
a = GetCash()
if GetCash()  >= 600000 then
	Pay(600000)
	if GetCash() == (a-600000) then
		for k=1,20 do AddEventItem(253) end
		Msg2Player("B�n nh�n ���c 20 M�t �� Th�n B� !")
		inlog("Tien Van: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 60 v�n l��ng !")
end
end



function muamdtb2()
if CheckFreeBoxItem(4,253,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end


slknb = GetItemCount(253) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 2 and GetTask(101) >= 2 and CheckFreeBoxItem(4,253,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 2)
	SetTask(101,GetTask(101) - 2)
	if GetTask(99) == vang-2 and GetTask(101) == vang2 - 2 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,253,1,1) ~= 0 then
		for i=1,20 do AddEventItem(253) end
		inlog("Vang: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B�n nh�n ���c 20 M�t �� Th�n B�")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>2<color> v�ng, kh�ng th� giao d�ch !")
end
end

function muathanbi()
sl = GetItemCount(59)
a = GetCash()
if GetCash()  >= 2000000 then
	Pay(2000000)
	if GetCash() == (a-2000000) then
		AddEventItem(59)
		inlogtbxaloi("Xa Loi: "..GetName().." - "..GetAccount().." - "..GetPK().." - "..GetLevel().." ")
		Msg2Player("B�n nh�n ���c 1 X� L�i Kim ��n !")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 200 v�n l��ng !")
end
end

function mualb()
sl = GetItemCount(135)
a = GetCash()
if GetCash()  >= 300000 then
	Pay(300000)
	if GetCash() == (a-300000) then
		AddEventItem(135)
		Msg2Player("B�n nh�n ���c 1 L�nh B�i Phong L�ng �� !")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 30 v�n l��ng !")
end
end

function no()
end

function inlogquahk(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/QuaHoangKim.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogtbxaloi(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/XaLoiKimDon.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogtstl(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/ThienSonTuyetLien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogtb(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/LenhBaiPLD.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogsudolenh(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/SuDoLenh.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end





function inlogphivan(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/MuaPhiVan.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogbk(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/MuaBiKip120.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/ViSonDao.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function giaodich()
Sale(30)
end

function trangphuccuoi()
Sale(31)
end


function savebang()
BANG = TaoBang(VoDanh,"VoDanh")				
LuuBang("datascript/thanbi/logvodanh.lua",BANG)
end
