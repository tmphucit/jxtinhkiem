Include("\\script\\lib\\thuvien.lua")Include("\\script\\Global\\sourcejx49.lua")

DANH_SACH_BANG_HOI={}

DSTT = {}

TONG_LEVEL_EXP = {{1,80,40,5,1000},{2,80,40,5,2000},{3,80,40,5,4000},{4,80,40,5,8000},{5,80,40,5,16000}}

Include("\\DataScript\\banghoi\\danhsachbanghoi.lua")

Include("\\DataScript\\banghoi\\danhsachthanhthi.lua")

NGOAI_HIEU_BANG_CHU_MAC_DINH = "BangCh�"
NGOAI_HIEU_TRUONG_LAO_MAC_DINH = "Tr��ngL�o"
NGOAI_HIEU_DUONG_CHU_MAC_DINH = "���ngCh�"
NGOAI_HIEU_NAM_MAC_DINH = "NamNh�n"
NGOAI_HIEU_NU_MAC_DINH = "N�Nh�n"



function save()

BANGI = ""
BANG = "DANH_SACH_BANG_HOI = {}\n"

for i=1,getn(DANH_SACH_BANG_HOI) do
BANGI = TaoBang(DANH_SACH_BANG_HOI[i],"DANH_SACH_BANG_HOI["..i.."]")
LuuBang("datascript/banghoi/danhsachbanghoi"..i..".lua",BANGI)
BANG = BANG..'Include("/DataScript/banghoi/danhsachbanghoi'..i..'.lua")\n'
end

LuuBang("datascript/banghoi/danhsachbanghoi.lua",BANG)

BANG2 = TaoBang(DSTT,"DSTT")
LuuBang("datascript/banghoi/danhsachthanhthi.lua",BANG2)

--LuuBang("Data/logbanghoi.txt","")

BANGMAP = TaoBang(MAP_BANG_HOI,"MAP_BANG_HOI")
LuuBang("datascript/banghoi/mapbanghoi.lua",BANGMAP)
end


function savetimer()

BANGI = ""
BANG = "DANH_SACH_BANG_HOI = {}\n"

for i=1,getn(DANH_SACH_BANG_HOI) do
BANGI = TaoBang(DANH_SACH_BANG_HOI[i],"DANH_SACH_BANG_HOI["..i.."]")
LuuBang("datascript/banghoi/danhsachbanghoi"..i..".lua",BANGI)
BANG = BANG..'Include("/DataScript/banghoi/danhsachbanghoi'..i..'.lua")\n'
end

LuuBang("datascript/banghoi/danhsachbanghoi.lua",BANG)

BANG2 = TaoBang(DSTT,"DSTT")
LuuBang("datascript/banghoi/danhsachthanhthi.lua",BANG2)

--LuuBang("Data/logbanghoi.txt","")
BANGMAP = TaoBang(MAP_BANG_HOI,"MAP_BANG_HOI")
LuuBang("datascript/banghoi/mapbanghoi.lua",BANGMAP)
end




function CreadTongMain(camp,dwname,name)

if (camp < 1 or camp > 3) then
Msg2Player("Ch� c� th� ch�n phe Ch�nh, Trung, T� !")
return
end

if GetItemCount(164) == 0 then
Msg2Player("B�n kh�ng mang theo Nh�c V��ng Ki�m !")
return
end

if GetCash() < 10000000 then
Msg2Player("B�n kh�ng mang �� 1000 v�n l��ng !")
return
end

if GetTask(100) < 450 then
Msg2Player("B�n kh�ng �� 450 �i�m danh v�ng !")
return
end

if GetLevel() < 100 then
Msg2Player("��ng c�p 100 m�i c� th� t�o l�p bang h�i !")
return
end



if (dwname == 0 or strlen(name) < 6 or strlen(name) > 12) then
Msg2Player("T�n bang ph�i t� 6 ��n 12 k� t�!")
return
end

for i=1,getn(DANH_SACH_BANG_HOI) do
if (name == DANH_SACH_BANG_HOI[i][1][1] and DANH_SACH_BANG_HOI[i][1][2] ~= 0) then
Msg2Player("T�n bang h�i �� t�n t�i !")
return
end
end


for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][2] == 0) then


DANH_SACH_BANG_HOI[i] = {
{name,dwname,camp,NGOAI_HIEU_NAM_MAC_DINH,NGOAI_HIEU_NU_MAC_DINH,1,0,0},
{GetName(),NGOAI_HIEU_BANG_CHU_MAC_DINH,GetSex(),0},
{{"Truong Lao","Ngoai hieu",GetSex(),0}},
{{"Duong Chu","Ngoai hieu",GetSex(),0}},
{{"Mon de nam",0}},
{{"Mon de nu",0}}
}

DelItem(164)
CreadTong(camp,name,NGOAI_HIEU_BANG_CHU_MAC_DINH)

Msg2Player("T�o bang h�i th�nh c�ng!")
save()
return

end
end

DANH_SACH_BANG_HOI[getn(DANH_SACH_BANG_HOI)+1] = {
{name,dwname,camp,NGOAI_HIEU_NAM_MAC_DINH,NGOAI_HIEU_NU_MAC_DINH,1,0,0},
{GetName(),NGOAI_HIEU_BANG_CHU_MAC_DINH,GetSex(),0},
{{"Truong Lao","Ngoai hieu",GetSex(),0}},
{{"Duong Chu","Ngoai hieu",GetSex(),0}},
{{"Mon de nam",0}},
{{"Mon de nu",0}}
}

DelItem(164)
Pay(10000000)

CreadTong(camp,name,NGOAI_HIEU_BANG_CHU_MAC_DINH)

Msg2Player("T�o bang h�i th�nh c�ng!")

end;






function LoadLoginTongMain(dwname)


if (dwname == 0) then
return
end

for i=1,getn(DANH_SACH_BANG_HOI) do
if (dwname == DANH_SACH_BANG_HOI[i][1][2]) then


if (GetName() == DANH_SACH_BANG_HOI[i][2][1] and DANH_SACH_BANG_HOI[i][2][1] ~= "") then
LoginTong(3,DANH_SACH_BANG_HOI[i][1][3],GetName(),DANH_SACH_BANG_HOI[i][2][2],DANH_SACH_BANG_HOI[i][1][1],DANH_SACH_BANG_HOI[i][2][1])
return
end

for j=2,getn(DANH_SACH_BANG_HOI[i][3]) do
if (GetName() == DANH_SACH_BANG_HOI[i][3][j][1] and DANH_SACH_BANG_HOI[i][3][j][1] ~= "") then
LoginTong(2,DANH_SACH_BANG_HOI[i][1][3],GetName(),DANH_SACH_BANG_HOI[i][3][j][2],DANH_SACH_BANG_HOI[i][1][1],DANH_SACH_BANG_HOI[i][2][1])
return
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (GetName() == DANH_SACH_BANG_HOI[i][4][j][1] and DANH_SACH_BANG_HOI[i][4][j][1] ~= "") then
LoginTong(1,DANH_SACH_BANG_HOI[i][1][3],GetName(),DANH_SACH_BANG_HOI[i][4][j][2],DANH_SACH_BANG_HOI[i][1][1],DANH_SACH_BANG_HOI[i][2][1])
return
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][5]) do
if (GetName() == DANH_SACH_BANG_HOI[i][5][j][1] and DANH_SACH_BANG_HOI[i][5][j][1] ~= "") then
LoginTong(0,DANH_SACH_BANG_HOI[i][1][3],GetName(),DANH_SACH_BANG_HOI[i][1][4],DANH_SACH_BANG_HOI[i][1][1],DANH_SACH_BANG_HOI[i][2][1])
return
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (GetName() == DANH_SACH_BANG_HOI[i][6][j][1] and DANH_SACH_BANG_HOI[i][6][j][1] ~= "") then
LoginTong(0,DANH_SACH_BANG_HOI[i][1][3],GetName(),DANH_SACH_BANG_HOI[i][1][5],DANH_SACH_BANG_HOI[i][1][1],DANH_SACH_BANG_HOI[i][2][1])
return
end
end


end
end


DeleteTong()

end;



