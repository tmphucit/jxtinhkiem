Include("\\script\\lib\\thuvien.lua")
Include("\\script\\Global\\sourcejx49.lua")

DANH_SACH_BANG_HOI={}

DSTT = {}

TONG_LEVEL_EXP = {{1,64,10,5,1000},{2,80,40,5,2000},{3,80,40,5,4000},{5,80,40,5,8000},{5,80,40,5,16000}}

Include("\\DataScript\\banghoi\\danhsachbanghoi.lua")

Include("\\DataScript\\banghoi\\danhsachthanhthi.lua")

NGOAI_HIEU_BANG_CHU_MAC_DINH = "BangChñ"
NGOAI_HIEU_TRUONG_LAO_MAC_DINH = "Tr­ëngL·o"
NGOAI_HIEU_DUONG_CHU_MAC_DINH = "§­êngChñ"
NGOAI_HIEU_NAM_MAC_DINH = "NamNh©n"
NGOAI_HIEU_NU_MAC_DINH = "N÷Nh©n"



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
Msg2Player("ChØ cã thÓ chän phe ChÝnh, Trung, Tµ !")
return
end

if GetItemCount(164) == 0 then
Msg2Player("B¹n kh«ng mang theo Nh¹c V­¬ng KiÕm !")
return
end

--if GetCash() < 10000000 then
--Msg2Player("B¹n kh«ng mang ®ñ 1000 v¹n l­îng !")
--return
--end

--if GetTask(100) < 450 then
--Msg2Player("B¹n kh«ng ®ñ 450 ®iÓm danh väng !")
--return
--end

if GetLevel() < 50 then
Msg2Player("§¼ng cÊp 50 míi cã thÓ t¹o lËp bang héi !")
return
end



if (dwname == 0 or strlen(name) < 6 or strlen(name) > 12) then
Msg2Player("Tªn bang ph¶i tõ 6 ®Õn 12 ký tù!")
return
end

for i=1,getn(DANH_SACH_BANG_HOI) do
if (name == DANH_SACH_BANG_HOI[i][1][1] and DANH_SACH_BANG_HOI[i][1][2] ~= 0) then
Msg2Player("Tªn bang héi ®· tån t¹i !")
return
end
end


for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][2] == 0) then


DANH_SACH_BANG_HOI[i] = {
{name,dwname,camp,NGOAI_HIEU_NAM_MAC_DINH,NGOAI_HIEU_NU_MAC_DINH,1,0,0},
{GetName(),NGOAI_HIEU_BANG_CHU_MAC_DINH,GetSex(),0,0,0,0,0,0},
{{"Truong Lao","Ngoai hieu",GetSex(),0,0,0,0,0,0}},
{{"Duong Chu","Ngoai hieu",GetSex(),0,0,0,0,0,0}},
{{"Mon de nam",0,0,0,0,0,0,0,0}},
{{"Mon de nu",0,0,0,0,0,0,0,0}}
}

DelItem(164)
CreadTong(camp,name,NGOAI_HIEU_BANG_CHU_MAC_DINH)

Msg2Player("T¹o bang héi thµnh c«ng!")

return

end
end

DANH_SACH_BANG_HOI[getn(DANH_SACH_BANG_HOI)+1] = {
{name,dwname,camp,NGOAI_HIEU_NAM_MAC_DINH,NGOAI_HIEU_NU_MAC_DINH,1,0,0},
{GetName(),NGOAI_HIEU_BANG_CHU_MAC_DINH,GetSex(),0,0,0,0,0,0},
{{"Truong Lao","Ngoai hieu",GetSex(),0,0,0,0,0,0}},
{{"Duong Chu","Ngoai hieu",GetSex(),0,0,0,0,0,0}},
{{"Mon de nam",0,0,0,0,0,0,0,0}},
{{"Mon de nu",0,0,0,0,0,0,0,0}}
}

DelItem(164)
--Pay(10000000)

CreadTong(camp,name,NGOAI_HIEU_BANG_CHU_MAC_DINH)

Msg2Player("T¹o bang héi thµnh c«ng!")

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

mangtam = {}
function checkmang(name)
for u=1,getn(mangtam) do
	if mangtam[u][1] == name then
		return u
	end
end
return 0
end

function LoadInfoTongMain(nInfoID,nSlectPlayer,dwname)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
mangtam = {}
tenbang = GetTongName()
luuidx = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	if GetTongName() == tenbang then
		mangtam[getn(mangtam)+1] = {GetName(),1,GetLevel(),GetTask(115),GetTask(8)}
	end
end
PlayerIndex = luuidx

for i=1,getn(DANH_SACH_BANG_HOI) do
	if DANH_SACH_BANG_HOI[i][1][1] == GetTongName() then	
		DANH_SACH_BANG_HOI[i][2][5] = 0
		for t=3,6 do 
			for j=1,getn(DANH_SACH_BANG_HOI[i][t]) do 
				online = checkmang(DANH_SACH_BANG_HOI[i][t][j][1])
				if (online == 0) then
					DANH_SACH_BANG_HOI[i][t][j][5] = 0
				else
					DANH_SACH_BANG_HOI[i][t][j][5] = 1
					DANH_SACH_BANG_HOI[i][t][j][6] = mangtam[online][3]
					DANH_SACH_BANG_HOI[i][t][j][7] = mangtam[online][4]
					DANH_SACH_BANG_HOI[i][t][j][8] = mangtam[online][5]
					DANH_SACH_BANG_HOI[i][t][j][9] = thang*1000+ngay;
					end
	 
			end
		end
	end
end


MemberTong = ""
NumberMember = 0
NumberDirector = 0
NumberManager = 0


if (dwname == 0) then
return
end

if (nInfoID == 6) then


for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) then

MemberTong = MemberTong..DANH_SACH_BANG_HOI[i][2][1].." "..DANH_SACH_BANG_HOI[i][2][2].." 0 0 0 0 0 "

for j=2,getn(DANH_SACH_BANG_HOI[i][3]) do
if (DANH_SACH_BANG_HOI[i][3][j][1] ~= "") then


MemberTong = MemberTong..DANH_SACH_BANG_HOI[i][3][j][1].." "..DANH_SACH_BANG_HOI[i][3][j][2].." "..DANH_SACH_BANG_HOI[i][3][j][5].." "..DANH_SACH_BANG_HOI[i][3][j][6].." "..DANH_SACH_BANG_HOI[i][3][j][7].." "..DANH_SACH_BANG_HOI[i][3][j][8].." "..DANH_SACH_BANG_HOI[i][3][j][9].." "

NumberDirector = NumberDirector + 1
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][j][1] ~= "") then
NumberManager = NumberManager + 1
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][5]) do
if (DANH_SACH_BANG_HOI[i][5][j][1] ~= "") then
NumberMember = NumberMember + 1
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][j][1] ~= "") then
NumberMember = NumberMember + 1
end
end


SendTongInfo(1,nSlectPlayer,NumberDirector,NumberManager,NumberMember,DANH_SACH_BANG_HOI[i][1][1],DANH_SACH_BANG_HOI[i][1][3],DANH_SACH_BANG_HOI[i][1][6],DANH_SACH_BANG_HOI[i][1][7],MemberTong)

return

end
end

elseif (nInfoID == 3) then


for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) then



for j=2,getn(DANH_SACH_BANG_HOI[i][3]) do
if (DANH_SACH_BANG_HOI[i][3][j][1] ~= "") then
NumberDirector = NumberDirector + 1
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][j][1] ~= "") then

MemberTong = MemberTong..DANH_SACH_BANG_HOI[i][4][j][1].." "..DANH_SACH_BANG_HOI[i][4][j][2].." "..DANH_SACH_BANG_HOI[i][4][j][5].." "..DANH_SACH_BANG_HOI[i][4][j][6].." "..DANH_SACH_BANG_HOI[i][4][j][7].." "..DANH_SACH_BANG_HOI[i][4][j][8].." "..DANH_SACH_BANG_HOI[i][4][j][9].." "

NumberManager = NumberManager + 1
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][5]) do
if (DANH_SACH_BANG_HOI[i][5][j][1] ~= "") then
NumberMember = NumberMember + 1
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][j][1] ~= "") then
NumberMember = NumberMember + 1
end
end


SendTongInfo(2,nSlectPlayer,NumberDirector,NumberManager,NumberMember,DANH_SACH_BANG_HOI[i][1][1],DANH_SACH_BANG_HOI[i][1][3],DANH_SACH_BANG_HOI[i][1][6],DANH_SACH_BANG_HOI[i][1][7],MemberTong)

return

end
end

elseif (nInfoID == 4) then


for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) then


for j=2,getn(DANH_SACH_BANG_HOI[i][3]) do
if (DANH_SACH_BANG_HOI[i][3][j][1] ~= "") then
NumberDirector = NumberDirector + 1
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][j][1] ~= "") then
NumberManager = NumberManager + 1
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][5]) do
if (DANH_SACH_BANG_HOI[i][5][j][1] ~= "") then

MemberTong = MemberTong..DANH_SACH_BANG_HOI[i][5][j][1].." "..DANH_SACH_BANG_HOI[i][1][4].." "..DANH_SACH_BANG_HOI[i][5][j][5].." "..DANH_SACH_BANG_HOI[i][5][j][6].." "..DANH_SACH_BANG_HOI[i][5][j][7].." "..DANH_SACH_BANG_HOI[i][5][j][8].." "..DANH_SACH_BANG_HOI[i][5][j][9].." "

NumberMember = NumberMember + 1
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][j][1] ~= "") then

