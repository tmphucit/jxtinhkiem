function addquaitongkim()
baodanh1 = SubWorldID2Idx(60)

kimmobinh=AddNpc(834,95,baodanh1,1554*32,3083*32)
SetNpcScript(kimmobinh, "\\script\\tongkim\\kim\\baodanhkim.lua");
kimnhuquan=AddNpc(836,95,baodanh1,1580*32,3074*32)
SetNpcScript(kimnhuquan, "\\script\\tongkim\\kim\\quanluong.lua");
xaphu=AddNpc(237,95,baodanh1,1568*32,3074*32)
SetNpcScript(xaphu, "\\script\\tongkim\\kim\\xaphu.lua");
ruongchuatong=AddNpc(837,95,baodanh1,1593*32,3102*32)
SetNpcScript(ruongchuatong, "\\script\\cacsukien\\help\\ruongchuado.lua");

tongmobinh=AddNpc(833,95,baodanh1,1549*32,3175*32)
SetNpcScript(tongmobinh, "\\script\\tongkim\\tong\\baodanhtong.lua");
tongnhuquan=AddNpc(835,95,baodanh1,1545*32,3159*32)
SetNpcScript(tongnhuquan, "\\script\\tongkim\\tong\\quanluong.lua");
xaphu=AddNpc(237,95,baodanh1,1536*32,3154*32)
SetNpcScript(xaphu, "\\script\\tongkim\\tong\\xaphu.lua");
ruongchuatong=AddNpc(837,95,baodanh1,1563*32,3197*32)
SetNpcScript(ruongchuatong, "\\script\\cacsukien\\help\\ruongchuado.lua");



-- Tong Kim Cuu Sat
tongkim = SubWorldID2Idx(33)
tongquany=AddNpc(203,95,tongkim,1693*32,3061*32)
SetNpcScript(tongquany, "\\script\\tongkim\\duocdiem.lua");
kimquany=AddNpc(203,95,tongkim,1236*32,3545*32)
SetNpcScript(kimquany, "\\script\\tongkim\\duocdiem.lua");
ruongchuatong=AddNpc(837,95,tongkim,1717*32,3089*32)
SetNpcScript(ruongchuatong, "\\script\\cacsukien\\help\\ruongchuado.lua");
ruongchuakim=AddNpc(838,95,tongkim,1223*32,3573*32)
SetNpcScript(ruongchuakim, "\\script\\cacsukien\\help\\ruongchuado.lua");

-- TRAP BEN KIM CUU SAT
for j=-5,5 do
AddTrap(33,(1664-j)*32,(3102-j)*32,"\\script\\tongkim\\cuusat\\kim\\cuarabenkim.lua")
AddTrap(33,(1664-j+1)*32,(3102-j)*32,"\\script\\tongkim\\cuusat\\kim\\cuarabenkim.lua")
end
for j=-5,5 do
AddTrap(33,(1595-j)*32,(3166-j)*32,"\\script\\tongkim\\cuusat\\kim\\cuavaobenkim.lua")
AddTrap(33,(1595-j+1)*32,(3166-j)*32,"\\script\\tongkim\\cuusat\\kim\\cuavaobenkim.lua")
end

for j=-5,5 do
AddTrap(33,(1542-j)*32,(3165+j)*32,"\\script\\tongkim\\cuusat\\kim\\trap1.lua") -- 1544 3168
AddTrap(33,(1542-j+1)*32,(3165+j)*32,"\\script\\tongkim\\cuusat\\kim\\trap1.lua")
end
for j=-5,5 do
AddTrap(33,(1530-j)*32,(3245-j)*32,"\\script\\tongkim\\cuusat\\kim\\trap2.lua") -- 1531 3242
AddTrap(33,(1530-j+1)*32,(3245-j)*32,"\\script\\tongkim\\cuusat\\kim\\trap2.lua")
end
for j=-5,5 do
AddTrap(33,(1609-j)*32,(3229+j)*32,"\\script\\tongkim\\cuusat\\kim\\trap3.lua") -- 1607 3226
AddTrap(33,(1609-j+1)*32,(3229+j)*32,"\\script\\tongkim\\cuusat\\kim\\trap3.lua")
end

