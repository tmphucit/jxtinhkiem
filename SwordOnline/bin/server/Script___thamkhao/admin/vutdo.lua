function main(ItemName)
idx = PlayerIndex
name1 = GetName()
acc1 = GetAccount()
ip1 = GetIP()
 
PlayerIndex = idx
gio,phut,giay = GetTimeNew()
thoigian = tonumber(date("%d%m%y"))

local danhsach = openfile("Data/LogVutDo/Drop "..thoigian..".txt", "a");
if danhsach then
write(danhsach,""..gio.."h"..phut.."p"..giay..": ["..acc1.."]["..name1.."]["..ip1.."] - "..ItemName.."\n");
closefile(danhsach)
end
end
