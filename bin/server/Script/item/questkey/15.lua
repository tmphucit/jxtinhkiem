Include("\\script\\lib\\thuvien.lua")
Include("\\script\\sudo\\sudo.lua")
Include("\\script\\sudo\\detu.lua")
TaskSuDo = 165
Tasktime = 166
ChuaTaoSudo = 0
DeTu = 1
SuPhuChuaCoDeTu = 2
SuPhuCoDeTu = 3
tienvan = 0
sudothiep = 15
thanbi = 16

function savetimer()
	BANG3 = TaoBang(SU_DO,"SU_DO")
	LuuBang("script/sudo/sudo.lua",BANG3)
	LuuBang("script/sudo/sudophu.lua",BANG3)	

end
function save()
	BANG3 = TaoBang(SU_DO,"SU_DO")
	LuuBang("script/sudo/sudo.lua",BANG3)
	LuuBang("script/sudo/sudophu.lua",BANG3)		

end
function main(idx)
end

function main1(idx)
if GetTask(139) > 0 then
Talk(1,"","B�n �� chuy�n sinh kh�ng th� s� d�ng ch�c n�ng s� �� thi�p ! ")
return
end

if GetLevel() >= 140 and GetTask(165) == 0 then
Say("<color=green>H� Th�ng<color>: B�n c�n <color=red>500 v�n<color> �� tr� th�nh 1 s� ph� k� t� b�y gi� ",2,
"Thi�t l�p t�nh n�ng s� ��/thietlapsd",
"Tho�t./no")
elseif GetLevel() >= 140 and GetTask(165) == 1 then
if GetTask(163) == 0 then
for i=1,getn(SU_DO) do
	if GetUUID() == SU_DO[i][5] then
	SetTask(163,i)
	end
end	
end
if GetUUID() == SU_DO[GetTask(163)][5] then
Say("<color=green>H� Th�ng<color>: H�y t�m s� ph� <color=red>"..SU_DO[GetTask(163)][1].."<color> v� xu�t s� �i b�n !!",2,
"Xu�t s�/xuatsu",
"Tho�t./no")
else
Say("<color=green>H� Th�ng<color>: S� ph� �� tr�c xu�t b�n!!",2,
"Roi khoi su phu/roisp3",
"Tho�t./no")
end
elseif GetTask(165) == 3 then
Say("<color=green>H� Th�ng<color>: Ch�n ch�c n�ng: ",4,
"Nh�n �i�m ph�c m�nh/nhanexp",
"Reset nh�n ��i cho �� t�/resettime",
"Tr�c xu�t �� t�/trucxuat",
"Tho�t./no")
elseif GetTask(165) == 2 then
Say("<color=green>H� Th�ng<color>: B�n ch�a c� <color=red>�� t�<color>:",2,
"Nh�n �� t�/nhandt",
"Tho�t./no")
elseif GetTask(165) == 1 then
if GetTask(163) == 0 then
for i=1,getn(SU_DO) do
	if GetUUID() == SU_DO[i][5] then
	SetTask(163,i)
	end
end	
end
	if GetUUID() == SU_DO[GetTask(163)][5] then
	Say("<color=green>H� Th�ng<color>: Ch�n ch�c n�ng",4,
	"Ph�c m�nh v�i s� ph�/phucmenh",
	"Nh�n h� tr� nh�n ��i/nhanx2exp",
	"Ph�n s� m�n/roisp",
	"Tho�t./no") 
	else
	Say("<color=green>H� Th�ng<color>: S� ph� �� tr�c xu�t b�n !!",2,
	"R�i kh�i s� ph�/roisp3",
	"Tho�t./no")	
	end
else
Say("<color=green>H� Th�ng<color>: H�y t�m 1 s� ph� ch�n ch�nh �� b�i s� !",1,
"Tho�t./no") 
end
end

function nhanexp()
b = SU_DO[vtsp()][7]*1000/80
if SU_DO[vtsp()][7] > 0 then
	SU_DO[vtsp()][7] = 0	
	Talk(0,"")
	if SU_DO[vtsp()][7] == 0 then
	AddOwnExp(b)
	Msg2Player("B�n nh�n ���c:  "..b.." kinh nghi�m �� t� ph�c m�nh")
	end		