function LoadInfoTongMain(nInfoID,nSlectPlayer,dwname)
MemberTong = ""NumberMember = 0NumberDirector = 0NumberManager = 0if (dwname == 0) thenreturnendif (nInfoID == 6) thenfor i=1,getn(DANH_SACH_BANG_HOI) doif (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) thenMemberTong = MemberTong..DANH_SACH_BANG_HOI[i][2][1].." "..DANH_SACH_BANG_HOI[i][2][2].." "for j=2,getn(DANH_SACH_BANG_HOI[i][3]) do
if (DANH_SACH_BANG_HOI[i][3][j][1] ~= "") thenMemberTong = MemberTong..DANH_SACH_BANG_HOI[i][3][j][1].." "..DANH_SACH_BANG_HOI[i][3][j][2].." "NumberDirector = NumberDirector + 1
endendfor j=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][j][1] ~= "") thenNumberManager = NumberManager + 1
endendfor j=2,getn(DANH_SACH_BANG_HOI[i][5]) do
if (DANH_SACH_BANG_HOI[i][5][j][1] ~= "") thenNumberMember = NumberMember + 1
endendfor j=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][j][1] ~= "") thenNumberMember = NumberMember + 1
endendSendTongInfo(1,nSlectPlayer,NumberDirector,NumberManager,NumberMember,DANH_SACH_BANG_HOI[i][1][1],DANH_SACH_BANG_HOI[i][1][3],DANH_SACH_BANG_HOI[i][1][6],DANH_SACH_BANG_HOI[i][1][7],MemberTong)returnendendelseif (nInfoID == 3) thenfor i=1,getn(DANH_SACH_BANG_HOI) doif (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) thenfor j=2,getn(DANH_SACH_BANG_HOI[i][3]) do
if (DANH_SACH_BANG_HOI[i][3][j][1] ~= "") thenNumberDirector = NumberDirector + 1
endendfor j=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][j][1] ~= "") thenMemberTong = MemberTong..DANH_SACH_BANG_HOI[i][4][j][1].." "..DANH_SACH_BANG_HOI[i][4][j][2].." "NumberManager = NumberManager + 1
endendfor j=2,getn(DANH_SACH_BANG_HOI[i][5]) do
if (DANH_SACH_BANG_HOI[i][5][j][1] ~= "") thenNumberMember = NumberMember + 1
endendfor j=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][j][1] ~= "") thenNumberMember = NumberMember + 1
endendSendTongInfo(2,nSlectPlayer,NumberDirector,NumberManager,NumberMember,DANH_SACH_BANG_HOI[i][1][1],DANH_SACH_BANG_HOI[i][1][3],DANH_SACH_BANG_HOI[i][1][6],DANH_SACH_BANG_HOI[i][1][7],MemberTong)returnendendelseif (nInfoID == 4) thenfor i=1,getn(DANH_SACH_BANG_HOI) doif (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) thenfor j=2,getn(DANH_SACH_BANG_HOI[i][3]) do
if (DANH_SACH_BANG_HOI[i][3][j][1] ~= "") thenNumberDirector = NumberDirector + 1
endendfor j=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][j][1] ~= "") thenNumberManager = NumberManager + 1
endendfor j=2,getn(DANH_SACH_BANG_HOI[i][5]) do
if (DANH_SACH_BANG_HOI[i][5][j][1] ~= "") thenMemberTong = MemberTong..DANH_SACH_BANG_HOI[i][5][j][1].." "..DANH_SACH_BANG_HOI[i][1][4].." "NumberMember = NumberMember + 1
endendfor j=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][j][1] ~= "") thenMemberTong = MemberTong..DANH_SACH_BANG_HOI[i][6][j][1].." "..DANH_SACH_BANG_HOI[i][1][5].." "NumberMember = NumberMember + 1
endendSendTongInfo(3,nSlectPlayer,NumberDirector,NumberManager,NumberMember,DANH_SACH_BANG_HOI[i][1][1],DANH_SACH_BANG_HOI[i][1][3],DANH_SACH_BANG_HOI[i][1][6],DANH_SACH_BANG_HOI[i][1][7],MemberTong)returnendendend 


end;




function AddMemberTongMain(dwname,name,sex)
if GetLevel() < 90 then
Talk(1,"","��ng c�p 90 m�i c� th� gia nh�p Bang H�i !")
return
end

--if GetTask(100) < 200 then
--Talk(1,"","Danh v�ng c�a b�n kh�ng �� 200, kh�ng th� gia nh�p Bang H�i !")
--return
--end

if (GetName() ~= name or GetSex() ~= sex or dwname == 0) thenreturnendfor i=1,getn(DANH_SACH_BANG_HOI) doif (dwname == DANH_SACH_BANG_HOI[i][1][2]) then
save()
NumberMember = 0

for j=2,getn(DANH_SACH_BANG_HOI[i][5]) do
if (DANH_SACH_BANG_HOI[i][5][j][1] ~= "") then
NumberMember = NumberMember + 1
save()
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][j][1] ~= "") then
NumberMember = NumberMember + 1
save()
end
end

if (NumberMember >= TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][2]) then
Msg2Player("S� l��ng m�n �� ��t m�c gi�i h�n "..TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][2].." ng��i, kh�ng th� nh�n th�m !")
save()
return
end

for j=2,getn(DANH_SACH_BANG_HOI[i][5+sex]) do
if (DANH_SACH_BANG_HOI[i][5+sex][j][1] == "") then
DANH_SACH_BANG_HOI[i][5+sex][j] = {name,0}
MemberAddTong(DANH_SACH_BANG_HOI[i][1][3],DANH_SACH_BANG_HOI[i][1][4+sex],DANH_SACH_BANG_HOI[i][1][1],DANH_SACH_BANG_HOI[i][2][1])
save()

ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
SetTask(8,thang*1000+ngay)
Msg2Player("B�n �� gia nh�p bang h�i. Sau 7 ng�y b�n m�i c� th� tham gia C�ng Th�nh Chi�n !")
Msg2Tong("<color=yellow>Ch�o m�ng th�nh vi�n m�i "..GetName().." v�a gia nh�p bang h�i !")

return
end
end
DANH_SACH_BANG_HOI[i][5+sex][1+getn(DANH_SACH_BANG_HOI[i][5+sex])] = {name,0}
MemberAddTong(DANH_SACH_BANG_HOI[i][1][3],DANH_SACH_BANG_HOI[i][1][4+sex],DANH_SACH_BANG_HOI[i][1][1],DANH_SACH_BANG_HOI[i][2][1])

ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
SetTask(8,thang*1000+ngay)
Msg2Player("B�n �� gia nh�p bang h�i. Sau 7 ng�y b�n m�i c� th� tham gia C�ng Th�nh Chi�n !")
Msg2Tong("<color=yellow>Ch�o m�ng th�nh vi�n m�i "..GetName().." v�a gia nh�p bang h�i !")

return
end
end
end;


function InstatePowerTongMain(dwname,name,cFigure,nFigure)

if (dwname == 0) then
return
end

for i=1,getn(DANH_SACH_BANG_HOI) doif (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) thenif (cFigure == 0) thenfor j=2,getn(DANH_SACH_BANG_HOI[i][5]) doif (DANH_SACH_BANG_HOI[i][5][j][1] ~= "" and DANH_SACH_BANG_HOI[i][5][j][1] == name) thenif (nFigure == 1) then

NumberMember = 0

for k=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][k][1] ~= "") then
NumberMember = NumberMember + 1
end
end

if (NumberMember >= TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][3]) then
Msg2Player("So luong duong chu da dat muc gioi han "..TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][3].." nguoi, khong the them !")
return
end




for k=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][k][1] == "" ) then
DANH_SACH_BANG_HOI[i][4][k] = {name,NGOAI_HIEU_DUONG_CHU_MAC_DINH,0,DANH_SACH_BANG_HOI[i][5][j][2]}DANH_SACH_BANG_HOI[i][5][j][1] = ""
UpdateTong(dwname,name)
save()
Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: ���ng Ch� !")
return

end
end
DANH_SACH_BANG_HOI[i][4][1+getn(DANH_SACH_BANG_HOI[i][4])] = {name,NGOAI_HIEU_DUONG_CHU_MAC_DINH,0,DANH_SACH_BANG_HOI[i][5][j][2]}
DANH_SACH_BANG_HOI[i][5][j][1] = ""
UpdateTong(dwname,name)
 save()returnelseif (nFigure == 2) then

NumberMember = 0

for k=2,getn(DANH_SACH_BANG_HOI[i][3]) do
if (DANH_SACH_BANG_HOI[i][3][k][1] ~= "") then
NumberMember = NumberMember + 1
end
end

if (NumberMember >= TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][4]) then
Msg2Player("So luong truong lao da dat muc gioi han "..TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][4].." nguoi, khong the them !")
return
end


for k=2,getn(DANH_SACH_BANG_HOI[i][3]) do
if (DANH_SACH_BANG_HOI[i][3][k][1] == "" ) then

DANH_SACH_BANG_HOI[i][3][k] = {name,NGOAI_HIEU_TRUONG_LAO_MAC_DINH,0,DANH_SACH_BANG_HOI[i][5][j][2]}
Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: Tr��ng L�o !")
DANH_SACH_BANG_HOI[i][5][j][1] = ""
UpdateTong(dwname,name) 
save()

return

