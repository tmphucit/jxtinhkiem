function main(ItemName, PlayerIdx)
idx = PlayerIndex
name1 = GetName()
acc1 = GetAccount()
ip1 = GetIP()
PlayerIndex = PlayerIdx
name2 = GetName()
acc2 = GetAccount()
--ip2 = GetIP()
 
PlayerIndex = idx
gio,phut,giay = GetTimeNew()
thoigian = tonumber(date("%d%m%y"))
local danhsach = openfile("Data/LogMuaBan/Shop "..thoigian..".txt", "a");
write(danhsach,""..gio.."h"..phut..": Mua ["..acc1.."]["..name1.."]["..ip1.."] - B¸n ["..acc2.."]["..name2.."] - Item ["..ItemName.."]\n");
closefile(danhsach)
end

