--Author: KingMax
--Script Vuot Ai Lien hoan

Include("\\script\\Global\\sourcejx49.lua")
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\checkloinhanvat.lua")

SATTHULENH = 151
SOTODOICHOPHEP = 1
quai = {}
function OnDrop()
end
function taonpc()
-- Ai 1
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i], "\\script\\vuotai\\sugia2.lua")
end
-- Ai 2
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i+50]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i+50], "\\script\\vuotai\\sugia2.lua")
end
-- Ai 3
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i+100]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i+100], "\\script\\vuotai\\sugia2.lua")
end
-- Ai 4
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i+150]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i+150], "\\script\\vuotai\\sugia2.lua")
end
-- Ai 5
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i+200]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i+200], "\\script\\vuotai\\sugia2.lua")
end
-- Ai 6
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(534,538)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i+250]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i+250], "\\script\\vuotai\\sugia2.lua")
end
ai = SubWorldID2Idx(26)
boss11=AddNpc(594,99,ai,196*8*32,201*16*32)
SetNpcScript(boss11, "\\script\\vuotai\\boss1.lua")
-- Ai 7
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(539,543)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i+300]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i+300], "\\script\\vuotai\\sugia2.lua")
end
ai = SubWorldID2Idx(26)
boss12=AddNpc(595,99,ai,196*8*32,201*16*32)
SetNpcScript(boss12, "\\script\\vuotai\\boss1.lua")
-- Ai 8
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(544,548)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i+350]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i+350], "\\script\\vuotai\\sugia2.lua")
end
ai = SubWorldID2Idx(26)
boss13=AddNpc(596,99,ai,196*8*32,201*16*32)
SetNpcScript(boss13, "\\script\\vuotai\\boss1.lua")
-- Ai 9
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(549,553)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i+400]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i+400], "\\script\\vuotai\\sugia2.lua")
end
ai = SubWorldID2Idx(26)
boss14=AddNpc(597,99,ai,196*8*32,201*16*32)
SetNpcScript(boss14, "\\script\\vuotai\\boss1.lua")
-- Ai 10
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(554,558)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i+450]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i+450], "\\script\\vuotai\\sugia2.lua")
end
ai = SubWorldID2Idx(26)
boss15=AddNpc(598,99,ai,196*8*32,201*16*32)
SetNpcScript(boss15, "\\script\\vuotai\\boss1.lua")
-- Ai 11
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(559,563)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i+500]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i+500], "\\script\\vuotai\\sugia2.lua")
end
-- Ai 12
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(564,568)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i+550]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i+550], "\\script\\vuotai\\sugia2.lua")
end
-- Ai 13
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(569,573)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i+600]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i+600], "\\script\\vuotai\\sugia2.lua")
end
-- Ai 14
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(574,578)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i+650]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i+650], "\\script\\vuotai\\sugia2.lua")
end
ai = SubWorldID2Idx(26)
boss16=AddNpc(599,99,ai,196*8*32,201*16*32)
SetNpcScript(boss16, "\\script\\vuotai\\boss1.lua")
-- Ai 15
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(579,583)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i+700]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i+700], "\\script\\vuotai\\sugia2.lua")
end
ai = SubWorldID2Idx(26)
boss17=AddNpc(random(600,601),99,ai,196*8*32,201*16*32)
SetNpcScript(boss17, "\\script\\vuotai\\boss1.lua")
-- Ai 16
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(584,588)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i+750]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i+750], "\\script\\vuotai\\sugia2.lua")
end
ai = SubWorldID2Idx(26)
boss18=AddNpc(random(602,603),99,ai,196*8*32,201*16*32)
SetNpcScript(boss18, "\\script\\vuotai\\boss1.lua")
-- Ai 17
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(589,593)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i+800]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i+800], "\\script\\vuotai\\sugia2.lua")
end
-- Ai 18
for i=1,50 do
ai = SubWorldID2Idx(26)
bossid = random(529,533)
bosslvl = 99
	posx = toadomap[i][1] * 32
	posy = toadomap[i][2] * 32
quai[i+850]=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai[i+850], "\\script\\vuotai\\sugia2.lua")
end
ai = SubWorldID2Idx(26)
bossid = random(604,613)
bosslvl = 99
	posx = 196*8 * 32
	posy = 201*16 * 32
boss19=AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(boss19, "\\script\\vuotai\\boss5.lua")
end


function main()
if check() ~= 0 then
xuly()
return
end


ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
if ngay == 2 and thang == 1 then
Talk(1,"","V��t �i b�t ��u v�o 0h00 ng�y 03/01/2022")
return
end

