function addquaitongkim()

baodanh1 = SubWorldID2Idx(60)

kimmobinh=AddNpc(834,95,baodanh1,1554*32,3083*32)
SetNpcScript(kimmobinh, "\\script\\hoatdong\\tongkim\\baodanhtongkim.lua");
SetNpcName(kimmobinh,"Kim Mé Binh")
kimnhuquan=AddNpc(836,95,baodanh1,1580*32,3074*32)
SetNpcScript(kimnhuquan, "\\script\\hoatdong\\tongkim\\quanluong.lua");
xaphu=AddNpc(237,95,baodanh1,1568*32,3074*32)
SetNpcScript(xaphu, "\\script\\hoatdong\\tongkim\\kim\\xaphu.lua");
ruongchuatong=AddNpc(837,95,baodanh1,1593*32,3102*32)
SetNpcScript(ruongchuatong, "\\script\\npcchucnang\\ruongchuado.lua");


for j=-5,5 do
AddTrap(3,(1405-j)*32,(3497-j)*32,"\\script\\hoatdong\\tongkim\\trap\\vaobdkim.lua")
AddTrap(3,(1405-j+1)*32,(3497-j)*32,"\\script\\hoatdong\\tongkim\\trap\\vaobdkim.lua")
end

for j=-5,5 do
AddTrap(60,(1598-j)*32,(3068-j)*32,"\\script\\hoatdong\\tongkim\\trap\\rabdkim.lua")
AddTrap(60,(1598-j+1)*32,(3068-j)*32,"\\script\\hoatdong\\tongkim\\trap\\rabdkim.lua")
end

for j=-5,5 do
AddTrap(60,(1523-j)*32,(3202-j)*32,"\\script\\hoatdong\\tongkim\\trap\\rabdtong.lua")
AddTrap(60,(1523-j+1)*32,(3202-j)*32,"\\script\\hoatdong\\tongkim\\trap\\rabdtong.lua")
end
for j=-5,5 do
AddTrap(15,(1774-j)*32,(3088-j)*32,"\\script\\hoatdong\\tongkim\\trap\\vaobdtong.lua")
AddTrap(15,(1774-j+1)*32,(3088-j)*32,"\\script\\hoatdong\\tongkim\\trap\\vaobdtong.lua")
end



tongmobinh=AddNpc(833,95,baodanh1,1549*32,3175*32)
SetNpcScript(tongmobinh, "\\script\\hoatdong\\tongkim\\baodanhtongkim.lua");
SetNpcName(tongmobinh,"Tèng Mé Binh")
tongnhuquan=AddNpc(835,95,baodanh1,1545*32,3159*32)
SetNpcScript(tongnhuquan, "\\script\\hoatdong\\tongkim\\quanluong.lua");
xaphu=AddNpc(237,95,baodanh1,1536*32,3154*32)
SetNpcScript(xaphu, "\\script\\hoatdong\\tongkim\\tong\\xaphu.lua");
ruongchuatong=AddNpc(837,95,baodanh1,1563*32,3197*32)
SetNpcScript(ruongchuatong, "\\script\\npcchucnang\\ruongchuado.lua");

addnguyensoai()
AddCuuSat()
AddBoss()
end;
function AddBoss()


-- Tong Kim Cuu Sat
tongkim = SubWorldID2Idx(37)
tongquany=AddNpc(203,95,tongkim,1693*32,3061*32)
SetNpcScript(tongquany, "\\script\\hoatdong\\tongkim\\duocdiem.lua");
kimquany=AddNpc(203,95,tongkim,1236*32,3545*32)
SetNpcScript(kimquany, "\\script\\hoatdong\\tongkim\\duocdiem.lua");
ruongchuatong=AddNpc(837,95,tongkim,1717*32,3089*32)
SetNpcScript(ruongchuatong, "\\script\\npcchucnang\\ruongchuado.lua");
ruongchuakim=AddNpc(838,95,tongkim,1223*32,3573*32)
SetNpcScript(ruongchuakim, "\\script\\npcchucnang\\ruongchuado.lua");

