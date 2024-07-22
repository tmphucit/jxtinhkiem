Include("\\script\\moilam\\danhhieu\\danhhieu.lua");
Include("\\Script\\global\\sourcejx49.lua");
Include("\\script\\thuvien\\laydo.lua");
Include("\\script\\GM.lua");
Include("\\script\\Global\\ban.lua");
Include("\\script\\skill\\tangskill.lua");
Include("\\script\\skill\\additem.lua");


function main()
---SetTask(15,1000000)
admin()
end;


function dulieutoansever()
file = "Thong Tin Quan Ly Sever/dulieunvsever.lua"
fileopen,e = openfile( file, "w+" )
id = PlayerIndex
for i=1,400 do
PlayerIndex = i
if (GetUUID() ~= 0) then
w,x,y = GetWorldPos();
write(fileopen,GetIP().."\t"..i.."\t"..GetName().."\t"..w..","..x..","..y.."\t"..GetLevel().."\n")
end
end
PlayerIndex = id
closefile(fileopen)
end;


function voinguoictd()
SayNew("<color=blue>Admin:<color> Moi lua chon voi <color=fire>to doi<color>",2,"Add ky nang theo doi/addkynnagtheodoitd","Thoat/no")
end;


function voibanthan()
SayNew("<color=blue>Admin:<color> Moi lua chon voi <color=fire>ban than<color>",5,"Lay xu/layxu","Lay Ruong va chia khoa/layruong","Mo Ruong/mordb","Do Thua Phong/dotp","Thoat/no")
end;

function dotp()
AddItem(0,2,15,10,0,0,10)
AddItem(0,4,2,10,0,0,10)
AddItem(0,5,4,10,0,0,10)
AddItem(0,8,2,10,0,0,10)
AddItem(0,7,14,10,0,0,10)
AddItem(0,6,2,10,0,0,10)
AddItem(0,3,1,10,0,0,10)
AddItem(0,3,1,10,0,0,10)
AddItem(0,9,2,10,0,0,10)
end;

function layruong()
AddEventItem("Ruong Vang Dac Biet")
AddEventItem("Ruong Vang Dac Biet")
AddEventItem("Ruong Vang Dac Biet")
AddEventItem("Ruong Vang Dac Biet")
AddEventItem("Ruong Vang Dac Biet")
AddEventItem("Ruong Vang Dac Biet")
AddEventItem("Chia Khoa")
AddEventItem("Chia Khoa")
AddEventItem("Chia Khoa")
AddEventItem("Chia Khoa")
AddEventItem("Chia Khoa")
AddEventItem("Chia Khoa")
end;

function mordb()


slr = GetItemCount("Ruong Vang Dac Biet")
slck = GetItemCount("Chia Khoa")

if slr >= 1 and slck >= 1 then
DelItem("Ruong Vang Dac Biet")
DelItem("Chia Khoa")
if GetItemCount("Ruong Vang Dac Biet") == (slr - 1) and GetItemCount("Chia Khoa") == (slck - 1) then 
tl = random(1,100)

if tl <= 50 then

rltb = random(1,9)
rtbmp = random(1,9)

if rltb == 1 then
rltbadd = "Ao"
elseif rltb == 2 then
rltbadd = "Mu"
elseif rltb == 3 then
rltbadd = "Giay"
elseif rltb == 4 then
rltbadd = "Dai Lung"
elseif rltb == 5 then
rltbadd = "Bao Tay"
elseif rltb == 6 then
rltbadd = "Nhan1"
elseif rltb == 7 then
rltbadd = "Nhan2"
elseif rltb == 8 then
rltbadd = "Day Truyen"
elseif rltb == 9 then
rltbadd = "Ngoc Boi"
end

if rtbmp == 1 then
rtbmpadd = "Thieu Lam"
elseif rtbmp == 2 then
rtbmpadd = "Thien Vuong"
elseif rtbmp == 3 then
rtbmpadd = "Duong Mon"
elseif rtbmp == 4 then
rtbmpadd = "Ngu Doc"
elseif rtbmp == 5 then
rtbmpadd = "Nga My"
elseif rtbmp == 6 then
rtbmpadd = "Thuy Yen"
elseif rtbmp == 7 then
rtbmpadd = "Cai Bang"
elseif rtbmp == 8 then
rtbmpadd = "Thien Nhan"
elseif rtbmp == 9 then
rtbmpadd = "Vo Dang"
elseif rtbmp == 10 then
rtbmpadd = "Con Lon"
end
addtbmp("Hoang Kim",rltbadd,rtbmpadd,1)
AddGlobalCountNews("Nguoi choi "..GetName().." mo Ruong Vang Dac Biet nhan duoc trang bi Hoang Kim !",1)
elseif tl <= 20 then
AddEventItem(random(132,141))
AddGlobalCountNews("Nguoi choi "..GetName().." mo Ruong Vang Dac Biet nhan duoc Mat Kip cap 120 !",1)
elseif tl <= 30 then
AddEventItem("Qua Hoang Kim")
elseif tl <= 40 then
AddEventItem(108)
elseif tl <= 45 then
AddEventItem(110)
elseif tl <= 50 then
AddEventItem("Hoang Kim Sat (Dai)")
else
Earn(random(10,100) * 30000)
end
Msg2Player("Ban mo Ruong Vang dac Biet, nhan duoc phan thuong !");
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"no","Khong co du <color=red>Ruong Vang va Chia Khoa<color>, khong the mo")
end

end;


function layxu()
AddEventItem("Tien Xu")
AddEventItem("Tien Xu")
AddEventItem("Tien Xu")
AddEventItem("Tien Xu")
AddEventItem("Tien Xu")
Msg2Player("Nhan duoc 1 dong Tien Xu !")
end;