if gio == 16 then
Talk(1,"","S�p t�i th�i gian b�o tr� ��nh k� c�a server, kh�ng th� tham gia v��t �i")
return
end
if  mod(gio,2) == 1 and phut >= 50 then
	bdvuotai()
else
vuotaichuatoi()
end
end;
function vuotaichuatoi()
SayNew("<color=green>S� gi� V��t �i<color>: C�c h� g�p ta c� chuy�n g� nh� v� ch�ng",5,
"T�m hi�u th�i gian v��t �i/xemtime",
"�i�u ki�n v��t �i/xemtime",
"Xem th�i gian c�n l�i/xemtime",
"T�m hi�u ph�n th��ng/xemtime",
"Tho�t/no")
end

function xemtime(nsel)
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
i = nsel+1
if i == 1 then
Talk(3,"","<color=red>B�o danh<color>: Ph�t th� 50 m�i gi�",
"<color=red>B�t ��u<color>: 8h00, 10h00, 12h00, 14h00,16h00, 18h00, 20h00, 22h00, 24h00",
"M�i tr�n k�o d�i <color=red>40 ph�t<color>. Th�i gian b�o danh ��n khi b�t ��u l�  <color=red>15 ph�t")
elseif i == 2 then
Talk(3,"","T� ��i c� <color=red>6<color> th�nh vi�n tr� l�n, ��ng c�p y�u c�u <color=red>70<color> tr� l�n",
"T�t c� th�nh vi�n nh�m ph�i mang theo <color=red>1<color> L�nh B�i V��t �i",
"Trong nh�m kh�ng c� ai �� t�ng �i vu�t �i 1 l�n trong ng�y")
elseif i == 3 then
a = 49-phut
b = 60-giay
Talk(1,"","Th�i gian v��t �i c�n: <color=red>"..a.."<color> ph�t <color=red>"..b.."<color> gi�y")

elseif i == 4 then
Talk(3,"","��nh qu�i v��t �i nh�n ���c <color=red>2500<color> kinh nghi�m.",
"Qua 1 �i s� nh�n ���c 300.000 kinh nghi�m",
"V��t h�t �i th� 18 s� nh�n ���c <color=red>2.000.000<color> kinh nghi�m")
end
end


function bdvuotai()
if GetGlbMissionV(38) == 0 then
SayNew("<color=green>S� gi� V��t �i<color>: C�c h� g�p ta c� chuy�n g� nh� v� ch�ng",2,
"Tham gia V��t �i./tmctddva",
"Tho�t./no")
else
Talk(1,"","<color=green>S� gi� V��t �i<color>: �� c� 1 t� �� kh�c v�o tr��c nh�m b�n")
end
end


function tmctddva()
if GetGlbMissionV(38) == 0 then
if GetTeam() ~= nil then
	if GetTeamSize() >= 2 then
		if IsCaptain() == 1 then
			SayNew("<color=green>S� gi� V��t �i<color>: V��t �i s� c�n c� <color=red>5 S�t th� gi�n<color> v� t�t c� th�nh vi�n level tr�n <color=red>70<color>. H�y t�m nhanh �i !",2,
				"Ta �� chu�n b� ��/tmctddva1",
				"�� ta t�m n�/no")		
		else
		Talk(1,"","Ng��i kh�ng ph�i l�<color=red> tr��ng nh�m<color>, kh�ng th� ��a t� ��i �i")
		end
	else
	Talk(1,"","T� ��i ph�i c� <color=red>6 ng��i tr� l�n<color> h�y t�m th�m ng��i r�i ��n g�p ta")
	end
else
Talk(1,"","Ng��i c�n ph�i c� <color=red>t� ��i<color>, h�y t�m cho m�nh m�t t� ��i r�i ��n g�p ta")
end
else
Talk(1,"","<color=green>S� gi� V��t �i<color>: �� c� m�t t� ��i kh�c v�o tr��c nh�m b�n")
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
function OnStart()

end

function tmctddva1()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
thoigianhide = (60-phut)*(60-giay)*18

if GetGlbMissionV(38) == 0 then
idtd = GetTeam()

name = GetName()
if (idtd ~= nil) then
if (GetTeamSize() >= 2) then
if (IsCaptain() == 1) then
yc = 0
idbt = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
if (GetTeam() == idtd) then

if (GetTask(185) == ngay) or check() ~= 0 or GetItemCount(156) == 0 then
	if (GetTask(185) == ngay) then
	Msg2World(""..GetName().." �� di v��t �i trong ng�y r�i")
	end
	if GetItemCount(156) == 0 then
	Msg2World(""..GetName().." kh�ng mang L�nh B�i V��t �i")
	end
	yc = 1
