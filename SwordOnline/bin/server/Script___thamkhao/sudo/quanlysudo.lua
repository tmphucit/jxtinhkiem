
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\sudo\\danhsachsuphu.lua")
Include("\\script\\sudo\\danhsachdetu.lua")

function main()

vtsp = checksuphu()
if vtsp ~= 0 then
SetRank(235)
Msg2Player("<color=yellow>Danh s�ch �� t�: ")
for i=1,getn(DE_TU[vtsp]) do
	if mod(i,2) == 1 then
		if DE_TU[vtsp][i] ~= "" then
				Msg2Player("- M� s�: "..floor((i+1)/2).." - T�n: "..DE_TU[vtsp][i].." - Level: "..DE_TU[vtsp][i+1].."")
		end
	end
end
end

vtdetu1,vtdetu2 = checkdetu()
if vtdetu1 > 0 then

Msg2Player("Ng��i hi�n �ang l� �� t� c�a <color=yellow>V� S� - "..SU_PHU[vtdetu1][2].."")
end


if GetLevel() >= 120 then
SayNew("Ng��i mu�n ta gi�p g� ?",8,
"Th�ng ch�c V� S� /thangchuc",
"Ta mu�n nh�n �� T� /nhandetu",
"H� tr� nh�n ��i kinh nghi�m /hotronhandoi",
"Ta mu�n nh�n ph�n th��ng V� S� /nhanthuongkinhnghiem",
"Ta mu�n tr�c xu�t �� t� /trucxuatdetu",
"Ta mu�n t�ng th�m s� l��ng �� t� /tangsoluong",
"Ta mu�n xu�t s� cho �� t� /xuatsu",
"Tho�t./no")
else
SayNew("Ng��i mu�n ta gi�p g� ?",3,
"Ph�c m�nh s� ph� /phucmenhsuphu",
"Ta mu�n ph�n s� m�n /phansumon",
"Tho�t./no")
end
end

function xuatsu()
if GetTeamSize() ~= 2 then
Talk(1,"","Ng��i ch� ���c l�p t� ��i 2 ng��i c�ng v�i �� t� mu�n xu�t s� ")
return
end

vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng��i kh�ng ph�i l� V� S�, kh�ng th� nh�n h� tr� �� t� xu�t s� ")
return
end

team = GetTeam()
name = GetName()
checktientrinh = 0
idxplayer = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team and GetName() ~= name then
		vtdetu1,vtdetu2 = checkdetu()
		if vtdetu1 == 0 then
		Talk(1,"","Ng��i ch�a c� s� ph�, sao c� th� nh�n h� tr� s� �� ���c.")
		checktientrinh = 1
		break
		end
		
		if name ~= SU_PHU[vtdetu1][2] then
			Talk(1,"","Ng��i hi�n �ang l�m �� t� c�a "..SU_PHU[vtdetu1][2]..", kh�ng th� nh�n h� tr� t� "..name.."")
			checktientrinh = 2
			break
		end
		
		if GetLevel() >= 120 then
			checktientrinh = 4
			DE_TU[vtdetu1][vtdetu2] = ""
			DE_TU[vtdetu1][vtdetu2+1] = 0
			SaveBang()
			for p=1,5 do AddEventItem(16) end
			Msg2Player("B�n nh�n ���c 5 Th�n B� ��i H�ng Bao")
			inlog("[Xuat Su - "..GetItemCount(16).." Bao]  - "..GetAccount().." - "..GetName().." - "..GetLevel().."")
			Msg2SubWorld("Ch�c m�ng <color=yellow>"..GetName().." <color=red>�� xu�t s� th�nh c�ng. t� nay c� th� tung ho�nh giang h� �� l�p c�ng cho S�n H� X� T�c")
			break
		else
			Talk(1,"","��ng c�p c�a ng��i ch�a ��t 120, kh�ng th� xu�t s� ")
			checktientrinh = 3
		end
	end