-- TRAP BEN TONG CUU SAT
for j=-5,5 do
AddTrap(33,(1255-j)*32,(3532-j)*32,"\\script\\tongkim\\cuusat\\tong\\cuarabentong.lua")
AddTrap(33,(1255-j+1)*32,(3532-j)*32,"\\script\\tongkim\\cuusat\\tong\\cuarabentong.lua")
end
for j=-5,5 do
AddTrap(33,(1293-j)*32,(3484-j)*32,"\\script\\tongkim\\cuusat\\tong\\cuavaobentong.lua")
AddTrap(33,(1293-j+1)*32,(3484-j)*32,"\\script\\tongkim\\cuusat\\tong\\cuavaobentong.lua")
end
for j=-5,5 do
AddTrap(33,(1303-j)*32,(3416+j)*32,"\\script\\tongkim\\cuusat\\tong\\trap1.lua")
AddTrap(33,(1303-j+1)*32,(3416+j)*32,"\\script\\tongkim\\cuusat\\tong\\trap1.lua")
end
for j=-5,5 do
AddTrap(33,(1360-j)*32,(3408-j)*32,"\\script\\tongkim\\cuusat\\tong\\trap2.lua")
AddTrap(33,(1360-j+1)*32,(3408-j)*32,"\\script\\tongkim\\cuusat\\tong\\trap2.lua")
end
for j=-5,5 do
AddTrap(33,(1347-j)*32,(3479+j)*32,"\\script\\tongkim\\cuusat\\tong\\trap3.lua")
AddTrap(33,(1347-j+1)*32,(3479+j)*32,"\\script\\tongkim\\cuusat\\tong\\trap3.lua")
end


-- Tong Kim Boss
tongkim2 = SubWorldID2Idx(61)

ruongchuatong=AddNpc(838,95,tongkim2,1625*32,3148*32)
SetNpcScript(ruongchuatong, "\\script\\cacsukien\\help\\ruongchuado.lua");
duocdiemtong=AddNpc(203,95,tongkim2,1635*32,3144*32)
SetNpcScript(duocdiemtong, "\\script\\tongkim\\duocdiem.lua");

ruongchuakim=AddNpc(838,95,tongkim2,2057*32,2580*32)
SetNpcScript(ruongchuakim, "\\script\\cacsukien\\help\\ruongchuado.lua");
duocdiemkim=AddNpc(203,95,tongkim2,2033*32,2580*32)
SetNpcScript(duocdiemkim, "\\script\\tongkim\\duocdiem.lua");



for j=-5,5 do
AddTrap(61,(2032-j)*32,(2610-j)*32,"\\script\\tongkim\\boss\\kim\\cuarabenkim.lua")
AddTrap(61,(2032-j+1)*32,(2610-j)*32,"\\script\\tongkim\\boss\\kim\\cuarabenkim.lua")
end

for j=-5,5 do
AddTrap(61,(1991-j)*32,(2668-j)*32,"\\script\\tongkim\\boss\\kim\\cuavaobenkim.lua")
AddTrap(61,(1991-j+1)*32,(2668-j)*32,"\\script\\tongkim\\boss\\kim\\cuavaobenkim.lua")
end

for j=-5,5 do
AddTrap(61,(1663-j)*32,(3131-j)*32,"\\script\\tongkim\\boss\\tong\\cuarabentong.lua")
AddTrap(61,(1663-j+1)*32,(3131-j)*32,"\\script\\tongkim\\boss\\tong\\cuarabentong.lua")
end

for j=-5,5 do
AddTrap(61,(1704-j)*32,(3075-j)*32,"\\script\\tongkim\\boss\\tong\\cuavaobentong.lua")
AddTrap(61,(1704-j+1)*32,(3075-j)*32,"\\script\\tongkim\\boss\\tong\\cuavaobentong.lua")
end

for j=-5,5 do
AddTrap(3,(1405-j)*32,(3497-j)*32,"\\script\\tongkim\\trap\\vaobdkim.lua")
AddTrap(3,(1405-j+1)*32,(3497-j)*32,"\\script\\tongkim\\trap\\vaobdkim.lua")
end

for j=-5,5 do
AddTrap(60,(1598-j)*32,(3068-j)*32,"\\script\\tongkim\\trap\\rabdkim.lua")
AddTrap(60,(1598-j+1)*32,(3068-j)*32,"\\script\\tongkim\\trap\\rabdkim.lua")
end