end
end
DANH_SACH_BANG_HOI[i][3][1+getn(DANH_SACH_BANG_HOI[i][3])] = {name,NGOAI_HIEU_TRUONG_LAO_MAC_DINH,0,DANH_SACH_BANG_HOI[i][5][j][2]}DANH_SACH_BANG_HOI[i][5][j][1] = ""UpdateTong(dwname,name) 
save()returnendendendfor j=2,getn(DANH_SACH_BANG_HOI[i][6]) doif (DANH_SACH_BANG_HOI[i][6][j][1] ~= "" and DANH_SACH_BANG_HOI[i][6][j][1] == name) thenif (nFigure == 1) then
Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: Tr��ng L�o!")
NumberMember = 0

for k=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][k][1] ~= "") then
NumberMember = NumberMember + 1
end
end

if (NumberMember >= TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][3]) then
Msg2Player("So luong truong lao da dat muc gioi han "..TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][3].." nguoi, khong the them !")
return
end



for k=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][k][1] == "" ) then
DANH_SACH_BANG_HOI[i][4][k] = {name,NGOAI_HIEU_DUONG_CHU_MAC_DINH,1,DANH_SACH_BANG_HOI[i][6][j][2]}
Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: ���ng Ch� !")
DANH_SACH_BANG_HOI[i][6][j][1] = ""
UpdateTong(dwname,name)
save()
return
end
end
DANH_SACH_BANG_HOI[i][4][1+getn(DANH_SACH_BANG_HOI[i][4])] = {name,NGOAI_HIEU_DUONG_CHU_MAC_DINH,1,DANH_SACH_BANG_HOI[i][6][j][2]}DANH_SACH_BANG_HOI[i][6][j][1] = ""
Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: ���ng Ch� !")
UpdateTong(dwname,name)
save()return
elseif (nFigure == 2) then


NumberMember = 0

for k=2,getn(DANH_SACH_BANG_HOI[i][3]) do
if (DANH_SACH_BANG_HOI[i][3][k][1] ~= "") then
NumberMember = NumberMember + 1
end
end

if (NumberMember >= TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][4]) then
Msg2Player("So luong truong lao da dat muc gioi han "..TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][4].." nguoi, khong the them !")
return
end


for k=2,getn(DANH_SACH_BANG_HOI[i][3]) do
if (DANH_SACH_BANG_HOI[i][3][k][1] == "" ) then
DANH_SACH_BANG_HOI[i][3][k] = {name,NGOAI_HIEU_TRUONG_LAO_MAC_DINH,1,DANH_SACH_BANG_HOI[i][6][j][2]}
DANH_SACH_BANG_HOI[i][6][j][1] = ""
Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: Tr��ng L�o !")
UpdateTong(dwname,name)
save()
return
end
end
DANH_SACH_BANG_HOI[i][3][1+getn(DANH_SACH_BANG_HOI[i][3])] = {name,NGOAI_HIEU_TRUONG_LAO_MAC_DINH,1,DANH_SACH_BANG_HOI[i][6][j][2]}DANH_SACH_BANG_HOI[i][6][j][1] = ""
Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: ���ng Ch� !")
UpdateTong(dwname,name)
save()return
endendendelseif (cFigure == 1) thenfor j=2,getn(DANH_SACH_BANG_HOI[i][4]) doif (DANH_SACH_BANG_HOI[i][4][j][1] ~= "" and DANH_SACH_BANG_HOI[i][4][j][1] == name) thenif (nFigure == 0) then
NumberMember = 0

for k=2,getn(DANH_SACH_BANG_HOI[i][5]) do
if (DANH_SACH_BANG_HOI[i][5][k][1] ~= "") then
NumberMember = NumberMember + 1
end
end

for k=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][k][1] ~= "") then
NumberMember = NumberMember + 1
end
end

if (NumberMember >= TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][2]) then
Msg2Player("So luong mon de da dat muc gioi han "..TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][2].." nguoi, khong the them !")
return
end

if (DANH_SACH_BANG_HOI[i][4][j][3] == 0) then

for k=2,getn(DANH_SACH_BANG_HOI[i][5]) do
if (DANH_SACH_BANG_HOI[i][5][k][1] == "" ) thenDANH_SACH_BANG_HOI[i][5][k] = {name,DANH_SACH_BANG_HOI[i][4][j][4]}
DANH_SACH_BANG_HOI[i][4][j][1] = ""
Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: M�n �� !")
UpdateTong(dwname,name)
save()
return
end
end

DANH_SACH_BANG_HOI[i][5][1+getn(DANH_SACH_BANG_HOI[i][5])] = {name,DANH_SACH_BANG_HOI[i][4][j][4]}
DANH_SACH_BANG_HOI[i][4][j][1] = ""
Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: M�n ��!")
UpdateTong(dwname,name)
save()
return
else

for k=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][k][1] == "" ) then
DANH_SACH_BANG_HOI[i][6][k] = {name,DANH_SACH_BANG_HOI[i][4][j][4]}
DANH_SACH_BANG_HOI[i][4][j][1] = ""
Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: M�n ��!")
UpdateTong(dwname,name)
save()
return
end
end
DANH_SACH_BANG_HOI[i][6][1+getn(DANH_SACH_BANG_HOI[i][6])] = {name,DANH_SACH_BANG_HOI[i][4][j][4]}
DANH_SACH_BANG_HOI[i][4][j][1] = ""
Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: M�n ��!")
UpdateTong(dwname,name)
save()
returnendelseif (nFigure == 2) then
NumberMember = 0

for k=2,getn(DANH_SACH_BANG_HOI[i][3]) do
if (DANH_SACH_BANG_HOI[i][3][k][1] ~= "") then
NumberMember = NumberMember + 1
end
end

if (NumberMember >= TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][4]) then
Msg2Player("So luong truong lao da dat muc gioi han "..TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][4].." nguoi, khong the them !")
return
end


for k=2,getn(DANH_SACH_BANG_HOI[i][3]) do
if (DANH_SACH_BANG_HOI[i][3][k][1] == "" ) then
DANH_SACH_BANG_HOI[i][3][k] = {name,NGOAI_HIEU_TRUONG_LAO_MAC_DINH,DANH_SACH_BANG_HOI[i][4][j][3],DANH_SACH_BANG_HOI[i][4][j][4]}
DANH_SACH_BANG_HOI[i][4][j][1] = ""
Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: Tr��ng L�o!")
UpdateTong(dwname,name)
save()
return
end
end
DANH_SACH_BANG_HOI[i][3][1+getn(DANH_SACH_BANG_HOI[i][3])] = {name,NGOAI_HIEU_TRUONG_LAO_MAC_DINH,DANH_SACH_BANG_HOI[i][4][j][3],DANH_SACH_BANG_HOI[i][4][j][4]}DANH_SACH_BANG_HOI[i][4][j][1] = ""
UpdateTong(dwname,name)
save()return
endendendelseif (cFigure == 2) thenfor j=2,getn(DANH_SACH_BANG_HOI[i][3]) doif (DANH_SACH_BANG_HOI[i][3][j][1] ~= "" and DANH_SACH_BANG_HOI[i][3][j][1] == name) thenif (nFigure == 0) then

NumberMember = 0

for k=2,getn(DANH_SACH_BANG_HOI[i][5]) do
if (DANH_SACH_BANG_HOI[i][5][k][1] ~= "") then
NumberMember = NumberMember + 1
end
end

for k=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][k][1] ~= "") then
NumberMember = NumberMember + 1
end
end

if (NumberMember >= TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][2]) then
Msg2Player("So luong mon de da dat muc gioi han "..TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][2].." nguoi, khong the them !")
return
end


if (DANH_SACH_BANG_HOI[i][3][j][3] == 0) then

for k=2,getn(DANH_SACH_BANG_HOI[i][5]) do
if (DANH_SACH_BANG_HOI[i][5][k][1] == "" ) then
DANH_SACH_BANG_HOI[i][5][k] = {name,DANH_SACH_BANG_HOI[i][3][j][4]}
DANH_SACH_BANG_HOI[i][3][j][1] = ""
Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: M�n ��!")
UpdateTong(dwname,name)
save()
return
end
end

DANH_SACH_BANG_HOI[i][5][1+getn(DANH_SACH_BANG_HOI[i][5])] = {name,DANH_SACH_BANG_HOI[i][3][j][4]}
DANH_SACH_BANG_HOI[i][3][j][1] = ""
Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: M�n ��!")
UpdateTong(dwname,name)
save()
return

else

for k=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][k][1] == "" ) then
DANH_SACH_BANG_HOI[i][6][k] = {name,DANH_SACH_BANG_HOI[i][3][j][4]}
DANH_SACH_BANG_HOI[i][3][j][1] = ""
Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: M�n ��!")
UpdateTong(dwname,name)
save()
return
end
end
DANH_SACH_BANG_HOI[i][6][1+getn(DANH_SACH_BANG_HOI[i][6])] = {name,DANH_SACH_BANG_HOI[i][3][j][4]}
DANH_SACH_BANG_HOI[i][3][j][1] = ""
Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: M�n ��!")
UpdateTong(dwname,name)
save()
return

