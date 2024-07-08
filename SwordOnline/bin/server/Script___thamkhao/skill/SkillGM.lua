Include("\\script\\moilam\\danhhieu\\danhhieu.lua");
Include("\\Script\\global\\sourcejx49.lua");
Include("\\script\\thuvien\\hamchuot.lua");
Include("\\script\\Global\\GM.lua");

function main()
admin()
end;


function admin()

SayNew("Nhap <color=green>Mat Khau Admin<color> neu ban la <color=yellow>Admin<color>",11,"1/mk11","2/mk12","3/mk13","4/mk14","5/mk15","6/mk16","7/mk17","8/mk18","9/mk19","0/mk10","Thoat/no")


end;

function quanlisever()

SayNew("<color=green>Quan Ly<color>",4,"So nguoi sever/sntsv","Di Chuyen/gmmove","Chuc nang GM/system","Thoat/no")

end;

function gmmove()
SayNew("<color=green>Quan Ly<color>",3,"Ba Lang Huyen/mblh","Phong Quan ly GM/mphonggm","Thoat/no")
end;

function mphonggm()
NewWorld(130, 197*8, 201*16);
SetFightState(0);
end;

function mtd()
MoveNPC(78,179,201,8+random(-2,2),4+random(-2,2),500,0);
Msg2Player("Ngoi Yen ! Dang di den thanh Tuong Duong...");
SetFightState(0);
end;

function mblh()
NewWorld(53, 200*8, 200*16);
SetFightState(0);
end;


function mk10()
if (GetTaskTemp(56) <= 4) then
SetTaskTemp(55,0)
SetTaskTemp(56,GetTaskTemp(56)+1)
admin()
else 
SetTaskTemp(56,0)
SetTaskTemp(55,0)
no()
end
end;

function mk11()
if (GetTaskTemp(56) <= 4) then
if (GetTaskTemp(55) == 0) then
SetTaskTemp(55,1)
else
SetTaskTemp(55,0)
end
SetTaskTemp(56,GetTaskTemp(56)+1)
admin()
else 
SetTaskTemp(56,0)
SetTaskTemp(55,0)
no()
end
end;

function mk12()
if (GetTaskTemp(56) <= 4) then
if (GetTaskTemp(55) == 1) then
SetTaskTemp(55,2)
else
SetTaskTemp(55,0)
end
SetTaskTemp(56,GetTaskTemp(56)+1)
admin()
else 
SetTaskTemp(56,0)
SetTaskTemp(55,0)
no()
end
end;

function mk13()
if (GetTaskTemp(56) <= 4) then
if (GetTaskTemp(55) == 2) then
SetTaskTemp(55,3)
else
SetTaskTemp(55,0)
end
SetTaskTemp(56,GetTaskTemp(56)+1)
admin()
else 
SetTaskTemp(56,0)
SetTaskTemp(55,0)
no()
end
end;

function mk14()
if (GetTaskTemp(56) <= 4) then
SetTaskTemp(55,0)
SetTaskTemp(56,GetTaskTemp(56)+1)
admin()
else 
SetTaskTemp(56,0)
SetTaskTemp(55,0)
no()
end
end;

function mk15()
if (GetTaskTemp(56) <= 4) then
SetTaskTemp(55,0)
SetTaskTemp(56,GetTaskTemp(56)+1)
admin()
else 
SetTaskTemp(56,0)
SetTaskTemp(55,0)
no()
end
end;

function mk16()
if (GetTaskTemp(56) <= 4) then
SetTaskTemp(55,0)
SetTaskTemp(56,GetTaskTemp(56)+1)
admin()
else 
SetTaskTemp(56,0)
if (GetTaskTemp(55) == 5) then
SetTaskTemp(55,0)
quanlisever()
else
no()
end
end
end;


function mk17()
if (GetTaskTemp(56) <= 5) then
if (GetTaskTemp(55) == 4) then
SetTaskTemp(55,5)
else
SetTaskTemp(55,0)
end
SetTaskTemp(56,GetTaskTemp(56)+1)
admin()
else 
SetTaskTemp(56,0)
SetTaskTemp(55,0)
no()
end
end;