MemberTong = MemberTong..DANH_SACH_BANG_HOI[i][6][j][1].." "..DANH_SACH_BANG_HOI[i][1][5].." "..DANH_SACH_BANG_HOI[i][6][j][5].." "..DANH_SACH_BANG_HOI[i][6][j][6].." "..DANH_SACH_BANG_HOI[i][6][j][7].." "..DANH_SACH_BANG_HOI[i][6][j][8].." "..DANH_SACH_BANG_HOI[i][6][j][9].." "

NumberMember = NumberMember + 1
end
end


SendTongInfo(3,nSlectPlayer,NumberDirector,NumberManager,NumberMember,DANH_SACH_BANG_HOI[i][1][1],DANH_SACH_BANG_HOI[i][1][3],DANH_SACH_BANG_HOI[i][1][6],DANH_SACH_BANG_HOI[i][1][7],MemberTong)

return

end
end
end 


end;







function AddMemberTongMain(dwname,name,sex)

ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))


if GetLevel() < 40 then
Talk(1,"","§¼ng cÊp 40 míi cã thÓ gia nhËp Bang Héi !")
return
end


--if GetTask(100) < 200 then
--Talk(1,"","Danh väng cña b¹n kh«ng ®ñ 200, kh«ng thÓ gia nhËp Bang Héi !")
--return
--end

if (GetName() ~= name or GetSex() ~= sex or dwname == 0) then
return
end

for i=1,getn(DANH_SACH_BANG_HOI) do
if (dwname == DANH_SACH_BANG_HOI[i][1][2]) then

NumberMember = 0

for j=2,getn(DANH_SACH_BANG_HOI[i][5]) do
if (DANH_SACH_BANG_HOI[i][5][j][1] ~= "") then
NumberMember = NumberMember + 1
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][j][1] ~= "") then
NumberMember = NumberMember + 1
end
end

if (NumberMember >= TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][2]) then
Msg2Player("Sè l­îng m«n ®Ö ®¹t møc giíi h¹n "..TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][2].." ng­êi, kh«ng thÓ nhËn thªm !")
return
end

for j=2,getn(DANH_SACH_BANG_HOI[i][5+sex]) do
if (DANH_SACH_BANG_HOI[i][5+sex][j][1] == "") then
DANH_SACH_BANG_HOI[i][5+sex][j] = {name,0,0,0,0,0,0,0,0}
MemberAddTong(DANH_SACH_BANG_HOI[i][1][3],DANH_SACH_BANG_HOI[i][1][4+sex],DANH_SACH_BANG_HOI[i][1][1],DANH_SACH_BANG_HOI[i][2][1])


SetTask(8,thang*1000+ngay)
Msg2Player("B¹n ®· gia nhËp bang héi. Sau 7 ngµy b¹n míi cã thÓ tham gia C«ng Thµnh ChiÕn !")
Msg2Tong("<color=yellow>Chµo mõng thµnh viªn míi "..GetName().." võa gia nhËp bang héi !")

return
end
end

DANH_SACH_BANG_HOI[i][5+sex][1+getn(DANH_SACH_BANG_HOI[i][5+sex])] = {name,0,0,0,0,0,0,0,0}

MemberAddTong(DANH_SACH_BANG_HOI[i][1][3],DANH_SACH_BANG_HOI[i][1][4+sex],DANH_SACH_BANG_HOI[i][1][1],DANH_SACH_BANG_HOI[i][2][1])


ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
SetTask(8,thang*1000+ngay)
Msg2Player("B¹n ®· gia nhËp bang héi. Sau 7 ngµy b¹n míi cã thÓ tham gia C«ng Thµnh ChiÕn !")
Msg2Tong("<color=yellow>Chµo mõng thµnh viªn míi "..GetName().." võa gia nhËp bang héi !")

return

end

end






end;






function InstatePowerTongMain(dwname,name,cFigure,nFigure)


if (dwname == 0) then
return
end


for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) then




if (cFigure == 0) then



for j=2,getn(DANH_SACH_BANG_HOI[i][5]) do
if (DANH_SACH_BANG_HOI[i][5][j][1] ~= "" and DANH_SACH_BANG_HOI[i][5][j][1] == name) then

if (nFigure == 1) then


NumberMember = 0

for k=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][k][1] ~= "") then
NumberMember = NumberMember + 1
end
end

if (NumberMember >= TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][3]) then
Msg2Player("Sè l­îng ®­êng chñ ®¹ ®¹t møc giíi h¹n "..TONG_LEVEL_EXP[DANH_SACH_BANG_HOI[i][1][6]][3].." ng­êi, kh«ng thÓ thªm !")
return
end




for k=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][k][1] == "" ) then

DANH_SACH_BANG_HOI[i][4][k] = {name,NGOAI_HIEU_DUONG_CHU_MAC_DINH,0,DANH_SACH_BANG_HOI[i][5][j][2],0,0,0,0,0}
DANH_SACH_BANG_HOI[i][5][j][1] = ""
UpdateTong(dwname,name)

Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: §­êng Chñ !")
return

end
end

DANH_SACH_BANG_HOI[i][4][1+getn(DANH_SACH_BANG_HOI[i][4])] = {name,NGOAI_HIEU_DUONG_CHU_MAC_DINH,0,DANH_SACH_BANG_HOI[i][5][j][2],0,0,0,0,0}
DANH_SACH_BANG_HOI[i][5][j][1] = ""
UpdateTong(dwname,name)
 
return

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

DANH_SACH_BANG_HOI[i][3][k] = {name,NGOAI_HIEU_TRUONG_LAO_MAC_DINH,0,DANH_SACH_BANG_HOI[i][5][j][2],0,0,0,0,0}
Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: Tr­ëng L·o !")
DANH_SACH_BANG_HOI[i][5][j][1] = ""
UpdateTong(dwname,name) 


return

end
end

DANH_SACH_BANG_HOI[i][3][1+getn(DANH_SACH_BANG_HOI[i][3])] = {name,NGOAI_HIEU_TRUONG_LAO_MAC_DINH,0,DANH_SACH_BANG_HOI[i][5][j][2],0,0,0,0,0}
DANH_SACH_BANG_HOI[i][5][j][1] = ""
UpdateTong(dwname,name) 
return
end


end
end


for j=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][j][1] ~= "" and DANH_SACH_BANG_HOI[i][6][j][1] == name) then

if (nFigure == 1) then
Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: Tr­ëng L·o!")
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
DANH_SACH_BANG_HOI[i][4][k] = {name,NGOAI_HIEU_DUONG_CHU_MAC_DINH,1,DANH_SACH_BANG_HOI[i][6][j][2],0,0,0,0,0}
Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: §­êng Chñ !")
DANH_SACH_BANG_HOI[i][6][j][1] = ""
UpdateTong(dwname,name)
return
end
end

DANH_SACH_BANG_HOI[i][4][1+getn(DANH_SACH_BANG_HOI[i][4])] = {name,NGOAI_HIEU_DUONG_CHU_MAC_DINH,1,DANH_SACH_BANG_HOI[i][6][j][2],0,0,0,0,0}
DANH_SACH_BANG_HOI[i][6][j][1] = ""
Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: §­êng Chñ !")
UpdateTong(dwname,name)
return

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
DANH_SACH_BANG_HOI[i][3][k] = {name,NGOAI_HIEU_TRUONG_LAO_MAC_DINH,1,DANH_SACH_BANG_HOI[i][6][j][2],0,0,0,0,0}
DANH_SACH_BANG_HOI[i][6][j][1] = ""
Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: Tr­ëng L·o !")
UpdateTong(dwname,name)
return
end
end

DANH_SACH_BANG_HOI[i][3][1+getn(DANH_SACH_BANG_HOI[i][3])] = {name,NGOAI_HIEU_TRUONG_LAO_MAC_DINH,1,DANH_SACH_BANG_HOI[i][6][j][2],0,0,0,0,0}
DANH_SACH_BANG_HOI[i][6][j][1] = ""
Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: §­êng Chñ !")
UpdateTong(dwname,name)
return

end

end
end





elseif (cFigure == 1) then




for j=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][j][1] ~= "" and DANH_SACH_BANG_HOI[i][4][j][1] == name) then

if (nFigure == 0) then

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
if (DANH_SACH_BANG_HOI[i][5][k][1] == "" ) then
DANH_SACH_BANG_HOI[i][5][k] = {name,DANH_SACH_BANG_HOI[i][4][j][4],0,0,0,0,0,0,0}
DANH_SACH_BANG_HOI[i][4][j][1] = ""
Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: M«n §Ö !")
UpdateTong(dwname,name)
return
end
end

DANH_SACH_BANG_HOI[i][5][1+getn(DANH_SACH_BANG_HOI[i][5])] = {name,DANH_SACH_BANG_HOI[i][4][j][4],0,0,0,0,0,0,0}
DANH_SACH_BANG_HOI[i][4][j][1] = ""
Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: M«n §Ö!")
UpdateTong(dwname,name)
return

else

for k=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][k][1] == "" ) then
DANH_SACH_BANG_HOI[i][6][k] = {name,DANH_SACH_BANG_HOI[i][4][j][4],0,0,0,0,0,0,0}
DANH_SACH_BANG_HOI[i][4][j][1] = ""
Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: M«n §Ö!")
UpdateTong(dwname,name)
return
end
end

DANH_SACH_BANG_HOI[i][6][1+getn(DANH_SACH_BANG_HOI[i][6])] = {name,DANH_SACH_BANG_HOI[i][4][j][4],0,0,0,0,0,0,0}
DANH_SACH_BANG_HOI[i][4][j][1] = ""
Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: M«n §Ö!")
UpdateTong(dwname,name)
return
end




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
DANH_SACH_BANG_HOI[i][3][k] = {name,NGOAI_HIEU_TRUONG_LAO_MAC_DINH,DANH_SACH_BANG_HOI[i][4][j][3],DANH_SACH_BANG_HOI[i][4][j][4],DANH_SACH_BANG_HOI[i][4][j][5],DANH_SACH_BANG_HOI[i][4][j][6],DANH_SACH_BANG_HOI[i][4][j][7],DANH_SACH_BANG_HOI[i][4][j][8],0}
DANH_SACH_BANG_HOI[i][4][j][1] = ""
Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: Tr­ëng L·o!")
UpdateTong(dwname,name)
return
end
end