tongtrinhsat=AddNpc(833,95,tongkim,1257*32,3539*32)
SetNpcScript(tongtrinhsat, "\\script\\hoatdong\\tongkim\\boss2\\trinhsat.lua");
SetNpcName(tongtrinhsat, "Trinh S¸t");

kimtrinhsat=AddNpc(833,95,tongkim,1664*32,3087*32)
SetNpcScript(kimtrinhsat, "\\script\\hoatdong\\tongkim\\boss2\\trinhsat.lua");
SetNpcName(kimtrinhsat, "Trinh S¸t");

-- TRAP BEN KIM CUU SAT
for j=-5,5 do
AddTrap(37,(1664-j)*32,(3102-j)*32,"\\script\\hoatdong\\tongkim\\boss2\\kim\\cuarabenkim.lua")
AddTrap(37,(1664-j+1)*32,(3102-j)*32,"\\script\\hoatdong\\tongkim\\boss2\\kim\\cuarabenkim.lua")
end
for j=-5,5 do
AddTrap(37,(1595-j)*32,(3166-j)*32,"\\script\\hoatdong\\tongkim\\boss2\\kim\\cuavaobenkim.lua")
AddTrap(37,(1595-j+1)*32,(3166-j)*32,"\\script\\hoatdong\\tongkim\\boss2\\kim\\cuavaobenkim.lua")
end

for j=-5,5 do
AddTrap(37,(1542-j)*32,(3165+j)*32,"\\script\\hoatdong\\tongkim\\boss2\\kim\\trap1.lua") -- 1544 3168
AddTrap(37,(1542-j+1)*32,(3165+j)*32,"\\script\\hoatdong\\tongkim\\boss2\\kim\\trap1.lua")
end
for j=-5,5 do
AddTrap(37,(1530-j)*32,(3245-j)*32,"\\script\\hoatdong\\tongkim\\boss2\\kim\\trap2.lua") -- 1531 3242
AddTrap(37,(1530-j+1)*32,(3245-j)*32,"\\script\\hoatdong\\tongkim\\boss2\\kim\\trap2.lua")
end
for j=-5,5 do
AddTrap(37,(1609-j)*32,(3229+j)*32,"\\script\\hoatdong\\tongkim\\boss2\\kim\\trap3.lua") -- 1607 3226
AddTrap(37,(1609-j+1)*32,(3229+j)*32,"\\script\\hoatdong\\tongkim\\boss2\\kim\\trap3.lua")
end

-- TRAP BEN TONG CUU SAT
for j=-5,5 do
AddTrap(37,(1255-j)*32,(3532-j)*32,"\\script\\hoatdong\\tongkim\\boss2\\tong\\cuarabentong.lua")
AddTrap(37,(1255-j+1)*32,(3532-j)*32,"\\script\\hoatdong\\tongkim\\boss2\\tong\\cuarabentong.lua")
end
for j=-5,5 do
AddTrap(37,(1293-j)*32,(3484-j)*32,"\\script\\hoatdong\\tongkim\\boss2\\tong\\cuavaobentong.lua")
AddTrap(37,(1293-j+1)*32,(3484-j)*32,"\\script\\hoatdong\\tongkim\\boss2\\tong\\cuavaobentong.lua")
end
for j=-5,5 do
AddTrap(37,(1303-j)*32,(3416+j)*32,"\\script\\hoatdong\\tongkim\\boss2\\tong\\trap1.lua")
AddTrap(37,(1303-j+1)*32,(3416+j)*32,"\\script\\hoatdong\\tongkim\\boss2\\tong\\trap1.lua")
end
for j=-5,5 do
AddTrap(37,(1360-j)*32,(3408-j)*32,"\\script\\hoatdong\\tongkim\\boss2\\tong\\trap2.lua")
AddTrap(37,(1360-j+1)*32,(3408-j)*32,"\\script\\hoatdong\\tongkim\\boss2\\tong\\trap2.lua")
end
for j=-5,5 do
AddTrap(37,(1347-j)*32,(3479+j)*32,"\\script\\hoatdong\\tongkim\\boss2\\tong\\trap3.lua")
AddTrap(37,(1347-j+1)*32,(3479+j)*32,"\\script\\hoatdong\\tongkim\\boss2\\tong\\trap3.lua")
end