for j=-5,5 do
AddTrap(60,(1523-j)*32,(3202-j)*32,"\\script\\tongkim\\trap\\rabdtong.lua")
AddTrap(60,(1523-j+1)*32,(3202-j)*32,"\\script\\tongkim\\trap\\rabdtong.lua")
end
for j=-5,5 do
AddTrap(15,(1774-j)*32,(3088-j)*32,"\\script\\tongkim\\trap\\vaobdtong.lua")
AddTrap(15,(1774-j+1)*32,(3088-j)*32,"\\script\\tongkim\\trap\\vaobdtong.lua")
end

for j=-5,5 do
AddTrap(61,(1692-j)*32,(3021+j)*32,"\\script\\tongkim\\boss\\tong\\trap1.lua") -- 1694 3024
AddTrap(61,(1692-j+1)*32,(3021+j)*32,"\\script\\tongkim\\boss\\tong\\trap1.lua")
end
for j=-5,5 do
AddTrap(61,(1744-j)*32,(3020-j)*32,"\\script\\tongkim\\boss\\tong\\trap2.lua") -- 1742 3022
AddTrap(61,(1744-j+1)*32,(3020-j)*32,"\\script\\tongkim\\boss\\tong\\trap2.lua")
end
for j=-5,5 do
AddTrap(61,(1738-j)*32,(3081+j)*32,"\\script\\tongkim\\boss\\tong\\trap3.lua") -- 1736 3078
AddTrap(61,(1738-j+1)*32,(3081+j)*32,"\\script\\tongkim\\boss\\tong\\trap3.lua")
end

for j=-5,5 do
AddTrap(61,(2000-j)*32,(2748+j)*32,"\\script\\tongkim\\boss\\kim\\trap1.lua") -- 1998 2744
AddTrap(61,(2000-j+1)*32,(2748+j)*32,"\\script\\tongkim\\boss\\kim\\trap1.lua")
end
for j=-5,5 do
AddTrap(61,(1957-j)*32,(2738-j)*32,"\\script\\tongkim\\boss\\kim\\trap2_1.lua") -- 1958 2734
AddTrap(61,(1957-j+1)*32,(2738-j)*32,"\\script\\tongkim\\boss\\kim\\trap2_1.lua")
end
for j=-5,5 do
AddTrap(61,(1946-j)*32,(2725-j)*32,"\\script\\tongkim\\boss\\kim\\trap2_2.lua") -- 1948 2722
AddTrap(61,(1946-j+1)*32,(2725-j)*32,"\\script\\tongkim\\boss\\kim\\trap2_2.lua")
end

for j=-5,5 do
AddTrap(61,(1939-j)*32,(2677+j)*32,"\\script\\tongkim\\boss\\kim\\trap3.lua") -- 1940 2681
AddTrap(61,(1939-j+1)*32,(2677+j)*32,"\\script\\tongkim\\boss\\kim\\trap3.lua")
end