DANH_SACH_BANG_HOI[i][3][1+getn(DANH_SACH_BANG_HOI[i][3])] = {name,NGOAI_HIEU_TRUONG_LAO_MAC_DINH,DANH_SACH_BANG_HOI[i][4][j][3],DANH_SACH_BANG_HOI[i][4][j][4],DANH_SACH_BANG_HOI[i][4][j][5],DANH_SACH_BANG_HOI[i][4][j][6],DANH_SACH_BANG_HOI[i][4][j][7],DANH_SACH_BANG_HOI[i][4][j][8],0}
DANH_SACH_BANG_HOI[i][4][j][1] = ""
UpdateTong(dwname,name)
return

end


end
end






elseif (cFigure == 2) then



for j=2,getn(DANH_SACH_BANG_HOI[i][3]) do
if (DANH_SACH_BANG_HOI[i][3][j][1] ~= "" and DANH_SACH_BANG_HOI[i][3][j][1] == name) then

if (nFigure == 0) then


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
DANH_SACH_BANG_HOI[i][5][k] = {name,DANH_SACH_BANG_HOI[i][3][j][4],0,0,0,0,0,0,0}
DANH_SACH_BANG_HOI[i][3][j][1] = ""
Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: M«n §Ö!")
UpdateTong(dwname,name)
return
end
end

DANH_SACH_BANG_HOI[i][5][1+getn(DANH_SACH_BANG_HOI[i][5])] = {name,DANH_SACH_BANG_HOI[i][3][j][4],0,0,0,0,0,0,0}
DANH_SACH_BANG_HOI[i][3][j][1] = ""
Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: M«n §Ö!")
UpdateTong(dwname,name)
return

else

for k=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][k][1] == "" ) then
DANH_SACH_BANG_HOI[i][6][k] = {name,DANH_SACH_BANG_HOI[i][3][j][4],0,0,0,0,0,0,0}
DANH_SACH_BANG_HOI[i][3][j][1] = ""
Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: M«n §Ö!")
UpdateTong(dwname,name)
return
end
end
DANH_SACH_BANG_HOI[i][6][1+getn(DANH_SACH_BANG_HOI[i][6])] = {name,DANH_SACH_BANG_HOI[i][3][j][4],0,0,0,0,0,0,0}
DANH_SACH_BANG_HOI[i][3][j][1] = ""
Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: M«n §Ö!")
UpdateTong(dwname,name)
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
DANH_SACH_BANG_HOI[i][4][k] = {name,NGOAI_HIEU_DUONG_CHU_MAC_DINH,DANH_SACH_BANG_HOI[i][3][j][3],DANH_SACH_BANG_HOI[i][3][j][4],DANH_SACH_BANG_HOI[i][3][j][5],DANH_SACH_BANG_HOI[i][3][j][6],DANH_SACH_BANG_HOI[i][3][j][7],DANH_SACH_BANG_HOI[i][3][j][8],0}
DANH_SACH_BANG_HOI[i][3][j][1] = ""
Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: §­êng Chñ !")
UpdateTong(dwname,name)
return
end
end
DANH_SACH_BANG_HOI[i][4][1+getn(DANH_SACH_BANG_HOI[i][4])] = {name,NGOAI_HIEU_DUONG_CHU_MAC_DINH,DANH_SACH_BANG_HOI[i][3][j][3],DANH_SACH_BANG_HOI[i][3][j][4],DANH_SACH_BANG_HOI[i][3][j][5],DANH_SACH_BANG_HOI[i][3][j][6],DANH_SACH_BANG_HOI[i][3][j][7],DANH_SACH_BANG_HOI[i][3][j][8],0}

DANH_SACH_BANG_HOI[i][3][j][1] = ""

Msg2Tong("<color=yellow>"..name.." ®· ®­îc thay ®æi danh hiÖu: §­êng Chñ !")
UpdateTong(dwname,name)
return
end


end
end







end

end
end

end;



function ChangeTitleFeMaleTongMain(dwname,title)

for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) then

DANH_SACH_BANG_HOI[i][1][5] = title
ChangeTitleFeMaleTong(dwname)
 return
end
end

end;


function ChangeTitleMaleTongMain(dwname,title)

for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) then

DANH_SACH_BANG_HOI[i][1][4] = title
ChangeTitleMaleTong(dwname)
 return
end
end

end;


function ChangeTitleTongMain(dwname,name,title)

for i=1,getn(DANH_SACH_BANG_HOI) do
if (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) then

if (DANH_SACH_BANG_HOI[i][2][1] ~= "" and name == DANH_SACH_BANG_HOI[i][2][1]) then

DANH_SACH_BANG_HOI[i][2][2] = title
ChangeTitleTong(dwname,name)
 
return
end

for j=2,getn(DANH_SACH_BANG_HOI[i][3]) do
if (DANH_SACH_BANG_HOI[i][3][j][1] ~= "" and name == DANH_SACH_BANG_HOI[i][3][j][1]) then
DANH_SACH_BANG_HOI[i][3][j][2] = title
ChangeTitleTong(dwname,name)
 
return
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][4]) do
if (DANH_SACH_BANG_HOI[i][4][j][1] ~= "" and name == DANH_SACH_BANG_HOI[i][4][j][1]) then
DANH_SACH_BANG_HOI[i][4][j][2] = title
ChangeTitleTong(dwname,name)
 
return
end
end


end
end

end;




function KickPowerTongMain(dwname,Figure,name)

if (Figure == 0) then
for i=1,getn(DANH_SACH_BANG_HOI) do
if (dwname == DANH_SACH_BANG_HOI[i][1][2]) then


for j=2,getn(DANH_SACH_BANG_HOI[i][5]) do
if (DANH_SACH_BANG_HOI[i][5][j][1] ~= "" and DANH_SACH_BANG_HOI[i][5][j][1] == name) then
DANH_SACH_BANG_HOI[i][5][j][1] = ""
DeleteTong(name)
return
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][j][1] ~= "" and DANH_SACH_BANG_HOI[i][6][j][1] == name) then
DANH_SACH_BANG_HOI[i][6][j][1] = ""
DeleteTong(name)
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
Msg2Tong("<color=yellow>"..name.." ®· rêi khái Bang Héi !")
KickOutSelf()
DeleteTong()
return
end
end

for j=2,getn(DANH_SACH_BANG_HOI[i][6]) do
if (DANH_SACH_BANG_HOI[i][6][j][1] ~= "" and DANH_SACH_BANG_HOI[i][6][j][1] == name) then
DANH_SACH_BANG_HOI[i][6][j][1] = ""
Msg2Tong("<color=yellow>"..name.." ®· rêi khái Bang Héi !")
KickOutSelf()
DeleteTong()
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
Msg2Tong("<color=yellow>"..name.." ®· rêi khái Bang Héi !")
KickOutSelf()
DeleteTong()
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
Msg2Tong("<color=yellow>"..name.." ®· rêi khái Bang Héi !")
KickOutSelf()
DeleteTong()
return
end
end

end
end


end

end;










function DepositMoneyMain(dwname,playername,money)





for i=1,getn(DANH_SACH_BANG_HOI) do

if (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) then




if (GetName() == playername) then
if (GetCash() >= money and (DANH_SACH_BANG_HOI[i][1][7] + money) <= 2000000000) then


tien_gop = GetCash()
Pay(money)

if (GetCash() == (tien_gop - money)) then
DANH_SACH_BANG_HOI[i][1][7] = DANH_SACH_BANG_HOI[i][1][7] + money
Msg2Player("B¹n ®· ®ãng gãp "..money.." l­îng vµo ng©n quü bang héi !")
Msg2Tong("<color=yellow>"..GetName().." ®· ®ãng gãp "..money.." l­îng vµo ng©n quü bang héi. Ng©n quü bang t¨ng lªn: "..DANH_SACH_BANG_HOI[i][1][7].." l­îng !")
	thoigian = tonumber(date("%H%M%d%m"))
	local IPData = openfile("data/logbanghoi.txt", "a");
	write(IPData,""..i.." - ["..DANH_SACH_BANG_HOI[i][1][1].."] - "..GetName().." - Gui Tien: "..money.." - "..thoigian.."\n");
	closefile(IPData)

else
Msg2Player("Hack a cung yeu !")
end

elseif (GetCash() < money) then
Msg2Player("B¹n kh«ng mang ®ñ sè tiÒn cÇn thiÕt !")
else
Msg2Player("Ng©n l­îng trong bang qu¸ lín !")
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

if (GetCash() == (tien_rut + money)) then
Msg2Player("B¹n ®· rót "..money.." l­îng ra khái ng©n quü bang héi !")
Msg2Tong("<color=yellow>"..GetName().." ®· rót "..money.." l­îng ra khái ng©n quü bang héi. Ng©n quü bang gi¶m xuèng cßn: "..DANH_SACH_BANG_HOI[i][1][7].." l­îng !")

	thoigian = tonumber(date("%H%M%d%m"))
	local IPData = openfile("Data/logbanghoi.txt", "a");
	write(IPData,""..i.." - ["..DANH_SACH_BANG_HOI[i][1][1].."] - "..GetName().." - Rut Tien: "..money.." - "..thoigian.."\n");
	closefile(IPData)
else
Pay(money)
Msg2Player("Hack a cung yeu !")
end

elseif (DANH_SACH_BANG_HOI[i][1][7] < money) then
Msg2Player("Bang kh«ng cßn nhiÒu ng©n l­îng nh­ vËy !")
else
Msg2Player("Ng©n l­îng trong bang kh«ng ®ñ !")
end

