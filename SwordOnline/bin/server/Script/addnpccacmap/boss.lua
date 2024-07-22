mang = {}
ksk = {}
klt = {}
function CheckDiaDiem(map)
w = ToaDoSatThu[map][1]
if w == 53 or w == 4 then
return "Ba L¨ng HuyÖn"
elseif w == 70 then
return "Vò L¨ng S¬n"
elseif w == 74 then
return "Miªu LÜnh"
elseif w == 54 then
return "Nam Nh¹c TrÊn"
elseif w == 15 or w == 160 then
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
elseif w == 63 then
return "Táa V©n §éng"
elseif w == 62 then
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
return "TiÕn Cóc §éng"
elseif w == 94 then
return "C¸n Viªn §éng"
elseif w == 99 then
return "D­îc V­¬ng §éng"
elseif w == 100 then
return "TuyÕt B¸o §éng"
else
return "Ch­a §Æt Tªn"
end
end

ToaDoSatThu = {
-- 2x
{57,1531,3155,24,"Tr¸c L·nh CÇm"}, -- 1 
{57,1567,3253,24,"Tiªu Thiªn Ng¹o"},
{68,1865,3228,24,"Môc Minh KiÖt"}, 
{68,1709,3127,24,"TÊt V­u Phãng"},
{70,1803,3147,24,"Lôc Cöu U"},
{70,1708,2865,24,"Bé Hiªu TrÇn"},
-- 3x
{74,1872,3172,34,"§µo §o¹t Thu"}, -- 7
{74,1962,3598,34,"Xµ B¸ §«ng"},
{92,1850,3184,34,"L­¬ng T­ Nam"},
{92,1943,2931,34,"Tr¸c ThÊt Lang"},
{73,1544,2947,34,"KiÒu §Ønh Thiªn"},
{73,1635,3080,34,"Träng V« CÊp "},
-- 4x
{8,1887,3426,44,"Du Th¸n Giang"},
{8,1818,3463,44,"H¹ Hïng Phi"},
{41,2064,2997,44,"Tèng Vò Phong"},
{41,2175,3030,44,"Lé Th­îng Nh©n"},
{13,1122,4091,44,"NhËm T«ng Hoµnh"},
{13,869,3781,44,"Hµn Khanh Long"},
-- 5x
{91,1534,3005,54,"M¹nh §¹p Hång"}, -- 19
{91,1524,2808,54,"¢n  Tøc HËn"},
{38,1728,3033,54,"Ho¾c Thanh S­¬ng"},
{38,1681,3215,54,"Miªn T­ §¹o"},
{14,1576,3109,54,"TiÕu Väng Du"},
{14,1854,3181,54,"Cao N·i Kho¸t"},
-- 6x
{50,1506,3161,64,"U«ng  ThÖ Thñy"}, --25
{50,1718,3109,64,"YÕn L­u  Sanh"},
{50,1622,3002,64,"Tang Th­¬ng H¶i"},
{39,1691,3166,64,"Bå ThËp Tam"},
{39,1695,3037,64,"HËu  KhÊt KiÕm"},
{39,1555,3108,64,"HËu YÕn T©n"},
{62,1652,3720,64,"ThiÖu ThÊt S¸t"},
{62,1601,3453,64,"Du V¹n Lý "},
{62,1643,3256,64,"Cõu DuÉn Sam"},
-- 7x
{78,1691,3134,74,"H¹ng LÖnh Ti"}, -- 34
{78,1723,3179,74,"Tµo Nh©n  Phñ"},
{78,1749,3229,74,"Tr×nh Phóc Ba"},
{102,1833,3396,74,"§Æng An Khuª"},
{102,1693,3237,74,"¦ng  Tiªu Phong"},
{102,1975,3630,74,"Th­¬ng TriÒu S­¬ng"},
{63,1544,3189,74,"Phïng Song Dùc"},
{63,1626,3423,74,"Phã Kh©u Tu"},
{63,1559,3494,74,"L¹c Long HiÒn"},
-- 8x
{104,1439,2998,84,"DiÖp øc Anh"}, -- 43
{104,1319,2655,84,"L¹c NhÜ Kim"},
{104,1470,2253,84,"M¹c Nam Tróc"},
{64,1574,3242,84,"TÇn Tö Du"},
{64,1431,3184,84,"C« V« Th­êng"},
{64,1345,3010,84,"LiÔu Tø Gia"},
{65,1683,3357,84,"Thi §¹i ThiÕu"},
{65,1611,3451,84,"T«n V¨n B­u "},
{65,1535,3303,84,"§ång BÊt Phôc"},
-- 9x
{15,1618,3522,94,"T¶  DËt Minh"}, -- 52
{15,1794,3249,94,"NhËm Th­¬ng Khung"},
{17,1750,3045,94,"Chiªm Phóc V©n"},
{17,1853,3115,94,"Nh¹c Th­îng C«n"},
{17,1787,3181,94,"Viªn Thiªn Thä"},
{17,1747,3327,94,"Vu Cöu  §å"},
{17,1630,3406,94,"D­¬ng Phong DËt"},
{17,1499,3378,94,"Hµ Sinh Vong"},
{15,1652,3053,94,"T¨ng ChØ ãan"},
{9,1923,2786,94,"VÖ Biªn Thµnh"},
{9,2017,2824,94,"Cè Thñ §»ng"},
{9,2029,2984,94,"Gia C¸t Kinh Hång"},

{4,1539,2945,94,"T¶  DËt Minh"}, -- 64
{4,1400,3028,94,"NhËm Th­¬ng Khung"},
{4,1647,2919,94,"Chiªm Phóc V©n"},
{4,1772,2918,94,"Nh¹c Th­îng C«n"},
{4,1762,3206,94,"Viªn Thiªn Thä"},
{4,1788,3416,94,"Vu Cöu  §å"},
{160,1349,3447,94,"D­¬ng Phong DËt"},
{160,1393,3513,94,"Hµ Sinh Vong"},
{160,1663,3540,94,"T¨ng ChØ ãan"},
{160,1775,3302,94,"VÖ Biªn Thµnh"},
{160,1655,3056,94,"Cè Thñ §»ng"},
{160,1331,3135,94,"Gia C¸t Kinh Hång"},
}