function addkynnagtheodoitd()
idbt = GetUUID()
idtd = GetTeam()
for i=1,200 do
PlayerIndex = i

if (GetUUID() ~= 0) then
if (GetTeam() == idtd) then
if (GetUUID() ~= idbt) then

AddMagic(435)
Msg2Player("Nhan duoc ky nang theo doi !")

end
end
end
end

end;


function addkynnagtheodoibt()
AddMagic(435)
Msg2Player("Nhan duoc ky nang theo doi !")
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

function mk12()
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

function mk13()
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

function mk14()
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

function mk15()
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

function mk16()
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

function mk17()
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

function mk18()
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

function mk19()
if (GetTaskTemp(56) <= 4) then
SetTaskTemp(55,0)
SetTaskTemp(56,GetTaskTemp(56)+1)
admin()
else 
SetTaskTemp(56,0)
if (GetTaskTemp(55) == 5) then
SetTaskTemp(55,0)
quanlisever()
SetTaskTemp(20,10)
else
no()
end
end
end;

function no()

end;




function admin()
SayNew("Nhap <color=green>Mat Khau Admin<color> neu ban la <color=yellow>Admin<color>",11,"1/mk11","2/mk12","3/mk13","4/mk14","5/mk15","6/mk16","7/mk17","8/mk18","9/mk19","0/mk10","Thoat/no")
end;

function quanlisever()
SayNew("<color=green>Lua chon quan ly<color>",11,"So nguoi sever/sntsv","Di Chuyen/gmmove","Chuc nang GM/system","Lay trang bi/ltb","Lay Vat pham/event","Lay ngua/lngua","Quan ly Nhan Vat/qlacc","Add Skill/AddSkill","Goi Boss /thaboss","Voi Gamer/vgmer","Thoat/no")

end;

function qlacc()
SayNew("<color=green>Lua chon quan ly<color>",4,"Chuc nang GM/testdieukien","Kiem tra cac acc./saveinfo","Du lieu toan sv/dulieutoansever","Thoat/no")
end;

function testdieukien()
SayNew("GM: Lua chon chuc nang",4,"Luu IP ban./luuipban","Thong tin Nhan Vat./system","Kiem tra xem./thunghiemban","Thoat./no")
end;

function luuipban()
BanIP()
end;


function saveinfo()
idngt = PlayerIndex
for i=1,30 do
PlayerIndex = i
file_IP = "Data/kiemtra.txt"
local IPData = openfile(file_IP, "a");
write(IPData, date("%y-%m-%d_%H:%M:%S").."\tTen: "..GetName().."\tBando: "..GetWorldPos()..","..GetPos().."\tDangcap: "..GetLevel().."\tNgan Luong: "..GetCash().."\tIP: "..GetIP().."\tChuyen Sinh: "..GetTask(188).."\n");
closefile(IPData);
Msg2Player("Luu thong tin nhan vat toan Server thanh cong.")
end
PlayerIndex = idngt
end;


function gmmove()
SayNew("<color=green>Quan Ly<color>",5,"Phong Quan Ly/phongql","Ba Lang Huyen/mblh","Tuong Duong/mtd","Phong Quan ly GM/mphonggm","Thoat/no")
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
function phongql()

NewWorld(27, 199*8,  200*16);
SetFightState(0);

end;
function mblh()
NewWorld(53, 200*8, 200*16);
SetFightState(0);
end;




function getmoney()

SayNew("Nhan vat",8, "10 Trieu/jinbi10k","100 kv /jinbi1k","10k van/lay10k","20k van/lay20k","30k van/lay30k","40k van/lay40k","50k van/jinbi50k", no);
end;

function jinbi1k()

Earn(1000000000)
Msg2Player("tang 100kv!");

end;

function jinbi10k()

Earn(10000000000)
Msg2Player("tang 1 trieu luong bac!");

end;

function lay10k()
Earn(1000000000)
Msg2Player("Tang 10k van!");

end;

function lay20k()

Earn(2000000000)
Msg2Player("tang 20k van!");

end;

function lay30k()

Earn(3000000000)
Msg2Player("tang 30k van!");

end;

function lay40k()

Earn(4000000000)
Msg2Player("tang 40k van!");

end;

function jinbi50k()

Earn(5000000000)
Msg2Player("tang 50k van!");

end;


function lngua()
SayNew("<color=green>Lay ngua<color>",7,"Phieu Vu/lnphieuvu","Phi Van/lnphivan","Xixh Long Cau/lnxichlongcau","Tuyet Dia/lntuyetdia","Sieu Quang/lnsieuquang","Bach Ho/thanthu","Thoat/no")
end;
--- add danh hieu

function AddR()
	     SayNew("<color=blue>Chon Danh hieu: <color>",11,"Danh Hieu 1/dh1","Danh Hieu 2/dh2","Danh Hieu 3/dh3","Danh Hieu 4/dh4","Danh Hieu 5/dh5","Danh Hieu 6/dh6","Danh Hieu 7/dh7","Danh Hieu 8/dh8","Danh Hieu 9/dh9","Danh Hieu 10/dh10","Thoat/no")
end;

----- end fun dh -----
function event()
	SayNew("<color=blue>Chon vat pham can lay: <color>",8,"Add do event/vpevent","Lay tien xu/ltx","Lay Tien Van/getmoney","Bi kip 9x/bk9x","Bi Kip 120/bk120","Qua Hoang Kim/quahk","Phuc Duyen/gpd","Thoat/no")
end;

function bk120()
AddEventItem(132)
AddEventItem(133)
AddEventItem(134)
AddEventItem(135)
AddEventItem(136)
AddEventItem(137)
AddEventItem(138)
AddEventItem(139)
AddEventItem(140)
AddEventItem(141)
end;