else
Talk(1,"","<color=green>H� Th�ng<color> �i�m kinh nghi�m ph�c m�nh �� nh�n h�t r�i!")
end
end
function roisp()
if GetUUID() == SU_DO[GetTask(163)][5] then
Say("<color=green>H� Th�ng<color>: B�n c� ch�c mu�n ph�n s� m�n !",2,
"Ta ��ng Y(/roisp2",
"Tho�t./no")
else
Say("<color=green>H� Th�ng<color>: S� ph� �� tr�c xu�t b�n !!",2,
"R�i kh�i s� ph� /roisp3",
"Tho�t./no")
end
end
function roisp3()
SetTask(165,0)
Msg2Player("B�n �� r�i kh�i s� ph� v� c� th� nh�n s� ph� m�i")
end
function roisp2()
SetTask(165,0)
Msg2Player("B�n �� r�i kh�i s� m�n")
end
function trucxuat()
Say("<color=green>H� Th�ng<color>: B�n ch�c ch�n mu�n tr�c xu�t <color=red>"..SU_DO[vtsp()][4].."<color> ra kh�i s� m�n? ",2,
"Ta ��ng �/trucxuat2",
"Tho�t./no")
end
function trucxuat2()
a = GetCash()
if GetCash() >= 5000000 then
Pay(5000000)
if GetCash() == (a-5000000) then
	Msg2SubWorld("["..GetName().."] �� tr�c xu�t  ["..SU_DO[vtsp()][4].."] ra kh�i s� m�n.")
	SetTask(165,2)
	SU_DO[vtsp()][4] = ""
	SU_DO[vtsp()][5] = 0
	SU_DO[vtsp()][6] = 0
	SU_DO[vtsp()][7] = 0	
end
else
Talk(1,"","<color=green>H� Th�ng<color>: B�n kh�ng �� <color=red>500<color> v�n")
end
end


function nhanx2exp()
if GetUUID() == SU_DO[GetTask(163)][5] then
a = SU_DO[GetTask(163)][3]
if GetTask(172) <= 0 then
if SU_DO[GetTask(163)][3] ~= 0 then
SU_DO[GetTask(163)][3] = SU_DO[GetTask(163)][3]-1
if SU_DO[GetTask(163)][3] == (a-1) then
Setx2Exp(60*60*18)
AddSkillEffect(456,1,60*60*18)
SetTask(141,2)
Talk(0,"")
Talk(1,"","<color=green>H� Th�ng<color> B�n �� nh�n th�nh c�ng nh�n ��i kinh nghi�m trong <color=red>1<color> gi�")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","<color=green>H� Th�ng<color> Th�i gian nh�n ��i trong ng�y c�n: <color=red>"..SU_DO[GetTask(163)][3].."<color> gi�")
end
else
Talk(1,"","<color=green>H� Th�ng<color> B�n �ang s� d�ng nh�nd ��i kinh nghi�m. kh�ng th� s� d�ng th�m")
end
else
Talk(1,"","<color=green>H� Th�ng<color>: S� Ph� <color=red>"..SU_DO[GetTask(163)][1].."<color> �� tr�c xu�t b�n ra kh�i s� m�n !!!")
end
end
function phucmenh()
if GetUUID() == SU_DO[GetTask(163)][5] then
if GetLevel() > SU_DO[GetTask(163)][6] then
SU_DO[GetTask(163)][6] = GetLevel()
SU_DO[GetTask(163)][7] = SU_DO[GetTask(163)][7]+kinhnghiemtinh()
diem = kinhnghiemtinh()*1000/40
Msg2Player("Ph�c m�nh th�nh c�ng! S� ph� s� nh�n ���c: "..diem.." �i�m ph�c m�nh c�a b�n")
else
Talk(1,"","<color=green>H� Th�ng<color>: B�n �� ph�c m�nh � ��ng c�p n�y r�i")
end
else
Talk(1,"","<color=green>H� Th�ng<color>: S� Ph� <color=red>"..SU_DO[GetTask(163)][1].."<color> �� tr�c xu�t b�n !!!")
end
end