for i=1,getn(TongBinh) do
	if TongBinh[i][4] == 1 then
		idx = AddNpc(random(839,843),95,SubWorldID2Idx(TongBinh[i][1]),TongBinh[i][2]*32,TongBinh[i][3]*32)
		SetNpcScript(idx, "\\script\\hoatdong\\tongkim\\boss2\\tong\\quai_binhsi.lua");
	elseif TongBinh[i][4] == 2 then
		idx = AddNpc(random(849,853),95,SubWorldID2Idx(TongBinh[i][1]),TongBinh[i][2]*32,TongBinh[i][3]*32)
		SetNpcScript(idx, "\\script\\hoatdong\\tongkim\\boss2\\tong\\quai_hieuuy.lua");
	elseif TongBinh[i][4] == 3 then
		idx = AddNpc(random(859,863),95,SubWorldID2Idx(TongBinh[i][1]),TongBinh[i][2]*32,TongBinh[i][3]*32)
		SetNpcScript(idx, "\\script\\hoatdong\\tongkim\\boss2\\tong\\quai_thonglinh.lua");
	elseif TongBinh[i][4] == 4 then
		idx = AddNpc(random(869,873),95,SubWorldID2Idx(TongBinh[i][1]),TongBinh[i][2]*32,TongBinh[i][3]*32)
		SetNpcScript(idx, "\\script\\hoatdong\\tongkim\\boss2\\tong\\quai_photuong.lua");
	elseif TongBinh[i][4] == 5 then
		idx = AddNpc(random(879,883),95,SubWorldID2Idx(TongBinh[i][1]),TongBinh[i][2]*32,TongBinh[i][3]*32)
		SetNpcScript(idx, "\\script\\hoatdong\\tongkim\\boss2\\tong\\quai_daituong.lua");
	end
end
for i=1,getn(KimBinh) do
if KimBinh[i][4] == 1 then
		idx = AddNpc(random(844,848),95,SubWorldID2Idx(KimBinh[i][1]),KimBinh[i][2]*32,KimBinh[i][3]*32)
		SetNpcScript(idx, "\\script\\hoatdong\\tongkim\\boss2\\kim\\quai_binhsi.lua");
	elseif KimBinh[i][4] == 2 then
		idx = AddNpc(random(854,858),95,SubWorldID2Idx(KimBinh[i][1]),KimBinh[i][2]*32,KimBinh[i][3]*32)
		SetNpcScript(idx, "\\script\\hoatdong\\tongkim\\boss2\\kim\\quai_hieuuy.lua");
	elseif KimBinh[i][4] == 3 then
		idx = AddNpc(random(864,868),95,SubWorldID2Idx(KimBinh[i][1]),KimBinh[i][2]*32,KimBinh[i][3]*32)
		SetNpcScript(idx, "\\script\\hoatdong\\tongkim\\boss2\\kim\\quai_thonglinh.lua");
	elseif KimBinh[i][4] == 4 then
		idx = AddNpc(random(874,878),95,SubWorldID2Idx(KimBinh[i][1]),KimBinh[i][2]*32,KimBinh[i][3]*32)
		SetNpcScript(idx, "\\script\\hoatdong\\tongkim\\boss2\\kim\\quai_photuong.lua");
	elseif KimBinh[i][4] == 5 then
		idx = AddNpc(random(884,888),95,SubWorldID2Idx(KimBinh[i][1]),KimBinh[i][2]*32,KimBinh[i][3]*32)
		SetNpcScript(idx, "\\script\\hoatdong\\tongkim\\boss2\\kim\\quai_daituong.lua");
	end
end

end
function AddCuuSat()