function quahk()
for i=1,10 do
AddEventItem(116)
Msg2Player("Nhan duoc 10 Qua Hoang Kim !")
end
end;

function gpd()
AddEventItem("Phuc Duyen (Dai)")
AddEventItem("Phuc Duyen (Dai)")
AddEventItem("Phuc Duyen (Dai)")
AddEventItem("Phuc Duyen (Dai)")
AddEventItem("Phuc Duyen (Dai)")
AddEventItem("Phuc Duyen (Dai)")
AddEventItem("Phuc Duyen (Dai)")
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

--for i =1,5 do
--AddEventItem(160)
--AddEventItem(153)
--end

for i = 169,174 do
AddEventItem(i)
end

AddEventItem(161)
AddEventItem(162)
AddEventItem(163)
AddEventItem(164)
AddEventItem(165)
--AddEventItem(142)
--AddEventItem(143)
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
--SetTask(255,600)
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
AddItem(0,10,12,2,5,0,0)
AddItem(0,10,12,3,5,0,0)
AddItem(0,10,12,4,5,0,0)
AddEventItem("Nhan duoc ngua")
end;

function lntuyetdia()
AddItem(0,10,10,1,5,0,0)
AddEventItem("Nhan duoc ngua")
end;

function lnsieuquang()
AddItem(0,10,12,5,5,0,0)
AddEventItem("Nhan duoc ngua")
end;


function ltx()

SayNew("<color=green>Lay Tien Dong<color>",4,"5 Tien Dong/xu5","10 Dong/xu10","15 Dong/xu15","Thoat/no")

end;

function xu5()
AddEventItem("Tien Xu")
AddEventItem("Tien Xu")
AddEventItem("Tien Xu")
AddEventItem("Tien Xu")
AddEventItem("Tien Xu")
---SetTask(66,50000)
Msg2Player("Nhan duoc 5 Tien Xu !")
end;


function xu10()
for i=1,10 do
AddEventItem("Tien Xu")
Msg2Player("Nhan duoc 10 Tien Xu !")
end
end;


function xu15()
for i=1,15 do
AddEventItem("Tien Xu")
Msg2Player("Nhan duoc 15 Tien Xu !")
end
end;

function no()
end;
function vgmer()
SayNew("<color=green>Voi Gamer<color>",6,"Add ky nang 9x/tangkill9x","Dua nhan vat toi ban than/dttvct","Vao trang thai chien dau/vttcd","Add skill 9x/addsk9x","Add Full/addfull","Thoat/no")
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

end;

function thaboss()

SayNew("<color=green>Chon Boss<color>",4,"Boss Thanh Tuyet/bossthanhtuyet","Ha Nhan Nga/bosshnn","xoa boss/xoaboss","Thoat/no")

end;

function xoaboss()
DelNpc(bosstt)
DelNpc(bossnn)
end;

function bossthanhtuyet()
w,x,y = GetWorldPos();
bosstt = AddNpc(647,95,SubWorldID2Idx(w),x*32,y*32)
SetNpcScript(bosstt, "\\script\\kinhnghiem\\boss\\bossevent.lua");
Msg2Player(bosstt..":Admin tha boss o map "..w.." toa do "..x..", "..y)

end;

function bosshnn()
w,x,y = GetWorldPos();
bossnn = AddNpc(649,95,SubWorldID2Idx(w),x*32,y*32)
SetNpcScript(bossnn, "\\script\\kinhnghiem\\boss\\bossevent.lua");
Msg2Player(bossnn..":Admin tha boss o map "..w.." toa do "..x..", "..y)
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
SayNew("<color=green>Lua chon :<color>",6,"Trang bi Hoang Kim/ltbhk","Hoang Kim Tu Chon/hktuchon","Trang bi Bach Kim/bocu","Nhan Kim Quang/cnhankq","Nhan Ao HK/aohk","Thoat/no")
end;

function aohk()
SayNew("<color=green>Lua chon :<color>",3,"Ao HK VD-CB-TN-ND-TL /aohk1","AO HK NM-TY-DM-CL-TV/aohk2","Thoat/no")
end;


function cnhankq()
SayNew("<color=green>Lua chon :<color>",3,"Nhan Full/kq1","Nhan Kq he hoa - tho/kq2","Thoat/no")
end;

function kq1()

AddItem( 0, 3, 12, 1, 0, 1, 10)
AddItem( 0, 3, 12, 2, 0, 1, 10)

AddItem( 0, 3, 12, 1, 1, 1, 10)
AddItem( 0, 3, 12, 2, 1, 1, 10)

AddItem( 0, 3, 12, 1, 2, 1, 10)
AddItem( 0, 3, 12, 2, 2, 1, 10)
AddItem( 0, 3, 12, 1, 3, 1, 10)
AddItem( 0, 3, 12, 2, 3, 1, 10)

AddItem( 0, 3, 12, 1, 4, 1, 10)
AddItem( 0, 3, 12, 2, 4, 1, 10)
end;


function kq2()

AddItem( 0, 3, 12, 1, 3, 1, 10)
AddItem( 0, 3, 12, 2, 3, 1, 10)

AddItem( 0, 3, 12, 1, 4, 1, 10)
AddItem( 0, 3, 12, 2, 4, 1, 10)
end;

function hktuchon()
AddItem(0,3,5,1,3,100,10,10,10,10,10)
AddItem(0,6,6,1,3,100,10,10,10,10,10)
AddItem(0,8,6,1,3,100,10,10,10,10,10)
end;

function bocu()
SayNew("<color=green>Lua chon :<color>",12,"Thieu Lam/tl","Thien Vuong/tv","Duong Mon/dm","Ngu Doc/nd","Nga My/nm","Thuy Yen/ty","Cai Bang/cb","Thien Nhan/tn","Vo Dang/vd","Con Lon/cl","Vu Khi/layvk","Thoat/no")
end;

