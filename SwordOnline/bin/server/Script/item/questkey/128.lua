
Include("\\script\\admin\\monphai.lua")

function main(idx)
gio = tonumber(date("%H"))

w,x,y = GetWorldPos();
if GetFightState() == 0 then
Talk(1,"","Tr�ng th�i phi chi�n ��u kh�ng th� s� d�ng l�nh b�i!")
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
	Msg2Player("B�n �� tri�u h�i 1 Boss Ti�u Ho�ng Kim");
	-- Msg2SubWorld("��i hi�p "..GetName().." �� tri�u h�i 1 Boss Ti�u Ho�ng Kim  .");

inloghks("Log: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")

else
	if GetTask(534) == 100 then
		Talk(1,"","L�nh B�i ch� s� d�ng � b�n �� Hoa S�n")
	else
		Talk(1,"","L�nh B�i ch� s� d�ng � b�n �� Hoa S�n")
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
