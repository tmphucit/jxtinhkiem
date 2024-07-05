Include("\\script\\lib\\thuvien.lua")

longtru1 = 323
longtru2 = 32
longtru3 = 32
longtru11 = 32
longtru22 = 32
longtru33 = 33

IDKCL = 23
Include("\\datascript\\congthanh\\danhsachKCL.lua")
Include("\\datascript\\congthanh\\DauGiaKCL.lua")
Include("\\datascript\\congthanh\\danhsachcongthanh.lua")
Include("\\script\\congthanh\\headtime.lua")
Include("\\script\\congthanh\\thoigian.lua")

function save()
BANG1 = TaoBang(mang_daugiakcl,"mang_daugiakcl")
LuuBang("datascript/congthanh/DauGiaKCL.lua",BANG1)
BANG2 = TaoBang(mangkcl,"mangkcl")
LuuBang("datascript/congthanh/danhsachKCL.lua",BANG2)
BANG3 = TaoBang(DSCTC,"DSCTC")
LuuBang("datascript/congthanh/danhsachcongthanh.lua",BANG3)
end
function savetimer()
BANG1 = TaoBang(mang_daugiakcl,"mang_daugiakcl")
LuuBang("datascript/congthanh/DauGiaKCL.lua",BANG1)
BANG2 = TaoBang(mangkcl,"mangkcl")
LuuBang("datascript/congthanh/danhsachKCL.lua",BANG2)
BANG3 = TaoBang(DSCTC,"DSCTC")
LuuBang("datascript/congthanh/danhsachcongthanh.lua",BANG3)
end

function resetdaugia()
local IPData = openfile("datascript/congthanh/logdaugia.txt", "a");
for i=1,getn(mang_daugiakcl) do
write(IPData,"Tong: "..mang_daugiakcl[i][1].."\t"..mang_daugiakcl[i][2].."\t"..mang_daugiakcl[i][3].."\n");
end
closefile(IPData)
mang_daugiakcl = {{"",0,0,"",0}}
save()
end
function ghilog(num_kcl,max_kcl)
time = tonumber(date("%H%M%d%m"))
local IPData = openfile("datascript/congthanh/logdaugia.txt", "a");
write(IPData,""..GetTongName().." - "..num_kcl.." - "..max_kcl.." - "..time.."\n");
closefile(IPData)
end


function RunTimer()
end
function RunTimer1()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
giay = tonumber(date("%S"))

bangnhat = check_hang_nhat()

if gio == 18 then
if getn(mang_daugiakcl) > 1 then
	Msg2SubWorld("Bang h�i �ang d�n ��u b�ng ��u gi� Khi�u Chi�n L�nh l� : "..mang_daugiakcl[bangnhat][1].." ")
else
	Msg2SubWorld("��u gi� Khi�u Chi�n L�nh �� b�t ��u ph�t th� "..phut..". Ch�a c� bang h�i n�o b�o  danh !")
end


elseif gio == 19 and phut == 0 then
if (bangnhat == 1) then
Msg2SubWorld("Kh�ng c� Bang H�i n�o tham gia ��u gi� n�n ng�y mai s� kh�ng t� ch�c CTC !")
else
Msg2SubWorld("Ch�c m�ng bang h�i "..mang_daugiakcl[bangnhat][1].." �� th�ng trong cu�c ��u gi� h�m nay.")

		a,b,c,d,e,f,g = GetTongMap(checkIDMAP())
		if a == 0 then
			Msg2SubWorld("Do th�nh th� "..checkNameMAP().." ch�a c� bang h�i chi�m l�nh n�n Bang H�i "..mang_daugiakcl[bangnhat][1].." ���c quy�n qu�n l� th�nh th� n�y !")
			AddGlobalCountNews("Bang h�i <color=red>"..mang_daugiakcl[bangnhat][1].."<color>�� gi�nh chi�n th�ng cu�c ��u gi� khi�u chi�n l�nh h�m nay v� <color=red>"..mang_daugiakcl[bangnhat][4].."<color> ���c phong h�m <color=blue>Th�i Th� "..checkNameMAP().."",1)
			Msg2Player("B�n ���c phong ch�c Th�i Th�. H�y ��n Nha D�ch � Nha M�n �� �i�u ch�nh thu� !")
			SetTongMap(checkIDMAP(),mang_daugiakcl[bangnhat][1],mang_daugiakcl[bangnhat][3],mang_daugiakcl[bangnhat][4],mang_daugiakcl[bangnhat][5],0,0)
			DSCTC[vitritt()][2][1] = mang_daugiakcl[bangnhat][1]
			DSCTC[vitritt()][2][2] = mang_daugiakcl[bangnhat][3]
			DSCTC[vitritt()][2][3] = mang_daugiakcl[bangnhat][4]
			DSCTC[vitritt()][2][4] = mang_daugiakcl[bangnhat][5]
		else
			DSCTC[vitritt()][1][1] = mang_daugiakcl[bangnhat][1]
			DSCTC[vitritt()][1][2] = mang_daugiakcl[bangnhat][3]
			DSCTC[vitritt()][1][3] = mang_daugiakcl[bangnhat][4]
			DSCTC[vitritt()][1][4] = mang_daugiakcl[bangnhat][5]
			Msg2SubWorld("Tr�n c�ng th�nh chi�n ng�y mai v�o l�c 20h00 ng�y "..(ngay+1).."/"..thang.."/2015 ")
			Msg2SubWorld("C�ng Th�nh "..DSCTC[vitritt()][1][1].." vs. Th� Th�nh  "..DSCTC[vitritt()][2][1].." ")
			AddGlobalCountNews("Bang h�i <color=red>"..mang_daugiakcl[bangnhat][1].."<color> �� gi�nh chi�n th�ng trong ��u gi� h�m nay v� s� tham gia C�ng Th�nh Chi�n v�i bang  "..DSCTC[vitritt()][2][1].." v�o l�c 20h00 ng�y "..(ngay+1).."/"..thang.."/2014 ",1)
		end	
