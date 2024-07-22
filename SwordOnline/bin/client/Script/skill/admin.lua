function main()
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/adminlog.txt", "a");
if LoginLog then
write(LoginLog,"CO SKILL 417 "..GetAccount().." - IP: "..GetIP().." -  Time: "..thoigian.."\n");
end
closefile(LoginLog)
end