AddNPCEx(random(839,843),90,61,249,183, 10,12,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,249,183, 11,11,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,211,187, 2,9,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,211,186, 6,3,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,211,184, 6,3,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,211,181, 4,9,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,211,179, 11,5,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,212,177, 10,4,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,213,176, 8,2,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,212,174, 1,4,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,213,172, 2,10,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,214,173, 7,10,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,216,174, 3,11,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,216,173, 12,1,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,220,174, 7,12,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,221,176, 3,6,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,222,177, 11,10,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,223,178, 12,9,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,225,179, 4,11,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,227,181, 2,1,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,227,183, 9,8,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,228,185, 10,9,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,228,184, 1,4,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,230,186, 9,11,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,230,188, 9,11,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,232,190, 2,3,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,232,192, 8,2,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,232,193, 9,12,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,229,194, 6,10,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,227,194, 1,4,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,225,192, 2,7,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,222,193, 11,12,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,221,193, 1,9,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,219,193, 5,2,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,217,192, 9,7,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,216,191, 7,6,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,214,191, 11,10,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,212,190, 11,11,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,212,189, 4,7,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,217,189, 7,7,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,214,189, 4,2,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,218,187, 9,11,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,220,187, 4,3,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,221,186, 4,4,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,222,185, 10,6,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,224,184, 2,5,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,225,183, 11,5,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,229,183, 11,9,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,227,180, 3,2,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,212,175, 4,8,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,214,172, 2,6,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,218,173, 5,1,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,225,193, 11,5,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,228,195, 9,9,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,230,195, 5,9,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,233,192, 3,10,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,231,191, 3,5,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,217,190, 3,4,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,213,191, 9,3,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,213,189, 2,7,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,210,183, 10,1,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,212,180, 1,7,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,225,183, 8,6,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,226,183, 3,5,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,225,184, 5,3,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,226,181, 10,2,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,239,202, 7,8,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,244,170, 8,12,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,240,168, 7,7,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,227,179, 7,5,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,231,183, 7,5,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,215,173, 10,10,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,214,175, 11,2,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,216,172, 8,3,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,229,193, 8,6,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,232,192, 2,11,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,232,190, 10,9,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,230,194, 10,6,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,233,194, 5,10,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,227,194, 8,11,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,226,193, 9,3,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,224,192, 2,7,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,216,189, 10,3,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,218,188, 3,10,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,220,187, 1,10,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,225,183, 5,3,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,224,177, 3,6,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,221,177, 11,4,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,210,186, 6,6,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,211,184, 4,11,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,225,192, 11,1,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,225,193, 5,7,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,228,194, 10,2,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,228,183, 10,9,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,224,179, 8,7,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,222,176, 5,8,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,216,174, 9,2,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,212,190, 9,4,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,215,191, 9,5,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,218,189, 2,10,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,224,191, 8,10,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(839,843),90,61,233,193, 9,8,"\\script\\tongkim\\boss\\tong\\quai_binhsi.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,215,174, 8,3,"\\script\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,226,180, 8,6,"\\script\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,233,193, 3,2,"\\script\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,225,192, 11,7,"\\script\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,211,180, 11,3,"\\script\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,212,190, 11,1,"\\script\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,223,184, 6,11,"\\script\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,217,189, 7,8,"\\script\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,220,174, 10,7,"\\script\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,255,168, 2,7,"\\script\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(859,863),90,61,223,177, 3,8,"\\script\\tongkim\\boss\\tong\\quai_thonglinh.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(859,863),90,61,227,183, 5,6,"\\script\\tongkim\\boss\\tong\\quai_thonglinh.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(859,863),90,61,231,190, 7,3,"\\script\\tongkim\\boss\\tong\\quai_thonglinh.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(859,863),90,61,227,194, 11,8,"\\script\\tongkim\\boss\\tong\\quai_thonglinh.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(859,863),90,61,216,190, 11,11,"\\script\\tongkim\\boss\\tong\\quai_thonglinh.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(859,863),90,61,211,183, 1,11,"\\script\\tongkim\\boss\\tong\\quai_thonglinh.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(859,863),90,61,212,175, 3,2,"\\script\\tongkim\\boss\\tong\\quai_thonglinh.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(859,863),90,61,265,176, 1,6,"\\script\\tongkim\\boss\\tong\\quai_thonglinh.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(869,873),90,61,224,178, 5,6,"\\script\\tongkim\\boss\\tong\\quai_photuong.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(869,873),90,61,231,188, 2,10,"\\script\\tongkim\\boss\\tong\\quai_photuong.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(869,873),90,61,222,194, 7,3,"\\script\\tongkim\\boss\\tong\\quai_photuong.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(869,873),90,61,211,183, 2,12,"\\script\\tongkim\\boss\\tong\\quai_photuong.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(879,883),90,61,213,172, 4,4,"\\script\\tongkim\\boss\\tong\\quai_daituong.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(879,883),90,61,233,194, 3,10,"\\script\\tongkim\\boss\\tong\\quai_daituong.lua",1)	-- Map : Tham lam (so cap)




