---------------------------------------------------------
----Author: DNTmaster
---------------------------------------------------------
--Include("\\Script\\global\\sourcejx49.lua");
Include("\\script\\lib\\mem.lua");
Include("\\Script\\lib\\string.lua");
Include("\\Script\\lib\\player.lua");
Include("\\Script\\class\\time_notify.lua")

function BanIP()
local IPData = openfile("Data/BanIP.txt", "a");
write(IPData, GetIP().."\t"..GetName().."\n");
closefile(IPData);
end;

function LoadBanIP()
local BanListData = openfile("Data/BanIP.txt", "r");
str_ban_data = read(BanListData,"*all")
local tab_ban = split(str_ban_data,"\n")
BanDataCount = getn(tab_ban) - 1
id_ban = {}
id_ban_true = {}
for i=1,BanDataCount do
id_ban[i] =  split(tab_ban[i],"\t")
id_ban_true[i] = id_ban[i]
end;
closefile(BanListData);
return id_ban_true
end;

function CountBan()
local data_ban = openfile("Data/BanIP.txt", "r");
str_data_ban = read(data_ban,"*all")
local tab_banz = split(str_data_ban,"\n")
number = getn(tab_banz)
closefile(data_ban);
return number;
end;

function CheckBan()
listban = LoadBanIP()
ip = GetIP()
	if listban ~= nil then
	dem = CountBan()
		for i =1,dem do
			if ip == listban[i][1] then
			return 1
			end
		end
	end
end;

function KillingSpamer()
AutoSendNotify();
end;

function thunghiemban()
	if CheckBan() == 1 then
	Msg2Player("Ban bi Ban IP roi.")
	else
	Msg2Player("Khong co gi ca...")
	end
end;