function kinhnghiemtinh()
kn = GetLevelExp()
if GetLevel() < 90 then
return kn*40/100000
elseif GetLevel() >= 90 and GetLevel() < 100 then
return kn*33/100000
elseif GetLevel() >= 100 and GetLevel() < 110 then
return kn*20/100000
elseif GetLevel() >= 110 and GetLevel() < 120 then
return kn*17/100000
elseif GetLevel() >= 120 and GetLevel() < 130 then
return kn*14/100000
elseif GetLevel() >= 130 and GetLevel() < 140 then
return kn*12/100000
else
return kn*10/100000
end
end


function resettime()
if GetTask(166) == tinhngay() then
Talk(1,"","<color=green>H� Th�ng<color> H�m nay b�n �� reset r�i !")
else
SetTask(166,tinhngay())
SU_DO[vtsp()][3] = 8
Msg2Player("�� kh�i t�o th�nh c�ng 8 gi� nh�n ��i kinh nghi�m cho �� t�: ["..SU_DO[vtsp()][4].."]")
end
end
function vtsp()
for i=1,getn(SU_DO) do
if GetUUID() == SU_DO[i][2] then
return i
end
end
end


function tinhngay()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
tinhngay1 = 0
for k=1,getn(mang) do
	if thang > mang[k][1] then
	tinhngay1 = tinhngay1 + mang[k][2]
	end
end
tinhngay1 = tinhngay1 + ngay
return tinhngay1
end

mang = {
{1,31},
{2,28},
{3,31},
{4,30},
{5,31},
{6,30},
{7,31},
{8,31},
{9,30},
{10,31},
{11,30},
{12,31},
}
function xuatsu()
if GetTeam() ~= nil then
if GetTeamSize() == 2 then
	if IsCaptain() == 1 then
		xuatsu2()
	else
	Talk(1,"","<color=green>H� Th�ng<color>: B�n ph�i l� <color=red>tr��ng nh�m<color> m�i c� th� xu�t s� ���c !")
	end
else
Talk(1,"","<color=green>H� Th�ng<color>: T� ��i ph�i c� <color=red>2<color> th�nh vi�n")
end
else
Talk(1,"","<color=green>H� Th�ng<color>: B�n ph�i l�p <color=red>t� ��<color> m�i th�c hi�n ���c")
end
end

function xuatsu2()
if GetUUID() == SU_DO[GetTask(163)][5] then
if GetTeam() ~= nil then
if GetTeamSize() == 2 then
	if IsCaptain() == 1 then
SetTask(165,0)
Msg2Player("Ban da Xuat Su thanh cong !")
team = GetTeam()
vtdt = GetTask(163)
name = GetName()
for k=1,GetCountPlayerMax() do
PlayerIndex = k
if GetTeam() == team and IsCaptain() == 1 then
	if SU_DO[vtdt][8] <= 120 then
	AddEventItem(16)
	Msg2Player("B�n nh�n ���c 1 Th�n B� ��i H�ng Bao")
	Talk(0,"")
	else
	Msg2Player("B�n kh�ng nh�n ���c Th�n B� ��i H�ng Bao do b�i s� � ��ng c�p > 120")
	end
elseif GetTeam() == team and IsCaptain() == 0 then
	if SU_DO[vtsp()][8] <= 120 then
	AddEventItem(16)
	Msg2Player("B�n nh�n ���c 1 Th�n B� ��i H�ng Bao")
	Talk(0,"")
	else
	Msg2Player("B�n kh�ng nh�n ���c Th�n B� ��i H�ng Bao do nh�n �� t� � ��ng c�p > 120")
	end
	AddOwnExp(2500000)
	Msg2Player("B�n nh�n ���c 2.500.000 kinh nghi�m")
	SetTask(165,2)