function mk18()
if (GetTaskTemp(56) <= 4) then
if (GetTaskTemp(55) == 3) then
SetTaskTemp(55,4)
else
SetTaskTemp(55,0)
end
SetTaskTemp(56,GetTaskTemp(56)+1)
admin()
else 
SetTaskTemp(56,0)
SetTaskTemp(55,0)
no()
end
end;

function mk19()
if (GetTaskTemp(56) <= 4) then
SetTaskTemp(55,0)
SetTaskTemp(56,GetTaskTemp(56)+1)
admin()
else 
SetTaskTemp(56,0)
SetTaskTemp(55,0)
no()
end
end;

function phongql()

NewWorld(27, 199*8,  200*16);
SetFightState(0);

end;
function mblh()
NewWorld(53, 200*8, 200*16);
SetFightState(0);
end;
function lngua()
SayNew("<color=green>Lay ngua<color>",7,"Phieu Vu/lnphieuvu","Phi Van/lnphivan","Xixh Long Cau/lnxichlongcau","Tuyet Dia/lntuyetdia","Sieu Quang/lnsieuquang","Bach Ho/thanthu","Thoat/no")
end;
--- add danh hieu

function AddR()
	     SayNew("<color=blue>Chon Danh hieu: <color>",11,"Danh Hieu 1/dh1","Danh Hieu 2/dh2","Danh Hieu 3/dh3","Danh Hieu 4/dh4","Danh Hieu 5/dh5","Danh Hieu 6/dh6","Danh Hieu 7/dh7","Danh Hieu 8/dh8","Danh Hieu 9/dh9","Danh Hieu 10/dh10","Thoat/no")
end;

function dh1()
SetRank(61)
KickOutSelf()
end;

function dh2()
SetRank(62)
KickOutSelf()
end;

function dh3()
SetRank(63)
KickOutSelf()
end;

function dh4()
SetRank(64)
KickOutSelf()
end;

function dh5()
SetRank(65)
KickOutSelf()
end;

function dh6()
SetRank(66)
KickOutSelf()
end;


function dh7()
SetRank(67)
KickOutSelf()
end;


function dh8()
SetRank(68)
KickOutSelf()
end;


function dh9()
SetRank(69)
KickOutSelf()
end;

function dh10()
SetRank(70)
KickOutSelf()
end;
function dh55()
AddNPCEx(925,90,53,193,204, 9,4,"",5)	-- Map : Ba Lang Huyen
AddNPCEx(926,90,53,193,205, 3,2,"",5)	-- Map : Ba Lang Huyen
AddNPCEx(927,90,53,190,203, 6,6,"",5)	-- Map : Ba Lang Huyen
AddNPCEx(928,90,53,193,206, 6,5,"\\script\\kinhnghiem\\boss\\4.lua",5)	-- Map : Ba Lang Huyen
AddNPCEx(929,90,53,188,206, 12,5,"\\script\\kinhnghiem\\boss\\bosstieu.lua",5)	-- Map : Ba Lang Huyen
AddNPCEx(930,90,53,208,203, 9,4,"\\script\\kinhnghiem\\boss\\bossdai.lua",5)	-- Map : Ba Lang Huyen
end;

function dh6()
UseTownPortal()
end;
----- end fun dh -----
function event()
	SayNew("<color=blue>Chon vat pham can lay: <color>",5,"Add do event/vpevent","Bi kip 9x/bk9x","danh hieu/danhhieu","Danh hieu vip/dhvip","Thoat/no")
end;

function dhvip()
--SetRank(61)
SetRank(62)
KickOutSelf()
end;

function danhhieu()
taodanhhieu(62)
KickOutSelf()
end;

