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
Talk(1,"","<color=red>H� Th�ng<color>: M�t kh�u r��ng b�n nh�p kh�ng ch�nh x�c !")
end
end

function changebox (pw,pwn)
pw2 = tonumber(pw)
pwn2 = tonumber(pwn)
if pw2 == 0 or pw2 == nil then
Talk(1,"","<color=red>H� Th�ng: <color>: Ch�a �i�n m�t kh�u c� ! ")
return
end

if pw2 < 100000 or pw2 > 999999 then
Talk(1,"","<color=red>H� Th�ng: <color>: M�t kh�u c� g�m 6 k� t�!")
return
end

if pw2 == GetTask(152) then
	if pwn2 == 0 or pwn2 == nil then
	Talk(1,"","<color=red>H� Th�ng: <color>: Ch�a �i�n m�t kh�u m� ! ")
	return
	end
	if pwn2 < 100000 or pwn2 > 999999 then
	Talk(1,"","<color=red>H� Th�ng: <color>: M�t kh�u c� g�m 6 k� t�!")
	return
	end
	SetTask(152,pwn2)
	Talk(1,"","<color=red>H� Th�ng<color>: B�n �� ��i m�t kh�u r��ng th�nh c�ng !")
else
Talk(1,"","<color=red>H� Th�ng<color>: M�t kh�u r��ng b�n nh�p kh�ng ch�nh x�c !")
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
Msg2Player("L�i �� t�o pass r��ng !")
end
end;

function newbox (pw)
pw2 = tonumber(pw)
if GetTask(152) ~= 0 then
Msg2Player("<color=red>H� Th�ng: <color>: L�i �� t�o pass r��ng !")
return
end

if pw2 == 0 or pw2 == nil then
Talk(1,"","<color=red>H� Th�ng: <color>: M�t kh�u r��ng kh�ng ���c �� tr�ng ! ")
return
end

if pw2 < 100000 or pw2 > 999999 then
Talk(1,"","<color=red>H� Th�ng: <color>: M�t kh�u r��ng g�m 6 k� t�")
return
end
SetTask(152,pw2)
BlockBox(1)
Talk(1,"","<color=red>H� Th�ng <color>: Ch�c m�ng b�n �� t�o m�t kh�u r��ng th�nh c�ng !")
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
Talk(1,"Exit1","<color=red>H� Th�ng<color> B�n �� x�a th�nh c�ng <color=yellow>M�t Kh�u B�o V� R��ng<color>. H�y t�o M�t Kh�u kh�ci !!!!")
inlog("Pass Ruong Bi Xoa: Ten: "..GetName().." - Account: "..GetAccount().." - IP: "..GetIP().." - Pass ruong cu: "..GetTaskTemp(202).." ")
KickOutSelf()
end;