end
PlayerIndex = idxplayer
if checktientrinh == 4 then
for p=1,10 do AddEventItem(16) end
Msg2Player("B�n nh�n ���c 10 Th�n B� ��i H�ng Bao")

inlog("[SU PHU - "..GetItemCount(16).."] - "..GetAccount().." - "..GetName().." - "..GetLevel().."")
else
Talk(1,"","Qu� tr�nh xu�t s� th�t b�i, vui l�ng ki�m tra l�i")
end
end


function phucmenhsuphu()
vtdetu1,vtdetu2 = checkdetu()
if vtdetu1 == 0 then
Talk(1,"","Ng��i ch�a c� s� ph�, sao c� th� ph�c m�nh ���c.")
return
end

if GetLevel() == DE_TU[vtdetu1][vtdetu2+1] then
Talk(1,"","��ng c�p hi�n t�i c�a ng��i b�ng v�i ��ng c�p ph�c m�nh l�n tr��c, h�y th�ng c�p r�i quay l�i g�p ta !")
return
end		

DE_TU[vtdetu1][vtdetu2+1] = GetLevel()
kinhnghiem = 0
if GetLevel() >= 95 and GetLevel() <= 100 then
kinhnghiem = 20
elseif GetLevel() >=101 and GetLevel() <= 105 then
kinhnghiem = 40
elseif GetLevel() >=106 and GetLevel() <= 110 then
kinhnghiem = 60
elseif GetLevel() >=111 and GetLevel() <= 115 then
kinhnghiem = 80
elseif GetLevel() >= 116 and GetLevel() <= 120 then
kinhnghiem = 200
end
SU_PHU[vtdetu1][3] = SU_PHU[vtdetu1][3] + kinhnghiem

inlog("[Phuc Menh - "..kinhnghiem.." - "..SU_PHU[vtdetu1][3].."] - "..GetAccount().." - "..GetName().." - "..GetLevel().."")
Msg2Player("Ph�c m�nh s� ph� ho�n t�t. T�ch l�y kinh nghi�m s� ph� t�ng th�m: <color=yellow>"..kinhnghiem.." tri�u kinh nghi�m")
SaveBang()
end

function nhanthuongkinhnghiem()
vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng��i kh�ng ph�i l� V� S�, kh�ng th� nh�n �� t� ")
return
end

if SU_PHU[vtsp][3] > 2000 then
SU_PHU[vtsp][3] = 2000
end
kinhnghiem = SU_PHU[vtsp][3] * 1000000

SayNew("Hi�n t�i ng��i �ang c� <color=yellow>"..kinhnghiem.." / 2.000.000.000 kinh nghi�m<color> t�ch l�y. Ng��i c� mu�n r�t kinh nghi�m ra kh�ng?",2,
"Ta mu�n r�t kinh nghi�m s� �� /nhanthuongkinhnghiem1",
"Tho�t./no")
end


function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/QuanLySuDoLenh.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function nhanthuongkinhnghiem1()
vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng��i kh�ng ph�i l� V� S�, kh�ng th� nh�n �� t� ")
return
end
if SU_PHU[vtsp][3] < 100 then
Talk(1,"","D��i 100 tri�u kinh nghi�m, kh�ng th� r�t ")
return
end
if SU_PHU[vtsp][3] > 2000 then
SU_PHU[vtsp][3] = 2000
end
kinhnghiem = SU_PHU[vtsp][3] * 1000000



SU_PHU[vtsp][3]  = 0
SaveBang()
AddOwnExp(kinhnghiem)

inlog("[Nhan "..kinhnghiem.."] - "..GetAccount().." - "..GetName().." - "..GetLevel().."")
Msg2SubWorld("<color=pink>V� S� - "..GetName().." v�a nh�n ���c "..kinhnghiem.." kinh nghi�m s� ��. Qu� tr�nh ��o t�o �� t� di�n ra kh� t�t ��p")

end