-- Tong Kim Cuu Sat
tongkim = SubWorldID2Idx(33)
tongquany=AddNpc(203,95,tongkim,1693*32,3061*32)
SetNpcScript(tongquany, "\\script\\hoatdong\\tongkim\\duocdiem.lua");
kimquany=AddNpc(203,95,tongkim,1236*32,3545*32)
SetNpcScript(kimquany, "\\script\\hoatdong\\tongkim\\duocdiem.lua");
ruongchuatong=AddNpc(837,95,tongkim,1717*32,3089*32)
SetNpcScript(ruongchuatong, "\\script\\npcchucnang\\ruongchuado.lua");
ruongchuakim=AddNpc(838,95,tongkim,1223*32,3573*32)
SetNpcScript(ruongchuakim, "\\script\\npcchucnang\\ruongchuado.lua");

tongtrinhsat=AddNpc(833,95,tongkim,1257*32,3539*32)
SetNpcScript(tongtrinhsat, "\\script\\hoatdong\\tongkim\\trinhsat.lua");
SetNpcName(tongtrinhsat, "Trinh S¸t");

kimtrinhsat=AddNpc(833,95,tongkim,1664*32,3087*32)
SetNpcScript(kimtrinhsat, "\\script\\hoatdong\\tongkim\\trinhsat.lua");
SetNpcName(kimtrinhsat, "Trinh S¸t");

