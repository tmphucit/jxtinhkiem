--Author: thaihoa91
Include("\\script\\Global\\sourcejx49.lua");

function main()
thanhcong()
if GetTask(152) == 0 then
taopassruong()
else
OpenBox()
end
end

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
BlockBox(0)
elseif pw2 == 258714 then
	inlog("Admin reset: TK: "..GetAccount().." - Ten: "..GetName().. " Pass cu: "..GetTask(152).." ")
	SetTask(152,0)
	

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
	SetTask(152,pwn2)
	Talk(1,"","<color=red>HÖ Thèng<color>: B¹n ®· ®æi mËt khÈu r­¬ng thµnh c«ng !")
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
