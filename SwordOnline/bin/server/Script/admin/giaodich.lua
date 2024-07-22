function main(PlayerIdx)
idx = PlayerIndex
name1 = GetName()
acc1 = GetAccount()
ip1 = GetIP()
PlayerIndex = PlayerIdx
name2 = GetName()
acc2 = GetAccount()
ip2 = GetIP()
 
PlayerIndex = idx
gio,phut,giay = GetTimeNew()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

local danhsach = openfile("Data/loggiaodich.txt", "a");
write(danhsach,""..gio.."h"..phut.." "..ngay.."/"..thang..": TK: "..acc1.." - NV: "..name1.." gd voi TK: "..acc2.." - NV: "..name2.." - "..ip1.." - "..ip2.."\n");
closefile(danhsach)
end