-- TRAP BEN KIM CUU SAT
for j=-5,5 do
AddTrap(33,(1664-j)*32,(3102-j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\kim\\cuarabenkim.lua")
AddTrap(33,(1664-j+1)*32,(3102-j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\kim\\cuarabenkim.lua")
end
for j=-5,5 do
AddTrap(33,(1595-j)*32,(3166-j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\kim\\cuavaobenkim.lua")
AddTrap(33,(1595-j+1)*32,(3166-j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\kim\\cuavaobenkim.lua")
end

for j=-5,5 do
AddTrap(33,(1542-j)*32,(3165+j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\kim\\trap1.lua") -- 1544 3168
AddTrap(33,(1542-j+1)*32,(3165+j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\kim\\trap1.lua")
end
for j=-5,5 do
AddTrap(33,(1530-j)*32,(3245-j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\kim\\trap2.lua") -- 1531 3242
AddTrap(33,(1530-j+1)*32,(3245-j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\kim\\trap2.lua")
end
for j=-5,5 do
AddTrap(33,(1609-j)*32,(3229+j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\kim\\trap3.lua") -- 1607 3226
AddTrap(33,(1609-j+1)*32,(3229+j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\kim\\trap3.lua")
end

-- TRAP BEN TONG CUU SAT
for j=-5,5 do
AddTrap(33,(1255-j)*32,(3532-j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\tong\\cuarabentong.lua")
AddTrap(33,(1255-j+1)*32,(3532-j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\tong\\cuarabentong.lua")
end
for j=-5,5 do
AddTrap(33,(1293-j)*32,(3484-j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\tong\\cuavaobentong.lua")
AddTrap(33,(1293-j+1)*32,(3484-j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\tong\\cuavaobentong.lua")
end
for j=-5,5 do
AddTrap(33,(1303-j)*32,(3416+j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\tong\\trap1.lua")
AddTrap(33,(1303-j+1)*32,(3416+j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\tong\\trap1.lua")
end
for j=-5,5 do
AddTrap(33,(1360-j)*32,(3408-j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\tong\\trap2.lua")
AddTrap(33,(1360-j+1)*32,(3408-j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\tong\\trap2.lua")
end
for j=-5,5 do
AddTrap(33,(1347-j)*32,(3479+j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\tong\\trap3.lua")
AddTrap(33,(1347-j+1)*32,(3479+j)*32,"\\script\\hoatdong\\tongkim\\cuusat\\tong\\trap3.lua")
end
end

TongBinh = {
{37,1301,3455,1},
{37,1306,3461,3},
{37,1318,3459,1},
{37,1312,3446,1},
{37,1312,3430,1},
{37,1323,3429,1},
{37,1333,3421,1},
{37,1345,3418,1},
{37,1356,3425,1},
{37,1345,3431,4},
{37,1352,3444,1},
{37,1345,3457,1},
{37,1336,3467,1},
{37,1327,3476,1},
{37,1307,3473,1},
{37,1296,3469,1},
{37,1320,3435,2},
{37,1352,3411,1},
{37,1395,3356,2},
{37,1398,3342,1},
{37,1403,3329,1},
{37,1406,3335,1},
{37,1408,3351,1},
{37,1403,3363,4},
{37,1413,3363,3},
{37,1410,3372,1},
{37,1416,3383,1},
{37,1426,3379,1},
{37,1427,3364,1},
{37,1436,3365,1},
{37,1413,3327,1},
{37,1341,3354,1},
{37,1330,3358,1},
{37,1323,3366,1},
{37,1317,3375,2},
{37,1308,3383,1},
{37,1302,3396,1},
{37,1350,3343,3},
{37,1360,3332,1},
{37,1367,3329,2},
{37,1379,3327,1},
{37,1387,3317,1},
{37,1386,3334,1},
{37,1412,3395,1},
{37,1418,3405,2},
{37,1412,3418,1},
{37,1403,3427,1},
{37,1399,3442,1},
{37,1391,3456,2},
{37,1379,3467,1},
{37,1371,3477,1},
{37,1362,3486,3},
{37,1350,3492,1},
{37,1369,3395,1},
{37,1380,3386,1},
{37,1380,3366,1},
{37,1391,3373,1},
{37,1393,3320,1},
{37,1371,3315,1},
{37,1351,3359,1},
{37,1323,3379,1},
{37,1294,3406,1},
{37,1304,3416,1},
{37,1326,3460,1},
{37,1344,3472,2},
{37,1334,3481,1},
{37,1336,3432,1},
{37,1377,3397,1},
{37,1368,3379,1},
{37,1384,3347,1},
{37,1424,3393,1},
{37,1421,3424,1},
{37,1403,3411,1},
{37,1401,3460,1},
{37,1388,3476,1},
{37,1375,3489,1},
{37,1362,3498,1},
{37,1354,3482,1},
{37,1340,3497,1},
{37,1331,3444,5},
{37,1347,3439,1},
{37,1360,3412,1},
{37,1332,3408,1},
{37,1303,3423,1},

}

KimBinh ={
{37,1533,3238,3},
{37,1535,3223,1},
{37,1545,3221,1},
{37,1544,3203,1},
{37,1555,3207,1},
{37,1554,3191,2},
{37,1549,3177,1},
{37,1556,3169,1},
{37,1563,3174,1},
{37,1572,3170,1},
{37,1580,3171,1},
{37,1588,3180,4},
{37,1591,3191,1},
{37,1579,3185,1},
{37,1588,3203,1},
{37,1596,3206,1},
{37,1604,3213,1},
{37,1598,3219,2},
{37,1586,3214,1},
{37,1580,3221,1},
{37,1589,3224,1},
{37,1570,3239,1},
{37,1569,3221,1},
{37,1560,3217,1},
{37,1550,3229,1},
{37,1540,3235,1},
{37,1523,3249,1},
{37,1520,3253,1},
{37,1512,3262,1},
{37,1504,3269,1},
{37,1494,3277,3},
{37,1487,3273,1},
{37,1477,3270,1},
{37,1463,3275,1},
{37,1452,3276,1},
{37,1458,3259,1},
{37,1468,3257,1},
{37,1474,3280,4},
{37,1481,3290,2},
{37,1493,3292,1},
{37,1504,3300,1},
{37,1498,3309,1},
{37,1488,3323,1},
{37,1480,3318,1},
{37,1472,3305,1},
{37,1470,3292,1},
{37,1463,3241,1},
{37,1469,3229,2},
{37,1475,3219,1},
{37,1482,3206,1},
{37,1488,3195,1},
{37,1490,3180,1},
{37,1503,3178,1},
{37,1506,3154,1},
{37,1513,3165,1},
{37,1514,3141,1},
{37,1525,3140,1},
{37,1523,3152,2},
{37,1533,3160,3},
{37,1539,3145,1},
{37,1564,3185,1},
{37,1612,3238,3},
{37,1619,3244,1},
{37,1615,3258,1},
{37,1605,3248,1},
{37,1602,3261,1},
{37,1609,3268,2},
{37,1609,3281,1},
{37,1596,3276,1},
{37,1585,3281,1},
{37,1593,3295,1},
{37,1583,3302,1},
{37,1566,3292,1},
{37,1567,3308,1},
{37,1554,3306,1},
{37,1542,3311,1},
{37,1534,3322,2},
{37,1520,3315,1},
{37,1514,3301,1},
{37,1509,3340,1},
{37,1522,3333,1},
{37,1499,3337,1},
{37,1484,3344,1},
{37,1567,3202,5},

}
     
     
function addnguyensoai()
tongkim = SubWorldID2Idx(37)
nstong=AddNpc(random(889,893),95,tongkim,1332*32,3444*32)
SetNpcScript(nstong, "\\script\\hoatdong\\tongkim\\boss2\\tong\\quai_nguyensoai.lua");
--HideNpc(nstong,99999999)
SetGlbMissionV(85,nstong)

nskim=AddNpc(random(894,898),95,tongkim,1571*32,3197*32)
SetNpcScript(nskim, "\\script\\hoatdong\\tongkim\\boss2\\kim\\quai_nguyensoai.lua");
--HideNpc(nskim,99999999)
SetGlbMissionV(86,nskim)
end;



function Backup_Boss()
		

-- Tong Kim Boss
tongkim2 = SubWorldID2Idx(61)

ruongchuatong=AddNpc(838,95,tongkim2,1625*32,3148*32)
SetNpcScript(ruongchuatong, "\\script\\npcchucnang\\ruongchuado.lua");
duocdiemtong=AddNpc(203,95,tongkim2,1635*32,3144*32)
SetNpcScript(duocdiemtong, "\\script\\hoatdong\\tongkim\\duocdiem.lua");

ruongchuakim=AddNpc(838,95,tongkim2,2057*32,2580*32)
SetNpcScript(ruongchuakim, "\\script\\npcchucnang\\ruongchuado.lua");
duocdiemkim=AddNpc(203,95,tongkim2,2033*32,2580*32)
SetNpcScript(duocdiemkim, "\\script\\hoatdong\\tongkim\\duocdiem.lua");



for j=-5,5 do
AddTrap(61,(2032-j)*32,(2610-j)*32,"\\script\\hoatdong\\tongkim\\boss\\kim\\cuarabenkim.lua")
AddTrap(61,(2032-j+1)*32,(2610-j)*32,"\\script\\hoatdong\\tongkim\\boss\\kim\\cuarabenkim.lua")
end

for j=-5,5 do
AddTrap(61,(1991-j)*32,(2668-j)*32,"\\script\\hoatdong\\tongkim\\boss\\kim\\cuavaobenkim.lua")
AddTrap(61,(1991-j+1)*32,(2668-j)*32,"\\script\\hoatdong\\tongkim\\boss\\kim\\cuavaobenkim.lua")
end

for j=-5,5 do
AddTrap(61,(1663-j)*32,(3131-j)*32,"\\script\\hoatdong\\tongkim\\boss\\tong\\cuarabentong.lua")
AddTrap(61,(1663-j+1)*32,(3131-j)*32,"\\script\\hoatdong\\tongkim\\boss\\tong\\cuarabentong.lua")
end

for j=-5,5 do
AddTrap(61,(1704-j)*32,(3075-j)*32,"\\script\\hoatdong\\tongkim\\boss\\tong\\cuavaobentong.lua")
AddTrap(61,(1704-j+1)*32,(3075-j)*32,"\\script\\hoatdong\\tongkim\\boss\\tong\\cuavaobentong.lua")
end
for j=-5,5 do
AddTrap(61,(1692-j)*32,(3021+j)*32,"\\script\\hoatdong\\tongkim\\boss\\tong\\trap1.lua") -- 1694 3024
AddTrap(61,(1692-j+1)*32,(3021+j)*32,"\\script\\hoatdong\\tongkim\\boss\\tong\\trap1.lua")
end
for j=-5,5 do
AddTrap(61,(1744-j)*32,(3020-j)*32,"\\script\\hoatdong\\tongkim\\boss\\tong\\trap2.lua") -- 1742 3022
AddTrap(61,(1744-j+1)*32,(3020-j)*32,"\\script\\hoatdong\\tongkim\\boss\\tong\\trap2.lua")
end
for j=-5,5 do
AddTrap(61,(1738-j)*32,(3081+j)*32,"\\script\\hoatdong\\tongkim\\boss\\tong\\trap3.lua") -- 1736 3078
AddTrap(61,(1738-j+1)*32,(3081+j)*32,"\\script\\hoatdong\\tongkim\\boss\\tong\\trap3.lua")
end

for j=-5,5 do
AddTrap(61,(2000-j)*32,(2748+j)*32,"\\script\\hoatdong\\tongkim\\boss\\kim\\trap1.lua") -- 1998 2744
AddTrap(61,(2000-j+1)*32,(2748+j)*32,"\\script\\hoatdong\\tongkim\\boss\\kim\\trap1.lua")
end
for j=-5,5 do
AddTrap(61,(1957-j)*32,(2738-j)*32,"\\script\\hoatdong\\tongkim\\boss\\kim\\trap2_1.lua") -- 1958 2734
AddTrap(61,(1957-j+1)*32,(2738-j)*32,"\\script\\hoatdong\\tongkim\\boss\\kim\\trap2_1.lua")
end
for j=-5,5 do
AddTrap(61,(1946-j)*32,(2725-j)*32,"\\script\\hoatdong\\tongkim\\boss\\kim\\trap2_2.lua") -- 1948 2722
AddTrap(61,(1946-j+1)*32,(2725-j)*32,"\\script\\hoatdong\\tongkim\\boss\\kim\\trap2_2.lua")
end

for j=-5,5 do
AddTrap(61,(1939-j)*32,(2677+j)*32,"\\script\\hoatdong\\tongkim\\boss\\kim\\trap3.lua") -- 1940 2681
AddTrap(61,(1939-j+1)*32,(2677+j)*32,"\\script\\hoatdong\\tongkim\\boss\\kim\\trap3.lua")
end



AddNPCEx(random(849,853),90,61,215,174, 8,3,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,226,180, 8,6,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,233,193, 3,2,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,225,192, 11,7,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,211,180, 11,3,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,212,190, 11,1,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,223,184, 6,11,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,217,189, 7,8,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,220,174, 10,7,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(849,853),90,61,255,168, 2,7,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_hieuuy.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(859,863),90,61,223,177, 3,8,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_thonglinh.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(859,863),90,61,227,183, 5,6,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_thonglinh.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(859,863),90,61,231,190, 7,3,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_thonglinh.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(859,863),90,61,227,194, 11,8,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_thonglinh.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(859,863),90,61,216,190, 11,11,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_thonglinh.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(859,863),90,61,211,183, 1,11,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_thonglinh.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(859,863),90,61,212,175, 3,2,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_thonglinh.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(859,863),90,61,265,176, 1,6,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_thonglinh.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(869,873),90,61,224,178, 5,6,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_photuong.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(869,873),90,61,231,188, 2,10,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_photuong.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(869,873),90,61,222,194, 7,3,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_photuong.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(869,873),90,61,211,183, 2,12,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_photuong.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(879,883),90,61,213,172, 4,4,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_daituong.lua",1)	-- Map : Tham lam (so cap)
AddNPCEx(random(879,883),90,61,233,194, 3,10,"\\script\\hoatdong\\tongkim\\boss\\tong\\quai_daituong.lua",1)	-- Map : Tham lam (so cap)




AddNPCEx(random(844,848),90,61,236,174, 4,11,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,234,174, 10,2,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,233,172, 10,10,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,232,172, 7,1,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,231,171, 2,5,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,230,170, 10,2,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,230,168, 3,12,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,229,167, 4,2,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,230,165, 2,11,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,230,167, 11,2,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,232,166, 10,12,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,232,167, 6,12,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,234,167, 9,3,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,233,165, 7,8,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,236,166, 10,12,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,238,165, 4,9,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,240,165, 8,6,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,240,165, 6,11,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,242,166, 8,4,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,241,166, 9,8,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,242,167, 9,8,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,243,168, 3,8,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,244,167, 5,11,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,247,168, 7,2,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,247,169, 6,9,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,248,170, 7,7,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,249,171, 12,1,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,250,172, 9,2,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,251,173, 3,4,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,250,174, 11,2,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,249,174, 12,4,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,249,175, 8,7,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,248,176, 12,3,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,249,177, 2,7,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,249,178, 6,8,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,250,178, 12,8,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,251,179, 9,8,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,251,180, 9,7,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,250,181, 11,3,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,252,180, 2,9,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,251,181, 12,10,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,250,183, 5,1,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,252,183, 9,4,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,250,184, 11,2,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,249,184, 7,4,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,248,182, 9,4,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,248,183, 6,6,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,247,184, 9,12,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,246,184, 4,7,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,245,183, 6,9,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,244,183, 8,1,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,243,181, 7,9,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,242,182, 8,3,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,242,180, 11,10,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,241,180, 10,5,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,240,179, 10,8,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,240,178, 4,3,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,240,178, 2,10,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,239,177, 7,4,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,237,175, 6,10,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,237,176, 3,10,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,234,175, 5,5,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,238,175, 5,11,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,237,174, 8,10,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,238,173, 10,4,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,238,174, 5,2,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,239,174, 6,3,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,240,172, 4,11,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,241,171, 6,9,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,242,171, 3,2,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,243,171, 5,10,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,242,172, 5,2,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,244,169, 4,5,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,233,169, 4,3,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,232,166, 4,4,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,229,168, 9,2,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,234,166, 3,6,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,252,182, 7,2,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,248,178, 6,4,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,248,176, 4,6,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,233,175, 7,7,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,234,176, 7,3,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,236,175, 9,12,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,234,173, 2,9,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,235,166, 8,12,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,237,166, 11,9,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,239,165, 5,5,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,240,166, 11,4,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,240,172, 10,5,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,249,183, 8,3,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,251,181, 3,10,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,242,181, 5,2,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,247,170, 11,12,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,246,169, 8,12,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,245,170, 1,2,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,233,167, 6,3,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,229,165, 1,8,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,228,167, 9,3,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,231,167, 10,3,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(844,848),90,61,231,170, 7,7,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_binhsi.lua",2)	-- Map : Tham lam (so cap)
AddNPCEx(random(854,858),90,61,237,175, 5,4,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,233,172, 4,5,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,232,166, 11,5,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,239,165, 3,1,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,243,168, 4,5,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,248,170, 4,6,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,251,174, 2,6,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,249,178, 9,6,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,252,181, 2,5,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(854,858),90,61,245,184, 10,6,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_hieuuy.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(864,868),90,61,229,166, 7,8,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_thonglinh.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(864,868),90,61,235,166, 9,12,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_thonglinh.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(864,868),90,61,251,173, 2,3,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_thonglinh.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(864,868),90,61,251,178, 5,9,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_thonglinh.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(864,868),90,61,248,183, 10,1,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_thonglinh.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(864,868),90,61,240,178, 2,4,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_thonglinh.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(864,868),90,61,234,174, 10,3,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_thonglinh.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(874,878),90,61,243,168, 9,7,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_photuong.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(874,878),90,61,237,175, 3,3,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_photuong.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(874,878),90,61,252,182, 8,5,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_photuong.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(874,878),90,61,232,166, 5,9,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_photuong.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(884,888),90,61,249,183, 10,9,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_daituong.lua",2)	-- Map : Tham lam (trung cap)
AddNPCEx(random(884,888),90,61,232,168, 8,4,"\\script\\hoatdong\\tongkim\\boss\\kim\\quai_daituong.lua",2)	-- Map : Tham lam (trung cap)

end