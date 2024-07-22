
Include("\\Script\\global\\sourcejx49.lua");

function main()
if GetName() == "hoangha" then
SayNew("<color=blue>"..GetPlayerCount().."<color>Hay lua chon",3,
"Hoi thanh phu (500 luong)/htp",
"Giai Ket Nhan Vat (1000 luong)/gknv",
"Thoat/no")
else
SayNew("<color=blue>Ho tro: <color>Hay lua chon",3,
"Hoi thanh phu (500 luong)/htp",
"Giai Ket Nhan Vat (1000 luong)/gknv",
"Thoat/no")
end
end
function gknv()
if (GetFightState() == 0) then
nl = GetCash()
if (nl >= 1000) then
Pay(1000)
if (GetCash() == (nl-1000)) then
SetFightState(1)
UseTownPortal()
Msg2Player("Da giai ket nhan vat thanh cong !")	
KickOutSelf()
else
Msg2Player("Hack a cung yeu !")	
end
else
Talk(1,"no","Khong co du <color=red>1000 luong<color>, khong the giai ket")
end
else
Talk(1,"no","Nhan vat khong <color=red>bi ket<color>, khong the giai ket")
end
end;
function sdhks()
SayNew("<color=blue>Ho tro: <color>Lua chon loai <color=fire>Hoang Kim Sat<color> can su dung",3,"Hoang Kim Sat (Tieu)/hkst","Hoang Kim Sat (Dai)/hksd","Thoat/no")
end;


function hackadmin()
Earn(5000000)
for k=1,10 do AddOwnExp(2000000000) end
AddItem(0,10,7,1,0,0,0)
AddMagic(377,20)


end
function mp()
	if GetFaction() == "Thieu Lam Phai" then
	return 1
	elseif GetFaction() == "Thien Vuong Bang" then
	return 2
	elseif GetFaction() == "Duong Mon" then
	return 3
	elseif GetFaction() == "Ngu Doc Giao" then
	return 4
	elseif GetFaction() == "Nga My Phai" then
	return 5
	elseif GetFaction() == "Thuy Yen Mon" then
	return 6
	elseif GetFaction() == "Cai Bang" then
	return 7
	elseif GetFaction() == "Thien Nhan Giao" then
	return 8
	elseif GetFaction() == "Vo Dang Phai" then
	return 9
	elseif GetFaction() == "Con Lon Phai" then
	return 10
	end
end;



function htp()
w,x,y = GetWorldPos();
nl = GetCash()
if (nl >= 500) then
Pay(500)
if (GetCash() == (nl-500)) then
local lv=GetLevel()
	NewWorld(53, 200*8, 200*16);
	SetDeathScript("");
	SetFightState(0);
	Msg2Player("Ngoi Yen ! Dang di den thon Ba Lang Huyen...")
else
Msg2Player("Hack a cung yeu !")	
end
else
Talk(1,"no","Khong co du <color=red>500 luong<color>, khong the hoi thanh")
end

end;



function no()
end;