end
		resetdaugia()
end

time = 59 - phut
if gio == 19 and phut == 45 then
	for i=1,2000 do
	PlayerIndex = i
	w,x,y = GetWorldPos()
		if w == 36 or w == 34 or w == 35 then
			SetFightState(0)
			SetRevPos(19)
			SetRank(1)
			SetTask(80,0)
			SetTask(128,0)
			Msg2Player("B�n �� tr� v� Ba L�ng Huy�n ")
			NewWorld(53,200*8,200*16)
		end
	end
elseif gio == 19 and phut > 45 then
	if DSCTC[vitrictc()][1][1] ~= "" then
	AddGlobalCountNews("C�ng th�nh chi�n gi�a bang c�ng th�nh <color=green>["..DSCTC[vitrictc()][1][1].."]<color> v� bang th� th�nh <color=yellow>["..DSCTC[vitrictc()][2][1].."]<color> s� b�t ��u sau <color=red>"..time.."<color> ph�t n�a. H�y v�o NPC S� gi� bang h�i �� tham gia ",1)
	Msg2SubWorld("C�ng th�nh chi�n gi�a bang c�ng th�nh ["..DSCTC[vitrictc()][1][1].."] v� bang th� th�nh ["..DSCTC[vitrictc()][2][1].."] s� b�t ��u sau "..time.." ph�t n�a. H�y v�o NPC S� gi� bang h�i �� tham gia !")
	end
elseif gio == 20 and phut == 0 then
	if DSCTC[vitrictc()][1][1] ~= "" then
	Msg2SubWorld("C�ng th�nh chi�n gi�a bang c�ng th�nh ["..DSCTC[vitrictc()][1][1].."] v� bang th� th�nh ["..DSCTC[vitrictc()][2][1].."] b�t ��u !")
	AddGlobalCountNews("C�ng th�nh chi�n gi�a bang c�ng th�nh <color=green>["..DSCTC[vitrictc()][1][1].."]<color> v� bang th� th�nh <color=yellow>["..DSCTC[vitrictc()][2][1].."]<color> �� b�t ��u ! ",1)
	end
