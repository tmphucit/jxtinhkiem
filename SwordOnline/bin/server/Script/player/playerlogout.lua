function main()
logDangNhap()
end;

function logWrite(str)
local gm_Log = "server_log/"..date("%Y_%m_%d").."_DANGXUAT_log.txt"
local fs_log = openfile(gm_Log, "a");
write(fs_log, str);
closefile(fs_log);
end

function logDangNhap()
local szAccount = GetAccount()
local szName = GetName()
local dwID = GetUUID()
local nLevel = GetLevel()
local nIP = GetIP()
local nExtPoint = GetExtPoint()
local nMoney = GetCash()
local log = ""..date("%H:%M:%S").."\t Tµi kho∂n: "..szAccount.."\t Nh©n vÀt: "..szName.."\t DWORD ID: "..dwID.."\t C p: "..nLevel.."\t IP: "..nIP.."\t Xu: "..nExtPoint.."\t TÊng ti“n vπn: "..nMoney.."\n"
logWrite(log)
end