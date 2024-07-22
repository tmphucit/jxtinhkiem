Include("\\Script\\Global\\sourcejx49.lua")
Include("\\Script\\header\\taskid.lua");
Include("\\Script\\lib\\worldlibrary.lua");
Include("\\Script\\lib\\thuvien.lua");


MANG_TRAP = {
{67,2621, 4507},
{68, 1759, 3365},
{66,3405,6036},
{68,1742, 3044},
{66, 3436, 5901},
{67,2852, 3887},
{73, 1599,2803},
{53, 1340, 3306},
{73, 1536, 3073},
{73, 1635, 2990},
{68, 1840, 3203},
{70,1394,2674},
{70,1171,2751},
{76, 1729, 3282},
{73, 1597, 3208}, -- 15
{70, 1608 ,3230},
{74, 2040 ,3259},
{54, 1471 ,2992},
{53, 1806, 3449},
{53, 1342, 3346}, -- 20
{13, 1159, 3715},
{79, 1861, 3447},
{65,1610,3170},
{17,1864,3430},
{17,1891,3228}, --25
{17,1215,3399},
{14, 1596, 3282},
{13, 932, 4076},
{63, 1656, 3316},
{14, 225*8, 191*16}, -- 30
{62, 1822, 3473},
{63, 1644, 3195},
{14, 1476, 2980},
{62, 1802, 3412},
{14, 1633, 3209}, -- 35
{62, 1599, 3215}, 
{62, 1694, 3345},
{14, 1647, 2904},
{102, 201*8, 225*16},
{9,2090,2470}, -- 40
{104, 1144, 3116},
{102,2021, 3314},
{105,1577,3140},
{105,2038,4114},
{104,1387,2245}, -- 45
{104,1572,2333}, 
{104,1570,2976},
{104,1392,3163},
{38, 1602, 3206},
{9,1649,3031}, -- 50
{39, 1682, 3128},
{38, 1702, 3134},
{41,2083,2805},
{9,1142,3230},
{41, 1685, 3268}, -- 55
{50, 1584, 3221},
{41, 1788, 3085},
{50, 1676, 2901},
{50, 1619, 2894},
{41, 1951, 2989}, -- 60
{91, 1595, 3215},
{50, 1559, 3056},
{50, 1701, 3012},
{91, 1806, 2858},
{8, 1668, 3162}, -- 65
{91, 1622, 2736},
{91, 1511, 2861},
{8, 1839, 2856},
{8, 1920, 3353}, 
{91, 1570, 2661}, -- 70
{8, 1612, 3201},
{91, 1469, 2870},
{91, 1785, 2820},
{8, 1629, 3062},
{15, 1652, 3000}, -- 75
{8, 1649, 3567},
{91, 1581, 3142},
{8, 1784, 3532},
{78, 1599, 3206},
{15, 1634, 3196}, -- 80
{21, 1237, 3183},
{15,1802,3423},
{46,1125,3189},
{21,1588,3061},
{64,1698,3405}, -- 85
{15,1747,3573},
{56, 1611, 3201},
{3,232*8,210*16},
{57, 1425, 3217},
{56, 1639, 3075}, -- 90
{56, 1728, 3157},
{57, 1532, 3329},
{92, 1637, 3302},
{3, 188*8, 179*16},
{93, 1524,3174}, -- 95
{102, 1992,3738}, 
{111, 1584,3242}, 
{93, 1703,3031}, 
{110,1556,3176}, 
{111,1530,3271}, -- 100 
{109,1476,3274}, 
{110,1764,3153}, 
{110,1690,3246}, 
{94,1586,3212}, 
{64,1612,3292}, -- 105
{94,1674,3419}, 
{110,1815,3415}, 
{100,1628,3324}, 
{65,1550,3311}, 
{109,1579,3187}, --110
{100,1561,3244}, 
{99,1591,3105},
{99,1691,3020},
{2,2332,3913},

}