elseif gio == 22 and phut == 0 then
	if DSCTC[vitrictc()][1][1] ~= "" then
	kickall()
	if GetGlbMissionV(10) == 2 then
		AddGlobalCountNews("C�ng th�nh chi�n gi�a bang c�ng th�nh <color=green>["..DSCTC[vitrictc()][1][1].."]<color> v� bang th� th�nh<color=yellow>["..DSCTC[vitrictc()][2][1].."]<color> �� k�t th�c, ph�n th�ng thu�c v� Phe C�ng Th�nh",1)
		Msg2World("C�ng th�nh chi�n gi�a bang c�ng th�nh ["..DSCTC[vitrictc()][1][1].."] v� bang th� th�nh ["..DSCTC[vitrictc()][2][1].."] �� k�t th�c, ph�n th�ng thu�c v� phe C�ng Th�nh!")
		DSCTC[vitrictc()][2][1] = DSCTC[vitrictc()][1][1]
		DSCTC[vitrictc()][2][2] = DSCTC[vitrictc()][1][2]
		DSCTC[vitrictc()][2][3] = DSCTC[vitrictc()][1][3] 
		DSCTC[vitrictc()][2][4] = DSCTC[vitrictc()][1][4]
		DSCTC[vitrictc()][1][1] = ""
		DSCTC[vitrictc()][1][2] = 0
		DSCTC[vitrictc()][1][3] = ""
		DSCTC[vitrictc()][1][4] = 0
		SetTongMap(checkIDMAPCTC(),DSCTC[vitrictc()][2][1],DSCTC[vitrictc()][2][2],DSCTC[vitrictc()][2][3],DSCTC[vitrictc()][2][4],0,0)
		Msg2SubWorld("Bang h�i "..DSCTC[vitrictc()][2][1].." �� gi�nh chi�n th�ng v� "..DSCTC[vitrictc()][2][3].." ���c phong h�m Th�i Th� "..checkNameMAP().."")
	elseif GetGlbMissionV(10) == 1 or GetGlbMissionV(10) == 0 then
		
		AddGlobalCountNews("C�ng th�nh chi�n gi�a bang c�ng th�nh <color=green>["..DSCTC[vitrictc()][1][1].."]<color> v� bang th� th�nh <color=yellow>["..DSCTC[vitrictc()][2][1].."]<color> �� k�t th�c, ph�n th�ng thu�c v� Phe Th� Th�nh",1)	
		Msg2SubWorld("C�ng th�nh chi�n gi�a bang c�ng th�nh ["..DSCTC[vitrictc()][1][1].."] v� bang th� th�nh ["..DSCTC[vitrictc()][2][1].."] �� k�t th�c, ph�n th�ng thu�c v� phe Th� Th�nh!")
		DSCTC[vitrictc()][1][1] = ""
		DSCTC[vitrictc()][1][2] = 0
		DSCTC[vitrictc()][1][3] = ""
		DSCTC[vitrictc()][1][4] = 0
	end
	end
end		

if gio == 2 and phut == 0 and timelebao() == 1 then
	LE_BAO = {}
	for h=1,4 do
	LE_BAO[h] = {DSCTC[h][2][1],60}
	end	
	BANG3 = TaoBang(LE_BAO,"LE_BAO")
	LuuBang("script/lebao.lua",BANG3)
	ReLoadScript("\\script\\hotrotanthu.lua")
	--Msg2SubWorld("<color=pink>�� c�p nh�t danh s�ch L� Bao C�ng Th�nh Chi�n tu�n v�a r�i. C�c Th�i Th� ��n H� Tr� T�n Th� �� nh�n ph�n th��ng !")
end

end


soluongquai =  {{1,500,1200},{80,500,1200},{90,700,1500},{100,800,1800},{120,900,1800},{150,1000,1800},{201,1200,1800}}

function kickall()
for i=1,GetCountPlayerMax() do
PlayerIndex = i
w,x,y = GetWorldPos()

	if w == 36 or w == 34 or w == 35 then
		vt = 1
		for i=1,getn(soluongquai) do
		if (GetLevel() >= soluongquai[i][1]) and (GetLevel() < soluongquai[i+1][1]) then
		vt = i
		end
		end
		exp = soluongquai[vt][2] * soluongquai[vt][3] * 3 
		exp2 = exp / 10000 * 2000 / 2 * 8
		AddOwnExp(exp2)
		Msg2Player("B�n nh�n ���c "..exp2.." kinh nghi�m. ")
		Talk(0,"")
	end
	if w == 36 then
		if GetTask(80) == 1 then
			NewWorld(34, 201*8, 200*16);
		elseif GetTask(80) == 2 then
			NewWorld(35, 1566, 3233);
		end	
	end
end
end

function checkTongName()
_,a,a2,_,_,_,_ = GetTongMap(18)
_,b,b2,_,_,_,_ = GetTongMap(17)
_,c,c2,_,_,_,_ = GetTongMap(9)
_,d,d2,_,_,_,_ = GetTongMap(15)
if GetTongName() == a and GetTongNameID() == a2 then
return "Th�nh �� "
elseif GetTongName() == b and GetTongNameID() == b2 then
return "Ph��ng T��ng "
elseif GetTongName() == c and GetTongNameID() == c2 then
return "Bi�n Kinh "
elseif GetTongName() == d and GetTongNameID() == d2 then
return "T��ng D��ng "
else
return ""
end
end


