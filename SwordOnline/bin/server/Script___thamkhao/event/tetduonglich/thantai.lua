Include("\\script\\lib\\thuvien.lua")
Include("\\script\\event\\tetduonglich\\dstopngay.lua")
Include("\\script\\event\\tetduonglich\\dsnhanthuong.lua")
Include("\\script\\event\\tetduonglich\\EventConfig.txt")

ThongBaoXepHang = 0
AutoSave = 0

function main()
SayNew("<color=green>Thi�n S� N�m M�i: <color> V� huynh ��i g�p ta c� vi�c g� kh�ng?...",2,
"Nh�n th��ng Top S� Ki�n /nhanthuongtopsukien",
"Tho�t./no")
end


function nhanthuongtopsukien()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� nh�n !")
	return
end
vt = checkdstop()
if vt == 0 then
Talk(1,"","B�n kh�ng c� t�n trong danh s�ch nh�n th��ng, vui l�ng b�o Admin �� ki�m tra l�i n�u c� sai x�t!")
return
end

if PHANTHUONG[vt][2] ~= 9999 then
		if PHANTHUONG[vt][2] == 1 then
				idxitem = AddEventItem(694)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Top Event: <color=yellow>"..GetNameItemBox(idxitem).." ")
				inlogtop("["..GetName().."] - ["..GetAccount().."] - ["..GetNameItemBox(idxitem).."]")
		elseif PHANTHUONG[vt][2] == 2 then
				if GetSex() == 0 then
				idxitem = AddEventItem(698)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Top Event: <color=yellow>"..GetNameItemBox(idxitem).." ")
				inlogtop("["..GetName().."] - ["..GetAccount().."] - ["..GetNameItemBox(idxitem).."]")
				else
				idxitem = AddEventItem(699)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Top Event: <color=yellow>"..GetNameItemBox(idxitem).." ")
				inlogtop("["..GetName().."] - ["..GetAccount().."] - ["..GetNameItemBox(idxitem).."]")
				end
				
		elseif PHANTHUONG[vt][2] == 3 then
				idxitem = AddEventItem(687)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Top Event: <color=yellow>"..GetNameItemBox(idxitem).." ")
				inlogtop("["..GetName().."] - ["..GetAccount().."] - ["..GetNameItemBox(idxitem).."]")
		elseif PHANTHUONG[vt][2] == 4 then
				idxitem = AddEventItem(120)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Top Event: <color=yellow>"..GetNameItemBox(idxitem).." ")
				inlogtop("["..GetName().."] - ["..GetAccount().."] - ["..GetNameItemBox(idxitem).."]")
		elseif PHANTHUONG[vt][2] == 5 then
				idxitem = AddEventItem(115)
				idxitem = AddEventItem(119)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Top Event: <color=yellow>Ti�n Th�o L� v� N� Nhi H�ng 3 Gi� ")
				inlogtop("["..GetName().."] - ["..GetAccount().."] - [Ti�n Th�o L� - N� Nhi H�ng 3 Gi�]")
		
		end
		
		
		
		PHANTHUONG[vt][2] = 9999
		BANG = TaoBang(PHANTHUONG,"PHANTHUONG")		
		LuuBang("script/event/tetduonglich/dsnhanthuong.lua",BANG)
end

end


