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
thoigian = tonumber(date("%d%m%y"))


local danhsach = openfile("Data/LogGiaoDich/Trade "..thoigian..".txt", "a");
write(danhsach,""..gio.."h"..phut..": Acc1 ["..acc1.."]["..name1.."]["..ip1.." - Acc2: ["..acc2.."]["..name2.."]["..ip2.."]\n");
closefile(danhsach)
end

function AddLogItem(ItemName)
thoigian = tonumber(date("%d%m%y"))
local danhsach = openfile("Data/LogGiaoDich/Trade "..thoigian..".txt", "a");
write(danhsach,"- "..ItemName.."\n");
closefile(danhsach)
end