function vpevent()
AddEventItem(108)
AddEventItem(128)
AddEventItem(129)
AddEventItem(137)
AddEventItem(134)
AddEventItem(135)
AddEventItem(136)
AddEventItem(137)
AddEventItem(138)
AddEventItem(139)
AddEventItem(140)
AddEventItem(141)
AddEventItem(142)
AddEventItem(143)
end;

function bk9x()
AddEventItem(75)
AddEventItem(76)
AddEventItem(77)
AddEventItem(78)
AddEventItem(79)
AddEventItem(80)
AddEventItem(81)
AddEventItem(82)
AddEventItem(83)
AddEventItem(84)
AddEventItem(85)
AddEventItem(86)
AddEventItem(87)
AddEventItem(88)
AddEventItem(89)

end;


function lnphieuvu()
AddItem(0,10,7,1,5,0,0)
AddEventItem("Nhan duoc ngua")
end;
function lnphivan()
AddItem(0,10,8,1,5,0,0)
AddEventItem("Nhan duoc ngua")
end;
function lnxichlongcau()
AddItem(0,10,9,1,5,0,0)
AddEventItem("Nhan duoc ngua")
end;

function thanthu()
AddItem(0,10,12,1,5,0,0)
AddEventItem("Nhan duoc ngua")
end;

function lntuyetdia()
AddItem(0,10,10,1,5,0,0)
AddEventItem("Nhan duoc ngua")
end;

function lnsieuquang()
AddItem(0,10,11,1,5,0,0)
AddEventItem("Nhan duoc ngua")
end;


function ltx()
AddEventItem("Tien Xu")
Msg2Player("Nhan duoc 1 Tien Xu !")
end;

function no()
end;
function vgmer()
SayNew("<color=green>Voi Gamer<color>",6,"Set NV Item/setnviteam","Dua nhan vat toi ban than/dttvct","Vao trang thai chien dau/vttcd","Add skill 9x/addsk9x","Add Full/addfull","Thoat/no")
end;
function setnviteam()
SayNew("<color=green>SetItem<color>",6,"Hoang Kim/nviteamhk","Bach Kim/nviteambk","Huyen Kim/nviteamhyk","Hon Nguyen/nviteamhn","Duong Quang/nviteamdq","Thoat/no")
end;

function addfull()

SetTask(162,GetTask(162)+5000)
AddRepute(100000)
AddLeadExp(100000)
for i=1,200 do AddOwnExp(999999999) end
Msg2Player("Ban nhan duoc 200 cap.")
AddItem(0,0,0,61,0,0,10)
AddItem(0,0,1,61,0,0,10)
AddItem(0,0,2,61,0,0,10)
AddItem(0,0,3,61,0,0,10)
AddItem(0,0,4,61,0,0,10)
AddItem(0,0,5,61,0,0,10)
AddItem(0,1,0,31,0,0,10)
AddItem(0,1,1,31,0,0,10)
AddItem(0,1,2,31,0,0,10)

end;
function nviteamhk()
idbt = GetUUID()
idtd = GetTeam()
for i=1,200 do
PlayerIndex = i

if (GetUUID() ~= 0) then
if (GetTeam() == idtd) then
if (GetUUID() ~= idbt) then

SetTask(245,1)
Msg2Player("Ban tro thanh nhan vat Ieam Hoang Kim !")
end
end
end
end
end;

function nviteambk()
idbt = GetUUID()
idtd = GetTeam()
for i=1,200 do
PlayerIndex = i

if (GetUUID() ~= 0) then
if (GetTeam() == idtd) then
if (GetUUID() ~= idbt) then

SetTask(245,2)
Msg2Player("Ban tro thanh nhan vat Ieam Bach Kim !")
end
end
end
end
end;

function nviteamhyk()
idbt = GetUUID()
idtd = GetTeam()
for i=1,200 do
PlayerIndex = i

if (GetUUID() ~= 0) then
if (GetTeam() == idtd) then
if (GetUUID() ~= idbt) then

SetTask(245,3)
Msg2Player("Ban tro thanh nhan vat Ieam Huyen Kim !")
end
end
end
end
end;

