function main(idx)
if GetAccount() ~= "gamemaster01" and GetAccount() ~= "gamemaster02" and GetAccount() ~= "gamemaster03" and GetAccount() ~= "admin1"  and GetAccount() ~= "admin2" then
return
end

SayNew("Chän chøc n¨ng: ",4,
"Check theo Tªn Nh©n VËt /checknv",
"Kick tµi kho¶n /kickacccung",
"Nhèt tï nh©n vËt /nhottucungdau",
"Tho¸t./no")
end


function nhottucungdau()
OpenStringBox (1,"NhËp Nh©n VËt Nhèt Tï " , "nhottucungdau2")
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
				Msg2SubWorld("<color=green>Th«ng B¸o Admin: <color=red>Nh©n vËt "..GetName().." ®· bÞ nhèt tï 24 giê !")
				else
				thoigian = (nam + 1) * 1000000 + thang * 10000 + ngay * 100 + gio
				SetTask(916, thoigian)
				Msg2SubWorld("<color=green>Th«ng B¸o Admin: <color=red>Nh©n vËt "..GetName().." ®· bÞ nhèt tï vÜnh viÔn !")
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
Talk(1,"","Tªn nhËn vËt nhËp vµo kh«ng chÝnh x¸c ")
end
end



function kickacccung()
OpenStringBox (1,"NhËp tµi kho¶n Kick" , "kickacccung2")
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
Talk(1,"","Kh«ng cã nh©n vËt nµo thuéc tµi kho¶n: <color=green>"..name.."<color> ®ang online !")
else
Msg2Player("§· kick tÊt c¶ nh©n vËt thuéc tµi kho¶n: <color=yellow>"..name.." ")
end
end


function checknv()
OpenStringBox (1,"NhËp tªn nh©n vËt" , "acceptchar")
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
Msg2Player("Account ["..name.."] kh«ng cã nh©n vËt online !")
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

SayNew("Chän chøc n¨ng: ID: "..soid.." - Tªn: [<color=yellow>"..ten.."<color>]",6,
"Kick T¹i Chç /kicktaicho",
"Kick VÒ BLH /kickblh",
"Set ChiÕn §Êu/setchiendau",
"Move tíi nh©n vËt /movetoinhanvat",
"Khãa Chat/khoachat",

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
Msg2Player("§· move tíi: "..w.." "..x.." "..y.."")
Exit1()
end


function kicktaicho()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

name = GetName()
KickOutSelf()

PlayerIndex=gmidx
Msg2Player("§· kick acc t¹i chç: <color=yellow>"..name.."")
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
Msg2Player("§· kick acc vÒ BLH: <color=yellow>"..name.."")
Exit1()
end


function khoachat()
SayNew("Chän chøc n¨ng:" ,3,
"Më khãa chat /khoachat2",
"Khãa chat /khoachat2",
"Thoat./no")
end

function khoachat2(nsel)
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

if nsel == 1 then
Msg2Player("B¹n ®· bÞ khãa chat !")
else
Msg2Player("B¹n ®· ®­îc më khãa chat")
end

ten = GetName()
SetChatFlag(nsel)

PlayerIndex=gmidx
Exit1()
Msg2Player("Nh©n vËt "..ten.." ®· bÞ khãa");
end

function setchiendau()
soid = GetTask(30)
gmidx=PlayerIndex
PlayerIndex=soid

name = GetName()
SetFightState(1)
Msg2Player("B¹n ®· ®­îc set chiÕn ®Êu")
PlayerIndex=gmidx
Msg2Player("§· set chiÕn ®Êu cho nh©n vËt: <color=yellow>"..name.."")
Exit1()

end
function Exit1()
SetTask(30,0)
end;


function no()
end