function checkCTCName()
for i=1,getn(DSCTC) do
	if GetTongName() == DSCTC[i][1][1] or GetTongNameID() == DSCTC[i][1][2] or GetTongName() == DSCTC[i][2][1] or GetTongNameID() == DSCTC[i][2][2] then
		return 1
	end
end
return 0
end


function check_ngaythang()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
for i=1,getn(time_dau_gia[thang]) do
	if ngay == time_dau_gia[thang][i]-4+vitritt() then
		return 1
	end
end
return 0
end



function main()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))

w,x,y = GetWorldPos()
if GetTongNameID() == 0 then
Talk(1,"","Vui l�ng ��n NPC Qu�n L� Bang H�i �� t�o bang h�i !")
return
end
		if check_ngaythang() == 1 and gio == 18 and GetTongFigure() == 3 then
			Say("<color=green>Qu�n L� Bang H�i<color>:<enter>Th�i gian ��u gi� c�n l�i l�: <color=red>"..(59-phut).."<color> ph�t <color=red>"..(59-giay).."<color> gi�y ! ",6,
			"��u gi� Khi�u Chi�n L�nh/daugiakcl",
			"Xem s� l��ng Khi�u Chi�n L�nh /xemsl",
			"Xem th�i gian ��u Gi� /timedaugia",
			"Xem th�i gian C�ng Th�nh Chi�n /timectc",
			"Xem Ho�t ��ng H�m Nay/hoatdong",
			"Tho�t ./no")
		else
			if w == checktimeCTC() then
				Say("<color=green>Qu�n L� Bang H�i<color>: Ta chuy�n qu�n l� nh�ng v�n �� v� Bang h�i ",7,
				"Giao n�p khi�u chi�n l�nh /nopkcl",
				"Tham gia C�ng Th�nh Chi�n /thamgia",
				"Xem s� l��ng Khi�u Chi�n L�nh /xemsl",
				"Xem th�i gian ��u Gi� /timedaugia",
				"Xem th�i gian C�ng Th�nh Chi�n /timectc",
				"Xem Ho�t ��ng H�m Nay/hoatdong",	
				"Tho�t./no")

			else
			Say("<color=green>Qu�n L� Bang H�i<color>: Ta chuy�n qu�n l� nh�ng v�n �� v� Bang h�i ",6,
				"Giao n�p khi�u chi�n l�nh /nopkcl",
				"Xem s� l��ng Khi�u Chi�n L�nh /xemsl",
				"Xem th�i gian ��u Gi� /timedaugia",
				"Xem th�i gian C�ng Th�nh Chi�n /timectc",
				"Xem Ho�t ��ng H�m Nay/hoatdong",
				"Tho�t./no")
			end
		end	
end

function hoatdong()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
check = 0
	for i=1,getn(time_dau_gia[thang]) do
		if ngay <= time_dau_gia[thang][i] then
			if time_dau_gia[thang][i] - ngay  < 7 and time_dau_gia[thang][i] - ngay >= 0 then	
				check = time_dau_gia[thang][i] - ngay
				break
			end
		end
	end

	if  check  == 3 then
		Talk(1,"","Time Ho�t ��ng:\n18h00 - 19h00 : ��u Gi� Khi�u Chi�n L�nh <color=blue>Th�nh ��<color>")
	elseif check   == 2 then
		Talk(1,"","Time Ho�t ��ng:\n18h00 - 19h00 : ��u Gi� Khi�u Chi�n L�nh <color=blue>Ph��ng T��ng<color>20h00 - 22h00: C�ng Th�nh chi�n <color=red>Th�nh ��")
	elseif check   == 1 then
		Talk(1,"","Time Ho�t ��ng:\n18h00 - 19h00 : ��u Gi� Khi�u Chi�n L�nh <color=blue>Bi�n Kinh<color>\n20h00 - 22h00: C�ng Th�nh chi�n <color=red>Ph��ng T��ng")
	elseif check   == 0 then
		Talk(1,"","Time Ho�t ��ng:\n18h00 - 19h00 : ��u Gi� Khi�u Chi�n L�nh <color=blue>T��ng D��ng<color>\n20h00 - 22h00: C�ng Th�nh chi�n <color=red>Bi�n Kinh")
	elseif check   == 6 then
		Talk(1,"","Time Ho�t ��ng:\n20h00 - 2h00 : C�ng Th�nh Chi�n <color=blue>T��ng D��ng<color>")
	else
		Talk(1,"","H�m nay kh�ng c� ho�t ��ng li�n quan ��n Bang H�i !")
	end
