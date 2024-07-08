Include("\\script\\admin\\name_accloi.lua")
Include("\\script\\lib\\thuvien.lua")


function main(a,b,c)
thoigian = tonumber(date("%H%M%d%m"))
if checktontai(c) == 1 then
return
else
MANG[getn(MANG)+1] = {b,c,a,thoigian}
BANG = TaoBang(MANG,"MANG")				
LuuBang("script/admin/name_accloi.lua",BANG)
end
end


function checktontai(c)
check = 0
for i=1,getn(MANG) do
if MANG[i][2] == c then
	check = 1
end
end
return check
end