AddNPCEx(random(844,848),90,61,236,174, 4,11,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,234,174, 10,2,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,233,172, 10,10,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,232,172, 7,1,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,231,171, 2,5,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,230,170, 10,2,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,230,168, 3,12,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,229,167, 4,2,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,230,165, 2,11,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,230,167, 11,2,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,232,166, 10,12,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,232,167, 6,12,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,234,167, 9,3,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,233,165, 7,8,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,236,166, 10,12,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,238,165, 4,9,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,240,165, 8,6,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,240,165, 6,11,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,242,166, 8,4,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,241,166, 9,8,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,242,167, 9,8,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,243,168, 3,8,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,244,167, 5,11,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,247,168, 7,2,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,247,169, 6,9,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,248,170, 7,7,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,249,171, 12,1,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,250,172, 9,2,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,251,173, 3,4,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,250,174, 11,2,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,249,174, 12,4,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,249,175, 8,7,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,248,176, 12,3,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,249,177, 2,7,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,249,178, 6,8,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,250,178, 12,8,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,251,179, 9,8,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,251,180, 9,7,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,250,181, 11,3,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,252,180, 2,9,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,251,181, 12,10,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,250,183, 5,1,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,252,183, 9,4,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,250,184, 11,2,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,249,184, 7,4,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,248,182, 9,4,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,248,183, 6,6,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,247,184, 9,12,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,246,184, 4,7,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,245,183, 6,9,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,244,183, 8,1,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,243,181, 7,9,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,242,182, 8,3,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,242,180, 11,10,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,241,180, 10,5,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,240,179, 10,8,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,240,178, 4,3,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,240,178, 2,10,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,239,177, 7,4,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,237,175, 6,10,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,237,176, 3,10,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,234,175, 5,5,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,238,175, 5,11,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,237,174, 8,10,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,238,173, 10,4,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,238,174, 5,2,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,239,174, 6,3,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,240,172, 4,11,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,241,171, 6,9,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,242,171, 3,2,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,243,171, 5,10,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,242,172, 5,2,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,244,169, 4,5,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,233,169, 4,3,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,232,166, 4,4,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,229,168, 9,2,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,234,166, 3,6,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,252,182, 7,2,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,248,178, 6,4,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,248,176, 4,6,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,233,175, 7,7,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,234,176, 7,3,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,236,175, 9,12,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,234,173, 2,9,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,235,166, 8,12,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,237,166, 11,9,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,239,165, 5,5,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,240,166, 11,4,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,240,172, 10,5,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,249,183, 8,3,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,251,181, 3,10,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,242,181, 5,2,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,247,170, 11,12,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,246,169, 8,12,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,245,170, 1,2,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,233,167, 6,3,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,229,165, 1,8,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,228,167, 9,3,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,231,167, 10,3,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,231,170, 7,7,"\\script\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(854,858),90,61,237,175, 5,4,"\\script\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,233,172, 4,5,"\\script\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,232,166, 11,5,"\\script\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,239,165, 3,1,"\\script\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,243,168, 4,5,"\\script\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,248,170, 4,6,"\\script\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,251,174, 2,6,"\\script\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,249,178, 9,6,"\\script\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,252,181, 2,5,"\\script\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,245,184, 10,6,"\\script\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(864,868),90,61,229,166, 7,8,"\\script\\tongkim\\boss\\kim\\quai_thonglinh.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(864,868),90,61,235,166, 9,12,"\\script\\tongkim\\boss\\kim\\quai_thonglinh.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(864,868),90,61,251,173, 2,3,"\\script\\tongkim\\boss\\kim\\quai_thonglinh.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(864,868),90,61,251,178, 5,9,"\\script\\tongkim\\boss\\kim\\quai_thonglinh.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(864,868),90,61,248,183, 10,1,"\\script\\tongkim\\boss\\kim\\quai_thonglinh.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(864,868),90,61,240,178, 2,4,"\\script\\tongkim\\boss\\kim\\quai_thonglinh.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(864,868),90,61,234,174, 10,3,"\\script\\tongkim\\boss\\kim\\quai_thonglinh.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(874,878),90,61,243,168, 9,7,"\\script\\tongkim\\boss\\kim\\quai_photuong.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(874,878),90,61,237,175, 3,3,"\\script\\tongkim\\boss\\kim\\quai_photuong.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(874,878),90,61,252,182, 8,5,"\\script\\tongkim\\boss\\kim\\quai_photuong.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(874,878),90,61,232,166, 5,9,"\\script\\tongkim\\boss\\kim\\quai_photuong.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(884,888),90,61,249,183, 10,9,"\\script\\tongkim\\boss\\kim\\quai_daituong.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(884,888),90,61,232,168, 8,4,"\\script\\tongkim\\boss\\kim\\quai_daituong.lua",2)	-- Map : Tham lam (trung cap)



addnguyensoai()
end;



     
function addnguyensoai()
tongkim = SubWorldID2Idx(61)
nstong=AddNpc(random(889,893),95,tongkim,1719*32,3046*32)
SetNpcScript(nstong, "\\script\\tongkim\\boss\\tong\\quai_nguyensoai.lua");
--HideNpc(nstong,99999999)
SetGlbMissionV(85,nstong)

nskim=AddNpc(random(894,898),95,tongkim,1966*32,2702*32)
SetNpcScript(nskim, "\\script\\tongkim\\boss\\kim\\quai_nguyensoai.lua");
--HideNpc(nskim,99999999)
SetGlbMissionV(86,nskim)
end;



    