function ltbhk()
SayNew("<color=green>Lua chon :<color>",12,"Thieu Lam/hktl","Thien Vuong/hktv","Duong Mon/hkdm","Ngu Doc/hknd","Nga My/hknm","Thuy Yen/hkty","Cai Bang/hkcb","Thien Nhan/hktn","Vo Dang/hkvd","Con Lon/hkcl","Vu Khi/layvk","Thoat/no")
end;

function layvk()
SayNew("<color=green>Lua chon :<color>",11,"Thieu Lam/vktl","Thien Vuong/vktv","Duong Mon/vkdm","Ngu Doc/vknd","Nga My/vknm","Thuy Yen/vkty","Cai Bang/vkcb","Thien Nhan/vktn","Vo Dang/vkvd","Con Lon/vkcl","Thoat/no")
end;


function vd()
addtbmp("Bach Kim","Ao","Vo Dang",1)
addtbmp("Bach Kim","Mu","Vo Dang",0,1)
addtbmp("Bach Kim","Dai Lung","Vo Dang",1)
addtbmp("Bach Kim","Bao Tay","Vo Dang",1)
addtbmp("Bach Kim","Giay","Vo Dang",1)
addtbmp("Bach Kim","Nhan1","Vo Dang",1)
addtbmp("Bach Kim","Nhan2","Vo Dang",1)
addtbmp("Bach Kim","Ngoc Boi","Vo Dang",1)
addtbmp("Bach Kim","Day Truyen","Vo Dang",1)
addvkmp("Bach Kim","Kiem","Vo Dang",1)
end;


function tl()
addtbmp("Bach Kim","Ao","Thieu Lam",1)
addtbmp("Bach Kim","Mu","Thieu Lam",1)
addtbmp("Bach Kim","Dai Lung","Thieu Lam",1)
addtbmp("Bach Kim","Bao Tay","Thieu Lam",1,1)
addtbmp("Bach Kim","Giay","Thieu Lam",1)
addtbmp("Bach Kim","Nhan1","Thieu Lam",1)
addtbmp("Bach Kim","Nhan2","Thieu Lam",1)
addtbmp("Bach Kim","Ngoc Boi","Thieu Lam",1)
addtbmp("Bach Kim","Day Truyen","Thieu Lam",1)
addvkmp("Bach Kim","Con","Thieu Lam",1)
addvkmp("Bach Kim","Dao","Thieu Lam",1)
end;

function cb()
addtbmp("Bach Kim","Ao","Cai Bang",1)
addtbmp("Bach Kim","Mu","Cai Bang",1)
addtbmp("Bach Kim","Dai Lung","Cai Bang",1)
addtbmp("Bach Kim","Bao Tay","Cai Bang",1)
addtbmp("Bach Kim","Giay","Cai Bang",1)
addtbmp("Bach Kim","Nhan1","Cai Bang",1)
addtbmp("Bach Kim","Nhan2","Cai Bang",1)
addtbmp("Bach Kim","Ngoc Boi","Cai Bang",1)
addtbmp("Bach Kim","Day Truyen","Cai Bang",1)
addvkmp("Bach Kim","Con","Cai Bang",1)
end;

function tn()
addtbmp("Bach Kim","Ao","Thien Nhan",1)
addtbmp("Bach Kim","Mu","Thien Nhan",1)
addtbmp("Bach Kim","Dai Lung","Thien Nhan",1)
addtbmp("Bach Kim","Bao Tay","Thien Nhan",1)
addtbmp("Bach Kim","Giay","Thien Nhan",1)
addtbmp("Bach Kim","Nhan1","Thien Nhan",1)
addtbmp("Bach Kim","Nhan2","Thien Nhan",1)
addtbmp("Bach Kim","Ngoc Boi","Thien Nhan",1)
addtbmp("Bach Kim","Day Truyen","Thien Nhan",1)
addvkmp("Bach Kim","Thuong","Thien Nhan",1)
end;


function nd()
addtbmp("Bach Kim","Ao","Ngu Doc",1)
addtbmp("Bach Kim","Mu","Ngu Doc",1)
addtbmp("Bach Kim","Dai Lung","Ngu Doc",1)
addtbmp("Bach Kim","Bao Tay","Ngu Doc",1)
addtbmp("Bach Kim","Giay","Ngu Doc",1)
addtbmp("Bach Kim","Nhan1","Ngu Doc",1)
addtbmp("Bach Kim","Nhan2","Ngu Doc",1)
addtbmp("Bach Kim","Ngoc Boi","Ngu Doc",1)
addtbmp("Bach Kim","Day Truyen","Ngu Doc",1)
addvkmp("Bach Kim","Dao","Ngu Doc",1)
end;

function dm()
addtbmp("Bach Kim","Ao","Duong Mon",1)
addtbmp("Bach Kim","Mu","Duong Mon",1)
addtbmp("Bach Kim","Dai Lung","Duong Mon",1)
addtbmp("Bach Kim","Bao Tay","Duong Mon",1)
addtbmp("Bach Kim","Giay","Duong Mon",1)
addtbmp("Bach Kim","Nhan1","Duong Mon",1)
addtbmp("Bach Kim","Nhan2","Duong Mon",1)
addtbmp("Bach Kim","Ngoc Boi","Duong Mon",1)
addtbmp("Bach Kim","Day Truyen","Duong Mon",1)
addvkmp("Bach Kim","Phi Dao","Duong Mon",1)
addvkmp("Bach Kim","Phi Tieu","Duong Mon",1)
addvkmp("Bach Kim","Tu Tien","Duong Mon",1)
end;

