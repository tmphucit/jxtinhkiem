Include("\\script\\lib\\thuvien.lua")
Include("\\data\\dangkychuyenserver.lua")

function main()
OpenStringBox (2,"Nhap Code" , "acceptcode")
end

function acceptcode(num)
num2 = tonumber(num)
if num2 == 321546 then
	luunhanvat()
end
end


function resetlog()
LuuBang("Data/MANGNV.txt","")
end


function luunhanvat()
resetlog()
LoginLog = openfile("Data/MANGNV.txt", "a");
if LoginLog then

write(LoginLog,"mangnv={\n");

-- LOG ITEM 
write(LoginLog,"{\n");
for i=1,GetPlayerItemCount() do
	idx = GetPlayerItemIdxByNum(i)
	a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(idx)
	write(LoginLog," {"..a1..","..a2..","..a3..","..a4..","..a5..","..a6..","..a7..","..a8..","..a9..","..a10..","..a11..","..a12..","..a13..","..a14..","..a15..","..a16..","..a17.."},\n")
end
write(LoginLog,"},\n");

--Log Task
write(LoginLog,"{");
for i=1,200 do
	write(LoginLog,""..GetTask(i)..",")	
end
write(LoginLog,"},\n");

-- Log Level
w,x,y = GetWorldPos()
write(LoginLog,"{");
	write(LoginLog,""..GetLevel()..","..GetExp()..","..GetStrg(1)..","..GetDex(1)..","..GetVit(1)..","..GetEng(1)..","..GetProp()..","..GetMagicPoint()..","..GetCash()..",\""..GetFaction().."\","..GetCurCamp()..","..GetCamp()..","..GetSeries()..","..GetSex()..","..GetCashBox()..","..w..","..x..","..y..","..GetFightState()..","..GetPK().."")	
write(LoginLog,"},\n");
-- Log Skill


write(LoginLog,"{");
for i=1,500 do
	write(LoginLog,"{"..i..","..HaveMagic(i).."},")
end
write(LoginLog,"},\n");

write(LoginLog,"{");
	write(LoginLog,"\""..GetName().."\"")
write(LoginLog,"}\n");

write(LoginLog,"}\n");

end
closefile(LoginLog)

Msg2SubWorld("§ang tiÒn hµnh chuyÓn nh©n vËt: <color=pink>"..GetName().."<color=green> - Level: "..GetLevel().." - STT: "..checkstt(GetAccount()).." of "..getn(server).."")


Msg2SubWorld("§Ó kiÓm tra Sè Thø Tù cña m×nh, b¹n vui lßng ®Õn Hç Trî T©n Thñ mét lÇn n÷a. Khi ®Õn STT cña m×nh ®Ò nghÞ out acc. NÕu thÊy v­ît qu¸ STT mµ vÉn ch­a gi¶i quyÕt tøc lµ acc cña b¹n ®¨ng ký bÞ lçi, liªn hÖ hç trî trùc tuyÕn ®Ó gi¶i quyÕt ")
Msg2Player("LUU THANH CONG")
end

function checkstt(ten)
for i=1,getn(server) do
	if ten == server[i][1] then
		return i
	end 
end
return 0
end

function checkstt1(ten)
for i=1,getn(server1) do
	if ten == server1[i][1] then
		return i
	end 
end
return 0
end
function checkstt2(ten)
for i=1,getn(server2) do
	if ten == server2[i][1] then
		return i
	end 
end
return 0
end
function checkstt3(ten)
for i=1,getn(server3) do
	if ten == server3[i][1] then
		return i
	end 
end
return 0
end