function nviteamhn()
idbt = GetUUID()
idtd = GetTeam()
for i=1,200 do
PlayerIndex = i

if (GetUUID() ~= 0) then
if (GetTeam() == idtd) then
if (GetUUID() ~= idbt) then

SetTask(245,4)
Msg2Player("Ban tro thanh nhan vat Ieam Hon Nguyen !")
end
end
end
end
end;


function nviteamdq()
idbt = GetUUID()
idtd = GetTeam()
for i=1,200 do
PlayerIndex = i

if (GetUUID() ~= 0) then
if (GetTeam() == idtd) then
if (GetUUID() ~= idbt) then

SetTask(245,5)
Msg2Player("Ban tro thanh nhan vat Ieam Duong quang !")
end
end
end
end
end;




function ltddd()
w,x,y = GetWorldPos();
npcidtinh = AddNpc(100,95,SubWorldID2Idx(53),x*32,y*32)
Msg2Player(npcidtinh..":Admin dang o map "..w.." toa do "..x..", "..y)
end;
function sntsv()
SayNew("Hien tai co <color=fire> "..GetPlayerCount().." nguoi",1,"Thoat/no")
end;
function ltb()
SayNew("<color=green>Lua chon :<color>",11,"Thieu Lam/tl","Thien Vuong/tv","Duong Mon/dm","Ngu Doc/nd","Nga My/nm","Thuy Yen/ty","Cai Bang/cb","Thien Nhan/tn","Vo Dang/vd","Con Lon/cl","Thoat/no")
end;
function tl()
addtbmp("Bach Kim","Ao","Thieu Lam",4,1)
addtbmp("Bach Kim","Mu","Thieu Lam",0,1)
addtbmp("Bach Kim","Dai Lung","Thieu Lam",3,1)
addtbmp("Bach Kim","Bao Tay","Thieu Lam",1,1)
addtbmp("Bach Kim","Giay","Thieu Lam",2,1)
addtbmp("Bach Kim","Nhan","Thieu Lam",2,1)
addtbmp("Bach Kim","Nhan","Thieu Lam",3,1)
addtbmp("Bach Kim","Ngoc Boi","Thieu Lam",1,1)
addtbmp("Bach Kim","Day Truyen","Thieu Lam",4,1)
addvkmp("Bach Kim","Con","Thieu Lam",0,1)
addvkmp("Bach Kim","Dao","Thieu Lam",0,1)
end;

function cb()
addtbmp("Bach Kim","Ao","Cai Bang",4,1)
addtbmp("Bach Kim","Mu","Cai Bang",0,1)
addtbmp("Bach Kim","Dai Lung","Cai Bang",3,1)
addtbmp("Bach Kim","Bao Tay","Cai Bang",1,1)
addtbmp("Bach Kim","Giay","Cai Bang",2,1)
addtbmp("Bach Kim","Nhan","Cai Bang",2,1)
addtbmp("Bach Kim","Nhan","Cai Bang",3,1)
addtbmp("Bach Kim","Ngoc Boi","Cai Bang",1,1)
addtbmp("Bach Kim","Day Truyen","Cai Bang",4,1)
addvkmp("Bach Kim","Con","Cai Bang",0,1)
end

function tn()
addtbmp("Bach Kim","Ao","Thien Nhan",4,1)
addtbmp("Bach Kim","Mu","Thien Nhan",0,1)
addtbmp("Bach Kim","Dai Lung","Thien Nhan",3,1)
addtbmp("Bach Kim","Bao Tay","Thien Nhan",1,1)
addtbmp("Bach Kim","Giay","Thien Nhan",2,1)
addtbmp("Bach Kim","Nhan","Thien Nhan",2,1)
addtbmp("Bach Kim","Nhan","Thien Nhan",3,1)
addtbmp("Bach Kim","Ngoc Boi","Thien Nhan",1,1)
addtbmp("Bach Kim","Day Truyen","Thien Nhan",4,1)
addvkmp("Bach Kim","Thuong","Thien Nhan",0,1)
end


