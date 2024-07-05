Include("\\Script\\global\\sourcejx49.lua");

mangtoado = {
{2,2612,3650},
{2,2501,3747},
{2,2444,3685},
{2,2350,3589},
{2,2420,3478},
{2,2324,3788},
{2,2328,3922},
{2,2444,3863},
{2,2501,3864},
{2,2539,3950},
{2,2500,4049},
{2,2608,3971},
{2,2453,3815},
{2,2405,3798},
{2,2436,3651},
{2,2496,3516},
{2,2545,3502}
}



function addnpcblh()
dieptiepmy=AddNpc(968,95,SubWorldID2Idx(2),2438*32,3452*32)
SetNpcScript(dieptiepmy, "\\script\\nvmonphai\\dieptiepmy.lua");
dieptiepmy=AddNpc(968,95,SubWorldID2Idx(86),2438*32,3452*32)
SetNpcScript(dieptiepmy, "\\script\\nvmonphai\\dieptiepmy.lua");

truongdaubuu=AddNpc(969,95,SubWorldID2Idx(8),1887*32,3424*32)
SetNpcScript(truongdaubuu, "\\script\\nvmonphai\\truongdaubuu.lua");
truongdaubuu=AddNpc(969,95,SubWorldID2Idx(87),1887*32,3424*32)
SetNpcScript(truongdaubuu, "\\script\\nvmonphai\\truongdaubuu.lua");


tongvienthanh=AddNpc(970,95,SubWorldID2Idx(15),1534*32,3095*32)
SetNpcScript(tongvienthanh, "\\script\\nvmonphai\\tongvienthanh.lua");

huyetmaho=AddNpc(971,95,SubWorldID2Idx(8),1928*32,3578*32)
SetNpcScript(huyetmaho, "\\script\\nvmonphai\\huyetmaho.lua");
huyetmaho=AddNpc(971,95,SubWorldID2Idx(87),1928*32,3578*32)
SetNpcScript(huyetmaho, "\\script\\nvmonphai\\huyetmaho.lua");

tkkq=AddNpc(972,95,SubWorldID2Idx(101),1729*32,3194*32)
SetNpcScript(tkkq, "\\script\\nvmonphai\\thichkhach.lua");
tkkq=AddNpc(972,95,SubWorldID2Idx(89),1729*32,3194*32)
SetNpcScript(tkkq, "\\script\\nvmonphai\\thichkhach.lua");

tkkq=AddNpc(972,95,SubWorldID2Idx(101),1763*32,3078*32)
SetNpcScript(tkkq, "\\script\\nvmonphai\\thichkhach.lua");
tkkq=AddNpc(972,95,SubWorldID2Idx(89),1763*32,3078*32)
SetNpcScript(tkkq, "\\script\\nvmonphai\\thichkhach.lua");

tuongquan=AddNpc(973,95,SubWorldID2Idx(9),1736*32,2948*32)
SetNpcScript(tuongquan, "\\script\\nvmonphai\\tieutuongquan.lua");
daisu=AddNpc(974,95,SubWorldID2Idx(18),3217*32,5115*32)
SetNpcScript(daisu, "\\script\\nvmonphai\\tuchungdaisu.lua");

thanhkhon=AddNpc(975,95,SubWorldID2Idx(187),1593*32,3508*32)
SetNpcScript(thanhkhon, "\\script\\nvmonphai\\thanhkhon.lua");
thanhkhon=AddNpc(975,95,SubWorldID2Idx(90),1593*32,3508*32)
SetNpcScript(thanhkhon, "\\script\\nvmonphai\\thanhkhon.lua");

daiquan=AddNpc(976,95,SubWorldID2Idx(17),1611*32,3239*32)
SetNpcScript(daiquan, "\\script\\nvmonphai\\thanhdaiquan.lua");
toto=AddNpc(977,95,SubWorldID2Idx(3),1736*32,2887*32)
SetNpcScript(toto, "\\script\\nvmonphai\\lieutoto.lua");
baba=AddNpc(978,95,SubWorldID2Idx(53),1631*32,3245*32)
SetNpcScript(baba, "\\script\\nvmonphai\\trubaba.lua");
tuthanh=AddNpc(979,95,SubWorldID2Idx(9),1586*32,3058*32)
SetNpcScript(tuthanh, "\\script\\nvmonphai\\chuctuthanh.lua");
hamotuyet=AddNpc(980,95,SubWorldID2Idx(15),1529*32,3309*32)
SetNpcScript(hamotuyet, "\\script\\nvmonphai\\hamotuyet.lua");

dichhaonhien=AddNpc(random(981,985),95,SubWorldID2Idx(102),1638*32,3759*32)
SetNpcScript(dichhaonhien, "\\script\\nvmonphai\\dichhaonhien.lua");
dichhaonhien=AddNpc(random(981,985),95,SubWorldID2Idx(92),1638*32,3759*32)
SetNpcScript(dichhaonhien, "\\script\\nvmonphai\\dichhaonhien.lua");

codutau=AddNpc(986,95,SubWorldID2Idx(18),3076*32,5093*32)
SetNpcScript(codutau, "\\script\\nvmonphai\\codutau.lua");
volamminhchu=AddNpc(987,95,SubWorldID2Idx(17),1612*32,3037*32)
SetNpcScript(volamminhchu, "\\script\\nvmonphai\\volamminhchu.lua");

taohung=AddNpc(random(988,992),95,SubWorldID2Idx(104),1345*32,2284*32)
SetNpcScript(taohung, "\\script\\nvmonphai\\taohung.lua");
taohung=AddNpc(random(988,992),95,SubWorldID2Idx(93),1345*32,2284*32)
SetNpcScript(taohung, "\\script\\nvmonphai\\taohung.lua");

--thantai=AddNpc(744,95,SubWorldID2Idx(53),1635*32,3216*32)
--SetNpcScript(thantai, "\\script\\banveso\\npcthantai.lua");
--songbac=AddNpc(217,95,SubWorldID2Idx(53),1588*32,3218*32)
--SetNpcScript(songbac, "\\script\\global\\songbac.lua");
--SetNpcName(songbac,"Giao D?h Vi?")


ctc = SubWorldID2Idx(36)

--- CONG THANh
AddNPCEx(767,50,34,202,198,4,0,"\\script\\congthanh\\duocdiem.lua",6)
AddNPCEx(766,50,35,197,200,8,4,"\\script\\congthanh\\duocdiem.lua",6)
AddNPCEx(766,50,36,195,202,8,4,"\\script\\congthanh\\duocdiem.lua",6) -- Thu
AddNPCEx(766,50,36,194,201,7,6,"\\script\\congthanh\\duocdiem.lua",6) -- thu
AddNPCEx(766,50,36,239,223,6,1,"\\script\\congthanh\\duocdiem.lua",6)
AddNPCEx(766,50,36,240,223,7,6,"\\script\\congthanh\\duocdiem.lua",6)


AddNPCEx(237,50,34,205,199,0,5,"\\script\\congthanh\\xaphu.lua",6)
AddNPCEx(237,50,35,192,201,4,4,"\\script\\congthanh\\xaphu.lua",6)


AddNPCEx(837,50,34,201,200,0,3,"\\script\\cacsukien\\help\\ruongchuado.lua",6)
AddNPCEx(837,50,35,199,201,1,3,"\\script\\cacsukien\\help\\ruongchuado.lua",6)
AddNPCEx(837,50,36,235,224,6,2,"\\script\\cacsukien\\help\\ruongchuado.lua",6)
AddNPCEx(837,50,36,192,202,4,6,"\\script\\cacsukien\\help\\ruongchuado.lua",6) -- thu

for j=-5,5 do
AddTrap(36,(1594-j)*32,(3472+j)*32,"\\script\\congthanh\\trap_matdao.lua")
AddTrap(36,(1593+j)*32,(3465-j)*32,"\\script\\congthanh\\trap_matdao.lua")
AddTrap(36,(1589-j)*32,(3465+j)*32,"\\script\\congthanh\\trap_matdao.lua")
AddTrap(36,(1589+j)*32,(3472-j)*32,"\\script\\congthanh\\trap_matdao.lua")