end
end
end
PlayerIndex = idbt
if (yc == 0) then
idbt = PlayerIndex
SetGlbMissionV(38,1)
a = 60-phut

if GetGlbMissionV(1) == 0 then
SetGlbMissionV(1,1)
taonpc()
end

for q=1,900 do
HideNpc(quai[q],99999999)
end
HideNpc(boss11,99999999)
HideNpc(boss12,99999999)
HideNpc(boss13,99999999)
HideNpc(boss14,99999999)
HideNpc(boss15,99999999)
HideNpc(boss16,99999999)
HideNpc(boss17,99999999)
HideNpc(boss18,99999999)
HideNpc(boss19,99999999)
for i=1,50 do
HideNpc(quai[i],thoigianhide)
end
Msg2SubWorld("Nh�m c�a "..name.." �� ��ng k� V��t �i - Ph��ng T��ng th�nh c�ng!")
for k=1,GetCountPlayerMax() do
PlayerIndex = k
if (GetTeam() == idtd) then
SetTaskTemp(25,1)
SetPunish(1)
SetFightState(0)
SetGlbMissionV(41,0)
SetGlbMissionV(40,0)
SetGlbMissionV(39,0)
SetLogoutRV(1)
toadox = 1569 - 8 + random(0,16)
toadoy = 3217 - 16 + random(0,32)
DelItem(156)
SetGlbMissionV(38,1)
SetTask(185,ngay)
SetDeathScript("\\script\\vuotai\\playerdie.lua");
AddGlobalCountNews("Nh�m c�a "..name.." �� ��ng k� V��t �i th�nh c�ng !",1)
Msg2Player("B�n v� t� ��i �� v�o khu v�c b�o danh v��t �i!");
Msg2Player("Tr�ng th�i hi�n t�i: Luy�n c�ng")
Msg2Player("C�n "..a.." ph�t n�a tr�n chi�n s� b�t ��u!!")
NewWorld(26, toadox, toadoy);
end
end

else
Talk(1,"no","Trong t� ��i �� c� th�nh vi�n �i V��t �i 1 l�n trong ng�y ho�c kh�ng mang theo L�nh B�i V��t �i. H�y ch�n ng��i kh�c �i")
end
else
Talk(1,"no","Ng��i kh�ng ph�i l� <color=red>Tr��ng nh�m,<color> kh�ng th� ��a t� ��i �i")
end

else
Talk(1,"no","T� ��i ph�i c� <color=red>6 ng��i tr� l�n,<color> ng��i h�y t�m th�m ng��i r�i ��n g�p ta")
end

else
Talk(1,"no","Ng��i c�n ph�i c� <color=red>t� ��i,<color> h�y t�m cho m�nh t� ��i r�i ��n g�p ta")
end

else
Talk(1,"","<color=green>S� gi� V��t �i<color>: �� c� m�t t� ��i kh�c v�o tr��c nh�m b�n")
end
end;




function no()

end;








toadomap = {
{1569,3194},
{1572,3197},
{1576,3205},
{1579,3206},
{1577,3200},
{1572,3214},
{1569,3207},
{1561,3206},
{1559,3201},
{1557,3205},
{1554,3212},
{1550,3209},
{1545,3220},
{1540,3223},
{1537,3222},
{1537,3227},
{1540,3239},
{1545,3239},
{1551,3247},
{1555,3250},
{1560,3253},
{1565,3256},
{1577,3265},
{1583,3263},
{1581,3259},
{1576,3272},
{1572,3251},
{1572,3245},
{1578,3242},
{1580,3235},
{1588,3231},
{1587,3224},
{1574,3241},
{1585,3238},
{1585,3233},
{1589,3232},
{1584,3223},
{1573,3207},
{1571,3199},
{1569,3190},
{1578,3214},
{1569,3210},
{1568,3201},
{1563,3228},
{1558,3227},
{1551,3217},
{1553,3211},
{1553,3241},
{1548,3235},
{1569,3237}
}

function quaai()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
SetGlbMissionV(40,0)
idxp = PlayerIndex
for q=1,GetCountPlayerMax() do
PlayerIndex = q
	w,X,Y = GetWorldPos()
	if GetTaskTemp(25) == 1 and w == 26 then
	Msg2Player("Nh�m c�a b�n �� v��t ��n �i th� : <color=yellow>"..(GetGlbMissionV(41)+1).." - "..mangten[GetGlbMissionV(41)][2].."")
	if GetGlbMissionV(39) ~= 0 then
	Msg2Player("Boss "..mangboss[GetGlbMissionV(39)][2].." xu�t hi�n. H�y ti�u di�t nhanh!!!")
	end
	a = GetGlbMissionV(41)
	AddRepute(1)
	Msg2Player("B�n nh�n ���c 1 �i�m danh v�ng ")
	b = 280000 * a

	AddOwnExp(b)
	Msg2Player("B�n nh�n ���c "..b.." Kinh nghi�m")
	

	end