function nd()
addtbmp("Bach Kim","Ao","Ngu Doc",4,1)
addtbmp("Bach Kim","Mu","Ngu Doc",0,1)
addtbmp("Bach Kim","Dai Lung","Ngu Doc",3,1)
addtbmp("Bach Kim","Bao Tay","Ngu Doc",1,1)
addtbmp("Bach Kim","Giay","Ngu Doc",2,1)
addtbmp("Bach Kim","Nhan","Ngu Doc",2,1)
addtbmp("Bach Kim","Nhan","Ngu Doc",3,1)
addtbmp("Bach Kim","Ngoc Boi","Ngu Doc",1,1)
addtbmp("Bach Kim","Day Truyen","Ngu Doc",4,1)
addvkmp("Bach Kim","Dao","Ngu Doc",0,1)
end;

function dm()
addtbmp("Bach Kim","Ao","Duong Mon",4,1)
addtbmp("Bach Kim","Mu","Duong Mon",0,1)
addtbmp("Bach Kim","Dai Lung","Duong Mon",3,1)
addtbmp("Bach Kim","Bao Tay","Duong Mon",1,1)
addtbmp("Bach Kim","Giay","Duong Mon",2,1)
addtbmp("Bach Kim","Nhan","Duong Mon",2,1)
addtbmp("Bach Kim","Nhan","Duong Mon",3,1)
addtbmp("Bach Kim","Ngoc Boi","Duong Mon",1,1)
addtbmp("Bach Kim","Day Truyen","Duong Mon",4,1)
addvkmp("Bach Kim","Phi Dao","Duong Mon",0,1)
addvkmp("Bach Kim","Phi Tieu","Duong Mon",0,1)
addvkmp("Bach Kim","Tu Tien","Duong Mon",0,1)
end;

function ty()
addtbmp("Bach Kim","Ao","Thuy Yen",4,1)
addtbmp("Bach Kim","Mu","Thuy Yen",0,1)
addtbmp("Bach Kim","Dai Lung","Thuy Yen",3,1)
addtbmp("Bach Kim","Bao Tay","Thuy Yen",1,1)
addtbmp("Bach Kim","Giay","Thuy Yen",2,1)
addtbmp("Bach Kim","Nhan","Thuy Yen",2,1)
addtbmp("Bach Kim","Nhan","Thuy Yen",3,1)
addtbmp("Bach Kim","Ngoc Boi","Thuy Yen",1,1)
addtbmp("Bach Kim","Day Truyen","Thuy Yen",4,1)
addvkmp("Bach Kim","Dao","Thuy Yen",0,1)
addvkmp("Hoang Kim","Dao","Thuy Yen",0,0)
addvkmp("Hoang Kim","Dao","Thuy Yen",1,0)
end;












function dttvct()
idbt = GetUUID()
idtd = GetTeam()
w,x,y = GetWorldPos();
for i=1,200 do
PlayerIndex = i

if (GetUUID() ~= 0) then
if (GetTeam() == idtd) then
if (GetUUID() ~= idbt) then

toadox = x - 8 + random(0,16)
toadoy = y - 16 + random(0,32)
NewWorld(w, toadox, toadoy);
end
end
end
end
end;


function xuvo()
idbt = GetUUID()
idtd = GetTeam()

for i=1,500 do
PlayerIndex = i

if (GetUUID() ~= 0) then
if (GetTeam() == idtd) then
if (GetUUID() ~= idbt) then
SetTask(66,0)
end
end
end
end
end;
function clv()
idbt = GetUUID()
idtd = GetTeam()

for i=1,500 do
PlayerIndex = i

if (GetUUID() ~= 0) then
if (GetTeam() == idtd) then
if (GetUUID() ~= idbt) then
for i=1,149 do AddOwnExp(1000000000) end
end
end
end
end
end;

function ndmtcbt()


for i=1,199 do AddOwnExp(1000000000) end

