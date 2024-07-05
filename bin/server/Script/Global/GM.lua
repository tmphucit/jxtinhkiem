Include("\\Script\\global\\sourcejx49.lua");
Include("\\script\\faction49\\main_faction.lua")
Include("\\Script\\global\\ban.lua");

wel="Lua Chon"
wel1="Lua Chon"
fir="1-10/first"
sec="11-20/second"
thr="21-30/third"
fou="31-40/forth"
fif="41-50/fifth"
six1="51-60/sixth"
sev="61-70/seventh"
eig="71-80/eighth"
nin="81-90/ninth"
ten="91-100/tenth"
------------------
fir10="101-110/first10"
sec10="111-120/second10"
thr10="121-130/third10"
fou10="131-140/forth10"
fif10="141-150/fifth10"
six10="151-160/sixth10"
sev10="161-170/seventh10"
eig10="171-180/eighth10"
nin10="181-190/ninth10"
ten10="191-200/tenth10"
------------------
fir20="201-210/first20"
sec20="211-220/second20"
thr20="221-230/third20"
fou20="231-240/forth20"
fif20="241-250/fifth20"
six20="251-260/sixth20"
sev20="261-270/seventh20"
eig20="271-280/eighth20"
nin20="281-290/ninth20"
ten20="291-300/tenth20"
---------------------
fir30="301-310/first30"
sec30="311-320/second30"
thr30="321-330/third30"
fou30="331-340/forth30"
fif30="341-350/fifth30"
six30="351-360/sixth30"
sev30="361-370/seventh30"
eig30="371-380/eighth30"
nin30="381-390/ninth30"
ten30="391-400/tenth30"
------------------
can="Thoat/no"
on="1/one"
tw="2/two"
th="3/three"
fo="4/four"
fi="5/five"
si="6/six"
se="7/seven"
ei="8/eight"
ni="9/nine"
ze="0/zero"
sk="Giam Long/giamlong"
cl="Xoa Skills./clear"
it="Lay trang bi/item"
mov="Di Chuyen ve BLH/move"
bip="Luu IP ban/luuipban"
mr="Xoa Ma Ruong/xoamaruong"
kic="Kick/kick"
kil="Ban Nick/kill"
inv="Thong Tin/invest"
nex="Next/next"
nex2="Next/next2"
nex3="Next/next3"
-----------------------------------------------
function main()
	system()
end;

function panduanGM()
local gmlist={};
gmlist={
       
	     {"VLCongThanhChien",99},
	     {"",99}, 
	     {"",99},
		 {"",99},
       }

ii=3

for i=1,ii do
 if ((GetName()==gmlist[i][1]) and (gmlist[i][2]==99)) then
  return 1
  end
end
end;


function system()
Say("GM:",7,"Xem Thong Tin Toan Nhan Vat/Show","Tat ca nhan vat tu level(1~100)/Show100","Tat ca nhan vat tu level(101~200)/Show200","Tat ca nhan vat tu level(201~300)/Show300","Tat ca nhan vat tu level(301~400)/Show400","Cap Cao/chaozuo","Thoat/no")
end;

function no()
end;

function Show()
for i=1,GetPlayerCount() do
	gmidx=PlayerIndex
	PlayerIndex=i
	TarName=GetName()
	PlayerIndex=gmidx
	Msg2Player("ID : <color=green>"..i.." <color>- Tan nhan vat : <color=yellow>"..TarName.."");
end
end;

function Show100()
for i=1,100 do
	gmidx=PlayerIndex
	PlayerIndex=i
	TarName=GetName()
	PlayerIndex=gmidx
	Msg2Player("ID : <color=green>"..i.." <color>- Tan nhan vat : <color=yellow>"..TarName.."");
end
end;

function Show200()
for i=101,200 do
	gmidx=PlayerIndex
	PlayerIndex=i
	TarName=GetName()
	PlayerIndex=gmidx
	Msg2Player("ID : <color=green>"..i.." <color>- Tan nhan vat : <color=yellow>"..TarName.."");
end
end;