SU_DO[vtsp()][5] = 0
SU_DO[vtsp()][6] = 0
SU_DO[vtsp()][7] = 0
Msg2SubWorld("Xin ch�c m�ng �� t� ["..name.."] cung Su Phu ["..GetName().."] xu�t s� th�nh c�ng. Qu� tr�nh tu luy�n c�a �� t� ho�n t�t !!!")
end
end
	else
	Talk(1,"","<color=green>H� Th�ng<color>: B�n ph�i l� <color=red>tr��ng nh�m<color> m�i th�c hi�n xu�t s� ���c !")
	end
else
Talk(1,"","<color=green>H� Th�ng<color>: T� ��i ph�i c� <color=red>2<color> th�nh vi�n")
end
else
Talk(1,"","<color=green>H� Th�ng<color>: B�n ph�i l�p <color=red>t� ��i<color> m�i th�c hi�n ���c")
end
else
Talk(1,"","<color=green>H� Th�ng<color>: S� ph� <color=red>"..SU_DO[GetTask(163)][1].."<color> �� tr�c xu�t b�n !!!")
end
end

function thietlapsd()
a = GetCash()
if GetCash() >= 5000000 then
Pay(5000000)
if GetCash() == (a-5000000) then
stt = getn(SU_DO)+1
SetTask(165,2) -- sf chua co de tu
SU_DO[getn(SU_DO)+1] = {GetName(),GetUUID(),8,"",0,0,0,0}
Msg2Player("�� thi�t l�p th�nh c�ng t�nh n�ng S� ��. S� th� t�: "..stt.."")
KickOutSelf()
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","<color=green>H� Th�ng<color>: B�n kh�ng mang �� <color=red>500<color> v�n")
end
end
function no()
end

function nhandt()
if GetTeam() ~= nil then
if GetTeamSize() == 2 then
	if IsCaptain() == 1 then
		Say("<color=green>H� Th�ng<color>: B�n c� mu�n nh�n th�nh vi�n trong nh�m l�m �� t� kh�ng?: ",2,
		"Ta ��ng �/nhandt2",
		"Tho�t./no")
	else
	Talk(1,"","<color=green>H� Th�ng<color>: B�n kh�ng ph�i l� <color=red>tr��ng nh�m<color> kh�ng th� th�c hi�n")
	end
else
Talk(1,"","<color=green>H� Th�ng<color>: T� ��i ph�i c� <color=red>2<color> th�nh vi�n")
end
else
Talk(1,"","<color=green>H� Th�ng<color>: B�n ph�i l�p <color=red>t� ��i<color> m�i th�c hi�n ���c")
end
end

function nhandt2()
team = GetTeam()
name = GetName()
i = vtsp()
SetTask(165,3)
for u=1,GetCountPlayerMax() do
PlayerIndex = u
if GetTeam() == team and IsCaptain() == 0 then
namedt = GetName()
	if GetLevel() < 140 and GetTask(165) == 0 then
		if GetItemCount(14) >= 1 then
		namedt = GetName()
		DelItem(14)
		SU_DO[i][4] = GetName()
		SU_DO[i][5] = GetUUID()
		SU_DO[i][6] = GetLevel()
		SU_DO[i][7] = 0	
		SU_DO[i][8] = GetLevel()	
		SetTask(165,1)
		SetTask(163,i)
			Msg2Player("B�n �� tr� th�nh �� t� c�a "..name.."")
	Msg2SubWorld("["..name.."] �� nh�n ["..GetName().."] l�m �� t�.")
		else
		for k=1,GetCountPlayerMax() do
	PlayerIndex = k
	if GetTeam() == team and IsCaptain() == 0 then
	Msg2Player("�� t� kh�ng mang theo S� �� L�nh. Nh�n �� t� th�t b�i !!!!!!!!!!!")	
	elseif GetTeam() == team and IsCaptain() == 1 then
	SetTask(165,2)
	Msg2Player("Ng��i kia kh�ng mang theo S� �� L�nh. Nh�n �� t� th�t b�i !!!!!!!!!!!")	
	end
	end
		
		end
	else
	for k=1,GetCountPlayerMax() do
	PlayerIndex = k
	if GetTeam() == team and IsCaptain() == 1 then
	SetTask(165,2)
	Msg2Player(""..namedt.." �� b�i ng��i kh�c l�m S� Ph�")	
	end
	end
	end
end
end
end