end
PlayerIndex = idxp
end
mangexp = {
{1,75000},
{2,100000},
{3,125000},
{4,150000},
{5,250000},
{6,400000},
{7,500000}
}
function level()
if GetLevel() < 100 then
return 1
elseif GetLevel() >= 100 and GetLevel() < 110 then
return 2
elseif GetLevel() >= 110 and GetLevel() < 120 then
return 3
elseif GetLevel() >= 120 and GetLevel() < 130 then
return 4
elseif GetLevel() >= 130 and GetLevel() < 140 then
return 5
elseif GetLevel() >= 140 and GetLevel() < 150 then
return 6
elseif GetLevel() >= 150 then
return 7
else
return 1
end
end
mangboss = {
{1,"Th� l�nh �i - H� Kim"},
{2,"Th� l�nh �i - H� M�c"},
{3,"Th� l�nh �i - H� Thu�"},
{4,"Th� l�nh �i - H� Ho�"},
{5,"Th� l�nh �i - H� Th�"},
{6,"Th� l�nh �i - Cao C�p"},
{7,"Th� l�nh �i - Cao C�p"},
{8,"Th� l�nh �i - Cao C�p"},
}
mangten = {
{1,"Qu�i Nh�n Th��ng"},
{2,"Qu�i Nh�n Th��ng"},
{3,"Qu�i Nh�n Th��ng"},
{4,"Qu�i Nh�n Th��ng"},
{5,"Qu�i Nh�n H� Kim"},
{6,"Qu�i Nh�n H� M�c"},
{7,"Qu�i Nh�n H� Thu�"},
{8,"Qu�i Nh�n H� Ho�"},
{9,"Qu�i Nh�n H� Th�"},
{10,"Qu�i Buff B�a Gi�m Kh�ng"},
{11,"Qu�i Buff Gi�m T�c ��"},
{12,"Qu�i Buff Cho�ng"},
{13,"Qu�i H� Kim C�p Cao"},
{14,"Qu�i H� M�c - Thu� C�p Cao"},
{15,"Qu�i H� Ho� - Th� C�p Cao"},
{16,"Qu�i Ph�n Dame"},
{17,"Boss Nhi�p Th� Tr�n"}
}

function OnDeath()
w,X,Y = GetWorldPos()
if GetGlbMissionV(40) >= 45 and GetGlbMissionV(41) == 0 then
for i=1,50 do
HideNpc(quai[i+50],0)
end
SetGlbMissionV(41,1)
quaai()
elseif GetGlbMissionV(40) >= 45 and GetGlbMissionV(41) == 1 then
for i=1,50 do
HideNpc(quai[i+50],99999999)
HideNpc(quai[i+100],0)
end
SetGlbMissionV(41,2)
quaai()
elseif GetGlbMissionV(40) >= 45 and GetGlbMissionV(41) == 2 then
for i=1,50 do
HideNpc(quai[i+100],99999999)
HideNpc(quai[i+150],0)
end
SetGlbMissionV(41,3)
quaai()
elseif GetGlbMissionV(40) >= 45 and GetGlbMissionV(41) == 3 then
for i=1,50 do
HideNpc(quai[i+150],99999999)
HideNpc(quai[i+200],0)
end
SetGlbMissionV(41,4)
quaai()
elseif GetGlbMissionV(40) >= 45 and GetGlbMissionV(41) == 4 then
for i=1,50 do
HideNpc(quai[i+200],99999999)
HideNpc(quai[i+250],0)
end
SetGlbMissionV(40,250)
HideNpc(boss11,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(25) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(25) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss11,GetName())
	break
	end
end
end
SetGlbMissionV(39,1)
SetGlbMissionV(41,5)
quaai()
elseif GetGlbMissionV(40) >= 45 and GetGlbMissionV(41) == 5 then
for i=1,50 do
HideNpc(quai[i+250],99999999)
HideNpc(quai[i+300],0)
end
SetGlbMissionV(40,300)
HideNpc(boss12,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(25) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(25) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss12,GetName())
	break
	end