end
elseif (nFigure == 1) then


NumberMember = 0

for k=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][k][1] ~= "") then
NumberMember = NumberMember + 1
end
end

if (NumberMember >= TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][3]) then
Msg2Player("So luong truong lao da dat muc gioi han "..TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][3].." nguoi, khong the them !")
return
end
for k=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][k][1] == "" ) then
DANH_SACH_BANG_HOI[i][4][k] = {name,NGOAI_HIEU_DUONG_CHU_MAC_DINH,DANH_SACH_BANG_HOI[i][3][j][3],DANH_SACH_BANG_HOI[i][3][j][4]}
DANH_SACH_BANG_HOI[i][3][j][1] = ""
Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: ���ng Ch� !")
UpdateTong(dwname,name)
save()
return
end
endDANH_SACH_BANG_HOI[i][4][1+getn(DANH_SACH_BANG_HOI[i][4])] = {name,NGOAI_HIEU_DUONG_CHU_MAC_DINH,DANH_SACH_BANG_HOI[i][3][j][3],DANH_SACH_BANG_HOI[i][3][j][4]}
DANH_SACH_BANG_HOI[i][3][j][1] = ""

Msg2Tong("<color=yellow>"..name.." �� ���c thay ��i danh hi�u: ���ng Ch� !")
UpdateTong(dwname,name)
save()returnendendendendendendend;function ChangeTitleFeMaleTongMain(dwname,title)for i=1,getn(DANH_SACH_BANG_HOI) doif (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) thenDANH_SACH_BANG_HOI[i][1][5] = titleChangeTitleFeMaleTong(dwname)
save() returnendendend;function ChangeTitleMaleTongMain(dwname,title)for i=1,getn(DANH_SACH_BANG_HOI) doif (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) thenDANH_SACH_BANG_HOI[i][1][4] = titleChangeTitleMaleTong(dwname)
save() returnendendend;function ChangeTitleTongMain(dwname,name,title)for i=1,getn(DANH_SACH_BANG_HOI) doif (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) thenif (DANH_SACH_BANG_HOI[i][2][1] ~= "" and name == DANH_SACH_BANG_HOI[i][2][1]) thenDANH_SACH_BANG_HOI[i][2][2] = titleChangeTitleTong(dwname,name)
save() returnendfor j=2,getn(DANH_SACH_BANG_HOI[i][3]) doif (DANH_SACH_BANG_HOI[i][3][j][1] ~= "" and name == DANH_SACH_BANG_HOI[i][3][j][1]) thenDANH_SACH_BANG_HOI[i][3][j][2] = titleChangeTitleTong(dwname,name) save()returnendendfor j=2,getn(DANH_SACH_BANG_HOI[i][4]) doif (DANH_SACH_BANG_HOI[i][4][j][1] ~= "" and name == DANH_SACH_BANG_HOI[i][4][j][1]) thenDANH_SACH_BANG_HOI[i][4][j][2] = titleChangeTitleTong(dwname,name) save()returnendendendendend;function KickPowerTongMain(dwname,Figure,name)

if (Figure == 0) then
for i=1,getn(DANH_SACH_BANG_HOI) do
if (dwname == DANH_SACH_BANG_HOI[i][1][2]) then
save()

for j=2,getn(DANH_SACH_BANG_HOI[i][5]) do
if (DANH_SACH_BANG_HOI[i][5][j][1] ~= "" and DANH_SACH_BANG_HOI[i][5][j][1] == name) then
DANH_SACH_BANG_HOI[i][5][j][1] = ""
DeleteTong(name)
save()
return
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][j][1] ~= "" and DANH_SACH_BANG_HOI[i][6][j][1] == name) then
DANH_SACH_BANG_HOI[i][6][j][1] = ""
DeleteTong(name)
save()
return
end
end



end
end


elseif (Figure == 1) then

for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) then


for j=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][j][1] ~= "" and DANH_SACH_BANG_HOI[i][4][j][1] == name) then
DANH_SACH_BANG_HOI[i][4][j][1] = ""
DeleteTong(name)
save()
return
end
end

end
end

elseif (Figure == 2) then

for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) then


for j=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][3][j][1] ~= "" and DANH_SACH_BANG_HOI[i][3][j][1] == name) then
DANH_SACH_BANG_HOI[i][3][j][1] = ""
DeleteTong(name)
save()
return
end
end

end
end


end

end;
function LeavePowerTongMain(dwname,Figure,name)


if (GetName() ~= name) then
return
end


if (Figure == 0) then
for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) then


for j=2,getn(DANH_SACH_BANG_HOI[i][5]) do
if (DANH_SACH_BANG_HOI[i][5][j][1] ~= "" and DANH_SACH_BANG_HOI[i][5][j][1] == name) then
DANH_SACH_BANG_HOI[i][5][j][1] = ""
Msg2Tong("<color=yellow>"..name.." �� r�i kh�i Bang H�i !")
KickOutSelf()
DeleteTong()
save()
return
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][j][1] ~= "" and DANH_SACH_BANG_HOI[i][6][j][1] == name) then
DANH_SACH_BANG_HOI[i][6][j][1] = ""
Msg2Tong("<color=yellow>"..name.." �� r�i kh�i Bang H�i !")
KickOutSelf()
DeleteTong()
save()
return
end
end



end
end


elseif (Figure == 1) then

for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) then


for j=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][j][1] ~= "" and DANH_SACH_BANG_HOI[i][4][j][1] == name) then
DANH_SACH_BANG_HOI[i][4][j][1] = ""
Msg2Tong("<color=yellow>"..name.." �� r�i kh�i Bang H�i !")
KickOutSelf()
DeleteTong()
save()
return
end
end

end
end

elseif (Figure == 2) then

for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) then


for j=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][3][j][1] ~= "" and DANH_SACH_BANG_HOI[i][3][j][1] == name) then
DANH_SACH_BANG_HOI[i][3][j][1] = ""
Msg2Tong("<color=yellow>"..name.." �� r�i kh�i Bang H�i !")
KickOutSelf()
DeleteTong()
save()
return
end
end

end
end


end

end;








function DepositMoneyMain(dwname,playername,money)



for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) thensave()


if (GetName() == playername) then
if (GetCash() >= money and (DANH_SACH_BANG_HOI[i][1][7] + money) <= 2000000000) then


tien_gop = GetCash()
Pay(money)
save()
if (GetCash() == (tien_gop - money)) then
DANH_SACH_BANG_HOI[i][1][7] = DANH_SACH_BANG_HOI[i][1][7] + money
Msg2Player("B�n �� ��ng g�p "..money.." l��ng v�o ng�n qu� bang h�i !")
Msg2Tong("<color=yellow>"..GetName().." �� ��ng g�p "..money.." l��ng v�o ng�n qu� bang h�i. Ng�n qu� bang t�ng l�n: "..DANH_SACH_BANG_HOI[i][1][7].." l��ng !")
	thoigian = tonumber(date("%H%M%d%m"))
	local IPData = openfile("data/logbanghoi.txt", "a");
	write(IPData,""..i.." - ["..DANH_SACH_BANG_HOI[i][1][1].."] - "..GetName().." - Gui Tien: "..money.." - "..thoigian.."\n");
	closefile(IPData)
save()
else
Msg2Player("Hack a cung yeu !")
end

elseif (GetCash() < money) then
Msg2Player("B�n kh�ng mang �� s� ti�n c�n thi�t !")
else
Msg2Player("Ng�n l��ng trong bang qu� l�n !")
end

end
end
end

end;



function TakeMoneyMain(dwname,playername,money)

for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) then

if (GetName() == playername and playername == DANH_SACH_BANG_HOI[i][2][1]) then
if (DANH_SACH_BANG_HOI[i][1][7] >= money and (GetCash() + money) <= 2000000000) then



tien_rut = GetCash()
DANH_SACH_BANG_HOI[i][1][7] = DANH_SACH_BANG_HOI[i][1][7] - money
Earn(money)
save()
if (GetCash() == (tien_rut + money)) then
Msg2Player("B�n �� r�t "..money.." l��ng ra kh�i ng�n qu� bang h�i !")
Msg2Tong("<color=yellow>"..GetName().." �� r�t "..money.." l��ng ra kh�i ng�n qu� bang h�i. Ng�n qu� bang gi�m xu�ng c�n: "..DANH_SACH_BANG_HOI[i][1][7].." l��ng !")

	thoigian = tonumber(date("%H%M%d%m"))
	local IPData = openfile("Data/logbanghoi.txt", "a");
	write(IPData,""..i.." - ["..DANH_SACH_BANG_HOI[i][1][1].."] - "..GetName().." - Rut Tien: "..money.." - "..thoigian.."\n");
	closefile(IPData)
	save()