end
for j=-5,5 do
AddTrap(36,(1526-j)*32,(3202+j)*32,"\\script\\congthanh\\trap_vaothu.lua")
AddTrap(36,(1526-j+1)*32,(3202+j)*32,"\\script\\congthanh\\trap_vaothu.lua")
end
for j=-5,5 do
AddTrap(36,(1908-j)*32,(3619+j)*32,"\\script\\congthanh\\trap_vaocong.lua")
AddTrap(36,(1908-j+1)*32,(3619+j)*32,"\\script\\congthanh\\trap_vaocong.lua")
end

for j=-5,5 do
AddTrap(34,(1580-j)*32,(3156+j)*32,"\\script\\congthanh\\trap_racong.lua")
AddTrap(34,(1580-j+1)*32,(3156+j)*32,"\\script\\congthanh\\trap_racong.lua")
end

for j=-5,5 do
AddTrap(35,(1575-j)*32,(3254+j)*32,"\\script\\congthanh\\trap_rathu.lua")
AddTrap(35,(1575-j+1)*32,(3254+j)*32,"\\script\\congthanh\\trap_rathu.lua")
end
for j=-5,5 do
AddTrap(35,(1596-j)*32,(3234+j)*32,"\\script\\congthanh\\trap_rathu1.lua")
AddTrap(35,(1596-j+1)*32,(3234+j)*32,"\\script\\congthanh\\trap_rathu1.lua")
end

for i=-5,5 do
AddTrap(36,(1798-i)*32,(3499+i)*32,"\\script\\congthanh\\trap\\cong\\2.lua")
AddTrap(36,(1798-i+1)*32,(3499+i)*32,"\\script\\congthanh\\trap\\cong\\2.lua")
end
for i=-5,5 do
AddTrap(36,(1813-i)*32,(3484+i)*32,"\\script\\congthanh\\trap\\cong\\2.lua")
AddTrap(36,(1813-i+1)*32,(3484+i)*32,"\\script\\congthanh\\trap\\cong\\2.lua")
end

for i=-5,5 do
AddTrap(36,(1863-i)*32,(3564+i)*32,"\\script\\congthanh\\trap\\cong\\21.lua")
AddTrap(36,(1863-i+1)*32,(3564+i)*32,"\\script\\congthanh\\trap\\cong\\21.lua")
end

for i=-5,5 do
AddTrap(36,(1878-i)*32,(3550+i)*32,"\\script\\congthanh\\trap\\cong\\22.lua")
AddTrap(36,(1878-i+1)*32,(3550+i)*32,"\\script\\congthanh\\trap\\cong\\22.lua")
end

for i=-5,5 do
AddTrap(36,(1866-i)*32,(3412+i)*32,"\\script\\congthanh\\trap\\cong\\2.lua")
AddTrap(36,(1866-i+1)*32,(3412+i)*32,"\\script\\congthanh\\trap\\cong\\2.lua")
end
for i=-5,5 do
AddTrap(36,(1905-i)*32,(3549+i)*32,"\\script\\congthanh\\trap\\cong\\31.lua")
AddTrap(36,(1905-i+1)*32,(3549+i)*32,"\\script\\congthanh\\trap\\cong\\31.lua")
end
for i=-5,5 do
AddTrap(36,(1735-i)*32,(3540+i)*32,"\\script\\congthanh\\trap\\cong\\2.lua")
AddTrap(36,(1735-i+1)*32,(3540+i)*32,"\\script\\congthanh\\trap\\cong\\2.lua")
end
for i=-5,5 do
AddTrap(36,(1861-i)*32,(3595+i)*32,"\\script\\congthanh\\trap\\cong\\11.lua")
AddTrap(36,(1861-i+1)*32,(3595+i)*32,"\\script\\congthanh\\trap\\cong\\11.lua")
end


for i=-10,10 do
AddTrap(36,(1622-i)*32,(3296+i)*32,"\\script\\congthanh\\trap\\thu\\1.lua")
AddTrap(36,(1622-i+1)*32,(3296+i)*32,"\\script\\congthanh\\trap\\thu\\1.lua")
end
for i=-5,5 do
AddTrap(36,(1674-i)*32,(3245+i)*32,"\\script\\congthanh\\trap\\thu\\1.lua")
AddTrap(36,(1674-i+1)*32,(3245+i)*32,"\\script\\congthanh\\trap\\thu\\1.lua")
end
for i=-5,5 do
AddTrap(36,(1544-i)*32,(3368+i)*32,"\\script\\congthanh\\trap\\thu\\1.lua")
AddTrap(36,(1544-i+1)*32,(3368+i)*32,"\\script\\congthanh\\trap\\thu\\1.lua")
end
for i=-5,5 do
AddTrap(36,(1576-i)*32,(3251+i)*32,"\\script\\congthanh\\trap\\thu\\21.lua")
AddTrap(36,(1576-i+1)*32,(3251+i)*32,"\\script\\congthanh\\trap\\thu\\21.lua")
end
for i=-5,5 do
AddTrap(36,(1561-i)*32,(3266+i)*32,"\\script\\congthanh\\trap\\thu\\22.lua")
AddTrap(36,(1561-i+1)*32,(3266+i)*32,"\\script\\congthanh\\trap\\thu\\22.lua")
end
for i=-5,5 do
AddTrap(36,(1538-i)*32,(3275+i)*32,"\\script\\congthanh\\trap\\thu\\11.lua")
AddTrap(36,(1538-i+1)*32,(3275+i)*32,"\\script\\congthanh\\trap\\thu\\11.lua")
end
for i=-5,5 do
AddTrap(36,(1581-i)*32,(3228+i)*32,"\\script\\congthanh\\trap\\thu\\31.lua")
AddTrap(36,(1581-i+1)*32,(3228+i)*32,"\\script\\congthanh\\trap\\thu\\31.lua")
end



SetGlbMissionV(51,9999)
SetGlbMissionV(52,9999)
SetGlbMissionV(53,9999)

cong11 =  AddNpc(780,95,ctc,1663*32,3473*32)
SetNpcScript(cong11, "\\script\\congthanh\\cong1.lua");
cong21 = AddNpc(780,95,ctc,1729*32,3410*32)
SetNpcScript(cong21, "\\script\\congthanh\\cong2.lua");
cong31 = AddNpc(780,95,ctc,1796*32+24,3343*32+4)
SetNpcScript(cong31, "\\script\\congthanh\\cong3.lua");


-- Tru Giua
cs1=AddNpc(785,95,ctc,1634*32,3347*32)
cs1=AddNpc(784,95,ctc,1639*32,3352*32)
cs1=AddNpc(785,95,ctc,1644*32,3357*32)
cs1=AddNpc(784,95,ctc,1649*32,3362*32)
cs1=AddNpc(785,95,ctc,1654*32,3367*32)
cs1=AddNpc(784,95,ctc,1655*32,3325*32)
cs1=AddNpc(785,95,ctc,1660*32,3330*32)
cs1=AddNpc(784,95,ctc,1665*32,3335*32)
cs1=AddNpc(785,95,ctc,1670*32,3340*32)
cs1=AddNpc(784,95,ctc,1675*32,3345*32)

-- Tru phai
cs1=AddNpc(785,95,ctc,1701*32,3280*32)
cs1=AddNpc(784,95,ctc,1706*32,3285*32)
cs1=AddNpc(785,95,ctc,1711*32,3290*32)
cs1=AddNpc(784,95,ctc,1716*32,3295*32)
cs1=AddNpc(785,95,ctc,1721*32,3300*32)
cs1=AddNpc(784,95,ctc,1723*32,3258*32)
cs1=AddNpc(785,95,ctc,1728*32,3263*32)
cs1=AddNpc(784,95,ctc,1733*32,3268*32)
cs1=AddNpc(785,95,ctc,1738*32,3273*32)
cs1=AddNpc(784,95,ctc,1743*32,3278*32)

