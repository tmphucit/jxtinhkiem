function main(idx)
if GetAccount() ~= "gamemaster01" and GetAccount() ~= "gamemaster02" and GetAccount() ~= "gamemaster03" and GetAccount() ~= "admin1"  and GetAccount() ~= "admin2" then
return
end

SayNew("Ch�n ch�c n�ng: ",4,
"Check theo T�n Nh�n V�t /checknv",
"Kick t�i kho�n /kickacccung",
"Nh�t t� nh�n v�t /nhottucungdau",
"Tho�t./no")
end


function nhottucungdau()
OpenStringBox (1,"Nh�p Nh�n V�t Nh�t T� " , "nhottucungdau2")
end
function nhottucungdau2(name)
gmidx = PlayerIndex

check = 0

for i=1,GetCountPlayerMax() do
PlayerIndex = i
	if GetName() == name then
				w,x,y = GetWorldPos()
				ngay = tonumber(date("%d"))
				thang = tonumber(date("%m"))
				nam = tonumber(date("%y"))
				gio = tonumber(date("%H"))

				if GetTask(916) == 0 then
				thoigian = nam * 1000000 + thang * 10000 + ngay * 100 + gio + 24
				SetTask(916, thoigian)
				Msg2SubWorld("<color=green>Th�ng B�o Admin: <color=red>Nh�n v�t "..GetName().." �� b� nh�t t� 24 gi� !")
				else
				thoigian = (nam + 1) * 1000000 + thang * 10000 + ngay * 100 + gio
				SetTask(916, thoigian)
				Msg2SubWorld("<color=green>Th�ng B�o Admin: <color=red>Nh�n v�t "..GetName().." �� b� nh�t t� v�nh vi�n !")
				end

				SetTask(1,0)
				SetFightState(0)
				SetCreateTeam(0);
				SetLogoutRV(0);
				SetPunish(0)
				LeaveTeam()
				SetTask(143,1) -- Dang o tu
				check = 1
				if GetGlbMissionV(60) == 500 or GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 2500 or GetGlbMissionV(60) == 3000 then
					if w == 33 then
						if GetTask(128) == 1 or GetTask(128) == 2 then
							if GetTask(12) == 1 then
								SetGlbMissionV(83,GetGlbMissionV(83)-1)
							elseif GetTask(12) == 2 then
								SetGlbMissionV(84,GetGlbMissionV(84)-1)
							end
						end
					end
				end
				NewWorld(5,200*8,200*16)
	end	
end
PlayerIndex = gmidx
if check == 1 then
Msg2Player("Da Kick Tat ca tai khoan account: "..name.." ")
else
Talk(1,"","T�n nh�n v�t nh�p v�o kh�ng ch�nh x�c ")
end
end



function kickacccung()
OpenStringBox (1,"Nh�p t�i kho�n Kick" , "kickacccung2")
end

function kickacccung2(name)
gmidx = PlayerIndex
check = 0
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	if GetAccount() == name then
		check = 1
		NewWorld(53, 200*8,200*16)
		SetFightState(0)
		KickOutSelf()
	end
end
PlayerIndex = gmidx

if check == 0 then
Talk(1,"","Kh�ng c� nh�n v�t n�o thu�c t�i kho�n: <color=green>"..name.."<color> �ang online !")
else
Msg2Player("�� kick t�t c� nh�n v�t thu�c t�i kho�n: <color=yellow>"..name.." ")
end
end


function checknv()
OpenStringBox (1,"Nh�p t�n nh�n v�t" , "acceptchar")
end
function acceptchar(name)
gmidx = PlayerIndex
check = 0
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	if GetName() == name then
		PlayerIndex = gmidx
		SetTask(30,i)
		check = 1
		break
	end
end
if (check == 1) then
chucnangadmin()
else
PlayerIndex = gmidx
Msg2Player("Account ["..name.."] kh�ng c� nh�n v�t online !")
end
end


function chucnangadmin()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid
ten = GetName()
taikhoan = GetAccount()
w,x,y = GetWorldPos()

PlayerIndex=gmidx

SayNew("Ch�n ch�c n�ng: ID: "..soid.." - T�n: [<color=yellow>"..ten.."<color>]",6,
"Kick T�i Ch� /kicktaicho",
"Kick V� BLH /kickblh",
"Set Chi�n ��u/setchiendau",
"Move t�i nh�n v�t /movetoinhanvat",
"Kh�a Chat/khoachat",

"Thoat./Exit1")
end
function movetoinhanvat()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

name = GetName()
w,x,y = GetWorldPos()


PlayerIndex=gmidx
NewWorld(w,x,y)
Msg2Player("�� move t�i: "..w.." "..x.." "..y.."")
Exit1()
end


function kicktaicho()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

name = GetName()
KickOutSelf()

PlayerIndex=gmidx
Msg2Player("�� kick acc t�i ch�: <color=yellow>"..name.."")
Exit1()
end
function kickblh()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

name = GetName()
NewWorld(53,200*8,200*16)
SetFightState(0)
KickOutSelf()

PlayerIndex=gmidx
Msg2Player("�� kick acc v� BLH: <color=yellow>"..name.."")
Exit1()
end


function khoachat()
SayNew("Ch�n ch�c n�ng:" ,3,
"M� kh�a chat /khoachat2",
"Kh�a chat /khoachat2",
"Thoat./no")
end

function khoachat2(nsel)
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

if nsel == 1 then
Msg2Player("B�n �� b� kh�a chat !")
else
Msg2Player("B�n �� ���c m� kh�a chat")
end

ten = GetName()
SetChatFlag(nsel)

PlayerIndex=gmidx
Exit1()
Msg2Player("Nh�n v�t "..ten.." �� b� kh�a");
end

function setchiendau()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

name = GetName()
SetFightState(1)
Msg2Player("B�n �� ���c set chi�n ��u")
PlayerIndex=gmidx
Msg2Player("�� set chi�n ��u cho nh�n v�t: <color=yellow>"..name.."")
Exit1()

end
function Exit1()
SetTask(30,0)
end;


function no()
end