Include("\\script\\lib\\thuvien.lua")
Include("\\script\\monphai.lua")


function main()
ReLoadScript("\\script\\chuyenserver\\sugiachuyenserver.lua")
SayNew("<color=green>S� gi� chuy�n Server<color>: Ta ��n ��y �� gi�p c�c ng��i chuy�n sevrer ",3,
"M� R��ng Ch�a ��/moruong",
"��ng k� chuy�n Server /chuyensv",
"Tho�t./no")
end



function banshop()
Sale(10)
end
function huytrangbi()
OpenCheckItemBox("H�y B� Trang B�","H�y ��t 1 trang b� Kh�a V�nh Vi�n V�o ","okhuytb")
end

function okhuytb()
idx = GetIdxItemBox2()
if (idx == -1) then
Msg2Player("Trong r��ng c� nhi�u h�n 1 v�t ph�m ")
elseif (idx == 0) then
Msg2Player("Trong r��ng kh�ng c� v�t ph�m n�o ")
elseif (idx == -2) then
Msg2Player("V�t ph�m ��t  v�o kh�ng ph�i l� trang b� ")
else
	if (GetTimeItemIdx(idx) == 550324) then
		ten = GetNameItemBox(idx)
		SetTimeItem(idx,0);
		DelEquipIdx(idx)
		Talk(1,"","�� h�y trang b� th�nh c�ng trang b�  <color=yellow>"..ten.." !")
		a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
		inloghuytb(""..ten.." - TK: ["..GetAccount().."] - ["..GetName().."] - {"..a1..","..a2..","..a3..","..a4..","..a5..","..a6..","..a7..","..a8..","..a9..","..a10..","..a11..","..a12..","..a13..","..a14..","..a15..","..a16..","..a17.."},")	
		Msg2Player("B�n �� h�y th�nh c�ng trang b� <color=yellow>"..ten.." ")
	elseif (GetTimeItemIdx(idx) > 1) then
		ten = GetNameItemBox(idx)
		time = GetTimeItemIdx(idx)
		SetTimeItem(idx,0);
		DelEquipIdx(idx)
		Talk(1,"","�� h�y trang b� th�nh c�ng trang b�  <color=yellow>"..ten.." !")
		a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
		inloghuytb("["..time.."] "..ten.." - TK: ["..GetAccount().."] - ["..GetName().."] - {"..a1..","..a2..","..a3..","..a4..","..a5..","..a6..","..a7..","..a8..","..a9..","..a10..","..a11..","..a12..","..a13..","..a14..","..a15..","..a16..","..a17.."},")	
		Msg2Player("B�n �� h�y th�nh c�ng trang b� <color=yellow>"..ten.." ")
	else	
		Talk(1,"","Trang b� ��t v�o kh�ng kh�a v�nh vi�n !")
	end
end
end


