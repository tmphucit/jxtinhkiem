taytuy = 196
Include("\\script\\Global\\doimaump.lua")
function main()
if GetTask(196) < 2 then
roidao2()
elseif GetTask(196) == 2 then
SayNew("<color=green>T�y Tu� ��i S� <color> ��i hi�p ���c t�y tu� mi�m ph�: ",5,
"T�y �i�m k� n�ng/taykn",
"T�y �i�m ti�m n�ng/taytn",
"T�y �i�m k� n�ng v� ti�m n�ng/taykntm",
--"Chuy�n tr�ng th�i PK/chuyenpk",
"R�i ��o t�y tu�/roidao",
"Tho�t./no")
elseif GetTask(196) == 3 then
SayNew("<color=red>T�y Tu� ��i S� <color> B�n �� l�n ��o b�ng c�ch d�ng Thu� Tinh",3,
"T�y �i�m k� n�ng/taykn",
--"Chuy�n tr�ng th�i PK/chuyenpk",
"R�i ��o t�y tu�/roidao",
"Tho�t./no")
elseif GetTask(196) == 4 then
SayNew("<color=red>T�y Tu� ��i S� <color> B�n �� l�n ��o b�ng c�ch d�ng Tinh H�ng B�o Th�ch",3,
"T�y �i�m ti�m n�ng/taytn",
--"Chuy�n tr�ng th�i PK/chuyenpk",
"R�i ��o t�y tu�/roidao",
"Tho�t./no")
elseif GetTask(196) == 5 then
SayNew("<color=red>T�y Tu� ��i S� <color> B�n �� l�n ��o b�ng c�ch d�ng Thu� Tinh v� Tinh H�ng B�o Th�ch",5,
"T�y �i�m k� n�ng/taykn",
"T�y �i�m ti�m n�ng/taytn",
"T�y �i�m k� n�ng v� ti�m n�ng/taykntm",
--"Chuy�n tr�ng th�i PK/chuyenpk",
"R�i ��o t�y tu�/roidao",
"Tho�t./no")
else
SayNew("<color=red>T�y Tu� ��i S� <color> B�n b� l�i lag t�a ��. t� ��ng move l�n ��o t�y t�y ",2,
"R�i ��o t�y tu�/roidaofree",
"Tho�t./no")
end
end
function taykntm()
SayNew("<color=green>T�y Tu� ��i S� <color> B�n ch�c ch�n mu�n t�y ti�m n�ng v� k� n�ng ch�?",2,
"Ta ch�c ch�n/tayca2",
"Tho�t./no")
end
function roidaofree()
SetFightState(0)
doimaump()
NewWorld(53,200*8,200*16)
SetRevPos(19);
Msg2Player("Ng�i y�n! Ch�ng ta �ang tr� v� ba l�ng huy�n...")
	LoginLog = openfile("Data/RoiDaoTayTuyFree.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." "..GetExp().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
end
function roidao2()
doimaump()
SetFightState(0)
NewWorld(53,200*8,200*16)
SetRevPos(19);
Msg2Player("Ng�i y�n! Ch�ng ta �ang tr� v� ba l�ng huy�n...")
thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/RoiDaoTayTuy.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." "..GetExp().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
end
function roidao()
SayNew("<color=green>T�y Tu� ��i S� <color> B�n ch�c ch�n mu�n r�i kh�i ��o t�y tu� ch�?",2,
"Ta ch�c ch�n/roidao2",
"Tho�t./no")
end

function chuyenpk()
SayNew("<color=green>T�y Tu� ��i S� <color> Vui l�ng ch�n tr�ng th�i",3,
"Luy�n c�ng/luyencong",
"Chi�n ��u/pk",
"Tho�t./no")
end
function pk()
SetCamp(4)
SetCurCamp(4)
SetFightState(1)
Msg2Player(">>>>>>>>>>>>>>> �� chuy�n tr�ng th�i Chi�n ��u")
end
function luyencong()
SetCurCamp(1)
SetCamp(1)
SetFightState(0)
Msg2Player(">>>>>>>>>>>>>>> �� chuy�n tr�ng th�i Luy�n C�ng")
end
function tayca2()
TayTiemNang()
TayKyNang()
end
function taytn()
SayNew("<color=green>T�y Tu� ��i S� <color> B�n ch�c ch�n mu�n t�y �i�m ti�m n�ng ch�?",2,
"Ta ch�c ch�n/TayTiemNang",
"Tho�t./no")
end
function taykn()
SayNew("<color=green>T�y Tu� ��i S� <color> B�n ch�c ch�n mu�n t�y �i�m k� n�ng ch�?",2,
"Ta ch�c ch�n/TayKyNang",
"Tho�t./no")
end

function no()
Msg2Player("H�n g�p l�i qu� kh�ch ..........")
end

function TayTiemNang()
a = GetSeries()
if a == 0 then
RestAP(35,25,25,15)
elseif a == 1 then
RestAP(20,35,20,25)
elseif a == 2 then
RestAP(25,25,25,25)
elseif a == 3 then
RestAP(30,20,30,20)
elseif a == 4 then
RestAP(20,15,25,40)
end
diemtn = GetProp()
AddProp(-diemtn)
diem = (GetLevel()-1)*5+GetTask(198)*5 + GetTask(200)*10 + getTiemNang() + getTiemNangGame() + getTiemNangGame1() + getTiemNangGame2()
AddProp(diem)
KickOutSelf()
end


function TayKyNang()
diemkn = GetMagicPoint()
AddMagicPoint(-diemkn)
diemkn2 = (GetLevel()-1)+GetTask(199) + getKyNang() + getKyNangGame() + getKyNangGame1()
AddMagicPoint(diemkn2)
RollbackSkill()
UpdateSkill()
KickOutSelf()
end
function getTiemNang()
if GetTask(139) == 1 then
return 200
elseif GetTask(139) == 2 then
return 500
elseif GetTask(139) == 3 then
return 800
elseif GetTask(139) == 4 then
return 1200
elseif GetTask(139) == 5 then
return 1700
else
return 0
end
end
function getKyNang()
if GetTask(139) == 1 then
return 40
elseif GetTask(139) == 2 then
return 100
elseif GetTask(139) == 3 then
return 160
elseif GetTask(139) == 4 then
return 180
elseif GetTask(139) == 5 then
return 200
else
return 0
end
end


function getTiemNangGame2()
if GetAccount() == "" or GetAccount() == "" or GetAccount() == "" then
return 2000
else
return 0
end
end


function getTiemNangGame1()
if GetAccount() == "" or GetAccount() == "" or GetAccount() == "" or GetAccount() == ""  then
return 2000
else
return 0
end
end



function getTiemNangGame()
if GetAccount() == "" or GetAccount() == "" or GetAccount() == "" then
return 2500
else
return 0
end
end

function getKyNangGame()
if GetAccount() == "" or GetAccount() == "" or GetAccount() == "" then
return 200
else
return 0
end
end

function getKyNangGame1()
if GetAccount() == "" or GetAccount() == "" or GetAccount() == "" or GetAccount() == ""  then
return 500
else
return 0
end
end