else
Pay(money)
Msg2Player("Hack a cung yeu !")
end

elseif (DANH_SACH_BANG_HOI[i][1][7] < money) then
Msg2Player("Bang kh�ng c�n nhi�u ng�n l��ng nh� v�y !")
else
Msg2Player("Ng�n l��ng trong bang kh�ng �� !")
end

end
end
end

end;






function AddMoneyMain(dwname,nameBC,money)


for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) thensave()
if (DANH_SACH_BANG_HOI[i][2][1] == nameBC) then
if ((DANH_SACH_BANG_HOI[i][1][7] + money) <= 2000000000) then
DANH_SACH_BANG_HOI[i][1][7] = DANH_SACH_BANG_HOI[i][1][7] + money
save()
end
end
end
end

end;





function SetTongMapMain(nMapId,szTongName,dwTongName,szTongBC,dwTongBC,nTongT,nTongVG)

for i=1,getn(DSTT) do

if (DSTT[i][3] == nMapId) then
DSTT[i][1] = 1
DSTT[i][4] = szTongName
DSTT[i][5] = dwTongName
DSTT[i][6] = nTongT
DSTT[i][7] = nTongVG
DSTT[i][8] = szTongBC
DSTT[i][9] = dwTongBC
LoadTongMap(DSTT[i][3],DSTT[i][4],DSTT[i][5],DSTT[i][6],DSTT[i][7],DSTT[i][8],DSTT[i][9],DSTT[i][1])
return
end

end

end;





function LoadTongMapMain()
for i=1,getn(DSTT) do


LoadTongMap(DSTT[i][3],DSTT[i][4],DSTT[i][5],DSTT[i][6],DSTT[i][7],DSTT[i][8],DSTT[i][9],DSTT[i][1])


end
end;







tempbang = 50

function main()
w,x,y = GetWorldPos()
if GetTaskTemp(tempbang) == 1000 then
	Say("��i bang h�i !",2,
	"��i Bang Ch� /doibangchu",
	"Thoat./no")
else
	Talk(1,"","Ch�c n�ng ch�a c�p nh�t !")

	if w == 53 or w == 3 or w == 66 then
--	KhuVucBang()
	elseif w >= 116 then
--	LanhDiaBang()
	else
	ThuThue()
	end
end
end


function ThuThue()
if DSTT[vitritt()][1] == 0 then
	Say("<color=green>Nha D�ch<color>: Hi�n t�i th�nh th� <color=blue>"..DSTT[vitritt()][2].."<color> ch�a c� bang h�i chi�m l�nh ",1,
	"Tho�t./no")
else
	if GetTongName() == DSTT[vitritt()][4] and GetName() == DSTT[vitritt()][8] then
			Say("<color=green>Nha D�ch<color>: B�n �ang l�m th�i th� th�nh th� <color=blue>"..DSTT[vitritt()][2].."<color>\nThu� th�nh: <color=yellow>"..DSTT[vitritt()][6].."%<color>\nThu� v�t ph�m: <color=yellow>"..DSTT[vitritt()][7].."%<color>",3,
			"S�a ��i Thu� Th�nh/suathue",
			"S�a ��i Thu� V�t Ph�m/suathue",
			"Thoat./no")
	else
	Say("<color=green>Nha D�ch<color>: Bang h�i chi�m l�nh: <color=blue>"..DSTT[vitritt()][4].."<color>\nTh�i Th�: <color=red>"..DSTT[vitritt()][8].."<color>\nThu� th�nh: <color=yellow>"..DSTT[vitritt()][6].."%<color> - v�t ph�m: <color=yellow>"..DSTT[vitritt()][7].."%<color>",1,
	"Thoat./no")
	end
end
end
function no()
end
function suathue(nsel)
if GetTongName() == DSTT[vitritt()][4] and GetName() == DSTT[vitritt()][8] then
if nsel == 0 then
	OpenStringBox(2,"Nh�p s� 1 - 20","thuett")
elseif nsel == 1 then
	OpenStringBox(2,"Nh�p s� 1 - 20","thuevp")
end
else
	Talk(1,"","Hack ha em")
end
end

function vitritt()
w,x,y = GetWorldPos()
if w == 18 then
return 1
elseif w == 17 then
return 2
elseif w == 9 then
return 3
elseif w == 15 then
return 4
end
end

function thuett(num)
if GetTongName() == DSTT[vitritt()][4] and GetName() == DSTT[vitritt()][8] and DSTT[vitritt()][1] == 1 then
if tonumber(num) <= 20 then
	DSTT[vitritt()][6] = num
	Msg2Player("Tr� s� thu� th�nh th� �� ���c c�p nh�t: "..num.."% ")
LoadTongMapMain()
else
	Talk(1,"","Thu� su�t ch� ���c nh�p t� 1 - 20% ")
end
end
end

function thuevp(num)
if GetTongName() == DSTT[vitritt()][4] and GetName() == DSTT[vitritt()][8] and DSTT[vitritt()][1] == 1 then
if tonumber(num) <= 20 then
	DSTT[vitritt()][7] = num
	Msg2Player("Tr� s� thu� v�t ph�m �� ���c c�p nh�t: "..num.."% ")
LoadTongMapMain()
else
	Talk(1,"","Thu� su�t ch� ���c nh�p t� 1 - 20% ")

end

end

end







Include("\\datascript\\banghoi\\mapbanghoi.lua")
Include("\\datascript\\banghoi\\danhsachthanhthi.lua")




function KhuVucBang()
if GetTongName() == "" then
Talk(1,"","Ch� c� th�nh vi�n c�a bang h�i m�i c� th� v�o l�nh ��a bang h�i !")
return
end

if GetTongFigure() == 3 and checksoluongbang() == 0 then
Say("<color=green>Qu�n L� Khu V�c<color>: M�i bang h�i c� m�t l�nh ��a ri�ng, ta l� ng��i qu�n l� vi�c ph�n chia l�nh ��a cho c�c bang h�i",3,
"��ng K� L�nh ��a Bang H�i/dangkykhuvucbang",
"Ki�m Tra Th�nh Vi�n �ang Online/kiemtraonline",
"Tho�t./no")
else
Say("<color=green>Qu�n L� Khu V�c<color>: M�i bang h�i c� m�t l�nh ��a ri�ng, ta l� ng��i qu�n l� vi�c ph�n chia l�nh ��a cho c�c bang h�i",3,
"Di Chuy�n V�o L�nh ��a Bang H�i/dichuyenkhuvucbang",
"Ki�m Tra Th�nh Vi�n �ang Online/kiemtraonline",
"Tho�t./no")
end
end



function kiemtraonline()
if GetTongName() == "" then
Talk(1,"","Ch� c� th�nh vi�n c�a bang h�i m�i c� th� v�o l�nh ��a bang h�i !")
return
end
Say("<color=green>Qu�n L� Khu V�c<color>: Bang H�i "..GetTongName().." , ng��i c�n ki�m tra th�nh vi�n �ang online?",6,
"Ki�m Tra Th�nh Vi�n �ang Online /kiemtra0",
"Ki�m Tra Bang Ch� v� Tr��ng L�o/kiemtra1",
"Ki�m Tra ���ng Ch� /kiemtra2",
"Ki�m Tra M�n �� Nam /kiemtra3",
"Ki�m Tra M�n �� N� /kiemtra4",
"Tho�t./no")
end


function kiemtra0()
bang = GetTongName()
mangbang = {}
idx = PlayerIndex
for i=1,GetCountPlayerMax() do 
PlayerIndex = i
	if GetName() ~= "" and GetName() ~= nil then
		if GetTongName() == bang then
			mangbang[getn(mangbang)+1] = {GetTongFigure(),GetName()}
		end
	end
end
PlayerIndex = idx
if getn(mangbang) == 0 then
	Msg2Player("Hi�n kh�ng c� Th�nh Vi�n n�o �ang online !")
else
Msg2Player("Danh s�ch th�nh vi�n bang �ang online: ")
for k=1,getn(mangbang) do
	Msg2Player(""..k..". "..danhhieubang(mangbang[k][1]).."- "..mangbang[k][2].." ")
end
end
end

function kiemtra1()
bang = GetTongName()
mangbang = {}
idx = PlayerIndex
for i=1,GetCountPlayerMax() do 
PlayerIndex = i
	if GetName() ~= "" and GetName() ~= nil then
		if GetTongName() == bang and (GetTongFigure() == 3 or GetTongFigure() == 2) then
			mangbang[getn(mangbang)+1] = {GetTongFigure(),GetName()}
		end
	end
end
PlayerIndex = idx
if getn(mangbang) == 0 then
	Msg2Player("Hi�n kh�ng c� Bang Ch� ho�c Tr��ng L�o n�o �ang online !")
