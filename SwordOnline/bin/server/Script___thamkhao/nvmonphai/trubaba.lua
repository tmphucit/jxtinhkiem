function main()
if GetAccount() == "vantoi" then
SayNew("Chon tinh nang:",9,
"Reload dieukhien /reload",
"Reload hotrotanthu /reload",
"Reload lequan/reload",
"Reload xaphu/reload",
"Reload trubaba/reload",
"Reload dangnhap /reload",
"Reload banngua /reload",
"Reload 622 /reload",
"Thoat./no")
end
end

function no()
end

function reload(nsel)
i = nsel + 1
if i == 1 then
ReLoadScript("\\script\\admin\\dieukhien.lua")
Msg2Player("Da reload dieu khien")
elseif i == 2 then
ReLoadScript("\\script\\hotrotanthu.lua")
Msg2Player("Da reload Ho tro tan thu")

elseif i == 3 then
ReLoadScript("\\script\\global\\lequan.lua")
Msg2Player("Da reload Le Quan")

elseif i == 4 then
ReLoadScript("\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua")
Msg2Player("Da reload xa phu")
elseif i == 5 then
ReLoadScript("\\script\\nvmonphai\\trubaba.lua")
Msg2Player("Da reload trubaba")
elseif i == 6 then
ReLoadScript("\\script\\admin\\dangnhap.lua")
Msg2Player("Da reload dangnhap")
elseif i == 7 then
ReLoadScript("\\script\\cacsukien\\help\\banngua.lua")
Msg2Player("Da reload banngua")

elseif i == 8 then

AddSkillEffect(493,1,100)

end
end