function addboss()
for i=1,getn(ToaDoSatThu) do
		quai = AddNpc(1203 + i,ToaDoSatThu[i][4],SubWorldID2Idx(ToaDoSatThu[i][1]),ToaDoSatThu[i][2] * 32,ToaDoSatThu[i][3] * 32)
		SetNpcScript(quai, "\\script\\cacnhiemvu\\nvsatthu\\bossstdie.lua")
		SetNpcName(quai, ToaDoSatThu[i][5])
end
end


function addboss1()
npcmapindex= SubWorldID2Idx(53)
satthu=AddNpc(309,99,npcmapindex,1463*32,3060*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thieulam71.lua");
satthu=AddNpc(310,99,npcmapindex,1543*32,2936*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\duongmon71.lua");
satthu=AddNpc(311,99,npcmapindex,1738*32,2994*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\ngami71.lua");
satthu=AddNpc(312,99,npcmapindex,1777*32,3188*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\caibang71.lua");
satthu=AddNpc(313,99,npcmapindex,1752*32,3401*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\vodang71.lua");
satthu=AddNpc(314,99,npcmapindex,1786*32,3066*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thienvuong71.lua");
satthu=AddNpc(315,99,npcmapindex,1664*32,3021*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\ngudoc71.lua");
satthu=AddNpc(316,99,npcmapindex,1612*32,2955*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thuyyen71.lua");
satthu=AddNpc(317,99,npcmapindex,1490*32,3389*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thiennhan71.lua");
satthu=AddNpc(318,99,npcmapindex,1625*32,3406*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\conlon71.lua");
end

function addboss1()

npcmapindex= SubWorldID2Idx(53)
satthu=AddNpc(299,99,npcmapindex,1463*32,3060*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thieulam71.lua");
satthu=AddNpc(300,99,npcmapindex,1543*32,2936*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\duongmon71.lua");
satthu=AddNpc(301,99,npcmapindex,1738*32,2994*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\ngami71.lua");
satthu=AddNpc(302,99,npcmapindex,1777*32,3188*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\caibang71.lua");
satthu=AddNpc(303,99,npcmapindex,1752*32,3401*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\vodang71.lua");
satthu=AddNpc(304,99,npcmapindex,1786*32,3066*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thienvuong71.lua");
satthu=AddNpc(305,99,npcmapindex,1664*32,3021*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\ngudoc71.lua");
satthu=AddNpc(306,99,npcmapindex,1612*32,2955*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thuyyen71.lua");
satthu=AddNpc(307,99,npcmapindex,1490*32,3389*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thiennhan71.lua");
satthu=AddNpc(308,99,npcmapindex,1625*32,3406*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\conlon71.lua");

npcmapindex1= SubWorldID2Idx(187)
satthu=AddNpc(309,99,npcmapindex1,209*8*32,210*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thieulam91.lua");
satthu=AddNpc(310,99,npcmapindex1,200*8*32,214*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\duongmon91.lua");
satthu=AddNpc(311,99,npcmapindex1,189*8*32,201*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\ngami91.lua");
satthu=AddNpc(312,99,npcmapindex1,183*8*32,204*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\caibang91.lua");
satthu=AddNpc(313,99,npcmapindex1,179*8*32,214*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\vodang91.lua");

npcmapindex2= SubWorldID2Idx(101)
satthu=AddNpc(314,99,npcmapindex2,213*8*32,191*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thienvuong91.lua");
satthu=AddNpc(315,99,npcmapindex2,221*8*32,3123*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\ngudoc91.lua");
satthu=AddNpc(316,99,npcmapindex2,208*8*32,194*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thuyyen91.lua");
satthu=AddNpc(317,99,npcmapindex2,206*8*32,190*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thiennhan91.lua");
satthu=AddNpc(318,99,npcmapindex2,201*8*32,199*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\conlon91.lua");

npcmapindex3= SubWorldID2Idx(75)
satthu=AddNpc(319,99,npcmapindex3,235*8*32,196*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thieulam121.lua");
satthu=AddNpc(320,99,npcmapindex3,227*8*32,195*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\duongmon121.lua");
satthu=AddNpc(321,99,npcmapindex3,227*8*32,200*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\ngami121.lua");
satthu=AddNpc(322,99,npcmapindex3,218*8*32,3270*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\caibang121.lua");
satthu=AddNpc(323,99,npcmapindex3,1706*32,3303*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\vodang121.lua");
satthu=AddNpc(324,99,npcmapindex3,210*8*32,199*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thienvuong121.lua");
satthu=AddNpc(325,99,npcmapindex3,211*8*32,195*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\ngudoc121.lua");
satthu=AddNpc(326,99,npcmapindex3,218*8*32,3124*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thuyyen121.lua");
satthu=AddNpc(327,99,npcmapindex3,202*8*32,199*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thiennhan121.lua");
satthu=AddNpc(328,99,npcmapindex3,205*8*32,201*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\conlon121.lua");

npcmapindex4= SubWorldID2Idx(102)
satthu=AddNpc(329,99,npcmapindex4,206*8*32,213*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thieulam151.lua");
satthu=AddNpc(330,99,npcmapindex4,204*8*32,205*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\duongmon151.lua");
satthu=AddNpc(331,99,npcmapindex4,217*8*32,206*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\ngami151.lua");
satthu=AddNpc(332,99,npcmapindex4,226*8*32,204*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\caibang151.lua");
satthu=AddNpc(333,99,npcmapindex4,238*8*32,210*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\vodang151.lua");
satthu=AddNpc(334,99,npcmapindex4,237*8*32,215*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thienvuong151.lua");
satthu=AddNpc(335,99,npcmapindex4,233*8*32,222*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\ngudoc151.lua");
satthu=AddNpc(336,99,npcmapindex4,219*8*32,218*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thuyyen151.lua");
satthu=AddNpc(337,99,npcmapindex4,226*8*32,213*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\thiennhan151.lua");
satthu=AddNpc(338,99,npcmapindex4,216*8*32,209*16*32)
SetNpcScript(satthu, "\\script\\kinhnghiem\\conlon151.lua");

end

trongcay = {
{86,2609,3573},
{86,2604,3541},
{86,2626,3507},
{86,2602,3515},
{86,2589,3518},
{86,2559,3488},
{86,2545,3470},
{86,2526,3463},
{86,2509,3463},
{86,2497,3485},
{86,2511,3501},
{86,2525,3519},
{86,2522,3553},
{86,2521,3594},
{86,2540,3620},
{86,2558,3632},
{86,2587,3654},
{86,2583,3693},
{86,2563,3711},
{86,2551,3753},
{86,2583,3785},
{86,2521,3741},
{86,2525,3694},
{86,2521,3639},
{86,2495,3616},
{86,2475,3586},
{86,2434,3587},
{86,2427,3503},
{86,2437,3451},
{86,2418,3477},
{86,2399,3510},
{86,2402,3601},
{86,2362,3623},
{86,2366,3552},
{86,2351,3501},
{86,2401,3634},
{86,2410,3702},
{86,2383,3730},
{86,2368,3756},
{86,2329,3793},
{86,2338,3898},
{86,2368,3873},
{86,2414,3839},
{86,2431,3860},
{86,2447,3815},
{86,2475,3804},
{86,2495,3816},
{86,2601,3986},
{86,2547,4031},
{86,2534,4045},
{86,2505,4053},
{87,1643,3547},
{87,1640,3519},
{87,1638,3491},
{87,1638,3463},
{87,1655,3449},
{87,1676,3461},
{87,1693,3482},
{87,1713,3515},
{87,1720,3548},
{87,1726,3574},
{87,1735,3602},
{87,1749,3628},
{87,1759,3650},
{87,1776,3671},
{87,1795,3680},
{87,1818,3663},
{87,1848,3652},
{87,1878,3636},
{87,1908,3609},
{87,1920,3570},
{87,1901,3542},
{87,1885,3503},
{87,1864,3525},
{87,1846,3546},
{87,1816,3567},
{87,1792,3549},
{87,1900,3486},
{87,1913,3465},
{87,1903,3440},
{87,1924,3427},
{87,1951,3407},
{87,1965,3386},
{87,1971,3350},
{87,1965,3313},
{87,1980,3301},
{87,2013,3294},
{87,2019,3332},
{87,2026,3362},
{87,2031,3400},
{87,2029,3435},
{87,2008,3457},
{87,1988,3486},
{87,1971,3517},
{87,1960,3545},
{87,1939,3573},
{87,1950,3294},
{87,1937,3261},
{87,1924,3240},
{87,1899,3204},
{87,1883,3194},
{87,1868,3210},
{87,1954,3169},
{91,1771,3023},
{91,1760,3049},
{91,1743,3066},
{91,1729,3078},
{91,1719,3088},
{91,1701,3075},
{91,1749,3119},
{91,1761,3102},
{91,1773,3090},
{91,1788,3077},
{91,1809,3060},
{91,1822,3076},
{91,1832,3086},
{91,1841,3097},
{91,1856,3112},
{91,1871,3132},
{91,1883,3143},
{91,1827,3119},
{91,1821,3140},
{91,1830,3154},
{91,1841,3166},
{91,1834,3183},
{91,1823,3201},
{91,1815,3202},
{91,1801,3188},
{91,1785,3172},
{91,1771,3176},
{91,1754,3186},
{91,1745,3195},
{91,1756,3213},
{91,1770,3228},
{91,1784,3244},
{91,1727,3210},
{91,1716,3241},
{91,1734,3267},
{91,1747,3280},
{91,1700,3248},
{91,1682,3264},
{91,1688,3288},
{91,1709,3311},
{91,1661,3285},
{91,1646,3296},
{91,1644,3312},
{91,1653,3326},
{91,1664,3336},
{91,1711,3189},
{91,1716,3160},
{92,1631,3554},
{92,1618,3532},
{92,1615,3512},
{92,1618,3469},
{92,1641,3488},
{92,1701,3573},
{92,1723,3613},
{92,1705,3676},
{92,1708,3703},
{92,1723,3741},
{92,1708,3766},
{92,1694,3767},
{92,1679,3754},
{92,1669,3742},
{92,1656,3726},
{92,1644,3765},
{92,1686,3482},
{92,1672,3455},
{92,1662,3431},
{92,1644,3412},
{92,1623,3404},
{92,1618,3362},
{92,1618,3316},
{92,1616,3267},
{92,1626,3224},
{92,1642,3214},
{92,1675,3216},
{92,1725,3246},
{92,1735,3269},
{92,1752,3283},
{92,1768,3252},
{92,1783,3228},
{92,1818,3252},
{92,1857,3252},
{92,1891,3260},
{92,1930,3249},
{92,1967,3242},
{92,1983,3241},
{92,2008,3246},
{92,2021,3285},
{92,2034,3296},
{92,2033,3315},
{92,2024,3314},
{92,2025,3300},
{92,2032,3326},
{92,2022,3324},
{92,2015,3313},
{92,2006,3322},
{92,2013,3325},
}


bossvltk = {
{2,2523,3566},
{2,2478,3560},
{2,2563,3502},
{2,2580,3518}
}

caymai = {
{2,2520,3470,1},
{2,2518,3496,1},
{2,2499,3504,1},
{2,2498,3469,1},
{2,2512,3484,2},
{2,2498,3482,2},
{2,2531,3482,2},
{2,2528,3456,0},
{2,2514,3457,0},
{2,2526,3510,0},
{2,2508,3497,0},
{2,2537,3472,0},
}








kesokhanh = {
{53,1521,3267},
{53,1517,3305},
{53,1558,3316},
{53,1598,3331},
{53,1631,3310},
{53,1694,3285},
{53,1712,3263},
{53,1719,3207},
{53,1730,3109},
{53,1724,3055},
{53,1720,2998},
{53,1696,2921},
{53,1756,2955},
{53,1769,3005},
{53,1743,3059},
{53,1763,3111},
{53,1755,3138},
{53,1761,3219},
{53,1752,3286},
{53,1769,3347},
{53,1732,3347},
{53,1692,3360},
{53,1721,3404},
{53,1658,3406},
{53,1541,3413},
{53,1474,3227},
{53,1453,3258},
{53,1427,3263},
{53,1431,3329},
{53,1420,3188},
{53,1407,3137},
{53,1424,3090},
{53,1400,3021},
{53,1424,2940},
{53,1477,2956},
{53,1490,2989},
{53,1484,3017},
{53,1465,3052},
{53,1464,3092},
{53,1480,3136},
{3,1575,3225},
{3,1542,3265},
{3,1510,3259},
{3,1473,3247},
{3,1447,3212},
{3,1396,3199},
{3,1370,3241},
{3,1343,3263},
{3,1312,3208},
{3,1336,3156},
{3,1358,3136},
{3,1319,3070},
{3,1391,3029},
{3,1438,3057},
{3,1484,3087},
{3,1511,3050},
{3,1518,2995},
{3,1510,2934},
{3,1549,2929},
{3,1597,2956},
{3,1631,2962},
{3,1662,2896},
{3,1694,2952},
{3,1730,2966},
{3,1753,2988},
{3,1744,3037},
{3,1765,3093},
{3,1805,3097},
{3,1834,3067},
{3,1870,3031},
{3,1898,3086},
{3,1881,3115},
{3,1884,3167},
{3,1906,3223},
{3,1879,3263},
{3,1849,3245},
{3,1808,3264},
{3,1807,3321},
{3,1830,3367},
{3,1887,3387},
{66,3512,6009},
{66,3546,5980},
{66,3596,5979},
{66,3629,5921},
{66,3599,5895},
{66,3555,5874},
{66,3506,5846},
{66,3448,5821},
{66,3455,5784},
{66,3484,5724},
{66,3525,5676},
{66,3576,5673},
{66,3586,5719},
{66,3565,5779},
{66,3606,5827},
{66,3644,5830},
{66,3670,5840},
{66,3717,5887},
{66,3748,5927},
{66,3756,5983},
{66,3785,6006},
{66,3783,6047},
{66,3779,6095},
{66,3747,6139},
{66,3677,6090},
{66,3632,6145},
{66,3637,6213},
{66,3633,6275},
{66,3698,6356},
{66,3728,6333},
{66,3643,6399},
{66,3635,6438},
{66,3603,6451},
{66,3526,6435},
{66,3513,6364},
{66,3454,6299},
{66,3511,6290},
{66,3546,6304}
}

kelangthang = {
{2,2594,3634},
{2,2591,3669},
{2,2577,3702},
{2,2583,3764},
{2,2553,3762},
{2,2560,3716},
{2,2546,3681},
{2,2553,3637},
{2,2529,3615},
{2,2518,3599},
{2,2526,3498},
{2,2530,3468},
{2,2503,3470},
{2,2495,3506},
{2,2480,3550},
{2,2468,3582},
{2,2496,3624},
{2,2520,3643},
{2,2526,3684},
{2,2520,3736},
{2,2488,3721},
{2,2494,3645},
{2,2470,3644},
{2,2471,3688},
{2,2447,3746},
{2,2417,3727},
{2,2424,3697},
{2,2434,3654},
{2,2430,3603},
{2,2427,3561},
{2,2426,3511},
{2,2438,3463},
{2,2419,3472},
{2,2398,3508},
{2,2405,3557},
{2,2399,3597},
{2,2403,3632},
{2,2383,3617},
{2,2358,3599},
{2,2364,3545},
{2,2351,3505},
{2,2364,3761},
{2,2330,3790},
{2,2329,3859},
{2,2341,3900},
{2,2376,3854},
{2,2424,3858},
{2,2460,3809},
{2,2501,3800},
{2,2533,3819},
{2,2525,3873},
{2,2502,3890},
{2,2521,3966},
{2,2568,4010},
{2,2502,4050},
{2,2592,3992},
{2,2615,3965},
{2,2603,3929},
{2,2592,3895},
{2,2574,3871},
{2,2556,3841},
{2,2539,3946},
{2,2476,3965},
{2,2448,3950},
{2,2428,3942},
{2,2431,3982},
{2,2440,3997},
{2,2459,4042},
{2,2436,4046},
{2,2412,4034},
{2,2401,3983},
{2,2391,4039},
{2,2376,4010},
{2,2365,4050},
{2,2390,3932},
{2,2367,3951},
{2,2347,3983},
{2,2333,3986},
{2,2324,4035},
{2,2321,4073},
{2,2307,4090},
{2,2497,3957},
{2,2560,3981},
{2,2535,3898},
{2,2516,3888},
{2,2501,3857},
{2,2571,3785},
{2,2591,3820},
{2,2605,3653},
{2,2607,3563},
{2,2603,3525},
{2,2623,3504},
{2,2595,3505},
{2,2556,3482},
{2,2489,3692},
{2,2450,3694},
{2,2353,3458},
{2,2332,3437},
{2,2371,3435},
{2,2437,3444}
}


bossnoel = {
{104,1147,3058},
{104,1155,3026},
{104,1149,2991},
{104,1150,2945},
{104,1154,2905},
{104,1154,2868},
{104,1155,2833},
{104,1154,2797},
{104,1150,2764},
{104,1147,2725},
{104,1144,2690},
{104,1151,2658},
{104,1141,2610},
{104,1141,2548},
{104,1153,2513},
{104,1152,2471},
{104,1149,2416},
{104,1147,2357},
{104,1140,2321},
{104,1153,2277},
{104,1188,2286},
{104,1218,2263},
{104,1242,2300},
{104,1207,2310},
{104,1192,2354},
{104,1194,2396},
{104,1203,2444},
{104,1220,2474},
{104,1200,2504},
{104,1211,2536},
{104,1211,2574},
{104,1211,2636},
{104,1222,2669},
{104,1211,2712},
{104,1227,2738},
{104,1217,2778},
{104,1235,2810},
{104,1265,2829},
{104,1286,2855},
{104,1292,2904},
{104,1308,2933},
{104,1311,2970},
{104,1286,2997},
{104,1266,3027},
{104,1243,3044},
{104,1202,3094},
{104,1257,3083},
{104,1286,3069},
{104,1311,3034},
{104,1321,2995},
{104,1335,2949},
{104,1346,2895},
{104,1347,2843},
{104,1338,2789},
{104,1348,2752},
{104,1367,2715},
{104,1381,2674},
{104,1389,2637},
{104,1362,2609},
{104,1327,2594},
{104,1318,2636},
{104,1332,2672},
{104,1334,2706},
{104,1329,2738},
{104,1322,2776},
{104,1323,2548},
{104,1333,2505},
{104,1342,2442},
{104,1350,2404},
{104,1369,2366},
{104,1392,2322},
{104,1429,2276},
{104,1473,2286},
{104,1515,2302},
{104,1542,2345},
{104,1548,2385},
{104,1506,2380},
{104,1472,2393},
{104,1456,2426},
{104,1472,2460},
{104,1475,2499},
{104,1508,2544},
{104,1542,2596},
{104,1543,2644},
{104,1541,2685},
{104,1532,2714},
{104,1543,2769},
{104,1544,2828},
{104,1520,2875},
{104,1516,2927},
{104,1498,2976},
{104,1495,3019},
{104,1491,3060},
{104,1456,3079},
{104,1420,3097},
{104,1392,3045},
{104,1397,3000},
{104,1407,2950},
{104,1422,2893},
{104,1416,2857},
}