-- Tru trai
cs1=AddNpc(785,95,ctc,1569*32,3412*32)
cs1=AddNpc(784,95,ctc,1574*32,3417*32)
cs1=AddNpc(785,95,ctc,1579*32,3422*32)
cs1=AddNpc(784,95,ctc,1584*32,3427*32)
cs1=AddNpc(785,95,ctc,1589*32,3432*32)
cs1=AddNpc(784,95,ctc,1590*32,3389*32)
cs1=AddNpc(785,95,ctc,1595*32,3394*32)
cs1=AddNpc(784,95,ctc,1600*32,3399*32)
cs1=AddNpc(785,95,ctc,1605*32,3404*32)
cs1=AddNpc(784,95,ctc,1610*32,3409*32)

-- KV Cong 1
AddNpc(782,95,ctc,1666*32,3477*32)
AddNpc(783,95,ctc,1675*32,3485*32)
cs1=AddNpc(784,95,ctc,1675*32,3468*32)
cs1=AddNpc(785,95,ctc,1678*32,3471*32)
cs1=AddNpc(784,95,ctc,1681*32,3474*32)
cs1=AddNpc(785,95,ctc,1684*32,3477*32)
cs1=AddNpc(784,95,ctc,1687*32,3480*32)
cs1=AddNpc(785,95,ctc,1690*32,3483*32)

cs1=AddNpc(785,95,ctc,1658*32,3487*32)
cs1=AddNpc(784,95,ctc,1661*32,3490*32)
cs1=AddNpc(785,95,ctc,1664*32,3493*32)
cs1=AddNpc(784,95,ctc,1667*32,3496*32)
cs1=AddNpc(785,95,ctc,1670*32,3499*32)
cs1=AddNpc(784,95,ctc,1673*32,3502*32)


-- KV Cong 2
for i=-5,5 do
AddTrap(36,(1661-i)*32,(3473+i)*32,"\\script\\congthanh\\trap_cua1.lua")
AddTrap(36,(1661-i+1)*32,(3473+i)*32,"\\script\\congthanh\\trap_cua1.lua")
end
for i=-5,5 do
AddTrap(36,(1727-i)*32,(3409+i)*32,"\\script\\congthanh\\trap_cua2.lua")
AddTrap(36,(1727-i+1)*32,(3409+i)*32,"\\script\\congthanh\\trap_cua2.lua")
end
for i=-5,5 do
AddTrap(36,(1795-i)*32,(3342+i)*32,"\\script\\congthanh\\trap_cua3.lua")
AddTrap(36,(1795-i+1)*32,(3342+i)*32,"\\script\\congthanh\\trap_cua3.lua")
end
AddNpc(782,95,ctc,1732*32,3414*32)
AddNpc(783,95,ctc,1741*32,3421*32)
cs1=AddNpc(784,95,ctc,1741*32,3405*32)
cs1=AddNpc(785,95,ctc,1744*32,3408*32)
cs1=AddNpc(784,95,ctc,1747*32,3411*32)
cs1=AddNpc(785,95,ctc,1750*32,3415*32)
cs1=AddNpc(784,95,ctc,1753*32,3417*32)
cs1=AddNpc(784,95,ctc,1756*32,3420*32)
cs1=AddNpc(785,95,ctc,1724*32,3422*32)
cs1=AddNpc(784,95,ctc,1727*32,3425*32)
cs1=AddNpc(785,95,ctc,1730*32,3428*32)
cs1=AddNpc(784,95,ctc,1733*32,3431*32)
cs1=AddNpc(785,95,ctc,1736*32,3434*32)
cs1=AddNpc(784,95,ctc,1739*32,3437*32)

-- KV Cong 3
--cong3 = 
AddNpc(782,95,ctc,1799*32,3347*32)
AddNpc(783,95,ctc,1808*32,3355*32)
cs1=AddNpc(784,95,ctc,1808*32,3338*32)
cs1=AddNpc(785,95,ctc,1812*32,3341*32)
cs1=AddNpc(784,95,ctc,1815*32,3344*32)
cs1=AddNpc(785,95,ctc,1818*32,3347*32)
cs1=AddNpc(784,95,ctc,1821*32,3350*32)
cs1=AddNpc(785,95,ctc,1824*32,3353*32)
cs1=AddNpc(785,95,ctc,1791*32,3357*32)
cs1=AddNpc(784,95,ctc,1794*32,3360*32)
cs1=AddNpc(785,95,ctc,1797*32,3363*32)
cs1=AddNpc(784,95,ctc,1800*32,3366*32)
cs1=AddNpc(785,95,ctc,1803*32,3369*32)
cs1=AddNpc(784,95,ctc,1806*32,3372*32)

for i=-5,5 do
	AddTrap(13,(1600+i)*32,(3302)*32,"\\script\\global\\trap_minhnguyet.lua")
	AddTrap(13,(1600+i)*32,(3299)*32,"\\script\\global\\trap_minhnguyet.lua")
end




npcmapindex = SubWorldID2Idx(53)

-- Phong lang do
AddNPCEx(740,1,46,143,188, 5,8,"\\script\\phonglangdo\\thuyenphu.lua",6)	-- Map : Phong Lang do
AddNPCEx(740,99,46,159,181, 10,7,"\\script\\phonglangdo\\thuyenphu1.lua",5)	-- Map : Phong Lang do
AddNPCEx(740,99,46,192,175, 7,8,"\\script\\phonglangdo\\thuyenphu2.lua",5)	-- Map : Phong Lang do

-- DA TAU
AddNPCEx(665,50,53,202,200,2,3,"\\script\\datau\\npcdatau.lua",6)
AddNPCEx(665,50,15,199,205,2,3,"\\script\\datau\\npcdatau.lua",6)
AddNPCEx(665,50,17,202,192,2,5,"\\script\\datau\\npcdatau.lua",6)
AddNPCEx(665,50,9,217,193,2,5,"\\script\\datau\\npcdatau.lua",6)
AddNPCEx(665,50,18,394,317,4,5,"\\script\\datau\\npcdatau.lua",6)

--mp9=AddNpc(1003,95,npcmapindex,1625*32,3191*32)
--SetNpcScript(mp9, "\\script\\boss\\bossphonglangdo.lua");
--SetNpcName(mp9,"Qu? L?Phong L+g ? ")

-- CHUYEN SINh
--AddNPCEx(287,90,21,169,183,8,6,"\\script\\chuyensinh\\bossdie.lua",5)	
--AddNPCEx(288,90,21,169,184,8,6,"",5)	
--AddNPCEx(289,90,21,169,182,8,6,"",5)	
--AddNPCEx(290,90,21,168,183,8,6,"",5)	
--AddNPCEx(291,90,21,170,183,8,6,"",5)	
--AddNPCEx(292,90,21,169,183,8,6,"",5)	


--AddNPCEx(random(690,694),90,79,237,174,4,4,"\\script\\chuyensinh\\bossdie2.lua",5)	
--AddNPCEx(random(695,699),90,79,239,173,4,4,"\\script\\chuyensinh\\bossdie2.lua",5)		

--AddNPCEx(random(725,729),99,46,186,195, 5,9,"\\script\\chuyensinh\\bossdie3.lua",5)	-- Map : Phong Lang do

--AddNPCEx(random(745,749),99,104,159,189, 5,9,"\\script\\chuyensinh\\bossdie4.lua",5)
--AddNPCEx(random(745,749),99,104,159,189, 5,9,"\\script\\chuyensinh\\bossdie4.lua",5)