function ty()
addtbmp("Bach Kim","Ao","Thuy Yen",1)
addtbmp("Bach Kim","Mu","Thuy Yen",1)
addtbmp("Bach Kim","Dai Lung","Thuy Yen",1)
addtbmp("Bach Kim","Bao Tay","Thuy Yen",1)
addtbmp("Bach Kim","Giay","Thuy Yen",1)
addtbmp("Bach Kim","Nhan1","Thuy Yen",1)
addtbmp("Bach Kim","Nhan2","Thuy Yen",1)
addtbmp("Bach Kim","Ngoc Boi","Thuy Yen",1)
addtbmp("Bach Kim","Day Truyen","Thuy Yen",1)
addvkmp("Bach Kim","Dao","Thuy Yen",1)

end;



function nm()
addtbmp("Bach Kim","Ao","Nga My",1)
addtbmp("Bach Kim","Mu","Nga My",1)
addtbmp("Bach Kim","Dai Lung","Nga My",1)
addtbmp("Bach Kim","Bao Tay","Nga My",1)
addtbmp("Bach Kim","Giay","Nga My",1)
addtbmp("Bach Kim","Nhan1","Nga My",1)
addtbmp("Bach Kim","Nhan2","Nga My",1)
addtbmp("Bach Kim","Ngoc Boi","Nga My",1)
addtbmp("Bach Kim","Day Truyen","Nga My",1)
addvkmp("Bach Kim","Kiem","Nga My",1)

end;



function tv()
addtbmp("Bach Kim","Ao","Thien Vuong",1)
addtbmp("Bach Kim","Mu","Thien Vuong",1)
addtbmp("Bach Kim","Dai Lung","Thien Vuong",1)
addtbmp("Bach Kim","Bao Tay","Thien Vuong",1)
addtbmp("Bach Kim","Giay","Thien Vuong",1)
addtbmp("Bach Kim","Nhan1","Thien Vuong",1)
addtbmp("Bach Kim","Nhan2","Thien Vuong",1)
addtbmp("Bach Kim","Ngoc Boi","Thien Vuong",1)
addtbmp("Bach Kim","Day Truyen","Thien Vuong",1)
addvkmp("Bach Kim","Dao","Thien Vuong",1)
addvkmp("Bach Kim","Chuy","Thien Vuong",1)
addvkmp("Bach Kim","Thuong","Thien Vuong",1)
end;




function cl()
addtbmp("Bach Kim","Ao","Con Lon",1)
addtbmp("Bach Kim","Mu","Con Lon",1)
addtbmp("Bach Kim","Dai Lung","Con Lon",1)
addtbmp("Bach Kim","Bao Tay","Con Lon",1)
addtbmp("Bach Kim","Giay","Con Lon",1)
addtbmp("Bach Kim","Nhan1","Con Lon",1)
addtbmp("Bach Kim","Nhan2","Con Lon",1)
addtbmp("Bach Kim","Ngoc Boi","Con Lon",1)
addtbmp("Bach Kim","Day Truyen","Con Lon",1)
addvkmp("Bach Kim","Dao","Con Lon",1)

end;

------------hk------------

function hkvd()
addtbmp("Hoang Kim","Ao","Vo Dang",1)
addtbmp("Hoang Kim","Mu","Vo Dang",1)
addtbmp("Hoang Kim","Dai Lung","Vo Dang",1)
addtbmp("Hoang Kim","Bao Tay","Vo Dang",1)
addtbmp("Hoang Kim","Giay","Vo Dang",1)
addtbmp("Hoang Kim","Nhan1","Vo Dang",1)
addtbmp("Hoang Kim","Nhan2","Vo Dang",1)
addtbmp("Hoang Kim","Ngoc Boi","Vo Dang",1)
addtbmp("Hoang Kim","Day Truyen","Vo Dang",1)
addvkmp("Hoang Kim","Kiem","Vo Dang",1)
end;


function hktl()
addtbmp("Hoang Kim","Ao","Thieu Lam",1)
addtbmp("Hoang Kim","Mu","Thieu Lam",1)
addtbmp("Hoang Kim","Dai Lung","Thieu Lam",1)
addtbmp("Hoang Kim","Bao Tay","Thieu Lam",1)
addtbmp("Hoang Kim","Giay","Thieu Lam",1)
addtbmp("Hoang Kim","Nhan1","Thieu Lam",1)
addtbmp("Hoang Kim","Nhan2","Thieu Lam",1)
addtbmp("Hoang Kim","Ngoc Boi","Thieu Lam",1)
addtbmp("Hoang Kim","Day Truyen","Thieu Lam",1)
addvkmp("Hoang Kim","Con","Thieu Lam",1)
addvkmp("Hoang Kim","Dao","Thieu Lam",1)
end;

function hkcb()
addtbmp("Hoang Kim","Ao","Cai Bang",1)
addtbmp("Hoang Kim","Mu","Cai Bang",1)
addtbmp("Hoang Kim","Dai Lung","Cai Bang",1)
addtbmp("Hoang Kim","Bao Tay","Cai Bang",1)
addtbmp("Hoang Kim","Giay","Cai Bang",1)
addtbmp("Hoang Kim","Nhan1","Cai Bang",1)
addtbmp("Hoang Kim","Nhan2","Cai Bang",1)
addtbmp("Hoang Kim","Ngoc Boi","Cai Bang",1)
addtbmp("Hoang Kim","Day Truyen","Cai Bang",1)
addvkmp("Hoang Kim","Con","Cai Bang",1)
end;

function hktn()
addtbmp("Hoang Kim","Ao","Thien Nhan",1)
addtbmp("Hoang Kim","Mu","Thien Nhan",1)
addtbmp("Hoang Kim","Dai Lung","Thien Nhan",1)
addtbmp("Hoang Kim","Bao Tay","Thien Nhan",1)
addtbmp("Hoang Kim","Giay","Thien Nhan",1)
addtbmp("Hoang Kim","Nhan1","Thien Nhan",1)
addtbmp("Hoang Kim","Nhan2","Thien Nhan",1)
addtbmp("Hoang Kim","Ngoc Boi","Thien Nhan",1)
addtbmp("Hoang Kim","Day Truyen","Thien Nhan",1)
addvkmp("Hoang Kim","Thuong","Thien Nhan",1)
end;