function Show300()
for i=201,300 do
	gmidx=PlayerIndex
	PlayerIndex=i
	TarName=GetName()
	PlayerIndex=gmidx
	Msg2Player("ID : <color=green>"..i.." <color>- Tan nhan vat : <color=yellow>"..TarName.."");
end
end;

function Show400()
for i=301,400 do
	gmidx=PlayerIndex
	PlayerIndex=i
	TarName=GetName()
	PlayerIndex=gmidx
	Msg2Player("ID : <color=green>"..i.." <color>- Tan nhan vat : <color=yellow>"..TarName.."");
end
end;
------------------------------------------------------------------------------------------------------------------------------------------

function chaozuo()
Say(wel,12,fir,sec,thr,fou,fif,six1,sev,eig,nin,ten,nex,can)
end;

function next()
Say(wel,12,fir10,sec10,thr10,fou10,fif10,six10,sev10,eig10,nin10,ten10,nex2,can)
end;

function next2()
Say(wel,12,fir20,sec20,thr20,fou20,fif20,six20,sev20,eig20,nin20,ten20,nex3,can)
end;

function next3()
Say(wel,11,fir30,sec30,thr30,fou30,fif30,six30,sev30,eig30,nin30,ten30,can)
end;
------------------------------------------------------------------------------------------------------------------------------------------

function first()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,0)
end;

function second()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,1)
end;

function third()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,2)
end;

function forth()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,3)
end;

function fifth()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,4)
end;

function sixth()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,5)
end;

function seventh()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,6)
end;

function eighth()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,7)
end;

function ninth()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,8)
end;

function tenth()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,9)
end;

function first10()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,10)
end;

function second10()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,11)
end;

function third10()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,12)
end;

function forth10()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,13)
end;

function fifth10()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,14)
end;

function sixth10()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,15)
end;

function seventh10()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,16)
end;

function eighth10()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,17)
end;

function ninth10()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,18)
end;

function tenth10()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,19)
end;

function first20()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,20)
end;

function second20()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,21)
end;

function third20()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,22)
end;

function forth20()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,23)
end;

function fifth20()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,24)
end;

function sixth20()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,25)
end;

function seventh20()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,26)
end;

function eighth20()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,27)
end;

function ninth20()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,28)
end;

function tenth20()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,29)
end;

function first30()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,30)
end;

function second30()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,31)
end;

function third30()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,32)
end;

function forth30()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,33)
end;

function fifth30()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,34)
end;

function sixth30()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,35)
end;

function seventh30()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,36)
end;

function eighth30()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,37)
end;

function ninth30()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,38)
end;

function tenth30()
Say(wel, 11, on, tw, th, fo, fi, si, se, ei, ni, ze, can);
SetTaskTemp(331,39)
end;


function one()
n=GetTaskTemp(331)
if ((n*10+1)>GetPlayerCount()) then
Msg2Player("Khong co nhan vat nay xin kiem tra lai!");
else
SetTaskTemp(331,n*10+1)
	gmName=GetName()
	gmidx=PlayerIndex
	PlayerIndex=GetTaskTemp(331)
	ObjName=GetName()
	PlayerIndex=gmidx
	Msg2Player("Ten Player "..ObjName.."");
Say(wel1, 10, it, sk,cl,mov,bip,mr,kic, kil,inv, can);
end
end;

function two()
n=GetTaskTemp(331)
if ((n*10+2)>GetPlayerCount()) then
Msg2Player("Khong co nhan vat nay xin kiem tra lai!");
else
SetTaskTemp(331,n*10+2)
	gmName=GetName()
	gmidx=PlayerIndex
	PlayerIndex=GetTaskTemp(331)
	ObjName=GetName()
	PlayerIndex=gmidx
	Msg2Player("Ten Player "..ObjName.."");
Say(wel1, 10, it, sk,cl,mov,bip,mr,kic, kil,inv, can);
end
end;

function three()
n=GetTaskTemp(331)
if ((n*10+3)>GetPlayerCount()) then
Msg2Player("Khong co nhan vat nay xin kiem tra lai!");
else
SetTaskTemp(331,n*10+3)
	gmName=GetName()
	gmidx=PlayerIndex
	PlayerIndex=GetTaskTemp(331)
	ObjName=GetName()
	PlayerIndex=gmidx
	Msg2Player("Ten Player "..ObjName.."");
