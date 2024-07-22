
Include("\\script\\admin\\monphai.lua")

function main(idx)
gio = tonumber(date("%H"))

w,x,y = GetWorldPos();
if GetFightState() == 0 then
Talk(1,"","Tr¹ng th¸i phi chiÕn ®Êu kh«ng thÓ sö dông lÖnh bµi!")
return
end
if w == 2 or w == 53 then
DelItemIdx(idx);

tl = random(1,2)
if (tl == 1) then
dolechx = 0 - random(8,16)
dolechy = 0 - random(8,16)
else
dolechx = 0 + random(8,16)
dolechy = 0 + random(8,16)
end


	idboss = random(1607,1615)
	bosstieu = AddNpc(idboss,85,SubWorldID2Idx(w),x*32+dolechx,y*32+dolechy)
	SetNpcScript(bosstieu, "\\script\\boss\\bosslenhbai.lua")
	SetNpcName(bosstieu,GetName())
	Msg2Player("B¹n ®· triÖu håi 1 Boss TiÓu Hoµng Kim");
	-- Msg2SubWorld("§¹i hiÖp "..GetName().." ®· triÖu håi 1 Boss TiÓu Hoµng Kim  .");

inloghks("Log: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")

else
	if GetTask(534) == 100 then
		Talk(1,"","LÖnh Bµi chØ sö dông ë b¶n ®å Hoa S¬n")
	else
		Talk(1,"","LÖnh Bµi chØ sö dông ë b¶n ®å Hoa S¬n")
	end
end
end

function inloghks(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/HoangKimSat_10Vang.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
