Include("\\script\\lib\\thuvien.lua")
Include("\\script\\source.lua")
Include("\\datascript\\veso\\danhsachdangky.lua")
Include("\\datascript\\veso\\danhsachtrunggiai.lua")


tilethang = 35

function main()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if (gio == 20 and phut >= 30) or gio > 20 then
	if GetGlbMissionV(50) ~= ngay then
		SetGlbMissionV(50,ngay)
		sotrung = random(1,99)
		sotrung2 = random(1,99)
		if sotrung2 == sotrung then
			sotrung2 = random(1,99)
		end
		for k=1,5 do Msg2SubWorld("<color=yellow>Th�n T�i: K�t qu� V� S� May M�n ng�y "..ngay.." l�: <color=pink>"..sotrung.." v� "..sotrung2.." ") end
		AddGlobalCountNews("Th�n T�i: K�t qu� V� S� May M�n ng�y "..ngay.." l�: <color=pink>"..sotrung.."<color> v� <color=pink>"..sotrung2.."<color>. Ch�c m�ng nh�ng ��i hi�p may m�n tr�ng gi�i ",3)
		addphanthuong(sotrung,sotrung2)
	end
end

SayNew("<color=green>Th�n T�i<color>: Ph�n th��ng V� S� C�u May s� thay ��i theo ng�y �� ��m b�o c�n b�ng game.\nPh�n th��ng n�u tr�ng gi�i ng�y h�m nay l�: <color=yellow>x"..tilethang.." l�n ��t c��c <color>",4,
"Mua V� S� C�u May /banveso",
"Nh�n ph�n th��ng tr�ng s� /nhanphanthuong",
"��t c��c may m�n/quayso",
"Tho�t./no")
end
function nhanphanthuong()
vt = checkds2()
if vt == 0 then
Talk(1,"","B�n kh�ng c� t�n trong danh s�ch nh�n th��ng !")
return
end

tienvan = GetCash()
vang = GetTask(99)

if GetName() == dstrungthuong[vt][1] then
	if dstrungthuong[vt][5] == 1 then
		dstrungthuong[vt][1] = ""
		if dstrungthuong[vt][1] == "" then
			Earn(dstrungthuong[vt][4] * 10000)
			savebang2()
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/VeSo/NhanPhanThuong.txt", "a");
				if LoginLog then
					write(LoginLog,""..GetAccount().." - "..GetName().." - Tien Nhan: "..(dstrungthuong[vt][4] * 10000).." Van Luong - Time: "..thoigian.."\n");
				end
				closefile(LoginLog)
			if GetCash() ~= tienvan + dstrungthuong[vt][4] * 10000 then
				a = GetCash()
				Pay(a)
				Talk(1,"","Hack ha em, anh tru het tien cua em roi nhe !")

				LoginLog = openfile("Data/VeSo/CoLoiHack.txt", "a");
				if LoginLog then
					write(LoginLog,"Account: "..GetAccount().." - "..GetName().." - "..a.." van luong \n");
				end
				closefile(LoginLog)
			end
			Msg2Player("B�n nh�n ���c "..dstrungthuong[vt][4].." v�n l��ng !")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	elseif dstrungthuong[vt][5] == 2 then
		dstrungthuong[vt][1] = ""
		if dstrungthuong[vt][1] == "" then
			SetTask(99,GetTask(99) + dstrungthuong[vt][4] * 20)
			SetTask(101,GetTask(101) + dstrungthuong[vt][4] * 20)
			savebang2()

				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/VeSo/NhanPhanThuong.txt", "a");
				if LoginLog then
					write(LoginLog,""..GetAccount().." - "..GetName().." - Tien Nhan: "..(dstrungthuong[vt][4] * 20).." Vang - Time: "..thoigian.."\n");
				end
				closefile(LoginLog)
			if GetTask(99) ~= vang + dstrungthuong[vt][4] * 20 then
				a = GetTask(99)
				SetTask(99,0)
				SetTask(101,0)
				Talk(1,"","Hack ha em, anh tru het tien cua em roi nhe !")

				LoginLog = openfile("Data/VeSo/CoLoiHack.txt", "a");
				if LoginLog then
					write(LoginLog,"Account: "..GetAccount().." - "..GetName().." - "..a.." vang \n");
				end
				closefile(LoginLog)
			end
			Msg2Player("B�n nh�n ���c "..(dstrungthuong[vt][4]*20).." v�ng !")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	end
else
	Talk(1,"","L�i t�n trong danh s�ch, li�n h� GM �� gi�i quy�t !")
end
end

function checkds2()
num = 0
for i=1,getn(dstrungthuong) do
	if GetName() == dstrungthuong[i][1] then
		num = i
		break
	end
end
return num
end