Say(wel1, 10, it, sk,cl,mov,bip,mr,kic, kil,inv, can);
end
end;

function four()
n=GetTaskTemp(331)
if ((n*10+4)>GetPlayerCount()) then
Msg2Player("Khong co nhan vat nay xin kiem tra lai!");
else
SetTaskTemp(331,n*10+4)
	gmName=GetName()
	gmidx=PlayerIndex
	PlayerIndex=GetTaskTemp(331)
	ObjName=GetName()
	PlayerIndex=gmidx
	Msg2Player("Ten Player "..ObjName.."");
Say(wel1, 10, it, sk,cl,mov,bip,mr,kic, kil,inv, can);
end
end;

function five()
n=GetTaskTemp(331)
if ((n*10+5)>GetPlayerCount()) then
Msg2Player("Khong co nhan vat nay xin kiem tra lai!");
else
SetTaskTemp(331,n*10+5)
	gmName=GetName()
	gmidx=PlayerIndex
	PlayerIndex=GetTaskTemp(331)
	ObjName=GetName()
	PlayerIndex=gmidx
	Msg2Player("Ten Player "..ObjName.."");
Say(wel1, 10, it, sk,cl,mov,bip,mr,kic, kil,inv, can);
end
end;

function six()
n=GetTaskTemp(331)
if ((n*10+6)>GetPlayerCount()) then
Msg2Player("Khong co nhan vat nay xin kiem tra lai!");
else
SetTaskTemp(331,n*10+6)
	gmName=GetName()
	gmidx=PlayerIndex
	PlayerIndex=GetTaskTemp(331)
	ObjName=GetName()
	PlayerIndex=gmidx
	Msg2Player("Ten Player "..ObjName.."");
Say(wel1, 10, it, sk,cl,mov,bip,mr,kic, kil,inv, can);
end
end;


function seven()
n=GetTaskTemp(331)
if ((n*10+7)>GetPlayerCount()) then
Msg2Player("Khong co nhan vat nay xin kiem tra lai!");
else
SetTaskTemp(331,n*10+7)
	gmName=GetName()
	gmidx=PlayerIndex
	PlayerIndex=GetTaskTemp(331)
	ObjName=GetName()
	PlayerIndex=gmidx
	Msg2Player("Ten Player "..ObjName.."");
Say(wel1, 10, it, sk,cl,mov,bip,mr,kic, kil,inv, can);
end
end;


function eight()
n=GetTaskTemp(331)
if ((n*10+8)>GetPlayerCount()) then
Msg2Player("Khong co nhan vat nay xin kiem tra lai!");
else
SetTaskTemp(331,n*10+8)
	gmName=GetName()
	gmidx=PlayerIndex
	PlayerIndex=GetTaskTemp(331)
	ObjName=GetName()
	PlayerIndex=gmidx
	Msg2Player("Ten Player "..ObjName.."");
Say(wel1, 10, it, sk,cl,mov,bip,mr,kic, kil,inv, can);
end
end;


function nine()
n=GetTaskTemp(331)
if ((n*10+9)>GetPlayerCount()) then
Msg2Player("Khong co nhan vat nay xin kiem tra lai!");
else
SetTaskTemp(331,n*10+9)
	gmName=GetName()
	gmidx=PlayerIndex
	PlayerIndex=GetTaskTemp(331)
	ObjName=GetName()
	PlayerIndex=gmidx
	Msg2Player("Ten Player "..ObjName.."");
Say(wel1, 10, it, sk,cl,mov,bip,mr,kic, kil,inv, can);
end
end;


function zero()
n=GetTaskTemp(331)
if ((n*10+10)>GetPlayerCount()) then
Msg2Player("Khong co nhan vat nay xin kiem tra lai!");
else
SetTaskTemp(331,n*10+10)
	gmName=GetName()
	gmidx=PlayerIndex
	PlayerIndex=GetTaskTemp(331)
	ObjName=GetName()
	PlayerIndex=gmidx
	Msg2Player("Ten Player "..ObjName.."");
Say(wel1, 10, it, sk,cl,mov,bip,mr,kic, kil,inv, can);
end
end;