function hotronhandoi()
if GetTeamSize() ~= 2 then
Talk(1,"","Ng��i ch� ���c l�p t� ��i 2 ng��i c�ng v�i �� t� m� m�nh mu�n nh�n ")
return
end

vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng��i kh�ng ph�i l� V� S�, kh�ng th� nh�n h� tr� �� t� ")
return
end

team = GetTeam()
name = GetName()
idxplayer = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team and GetName() ~= name then
		vtdetu1,vtdetu2 = checkdetu()
		if vtdetu1 == 0 then
		Talk(1,"","Ng��i ch�a c� s� ph�, sao c� th� nh�n h� tr� s� �� ���c.")
		break
		end
		
		if name ~= SU_PHU[vtdetu1][2] then
			Talk(1,"","Ng��i hi�n �ang l�m �� t� c�a "..SU_PHU[vtdetu1][2]..", kh�ng th� nh�n h� tr� t� "..name.."")
			break
		end
		if GetTask(442) == 0 then
			SetTask(442, 12 * 60 * 60 * 18)
			Msg2Player("B�n nh�n ���c 12 gi� nh�n ��i kinh nghi�m s� �� ")
		else
			Talk(1,"","Ng��i �ang trong giai �o�n h��ng nh�n ��i kinh nghi�m, kh�ng th� nh�n th�m !")
		end
	end
end
PlayerIndex = idxplayer
Msg2Player("�� ho�n t�t qu� tr�nh h� tr� nh�n ��i kinh nghi�m cho �� t� ")
end
function no()
end

function phansumon()
vtdetu1,vtdetu2 = checkdetu()
if vtdetu1 == 0 then
Talk(1,"","Ng��i kh�ng c� s� ph�, kh�ng th� ph�n s� m�n")
return
end

if GetItemCount(17) == 0 then
Talk(1,"","Ng��i kh�ng mang theo 1 Kim Nguy�n B�o, kh�ng th� ph�n s� m�n")
return
end
DelItem(17)

Msg2SubWorld("<color=yellow>�� t� - "..GetName().." <color=red>quy�t ��nh r�i kh�i s� m�n. T� h�m nay <color=green>V� S� - "..SU_PHU[vtdetu1][2].." <color=red>�� m�t �i m�t �� t� ")
DE_TU[vtdetu1][vtdetu2] = ""
DE_TU[vtdetu1][vtdetu2+1] = 0

inlog("[Phan Su Mon] "..GetAccount().." - "..GetName().." - "..GetLevel().."")
SaveBang()
end
function trucxuatdetu()
vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng��i kh�ng ph�i l� V� S�, kh�ng th� nh�n �� t� ")
return
end

OpenStringBox (2,"Nh�p S� Th� T� " , "acceptcode1")
Msg2Player("N�u kh�ng nh�p ���c s� v�o, vui l�ng tho�t game v� l�i l� ���c")
end

function acceptcode1(num2)
num = tonumber(num2)
if num < 1 and num > 5 then
Talk(1,"","Ch� ���c nh�p s� 1 - 5")
return
end
vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng��i kh�ng ph�i l� V� S�, kh�ng th� nh�n �� t� ")
return
end

vtdt = num * 2 - 1
if vtdt >= getn(DE_TU[vtsp]) then
Talk(1,"","S� li�u nh�p v�o kh�ng ph� h�p, qu� gi�i h�n s� l��ng �� t� ")
return
end

if DE_TU[vtsp][vtdt] == "" then
Talk(1,"","M� s� n�y kh�ng c� �� t�, vui l�ng �i�n m� s� kh�c t� 1 - 5")
return
end
SetTaskTemp(1,vtdt)
SayNew("Ng��i c� mu�n tr�c xu�t <color=yellow>["..DE_TU[vtsp][vtdt].."] - Level: "..DE_TU[vtsp][vtdt+1].."<color> hay kh�ng?",2,
"Ta x�c ��nh tr�c xu�t "..DE_TU[vtsp][vtdt].." /trucxuat2",
"Tho�t./no")
end