end

function timedaugia()
Talk(3,"","Th�i gian ��u gi� b�t ��u t� 18h00 - 19h00 t�i NPC Qu�n L� Bang H�i c�c th�nh th� .",
"Th�nh �� th� 4, Ph��ng T��ng Th� 5, Bi�n Kinh th� 6, T��ng D��ng Th� 7 ",
"Sau khi k�t th�c Bang H�i n�o gi�nh chi�n th�ng ��u gi� s� ���c C�ng Th�nh Chi�n v�o ng�y mai !")
end
function timectc()
Talk(3,"","Th�i gian ��u gi� b�t ��u t� 20h00 - 22h00 t�i NPC Qu�n L� Bang H�i c�c th�nh th� .",
"Th�nh �� th� 5, Ph��ng T��ng Th� 6, Bi�n Kinh th� 7, T��ng Duong ch� nh�t ",
"Th�ng tin chi ti�t vui l�ng l�n trang ch� �� xem !")
end



function daugiakcl()
w,x,y = GetWorldPos()
if GetTongFigure() ~= 3 then
Talk(1,"","B�n kh�ng ph�i l� <color=red>Bang Ch� <color>. Kh�ng c� quy�n tham gia ��u gi� !")
return
end

if checkTongName() ~= "" then
Talk(1,"","Bang h�i c�a b�n �ang chi�m l�nh th�nh th� <color=blue>"..checkTongName().."<color>. Kh�ng th� tham gia ��u gi� !")
return
end

if checkCTCName() == 1 then
Talk(1,"","Bang h�i c�a b�n �� c� trong danh s�ch tham gia C�ng Th�nh Chi�n. V� th� kh�ng th� tham gia ��u gi� !")
return
end

if  w ~= checkIDMAP() then
Talk(1,"","��u gi� Khi�u Chi�n L�nh h�m nay t�i th�nh <color=blue>"..checkNameMAP().." ")
return
end
if check_daugiakcl() == 0 then
mang_daugiakcl[getn(mang_daugiakcl)+1] = {GetTongName(),0,GetTongNameID(),GetName(),GetUUID()}
Msg2Player("Kh�i t�o ��u Gi� KCL th�nh c�ng !")
end

OpenStringBox(2,"Nh�p s� l��ng","daugiakcl2")
end

function daugiakcl2(num)
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))

if gio ~= 18 then
Msg2Player("<color=pink>: �� h�t th�i gian ��u gi� !")
return
end

num2 = tonumber(num)



if check_daugiakcl() == 0 then
	mang_daugiakcl[getn(mang_daugiakcl)+1] = {GetTongName(),0,GetTongNameID(),GetName(),GetUUID()}
	Msg2Player("Kh�i t�o ��u Gi� KCL th�nh c�ng !")
else
	vtbang = checkbang()
	vt_daugia = check_daugiakcl()
	sl = mangkcl[vtbang][2]
	if num2 > sl then
	Talk(1,"","S� l��ng Khi�u Chi�n L�nh trong Bang H�i �� h�t !")
	return
	end

	if num2 == 0 or num2 == nil then
	Talk(1,"","Kh�ng ���c �� tr�ng ! ")
	return
	end
	mangkcl[vtbang][2] = mangkcl[vtbang][2] - num2
	if  mangkcl[vtbang][2] == (sl-num2) then
		mang_daugiakcl[vt_daugia][2] =  mang_daugiakcl[vt_daugia][2] + num2
		Msg2Player("B�n �� ��u gi� th�m "..num2.." Khi�u Chi�n L�nh ")
		Msg2Player("Khi�u Chi�n L�nh �� ��u gi�: "..mang_daugiakcl[vt_daugia][2].." ")
		Talk(1,"","Bang h�i �ang d�n ��u b�ng ��u gi� l� :<color=red> "..mang_daugiakcl[check_hang_nhat()][1].." ")
		ghilog(num2,mang_daugiakcl[vt_daugia][2])
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
end	
end

function check_hang_nhat()
vt_hang = 1
max = mang_daugiakcl[1][2]
for i=1,getn(mang_daugiakcl) do
	if mang_daugiakcl[i][2] > max then
		max = mang_daugiakcl[i][2]
		vt_hang = i
	end
end
return vt_hang
end

