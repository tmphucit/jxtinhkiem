
Include("\\script\\admin\\monphai.lua")

function main(idx)
w,x,y = GetWorldPos();
if w == 2 or w == 8 or w == 100 or w == 101 or w == 187 or w == 53  then
DelItemIdx(idx);

tl = random(1,2)
if (tl == 1) then
dolechx = 0 - random(8,16)
dolechy = 0 - random(8,16)
else
dolechx = 0 + random(8,16)
dolechy = 0 + random(8,16)
end


	idboss = random(1282,1290)
	bosstieu = AddNpc(idboss,85,SubWorldID2Idx(w),x*32+dolechx,y*32+dolechy)
	SetNpcName(bosstieu,GetName())
	Msg2Player("B�n �� tri�u h�i 1 Boss Ti�u Ho�ng Kim");
inloghks("Log: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")

else
Talk(1,"","L�nh b�i ch� s� d�ng � b�n �� luy�n c�ng 1x - 5x")
end
end

function inloghks(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/HoangKimSat_KTC.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end