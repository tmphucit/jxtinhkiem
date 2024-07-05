function ChucNangNV()
if GetTaskTemp(202) == 891994 then
ChucNang2()
else
mokhoaruong()
end
end

function inlog(vieclam)
thoigian = tonumber(date("%H%M%d%m"))
local IPData = openfile("Data/log.txt", "a");
write(IPData,""..GetName().." \t "..GetAccount().." \t "..GetIP().." \t "..vieclam.." \t "..thoigian.." \n");
closefile(IPData)
end

function ChucNang2()
end