function inlogtop(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/NhanThuongTopSuKien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function checkdstop()
index = 0

for i=1,getn(PHANTHUONG) do
	if GetName() == PHANTHUONG[i][1] and PHANTHUONG[i][2] ~= 9999 then
			index = i
			break
	end
end
return index
end

function main_()
gio = tonumber(date("%H"))
if GetTask(990) ~= NgaySuKien then
	SetTask(990, NgaySuKien)
	SetTask(991, 0)
	SetTask(992, 0)
	SetTask(993, 0)
end
if ThongBaoXepHang ~= gio then
	ThongBaoXepHang = gio
	ThongBaoTopSuKien()
end



SayNew("<color=green>Thi�n S� N�m M�i: <color> V� huynh ��i g�p ta c� vi�c g� kh�ng?...",5,
"N�p Ph�o ��i /noplaco",
"Ki�m tra danh s�ch Top S� Ki�n /kiemtratop",
"Gia h�n s� ki�n M�ng N�m M�i/giahan", 
"Mua R��ng Ph�o/muaruong", 
"Tho�t./no")
end

function muaruong()
SayNew("<color=green>Thi�n S� N�m M�i: <color> Ng��i mu�n ta gi�p g�?",3,
"Mua 10 R��ng Ph�o = 10 Ti�n ��ng/muaruong1",
"Mua 10 R��ng Ph�o = 100 V�n L��ng/muaruong2",
"Tho�t./no")
end

function muaruong1()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end
vang = GetItemCount(697)
if vang >= 10 then
	for k=1,10 do DelItem(697) end
	if GetItemCount(697) == vang - 10 then
		for p=1,10 do AddEventItem(918) end
		Msg2Player("B�n nh�n ���c 1 R��ng Ph�o")
		
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/Ruong10Vang.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(99).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng �� 10 Ti�n ��ng, kh�ng th� mua v�t ph�m n�y")
end
end
function muaruong2()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end
vang = GetCash()
if GetCash() >= 1000000 then
	Pay(1000000)
	if GetCash() == vang - 1000000 then
		for p=1,10 do AddEventItem(918) end
		Msg2Player("B�n nh�n ���c 1 R��ng Ph�o")
		
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/Ruong100Van.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(99).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng �� 100 v�n l��ng, kh�ng th� mua v�t ph�m n�y")
end
end


function giahan()
SayNew("<color=green>Thi�n S� N�m M�i: <color> Gia h�n s� ki�n m�t ph� <color=yellow>20 Ti�n ��ng<color>, ng��i th�y sao?",2,
"Ta ch�c ch�n mu�n gia h�n s� ki�n/giahan1",
"Tho�t./no")
end

function giahan1()
if GetTask(993) >= 1 then
	Talk(1,"","Gi�i h�n s� ki�n c�a b�n �� ��t m�c t�i �a <color=yellow>2 l�n<color> !")
	return
end

vang = GetItemCount(697)
if vang >= 20 then
	for k=1,20 do DelItem(697) end	
	if GetItemCount(697) == vang - 20 then
		SetTask(993, GetTask(993) + 1)
		Msg2Player("B�n �� gia h�n s� ki�n M�ng N�m M�i l�n <color=yellow>"..GetTask(993).." l�n")
		inlog5("["..GetTask(993).."] "..GetAccount().." - "..GetName().." - "..GetLevel().."")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng��i kh�ng �� 20 Ti�n ��ng �� gia h�n s� ki�n")
end
end

function noplaco()
OpenStringBox(0,"Nh�p 1 - 100","noplaco1")
end
function noplaco1(num2)

gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if gio == 17 and phut < 5 then
Talk(1,"","Kh�ng th� n�p Ph�o ��i trong th�i gian: 17h00 - 17h05. Danh s�ch Top S� Ki�n h�m nay �� ch�t !")
return
end

if num2 == "" then
num2 = 0
end
num = tonumber(num2)
if num == 0 then
return
end


if num > 100 then
Talk(1,"","Ch� n�p t�i �a 100 c�i / l�n !")
return
end
sl = GetItemCount(917)
if sl < num then
Talk(1,"","H�nh trang kh�ng �� <color=red>"..num.." Ph�o ��i<color>, kh�ng th� n�p")
return
end

gh = gioihan()
soluong = 0
for i=1,num do
	if GetItemCount(917) == 0 then
		break;
	end
	DelItem(917)
	if GetTask(992) < gh then
		AddOwnExp(4000000)
		SetTask(992, GetTask(992) + 4)		
	end
	SetTask(991, GetTask(991) + 1)
	soluong = soluong + 1
end


if soluong > 0 then
	Msg2Player("Gi�i h�n: <color=yellow>"..GetTask(992)..".000.000<color=red> / "..gh..".000.000")		
	Msg2Player("S� l��ng Ph�o ��i �� s� d�ng: <color=green>"..GetTask(991).."")
end

vt = checkds()
if vt == 0 then
		vtmin = checkmin()
		if GetTask(991) > DSTOP[vtmin][2] then
			DSTOP[vtmin][1] = GetName()
			DSTOP[vtmin][2] = GetTask(991)
		end
else
		DSTOP[vt][2] = GetTask(991)
end
end


function gioihan()
if GetTask(993) == 1 then
return 400
else
return 200
end
end


function no()
end

function ThongBaoTopSuKien()
	SapXepHangDuaTop()
	Msg2SubWorld("<color=green>Danh s�ch Top S� Ki�n M�ng N�m M�i:")
	for k=1,getn(DSTOP) do
		if k <= getn(DSTOP) then
			Msg2SubWorld("- H�ng "..k..": "..DSTOP[k][1].." - "..DSTOP[k][2].." c�i")
		end
	end
	Msg2SubWorld("<color=pink>L�u �: Ch�t danh s�ch TOP v� Reset v�o 17h00 m�i ng�y")
end

function kiemtratop()
phut = tonumber(date("%M"))
	SapXepHangDuaTop()
	Msg2Player("<color=green>Danh s�ch Top S� Ki�n M�ng N�m M�i:")
	for k=1,getn(DSTOP) do
		if k <= getn(DSTOP) then
			Msg2Player("- H�ng "..k..": "..DSTOP[k][1].." - "..DSTOP[k][2].." c�i")
		end
	end
	
	if AutoSave ~= phut then
		AutoSave = phut
		savebang()
	end
end

function savebang()
BANG = TaoBang(DSTOP,"DSTOP")		
LuuBang("script/event/tetduonglich/dstopngay.lua",BANG)
end

function checkmin()
vtmin = 1
giatrimin = DSTOP[vtmin][2]
for i=2,getn(DSTOP) do
		if giatrimin > DSTOP[i][2] then
			vtmin = i
			giatrimin = DSTOP[i][2]
		end
end
return vtmin
end


function checkds()
for i=1,getn(DSTOP) do
	if GetName() == DSTOP[i][1] then
		return i
	end
end
return 0
end

tam_duatop = {"",0}
function SapXepHangDuaTop()
for i=1,getn(DSTOP) do
	for j=1,getn(DSTOP) do
		if DSTOP[i][2] > DSTOP[j][2] then
			tam_duatop = DSTOP[i]
			DSTOP[i] = DSTOP[j]
			DSTOP[j] = tam_duatop
		end
	end
end

end


function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logGiaHan.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