idtaskruong1 = 133
idtaskruong2 = 134
idtaskruong3 = 135
idtaskruong4 = 136
idtaskruong5 = 137
idtaskruong6 = 138
tasktempruong1 = 157
tasktempruong2 = 158
tasktempruong3 = 159
tasktempruong4 = 160
tasktempruong5 = 161
tasktempruong6 = 162

function xoamaruong()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
SetTask(idtaskruong1,0)
SetTask(idtaskruong2,0)
SetTask(idtaskruong3,0)
SetTask(idtaskruong4,0)
SetTaskTemp(tasktempruong1,0)
SetTaskTemp(tasktempruong2,0)
SetTask(idtaskruong5,0)
SetTask(idtaskruong6,0)
SetTaskTemp(tasktempruong5,0)
SetTaskTemp(tasktempruong6,0)
SetTaskTemp(tasktempruong3,0)
SetTaskTemp(tasktempruong4,0)
Msg2Player("GM  "..gmName.."  Da Xoa Pass Ruong Cua Ban !");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.." Tang 1 Cap!");
end;

function luuipban()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
BanIP()
Msg2Player("GM  "..gmName.."  Da Xoa Pass Ruong Cua Ban !");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.." da ra di!");
end;


function exp()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
PlayerIndex=gmidx
Say("Lua Chon", 7,"1 Cap/tishen1","5 Cap/tishen5","10 Cap/tishen10","20 Cap/tishen20","50 Cap/tishen50","100 Cap/tishen100","Chuyen Sinh./chuyensinh",can);
end;

function tishen1()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
AddOwnExp(999999999)
Msg2Player("GM  "..gmName.."  Tang cho ban 1 Cap!");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.." Tang 1 Cap!");
end;

function tishen5()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
for i=1,5 do AddOwnExp(999999999) end;
Msg2Player("GM  "..gmName.."  Tang cho ban 5 Cap!");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.." Tang 5 Cap!");
end;

function tishen10()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
for i=1,10 do AddOwnExp(999999999) end;
Msg2Player("GM  "..gmName.."  Tang cho ban 10 Cap!");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.." Tang 10 Cap!");
end;

function tishen20()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
for i=1,20 do AddOwnExp(999999999) end;
Msg2Player("GM  "..gmName.."  Tang cho ban 20 Cap!");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.." Tang 20 Cap!");
end;

function tishen50()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
for i=1,50 do AddOwnExp(999999999) end;
Msg2Player("GM  "..gmName.."  Tang cho ban 50 Cap!");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.." Tang 50 Cap!");
end;

function tishen100()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
for i=1,100 do AddOwnExp(999999999) end;
Msg2Player("GM  "..gmName.."  Tang cho ban 100 Cap!");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.." Tang 100 Cap!");
end;
------------------------

function chuyensinh()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
PlayerIndex=gmidx
Say("Lua chon",5,"+1./taohua","+5./taohua2","+10./taohua3","+20./taohua4",can)
end;


function taohua()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
SetTask(TaskTrungSinh,GetTask(TaskTrungSinh)+1)
Msg2Player("GM  "..gmName.." Tang so lan Chuyen Sinh cho ban!");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.." duoc tang 1 lan Chuyen Sinh!");
end;
------------------------
------------------------
function taohua2()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
SetTask(TaskTrungSinh,GetTask(TaskTrungSinh)+5)
Msg2Player("GM  "..gmName.." Tang so lan Chuyen Sinh cho ban!");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.." duoc tang 5 lan Chuyen Sinh!");
end;
------------------------
function taohua3()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
SetTask(TaskTrungSinh,GetTask(TaskTrungSinh)+10)
Msg2Player("GM  "..gmName.." Tang so lan Chuyen Sinh cho ban!");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.." duoc tang 10 lan Chuyen Sinh!");
end;
------------------------
function taohua4()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
SetTask(TaskTrungSinh,GetTask(TaskTrungSinh)+20)
Msg2Player("GM  "..gmName.." Tang so lan Chuyen Sinh cho ban!");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.." duoc tang 20 lan Chuyen Sinh!");
end;
------------------------
------------------------