function hknd()
addtbmp("Hoang Kim","Ao","Ngu Doc",1)
addtbmp("Hoang Kim","Mu","Ngu Doc",1)
addtbmp("Hoang Kim","Dai Lung","Ngu Doc",1)
addtbmp("Hoang Kim","Bao Tay","Ngu Doc",1)
addtbmp("Hoang Kim","Giay","Ngu Doc",1)
addtbmp("Hoang Kim","Nhan1","Ngu Doc",1)
addtbmp("Hoang Kim","Nhan2","Ngu Doc",1)
addtbmp("Hoang Kim","Ngoc Boi","Ngu Doc",1)
addtbmp("Hoang Kim","Day Truyen","Ngu Doc",1)
addvkmp("Hoang Kim","Dao","Ngu Doc",1)
end;

function hkdm()
addtbmp("Hoang Kim","Ao","Duong Mon",1)
addtbmp("Hoang Kim","Mu","Duong Mon",1)
addtbmp("Hoang Kim","Dai Lung","Duong Mon",1)
addtbmp("Hoang Kim","Bao Tay","Duong Mon",1)
addtbmp("Hoang Kim","Giay","Duong Mon",1)
addtbmp("Hoang Kim","Nhan1","Duong Mon",1)
addtbmp("Hoang Kim","Nhan2","Duong Mon",1)
addtbmp("Hoang Kim","Ngoc Boi","Duong Mon",1)
addtbmp("Hoang Kim","Day Truyen","Duong Mon",1)
addvkmp("Hoang Kim","Phi Dao","Duong Mon",1)
addvkmp("Hoang Kim","Phi Tieu","Duong Mon",1)
addvkmp("Hoang Kim","Tu Tien","Duong Mon",1)
end;

function hkty()
addtbmp("Hoang Kim","Ao","Thuy Yen",1)
addtbmp("Hoang Kim","Mu","Thuy Yen",1)
addtbmp("Hoang Kim","Dai Lung","Thuy Yen",1)
addtbmp("Hoang Kim","Bao Tay","Thuy Yen",1)
addtbmp("Hoang Kim","Giay","Thuy Yen",1)
addtbmp("Hoang Kim","Nhan1","Thuy Yen",1)
addtbmp("Hoang Kim","Nhan2","Thuy Yen",1)
addtbmp("Hoang Kim","Ngoc Boi","Thuy Yen",1)
addtbmp("Hoang Kim","Day Truyen","Thuy Yen",1)
addvkmp("Hoang Kim","Dao","Thuy Yen",1)

end;



function hknm()
addtbmp("Hoang Kim","Ao","Nga My",1)
addtbmp("Hoang Kim","Mu","Nga My",1)
addtbmp("Hoang Kim","Dai Lung","Nga My",1)
addtbmp("Hoang Kim","Bao Tay","Nga My",1)
addtbmp("Hoang Kim","Giay","Nga My",1)
addtbmp("Hoang Kim","Nhan1","Nga My",1)
addtbmp("Hoang Kim","Nhan2","Nga My",1)
addtbmp("Hoang Kim","Ngoc Boi","Nga My",1)
addtbmp("Hoang Kim","Day Truyen","Nga My",1)
addvkmp("Hoang Kim","Kiem","Nga My",1)

end;



function hktv()
addtbmp("Hoang Kim","Ao","Thien Vuong",1)
addtbmp("Hoang Kim","Mu","Thien Vuong",1)
addtbmp("Hoang Kim","Dai Lung","Thien Vuong",1)
addtbmp("Hoang Kim","Bao Tay","Thien Vuong",1)
addtbmp("Hoang Kim","Giay","Thien Vuong",1)
addtbmp("Hoang Kim","Nhan1","Thien Vuong",1)
addtbmp("Hoang Kim","Nhan2","Thien Vuong",1)
addtbmp("Hoang Kim","Ngoc Boi","Thien Vuong",1)
addtbmp("Hoang Kim","Day Truyen","Thien Vuong",1)
addvkmp("Hoang Kim","Dao","Thien Vuong",1)
addvkmp("Hoang Kim","Chuy","Thien Vuong",1)
addvkmp("Hoang Kim","Thuong","Thien Vuong",1)
end;


function aohk1()
AddItem(0,2,24,6,4,100,10,10,10,10,10)
AddItem(0,2,16,6,0,100,10,10,10,10,10)
AddItem(0,2,22,6,3,100,10,10,10,10,10)
AddItem(0,2,23,6,3,100,10,10,10,10,10)
AddItem(0,2,19,6,1,100,10,10,10,10,10)

end;

function aohk2()
AddItem(0,2,25,6,4,100,10,10,10,10,10)
AddItem(0,2,18,6,1,100,10,10,10,10,10)
AddItem(0,2,21,6,2,100,10,10,10,10,10)
AddItem(0,2,20,6,2,100,10,10,10,10,10)
AddItem(0,2,17,6,0,100,10,10,10,10,10)
end;


function hkcl()
addtbmp("Hoang Kim","Ao","Con Lon",1)
addtbmp("Hoang Kim","Mu","Con Lon",1)
addtbmp("Hoang Kim","Dai Lung","Con Lon",1)
addtbmp("Hoang Kim","Bao Tay","Con Lon",1)
addtbmp("Hoang Kim","Giay","Con Lon",1)
addtbmp("Hoang Kim","Nhan1","Con Lon",1)
addtbmp("Hoang Kim","Nhan2","Con Lon",1)
addtbmp("Hoang Kim","Ngoc Boi","Con Lon",1)
addtbmp("Hoang Kim","Day Truyen","Con Lon",1)
addvkmp("Hoang Kim","Dao","Con Lon",1)
end;