end
end
SetGlbMissionV(39,2)
SetGlbMissionV(41,6)
quaai()
elseif GetGlbMissionV(40) >= 45 and GetGlbMissionV(41) == 6 then
for i=1,50 do
HideNpc(quai[i+300],99999999)
HideNpc(quai[i+350],0)
end
SetGlbMissionV(40,350)
HideNpc(boss13,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(25) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(25) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss13,GetName())
	break
	end
end
end
SetGlbMissionV(39,3)
SetGlbMissionV(41,7)
quaai()
elseif GetGlbMissionV(40) >= 45 and GetGlbMissionV(41) == 7 then
for i=1,50 do
HideNpc(quai[i+350],99999999)
HideNpc(quai[i+400],0)
end
SetGlbMissionV(40,400)
HideNpc(boss14,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(25) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(25) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss14,GetName())
	break
	end
end
end
SetGlbMissionV(39,4)
SetGlbMissionV(41,8)
quaai()
elseif GetGlbMissionV(40) >= 45 and GetGlbMissionV(41) == 8 then
for i=1,50 do
HideNpc(quai[i+400],99999999)
HideNpc(quai[i+450],0)
end
SetGlbMissionV(40,450)
HideNpc(boss15,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(25) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(25) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss15,GetName())
	break
	end
end
end

SetGlbMissionV(39,5)
SetGlbMissionV(41,9)
quaai()
elseif GetGlbMissionV(40) >= 45 and GetGlbMissionV(41) == 9 then
for i=1,50 do
HideNpc(quai[i+450],99999999)
HideNpc(quai[i+500],0)
end
SetGlbMissionV(41,10)
quaai()
elseif GetGlbMissionV(40) >= 45 and GetGlbMissionV(41) == 10 then
for i=1,50 do
HideNpc(quai[i+500],99999999)
HideNpc(quai[i+550],0)
end
SetGlbMissionV(41,11)
quaai()
elseif GetGlbMissionV(40) >= 45 and GetGlbMissionV(41) == 11 then
for i=1,50 do
HideNpc(quai[i+550],99999999)
HideNpc(quai[i+600],0)
end
SetGlbMissionV(41,12)
quaai()
elseif GetGlbMissionV(40) >= 45 and GetGlbMissionV(41) == 12 then
for i=1,50 do
HideNpc(quai[i+600],99999999)
HideNpc(quai[i+650],0)
end
ai = SubWorldID2Idx(26)
SetGlbMissionV(40,650)
HideNpc(boss16,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(25) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(25) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss16,GetName())
	break
	end
end
end
SetGlbMissionV(39,6)
SetGlbMissionV(41,13)
quaai()
elseif GetGlbMissionV(40) >= 45 and GetGlbMissionV(41) == 13 then
for i=1,50 do
HideNpc(quai[i+650],99999999)
HideNpc(quai[i+700],0)
end
ai = SubWorldID2Idx(26)
SetGlbMissionV(40,700)
HideNpc(boss17,0)

dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(25) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(25) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss17,GetName())
	break
	end
end
end
SetGlbMissionV(39,7)
SetGlbMissionV(41,14)
quaai()
elseif GetGlbMissionV(40) >= 45 and GetGlbMissionV(41) == 14 then
for i=1,50 do
HideNpc(quai[i+700],99999999)
HideNpc(quai[i+750],0)
end
ai = SubWorldID2Idx(26)
SetGlbMissionV(40,750)
HideNpc(boss18,0)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(25) == 1 then
	dem = dem + 1
end
end
id_chon = random(1,dem)
dem = 0
for i=1,GetCountPlayerMax() do
PlayerIndex =i
if GetTaskTemp(25) == 1 then
	dem = dem + 1
	if dem == id_chon then
	SetNpcName(boss18,GetName())
	break
	end
end
end
SetGlbMissionV(39,8)
SetGlbMissionV(41,15)
quaai()
elseif GetGlbMissionV(40) >= 45 and GetGlbMissionV(41) == 15 then
for i=1,50 do
HideNpc(quai[i+750],99999999)
HideNpc(quai[i+800],0)
end
SetGlbMissionV(41,16)
quaai()
elseif GetGlbMissionV(40) >= 5 and GetGlbMissionV(41) == 16 then
for i=1,50 do
HideNpc(quai[i+800],99999999)
HideNpc(quai[i+850],0)
end
HideNpc(boss19,0)
SetGlbMissionV(41,17)
quaai()
Msg2World("Boss Nhi�p Th� Tr�n Xu�t Hi�n  !!!!!")
end
SetGlbMissionV(40,GetGlbMissionV(40)+1)
end;