function check_daugiakcl()
vt_check = 0
for i=1,getn(mang_daugiakcl) do
	if GetTongName() == mang_daugiakcl[i][1] and GetTongNameID() == mang_daugiakcl[i][3] then
	vt_check = i
	break
	end
end
return vt_check
end

function checkbang()
vitri = 0
for i=1,getn(mangkcl) do
	if GetTongName() == mangkcl[i][1] and GetTongNameID() == mangkcl[i][3]then
	vitri = i
	break
	end
end
return vitri
end

function nopkcl()
OpenStringBox(2,"Nh�p s� l��ng","nopkcl2")
end

function nopkcl2(num)
ngay = tonumber(date("%d"))
if GetTask(136) ~= ngay then
SetTask(136,ngay)
SetTask(137,0)
SetTask(82,0)
SetTask(9,0)
SetTask(2,0)
SetTask(3,0)
end
num2 = tonumber(num)
if checkbang() == 0 then
	mangkcl[getn(mangkcl)+1] = {GetTongName(),0,GetTongNameID()}
	Msg2Player("Kh�i t�o KCL th�nh c�ng !")
else
	vitri_kcl = checkbang()
	sl = GetItemCount(IDKCL)
	if num2 > sl then
		Talk(1,"","Khi�u chi�n l�nh trong h�nh trang kh�ng �� !")
	return
	end
	if num2 == 0 or num2 == nil then
	Talk(1,"","Kh�ng ���c �� tr�ng ! ")
	return
	end
	if (GetTask(9)+num2) > 100 then
	Talk(1,"","V��t qu� gi�i h�n 100 c�i !")
	return
	end

	for i=1,num2 do
		DelItem(IDKCL)
	end
		if GetItemCount(IDKCL) == (sl-num2) then
			mangkcl[vitri_kcl ][2] = mangkcl[vitri_kcl ][2]+num2
			SetTask(9,GetTask(9)+num2)
			Msg2Player("B�n �� giao n�p th�nh c�ng "..num2.." Khi�u Chi�n L�nh !")
			Msg2Player("S� l��ng KCL trong ng�y: "..GetTask(9).." / 100 ")
			for k=1,num2 do
				AddOwnExp(50000)
			end
			Msg2Player("B�n nh�n ���c "..(num2*50000).." kinh nghi�m ")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end

end
end

function xemsl()
if checkbang() == 0 then
	mangkcl[getn(mangkcl)+1] = {GetTongName(),0,GetTongNameID()}
	Msg2Player("Kh�i t�o KCL th�nh c�ng !")
else
	vt = checkbang()
	if GetTongFigure() >= 2 then
		Talk(1,"","S� Khi�u Chi�n L�nh hi�n t�i c�a Bang H�i l�: <color=red>"..mangkcl[vt][2].."<color> ")
	else
		Talk(1,"","Ch� c� <color=red>Bang Ch� <color> ho�c <color=red>Tr��ng L�o<color> m�i c� th� xem !")
	end
end
end



function thamgia2()
Talk(1,"","<color=green>Qu�n L� Bang H�i<color>: C�ng th�nh chi�n s� b�o danh l�c 18h45 v� di�n ra t� 19h00 - 21h00 ")
end

function no()
end



function TaoLongTru()
npcmapindex = SubWorldID2Idx(36)

longtru1 = AddNpc(776,95,npcmapindex,1655*32,3346*32)
SetNpcScript(longtru1, "\\script\\congthanh\\npccongthanh.lua");
longtru2 = AddNpc(776,95,npcmapindex,1723*32,3279*32)
SetNpcScript(longtru2, "\\script\\congthanh\\npccongthanh.lua");
longtru3 = AddNpc(776,95,npcmapindex,1590*32,3412*32)
SetNpcScript(longtru3, "\\script\\congthanh\\npccongthanh.lua");

longtru11 = AddNpc(778,95,npcmapindex,1655*32,3346*32)
SetNpcScript(longtru11, "\\script\\congthanh\\npccongthanh.lua");
longtru22 = AddNpc(778,95,npcmapindex,1723*32,3279*32)
SetNpcScript(longtru22, "\\script\\congthanh\\npccongthanh.lua");
longtru33 = AddNpc(778,95,npcmapindex,1590*32,3412*32)
SetNpcScript(longtru33, "\\script\\congthanh\\npccongthanh.lua");


end