------------------------
------------------------

function money()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
PlayerIndex=gmidx
Say("Nhan vat", 3, "1 Trieu/jinbi1", "10 Trieu/jinbi10", can);
end;

function jinbi1()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
Earn(100000000)
Msg2Player("GM  "..gmName.."  tang 1 trieu luong bac!");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.." nhan duoc 1 trieu luong bac !");
end;

function jinbi10()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
Earn(1000000000)
Msg2Player("GM  "..gmName.."  tang 10 trieu luong bac!");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.." nhan duoc 10 trieu luong bac !");
end;

function item()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
PlayerIndex=gmidx
SayEx({"Lua chon lay trang bi","Tam thoi tat roi./no"})
end;


function skill()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
LearnSkillFaction()
LearnSkill()
Msg2Player("GM  "..gmName.."  phuc hoi lai tat ca ky nang!");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.." lay lai cac ky nang!");
end;

function ban()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
	SetFightState(0);
	NewWorld(208, 1652, 3190);
	SetRevPos(208,73)
	MsgEx(">>>>Killing You<<<<<")
	MsgEx(".You are Knock Out.")
	KickOutSelf()
Msg2Player("Nhan vat Nhan vat Nhan vat Nhan vat !Nhan vat Nhan vat ");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.."Nhan vat Nhan vat Nhan vat Nhan vat !");
end;

function clear()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
 	for k=1,500 do DelMagic(k) end;
	KickOutSelf()
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.."Nhan vat Nhan vat Nhan vat !");
end;

function move()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
w,x,y=GetWorldPos()
if (w~=53) then
SetFightState(0);
NewWorld(53, 1630, 3255);
else
SetPos(1630, 3255)
end
Msg2Player("GM  "..gmName.."  Nhan vat Nhan vat Nhan vat Nhan vat !");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.."Nhan vat Nhan vat Nhan vat !");
end;

function move1()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
w,x,y=GetWorldPos()
if (w~=27) then
SetFightState(0);
NewWorld(27, 199*8,  200*16);
else
SetPos(1630, 3255)
end
Msg2Player("GM  "..gmName.."  Nhan vat Nhan vat Nhan vat Nhan vat !");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.."Nhan vat Nhan vat Nhan vat !");
end;

function kick()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
--Msg2Player("GM  "..gmName.."  Nhan vat Nhan vat 线!");
KickOutSelf()
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.."Nhan vat Nhan vat Nhan vat !");
end;


function kickall()
	for i=1,200 do
		gmidx=PlayerIndex
		PlayerIndex=i
		KickOutSelf()
		PlayerIndex=gmidx
	end
end;


function kill()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
	for i=1,300 do
	DelItem(i)
	end;
	AddExp(-9999999999)
	ResetBaseAttrib(0,-10000);
	ResetBaseAttrib(1,-10000);
	ResetBaseAttrib(2,-10000);
	ResetBaseAttrib(3,-10000);
	SetFightState(0);
	NewWorld(197,  1602, 3250);
	SetRevPos(197,73)
	MsgEx(">>>>Killing You<<<<<")
	MsgEx(".You are Knock Out.")
	KickOutSelf()
Msg2Player("Nhan vat Nhan vat Nhan vat Nhan vat !Nhan vat Nhan vat ");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.."Nhan vat Nhan vat Nhan vat Nhan vat !");
end;


function invest()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
lev=GetLevel()
xp=GetExp()
cam=GetCamp()
fac=GetFaction()
cash=GetCash()
lif=GetLife()
man=GetMana()
apo=GetRestAP()
spo=GetRestSP()
cr=GetColdR()
pr=GetPoisonR()
phr=GetPhyR()
fr=GetFireR()
lr=GetLightR()
eng=GetEng()
dex=GetDex()
strg=GetStrg()
vit=GetVit()
w,x,y=GetWorldPos()
PlayerIndex=gmidx
--Say("Nhan vat Nhan vat Nhan vat 型", 6,"Nhan vat Nhan vat /jinyan", "Nhan vat /jiejin", "Nhan vat Nhan vat /invest1", "Nhan vat Nhan vat /invest2", "Nhan vat IPNhan vat /ipxinx", can);
Say("Nhan vat Nhan vat Nhan vat 型", 4, "Nhan vat Nhan vat /invest1", "Nhan vat Nhan vat /invest2", "Nhan vat IPNhan vat /ipxinx", can);