else
Msg2Player("Danh s�ch Bang Ch� v� Tr��ng L�o �ang online: ")
for k=1,getn(mangbang) do
	Msg2Player(""..k..". "..danhhieubang(mangbang[k][1]).."- "..mangbang[k][2].." ")
end
end
end
function kiemtra2()
bang = GetTongName()
mangbang = {}
idx = PlayerIndex
for i=1,GetCountPlayerMax() do 
PlayerIndex = i
	if GetName() ~= "" and GetName() ~= nil then
		if GetTongName() == bang and GetTongFigure() == 1 then
			mangbang[getn(mangbang)+1] = {GetTongFigure(),GetName()}
		end
	end
end
PlayerIndex = idx
if getn(mangbang) == 0 then
	Msg2Player("Hi�n kh�ng c� ���ng Ch� n�o �ang online !")
else
Msg2Player("Danh s�ch ���ng Ch� �ang online: ")
for k=1,getn(mangbang) do
	Msg2Player(""..k..". "..danhhieubang(mangbang[k][1]).."- "..mangbang[k][2].." ")
end
end
end


function kiemtra3()
bang = GetTongName()
mangbang = {}
idx = PlayerIndex
for i=1,GetCountPlayerMax() do 
PlayerIndex = i
	if GetName() ~= "" and GetName() ~= nil then
		if GetTongName() == bang and GetTongFigure() == 0 and GetSex() == 0 then
			mangbang[getn(mangbang)+1] = {GetTongFigure(),GetName()}
		end
	end
end
PlayerIndex = idx
if getn(mangbang) == 0 then
	Msg2Player("Hi�n kh�ng c� M�n �� Nam n�o �ang online !")
else
Msg2Player("Danh s�ch M�n �� Nam �ang online: ")
for k=1,getn(mangbang) do
	Msg2Player(""..k..". "..danhhieubang(mangbang[k][1]).."- "..mangbang[k][2].." ")
end
end
end
function kiemtra4()
bang = GetTongName()
mangbang = {}
idx = PlayerIndex
for i=1,GetCountPlayerMax() do 
PlayerIndex = i
	if GetName() ~= "" and GetName() ~= nil then
		if GetTongName() == bang and GetTongFigure() == 0 and GetSex() == 1 then
			mangbang[getn(mangbang)+1] = {GetTongFigure(),GetName()}
		end
	end
end
PlayerIndex = idx
if getn(mangbang) == 0 then
	Msg2Player("Hi�n kh�ng c� M�n �� N� n�o �ang online !")
else
Msg2Player("Danh s�ch M�n �� N� �ang online: ")
for k=1,getn(mangbang) do
	Msg2Player(""..k..". "..danhhieubang(mangbang[k][1]).."- "..mangbang[k][2].." ")
end
end
end


function danhhieubang(num)
if num == 1 then
return "<color=green>���ng Ch� <color=red>"
elseif num == 2 then
return "<color=yellow>Tr��ng L�o <color=red>"
elseif num == 3 then
return "<color=pink>Bang Ch� <color=red>"
else
return "M�n �� "
end
end



function ChangeTongCamp(camp,dwname,name)
if GetCurCamp() == camp then
Msg2Player("Tr�ng m�u s�c bang h�i hi�n t�i !")
return
end
mausac = camp
if GetTongName() == "" then
Talk(1,"","Ch� c� th�nh vi�n c�a bang h�i m�i c� th� v�o l�nh ��a bang h�i !")
return
end

if GetTongFigure() ~= 3 then
Talk(1,"","Ch� c� bang ch� m�i th�c hi�n ���c ch�c n�ng n�y !")
return
end

cash = GetCash()
if GetCash() < 5000000 then
Talk(1,"","B�n kh�ng mang �� 500 v�n l��ng !")
return
end
namebc = GetTongName()
Pay(5000000)
if GetCash() == cash - 5000000 then
	for i=1,getn(DANH_SACH_BANG_HOI) do
		if (DANH_SACH_BANG_HOI[i][1][1] ~= "" and GetTongName() == DANH_SACH_BANG_HOI[i][1][1]) then
			DANH_SACH_BANG_HOI[i][1][3] = mausac;
			if mausac == 1 then
			Msg2Tong("<color=yellow>Bang ch� �� ��i m�u bang h�i sang <color=fire>Ch�nh Ph�i ")
			elseif mausac == 2 then
			Msg2Tong("<color=yellow>Bang ch� �� ��i m�u bang h�i sang <color=pink>T� Ph�i ")
			else
			Msg2Tong("<color=yellow>Bang ch� �� ��i m�u bang h�i sang <color=green>Trung L�p")
			end
		end
	end
	for k=1,GetCountPlayerMax() do
		PlayerIndex = k
		w,x,y = GetWorldPos()
		if GetTongName() == namebc then
			if w == 34 or w == 35 or w == 36 or (w >= 116 and w <= 134 and GetFightState() == 1) or w == 33 or w == 61 or w == 42 or w == 43 or w == 45  then
			Msg2Player("B�n �ang trong tr�ng th�i kh�ng th� ��i m�u bang h�i !")
			else				
			SetCurCamp(mausac)
			SetCamp(mausac)
			end
		end
	end
	Talk(0,"")
else
Talk(1,"","hack ha em ")
end

end


function dangkykhuvucbang()
if GetTongName() == "" then
Talk(1,"","B�n ch�a c� Bang H�i, kh�ng th� ��ng k� l�nh ��a !")
return
end
if GetTongFigure() ~= 3 then
Talk(1,"","B�n kh�ng ph�i bang ch�, kh�ng th� ��ng k� l�nh ��a")
return
end
nl = GetCash()
if GetCash() < 100000000 then
Talk(1,"","B�n kh�ng �� 10.000 v�n l��ng")
return
end
if checksoluongbang() > 0 then
Talk(1,"","Bang h�i c�a b�n �� ��ng k� khu v�c bang h�i !")
return
end
SoThanhVien = 0
for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][1] ~= "" and GetTongName() == DANH_SACH_BANG_HOI[i][1][1]) then
	for k=3,6 do		
		for j=2,getn(DANH_SACH_BANG_HOI[i][k]) do
		if (DANH_SACH_BANG_HOI[i][k][j][1] ~= "") then
			SoThanhVien = SoThanhVien + 1
		end
		end
	end
end
end

if getn(MAP_BANG_HOI) >= 18 then
Talk(1,"","Hi�n t�i �� ��t gi�i h�n s� l��ng L�nh ��a Bang H�i, li�n h� Administrator �� ���c c�p nh�t th�m s� l��ng gi�i h�n !")
return
end

if SoThanhVien + 1 >= 80 then
	Pay(100000000)
	if GetCash() == nl-100000000 then
		MAP_BANG_HOI[getn(MAP_BANG_HOI)+1] = {GetTongName(),0,0,0,0,0}	
		BANGI = TaoBang(MAP_BANG_HOI,"MAP_BANG_HOI")
		LuuBang("datascript/banghoi/mapbanghoi.lua",BANGI)
		Msg2SubWorld("Bang ch� <color=yellow>"..GetName().." <color=red> �� thi�t l�p th�nh c�ng L�nh ��a Bang H�i <color=green>"..GetTongName()..". <color=red>T� h�m nay, th�nh vi�n bang h�i h�y c�ng nhau g�p s�c c�ng x�y d�ng v� ph�t tri�n l�nh ��a c�a m�nh ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em ")
	end
else
	Talk(1,"","Bang h�i c�a b�n kh�ng �� 80 th�nh vi�n, kh�ng th� thi�t l�p khu v�c Bang H�i !")
	return
end




end



function checksoluongbang()
check = 0
for i=1,getn(MAP_BANG_HOI) do
	if GetTongName() == MAP_BANG_HOI[i][1] then
		check = i
		break			
	end
end
return check
end


function dichuyenkhuvucbang()
if GetTongName() == "" then
Talk(1,"","B�n kh�ng c� bang h�i !")
return
end
checksl = checksoluongbang()
if checksl == 0 then
Talk(1,"","Bang h�i c�a b�n ch�a thi�t l�p L�nh ��a Bang H�i, kh�ng th� v�o !")
return
end


Msg2WorldById("<color=yellow>"..GetName().." �� di chuy�n v�o L�nh ��a Bang H�i <color=green>"..GetTongName().." <color> ",115+checksl)
SetFightState(0)
SetLogoutRV(0)
SetPunish(1)

NewWorld(115+checksl,1721,3317)
end


function LanhDiaBang()
if GetTongName() == "" then
Talk(1,"","B�n kh�ng c� bang h�i , kh�ng th� s� d�ng ch�c n�ng !")
return
end