end

end

end


end;






function AddMoneyMain(dwname,nameBC,money)




for i=1,getn(DANH_SACH_BANG_HOI) do

if (DANH_SACH_BANG_HOI[i][1][2] ~= 0 and dwname == DANH_SACH_BANG_HOI[i][1][2]) then


if (DANH_SACH_BANG_HOI[i][2][1] == nameBC) then
if ((DANH_SACH_BANG_HOI[i][1][7] + money) <= 2000000000) then
DANH_SACH_BANG_HOI[i][1][7] = DANH_SACH_BANG_HOI[i][1][7] + money
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
	Say("§æi bang héi !",2,
	"§æi Bang Chñ /doibangchu",
	"Thoat./no")
else
	if w == 53 or w == 3 or w == 66 then
	KhuVucBang()
	elseif w == 116 then
	LanhDiaBang()
	else
	ThuThue()
	end
end
end


function ThuThue()
if DSTT[vitritt()][1] == 0 then
	Say("<color=green>Nha DÞch<color>: HiÖn t¹i thµnh thÞ <color=blue>"..DSTT[vitritt()][2].."<color> ch­a cã bang héi chiÕm lÜnh ",1,
	"Tho¸t./no")
else
	if GetTongName() == DSTT[vitritt()][4] and GetName() == DSTT[vitritt()][8] then
			Say("<color=green>Nha DÞch<color>: B¹n ®ang lµm th¸i thó thµnh thÞ <color=blue>"..DSTT[vitritt()][2].."<color>\nThuÕ thµnh: <color=yellow>"..DSTT[vitritt()][6].."%<color>\nThuÕ vËt phÈm: <color=yellow>"..DSTT[vitritt()][7].."%<color>",3,
			"Söa ®æi ThuÕ Thµnh/suathue",
			"Söa ®æi ThuÕ VËt PhÈm/suathue",
			"Thoat./no")
	else
	Say("<color=green>Nha DÞch<color>: Bang héi chiÕm lÜnh: <color=blue>"..DSTT[vitritt()][4].."<color>\nTh¸i Thó: <color=red>"..DSTT[vitritt()][8].."<color>\nThuÕ thµnh: <color=yellow>"..DSTT[vitritt()][6].."%<color> - vËt phÈm: <color=yellow>"..DSTT[vitritt()][7].."%<color>",1,
	"Thoat./no")
	end
end
end
function no()
if GetAccount() == "adminso2" then
	save()
	Msg2Player("Da save")
end
end
function suathue(nsel)
if GetTongName() == DSTT[vitritt()][4] and GetName() == DSTT[vitritt()][8] then
if nsel == 0 then
	OpenStringBox(2,"NhËp sè 1 - 20","thuett")
elseif nsel == 1 then
	OpenStringBox(2,"NhËp sè 1 - 20","thuevp")
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
if tonumber(num) <= 10 then
	DSTT[vitritt()][6] = num
	Msg2Player("TrÞ sè thuÕ thµnh thÞ ®· ®­îc cËp nhËt: "..num.."% ")
LoadTongMapMain()
else
	Talk(1,"","ThuÕ suÊt chØ ®­îc nhËp tõ 1 - 10% ")
end
end
end

function thuevp(num)
if GetTongName() == DSTT[vitritt()][4] and GetName() == DSTT[vitritt()][8] and DSTT[vitritt()][1] == 1 then
if tonumber(num) <= 10 then
	DSTT[vitritt()][7] = num
	Msg2Player("TrÞ sè thuÕ vËt phÈm ®· ®­îc cËp nhËt: "..num.."% ")
LoadTongMapMain()
else
	Talk(1,"","ThuÕ suÊt chØ ®­îc nhËp tõ 1 - 10% ")

end

end

end







Include("\\datascript\\banghoi\\mapbanghoi.lua")
Include("\\datascript\\banghoi\\danhsachthanhthi.lua")




function KhuVucBang()
if GetTongName() == "" then
Talk(1,"","ChØ cã thµnh viªn cña bang héi míi cã thÓ vµo l·nh ®Þa bang héi !")
return
end

if GetTongFigure() == 3 and checksoluongbang() == 0 then
Say("<color=green>Qu¶n Lý Khu Vùc<color>: Mçi bang héi cã mét l·nh ®Þa riªng, ta lµ ng­êi qu¶n lý viÖc ph©n chia l·nh ®Þa cho c¸c bang héi",4,
"§¨ng Ký L·nh §Þa Bang Héi/dangkykhuvucbang",
"ChuyÓn vÞ bang chñ /doibangchu",
"KiÓm Tra Thµnh Viªn §ang Online/kiemtraonline",
"Tho¸t./no")
else
Say("<color=green>Qu¶n Lý Khu Vùc<color>: Mçi bang héi cã mét l·nh ®Þa riªng, ta lµ ng­êi qu¶n lý viÖc ph©n chia l·nh ®Þa cho c¸c bang héi",4,
"Di ChuyÓn Vµo L·nh §Þa Bang Héi/dichuyenkhuvucbang",
"ChuyÓn vÞ bang chñ /doibangchu",
"KiÓm Tra Thµnh Viªn §ang Online/kiemtraonline",
"Tho¸t./no")
end
end



function kiemtraonline()
if GetTongName() == "" then
Talk(1,"","ChØ cã thµnh viªn cña bang héi míi cã thÓ vµo l·nh ®Þa bang héi !")
return
end
Say("<color=green>Qu¶n Lý Khu Vùc<color>: Bang Héi "..GetTongName().." , ng­¬i cÇn kiÓm tra thµnh viªn ®ang online?",6,
"KiÓm Tra Thµnh Viªn §ang Online /kiemtra0",
"KiÓm Tra Bang Chñ vµ Tr­ëng L·o/kiemtra1",
"KiÓm Tra §­êng Chñ /kiemtra2",
"KiÓm Tra M«n §Ö Nam /kiemtra3",
"KiÓm Tra M«n §Ö N÷ /kiemtra4",
"Tho¸t./no")
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
	Msg2Player("HiÖn kh«ng cã Thµnh Viªn nµo ®ang online !")
else
Msg2Player("Danh s¸ch thµnh viªn bang ®ang online: ")
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
	Msg2Player("HiÖn kh«ng cã Bang Chñ hoÆc Tr­ëng L·o nµo ®ang online !")
else
Msg2Player("Danh s¸ch Bang Chñ vµ Tr­ëng L·o ®ang online: ")
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
	Msg2Player("HiÖn kh«ng cã §­êng Chñ nµo ®ang online !")
else
Msg2Player("Danh s¸ch §­êng Chñ ®ang online: ")
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
	Msg2Player("HiÖn kh«ng cã M«n §Ö Nam nµo ®ang online !")
else
Msg2Player("Danh s¸ch M«n §Ö Nam ®ang online: ")
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
	Msg2Player("HiÖn kh«ng cã M«n §Ö N÷ nµo ®ang online !")
else
Msg2Player("Danh s¸ch M«n §Ö N÷ ®ang online: ")
for k=1,getn(mangbang) do
	Msg2Player(""..k..". "..danhhieubang(mangbang[k][1]).."- "..mangbang[k][2].." ")
end
end
end


function danhhieubang(num)
if num == 1 then
return "<color=green>§­êng Chñ <color=red>"
elseif num == 2 then
return "<color=yellow>Tr­ëng L·o <color=red>"
elseif num == 3 then
return "<color=pink>Bang Chñ <color=red>"
else
return "M«n §Ö "
end
end



function ChangeTongCamp(camp,dwname,name)
if GetCurCamp() == camp then
Msg2Player("Trïng mµu s¾c bang héi hiÖn t¹i !")
return
end
mausac = camp
if GetTongName() == "" then
Talk(1,"","ChØ cã thµnh viªn cña bang héi míi cã thÓ vµo l·nh ®Þa bang héi !")
return
end

if GetTongFigure() ~= 3 then
Talk(1,"","ChØ cã bang chñ míi thùc hiÖn ®­îc chøc n¨ng nµy !")
return
end

cash = GetCash()
if GetCash() < 1000000 then
Talk(1,"","B¹n kh«ng mang ®ñ 100 v¹n l­îng !")
return
end
namebc = GetTongName()
Pay(1000000)
if GetCash() == cash - 1000000 then
	for i=1,getn(DANH_SACH_BANG_HOI) do
		
if (DANH_SACH_BANG_HOI[i][1][1] ~= "" and GetTongName() == DANH_SACH_BANG_HOI[i][1][1]) then
			DANH_SACH_BANG_HOI[i][1][3] = mausac;
			if mausac == 1 then
			Msg2Tong("<color=yellow>Bang chñ ®· ®æi mµu bang héi sang <color=fire>ChÝnh Ph¸i ")
			elseif mausac == 2 then
			Msg2Tong("<color=yellow>Bang chñ ®· ®æi mµu bang héi sang <color=pink>Tµ Ph¸i ")
			else
			Msg2Tong("<color=yellow>Bang chñ ®· ®æi mµu bang héi sang <color=green>Trung LËp")
			end
		end
	end
	for k=1,GetCountPlayerMax() do
		PlayerIndex = k
		w,x,y = GetWorldPos()
		if GetTongName() == namebc then
			if w == 34 or w == 35 or w == 36 or (w >= 116 and w <= 134 and GetFightState() == 1) or w == 33 or w == 61 or w == 42 or w == 43 or w == 45  then
			Msg2Player("B¹n ®ang trong tr¹ng th¸i kh«ng thÓ ®æi mµu bang héi !")
			else				
				if GetTeam() ~= nil then
					SetCamp(mausac)
				else
					SetCurCamp(mausac)
					SetCamp(mausac)
				end
			
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
Talk(1,"","B¹n ch­a cã Bang Héi, kh«ng thÓ ®¨ng ký l·nh ®Þa !")
return
end
if GetTongFigure() ~= 3 then
Talk(1,"","B¹n kh«ng ph¶i bang chñ, kh«ng thÓ ®¨ng ký l·nh ®Þa")
return
end
nl = GetCash()
--if GetCash() < 10000000 then
--Talk(1,"","B¹n kh«ng ®ñ <color=yellow>1.000 v¹n l­îng")
--return
--end
if checksoluongbang() > 0 then
Talk(1,"","Bang héi cña b¹n ®· ®¨ng ký khu vùc bang héi !")
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

