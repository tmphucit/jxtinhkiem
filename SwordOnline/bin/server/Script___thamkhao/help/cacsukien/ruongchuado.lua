--Author: thaihoa91
Include("\\script\\Global\\sourcejx49.lua");

function main()
SetFightState(0)
w,x,y = GetWorldPos()
thanhcong()
if GetTask(152) == 0 then
SayNew("T×nh tr¹ng r­¬ng ch­a ®å ch­a cã mËt khÈu khãa rÊt nguy hiÓm, ta khuyªn ng­¬i nªn ®¨ng ký mËt khÈu cho riªng m×nh ",2,
"Më r­¬ng /moruong",
"T¹o mËt khÈu /taopassruong")
else
OpenBox()
end
end


function moruong()
OpenBox()
end
function loaitru(num)
mang = {}
mang[1] = floor(num/100000)
mang[2] = floor((num - mang[1]*100000)/10000)
mang[3] = floor((num - mang[1]*100000 - mang[2]*10000)/1000)
mang[4] = floor((num - mang[1]*100000 - mang[2]*10000  - mang[3]*1000)/100)
mang[5] = floor((num - mang[1]*100000 - mang[2]*10000  - mang[3]*1000 - mang[4]*100)/10)
mang[6] = floor(num - mang[1]*100000 - mang[2]*10000  - mang[3]*1000 - mang[4]*100  - mang[5]*10)

sltrung = 0
for i=1,6 do
	sltrung = 1
	for j=i,6 do
		if mang[i] == mang[j] and i ~= j then
			sltrung = sltrung + 1
		end
	end
	if sltrung >= 3 then
		break
	end
end

sldongian = 0
for i=1,getn(DonGian) do
	if num == DonGian[i] then
		return 1
	end
end

if sltrung >= 3 then
return 0
else
return 2
end
end

DonGian = {
123456,
112233,
654321,
123321,
123123,
123567,
123789,
123678,
121314,
122334,
}



function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/adminlog.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function loginbox (pw)
pw2 = tonumber(pw)
if pw2 == GetTask(152) then
SetTask(950, GetTask(152))
BlockBox(0)
else
Talk(1,"","<color=red>HÖ Thèng<color>: MËt khÈu r­¬ng b¹n nhËp kh«ng chÝnh x¸c !")
end
end

function changebox (pw,pwn)
pw2 = tonumber(pw)
pwn2 = tonumber(pwn)
if pw2 == 0 or pw2 == nil then
Talk(1,"","<color=red>HÖ Thèng: <color>: Ch­a ®iÒn mËt khÈu cò ! ")
return
end

if pw2 < 100000 or pw2 > 999999 then
Talk(1,"","<color=red>HÖ Thèng: <color>: MËt khÈu cò gåm 6 ký tù!")
return
end

if pw2 == GetTask(152) then
	if pwn2 == 0 or pwn2 == nil then
	Talk(1,"","<color=red>HÖ Thèng: <color>: Ch­a ®iÒn mËt khÈu mí ! ")
	return
	end
	if pwn2 < 100000 or pwn2 > 999999 then
	Talk(1,"","<color=red>HÖ Thèng: <color>: MËt khÈu cò gåm 6 ký tù!")
	return
	end
	
	if loaitru(pwn2) == 0 then
	Talk(1,"","<color=pink>HÖ Thèng<color>: MËt khÈu r­¬ng cña b¹n thuéc lo¹i <color=yellow>Cã 3 sè trïng nhau<color>. H·y ®æi mËt khÈu r­¬ng kh¸c.  ")
	return
	end
	if loaitru(pwn2) == 1 then
	Talk(1,"","<color=pink>HÖ Thèng<color>: MËt khÈu r­¬ng cña b¹n thuéc lo¹i <color=yellow>Qu¸ §¬n Gi¶n<color> H·y ®æi mËt khÈu r­¬ng kh¸c.  ")
	return
	end
	
	SetTask(152,pwn2)
	Msg2SubWorld("<color=green>"..GetName().." <color=red>®· ®æi mËt khÈu kh¸c !")
	Talk(1,"","<color=red>HÖ Thèng<color>: B¹n ®· ®æi mËt khÈu r­¬ng thµnh c«ng !")
	KickOutSelf()
else
Talk(1,"","<color=red>HÖ Thèng<color>: MËt khÈu r­¬ng b¹n nhËp kh«ng chÝnh x¸c !")
end
end

function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ResetPassRuongAdmin.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - IP: "..GetIP().." Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function taopassruong()
if GetTask(152) == 0 then
OpenNewPWBox ()
else
Msg2Player("Lçi ®· t¹o pass r­¬ng !")
end
end;

function newbox (pw)
pw2 = tonumber(pw)
if GetTask(152) ~= 0 then
Msg2Player("<color=red>HÖ Thèng: <color>: Lçi ®· t¹o pass r­¬ng !")
return
end

if pw2 == 0 or pw2 == nil then
Talk(1,"","<color=red>HÖ Thèng: <color>: MËt khÈu r­¬ng kh«ng ®­îc ®Ó trèng ! ")
return
end

if pw2 < 100000 or pw2 > 999999 then
Talk(1,"","<color=red>HÖ Thèng: <color>: MËt khÈu r­¬ng gåm 6 ký tù")
return
end

if loaitru(pw2) == 0 then
Talk(1,"","<color=pink>HÖ Thèng<color>: MËt khÈu r­¬ng cña b¹n thuéc lo¹i <color=yellow>Cã 3 sè trïng nhau<color>. H·y ®æi mËt khÈu r­¬ng kh¸c.  ")
return
end
if loaitru(pw2) == 1 then
Talk(1,"","<color=pink>HÖ Thèng<color>: MËt khÈu r­¬ng cña b¹n thuéc lo¹i <color=yellow>Qu¸ §¬n Gi¶n<color> H·y ®æi mËt khÈu r­¬ng kh¸c.  ")
return
end

SetTask(152,pw2)
BlockBox(1)
Talk(1,"","<color=red>HÖ Thèng <color>: Chóc mõng b¹n ®· t¹o mËt khÈu r­¬ng thµnh c«ng !")
end




function blockbox ()
BlockBox (1);
end



function thanhcong()
w,X,Y = GetWorldPos()
if w == 53 then
SetRevPos(19)
elseif w == 15 then
SetRevPos(10)
elseif w == 16 then
SetRevPos(53)
elseif w == 11 then -- Dai Ly
SetRevPos(54)
elseif w == 18 then
SetRevPos(11)
elseif w == 17 then
SetRevPos(12)
elseif w == 9 then 
SetRevPos(16)
elseif w == 3 then
SetRevPos(3)
elseif w == 66 then
SetRevPos(18)
elseif w == 4 then
SetRevPos(41)

elseif w == 161 then
SetRevPos(57)
elseif w == 160 then
SetRevPos(58)



end
end
function no()
end

function checkb20()
SetTask(152,0)
Talk(1,"Exit1","<color=red>HÖ Thèng<color> B¹n ®· xãa thµnh c«ng <color=yellow>MËt KhÈu B¶o VÖ R­¬ng<color>. H·y t¹o MËt KhÈu kh¸ci !!!!")
inlog("Pass Ruong Bi Xoa: Ten: "..GetName().." - Account: "..GetAccount().." - IP: "..GetIP().." - Pass ruong cu: "..GetTaskTemp(202).." ")
KickOutSelf()
end;