end;

function invest1()
Talk(2,"","<color=pink>"..ObjName.."<color>,<color=Red>"..lev.."<color>级,Nhan vat <color=Red>"..xp.."<color>,Nhan vat <color=Red>"..lif.."<color>,Nhan vat <color=Red>"..man.."<color>,Nhan vat <color=Red>"..cash.."<color>,Nhan vat <color=Red>"..cam.."<color>,<color=Red>"..fac.."<color>","Nhan vat <color=Red>"..w.."<color>,<color=Red>"..x.."<color>,<color=Red>"..y.."<color>")
Msg2Player("Nhan vat "..ObjName.."Nhan vat Nhan vat Nhan vat !");
end

function invest2()
Talk(2,"","Nhan vat 点<color=Red>"..spo.."<color>,Nhan vat 点<color=Red>"..apo.."<color>,Nhan vat <color=Red>"..pr.."<color>,Nhan vat <color=Red>"..cr.."<color>,Nhan vat <color=Red>"..fr.."<color>,Nhan vat <color=Red>"..lr.."<color>,Nhan vat <color=Red>"..phr.."<color>","Nhan vat <color=Red>"..strg.."<color>,Nhan vat <color=Red>"..dex.."<color>,Nhan vat <color=Red>"..vit.."<color>,Nhan vat <color=Red>"..eng.."<color>")
Msg2Player("Nhan vat "..ObjName.."Nhan vat Nhan vat Nhan vat !");
end

function ipxinx()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
xinxi = GetInfo()
PlayerIndex=gmidx
Msg2Player("Nhan vat "..xinxi)
--Msg2Player("Nhan vat "..ObjName.."Nhan vat IPNhan vat !");
end;

function jinyan()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
Wanjia = GetName()
Msg2Player("GM  "..gmName.."  Nhan vat Nhan vat Nhan vat !");
PlayerIndex=gmidx
SetRoleChatFlag(Wanjia,1)
Msg2Player("Nhan vat "..ObjName.."Nhan vat Nhan vat !");
end;

function jiejin()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
Wanjia = GetName()
Msg2Player("GM  "..gmName.."  Nhan vat Nhan vat Nhan vat Nhan vat Nhan vat 之!");
PlayerIndex=gmidx
SetRoleChatFlag("Wanjia",0)
Msg2Player("Nhan vat "..ObjName.."Nhan vat Nhan vat !");
end;

function no()
end;

function nhandoi()
SayEx({"Lua chon","Nhan 2./sxsx","Nhan 3./sxsx","Nhan 4./sxsx","Nhan 5./sxsx","Dung lai./sxsx","Thoat./Exit"})
end;

function sxsx(nsel)
id = nsel+2
	if id == 6 then
	SetGlbMissionV(45,0)
	AddLocalNews("Server ket thuc nhan doi Kinh Nghiem.",1)
	else
	SetGlbMissionV(45,id)
	AddLocalNews("Server Nhan "..GetGlbMissionV(45).." Diem Kinh Nghiem",1)
	end
end;

function giamlong()
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(331)
	ResetBaseAttrib(0,-10000);
	ResetBaseAttrib(1,-10000);
	ResetBaseAttrib(2,-10000);
	ResetBaseAttrib(3,-10000);
	SetFightState(0);
	NewWorld(208, 1652, 3190);
	SetRevPos(208,73)
	---KickOutSelf()
MsgEx("<color=red>"..gmName.."<color>: <color=yellow>Ban da bi tam giam vao nguc toi<color>.\nNeu khong an nan hoi cai se bi Ban Nick Vinh Vien.\nNeu co long hoi cai se duoc tha bong tra ve.",1)
Msg2Player("Nhan vat Nhan vat Nhan vat Nhan vat !Nhan vat Nhan vat ");
PlayerIndex=gmidx
Msg2Player("Nhan vat "..ObjName.."Nhan vat Nhan vat Nhan vat Nhan vat !");
end;