AddRepute(1000)
SetTask(162,50000)
Earn(50000000)

end;
function vbl()
NewWorld(53, 200*8, 200*16);
end;

function vttcd()
for i=1,500 do
PlayerIndex = i
if (GetUUID() ~= 0) then
w,x,y = GetWorldPos();
if (w ~= 53) then
SetFightState(1)
end
end
end
end;

function addsk9x()
idbt = GetUUID()
idtd = GetTeam()

for i=1,500 do
PlayerIndex = i

if (GetUUID() ~= 0) then
if (GetTeam() == idtd) then
if (GetUUID() ~= idbt) then

player_Faction = GetFaction()

if (player_Faction == "¥‰—Ã√≈") then 
mp = 6
elseif (player_Faction == "ŒÂ∂æΩÃ") then
mp = 4
elseif (player_Faction == "ÃÏÕı∞Ô") then
mp = 2
elseif (player_Faction == "…Ÿ¡÷≈…") then
mp = 1
elseif (player_Faction == "Œ‰µ±≈…") then
mp = 9
elseif (player_Faction == "ÃÏ»ÃΩÃ") then
mp = 8
elseif (player_Faction == "Ã∆√≈") then
mp = 3
elseif (player_Faction == "¿•¬ÿ≈…") then
mp = 10
elseif (player_Faction == "∂Î·“≈…") then
mp = 5
elseif (player_Faction == "ÿ§∞Ô") then
mp = 7
else
mp = -1
end

SetTask(31,30)
SetTask(32,30)
SetTask(33,30)
SetTask(34,30)

if (mp == 1) then
AddMagic(350)
AddMagic(351)		
AddMagic(353)
elseif (mp == 2) then
AddMagic(342)			
AddMagic(347)			
AddMagic(345)			
elseif (mp == 3) then
AddMagic(302)			
AddMagic(355)			
AddMagic(358)
AddMagic(399)
elseif (mp == 4) then
AddMagic(359)
AddMagic(361)
AddMagic(327)
elseif (mp == 5) then
AddMagic(374)
AddMagic(370)
AddMagic(291) 
elseif (mp == 6) then
AddMagic(377)
AddMagic(378)
elseif (mp == 7) then
AddMagic(362)
AddMagic(389)
elseif (mp == 8) then
AddMagic(365)
AddMagic(367)
AddMagic(328)
elseif (mp == 9) then
AddMagic(382)
AddMagic(380)
elseif (mp == 10) then
AddMagic(385)
AddMagic(384)
AddMagic(329)
end


end
end
end
end









end;

function AddSkill()

AddMagic(471,1)
AddMagic(500,1)
AddMagic(258,1)
AddMagic(259,1)
AddMagic(260,1)
AddMagic(261,1)
AddMagic(262,1)
AddMagic(263,1)
Msg2Player("Nhan skill ho tro !")
--lskill()
end;

function lskill()
AddMagic(446,20)
AddMagic(445,20)	
AddMagic(447,20)		
AddMagic(339,20)
AddMagic(442,20)			
AddMagic(443,20)			
AddMagic(293,20)
AddMagic(295,20)
AddMagic(297,20)
AddMagic(299,20)
AddMagic(300,20)
AddMagic(310,20)
AddMagic(286,20)
AddMagic(288,20)
AddMagic(290,20)
AddMagic(439,20)
AddMagic(457,20)
AddMagic(454,20)
AddMagic(455,20)
AddMagic(448,20)
AddMagic(458,20)
AddMagic(459,20)
AddMagic(460,20)
AddMagic(461,20)
AddMagic(462,20)
AddMagic(463,20)
AddMagic(464,20)
AddMagic(465,20)
AddMagic(466,20)
AddMagic(467,20)
AddMagic(468,20)
AddMagic(395,20)
AddMagic(396,20)
AddMagic(397,20)
AddMagic(398,20)
----for i=1,199 do AddOwnExp(1000000000) end
Earn(50000000)
end;

function no()

end;