function inloghuytb(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/HuyTrangBiKhoaVinhVien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - "..thoigian.." \n");
end
closefile(LoginLog)
end

function inlogphanra(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/PhanRaHKMP.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - "..thoigian.." \n");
end
closefile(LoginLog)
end


function phanramanh()
OpenCheckItemBox("Ph�n R� HKMP","H�y ��t 1 trang b� Ho�ng Kim M�n Ph�i v�o ","okphanramanh")
end

function okphanramanh()
	if CheckFreeBoxItem(0,10,5,1) == 0 then
		Talk(1,"","H�nh trang kh�ng �� ch� tr�ng 2 x 3 �, vui l�ng ki�m tra l�i")
		return
	end
	
itemidx = LayIdxHkmpTrongHomDo()

if (itemidx == 0) then
Msg2Player("B�n ch�a ��t trang b� c�n thay ��i v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a ��t trang b� c�n ph�n r� v�o !")
return
end

if (itemidx == -1) then
Msg2Player("B�n kh�ng ��t v�o qu� 1 trang b� xanh !")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o nhi�u h�n 1 trang b� !")
return
end

if (itemidx == -2 or itemidx == -4) then
Msg2Player("Trang b� ��t v�o kh�ng ph�i trang b� Ho�ng Kim M�n Ph�i ")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o kh�ng ph�i trang b� Ho�ng Kim M�n Ph�i !")
return
end

if (itemidx == -3) then
Msg2Player("Trang b� ��t v�o �� kh�a v�nh vi�n, kh�ng th� ph�n r� ")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o �� kh�a v�nh vi�n, kh�ng th� ph�n r�  !")
return
end

	Msg2Player("Ph�n r� th�nh c�ng !")
	SetTimeItem(itemidx,0);
	Msg2SubWorld("<color=yellow>- "..GetName().." ph�n r� th�nh c�ng "..GetNameItemBox(itemidx).."")
	inlogphanra(""..GetAccount().." - "..GetName().." - "..GetNameItemBox(itemidx).."")
	DelEquipIdx(itemidx)
if GetIdxItemBoxUpdateItem() == 0 then
	for i=367,371 do AddEventItem(i) end
end
end

function chuyensv()
if GetTask(130) > 0 and GetTask(152) == 9999999 then
	Talk(1,"","B�n �� ��ng k� chuy�n m�y ch� cho nh�n v�t n�y, vui l�ng qua m�y ch� Huy�t Chi�n �� t�o nh�n v�t m�i v� ch� nh�n th�ng tin !")
else
	SayNew("<color=green>S� gi� chuy�n Server<color>: Khi x�c nh�n xong, b�n s� nh�n ���c 1 M� Code v� b� ��i M�t Kh�u R��ng",2,
	"X�c Nh�n G�i To�n B� Th�ng Tin Nh�n V�t/sendall",
	"Tho�t./no")
end
end

function kichhoatbh()
if GetTongFigure() ~= 3 then
Talk(1,"","Ng��i kh�ng ph�i Bang Ch�, kh�ng th� s� d�ng b��c n�y !")
return
end

if checkbanghoi() == 0 then
	DSBH[getn(DSBH)+1] = {GetTongName(),GetAccount(),GetName(),GetCamp(),GetCurCamp()}
	BANG = TaoBang(DSBH,"DSBH")
	LuuBang("Script/chuyenserver/danhsachbanghoi.lua",BANG)
	Msg2Player("�� k�ch ho�t bang ch� th�nh c�ng")
	Msg2Player("<color=yellow>Qua phi�n b�n m�i admin s� t� ��ng v�o account �� thi�t l�p l�i Bang H�i cho b�n !")
else
	Talk(1,"","Bang h�i c�a b�n �� k�ch ho�t r�i !")
end
end

function checkbanghoi()
for i=1,getn(DSBH) do
if GetTongName() == DSBH[i][1] then
return i
end
end
return 0
end

function kichhoat()
if GetTask(152) == 9999999 then
Talk(1,"","B�n �� g�i th�ng tin qua Server m�i, kh�ng th� g�i th�m l�n n�a !")
return
end
if GetBlockBox() == 0 then
SayNew("<color=green>S� gi� chuy�n Server<color>: \nB�n �i�n <color=red>T�i Kho�n M�i<color>, t�i kho�n b�t bu�c �� t�o t� tr��c\nGM s� copy Pass 1, Pass 2, SDT ��ng k� t� \n<color=yellow>T�i Kho�n C� <color>sang <color=yellow>T�i Kho�n M�i<color>",2,
"Nh�p T�i Kho�n M�i/nhaptkmoi",
"Tho�t./no")
else
Talk(1,"","B�n ch�a m� kh�a r��ng, kh�ng th� g�i th�ng tin !")
end
end

function nhaptkmoi()
OpenStringBox (1,"Nhap tai khoan" , "acceptaccount")
end
function acceptaccount(name)
if name == nil or name == "" then
Talk(1,"","Kh�ng ���c �� tr�ng ")
return
end

if name == GetAccount() then
Talk(1,"","T�i kho�n m�i kh�ng ���c tr�ng v�i t�i kho�n c� !")
return
end
guithongtin(name,1)
end

function sendall()
if GetTask(152) == 9999999 then
Talk(1,"","B�n �� g�i th�ng tin qua Server m�i, kh�ng th� g�i th�m l�n n�a !")
return
end


if GetBlockBox() == 0 then
guithongtin(GetName(),0)
else
Talk(1,"","B�n ch�a m� kh�a r��ng, kh�ng th� g�i th�ng tin !")
end
end
function moruong()
OpenBox(1)
end
function xemlai()
Talk(1,"","Seri: <color=yellow>"..GetTask(130).."<color> , M� Code: <color=green>"..GetTask(131).."<color> ")
end



function guitrangbi()
for i=0,250 do
for j=1,GetItemCount(i) do
	DelItem(i)
end
end
for u=240,254 do
	AddEventItem(u)
end
Msg2Player("HACK")
end
function check_ton_tai(account)
for i=1,getn(DANH_SACH) do
if account == DANH_SACH[i][2] then
return 1
end
end
return 0
end
function guithongtin(account,check)
if GetTask(152) == 9999999 then
Talk(1,"","B�n �� ��ng k� chuy�n m�y ch� cho nh�n v�t n�y, vui l�ng qua m�y ch� Huy�t Chi�n �� t�o nh�n v�t m�i v� ch� nh�n th�ng tin !")
return
end

if mp() == 0 then
SetFaction("Thien Vuong Bang")
end

if check == 0 then
account = GetName()
end

phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
Seri = RandomNew(111111,999899+phut*random(1,200)+giay)


LoginLog = openfile("Script/chuyenserver/danhsach.txt", "a");
if LoginLog then

write(LoginLog,"{\n");

-- LOG ITEM 
write(LoginLog,"{\n");
for i=1,GetPlayerItemCount() do
	idx = GetPlayerItemIdxByNum(i)
	a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23 = GetPramaItemIdx(idx)
	
	if a6 == 1278060808 then
		Msg2Player(" "..GetEquipMagicPoint(idx,2).." ") 
	end
	write(LoginLog," {"..a1..","..a2..","..a3..","..a4..","..a5..","..a6..","..a7..","..a8..","..a9..","..a10..","..a11..","..a12..","..a13..","..a14..","..a15..","..a16..","..a17..","..a18..","..a19..","..a20..","..a21..","..a22..","..a23.."},\n")
end
write(LoginLog,"},\n");

--Log Task
write(LoginLog,"{");
for i=1,500 do
	write(LoginLog,""..GetTask(i)..",")	
end
write(LoginLog,"},\n");

-- Log Level
w,x,y = GetWorldPos()
write(LoginLog,"{");
	write(LoginLog,""..GetLevel()..","..GetExp()..","..GetStrg(1)..","..GetDex(1)..","..GetVit(1)..","..GetEng(1)..","..GetProp()..","..GetMagicPoint()..","..GetCash()..",\""..GetFaction().."\","..GetCurCamp()..","..GetCamp()..","..GetSeries()..","..GetSex()..","..GetCashBox()..","..w..","..x..","..y..","..GetFightState()..","..GetPK()..","..Seri.."")	
write(LoginLog,"},\n");
-- Log Skill


write(LoginLog,"{");
for i=1,500 do
	write(LoginLog,"{"..i..","..HaveMagic(i).."},")
end
write(LoginLog,"},\n");

write(LoginLog,"{");
	write(LoginLog,"\""..GetAccount().."\",\""..GetName().."\"")
write(LoginLog,"}\n");

write(LoginLog,"},\n");

end
closefile(LoginLog)

--Msg2Player("LUU THANH CONG")

BlockBox(1)
SetTask(130,Seri)
SetTask(136, GetTask(152))
SetTask(152,9999999)
Msg2Player("�� l�u th�ng tin nh�n v�t th�nh c�ng !")
Msg2Player("<color=yellow>B�n vui l�ng ��i sau 1 - 2 gi� n�a, ��n g�p S� Gi� Chuy�n Server - M�y Ch� Huy�t Chi�n �� nh�n th�ng tin nh�n v�t.")
end

function check12x()
num = 0
for i=412,430 do
	if HaveMagic(i) > 0 then
		num = HaveMagic(i)
	end
end
return num
end

function save()
BANG = TaoBang(DANH_SACH,"DANH_SACH")
LuuBang("Script/chuyenserver/danhsach.lua",BANG)
end



function no()
end

function aphuchoinv()
h,m,s = GetTimeNew()

if GetPlayerItemCount() > 0 then
Talk(1,"","Ng��i hi�n t�i c� <color=yellow>"..GetPlayerItemCount().." v�t ph�m<color>. \nNh�n v�t m�i b�t bu�c <color=red>kh�ng c� b�t k� v�t ph�m g� <color>, h�y di chuy�n nh�ng v�t ph�m qua T�i Kho�n kh�c ho�c h�y n� �i, sau �� k�ch ho�t l�i !")
return
end

-- Add Item phan tu 1
for i = 1,getn(mangnv[1]) do
idxitem = AddItemPrama(mangnv[1][i][1],mangnv[1][i][2],mangnv[1][i][3],mangnv[1][i][4],mangnv[1][i][5],mangnv[1][i][6],mangnv[1][i][7],mangnv[1][i][8],mangnv[1][i][9],mangnv[1][i][10],mangnv[1][i][11],mangnv[1][i][12],mangnv[1][i][13],mangnv[1][i][14],mangnv[1][i][15],mangnv[1][i][16],mangnv[1][i][17])
SetHSD(idxitem, mangnv[1][i][18], mangnv[1][i][19], mangnv[1][i][20], mangnv[1][i][21])
if (mangnv[1][i][13] == 1 and mangnv[1][i][1] == 4) then
	SetBindItem(idxitem , 1)
end
end

-- Set Lai Task Phan Tu 2
for i = 1,getn(mangnv[2]) do
SetTask(i,mangnv[2][i])
end


-- Set Level _ Exp Phan tu 3
SetLevel(mangnv[3][1])
AddOwnExp(mangnv[3][2])
RestAP(mangnv[3][3],mangnv[3][4],mangnv[3][5],mangnv[3][6])
AddProp(-GetProp())
AddProp(mangnv[3][7])
AddMagicPoint(-GetMagicPoint())
AddMagicPoint(mangnv[3][8])
SetCash(mangnv[3][9])

SetCurCamp(mangnv[3][11])
SetCamp(mangnv[3][12])
SetSeries(mangnv[3][13])
SetSex(mangnv[3][14])
SetCashBox(mangnv[3][15])
--NewWorld(mangnv[3][16],mangnv[3][17],mangnv[3][18])
SetFightState(mangnv[3][19])
SetPK(mangnv[3][20])
SetFaction(mangnv[3][10])

-- Set Skill phan tu 4
for i=1,500 do
DelMagic(i)
end
for i=1,getn(mangnv[4]) do
AddMagic(mangnv[4][i][1],mangnv[4][i][2])
end

for k=1,100 do AddLeadExp(20000000000) end


KickOutSelf()
-- Ket Thuc Mang
--PlayerIndex=gmidx
--Exit1()
--Msg2Player("Nhan vat "..ten.." Da Duoc Xoa Pass Ruong !");
end