if GetTongFigure() == 3 then
	Say("<color=green>Qu�n L� L�nh ��a<color>: Hi�n t�i �ang c� <color=red>"..soluongthanhvienlanhdia().."<color> th�nh vi�n trong L�nh ��a Bang H�i. Vui l�ng ch�n ch�c n�ng qu�n l� ",7,
	"T�o Boss Bang H�i /taoboss",
	"Ph�t L��ng T�t C� Th�nh Vi�n /phatluong",
	"N�ng c�p Th� R�n/nangcapthoren",
	"N�ng c�p Boss Bang H�i/nangcapboss",
	"R�t C�ng Th�nh Chi�n L� Bao /rutctclb",
	"Kick Ng��i Ch�i L�/kicknguoichoi",
	"Tho�t./no")
else
	Say("<color=green>Qu�n L� L�nh ��a<color>: Hi�n t�i �ang c� <color=red>"..soluongthanhvienlanhdia().."<color> th�nh vi�n trong L�nh ��a Bang H�i. ",1,
	"Tho�t./no")

end
end
function soluongthanhvienlanhdia()
check = 0
idx = PlayerIndex
w,x,y = GetWorldPos()
name = GetTongName()
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w1,x1,y1 = GetWorldPos()
	if w == w1 and name == GetTongName() then
		check = check + 1
	end
end
PlayerIndex = idx
return check
end

BOSSBH = {
{745,749,"\\script\\khuvucbang\\bossbanghoi1.lua"},
{750,754,"\\script\\khuvucbang\\bossbanghoi2.lua"},
{755,759,"\\script\\khuvucbang\\bossbanghoi3.lua"},
{760,764,"\\script\\khuvucbang\\bossbanghoi4.lua"},
{792,796,"\\script\\khuvucbang\\bossbanghoi5.lua"},
}

function taoboss()
vitri = checksoluongbang()
if GetTongName() == "" then
Talk(1,"","B�n kh�ng c� bang h�i , kh�ng th� s� d�ng ch�c n�ng !")
return
end
if GetTongFigure() ~= 3 then
Talk(1,"","B�n kh�ng ph�i bang ch�, kh�ng th� s� d�ng ch�c n�ng !")
return
end
ngay = tonumber(date("%d"))
if MAP_BANG_HOI[vitri][5] ~= ngay then
	if GetTongName() == DSTT[1][4] or GetTongName() == DSTT[2][4] or GetTongName() == DSTT[3][4] or GetTongName() == DSTT[4][4] then
		MAP_BANG_HOI[vitri][4] = 1
		Msg2Player("Bang h�i c�a b�n nh�n ���c 1 l�n t�o Boss Bang H�i mi�n ph� trong ng�y do �ang chi�m 1 th�nh th� !")
	else	
		MAP_BANG_HOI[vitri][4] = 0
	end
end
w,x,y = GetWorldPos()
if MAP_BANG_HOI[vitri][4] == 1 then
	if MAP_BANG_HOI[vitri][6] < 0 or MAP_BANG_HOI[vitri][6] > 4 then
	Talk(1,"","L�i v��t qu� gi�i h�n Map, li�n h� GM �� kh�c ph�c !")
	return
	end
	MAP_BANG_HOI[vitri][4] = 2
	MAP_BANG_HOI[vitri][5] = ngay
	-- Add Boss
	bossbang=AddNpc(random(BOSSBH[MAP_BANG_HOI[vitri][6]+1][1],BOSSBH[MAP_BANG_HOI[vitri][6]+1][2]),95,SubWorldID2Idx(w),1585*32,3124*32)
	SetNpcScript(bossbang, BOSSBH[MAP_BANG_HOI[vitri][6]+1][3]);
	
	Msg2World("Bang ch� "..GetName().."  �� tri�u h�i Boss Bang H�i, c�c b�n h�y nhanh ch�ng t�p trung ra khu v�c s�n boss �� ti�u di�t. Ph�n th��ng mang v� cho to�n bang h�i �ang thu�c L�nh ��a Bang H�i ")
	Msg2SubWorld("<color=pink>Bang ch� <color=yellow>"..GetName().." <color=pink>thu�c bang [<color=yellow>"..GetTongName().."<color=pink>] �� tri�u h�i Boss Bang H�i c�p "..(MAP_BANG_HOI[vitri][6]+1)..", c�c th�nh vi�n bang h�i h�y nhanh ch�ng t�p trung v�o L�nh ��a Bang H�i �� ti�u di�t Boss !")
	inlogin("Bang "..GetTongName().." da Add Boss Mien Phi ")
elseif MAP_BANG_HOI[vitri][4] == 0 then
	cash = GetCash()
	if GetCash() >= 5000000 then
		Pay(5000000)
		if GetCash() == cash - 5000000 then
			if MAP_BANG_HOI[vitri][6] < 0 or MAP_BANG_HOI[vitri][6] > 4 then
			Talk(1,"","L�i v��t qu� gi�i h�n Map, li�n h� GM �� kh�c ph�c !")
			return
			end
			MAP_BANG_HOI[vitri][4] = 2
			MAP_BANG_HOI[vitri][5] = ngay

			bossbang=AddNpc(random(BOSSBH[MAP_BANG_HOI[vitri][6]+1][1],BOSSBH[MAP_BANG_HOI[vitri][6]+1][2]),95,SubWorldID2Idx(w),1585*32,3124*32)
			SetNpcScript(bossbang, BOSSBH[MAP_BANG_HOI[vitri][6]+1][3]);

			-- Add Boss
			Msg2World("Bang ch� "..GetName().." �� tri�u h�i Boss Bang H�i, c�c b�n h�y nhanh ch�ng t�p trung ra khu v�c s�n boss �� ti�u di�t. Ph�n th��ng mang v� cho to�n bang h�i �ang thu�c L�nh ��a Bang H�i ")
			Msg2SubWorld("<color=pink>Bang ch� <color=yellow>"..GetName().." <color=pink>thu�c bang [<color=yellow>"..GetTongName().."<color=pink>] �� tri�u h�i Boss Bang H�i c�p "..(MAP_BANG_HOI[vitri][6]+1)..", c�c th�nh vi�n bang h�i h�y nhanh ch�ng t�p trung v�o L�nh ��a Bang H�i �� ti�u di�t Boss !")
				inlogin("Bang "..GetTongName().." da Add Boss 500 van ")
		else
			Talk(1,"","Hack ha em !")
		end
	else	
		Talk(1,"","B�n kh�ng mang �� 500 v�n l��ng !")
	end
else
	Talk(1,"","Bang h�i c�a b�n �� t�o Boss Bang H�i ng�y h�m nay r�i !")	
end
end

function nangcapboss()
vitri = checksoluongbang()
if GetTongName() == "" then
Talk(1,"","B�n kh�ng c� bang h�i , kh�ng th� s� d�ng ch�c n�ng !")
return
end
if GetTongFigure() ~= 3 then
Talk(1,"","B�n kh�ng ph�i bang ch�, kh�ng th� s� d�ng ch�c n�ng !")
return
end
tien = (MAP_BANG_HOI[vitri][6] + 1)*50000000
if GetCash() < tien then
Talk(1,"","�� n�ng c�p Boss Bang H�i l�n c�p <color=red<"..(MAP_BANG_HOI[vitri][6]+1).."<color> c�n <color=yellow>"..tien.."<color> l��ng !")
return
end
sl = GetCash()
if MAP_BANG_HOI[vitri][6] < 5 then
	if GetCash() >= tien then
		Pay(tien)
		if GetCash() == sl-tien then
			MAP_BANG_HOI[vitri][6] = MAP_BANG_HOI[vitri][6] + 1
			Msg2SubWorld("<color=pink>Ch�c m�ng Bang <color=green>"..GetTongName().." <color=pink>�� th�ng c�p th�nh c�ng <color=yellow>Boss Bang H�i l�n c�p "..(MAP_BANG_HOI[vitri][6]+1).."<color=pink>, c�c b�n s� c� c� h�i nh�n ���c nhi�u ph�n th��ng h�n t� s� ki�n n�y ")	
			Msg2SubWorld("<color=pink>C�p �� Boss Bang H�i s� ���c �p d�ng sau khi Server kh�i ��ng l�i g�n nh�t ")	
			inlogin("Bang Hoi: "..MAP_BANG_HOI[vitri][1].." Thang cap Boss Hoang Kim thanh cong len cap: "..MAP_BANG_HOI[vitri][6].." ")
			Talk(0,"")
		else
			inlogin("Bang "..MAP_BANG_HOI[vitri][1].." hack tien van "..tien.." ")
			Talk(1,"","Hack ha em !")
		end
	else
		Talk(1,"","B�n kh�ng �� "..tien.." �� th�c hi�n n�ng c�p Boss Bang H�i !")
	end
else
	Talk(1,"","Boss Bang H�i �� n�ng ��n m�c t�i �a !")
