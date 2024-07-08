
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
	Msg2Player("B¹n ®· triÖu håi 1 Boss TiÓu Hoµng Kim");

inloghks("Log: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")

else
Talk(1,"","LÖnh Bµi chØ sö dông ë b¶n ®å Hoa S¬n, Giang T©n Th«n, Ba L¨ng HuyÖn, Ph­îng T­êng, BiÖn Kinh")
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