function addphanthuong(kqso,kqso2)
ngay = tonumber(date("%d"))
Msg2SubWorld("Danh s�ch nh�ng ng��i tr�ng gi�i: ")
stt = 0
tienthu = 0
knbthu = 0
tienchi = 0
knbchi = 0

savebang3()

for i=1,getn(dsmuaveso) do	
	if dsmuaveso[i][5] == 1 then
		tienthu = tienthu +dsmuaveso[i][4]
	elseif dsmuaveso[i][5] == 2 then
		knbthu = knbthu +dsmuaveso[i][4]
	end

	if dsmuaveso[i][3] == kqso or dsmuaveso[i][3] == kqso2 then
		stt = stt + 1
		Msg2SubWorld(""..stt.."."..dsmuaveso[i][1]..": <color=green>"..(dsmuaveso[i][4]*tilethang).." "..donvi2(dsmuaveso[i][5]).." ")

		if dsmuaveso[i][5] == 1 then
			tienchi = tienchi +dsmuaveso[i][4]*tilethang
		elseif dsmuaveso[i][5] == 2 then
			knbchi = knbchi +dsmuaveso[i][4]*tilethang
		end

		dstrungthuong[getn(dstrungthuong)+1] = {dsmuaveso[i][1],dsmuaveso[i][2],dsmuaveso[i][3],dsmuaveso[i][4]*tilethang,dsmuaveso[i][5],ngay}
	end
end
dsmuaveso = {}

savebang()
savebang2()

LoginLog = openfile("Data/VeSo/ThongKeVeSo.txt", "a");
if LoginLog then
	write(LoginLog,"Ngay: "..ngay.." - Tien Van Thu: "..tienthu.." - KNB Thu: "..knbthu.." - Tien Chi: "..tienchi.." - KNB Chi: "..knbchi.." \n");
end
closefile(LoginLog)

end


function quayso()
Talk(1,"","Ch�c n�ng �ang c�p nh�t !")
end

function banveso()

gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if (gio == 20 and phut >= 30) or gio > 20 then
Talk(1,"","Th�i gian mua v� s� b�t ��u v�o l�c 0h00 - 20h30 m�i ng�y !")
return
end

SayNew("<color=green>Th�n T�i<color>:\nS� �� ch�n: <color=red>"..GetTaskTemp(45).."<color>\nS� ti�n c��c: <color=yellow>"..GetTaskTemp(46) .." "..donvi().." ",4,
"Nh�p S� /chonso",
"��t Cu�c /chonloaitien",
"X�c nh�n mua v� s� /xacnhan",
"Tho�t./no")
end


function chonso()
OpenStringBox(2,"Nh�p s� t� 1 - 99","okveso")
end


function okveso(numa)
num = tonumber(numa)

	
if num > 0 and num < 100 then
	SetTaskTemp(45,num)
	Msg2Player("B�n �� ch�n s�: <color=yellow>"..num.." ")
	chonloaitien()
else
	Talk(1,"","<color=red>L�i: V� s� ch� ���c nh�p t� 1 - 99 !")
end
end

function savebang()
BANG = TaoBang(dsmuaveso,"dsmuaveso")				
LuuBang("datascript/veso/danhsachdangky.lua",BANG)
end
function savebang2()
BANG = TaoBang(dstrungthuong,"dstrungthuong")				
LuuBang("datascript/veso/danhsachtrunggiai.lua",BANG)
end
function savebang3()
BANG = TaoBang(dsmuaveso,"dsmuaveso")				
LuuBang("datascript/veso/backupdanhsachdangky.lua",BANG)
end



function chonloaitien()
SetTaskTemp(46,0)
SayNew("<color=green>Th�n T�i<color>: Chon lo�i ��n v� ti�n t�:",3,
"Ng�n l��ng/tiente",
"Kim Nguy�n B�o /tiente",
"Tho�t./no")
end
function tiente(nsel)
SetTaskTemp(47,nsel+1)
Msg2Player("B�n �� ch�n ��n v� ti�n t�: <color=yellow>"..donvi().." ")
nhapsotien()
end
function donvi()
if GetTaskTemp(47) == 1 then
return "V�n L��ng"
elseif GetTaskTemp(47) == 2 then
return "Kim Nguy�n B�o"
else
return ""
end
end
function donvi2(num)
if num == 1 then
return "V�n L��ng"
elseif num == 2 then
return "Kim Nguy�n B�o"
else
return ""
end
end

function nhapsotien()
if GetTaskTemp(47) == 1 then
	OpenStringBox(2,"Nh�p 50-500 v�n","oknhaptien")
elseif GetTaskTemp(47) == 2 then
	OpenStringBox(2,"Nh�p 1-5 KNB","oknhaptien")
else
	chonloaitien()
end
end


function oknhaptien(numa)
num = tonumber(numa)