------------end hk--------------

---------------vk hk-------------
function vkvd()
addvkmp("Hoang Kim","Kiem","Vo Dang",0,1)
addvkmp("Hoang Kim","Kiem","Vo Dang",0,1)
addvkmp("Hoang Kim","Kiem","Vo Dang",0,1)
addvkmp("Hoang Kim","Kiem","Vo Dang",0,1)
addvkmp("Hoang Kim","Kiem","Vo Dang",0,1)
addvkmp("Hoang Kim","Kiem","Vo Dang",0,1)
addvkmp("Hoang Kim","Kiem","Vo Dang",0,1)
addvkmp("Hoang Kim","Kiem","Vo Dang",0,1)
addvkmp("Hoang Kim","Kiem","Vo Dang",0,1)
addvkmp("Hoang Kim","Kiem","Vo Dang",0,1)
addvkmp("Hoang Kim","Kiem","Vo Dang",0,1)
addvkmp("Hoang Kim","Kiem","Vo Dang",0,1)
addvkmp("Hoang Kim","Kiem","Vo Dang",0,1)
addvkmp("Hoang Kim","Kiem","Vo Dang",0,1)
end;

function vktl()
addvkmp("Hoang Kim","Dao","Thieu Lam",0,1)
addvkmp("Hoang Kim","Dao","Thieu Lam",0,1)
addvkmp("Hoang Kim","Dao","Thieu Lam",0,1)
addvkmp("Hoang Kim","Dao","Thieu Lam",0,1)
addvkmp("Hoang Kim","Dao","Thieu Lam",0,1)
addvkmp("Hoang Kim","Dao","Thieu Lam",0,1)
addvkmp("Hoang Kim","Dao","Thieu Lam",0,1)
addvkmp("Hoang Kim","Con","Thieu Lam",0,1)
addvkmp("Hoang Kim","Con","Thieu Lam",0,1)
addvkmp("Hoang Kim","Con","Thieu Lam",0,1)
addvkmp("Hoang Kim","Con","Thieu Lam",0,1)
addvkmp("Hoang Kim","Con","Thieu Lam",0,1)
addvkmp("Hoang Kim","Con","Thieu Lam",0,1)
end;

function vkcb()
addvkmp("Hoang Kim","Con","Cai Bang",0,1)
addvkmp("Hoang Kim","Con","Cai Bang",0,1)
addvkmp("Hoang Kim","Con","Cai Bang",0,1)
addvkmp("Hoang Kim","Con","Cai Bang",0,1)
addvkmp("Hoang Kim","Con","Cai Bang",0,1)
addvkmp("Hoang Kim","Con","Cai Bang",0,1)
addvkmp("Hoang Kim","Con","Cai Bang",0,1)
addvkmp("Hoang Kim","Con","Cai Bang",0,1)
addvkmp("Hoang Kim","Con","Cai Bang",0,1)
addvkmp("Hoang Kim","Con","Cai Bang",0,1)
addvkmp("Hoang Kim","Con","Cai Bang",0,1)
addvkmp("Hoang Kim","Con","Cai Bang",0,1)
addvkmp("Hoang Kim","Con","Cai Bang",0,1)
end;

function vktn()
addvkmp("Hoang Kim","Thuong","Thien Nhan",0,1)
addvkmp("Hoang Kim","Thuong","Thien Nhan",0,1)
addvkmp("Hoang Kim","Thuong","Thien Nhan",0,1)
addvkmp("Hoang Kim","Thuong","Thien Nhan",0,1)
addvkmp("Hoang Kim","Thuong","Thien Nhan",0,1)
addvkmp("Hoang Kim","Thuong","Thien Nhan",0,1)
addvkmp("Hoang Kim","Thuong","Thien Nhan",0,1)
addvkmp("Hoang Kim","Thuong","Thien Nhan",0,1)
addvkmp("Hoang Kim","Thuong","Thien Nhan",0,1)
addvkmp("Hoang Kim","Thuong","Thien Nhan",0,1)
addvkmp("Hoang Kim","Thuong","Thien Nhan",0,1)
end;


function vknd()
addvkmp("Hoang Kim","Dao","Ngu Doc",0,1)
addvkmp("Hoang Kim","Dao","Ngu Doc",0,1)
addvkmp("Hoang Kim","Dao","Ngu Doc",0,1)
addvkmp("Hoang Kim","Dao","Ngu Doc",0,1)
addvkmp("Hoang Kim","Dao","Ngu Doc",0,1)
addvkmp("Hoang Kim","Dao","Ngu Doc",0,1)
addvkmp("Hoang Kim","Dao","Ngu Doc",0,1)
addvkmp("Hoang Kim","Dao","Ngu Doc",0,1)
addvkmp("Hoang Kim","Dao","Ngu Doc",0,1)
addvkmp("Hoang Kim","Dao","Ngu Doc",0,1)
addvkmp("Hoang Kim","Dao","Ngu Doc",0,1)
addvkmp("Hoang Kim","Dao","Ngu Doc",0,1)
addvkmp("Hoang Kim","Dao","Ngu Doc",0,1)
addvkmp("Hoang Kim","Dao","Ngu Doc",0,1)
end;

function vkdm()