function checkten(w)
if w == 53 then
return "Ba L¨ng HuyÖn [1 - 9]"
elseif w == 70 then
return "Vò L¨ng S¬n [20 - 29]"
elseif w == 74 then
return "Miªu LÜnh [30 - 39]"
elseif w == 54 then
return "Nam Nh¹c TrÊn [10 - 19]"
elseif w == 15 then
return "T­¬ng D­¬ng [10 - 19]"
elseif w == 9 then
return "Ph­îng T­êng [10 - 19]"
elseif w == 17 then
return "Ph­îng T­êng [10 - 19]"
elseif w == 3 then
return "Chu Tiªn TrÊn [1 - 9]"
elseif w == 8 then
return "Phôc Ng­u S¬n §«ng [40 - 49]"
elseif w == 91 then
return "Kª Qu¸n §éng [50 - 59]"
elseif w == 41 then
return " Phôc Ng­u S¬n T©y [40 - 49]"
elseif w == 50 then
return "Thiªn T©m §éng [60 - 69]"
elseif w == 78 then
return "T­¬ng D­¬ng MËt §¹o [70 - 79]"
elseif w == 21 then
return "M¹n B¾c Th¶o Nguyªn [9x]"
elseif w == 102 then
return "L©m Du Quan [70 - 79]"
elseif w == 104 then
return "Ch©n Nói Tr­êng B¹ch [80 - 89]"
elseif w == 105 then
return "Tr­êng B¹ch S¬n [9x]"
elseif w == 38 then
return "ThiÕt Th¸p TÇng 1 [50 - 59]"
elseif w == 39 then
return "ThiÕt Th¸p TÇng 2 [60 - 69]"
elseif w == 92 then
return "Thôc C­¬ng S¬n [30 - 39]"
elseif w == 56 then
return "Néi ThÊt §éng [10 - 19]"
elseif w == 57 then
return "ThÊt S¸t §éng [20 - 29]"
elseif w == 13 then
return "KiÕm C¸c T©y B¾c [40 - 49]"
elseif w == 14 then
return "Kim Quang §éng [50 - 59]"
elseif w == 63 then
return "Táa V©n §éng [70 - 79]"
elseif w == 62 then
return "Kinh Hoµng §éng [60 - 69]"
elseif w == 64 then
return "D­¬ng Trung §éng [80 - 89]"
elseif w == 65 then
return "Cæ D­¬ng §éng [80-89]"
elseif w == 79 then
return "M¹c Cao QuËt [9x]"
elseif w == 66 then
return "Giang T©n Th«n [1 - 9]"
elseif w == 46 then
return "Phong L¨ng §é "
elseif w == 67 then
return "Thanh Thµnh S¬n [10 - 19]"
elseif w == 68 then
return "B¹ch V©n §éng [20 - 29]"
elseif w == 73 then
return "Phôc L­u §éng [30 - 39]"
elseif w == 93 then
return "TiÕn Cóc §éng [9x]"
elseif w == 94 then
return "C¸n Viªn §éng [9x]"
elseif w == 100 then
return "TuyÕt B¸o §éng [9x]"
elseif w == 99 then
return "D­îc V­¬ng §éng [9x]"
elseif w == 109 then
return "Sa M¹c S¬n §éng 1 [PK]"
elseif w == 110 then
return "Sa M¹c S¬n §éng 2 [PK]"
elseif w == 111 then
return "Sa M¹c S¬n §éng 3 [PK]"



elseif w == 76 then
return "§µo Hoa Nguyªn"
elseif w == 2 then
return "Hoa S¬n"
else
return "Ch­a §Æt Tªn"
end
end

function CheckDiaDiem(id)
w = MANG_TRAP[id][1]
if w == 53 then
return "Ba L¨ng HuyÖn"
elseif w == 70 then
return "Vò L¨ng S¬n"
elseif w == 74 then
return "Miªu LÜnh"
elseif w == 54 then
return "Nam Nh¹c TrÊn"
elseif w == 15 then
return "T­¬ng D­¬ng"
elseif w == 9 then
return "Ph­îng T­êng"
elseif w == 17 then
return "Ph­îng T­êng"
elseif w == 3 then
return "Chu Tiªn TrÊn"
elseif w == 8 then
return "Phôc Ng­u S¬n §«ng"
elseif w == 91 then
return "Kª Qu¸n §éng"
elseif w == 41 then
return " Phôc Ng­u S¬n T©y"
elseif w == 50 then
return "Thiªn T©m §éng"
elseif w == 78 then
return "T­¬ng D­¬ng MËt §¹o"
elseif w == 21 then
return "M¹n B¾c Th¶o Nguyªn"
elseif w == 102 then
return "L©m Du Quan"
elseif w == 104 then
return "Ch©n Nói Tr­êng B¹ch"
elseif w == 105 then
return "Tr­êng B¹ch S¬n"
elseif w == 38 then
return "ThiÕt Th¸p TÇng 1"
elseif w == 39 then
return "ThiÕt Th¸p TÇng 2"
elseif w == 92 then
return "Thôc C­¬ng S¬n"
elseif w == 56 then
return "Néi ThÊt §éng"
elseif w == 57 then
return "ThÊt S¸t §éng"
elseif w == 13 then
return "KiÕm C¸c T©y B¾c"
elseif w == 14 then
return "Kim Quang §éng"
elseif w == 62 then
return "Táa V©n §éng"
elseif w == 63 then
return "Kinh Hoµng §éng"
elseif w == 64 then
return "D­¬ng Trung §éng"
elseif w == 65 then
return "Cæ D­¬ng §éng"
elseif w == 79 then
return "M¹c Cao QuËt"
elseif w == 66 then
return "Giang T©n Th«n"
elseif w == 46 then
return "Phong L¨ng §é"
elseif w == 67 then
return "Thanh Thµnh S¬n"
elseif w == 68 then
return "B¹ch V©n §éng"
elseif w == 73 then
return "Phôc L­u §éng"
elseif w == 76 then
return "§µo Hoa Nguyªn"
elseif w == 2 then
return "Hoa S¬n"