function OnDeath(idx)
if GetTask(80) == 1 and GetCurCamp() == 2 then 
	if ( longtru11 == tonumber(idx)) then
		HideNpc(longtru11,99999999)
		HideNpc(longtru1,18*30)
		SetGlbMissionV(10,GetGlbMissionV(10)+1)
		Msg2World("C�ng th�nh binh s� ["..GetName().."] �� ph� h�y L�p D��ng Long Tr�, s� l��ng Long Tr� chi�m ���c b�n c�ng th�nh l� : "..GetGlbMissionV(10).." ")
	elseif tonumber(idx) == longtru22 then 
		HideNpc(longtru22,999999999)
		HideNpc(longtru2,18*30)
		SetGlbMissionV(10,GetGlbMissionV(10)+1)
		Msg2World("C�ng th�nh binh s� ["..GetName().."] �� ph� h�y ��nh Xuy�n Long Tr�, s� l��ng Long Tr� chi�m ���c b�n c�ng th�nh l� : "..GetGlbMissionV(10).." ")
	elseif tonumber(idx) == longtru33 then 
		HideNpc(longtru33,999999999)
		HideNpc(longtru3,18*30)
		SetGlbMissionV(10,GetGlbMissionV(10)+1)
		Msg2World("C�ng th�nh binh s� ["..GetName().."] �� ph� h�y B�nh Giang Long Tr�, s� l��ng Long Tr� chi�m ���c b�n c�ng th�nh l� : "..GetGlbMissionV(10).." ")
	end
Msg2Player("Sau 30 gi�y s� xu�t hi�n Long Tr� H�n Tr�n !")
	if GetGlbMissionV(10) == 3 then
		kickall()
		Msg2World("B�n C�ng Th�nh �� chi�n ���c 3 Long Tr� v� gi�nh chi�n th�ng ho�n to�n !")
		AddGlobalCountNews("C�ng th�nh chi�n gi�a bang c�ng th�nh <color=green>["..DSCTC[vitrictc()][1][1].."]<color> v� bang th� th�nh<color=yellow>["..DSCTC[vitrictc()][2][1].."]<color> �� k�t th�c, ph�n th�ng thu�c v� Phe C�ng Th�nh",1)
		Msg2World("C�ng th�nh chi�n gi�a bang c�ng th�nh ["..DSCTC[vitrictc()][1][1].."] v� bang th� th�nh ["..DSCTC[vitrictc()][2][1].."] �� k�t th�c, ph�n th�ng thu�c v� phe C�ng Th�nh!")
		DSCTC[vitrictc()][2][1] = DSCTC[vitrictc()][1][1]
		DSCTC[vitrictc()][2][2] = DSCTC[vitrictc()][1][2]
		DSCTC[vitrictc()][2][3] = DSCTC[vitrictc()][1][3] 
		DSCTC[vitrictc()][2][4] = DSCTC[vitrictc()][1][4]
		DSCTC[vitrictc()][1][1] = ""
		DSCTC[vitrictc()][1][2] = 0
		DSCTC[vitrictc()][1][3] = ""
		DSCTC[vitrictc()][1][4] = 0
		SetTongMap(checkIDMAPCTC(),DSCTC[vitrictc()][2][1],DSCTC[vitrictc()][2][2],DSCTC[vitrictc()][2][3],DSCTC[vitrictc()][2][4],0,0)
		Msg2SubWorld("Bang h�i "..DSCTC[vitrictc()][2][1].." �� gi�nh chi�n th�ng v� "..DSCTC[vitrictc()][2][3].." ���c phong h�m Th�i Th� "..checkNameMAP().."")
		
	end
elseif GetCurCamp() == 1 and GetTask(80) == 2 then -- Ben thu
	if tonumber(idx) == longtru1 then -- tru giua vang
		HideNpc(longtru1,999999999)
		HideNpc(longtru11,18*30)
		SetGlbMissionV(10,GetGlbMissionV(10)-1)
		Msg2World("Th� th�nh binh s� ["..GetName().."] �� ph� h�y L�p D��ng Long Tr�, s� l��ng Long Tr� b� chi�m b�n c�ng th�nh l� : "..GetGlbMissionV(10).." ")
	elseif tonumber(idx) == longtru2 then 
		HideNpc(longtru2,999999999)
		HideNpc(longtru22,18*30)
		SetGlbMissionV(10,GetGlbMissionV(10)-1)
		Msg2World("Th� th�nh binh s� ["..GetName().."] �� ph� h�y L�p D��ng Long Tr�, s� l��ng Long Tr� b� chi�m b�n c�ng th�nh l� : "..GetGlbMissionV(10).." ")
	elseif tonumber(idx) == longtru3 then 
		HideNpc(longtru3,999999999)
		HideNpc(longtru33,18*30)
		SetGlbMissionV(10,GetGlbMissionV(10)-1)
		Msg2World("Th� th�nh binh s� ["..GetName().."] �� ph� h�y L�p D��ng Long Tr�, s� l��ng Long Tr� b� chi�m b�n c�ng th�nh l� : "..GetGlbMissionV(10).." ")
	end