--if getn(MAP_BANG_HOI) >= 18 then
--Talk(1,"","HiÖn t¹i ®· ®¹t giíi h¹n sè l­îng L·nh §Þa Bang Héi, liªn hÖ Administrator ®Ô ®­îc cËp nhËt thªm sè l­îng giíi h¹n !")
--return
--end

	--Pay(10000000)
	--if GetCash() == nl-10000000 then
		thang = tonumber(date("%m"))
		MAP_BANG_HOI[getn(MAP_BANG_HOI)+1] = {GetTongName(),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
		-- 1 Ten bang, 2 CTC LE Bao, 7 Diem Quan Cong, 8 Ngay Reset, 9 - 15 NV Bang Hoi, 16 Loai Nhiem Vu
		BANGI = TaoBang(MAP_BANG_HOI,"MAP_BANG_HOI")
		LuuBang("datascript/banghoi/mapbanghoi.lua",BANGI)
		Msg2SubWorld("Bang chñ <color=yellow>"..GetName().." <color=red> ®· thiÕt lËp thµnh c«ng L·nh §Þa Bang Héi <color=green>"..GetTongName()..". <color=red>Tõ h«m nay, thµnh viªn bang héi h·y còng nhau gãp søc cïng x©y dùng vµ ph¸t triÓn l·nh ®Þa cña m×nh ")
		Talk(0,"")
	--else
	--	Talk(1,"","Hack ha em ")
	--end





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
Talk(1,"","B¹n kh«ng cã bang héi !")
return
end
checksl = checksoluongbang()
if checksl == 0 then
Talk(1,"","Bang héi cña b¹n ch­a thiÕt lËp L·nh §Þa Bang Héi, kh«ng thÓ vµo !")
return
end


Msg2WorldById("<color=yellow>"..GetName().." ®· di chuyÓn vµo L·nh §Þa Bang Héi Chung <color> ",116)
SetFightState(0)
SetLogoutRV(0)
SetPunish(1)
SetRevPos(56)
NewWorld(116,1721,3317)
end


function LanhDiaBang()
if GetTongName() == "" then
Talk(1,"","B¹n kh«ng cã bang héi , kh«ng thÓ sö dông chøc n¨ng !")
return
end

if GetTongFigure() == 3 then
	Say("<color=green>Qu¶n Lý L·nh §Þa<color>: HiÖn t¹i ®ang cã <color=red>"..soluongthanhvienlanhdia().."<color> thµnh viªn trong L·nh §Þa Bang Héi. Vui lßng chän chøc n¨ng qu¶n lý ",7,
	"T¹o Boss Bang Héi /taoboss",
	"Di chuyÓn khu vùc Boss /dichuyenkhuvucboss",
	"N©ng cÊp Boss Bang Héi/nangcapboss",
	"Ph¸t L­¬ng TÊt C¶ Thµnh Viªn /phatluong",
	"NhiÖm vô Bang Héi /nhiemvubang",
	"Shop Bang Héi /shopbanghoi",
	--"Kick Ng­êi Ch¬i L¹/kicknguoichoi",
	"Tho¸t./no")
else
		Say("<color=green>Qu¶n Lý L·nh §Þa<color>: HiÖn t¹i ®ang cã <color=red>"..soluongthanhvienlanhdia().."<color> thµnh viªn trong L·nh §Þa Bang Héi. ",2,
		"Di chuyÓn khu vùc Boss /dichuyenkhuvucboss",
		--"NhiÖm vô Bang Héi /nhiemvubang",
		--"Shop Bang Héi /shopbanghoi",
		"Tho¸t./no")
end
end

function dichuyenkhuvucboss()
vitri = checksoluongbang()
if vitri ~= 0 then
	SetRevPos(56)
	SetPunish(1);
	SetTask(117, 5*18)
	Msg2Player("BÊt tö 5 gi©y, ®Ó trë vÒ Khu Vùc Bang vui lßng tho¸t game vµo l¹i")
	NewWorld(87, TOADO[vitri][1] * 8, TOADO[vitri][2] * 16)
end
end

function shopbanghoi()
vitri = checksoluongbang()
if GetTongName() == "" then
Talk(1,"","B¹n kh«ng cã bang héi , kh«ng thÓ sö dông chøc n¨ng !")
return
end

if GetTongFigure() ~= 3 and GetTongFigure() ~= 2  then
Talk(1,"","ChØ cã Bang Chñ, Tr­ëng L·o míi cã thÓ mua vËt phÈm trong Shop Bang Héi")
return
end
Say("§iÓm Qu©n C«ng hiÖn cã: <color=yellow>"..MAP_BANG_HOI[vitri][7].." ®iÓm<color>\nNg­¬i muèn ®æi vËt phÈm nµo?",5,
"LB Nh©n §«i Kinh NghiÖm 1 Giê [1 ®iÓm]/shopbanghoi2",
"LB §æi Mµu Bang [1 ®iÓm]/shopbanghoi2",
"LB Gi¶m 1 PK [1 ®iÓm]/shopbanghoi2",
"LB TriÖu TËp [1 ®iÓm]/shopbanghoi2",
"Tho¸t./no")
end

function shopbanghoi2(nsel)
vitri = checksoluongbang()
if GetTongName() == "" then
Talk(1,"","B¹n kh«ng cã bang héi , kh«ng thÓ sö dông chøc n¨ng !")
return
end
i = nsel + 1
vatpham = 0
if i == 1 then
vatpham = 401
elseif i == 2 then
vatpham = 402
elseif i == 3 then
vatpham = 403
elseif i == 4 then
vatpham = 404
end

if vatpham ~= 0 then
vang = MAP_BANG_HOI[vitri][7]
if MAP_BANG_HOI[vitri][7] >= 1 then
	MAP_BANG_HOI[vitri][7] = MAP_BANG_HOI[vitri][7] - 1
	save()
	if MAP_BANG_HOI[vitri][7] == vang - 1 then
			idxitem = AddEventItem(vatpham)
			Msg2Tong("<color=green>"..GetName().." võa mua "..GetNameItemBox(idxitem)..". §iÓm qu©n c«ng cßn l¹i lµ: "..MAP_BANG_HOI[vitri][7].."")
			inlogShopBangHoi("["..GetTongName().."] - "..GetName().." - "..vatpham.." - QC: "..MAP_BANG_HOI[vitri][7].."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Bang héi kh«ng ®ñ ®iÓm Qu©n C«ng ®Ó mua vËt phÈm nµy")
end
end
end

function nhannvbang()
vitri = checksoluongbang()
if MAP_BANG_HOI[vitri][16] == 0 then
Talk(1,"","Bang chñ ch­a chän lo¹i nhiÖm vô, kh«ng thÓ nhËn ")
return
end

SetTaskTemp(36, MAP_BANG_HOI[vitri][16])
Msg2Player("B¹n ®· nhËn nhiÖm vô thµnh c«ng: <color=green>"..nvbang_checkten(MAP_BANG_HOI[vitri][16]).." ")
Msg2Tong("<color=green>- "..GetName().." ®· nhËn nhiÖm vô bang héi: "..nvbang_checkten(MAP_BANG_HOI[vitri][16]).."")
Msg2Tong("<color=yellow>TiÕn ®é hoµn thµnh: <color=pink>"..MAP_BANG_HOI[vitri][GetTaskTemp(36)+8].." / "..nvbang_checksoluong2(GetTaskTemp(36)).."")

end

function nvbang_checksoluong(ntype)
vitri = checksoluongbang()
return MAP_BANG_HOI[vitri][ntype+8]
end
function nvbang_checksoluong2(ntype)
if ntype == 1 then
return 1
elseif ntype == 2 then
return 1
elseif ntype == 3 then
return 3000
elseif ntype == 4 then
return 50
elseif ntype == 5 then
return 15
elseif ntype == 6 then
return 50
elseif ntype == 7 then
return 50
else
return 99999999
end
end
function nvbang_checkten(ntype)
if ntype == 1 then
return "Tiªu DiÖt Qu¸i ë Hoa S¬n"
elseif ntype == 2 then
return "TÝch lòy ®iÓm Tèng Kim"
elseif ntype == 3 then
return "H¸i th¶o d­îc §µo Hoa Nguyªn"
elseif ntype == 4 then
return "Tiªu diÖt Boss Xanh"
elseif ntype == 5 then
return "Tham gia Phong L¨ng §é "
elseif ntype == 6 then
return "Giao nép Trang Søc"
elseif ntype == 7 then
return "Giao nép Vò KhÝ "
else
return "NhiÖm vô lçi"
end
end


function nvbang_giaonhiemvu()
vitri = checksoluongbang()
if GetTaskTemp(36) < 1 or GetTaskTemp(36) > 7 then
Talk(1,"","Ng­¬i ch­a ®­îc giao nhiÖm vô bang héi, kh«ng thÓ giao nép. Vui lßng ®îi Bang Chñ kÝch ho¹t nhiÖm vô ")
return
end
task = GetTaskTemp(36)  + 356
nhiemvu = 8+GetTaskTemp(36)

if MAP_BANG_HOI[vitri][nhiemvu] >= nvbang_checksoluong2(GetTaskTemp(36)) then
Talk(1,"","TiÕn ®é nhiÖm vô bang héi ®· ®¹t, kh«ng cÇn giao thªm n÷a")
return
end

if  GetTaskTemp(36) >= 1 and GetTaskTemp(36) <= 5 then
	if GetTask(task) > 0 then
		MAP_BANG_HOI[vitri][nhiemvu] = MAP_BANG_HOI[vitri][nhiemvu] + GetTask(task)
		
		if GetTaskTemp(36) == 1 then
			Msg2Tong("<color=yellow>"..GetName().." ®· giao nép "..GetTask(task).." thñ cÊp Qu¸i VËt Hoa S¬n")
			soluong = floor(GetTask(task) / 1000)
			if soluong > 0 then
				SetTask(115, GetTask(115) + soluong)
				for k=1,soluong*6 do AddEventItem(23) end
				Msg2Player("B¹n nhËn ®­îc "..soluong.." ®iÓm Cèng HiÕn vµ "..(soluong*6).." Khiªu ChiÕn LÖnh")
			end
		elseif GetTaskTemp(36) == 2 then
			Msg2Tong("<color=yellow>"..GetName().." ®· giao nép "..GetTask(task).." ®iÓm TÝch Lòy Tèng Kim")
			soluong = floor(GetTask(task) / 1000)
			if soluong > 0 then
				SetTask(115, GetTask(115) + soluong)
				for k=1,soluong*6 do AddEventItem(23) end
				Msg2Player("B¹n nhËn ®­îc "..soluong.." ®iÓm Cèng HiÕn vµ "..(soluong*6).." Khiªu ChiÕn LÖnh")
			end
		elseif GetTaskTemp(36) == 3 then
			Msg2Tong("<color=yellow>"..GetName().." ®· giao nép "..GetTask(task).." c©y D­îc PhÈm")
			soluong = floor(GetTask(task) / 60)
			if soluong > 0 then
				SetTask(115, GetTask(115) + soluong)
				for k=1,soluong*6 do AddEventItem(23) end
				Msg2Player("B¹n nhËn ®­îc "..soluong.." ®iÓm Cèng HiÕn vµ "..(soluong*6).." Khiªu ChiÕn LÖnh")
			end	
		elseif GetTaskTemp(36) == 4 then
			Msg2Tong("<color=yellow>"..GetName().." ®· giao nép "..GetTask(task).." thñ cÊp Boss")
			soluong = GetTask(task)
			if soluong > 0 then
				SetTask(115, GetTask(115) + soluong)
				for k=1,soluong*6 do AddEventItem(23) end
				Msg2Player("B¹n nhËn ®­îc "..soluong.." ®iÓm Cèng HiÕn vµ "..(soluong*6).." Khiªu ChiÕn LÖnh")
			end	
		elseif GetTaskTemp(36) == 5 then
			Msg2Tong("<color=yellow>"..GetName().." ®· giao nép "..GetTask(task).." lÇn tham gia Phong L¨ng §é ")
			soluong = GetTask(task)
			if soluong > 0 then
				SetTask(115, GetTask(115) + soluong*5)
				for k=1,30 do AddEventItem(23) end
				Msg2Player("B¹n nhËn ®­îc 5 ®iÓm Cèng HiÕn vµ 30 Khiªu ChiÕn LÖnh")
			end	
		end
		SetTask(task, 0)
	else
		Talk(1,"","B¹n kh«ng cã tÝch lòy ®Ó giao nhiÖm vô ")
	end
else
	
	if GetTaskTemp(36) == 6 then
	OpenCheckItemBox("Hßm KiÓm Tra Item","H·y ®Æt vµo ®©y 1 mãn Trang Søc - HÖ "..nvbang_checkhe().." ®· t×m ®­îc","ok")
	else
	OpenCheckItemBox("Hßm KiÓm Tra Item","H·y ®Æt vµo ®©y 1 mãn Vò KhÝ - HÖ "..nvbang_checkhe().." ®· t×m ®­îc","ok")
	end
end
end

function nvbang_checkhe()
	ngay = tonumber(date("%d"))
	nguhanh = ""
	if mod(ngay,5) == 1 then
	nguhanh = "Kim"
	elseif mod(ngay,5) == 2 then
	nguhanh = "Méc"
	elseif mod(ngay,5) == 3 then
	nguhanh = "Thñy"
	elseif mod(ngay,5) == 4 then
	nguhanh = "Háa"
	elseif mod(ngay,5) == 0 then
	nguhanh = "Thæ "
	end
return nguhanh
end
function ok()
ngay = tonumber(date("%d"))
	nguhanh = 0
	if mod(ngay,5) == 1 then
	nguhanh = 0
	elseif mod(ngay,5) == 2 then
	nguhanh = 1
	elseif mod(ngay,5) == 3 then
	nguhanh = 2
	elseif mod(ngay,5) == 4 then
	nguhanh = 3
	elseif mod(ngay,5) == 0 then
	nguhanh = 4
	end


vitri = checksoluongbang()
idx = GetIdxItemBox ()
if (idx == -1) then
Msg2Player("Trong r­¬ng cã nhiÒu h¬n 1 vËt phÈm ")
elseif (idx == 0) then
Msg2Player("Trong r­¬ng kh«ng cã vËt phÈm nµo ")
elseif (idx == -2) then
Msg2Player("VËt phÈm ®Æt  vµo kh«ng ph¶i lµ trang bÞ ")
elseif (idx == -3) then
Msg2Player("Trang bÞ ®Æt vµo ®· bÞ khãa b¶o hiÓm ")
else
	if GetTaskTemp(36) == 6 then
		if GetParticularItem(idx) == 0 and (GetDetailTypeItem(idx) == 9 or GetDetailTypeItem(idx) == 3 or GetDetailTypeItem(idx) == 4) and GetSeriItem(idx) == nguhanh then
			DelEquipIdx(idx)
			if GetIdxItemBox() == 0 then
				MAP_BANG_HOI[vitri][nhiemvu] = MAP_BANG_HOI[vitri][14] + 1
				Msg2Tong("<color=yellow>"..GetName().." ®· giao nép 1 Trang Søc ®Ó lµm nhiÖm vô bang héi")
				soluong = 1
				SetTask(115, GetTask(115) + soluong)
				for k=1,soluong*6 do AddEventItem(23) end
				Msg2Player("B¹n nhËn ®­îc "..soluong.." ®iÓm Cèng HiÕn vµ "..(soluong*6).." Khiªu ChiÕn LÖnh")
			else 
			Talk(1,"","Hack ha em")
			end
		else 
		Talk(1,"","Trang bÞ ®Æt vµo kh«ng ph¶i lµ <color=yellow>Trang Søc - HÖ "..nvbang_checkhe().."<color> ")
		end	
	elseif GetTaskTemp(36) == 7 then
		Msg2Player(" "..GetParticularItem(idx).." "..GetDetailTypeItem(idx).." ")
		if (GetDetailTypeItem(idx) == 0 or GetDetailTypeItem(idx) == 1) and GetSeriItem(idx) == nguhanh then
			DelEquipIdx(idx)
			if GetIdxItemBox() == 0 then
				MAP_BANG_HOI[vitri][nhiemvu] = MAP_BANG_HOI[vitri][15] + 1
				Msg2Tong("<color=yellow>"..GetName().." ®· giao nép 1 Vò KhÝ ®Ó lµm nhiÖm vô bang héi")
				soluong = 1
				SetTask(115, GetTask(115) + soluong)
				for k=1,soluong*6 do AddEventItem(23) end
				Msg2Player("B¹n nhËn ®­îc "..soluong.." ®iÓm Cèng HiÕn vµ "..(soluong*6).." Khiªu ChiÕn LÖnh")
			else 
			Talk(1,"","Hack ha em")
			end
		else 
		Talk(1,"","Trang bÞ ®Æt vµo kh«ng ph¶i lµ <color=yellow>Vò KhÝ - HÖ "..nvbang_checkhe().."<color> ")
		end	
	end
end
end

function nhiemvubang()
vitri = checksoluongbang()
ngay = tonumber(date("%d"))
if MAP_BANG_HOI[vitri][8] ~= ngay then
	MAP_BANG_HOI[vitri][8] = ngay
	for i=9,16 do MAP_BANG_HOI[vitri][i] = 0 end
	Msg2Player("Reset d÷ liÖu ngµy míi")
end


if GetTaskTemp(36) == 0 then
	Say("HiÖn t¹i ng­¬i ch­a nhËn nhiÖm vô nµo, vui lßng chän nhiÖm vô cÇn nhËn",3,
	"NhËn nhiÖm vô bang héi /nvbang_thaydoinhiemvu",
	"KiÓm tra vµ hoµn thµnh NVBH /kiemtranhiemvu",
	"Tho¸t./no")
else
	Say("NhiÖm vô bang héi hiÖn t¹i:\n- <color=green>"..nvbang_checkten(GetTaskTemp(36)).."<color>\n- <color=yellow>"..nvbang_checksoluong(GetTaskTemp(36)).."<color> / "..nvbang_checksoluong2(GetTaskTemp(36)).."",4,	
	"Thay ®æi nhiÖm vô Bang Héi /nvbang_thaydoinhiemvu",
	"Giao nép nhiÖm vô bang /nvbang_giaonhiemvu",
	"KiÓm tra vµ hoµn thµnh NVBH /nvbang_hoanthanh",
	"Tho¸t./no")
end

end
function nvbang_thaydoinhiemvu()
Say("<color=green>Qu¶n Lý L·nh §Þa<color>: Chän lo¹i nhiÖm vô ",8,
"Tiªu diÖt qu¸i /nvbang2",
"Tham gia Tèng Kim /nvbang2",
"H¸i Th¶o D­îc /nvbang2",
"Tiªu diÖt boss /nvbang2",
"Tham gia phong l¨ng ®é /nvbang2",
"Nép trang søc /nvbang2",
"Nép vò khÝ /nvbang2",
"Tho¸t./no")
end

function nvbang2(nsel)
i = nsel + 1
vitri = checksoluongbang()
SetTaskTemp(36,i)
Msg2Tong("<color=yellow>"..GetName().." ®· thay ®æi nhiÖm vô <color=pink>"..nvbang_checkten(i).."")
Msg2Tong("<color=yellow>TiÕn ®é hoµn thµnh: <color=pink>"..MAP_BANG_HOI[vitri][8+i].." / "..nvbang_checksoluong2(i).."")
end

function nvbang_hoanthanh()
gio = tonumber(date("%H"))
i = GetTaskTemp(36)
vitri = checksoluongbang()
if GetTongName() == "" then
Talk(1,"","B¹n kh«ng cã bang héi , kh«ng thÓ sö dông chøc n¨ng !")
return
end
if GetTongFigure() ~= 3 and GetTongFigure() ~= 2 then
Talk(1,"","B¹n kh«ng ph¶i bang chñ hoÆc tr­ëng l·o, kh«ng thÓ sö dông chøc n¨ng !")
return
end

soluongthanhvien = 0
tenbanghoi = GetTongName()
bando,x,y = GetWorldPos()
idxplayer = PlayerIndex
for k=1,GetCountPlayerMax() do
	PlayerIndex = k
	w,x,y = GetWorldPos()
	if GetTongName() == tenbanghoi and bando == w then
		soluongthanhvien = soluongthanhvien + 1
	end
end
PlayerIndex = idxplayer

if soluongthanhvien < 10 then
Msg2Player("Sè l­îng thµnh viªn t¹i b¶n ®å L·nh §Þa Bang kh«ng ®¹t yªu cÇu: <color=yellow>"..soluongthanhvien.." / 10")
return
end

nhiemvu = i+8
if MAP_BANG_HOI[vitri][nhiemvu] >= nvbang_checksoluong2(i) then
	if MAP_BANG_HOI[vitri][nhiemvu] == 9999999 then
			Talk(1,"","<color=red>NhiÖm vô nµy ®· hoµn tÊt vµ nhËn th­ëng ®iÓm qu©n c«ng, kh«ng thÓ nhËn thªm")
	else
			MAP_BANG_HOI[vitri][nhiemvu] = 9999999
			MAP_BANG_HOI[vitri][7] = MAP_BANG_HOI[vitri][7] + 1
			Msg2SubWorld("<color=pink>Bang <color=green>["..GetTongName().."] <color=pink>®· hoµn thµnh nhiÖm vô bang héi <color=green>["..nvbang_checkten(i).."]  <color=pink>Tæng ®iÓm Qu©n C«ng hiÖn cã: <color=green>"..MAP_BANG_HOI[vitri][7].." ®iÓm")
			save()
	end
else
	Msg2Player("<color=yellow>TiÕn ®é hoµn thµnh nhiÖm vô "..nvbang_checkten(i).." lµ: <color=green>"..MAP_BANG_HOI[vitri][8+i].." / "..nvbang_checksoluong2(i).."")
	Msg2Player("<color=red>Ch­a ®ñ ®iÒu kiÖn hoµn thµnh nhiÖm vô bang héi")
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
Talk(1,"","B¹n kh«ng cã bang héi , kh«ng thÓ sö dông chøc n¨ng !")
return
end
if GetTongFigure() ~= 3 then
Talk(1,"","B¹n kh«ng ph¶i bang chñ, kh«ng thÓ sö dông chøc n¨ng !")
return
end
ngay = tonumber(date("%d"))
if MAP_BANG_HOI[vitri][5] ~= ngay then
	if GetTongName() == DSTT[1][4] or GetTongName() == DSTT[2][4] or GetTongName() == DSTT[3][4] or GetTongName() == DSTT[4][4] then
		MAP_BANG_HOI[vitri][4] = 1
		Msg2Player("Bang héi cña b¹n nhËn ®­îc 1 lÇn t¹o Boss Bang Héi miÔn phÝ trong ngµy do ®ang chiÕm 1 thµnh thÞ !")
	else	
		MAP_BANG_HOI[vitri][4] = 0
	end
end
w,x,y = GetWorldPos()
if MAP_BANG_HOI[vitri][4] == 1 then
	if MAP_BANG_HOI[vitri][6] < 0 or MAP_BANG_HOI[vitri][6] > 4 then
	Talk(1,"","Lçi v­ît qu¶ giíi h¹n Map, liªn hÖ GM ®Ó kh¾c phôc !")
	return
	end
	MAP_BANG_HOI[vitri][4] = 2
	MAP_BANG_HOI[vitri][5] = ngay
	-- Add Boss
	bossbang=AddNpc(random(BOSSBH[MAP_BANG_HOI[vitri][6]+1][1],BOSSBH[MAP_BANG_HOI[vitri][6]+1][2]),95,SubWorldID2Idx(87),TOADO[vitri][1] * 8 * 32, TOADO[vitri][2] * 16 * 32)
	SetNpcScript(bossbang, BOSSBH[MAP_BANG_HOI[vitri][6]+1][3]);
	
	Msg2World("Bang chñ "..GetName().."  ®· triÖu håi Boss Bang Héi, c¸c b¹n h·y nhanh chãng tËp trung ra khu vùc s¨n boss ®Ó tiªu diÖt. PhÇn th­ëng mang vÒ cho toµn bang héi ®ang thuéc L·nh §Þa Bang Héi ")
	Msg2SubWorld("<color=pink>Bang chñ <color=yellow>"..GetName().." <color=pink>thuéc bang [<color=yellow>"..GetTongName().."<color=pink>] ®· triÖu håi Boss Bang Héi cÊp "..(MAP_BANG_HOI[vitri][6]+1)..", c¸c thµnh viªn bang héi h·y nhanh chãng tËp trung vµo L·nh §Þa Bang Héi ®Ó tiªu diÖt Boss !")
	inlogin("Bang "..GetTongName().." da Add Boss Mien Phi ")
elseif MAP_BANG_HOI[vitri][4] == 0 then
	cash = GetCash()
	if GetCash() >= 5000000 then
		Pay(5000000)
		if GetCash() == cash - 5000000 then
			if MAP_BANG_HOI[vitri][6] < 0 or MAP_BANG_HOI[vitri][6] > 4 then
			Talk(1,"","Lçi v­ît qu¶ giíi h¹n Map, liªn hÖ GM ®Ó kh¾c phôc !")
			return
			end
			MAP_BANG_HOI[vitri][4] = 2
			MAP_BANG_HOI[vitri][5] = ngay

			bossbang=AddNpc(random(BOSSBH[MAP_BANG_HOI[vitri][6]+1][1],BOSSBH[MAP_BANG_HOI[vitri][6]+1][2]),95,SubWorldID2Idx(87),TOADO[vitri][1] * 8 * 32, TOADO[vitri][2] * 16 * 32)
			SetNpcScript(bossbang, BOSSBH[MAP_BANG_HOI[vitri][6]+1][3]);

			-- Add Boss
			Msg2World("Bang chñ "..GetName().." ®· triÖu håi Boss Bang Héi, c¸c b¹n h·y nhanh chãng tËp trung ra khu vùc s¨n boss ®Ó tiªu diÖt. PhÇn th­ëng mang vÒ cho toµn bang héi ®ang thuéc L·nh §Þa Bang Héi ")
			Msg2SubWorld("<color=pink>Bang chñ <color=yellow>"..GetName().." <color=pink>thuéc bang [<color=yellow>"..GetTongName().." <color=pink>] ®· triÖu håi Boss Bang Héi cÊp "..(MAP_BANG_HOI[vitri][6]+1)..", c¸c thµnh viªn bang héi h·y nhanh chãng tËp trung vµo L·nh §Þa Bang Héi ®Ó tiªu diÖt Boss !")
				inlogin("Bang "..GetTongName().." da Add Boss 200 van ")
		else
			Talk(1,"","Hack ha em !")
		end
	else	
		Talk(1,"","B¹n kh«ng mang ®ñ 500 v¹n l­îng !")
	end
else
	Talk(1,"","Bang héi cña b¹n ®· t¹o Boss Bang Héi ngµy h«m nay råi !")	
end
end

TOADO = {
{235,227},
{218,214},
{235,222},
{175,208},
{163,214},
{158,217},
{191,205},
{191,200},
{191,211},
{191,216},
{191,222},
{191,227},
{191,233},
{196,236},
{197,230},
{197,197},
{197,203},
{197,208},
{197,213},
{197,219},
{197,225},
{202,200},
{202,205},
{202,194},
{202,211},
{202,217},
{202,222},
{202,227},
{202,233},
{202,238},
{208,192},
{208,197},
{208,202},
{208,208},
{207,220},
{208,224},
{208,230},
{207,235},
{207,241},
{218,203},
{218,208},
{218,219},
{218,230},
{218,235},
{225,211},
{224,222},
{223,227},
{229,213},
{229,230},
{235,206},
{235,213},
}

function nangcapboss()
vitri = checksoluongbang()
if GetTongName() == "" then
Talk(1,"","B¹n kh«ng cã bang héi , kh«ng thÓ sö dông chøc n¨ng !")
return
end
if GetTongFigure() ~= 3 then
Talk(1,"","B¹n kh«ng ph¶i bang chñ, kh«ng thÓ sö dông chøc n¨ng !")
return
end
tien = (MAP_BANG_HOI[vitri][6] + 1)*20000000
if GetCash() < tien then
Talk(1,"","§Ó n©ng cÊp Boss Bang Héi lªn cÊp <color=red<"..(MAP_BANG_HOI[vitri][6]+1).."<color> cÇn <color=yellow>"..tien.."<color> l­îng !")
return
end
sl = GetCash()
if MAP_BANG_HOI[vitri][6] < 4 then
	if GetCash() >= tien then
		Pay(tien)
		if GetCash() == sl-tien then
			MAP_BANG_HOI[vitri][6] = MAP_BANG_HOI[vitri][6] + 1
			Msg2SubWorld("<color=pink>Chóc mõng Bang <color=green>"..GetTongName().." <color=pink>®· th¨ng cÊp thµnh c«ng <color=yellow>Boss Bang Héi lªn cÊp "..(MAP_BANG_HOI[vitri][6]+1).."<color=pink>, c¸c b¹n sÏ cã c¬ héi nhËn ®­îc nhiÒu phÇn th­ëng h¬n tõ sù kiÖn nµy ")	
			Msg2SubWorld("<color=pink>CÊp ®é Boss Bang Héi sÏ ®­îc ¸p dông sau khi Server khëi ®éng l¹i gÇn nhÊt ")	
			inlogin("Bang Hoi: "..MAP_BANG_HOI[vitri][1].." Thang cap Boss Hoang Kim thanh cong len cap: "..MAP_BANG_HOI[vitri][6].." ")
			Talk(0,"")
		else
			inlogin("Bang "..MAP_BANG_HOI[vitri][1].." hack tien van "..tien.." ")
			Talk(1,"","Hack ha em !")
		end
	else
		Talk(1,"","B¹n kh«ng ®ñ "..tien.." ®Ó thùc hiÖn n©ng cÊp Boss Bang Héi !")
	end
else
	Talk(1,"","Boss Bang Héi ®· n©ng ®Õn møc tèi ®a !")
end
end

function phatluong()
OpenStringBox(2,"NhËp sè tiÒn. §¬n vÞ: l­îng","okphatluong")
end

function okphatluong(num2)
num = tonumber(num2)
if num2 == 0 or num2 == nil then
Talk(1,"","Kh«ng ®­îc ®Ó trèng ! ")
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
	Msg2Player("B¹n ®· dïng <color=yellow>"..(sl*num).."<color=red> ®Ó ph¸t l­¬ng cho <color=yellow>"..sl.."<color=red> thµnh viªn Bang Héi ®ang trong khu vùc L·nh §Þa")
	if GetCash() == cash-sl*num then
		for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			if GetName() ~= nil or GetName() ~= "" then
			w1,x1,y1 = GetWorldPos()
			if w == w1 and GetTongName() == tongname then
			Earn(num)
			Msg2Player("B¹n nhËn ®­îc <color=yellow>"..num.."<color> l­îng tõ Bang Chñ <color=green>"..name.." ") 
			inlogin("Phat Luong: "..GetAccount().." - "..GetName().." - "..num.." ")
			end
			end
		end	
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Sè tiÒn nhËp vµo: "..num.." l­îng.\nSè thµnh viªn bang héi: "..sl.."\nTæng sè tiÒn cÇn: <color=yellow>"..(sl*num).."<color> l­îng")
end
PlayerIndex = idx
end

function nangcapthoren()
vitri = checksoluongbang()
if GetTongName() == "" then
Talk(1,"","B¹n kh«ng cã bang héi , kh«ng thÓ sö dông chøc n¨ng !")
return
end
if GetTongFigure() ~= 3 then
Talk(1,"","B¹n kh«ng ph¶i bang chñ, kh«ng thÓ sö dông chøc n¨ng !")
return
end
tien = (MAP_BANG_HOI[vitri][3] + 1)*50000000
if GetCash() < tien then
Talk(1,"","§Ó n©ng cÊp Thî RÌn lªn cÊp <color=red<"..(MAP_BANG_HOI[vitri][3]+1).."<color> cÇn <color=yellow>"..tien.."<color> l­îng !")
return
end
sl = GetCash()
if MAP_BANG_HOI[vitri][3] < 5 then
	if GetCash() >= tien then
		Pay(tien)
		if GetCash() == sl-tien then
			MAP_BANG_HOI[vitri][3] = MAP_BANG_HOI[vitri][3] + 1
			Msg2SubWorld("<color=pink>Chóc mõng Bang <color=green>"..GetTongName().." <color=pink>®· th¨ng cÊp thµnh c«ng <color=yellow>Thî RÌn L·nh §Þa lªn cÊp "..(MAP_BANG_HOI[vitri][3]+1).."<color=pink>, x¸c suÊt th¨ng cÊp huyÒn tinh cña Bang Héi ®­îc t¨ng thªm: <color=yellow>"..(MAP_BANG_HOI[vitri][3]*2).."% ")	
			Msg2SubWorld("<color=pink>X¸c suÊt nµy ¸p dông cho toµn thµnh viªn Bang Héi sau khi Server khëi ®éng l¹i gÇn nhÊt ")	
			inlogin("Bang Hoi: "..MAP_BANG_HOI[vitri][1].." Thang cap tho ren thanh cong len cap: "..MAP_BANG_HOI[vitri][3].." ")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em !")
		end
	else
		Talk(1,"","B¹n kh«ng ®ñ "..tien.." ®Ó thùc hiÖn n©ng cÊp Thî RÌn !")
	end
else
	Talk(1,"","Thî RÌn L·nh §Þa ®· n©ng ®Õn møc tèi ®a !")
end
end
function inlogShopBangHoi(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/logShopBangHoi.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
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
Talk(1,"","B¹n kh«ng cã bang héi , kh«ng thÓ sö dông chøc n¨ng !")
return
end
if GetTongFigure() ~= 3 then
Talk(1,"","B¹n kh«ng ph¶i bang chñ, kh«ng thÓ sö dông chøc n¨ng !")
return
end
if MAP_BANG_HOI[vitri][1] == GetTongName() then
	if MAP_BANG_HOI[vitri][2] > 0 then
		for k=1,MAP_BANG_HOI[vitri][2] do
			sl = GetItemCount(249)
			if CheckFreeBoxItem(4,249,1,1) == 0 then		
			Msg2Player("Hµnh trang ®· ®Çy, sè l­îng C«ng Thµnh ChiÕn LÔ Bao hiÖn t¹i cßn: "..MAP_BANG_HOI[vitri][2].." c¸i")
			inlogin("Bang "..MAP_BANG_HOI[vitri][1].." rut Le Bao con: "..MAP_BANG_HOI[vitri][2].." cai !")
			break
			end
			MAP_BANG_HOI[vitri][2] = MAP_BANG_HOI[vitri][2] - 1
			AddEventItem(249)
			if GetItemCount(249) ~= sl + 1 then
			Talk(1,"","Cã lçi liªn quan ®Õn hack vËt phÈm, liªn hÖ GM ®Ó gi¶i quyÕt !")
				
			inlogin("Bang "..MAP_BANG_HOI[vitri][1].." so Luong Le Bang con: "..MAP_BANG_HOI[vitri][2].." -  "..GetItemCount(249).." - "..sl.." cai !")
			break
			end
			Talk(0,"")
		end
		Msg2Player("B¹n ®· nhËn C«ng Thµnh ChiÕn lÔ bao thµnh c«ng !")
	else
		Talk(1,"","Trong kho Bang Héi kh«ng cßn d­ 1 <color=yellow>C«ng Thµnh ChiÕn LÔ Bao<color> nµo !")
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
		Msg2World("Bang chñ ®· c­ìng chÕ kick ng­êi ch¬i <color=yellow>"..GetName().."<color> ra khái L·nh §Þa Bang Héi v× kh«ng cßn ë trong bang nµy n÷a ! ")
		Msg2Player("B¹n bÞ bang chñ kick khái l·nh ®Þa bang héi !")
		SetPunish(0);
		check = 1
		NewWorld(53,200*8,200*16)
	end
end

PlayerIndex = idx
if check == 0 then
	Msg2Player("Trong L·nh §Þa Bang Héi kh«ng cã ng­êi ch¬i thuéc Bang Héi cña b¹n, kh«ng cã ai ®Ó kick !")
end
end

function doibangchu()
Say("B¹n cã ch¾c ch¾n muèn sö dông tÝnh n¨ng ChuyÓn VÞ Bang Chñ kh«ng?\n LÖ phi chuyÓn vÞ: <color=yellow>1 Kim Nguyªn B¶o",2,
"Ta ®ång ý chuyÓn vÞ bang chñ /doibangchu1",
"Ta chän nhÇm /no")
end

function doibangchu1()
if GetTongName() == "" then
Talk(1,"","B¹n kh«ng cã bang héi , kh«ng thÓ sö dông chøc n¨ng !")
return
end
if GetTongFigure() ~= 3 then
Talk(1,"","B¹n kh«ng ph¶i bang chñ, kh«ng thÓ sö dông chøc n¨ng !")
return
end
if GetItemCount(17) == 0 then
Talk(1,"","Ng­¬i kh«ng cã 1 Kim Nguyªn B¶o, kh«ng thÓ chuyÓn vÞ ")
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
Talk(1,"","ChØ ®Ó l¹i 1 tr­ëng l·o míi cã thÓ chuyÓn vÞ Bang Chñ !")
return
end
nameold = GetName()
namenew = DANH_SACH_BANG_HOI[vtbang][3][vttl][1]
DANH_SACH_BANG_HOI[vtbang][2][1] = namenew
DANH_SACH_BANG_HOI[vtbang][3][vttl][1] = ""
Msg2SubWorld("Bang chñ <color=yellow>"..nameold.."<color=red> ®· chuyÓn vÞ chøc vô cña m×nh cho tr­ëng l·o <color=green>"..namenew.." ")
save()
Msg2Player("Chuyen vi bang chu thanh cong !")
DelItem(17)
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