function trucxuat2()
vtdt = GetTaskTemp(1)
Msg2SubWorld("V� S� - "..GetName().." �� tr�c xu�t "..DE_TU[vtsp][vtdt].." ra kh�i s� m�n !")
inlog("[Truc Xuat - "..DE_TU[vtsp][vtdt].."]  "..GetAccount().." - "..GetName().." - "..GetLevel().."")
DE_TU[vtsp][vtdt] = ""
DE_TU[vtsp][vtdt+1] = 0

SaveBang()
end
function tangsoluong()
vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng��i kh�ng ph�i l� V� S�, kh�ng th� nh�n �� t� ")
return
end

if GetItemCount(17) < 5 then
Talk(1,"","Ng��i kh�ng mang �� 5 Kim Nguy�n B�o, kh�ng th� t�ng s� l��ng")
return
end

if getn(DE_TU[vtsp]) >= 10 then
Talk(1,"","Danh s�ch �� t� �� ��t �� s� l��ng gi�i h�n: 5 ng��i, kh�ng th� t�ng th�m !")
return
end
DelItem(17)
DelItem(17)
DelItem(17)
DelItem(17)
DelItem(17)
DE_TU[vtsp][getn(DE_TU[vtsp])+1] = ""
DE_TU[vtsp][getn(DE_TU[vtsp])+1] = 0
inlog("[Tang So Luong "..floor(getn(DE_TU[vtsp])/2).."]  "..GetAccount().." - "..GetName().." - "..GetLevel().."")
Msg2SubWorld("Ch�c m�ng "..GetName().." t�ng s� l��ng �� t� c� th� nh�n ���c l�n: <color=yellow>"..floor(getn(DE_TU[vtsp])/2).." ng��i")
SaveBang()
end

function nhanthuongvosu()
Talk(1,"","Ch�a c�p nh�t")
end
function nhandetuxx()
Talk(1,"","T�nh n�ng nh�n �� t� t�m kh�a t� ng�y 24/04/2018 - 17h00 ng�y 05/05/2018")
end
function nhandetu()
if GetTeamSize() ~= 2 then
Talk(1,"","Ng��i ch� ���c l�p t� ��i 2 ng��i c�ng v�i �� t� m� m�nh mu�n nh�n ")
return
end

vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng��i kh�ng ph�i l� V� S�, kh�ng th� nh�n �� t� ")
return
end

vtnew = checkvitritrong(vtsp)
if vtnew == 0 then
Talk(1,"","Danh s�ch �� t� �� ��y, kh�ng th� nh�n th�m")
return
end

team = GetTeam()
name = GetName()
idxplayer = PlayerIndex
kiemtratientrinh = 0
masodetu = 0
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team and GetName() ~= name then
		if GetLevel() < 95 or GetLevel() >= 120 then
			Talk(1,"","��ng c�p 95 - 119 m�i c� th� b�i s� !")
			kiemtratientrinh = 3
			break
		end
		if GetTask(139) == 0 then
			Talk(1,"","Nh�n v�t chuy�n sinh 0, kh�ng th� b�i s� ")
			kiemtratientrinh = 4
			break
		end
		vtdetu1,vtdetu2 = checkdetu()
		if vtdetu1 > 0 then
			kiemtratientrinh = 1
			Talk(1,"","Ng��i hi�n �ang l�m �� t� c�a "..SU_PHU[vtdetu1][2]..", kh�ng th� b�i s� ")
			break;
		end
		if GetItemCount(14) > 0 then
			DelItem(14)
			DE_TU[vtsp][vtnew] = GetName()
			DE_TU[vtsp][vtnew+1] = GetLevel()
			
			inlog("[Nhan De Tu - "..SU_PHU[vtsp][2].."]  "..GetAccount().." - "..GetName().." - "..GetLevel().."")
			Msg2SubWorld("Ch�c m�ng <color=green>V� S� - "..name.." <color=red>t� h�m nay thu nh�n <color=yellow>"..GetName().." <color=red>l�m �� t� c�a m�nh.") 
			masodetu = (vtnew + 1) / 2
			SaveBang()
		else
			kiemtratientrinh = 2
			Talk(1,"","Ng��i kh�ng mang theo S� �� L�nh, kh�ng th� b�i s� ")
			break
		end
	end