if GetTaskTemp(47) == 0 then
Talk(1,"","<color=red>L�i: B�n ch�a ch�n lo�i ��n v� ti�n t� !")
return
end

if num < 0 then
Talk(1,"","<color=red>L�i: Kh�ng ���c �� tr�ng !")
return
end

if GetTaskTemp(47) == 1 then
	if num >= 50 and num <= 500 then
		SetTaskTemp(46,num)
		Msg2Player("B�n �� nh�p s� ti�n c��c: <color=yellow>"..num.." v�n l��ng.")
		banveso()
	else
		Talk(1,"","L�i: Ch� ���c ��t c��c t� 50 - 500 v�n l��ng !")
	end
elseif GetTaskTemp(47) == 2 then
	if num > 0 and num <= 5 then
		SetTaskTemp(46,num)
		Msg2Player("B�n �� nh�p s� ti�n c��c: <color=yellow>"..num.." Kim Nguy�n B�o")
		banveso()
	else
		Talk(1,"","L�i: Ch� ���c ��t c��c t� 1 - 5 Kim Nguy�n B�o !")
	end
else
	Talk(1,"","<color=red>L�i: B�n ch�a ch�n lo�i ��n v� ti�n t� !")	
end
end

function xacnhan()
vt = checkds()

if vt  > 10 then
Msg2Player("H�m nay b�n �� mua 10 s� r�i, kh�ng th� mua th�m !")
return
end

van = GetCash()
knb = GetItemCount(17)

if GetTaskTemp(47) == 0 or GetTaskTemp(45) == 0 or GetTaskTemp(46) == 0 then
Talk(1,"","B�n ch�a nh�p �� c�c b��c y�u c�u !")
return
end

if GetTaskTemp(47) == 1 and GetTaskTemp(46) >= 50 and GetTaskTemp(46) <= 500 and vt <= 10 then
	tienvannhap = GetTaskTemp(46) * 10000
	if GetCash() >= tienvannhap then
		Pay(tienvannhap)
		if GetCash() == van-tienvannhap then
			dsmuaveso[getn(dsmuaveso)+1] = {GetName(),GetAccount(),GetTaskTemp(45),GetTaskTemp(46),GetTaskTemp(47)}
			Msg2SubWorld("��i hi�p [<color=green>"..GetName().."<color=red>] �� th� v�n may v�i <color=yellow>V� S� May M�n "..GetTaskTemp(45).." c�a Th�n T�i<color=red>, ch�c b�n may m�n gi�nh ���c gi�i th��ng x"..tilethang.." ti�n c��c !")
			savebang()
	
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/VeSo/MuaVeSoTienVan.txt", "a");
				if LoginLog then
					write(LoginLog,""..GetAccount().." - "..GetName().." - So: "..GetTaskTemp(45).." - Tien "..GetTaskTemp(46).." - Time: "..thoigian.."\n");
				end
				closefile(LoginLog)
			
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","B�n kh�ng mang �� <color=yellow>"..tienvannhap.." l��ng<color>, kh�ng th� mua v� s� !")
	end
elseif GetTaskTemp(47) == 2 and GetTaskTemp(46) >= 1 and GetTaskTemp(46) <= 5 and vt <= 10 then
	knbnhap = GetTaskTemp(46)
	if GetItemCount(17) >= knbnhap then
		for k=1,knbnhap do DelItem(17) end
		if GetItemCount(17) == knb-knbnhap then
				dsmuaveso[getn(dsmuaveso)+1] = {GetName(),GetAccount(),GetTaskTemp(45),GetTaskTemp(46),GetTaskTemp(47)}
				Msg2SubWorld("��i hi�p [<color=green>"..GetName().."<color=red>] �� th� v�n may v�i <color=yellow>V� S� May M�n "..GetTaskTemp(45).." c�a Th�n T�i<color=red>, ch�c b�n may m�n gi�nh ���c gi�i th��ng x"..tilethang.." ti�n c��c !")
			savebang()
	
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/VeSo/MuaVeSoKNB.txt", "a");
				if LoginLog then
					write(LoginLog,""..GetAccount().." - "..GetName().." - So: "..GetTaskTemp(45).." - Tien "..GetTaskTemp(46).." - Time: "..thoigian.."\n");
				end
				closefile(LoginLog)
				Talk(0,"")
		else
			Talk(1,"","hack ha em ")
		end
	else
		Talk(1,"","B�n kh�ng mang �� <color=yellow>"..knbnhap.." Kim Nguy�n B�o<color>, kh�ng th� mua v� s� !")
	end		
else
	Talk(1,"","L�i: kh�ng nh�p �� d� li�u y�u c�u !")
end

end





function checkds()
num = 0
for i=1,getn(dsmuaveso) do
	if GetName() == dsmuaveso[i][1] then
		num = num + 1
	end
end
return num
end

function no()
end