Msg2Player("Sau 30 gi�y s� xu�t hi�n Long Tr� Tr�n Gi� !")
end
end

function OnDrop()
end



function thamgia()
if GetGlbMissionV(9) == 0 then
SetGlbMissionV(9,1)
TaoLongTru()
HideNpc(longtru1,999999999)
HideNpc(longtru2,999999999)
HideNpc(longtru3,999999999)
end

gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if gio < 19 or (gio == 19 and phut < 45) then
Talk(1,"","Th�i gian v�o C�ng Th�nh Chi�n b�t ��u t� 19h45 ph�t !")
return
elseif gio == 22 then
Talk(1,"","Tr�n C�ng Th�nh Chi�n h�m nay �� k�t th�c !")
end

if GetTongNameID() == 0 then
Talk(1,"","<color=green>Qu�n l� Bang h�i <color>: B�n ch�a gia nh�p bang kh�ng th� tham gia c�ng th�nh !")
return
end
if DSCTC[vitrictc()][1][1] == "" then
Talk(1,"","H�m nay kh�ng c� C�ng Th�nh Chi�n do kh�ng c� Bang H�i C�ng Th�nh ")
return
end
if GetLevel() < 80 then
Talk(1,"","��ng c�p d��i 80 kh�ng th� tham gia C�ng Th�nh Chi�n !")
return
end

if GetTongName() == DSCTC[vitrictc()][1][1] and GetTongNameID() == DSCTC[vitrictc()][1][2] then
	bencong()
elseif GetTongName() == DSCTC[vitrictc()][2][1] and GetTongNameID() == DSCTC[vitrictc()][2][2] then
	benthu()
else
Talk(2,"","<color=green>Qu�n l� Bang h�i <color>: Bang h�i c�a b�n kh�ng c� t�n trong danh s�ch c�ng th�nh h�m nay ",
	"C�ng th�nh bang ["..DSCTC[vitrictc()][1][1].."] - th� th�nh bang ["..DSCTC[vitrictc()][2][1].."] ")
end
end

function check_time_gia_nhap()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
time = thang*1000+ngay
thanggianhap = floor(GetTask(8)/1000)
ngaygianhap = mod(GetTask(8),1000)
if ngaygianhap == 0 or ngaygianhap > 31 then
return 0
end
if thanggianhap == 0 or thanggianhap > 12 then
return 0
end
if thanggianhap == thang and ngay - ngaygianhap < 7 then
	return 1
elseif thang - thanggianhap == 1 and time_gia_nhap[thanggianhap] - ngaygianhap + ngay < 7 then
	return 1
end 
return 0
end

function bencong()
ngay = tonumber(date("%d"))
if check_time_gia_nhap() == 1 then
Talk(1,"","B�n gia nh�p bang h�i ch�a �� 7 ng�y, kh�ng th� tham gia C�ng Th�nh Chi�n !")
return
end
SetTask(10,ngay)
LeaveTeam()
SetTask(16,GetCurCamp())
SetRevPos(21)
SetCurCamp(2)
SetCamp(2)
SetTask(80,1) -- TaskCongThanh
SetCreateTeam(0);
SetFightState(0)
SetLogoutRV(0)
SetRank(215)
SetTask(128,1)
Msg2Player("Di chuy�n ��n h�u ph��ng b�n C�ng")
NewWorld(34, 201*8, 200*16);
end

function benthu()
ngay = tonumber(date("%d"))
if check_time_gia_nhap() == 1 then
Talk(1,"","B�n gia nh�p bang h�i ch�a �� 7 ng�y, kh�ng th� tham gia C�ng Th�nh Chi�n !")
return
end
SetTask(10,ngay)
SetTask(128,1)
LeaveTeam()
SetTask(16,GetCurCamp())
SetRevPos(22)
SetCurCamp(1)
SetCamp(1)
SetTask(80,2) -- TaskCongThanh
SetCreateTeam(0);
SetFightState(0)
SetRank(216)
SetLogoutRV(0)
Msg2Player("Di chuy�n ��n h�u ph��ng b�n Th� ")
NewWorld(35, 1566, 3233);
end