end
end

function phatluong()
OpenStringBox(2,"Nh�p s� ti�n. ��n v�: l��ng","okphatluong")
end

function okphatluong(num2)
num = tonumber(num2)
if num2 == 0 or num2 == nil then
Talk(1,"","Kh�ng ���c �� tr�ng ! ")
return
end
sl = soluongthanhvienlanhdia()
cash = GetCash()
name = GetName()
w,x,y = GetWorldPos()
tongname = GetTongName()
idx = PlayerIndex
if GetCash() >= sl*num then
	Pay(sl*num)
	inlogin("BANG CHU PHAT LUONG : "..tongname.." - "..GetAccount().." - "..GetName().." - "..(num*sl).." ")
	Msg2Player("B�n �� d�ng <color=yellow>"..(sl*num).."<color=red> �� ph�t l��ng cho <color=yellow>"..sl.."<color=red> th�nh vi�n Bang H�i �ang trong khu v�c L�nh ��a")
	if GetCash() == cash-sl*num then
		for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			if GetName() ~= nil or GetName() ~= "" then
			w1,x1,y1 = GetWorldPos()
			if w == w1 and GetTongName() == tongname then
			Earn(num)
			Msg2Player("B�n nh�n ���c <color=yellow>"..num.."<color> l��ng t� Bang Ch� <color=green>"..name.." ") 
			inlogin("Phat Luong: "..GetAccount().." - "..GetName().." - "..num.." ")
			end
			end
		end	
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","S� ti�n nh�p v�o: "..num.." l��ng.\nS� th�nh vi�n bang h�i: "..sl.."\nT�ng s� ti�n c�n: <color=yellow>"..(sl*num).."<color> l��ng")
end
PlayerIndex = idx
end

function nangcapthoren()
vitri = checksoluongbang()
if GetTongName() == "" then
Talk(1,"","B�n kh�ng c� bang h�i , kh�ng th� s� d�ng ch�c n�ng !")
return
end
if GetTongFigure() ~= 3 then
Talk(1,"","B�n kh�ng ph�i bang ch�, kh�ng th� s� d�ng ch�c n�ng !")
return
end
tien = (MAP_BANG_HOI[vitri][3] + 1)*50000000
if GetCash() < tien then
Talk(1,"","�� n�ng c�p Th� R�n l�n c�p <color=red<"..(MAP_BANG_HOI[vitri][3]+1).."<color> c�n <color=yellow>"..tien.."<color> l��ng !")
return
end
sl = GetCash()
if MAP_BANG_HOI[vitri][3] < 6 then
	if GetCash() >= tien then
		Pay(tien)
		if GetCash() == sl-tien then
			MAP_BANG_HOI[vitri][3] = MAP_BANG_HOI[vitri][3] + 1
			Msg2SubWorld("<color=pink>Ch�c m�ng Bang <color=green>"..GetTongName().." <color=pink>�� th�ng c�p th�nh c�ng <color=yellow>Th� R�n L�nh ��a l�n c�p "..(MAP_BANG_HOI[vitri][3]+1).."<color=pink>, x�c su�t th�ng c�p trang b� v� th�ng c�p huy�n tinh c�a Bang H�i ���c t�ng th�m: <color=yellow>"..(MAP_BANG_HOI[vitri][3]*2).."% ")	
			Msg2SubWorld("<color=pink>X�c su�t n�y �p d�ng cho to�n th�nh vi�n Bang H�i sau khi Server kh�i ��ng l�i g�n nh�t ")	
			inlogin("Bang Hoi: "..MAP_BANG_HOI[vitri][1].." Thang cap tho ren thanh cong len cap: "..MAP_BANG_HOI[vitri][3].." ")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em !")
		end
	else
		Talk(1,"","B�n kh�ng �� "..tien.." �� th�c hi�n n�ng c�p Th� R�n !")
	end
else
	Talk(1,"","Th� R�n L�nh ��a �� n�ng ��n m�c t�i �a !")
end
end

function inlogin(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/logLanhDiaBang.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function rutctclb()
vitri = checksoluongbang()
if GetTongName() == "" then
Talk(1,"","B�n kh�ng c� bang h�i , kh�ng th� s� d�ng ch�c n�ng !")
return
end
if GetTongFigure() ~= 3 then
Talk(1,"","B�n kh�ng ph�i bang ch�, kh�ng th� s� d�ng ch�c n�ng !")
return
end
if MAP_BANG_HOI[vitri][1] == GetTongName() then
	if MAP_BANG_HOI[vitri][2] > 0 then
		for k=1,MAP_BANG_HOI[vitri][2] do
			sl = GetItemCount(249)
			if CheckFreeBoxItem(4,249,1,1) == 0 then		
			Msg2Player("H�nh trang �� ��y, s� l��ng C�ng Th�nh Chi�n L� Bao hi�n t�i c�n: "..MAP_BANG_HOI[vitri][2].." c�i")
			inlogin("Bang "..MAP_BANG_HOI[vitri][1].." rut Le Bao con: "..MAP_BANG_HOI[vitri][2].." cai !")
			break
			end
			MAP_BANG_HOI[vitri][2] = MAP_BANG_HOI[vitri][2] - 1
			AddEventItem(249)
			if GetItemCount(249) ~= sl + 1 then
			Talk(1,"","C� l�i li�n quan ��n hack v�t ph�m, li�n h� GM �� gi�i quy�t !")
				
			inlogin("Bang "..MAP_BANG_HOI[vitri][1].." so Luong Le Bang con: "..MAP_BANG_HOI[vitri][2].." -  "..GetItemCount(249).." - "..sl.." cai !")
			break
			end
			Talk(0,"")
		end
		Msg2Player("B�n �� nh�n C�ng Th�nh Chi�n l� bao th�nh c�ng !")
	else
		Talk(1,"","Trong kho Bang H�i kh�ng c�n d� 1 <color=yellow>C�ng Th�nh Chi�n L� Bao<color> n�o !")
	end
else
	Talk(1,"","Hack ha em")
end

end

function kicknguoichoi()
idx = PlayerIndex
tenbang = GetTongName()
w,x,y = GetWorldPos()
check = 0
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	w1,x1,y1 = GetWorldPos()
	if GetTongName() ~= tenbang and w == w1 then
		Msg2World("Bang ch� �� c��ng ch� kick ng��i ch�i <color=yellow>"..GetName().."<color> ra kh�i L�nh ��a Bang H�i v� kh�ng c�n � trong bang n�y n�a ! ")
		Msg2Player("B�n b� bang ch� kick kh�i l�nh ��a bang h�i !")
		SetPunish(0);
		check = 1
		NewWorld(53,200*8,200*16)
	end
end

PlayerIndex = idx
if check == 0 then
	Msg2Player("Trong L�nh ��a Bang H�i kh�ng c� ng��i ch�i thu�c Bang H�i c�a b�n, kh�ng c� ai �� kick !")
end
end


function doibangchu()
if GetTongName() == "" then
Talk(1,"","B�n kh�ng c� bang h�i , kh�ng th� s� d�ng ch�c n�ng !")
return
end
if GetTongFigure() ~= 3 then
Talk(1,"","B�n kh�ng ph�i bang ch�, kh�ng th� s� d�ng ch�c n�ng !")
return
end

SoThanhVien = 0
vttl = 0
vtbang = 0
for i=1,getn(DANH_SACH_BANG_HOI) do
if DANH_SACH_BANG_HOI[i][1][1] ~= "" and GetTongName() == DANH_SACH_BANG_HOI[i][1][1] then
	for k=2,getn(DANH_SACH_BANG_HOI[i][3]) do		
		if (DANH_SACH_BANG_HOI[i][3][k][1] ~= "") then
			SoThanhVien = SoThanhVien + 1
			vttl = k
			vtbang = i
		end
	end
end
end

if SoThanhVien ~= 1 then
Talk(1,"","Ch� �� l�i 1 tr��ng l�o m�i c� th� chuy�n v� Bang Ch� !")
return
end
nameold = GetName()
namenew = DANH_SACH_BANG_HOI[vtbang][3][vttl][1]
DANH_SACH_BANG_HOI[vtbang][2][1] = namenew
DANH_SACH_BANG_HOI[vtbang][3][vttl][1] = ""
Msg2SubWorld("Bang ch� <color=yellow>"..nameold.."<color=red> �� chuy�n v� ch�c v� c�a m�nh cho tr��ng l�o <color=green>"..namenew.." ")
save()
Msg2Player("Chuyen vi bang chu thanh cong !")
idx = PlayerIndex
for u=1,GetCountPlayerMax() do
PlayerIndex = u
if GetName() == DANH_SACH_BANG_HOI[vtbang][2][1] then
	KickOutSelf()
end
end
PlayerIndex = idx
KickOutSelf()

end