addvkmp("Hoang Kim","Phi Dao","Duong Mon",0,1)
addvkmp("Hoang Kim","Phi Tieu","Duong Mon",0,1)
addvkmp("Hoang Kim","Tu Tien","Duong Mon",0,1)
addvkmp("Hoang Kim","Phi Dao","Duong Mon",0,1)
addvkmp("Hoang Kim","Phi Tieu","Duong Mon",0,1)
addvkmp("Hoang Kim","Tu Tien","Duong Mon",0,1)
addvkmp("Hoang Kim","Phi Dao","Duong Mon",0,1)
addvkmp("Hoang Kim","Phi Tieu","Duong Mon",0,1)
addvkmp("Hoang Kim","Tu Tien","Duong Mon",0,1)
addvkmp("Hoang Kim","Phi Dao","Duong Mon",0,1)
addvkmp("Hoang Kim","Phi Tieu","Duong Mon",0,1)
addvkmp("Hoang Kim","Tu Tien","Duong Mon",0,1)
addvkmp("Hoang Kim","Phi Dao","Duong Mon",0,1)
addvkmp("Hoang Kim","Phi Tieu","Duong Mon",0,1)
addvkmp("Hoang Kim","Tu Tien","Duong Mon",0,1)
end;

function vkty()
addvkmp("Hoang Kim","Dao","Thuy Yen",0,1)
addvkmp("Hoang Kim","Dao","Thuy Yen",0,1)
addvkmp("Hoang Kim","Dao","Thuy Yen",0,1)
addvkmp("Hoang Kim","Dao","Thuy Yen",0,1)
addvkmp("Hoang Kim","Dao","Thuy Yen",0,1)
addvkmp("Hoang Kim","Dao","Thuy Yen",0,1)
addvkmp("Hoang Kim","Dao","Thuy Yen",0,1)
addvkmp("Hoang Kim","Dao","Thuy Yen",0,1)
addvkmp("Hoang Kim","Dao","Thuy Yen",0,1)
addvkmp("Hoang Kim","Dao","Thuy Yen",0,1)
addvkmp("Hoang Kim","Dao","Thuy Yen",0,1)
addvkmp("Hoang Kim","Dao","Thuy Yen",0,1)
addvkmp("Hoang Kim","Dao","Thuy Yen",0,1)
addvkmp("Hoang Kim","Dao","Thuy Yen",0,1)
end;



function vknm()
addvkmp("Hoang Kim","Kiem","Nga My",0,1)
addvkmp("Hoang Kim","Kiem","Nga My",0,1)
addvkmp("Hoang Kim","Kiem","Nga My",0,1)
addvkmp("Hoang Kim","Kiem","Nga My",0,1)
addvkmp("Hoang Kim","Kiem","Nga My",0,1)
addvkmp("Hoang Kim","Kiem","Nga My",0,1)
addvkmp("Hoang Kim","Kiem","Nga My",0,1)
addvkmp("Hoang Kim","Kiem","Nga My",0,1)
addvkmp("Hoang Kim","Kiem","Nga My",0,1)
addvkmp("Hoang Kim","Kiem","Nga My",0,1)
addvkmp("Hoang Kim","Kiem","Nga My",0,1)
addvkmp("Hoang Kim","Kiem","Nga My",0,1)
addvkmp("Hoang Kim","Kiem","Nga My",0,1)

end;



function vktv()
addvkmp("Hoang Kim","Dao","Thien Vuong",0,1)
addvkmp("Hoang Kim","Chuy","Thien Vuong",0,1)
addvkmp("Hoang Kim","Thuong","Thien Vuong",0,1)
addvkmp("Hoang Kim","Dao","Thien Vuong",0,1)
addvkmp("Hoang Kim","Chuy","Thien Vuong",0,1)
addvkmp("Hoang Kim","Thuong","Thien Vuong",0,1)
addvkmp("Hoang Kim","Dao","Thien Vuong",0,1)
addvkmp("Hoang Kim","Chuy","Thien Vuong",0,1)
addvkmp("Hoang Kim","Thuong","Thien Vuong",0,1)
addvkmp("Hoang Kim","Dao","Thien Vuong",0,1)
addvkmp("Hoang Kim","Chuy","Thien Vuong",0,1)
addvkmp("Hoang Kim","Thuong","Thien Vuong",0,1)
end;




function vkcl()

addvkmp("Hoang Kim","Dao","Con Lon",0,1)
addvkmp("Hoang Kim","Dao","Con Lon",0,1)
addvkmp("Hoang Kim","Dao","Con Lon",0,1)
addvkmp("Hoang Kim","Dao","Con Lon",0,1)
addvkmp("Hoang Kim","Dao","Con Lon",0,1)
addvkmp("Hoang Kim","Dao","Con Lon",0,1)
addvkmp("Hoang Kim","Dao","Con Lon",0,1)
addvkmp("Hoang Kim","Dao","Con Lon",0,1)
addvkmp("Hoang Kim","Dao","Con Lon",0,1)
addvkmp("Hoang Kim","Dao","Con Lon",0,1)
end;


---------------end vk ------------
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

SayNew("<color=green>Add Skill<color>",5,"Skill Admin/skadmin","Skill GM/skgm","Xoa Skill/xoaskill","Skill Manager/skillmanage","Thoat/no")

end;

function skillmanage()
AddMagic(417,1)
end;

function xoaskill()

gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
 	for k=1,500 do DelMagic(k) end;
	KickOutSelf()
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.."Nhan vat Nhan vat Nhan vat !");

end;
function skadmin()
AddMagic(437,1)
--AddMagic(313,20)
AddMagic(463,20)
AddMagic(464,20)
AddMagic(465,20)
AddMagic(466,20)
AddMagic(467,20)
AddMagic(468,20)
--lskill()
Msg2Player("Nhan skill ho tro !")
end;

function skgm()

AddMagic(437,1)
AddMagic(462,20)
--AddMagic(461,20)
SetRank(63)
KickOutSelf()
Msg2Player("Nhan skill ho tro GM!")
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