------------ LIEN DAU
--AddNPCEx(773,1,42,189,190,0,0,"\\script\\liendau\\sugiald.lua",6) --SU Gia Ngoai
--AddNPCEx(773,1,42,188,188,3,8,"\\script\\liendau\\sugiald.lua",6) --SU Gia Ngoai
--AddNPCEx(773,1,42,186,189,1,2,"\\script\\liendau\\sugiald.lua",6) --SU Gia Ngoai
--AddNPCEx(773,1,42,186,190,1,0,"\\script\\liendau\\sugiald.lua",6) --SU Gia Ngoai
--AddNPCEx(773,1,53,202,199,4,4,"\\script\\liendau\\sugiald.lua",6) --SU Gia Ngoai
--AddNPCEx(203,1,42,193,192,2,1,"\\script\\cacsukien\\help\\duocdiem.lua",6) --Ngo Than Y
--AddNPCEx(237,1,42,182,188, 1,7,"\\script\\liendau\\xaphu.lua",6)
--AddNPCEx(837,50,42,195,191,3,0,"\\script\\cacsukien\\help\\ruongchuado.lua",6)

-------

	--AddNPCEx(66,50,53,223,213,8,6,"\\script\\nvhoangkim\\nhim.lua",5)
	--AddNPCEx(66,50,53,219,182,8,6,"\\script\\nvhoangkim\\nhim.lua",5) 
	--AddNPCEx(66,50,53,178,207,8,6,"\\script\\nvhoangkim\\nhim.lua",5) 
	--AddNPCEx(67,1,18,395,324,8,6,"\\script\\nvhoangkim\\macsau.lua",6)
	--AddNPCEx(68,50,18,412,303,8,6,"\\script\\nvhoangkim\\lymacsau.lua",5) 
	--AddNPCEx(69,50,17,198,206,8,6,"\\script\\nvhoangkim\\vantong.lua",6) 
	--AddNPCEx(70,50,2,325,219,8,6,"\\script\\nvhoangkim\\nhimchua.lua",5) 
	AddNPCEx(71,50,18,383,322,8,6,"\\script\\nvhoangkim\\anmay.lua",6) 
	--AddNPCEx(72,50,53,188,198,8,6,"\\script\\nvhoangkim\\namvan.lua",6) 
	--AddNPCEx(73,50,15,191,201,8,6,"\\script\\nvhoangkim\\nambang.lua",6) 
	--AddNPCEx(74,50,102,226,221,8,6,"\\script\\nvhoangkim\\ninhtuongquan.lua",5) 
	--AddNPCEx(75,50,75,223,202,8,6,"\\script\\nvhoangkim\\luuthientruong.lua",5) 
	--AddNPCEx(76,50,53,200,195,8,6,"\\script\\nvhoangkim\\vannhi.lua",6) 
	--AddNPCEx(77,50,17,203,191,8,6,"\\script\\nvhoangkim\\congcong.lua",6) 
	--AddNPCEx(78,90,8,226,205,8,6,"\\script\\nvhoangkim\\tieukynhi.lua",5) 
	--AddNPCEx(79,90,104,150,162,8,6,"\\script\\nvhoangkim\\hahauphuc.lua",5) 
	--AddNPCEx(80,50,18,376,316,8,6,"\\script\\nvhoangkim\\tieusu.lua",6) 
	AddNPCEx(203,1,53,199,200,4,8,"\\script\\cacsukien\\help\\duocdiem.lua",6) --Ngo Than Y
	AddNPCEx(219,1,53,199,198,10,3,"\\script\\cacsukien\\help\\taphoatl.lua",6) --Chu tiem tap hoa
	AddNPCEx(198,1,53,198,197,2,1,"\\script\\cacsukien\\help\\thoren.lua",6) --Tho ren

	
	

	


		AddNPCEx(668,1,5,203,200,8,6,"\\script\\cacsukien\\help\\nhamon.lua",6) 
	AddNPCEx(516,1,5,203,200, 5,3,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Tuong Duong
mp1=AddNpc(189,95,npcmapindex,1615*32,3171*32)
mp2=AddNpc(184,95,npcmapindex,1612*32,3174*32)
mp3=AddNpc(186,95,npcmapindex,1620*32,3165*32)
mp4=AddNpc(177,95,npcmapindex,1625*32,3167*32)
mp5=AddNpc(527,95,npcmapindex,1639*32,3187*32)
mp6=AddNpc(171,95,npcmapindex,1637*32,3189*32)
mp7=AddNpc(174,95,npcmapindex,1635*32,3191*32)
mp8=AddNpc(188,95,npcmapindex,1633*32,3193*32)
mp9=AddNpc(528,95,npcmapindex,1631*32,3195*32)
SetNpcScript(mp1, "\\script\\faction49\\thieulam.lua");
SetNpcScript(mp2, "\\script\\faction49\\thienvuong.lua");	
SetNpcScript(mp3, "\\script\\faction49\\ngudoc.lua");	
SetNpcScript(mp4, "\\script\\faction49\\duongmon.lua");	
SetNpcScript(mp5, "\\script\\faction49\\ngami.lua");	
SetNpcScript(mp6, "\\script\\faction49\\thuyyen.lua");	
SetNpcScript(mp7, "\\script\\faction49\\caibang.lua");	
SetNpcScript(mp8, "\\script\\faction49\\vodang.lua");	
SetNpcScript(mp9, "\\script\\faction49\\conlon.lua");	
mp10=AddNpc(181,95,npcmapindex,1618*32,3168*32)
SetNpcScript(mp10, "\\script\\faction49\\thiennhan.lua");	
	
ruong=AddNpc(620,95,npcmapindex,1612*32,3168*32)
SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
xaphu=AddNpc(235,95,npcmapindex,1578*32,3235*32) 
SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
--hotro=AddNpc(675,95,npcmapindex,1628*32,3178*32)
--SetNpcScript(hotro, "\\script\\hotrotanthu.lua");
--longngu=AddNpc(65,95,npcmapindex,1631*32,3181*32)
--SetNpcScript(longngu, "\\script\\nvhoangkim\\longngu.lua");



lequan=AddNpc(216,95,npcmapindex,1618*32,3174*32)
SetNpcScript(lequan, "\\script\\global\\lequan.lua");



tientrang=AddNpc(772,95,npcmapindex,1621*32,3177*32)
SetNpcScript(tientrang, "\\script\\global\\tientrang.lua");
thanbi=AddNpc(967,95,npcmapindex,1624*32,3181*32)
SetNpcScript(thanbi, "\\script\\global\\thanbi.lua");


--cs=AddNpc(666,95,npcmapindex,1622*32,3172*32)
--SetNpcScript(cs, "\\script\\chuyensinh\\npccs.lua");

ktc=AddNpc(244,95,npcmapindex,1625*32,3175*32)
SetNpcScript(ktc, "\\script\\kytrancac.lua");


-- Phuong Tuong
AddNPCEx(203,1,17,200,199, 4,5,"\\script\\cacsukien\\help\\duocdiem.lua",6)	-- Map : Phuong Tuong
AddNPCEx(219,1,17,195,200, 3,3,"\\script\\cacsukien\\help\\taphoatl.lua",6)	-- Map : Phuong Tuong
AddNPCEx(198,1,17,202,199, 1,8,"\\script\\cacsukien\\help\\thoren.lua",6)	-- Map : Phuong Tuong
AddNPCEx(197,1,17,206,200, 3,2,"\\script\\cacsukien\\help\\banngua.lua",6)	-- Map : Phuong Tuong
AddNPCEx(516,1,17,203,203, 8,7,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Phuong Tuong
AddNPCEx(516,1,17,193,201, 3,3,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Phuong Tuong


AddNPCEx(516,1,17,198,198, 5,5,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Phuong Tuong
AddNPCEx(237,1,17,191,202, 3,4,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Phuong Tuong



	phuongtuong = SubWorldID2Idx(17)
	ptr2=AddNpc(516,95,phuongtuong,1660*32,3155*32)
SetNpcScript(ptr2, "\\script\\cacsukien\\help\\ruongchuado.lua");
	ptxp2=AddNpc(237,95,phuongtuong,1648*32,3168*32)
SetNpcScript(ptxp2,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");	
	
		ptxp3=AddNpc(237,95,phuongtuong,1647*32,3273*32)
SetNpcScript(ptxp3, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
	
	
	ptr1=AddNpc(516,95,phuongtuong,1570*32,3118*32)
SetNpcScript(ptr1, "\\script\\cacsukien\\help\\ruongchuado.lua");
	ptxp1=AddNpc(237,95,phuongtuong,1558*32,3108*32)
SetNpcScript(ptxp1,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
--pttk=AddNpc(831,95,phuongtuong,1591*32,3201*32)
--SetNpcScript(pttk, "\\script\\tongkim\\baodanhtongkim.lua");

dqsg=AddNpc(82,95,phuongtuong,1594*32,3212*32)
SetNpcScript(dqsg, "\\script\\cacsukien\\help\\dinhquoc.lua");

pttt=AddNpc(216,95,phuongtuong,1597*32,3207*32)
SetNpcScript(pttt, "\\script\\global\\lequan.lua");
ptntt=AddNpc(173,95,phuongtuong,1600*32,3210*32)
SetNpcScript(ptntt, "\\script\\moilam\\sugiasatthu.lua");
ptva=AddNpc(243,95,phuongtuong,1591*32,3209*32)
SetNpcScript(ptva, "\\script\\vuotai\\sugia2.lua");
nhamon=AddNpc(669,95,phuongtuong,1576*32,3184*32)
SetNpcScript(nhamon, "\\script\\cacsukien\\help\\nhasai.lua");
--hotro=AddNpc(675,95,phuongtuong,1588*32,3198*32)
--SetNpcScript(hotro, "\\script\\hotrotanthu.lua");

tientrang=AddNpc(772,95,phuongtuong,1591*32,3201*32)
SetNpcScript(tientrang, "\\script\\global\\tientrang.lua");

ptktc=AddNpc(244,95,phuongtuong,1594*32,3204*32)
SetNpcScript(ptktc, "\\script\\kytrancac.lua");

--liendau=AddNpc(744,95,phuongtuong,1588*32,3206*32)
--SetNpcScript(liendau, "\\script\\liendau\\sugiald.lua");




khuvucbang=AddNpc(996,95,SubWorldID2Idx(53),1627*32,3184*32)
SetNpcScript(khuvucbang, "\\script\\admin\\banghoi\\banghoi.lua");
SetNpcName(khuvucbang,"Qu¶n lý l·nh ®Þa")





-- Bien Kinh
AddNPCEx(203,1,9,222,193, 3,2,"\\script\\cacsukien\\help\\duocdiem.lua",6)	-- Map : Bien Kinh
AddNPCEx(219,1,9,223,194, 4,0,"\\script\\cacsukien\\help\\taphoatl.lua",6)	-- Map : Bien Kinh
AddNPCEx(198,1,9,214,193, 2,8,"\\script\\cacsukien\\help\\thoren.lua",6)	-- Map : Bien Kinh
AddNPCEx(198,1,9,218,190, 2,7,"\\script\\cacsukien\\help\\thoren.lua",6)	-- Map : Bien Kinh
AddNPCEx(197,1,9,214,189, 2,3,"\\script\\cacsukien\\help\\banngua.lua",6)	-- Map : Bien Kinh
AddNPCEx(516,1,9,201,188, 2,1,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Bien Kinh
AddNPCEx(516,1,9,211,200, 6,4,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Bien Kinh
AddNPCEx(516,1,9,231,185, 4,2,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Bien Kinh
AddNPCEx(516,1,9,215,192, 4,6,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Bien Kinh
AddNPCEx(237,1,9,199,187, 3,3,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Bien Kinh
AddNPCEx(237,1,9,233,182, 3,5,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Bien Kinh
AddNPCEx(237,1,9,204,198, 4,6,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Bien Kinh
AddNPCEx(237,1,9,213,201, 2,3,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Bien Kinh
	
bienkinh = SubWorldID2Idx(9)
pttt=AddNpc(216,95,bienkinh,1747*32,3059*32)
SetNpcScript(pttt, "\\script\\global\\lequan.lua");
ptntt=AddNpc(173,95,bienkinh,1753*32,3053*32)
SetNpcScript(ptntt, "\\script\\moilam\\sugiasatthu.lua");
ptva=AddNpc(243,95,bienkinh,1758*32,3047*32)
SetNpcScript(ptva, "\\script\\vuotai\\sugia3.lua");
bosskylan=AddNpc(random(1281,1285),90,bienkinh,1580*32,3251*32)
SetNpcScript(bosskylan, "\\script\\kinhnghiem\\bosskylan.lua");

--hotro=AddNpc(675,95,bienkinh,1763*32,3074*32)
--SetNpcScript(hotro, "\\script\\hotrotanthu.lua");
--loidai=AddNpc(998,95,bienkinh,1768*32,3069*32)
--SetNpcScript(loidai, "\\script\\loidai\\sugialoidai.lua");

--pttk=AddNpc(831,95,bienkinh,1773*32,3063*32)
--SetNpcScript(pttk, "\\script\\tongkim\\baodanhtongkim.lua");
ptktc=AddNpc(244,95,bienkinh,1750*32,3072*32)
SetNpcScript(ptktc, "\\script\\kytrancac.lua");

nhamon=AddNpc(669,95,bienkinh,1789*32,3034*32)
SetNpcScript(nhamon, "\\script\\cacsukien\\help\\nhasai.lua");

-- Duong Chau
AddNPCEx(203,1,16,221,192, 8,5,"\\script\\cacsukien\\help\\duocdiem.lua",6)	-- Map : Duong Chau
AddNPCEx(219,1,16,212,188, 4,6,"\\script\\cacsukien\\help\\taphoatl.lua",6)	-- Map : Duong Chau
AddNPCEx(198,1,16,211,197, 1,8,"\\script\\cacsukien\\help\\thoren.lua",6)	-- Map : Duong Chau
AddNPCEx(197,1,16,206,198, 2,5,"\\script\\cacsukien\\help\\banngua.lua",6)	-- Map : Duong Chau
AddNPCEx(516,1,16,202,198, 7,6,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Duong Chau
AddNPCEx(516,1,16,209,187, 4,4,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Duong Chau
AddNPCEx(516,1,16,232,189, 7,3,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Duong Chau
AddNPCEx(516,1,16,213,201, 6,9,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Duong Chau
AddNPCEx(237,1,16,198,199, 8,9,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Duong Chau
AddNPCEx(237,1,16,207,186, 4,8,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Duong Chau
AddNPCEx(237,1,16,228,191, 8,2,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Duong Chau
AddNPCEx(237,1,16,215,200, 3,4,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Duong Chau	
	
-- Thanh Do
AddNPCEx(203,1,18,392,320, 3,6,"\\script\\cacsukien\\help\\duocdiem.lua",6)	-- Map : Thanh Do
AddNPCEx(219,1,18,386,321, 6,1,"\\script\\cacsukien\\help\\taphoatl.lua",6)	-- Map : Thanh Do
AddNPCEx(198,1,18,388,319, 4,9,"\\script\\cacsukien\\help\\thoren.lua",6)	-- Map : Thanh Do
AddNPCEx(197,1,18,395,318, 4,4,"\\script\\cacsukien\\help\\banngua.lua",6)	-- Map : Thanh Do
AddNPCEx(516,1,18,381,311, 4,2,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Thanh Do
AddNPCEx(516,1,18,404,314, 7,1,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Thanh Do
AddNPCEx(516,1,18,393,317, 8,3,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Thanh Do
AddNPCEx(516,1,18,397,323, 6,4,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Thanh Do
AddNPCEx(237,1,18,378,310, 3,1,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Thanh Do
AddNPCEx(237,1,18,399,324, 3,4,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Thanh Do
AddNPCEx(237,1,18,376,318, 4,5,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Thanh Do
AddNPCEx(516,1,18,375,319, 2,4,"\\script\\cacsukien\\help\\ruongchuado.lua",6)	-- Map : Thanh Do
	thanhdo = SubWorldID2Idx(18)

tdxaphu=AddNpc(237,95,thanhdo,3266*32,5000*32)
SetNpcScript(tdxaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
nhamon=AddNpc(669,95,thanhdo,3150*32,5050*32)
SetNpcScript(nhamon, "\\script\\cacsukien\\help\\nhasai.lua");
--tdhotro=AddNpc(675,95,thanhdo,3136*32,5053*32)
--SetNpcScript(tdhotro, "\\script\\hotrotanthu.lua");
--tdtk=AddNpc(831,95,thanhdo,3139*32,5056*32)
--SetNpcScript(tdtk, "\\script\\tongkim\\baodanhtongkim.lua");
tcktc=AddNpc(244,95,thanhdo,3142*32,5059*32)
SetNpcScript(tcktc, "\\script\\kytrancac.lua");
tdtt=AddNpc(216,95,thanhdo,3145*32,5062*32)
SetNpcScript(tdtt, "\\script\\global\\lequan.lua");
tdntt=AddNpc(173,95,thanhdo,3148*32,5065*32)
SetNpcScript(tdntt, "\\script\\moilam\\sugiasatthu.lua");
tdva=AddNpc(243,95,thanhdo,3151*32,5068*32)
SetNpcScript(tdva, "\\script\\vuotai\\sugia1.lua");

--loidai=AddNpc(99,985,thanhdo,3133*32,5050*32)
--SetNpcScript(loidai, "\\script\\loidai\\sugialoidai.lua");



-- TUONG DUONG

AddNPCEx(219,1,15,202,203, 3,1,"\\script\\cacsukien\\help\\taphoatl.lua",6)	-- Map : Tap Hoa
AddNPCEx(198,1,15,193,201, 8,1,"\\script\\cacsukien\\help\\thoren.lua",6)	-- Map : Tho Ren
AddNPCEx(197,1,15,195,199, 7,8,"\\script\\cacsukien\\help\\banngua.lua",6)	-- Map : Ban Ngua


AddNPCEx(237,1,15,179,201, 4,2,"\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua",6)	-- Map : Tuong Duong

tuongduong = SubWorldID2Idx(15)

xptd2=AddNpc(237,95,tuongduong,1509*32,3140*32)
SetNpcScript(xptd2, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
ddtd=AddNpc(203,95,tuongduong,1631*32,3262*32)
SetNpcScript(ddtd, "\\script\\cacsukien\\help\\duocdiem.lua");
xptd1=AddNpc(237,95,tuongduong,1697*32,3229*32)
SetNpcScript(xptd1, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
rtd1=AddNpc(516,95,tuongduong,1687*32,3235*32)
SetNpcScript(rtd1, "\\script\\cacsukien\\help\\ruongchuado.lua");
rtd3=AddNpc(516,95,tuongduong,1480*32,3166*32)
SetNpcScript(rtd3, "\\script\\cacsukien\\help\\ruongchuado.lua");
rtd2=AddNpc(516,95,tuongduong,1448*32,3264*32)
SetNpcScript(rtd2, "\\script\\cacsukien\\help\\ruongchuado.lua");
rtd5=AddNpc(516,95,tuongduong,1566*32,201*16*32)
SetNpcScript(rtd5, "\\script\\cacsukien\\help\\ruongchuado.lua");

rtd4=AddNpc(516,95,tuongduong,1573*32,3344*32)
SetNpcScript(rtd4, "\\script\\cacsukien\\help\\ruongchuado.lua");
xptd4=AddNpc(237,95,tuongduong,1589*32,3370*32)
SetNpcScript(xptd4, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");

--loidai=AddNpc(998,95,tuongduong,1581*32,3221*32)
--SetNpcScript(loidai, "\\script\\loidai\\sugialoidai.lua");


--absg=AddNpc(81,95,tuongduong,1584*32,3224*32)
--SetNpcScript(absg, "\\script\\cacsukien\\help\\anbang.lua");


--tongkimmobinhtd=AddNpc(831,95,tuongduong,1584*32,3215*32)
--SetNpcScript(tongkimmobinhtd, "\\script\\tongkim\\baodanhtongkim.lua");

tientrangtd=AddNpc(216,95,tuongduong,1590*32,3221*32)
SetNpcScript(tientrangtd, "\\script\\global\\lequan.lua");
ntttd=AddNpc(173,95,tuongduong,1593*32,3224*32)
SetNpcScript(ntttd, "\\script\\moilam\\sugiasatthu.lua");
ntva=AddNpc(243,95,tuongduong,1581*32,3213*32)
SetNpcScript(ntva, "\\script\\vuotai\\sugia.lua");


nhamon=AddNpc(669,95,tuongduong,1598*32,3208*32)
SetNpcScript(nhamon, "\\script\\cacsukien\\help\\nhasai.lua");

--hotro=AddNpc(675,95,tuongduong,1581*32,3213*32)
--SetNpcScript(hotro, "\\script\\hotrotanthu.lua");

tientrang=AddNpc(772,95,tuongduong,1584*32,3216*32)
SetNpcScript(tientrang, "\\script\\global\\tientrang.lua");
ktctd=AddNpc(244,95,tuongduong,1587*32,3218*32)
SetNpcScript(ktctd, "\\script\\kytrancac.lua");


--loidai=AddNpc(744,95,tuongduong,1581*32,3221*32)
--SetNpcScript(loidai, "\\script\\liendau\\sugiald.lua");

banghoi=AddNpc(183,95,SubWorldID2Idx(53),1628*32,3178*32)
SetNpcScript(banghoi, "\\script\\congthanh\\npcbanghoi.lua");

vansuthong=AddNpc(1000,95,SubWorldID2Idx(53),1630*32,3187*32)
SetNpcScript(vansuthong, "\\script\\global\\vansuthong.lua");

nhadich=AddNpc(671,95,SubWorldID2Idx(17),1580*32,3179*32)
SetNpcScript(nhadich, "\\script\\admin\\banghoi\\banghoi.lua");
banghoi = AddNpc(775,95,SubWorldID2Idx(17),1585*32,3203*32)
SetNpcScript(banghoi, "\\script\\congthanh\\npccongthanh.lua");

--loidai = AddNpc(998,95,SubWorldID2Idx(17),1588*32,3206*32)
--SetNpcScript(loidai, "\\script\\loidai\\sugialoidai.lua");

nhadich=AddNpc(671,95,SubWorldID2Idx(18),3144*32,5052*32)
SetNpcScript(nhadich, "\\script\\admin\\banghoi\\banghoi.lua");
banghoi = AddNpc(775,95,SubWorldID2Idx(18),3149*32,5056*32)
SetNpcScript(banghoi, "\\script\\congthanh\\npccongthanh.lua");

nhadich=AddNpc(671,95,SubWorldID2Idx(15),1590*32,3210*32)
SetNpcScript(nhadich, "\\script\\admin\\banghoi\\banghoi.lua");
banghoi = AddNpc(775,95,SubWorldID2Idx(15),1598*32,3218*32)
SetNpcScript(banghoi, "\\script\\congthanh\\npccongthanh.lua");

nhadich=AddNpc(671,95,SubWorldID2Idx(9),1782*32,3038*32)
SetNpcScript(nhadich, "\\script\\admin\\banghoi\\banghoi.lua");
banghoi = AddNpc(775,95,SubWorldID2Idx(9),1785*32,3043*32)
SetNpcScript(banghoi, "\\script\\congthanh\\npccongthanh.lua");

npcmapindex = SubWorldID2Idx(3)
xaphu=AddNpc(235,95,npcmapindex,1676*32,3108*32)
SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
xaphu=AddNpc(235,95,npcmapindex,1615*32,3097*32)
SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
xaphu=AddNpc(235,95,npcmapindex,1600*32,3173*32)
SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");
xaphu=AddNpc(235,95,npcmapindex,1716*32,3215*32)
SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");

ruong=AddNpc(620,95,npcmapindex,1702*32,3194*32)
SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
ruong=AddNpc(620,95,npcmapindex,1636*32,3203*32)
SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
ruong=AddNpc(620,95,npcmapindex,1702*32,3194*32)
SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");

taphoatl=AddNpc(219,95,npcmapindex,1641*32,3129*32)
SetNpcScript(taphoatl, "\\script\\cacsukien\\help\\taphoatl.lua");
thoren=AddNpc(198,95,npcmapindex,1662*32,3151*32)
SetNpcScript(thoren, "\\script\\cacsukien\\help\\thoren.lua");
duocdiem=AddNpc(203,95,npcmapindex,1659*32,3123*32)
SetNpcScript(duocdiem, "\\script\\cacsukien\\help\\duocdiem.lua");



mp7=AddNpc(174,95,npcmapindex,1602*32,3114*32)
mp8=AddNpc(188,95,npcmapindex,1605*32,3117*32)
mp9=AddNpc(528,95,npcmapindex,1608*32,3120*32)
mp1=AddNpc(189,95,npcmapindex,1611*32,3123*32)
mp2=AddNpc(184,95,npcmapindex,1614*32,3126*32)
mp3=AddNpc(186,95,npcmapindex,1617*32,3129*32)
mp4=AddNpc(177,95,npcmapindex,1620*32,3132*32)
mp5=AddNpc(527,95,npcmapindex,1623*32,3135*32)
mp6=AddNpc(171,95,npcmapindex,1626*32,3138*32)
SetNpcScript(mp1, "\\script\\faction49\\thieulam.lua");
SetNpcScript(mp2, "\\script\\faction49\\thienvuong.lua");	
SetNpcScript(mp3, "\\script\\faction49\\ngudoc.lua");	
SetNpcScript(mp4, "\\script\\faction49\\duongmon.lua");	
SetNpcScript(mp5, "\\script\\faction49\\ngami.lua");	
SetNpcScript(mp6, "\\script\\faction49\\thuyyen.lua");	
SetNpcScript(mp7, "\\script\\faction49\\caibang.lua");	
SetNpcScript(mp8, "\\script\\faction49\\vodang.lua");	
SetNpcScript(mp9, "\\script\\faction49\\conlon.lua");	
mp10=AddNpc(181,95,npcmapindex,1599*32,3111*32)
SetNpcScript(mp10, "\\script\\faction49\\thiennhan.lua");

hotro=AddNpc(675,95,npcmapindex,1617*32,3171*32)
SetNpcScript(hotro, "\\script\\hotrotanthu.lua");
ktc=AddNpc(244,95,npcmapindex,1633*32,3150*32)
SetNpcScript(ktc, "\\script\\kytrancac.lua");

--lequan=AddNpc(665,95,npcmapindex,1642*32,3161*32)
--SetNpcScript(lequan, "\\script\\datau\\npcdatau.lua");

--cs=AddNpc(666,95,npcmapindex,1627*32,3181*32)
--SetNpcScript(cs, "\\script\\chuyensinh\\npccs.lua");
--banghoi=AddNpc(183,95,SubWorldID2Idx(3),1604*32,3166*32)
--SetNpcScript(banghoi, "\\script\\congthanh\\npcbanghoi.lua");
--liendau=AddNpc(744,95,SubWorldID2Idx(3),1615*32,3196*32)
--SetNpcScript(liendau, "\\script\\liendau\\sugiald.lua");

npcmapindex = SubWorldID2Idx(66)
xaphu=AddNpc(235,95,npcmapindex,3458*32,6111*32)
SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");

ruong=AddNpc(620,95,npcmapindex,3449*32,6172*32)
SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
ruong=AddNpc(620,95,npcmapindex,3393*32,6275*32)
SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
ruong=AddNpc(620,95,npcmapindex,3550*32,6218*32)
SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");

taphoatl=AddNpc(219,95,npcmapindex,3372*32,6253*32)
SetNpcScript(taphoatl, "\\script\\cacsukien\\help\\taphoatl.lua");
thoren=AddNpc(198,95,npcmapindex,3440*32,6221*32)
SetNpcScript(thoren, "\\script\\cacsukien\\help\\thoren.lua");
duocdiem=AddNpc(203,95,npcmapindex,3464*32,6167*32)
SetNpcScript(duocdiem, "\\script\\cacsukien\\help\\duocdiem.lua");

--nguyetlao=AddNpc(999,95,npcmapindex,3524*32,6117*32)
--SetNpcScript(nguyetlao, "\\script\\kethon\\nguyetlao.lua");
mp7=AddNpc(174,95,npcmapindex,3552*32,6232*32)
mp8=AddNpc(188,95,npcmapindex,3548*32,6228*32)
mp9=AddNpc(528,95,npcmapindex,3540*32,6219*32)
mp1=AddNpc(189,95,npcmapindex,3543*32,6222*32)
mp2=AddNpc(184,95,npcmapindex,3558*32,6226*32)
mp3=AddNpc(186,95,npcmapindex,3568*32,6214*32)
mp4=AddNpc(177,95,npcmapindex,3573*32,6210*32)
mp5=AddNpc(527,95,npcmapindex,3569*32,6206*32)
mp6=AddNpc(171,95,npcmapindex,3564*32,6200*32)
SetNpcScript(mp1, "\\script\\faction49\\thieulam.lua");
SetNpcScript(mp2, "\\script\\faction49\\thienvuong.lua");	
SetNpcScript(mp3, "\\script\\faction49\\ngudoc.lua");	
SetNpcScript(mp4, "\\script\\faction49\\duongmon.lua");	
SetNpcScript(mp5, "\\script\\faction49\\ngami.lua");	
SetNpcScript(mp6, "\\script\\faction49\\thuyyen.lua");	
SetNpcScript(mp7, "\\script\\faction49\\caibang.lua");	
SetNpcScript(mp8, "\\script\\faction49\\vodang.lua");	
SetNpcScript(mp9, "\\script\\faction49\\conlon.lua");	
mp10=AddNpc(181,95,npcmapindex,3561*32,6197*32)
SetNpcScript(mp10, "\\script\\faction49\\thiennhan.lua");

hotro=AddNpc(675,95,npcmapindex,3545*32,6192*32)
SetNpcScript(hotro, "\\script\\hotrotanthu.lua");

banngua=AddNpc(197,95,npcmapindex,3511*32,6157*32)
SetNpcScript(banngua, "\\script\\cacsukien\\help\\banngua.lua");

for i=-5,5 do
AddTrap(66,(3594-i)*32,(6232+i)*32,"\\script\\trap\\giangtan\\3584.lua")
AddTrap(66,(3594-i+1)*32,(6232+i)*32,"\\script\\trap\\giangtan\\3584.lua")
end
for i=-10,10 do
AddTrap(66,(3433-i)*32,(6087+i)*32,"\\script\\trap\\giangtan\\12452054.lua")
AddTrap(66,(3433-i+1)*32,(6087+i)*32,"\\script\\trap\\giangtan\\12452054.lua")
end

for i=-5,5 do
AddTrap(66,(3408-i)*32,(6264+i)*32,"\\script\\trap\\giangtan\\12779733.lua")
AddTrap(66,(3408-i+1)*32,(6264+i)*32,"\\script\\trap\\giangtan\\12779733.lua")
end

for i=-5,5 do
AddTrap(66,(3447-i)*32,(6240+i)*32,"\\script\\trap\\giangtan\\12779735.lua")
AddTrap(66,(3447-i+1)*32,(6240+i)*32,"\\script\\trap\\giangtan\\12779735.lua")
end

for i=-5,5 do
AddTrap(66,(3488+i)*32,(6247+i)*32,"\\script\\trap\\giangtan\\12779737.lua")
AddTrap(66,(3488+i+1)*32,(6247+i)*32,"\\script\\trap\\giangtan\\12779737.lua")
end

for i=-5,5 do
AddTrap(24,(1388+i)*32,(2765-i)*32,"\\script\\trap\\visondao\\1388.lua")
AddTrap(24,(1388+i+1)*32,(2765-i)*32,"\\script\\trap\\visondao\\1388.lua")
end

for i=-5,5 do
AddTrap(24,(1419+i)*32,(2759+i)*32,"\\script\\trap\\visondao\\1488.lua")
AddTrap(24,(1419+i+1)*32,(2759+i)*32,"\\script\\trap\\visondao\\1488.lua")
end

for i=-5,5 do
AddTrap(4,(1561+i)*32,(3270+i)*32,"\\script\\trap\\longtuyen\\1561.lua")
AddTrap(4,(1561+i+1)*32,(3270+i)*32,"\\script\\trap\\longtuyen\\1561.lua")
end
--  1565  3267  1555 3278
for i=-5,5 do
AddTrap(4,(1662+i)*32,(3196+i)*32,"\\script\\trap\\longtuyen\\1662.lua")
AddTrap(4,(1662+i+1)*32,(3196+i)*32,"\\script\\trap\\longtuyen\\1662.lua")
end
-- 1657 3200  1667 3188
for i=-5,5 do
AddTrap(4,(1663-i)*32,(3318+i)*32,"\\script\\trap\\longtuyen\\1663.lua")
AddTrap(4,(1663-i+1)*32,(3318+i)*32,"\\script\\trap\\longtuyen\\1663.lua")
end
-- 1659 3313 1667 3325
for i=-5,5 do
AddTrap(4,(1565-i)*32,(3175+i)*32,"\\script\\trap\\longtuyen\\1565.lua")
AddTrap(4,(1565-i+1)*32,(3175+i)*32,"\\script\\trap\\longtuyen\\1565.lua")
end
-- 1569 3179 1559 3171






-- LONG TUYEN THON
npcmapindex = SubWorldID2Idx(4)
xaphu=AddNpc(235,95,npcmapindex,1636*32,3197*32)
SetNpcScript(xaphu, "\\script\\Á½ºþÇø\\°ÍÁêÏØ\\npc\\xaphu.lua");


ruong=AddNpc(620,95,npcmapindex,1616*32,3193*32)
SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
taphoatl=AddNpc(219,95,npcmapindex,1566*32,3203*32)
SetNpcScript(taphoatl, "\\script\\cacsukien\\help\\taphoatl.lua");
thoren=AddNpc(198,95,npcmapindex,1605*32,3252*32)
SetNpcScript(thoren, "\\script\\cacsukien\\help\\thoren.lua");
duocdiem=AddNpc(203,95,npcmapindex,1573*32,3255*32)
SetNpcScript(duocdiem, "\\script\\cacsukien\\help\\duocdiem.lua");



mp7=AddNpc(174,95,npcmapindex,1609*32,3206*32)
mp8=AddNpc(188,95,npcmapindex,1625*32,3199*32)
mp9=AddNpc(528,95,npcmapindex,1629*32,3203*32)
mp1=AddNpc(189,95,npcmapindex,1626*32,3214*32)
mp2=AddNpc(184,95,npcmapindex,1622*32,3202*32)
mp3=AddNpc(186,95,npcmapindex,1626*32,3206*32)
mp4=AddNpc(177,95,npcmapindex,1633*32,3207*32)
mp5=AddNpc(527,95,npcmapindex,1630*32,3210*32)
mp6=AddNpc(171,95,npcmapindex,1622*32,3210*32)
SetNpcScript(mp1, "\\script\\faction49\\thieulam.lua");
SetNpcScript(mp2, "\\script\\faction49\\thienvuong.lua");	
SetNpcScript(mp3, "\\script\\faction49\\ngudoc.lua");	
SetNpcScript(mp4, "\\script\\faction49\\duongmon.lua");	
SetNpcScript(mp5, "\\script\\faction49\\ngami.lua");	
SetNpcScript(mp6, "\\script\\faction49\\thuyyen.lua");	
SetNpcScript(mp7, "\\script\\faction49\\caibang.lua");	
SetNpcScript(mp8, "\\script\\faction49\\vodang.lua");	
SetNpcScript(mp9, "\\script\\faction49\\conlon.lua");	
mp10=AddNpc(181,95,npcmapindex,1613*32,3202*32)
SetNpcScript(mp10, "\\script\\faction49\\thiennhan.lua");


hotro=AddNpc(675,95,npcmapindex,1602*32,3207*32)
SetNpcScript(hotro, "\\script\\hotrotanthu.lua");
banngua=AddNpc(197,95,npcmapindex,1593*32,3252*32)
SetNpcScript(banngua, "\\script\\cacsukien\\help\\banngua.lua");
thanbi=AddNpc(967,95,npcmapindex,1585*32,3267*32)
SetNpcScript(thanbi, "\\script\\global\\thanbi.lua");






-- KHU VUC BANG HOI
idxquanlykhuvuc = 235



min = 116
max = 134
for i=min,max do
	khuvucbang=AddNpc(996,95,SubWorldID2Idx(i),1670*32,3239*32)
	SetNpcScript(khuvucbang, "\\script\\admin\\banghoi\\banghoi.lua");
	SetNpcName(khuvucbang,"Qu¶n lý l·nh ®Þa")

	taphoatl=AddNpc(219,95,SubWorldID2Idx(i),1636*32,3274*32)
	SetNpcScript(taphoatl, "\\script\\khuvucbang\\taphoatl.lua");	
	SetNpcName(taphoatl,"T? H? L?h ?a")

	thoren=AddNpc(198,95,SubWorldID2Idx(i),1630*32,3279*32)
	SetNpcScript(thoren, "\\script\\khuvucbang\\thoren.lua");
	SetNpcName(thoren,"Th?R? L?h ?a")

	xaphu=AddNpc(235,95,SubWorldID2Idx(i),1725*32,3315*32)
	SetNpcScript(xaphu, "\\script\\khuvucbang\\xaphu.lua");
	SetNpcName(xaphu,"Xa Phu L?h ?a")

	khuvucbang=AddNpc(997,95,SubWorldID2Idx(i),1608*32,3201*32)
	SetNpcScript(khuvucbang, "\\script\\khuvucbang\\quanlythidau.lua");
	SetNpcName(khuvucbang,"Qu? L?Thi ?u")

	ruong=AddNpc(620,95,SubWorldID2Idx(i),1678*32,3231*32)
	SetNpcScript(ruong, "\\script\\cacsukien\\help\\ruongchuado.lua");
	
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1520*32,3159*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1522*32,3190*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1532*32,3205*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1552*32,3198*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1553*32,3168*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1568*32,3171*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1533*32,3178*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1542*32,3190*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1546*32,3174*32)
	AddNpc(random(993,995),95,SubWorldID2Idx(i),1560*32,3182*32)


	-- 1520,3159
	-- 1522, 3190
	-- 1532,3205
	-- 1552,3198
	-- 1553,3168
	-- 1568,3171

for k=-5,5 do
AddTrap(i,(1589+k)*32,(3225+k)*32,"\\script\\khuvucbang\\trapchan1.lua")
AddTrap(i,(1589+k+1)*32,(3225+k)*32,"\\script\\khuvucbang\\trapchan1.lua")
end
for k=-5,5 do
AddTrap(i,(1631+k)*32,(3183+k)*32,"\\script\\khuvucbang\\trapchan2.lua")
AddTrap(i,(1631+k+1)*32,(3183+k)*32,"\\script\\khuvucbang\\trapchan2.lua")
end

for k=-5,5 do
AddTrap(i,(1576+k)*32,(3238+k)*32,"\\script\\khuvucbang\\trapra1.lua")
AddTrap(i,(1576+k+1)*32,(3238+k)*32,"\\script\\khuvucbang\\trapra1.lua")
end
for k=-5,5 do
AddTrap(i,(1589+k)*32,(3182-k)*32,"\\script\\khuvucbang\\trapravo.lua")
AddTrap(i,(1589+k+1)*32,(3182-k)*32,"\\script\\khuvucbang\\trapravo.lua")
end


for k=-5,5 do
AddTrap(i,(1642+k)*32,(3171+k)*32,"\\script\\khuvucbang\\trapra2.lua")
AddTrap(i,(1642+k+1)*32,(3171+k)*32,"\\script\\khuvucbang\\trapra2.lua")
end


end


end;