end
PlayerIndex = idxplayer
if kiemtratientrinh == 0 then
Talk(1,"","Thu nh�n �� t� th�nh c�ng. M� s� tr�c xu�t �� t� l�: <color=yellow>"..masodetu.."")
elseif kiemtratientrinh == 1 then
Talk(1,"","Ng��i n�y hi�n �ang l�m �� t� c�a ng��i kh�c, ng��i kh�ng th� nh�n")
elseif kiemtratientrinh == 2 then
Talk(1,"","Ng��i n�y kh�ng mang theo t�n v�t S� �� L�nh, kh�ng th� nh�n")
elseif kiemtratientrinh == 3 then
Talk(1,"","Ng��i n�y c� ��ng c�p 120 tr� l�n ho�c 95 tr� xu�ng, kh�ng th� nh�n")
elseif kiemtratientrinh == 4 then
Talk(1,"","Ng��i nay hi�n �ang chuy�n sinh 0, kh�ng th� nh�n")
end
end

function checkvitritrong(vt) 
for i=1,getn(DE_TU[vt]) do
	if mod(i,2) == 1 then
		if DE_TU[vt][i] == "" then
				return i
		end
	end
end
return 0
end
function thangchuc()
if GetTask(139) == 0 then
Talk(1,"","C�c h� chuy�n sinh 0, kh�ng th� l�m V� S� ")
return
end

if GetLevel() < 120 then
Talk(1,"","V� ��i hi�p n�y ch�a ��t ��ng c�p 120, kh�ng th� l�m V� S� ")
return
end

if GetItemCount(17) < 3 then
Talk(1,"","Ph� th�ng c�p V� S�: <color=yellow>3 Kim Nguy�n B�o<color>. Vui l�ng chu�n b� �� r�i quay l�i g�p ta")
return
end

if checksuphu() > 0 then
Talk(1,"","Ng��i hi�n t�i �� l� V� S�, kh�ng th� th�ng c�p th�m n�a ")
return
end
vtdetu1,vtdetu2 = checkdetu()
if vtdetu1 > 0 then
Talk(1,"","Ng��i hi�n t�i �ang l� �� T� c�a "..SU_PHU[vtdetu1][2]..", vui l�ng xu�t s� tr��c khi ���c l�m V� S� ")
return
end


for p=1,3 do DelItem(17) end
SU_PHU[getn(SU_PHU)+1] = {GetAccount(),GetName(),0,0}
DE_TU[getn(DE_TU)+1] = {"",0}
SetRank(235)

inlog("[Vo Su] "..GetAccount().." - "..GetName().." - "..GetLevel().."")
Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." t� h�m nay ch�nh th�c ���c l�m V� S�, c� th� thu nh�n 1 �� t� ")
SaveBang()
end

function checksuphu()
for i=1,getn(SU_PHU) do
	if GetName() == SU_PHU[i][2] then
		return i
	end
end
return 0
end

function checkdetu()
for i=1,getn(DE_TU) do
	for j=1,getn(DE_TU[i]) do
		if mod(j,2) == 1 then
			if DE_TU[i][j] == GetName() then
				return i,j
			end
		end
	end
end
return 0,0
end
function SaveBang()
BANG = TaoBang(SU_PHU,"SU_PHU")
LuuBang("script/sudo/danhsachsuphu.lua",BANG)
BANG2 = TaoBang(DE_TU,"DE_TU")
LuuBang("script/sudo/danhsachdetu.lua",BANG2)


end