elseif w == 93 then
return "TiÕn Cóc §éng [9x]"
elseif w == 94 then
return "C¸n Viªn §éng [9x]"
elseif w == 100 then
return "TuyÕt B¸o §éng [9x]"
elseif w == 99 then
return "D­îc V­¬ng §éng [9x]"
elseif w == 109 then
return "Sa M¹c S¬n §éng 1 [PK]"
elseif w == 110 then
return "Sa M¹c S¬n §éng 2 [PK]"
elseif w == 111 then
return "Sa M¹c S¬n §éng 3 [PK]"

else
return "Ch­a §Æt Tªn"
end
end
function checkcapdo(id)
return "CÊp 0 - 0"
end
function dichuyen(id)
if id >= 0 and id <= getn(MANG_TRAP) then

NewWorld(MANG_TRAP[id][1],MANG_TRAP[id][2],MANG_TRAP[id][3])
Msg2Player("§· ®Õn <color=yellow>"..checkten(MANG_TRAP[id][1]).."")
if MANG_TRAP[id][1] == 38 or MANG_TRAP[id][1] == 78 then
SetFightState(1)
end
if MANG_TRAP[id][1] == 66 or MANG_TRAP[id][1] == 3 or MANG_TRAP[id][1] == 53 or MANG_TRAP[id][1] == 15 or MANG_TRAP[id][1] == 9 or MANG_TRAP[id][1] == 17 then
return
end
GhiNho(id)
else
Msg2Player("Lech toa do, lien he admin de xu ly !")
end
end

function GhiNho(id)
if id >= 0 and id <= getn(MANG_TRAP) then

if GetTask(TASK_MAPS_BANDO1) == 0 then
	SetTask(TASK_MAPS_BANDO1, id)
elseif GetTask(TASK_MAPS_BANDO2) == 0 then
	if MANG_TRAP[id][1] == MANG_TRAP[GetTask(TASK_MAPS_BANDO1)][1] then
	return
	end
	SetTask(TASK_MAPS_BANDO2,id)
elseif GetTask(TASK_MAPS_BANDO3) == 0 then
	if MANG_TRAP[id][1] == MANG_TRAP[GetTask(TASK_MAPS_BANDO1)][1] or MANG_TRAP[id][1] == MANG_TRAP[GetTask(TASK_MAPS_BANDO2)][1] then
	return
	end
	SetTask(TASK_MAPS_BANDO3, id)
else
	if MANG_TRAP[id][1] == MANG_TRAP[GetTask(TASK_MAPS_BANDO1)][1] or MANG_TRAP[id][1] == MANG_TRAP[GetTask(TASK_MAPS_BANDO2)][1] or MANG_TRAP[id][1] == MANG_TRAP[GetTask(TASK_MAPS_BANDO3)][1] then
	return
	end
	SetTask(TASK_MAPS_BANDO1, GetTask(TASK_MAPS_BANDO2))
	SetTask(TASK_MAPS_BANDO2, GetTask(TASK_MAPS_BANDO3))
	SetTask(TASK_MAPS_BANDO3, id)
end

else
Msg2Player("Lech toa do, lien he admin de xu ly !")
end
end
