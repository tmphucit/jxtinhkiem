
Include("\\script\\monphai.lua")

function main(idx)
gio = tonumber(date("%H"))

w,x,y = GetWorldPos();

if w == 66 or w == 53 or w == 9 or w == 15 or w == 2 then
DelItemIdx(idx);

tl = random(1,2)
if (tl == 1) then
dolechx = 0 - random(8,16)
dolechy = 0 - random(8,16)
else
dolechx = 0 + random(8,16)
dolechy = 0 + random(8,16)
end


	idboss = random(653,661)
	bosstieu = AddNpc(idboss,85,SubWorldID2Idx(w),x*32+dolechx,y*32+dolechy)
	SetNpcName(bosstieu,GetName())
	Msg2Player("B�n �� tri�u h�i 1 Boss Ti�u Ho�ng Kim");

inloghks("Log: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")

else
Talk(1,"","L�nh B�i ch� s� d�ng � b�n �� Hoa S�n, Giang T�n Th�n, Ba L�ng Huy�n, Ph��ng T��ng, Bi�n Kinh")
end
end

function inloghks(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/HoangKimSat_Free.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
