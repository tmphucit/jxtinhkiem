mang = {}
ksk = {}
klt = {}
function CheckDiaDiem(map)
w = ToaDoSatThu[map][1]
if w == 53 then
return "Ba L�ng Huy�n"
elseif w == 70 then
return "V� L�ng S�n"
elseif w == 74 then
return "Mi�u L�nh"
elseif w == 54 then
return "Nam Nh�c Tr�n"
elseif w == 15 then
return "T��ng D��ng"
elseif w == 9 then
return "Bi�n Kinh"
elseif w == 17 then
return "Ph��ng T��ng"
elseif w == 3 then
return "Chu Ti�n Tr�n"
elseif w == 8 then
return "Ph�c Ng�u S�n ��ng"
elseif w == 91 then
return "K� Qu�n ��ng"
elseif w == 41 then
return " Ph�c Ng�u S�n T�y"
elseif w == 50 then
return "Thi�n T�m ��ng"
elseif w == 78 then
return "T��ng D��ng M�t ��o"
elseif w == 21 then
return "M�n B�c Th�o Nguy�n"
elseif w == 102 then
return "L�m Du Quan"
elseif w == 104 then
return "Ch�n N�i Tr��ng B�ch"
elseif w == 105 then
return "Tr��ng B�ch S�n"
elseif w == 38 then
return "Thi�t Th�p T�ng 1"
elseif w == 39 then
return "Thi�t Th�p T�ng 2"
elseif w == 92 then
return "Th�c C��ng S�n"
elseif w == 56 then
return "N�i Th�t ��ng"
elseif w == 57 then
return "Th�t S�t ��ng"
elseif w == 13 then
return "Ki�m C�c T�y B�c"
elseif w == 14 then
return "Kim Quang ��ng"
elseif w == 63 then
return "T�a V�n ��ng"
elseif w == 62 then
return "Kinh Ho�ng ��ng"
elseif w == 64 then
return "D��ng Trung ��ng"
elseif w == 65 then
return "C� D��ng ��ng"
elseif w == 79 then
return "M�c Cao Qu�t"
elseif w == 66 then
return "Giang T�n Th�n"
elseif w == 46 then
return "Phong L�ng ��"
elseif w == 67 then
return "Thanh Th�nh S�n"
elseif w == 68 then
return "B�ch V�n ��ng"
elseif w == 73 then
return "Ph�c L�u ��ng"
elseif w == 76 then
return "��o Hoa Nguy�n"
elseif w == 2 then
return "Hoa S�n"
elseif w == 93 then
return "Ti�n C�c ��ng"
elseif w == 94 then
return "C�n Vi�n ��ng"
elseif w == 99 then
return "D��c V��ng ��ng"
elseif w == 100 then
return "Tuy�t B�o ��ng"
elseif w == 160 then
return "Th�ch C� Tr�n"
elseif w == 161 then
return "Long M�n Tr�n"
elseif w == 11 then
return "��i L�"
elseif w == 166 then
return "Ki�m C�c Trung Nguy�n"
elseif w == 158 then
return "T�ng L�ng"
elseif w == 162 then
return "Ki�m C�c T�y Nam"
elseif w == 167 then
return "Th�c C��ng S�n"
elseif w == 164 then
return "D��c V��ng ��ng T�ng 1"
elseif w == 159 then
return "L�ng T�n Th�y Ho�ng"
elseif w == 165 then
return "�i�m Th��ng ��ng"
elseif w == 91 then
return "M� Cung K� Qu�n ��ng"
elseif w == 169 then
return "M�t Th�t Thi�u L�m"
elseif w == 171 then
return "Ho�nh S�n Ph�i"
elseif w == 172 then
return "Linh C�c ��ng"
elseif w == 174 then
return "D��c V��ng ��ng T�ng 2"
elseif w == 173 then
return "��i T� ��ng"









else
return "Ch�a ��t T�n"
end
end

ToaDoSatThu = {
-- 2x
{166,1611,3043,24,"Tr�c L�nh C�m"}, -- 1 
{166,1722,2753,24,"Ti�u Thi�n Ng�o"},
{158,2538,2642,24,"M�c Minh Ki�t"}, 
{158,2373,2531,24,"T�t V�u Ph�ng"},
{162,3419,3610,24,"L�c C�u U"},
{162,3214,4012,24,"B� Hi�u Tr�n"},
-- 3x
{167,1948,3291,34,"��o �o�t Thu"}, -- 7
{167,1710,2646,34,"X� B� ��ng"},
{164,1566,3230,34,"L��ng T� Nam"},
{164,1551,3259,34,"Tr�c Th�t Lang"},
{159,1526,3279,34,"Ki�u ��nh Thi�n"},
{159,1605,3361,34,"Tr�ng V� C�p "},
-- 4x
{41,2215,2878,44,"Du Th�n Giang"},
{41,1908,3113,44,"H� H�ng Phi"},
{8,1920,3364,44,"T�ng V� Phong"},
{41,2175,3030,44,"L� Th��ng Nh�n"},
{8,1944,3410,44,"Nh�m T�ng Ho�nh"},
{8,1985,3221,44,"H�n Khanh Long"},
-- 5x
{165,1472,3015,54,"M�nh ��p H�ng"}, -- 19
{165,1636,3021,54,"�n  T�c H�n"},
{91,1590,3136,54,"Ho�c Thanh S��ng"},
{91,1719,2768,54,"Mi�n T� ��o"},
{169,1873,3116,54,"Ti�u V�ng Du"},
{169,1688,3234,54,"Cao N�i Kho�t"},
-- 6x
{50,1506,3161,64,"U�ng  Th� Th�y"}, --25
{50,1718,3109,64,"Y�n L�u  Sanh"},
{50,1622,3002,64,"Tang Th��ng H�i"},
{171,1630,3156,64,"B� Th�p Tam"},
{171,1618,3307,64,"H�u  Kh�t Ki�m"},
{171,1501,3254,64,"H�u Y�n T�n"},
{172,1750,3113,64,"Thi�u Th�t S�t"},
{172,1724,3134,64,"Du V�n L� "},
{172,1598,3152,64,"C�u Du�n Sam"},
-- 7x
{174,1575,3177,74,"H�ng L�nh Ti"}, -- 34
{174,1466,3286,74,"T�o Nh�n  Ph�"},
{102,1700,3708,74,"Tr�nh Ph�c Ba"},
{102,1833,3396,74,"��ng An Khu�"},
{102,1693,3237,74,"�ng  Ti�u Phong"},
{102,1975,3630,74,"Th��ng Tri�u S��ng"},
{173,1551,3001,74,"Ph�ng Song D�c"},
{173,1632,3118,74,"Ph� Kh�u Tu"},
{173,1592,3242,74,"L�c Long Hi�n"},
-- 8x
{53,1493,3389,84,"Di�p �c Anh"}, -- 43
{53,1783,3287,84,"L�c Nh� Kim"},
{53,1791,2957,84,"M�c Nam Tr�c"},
{160,1477,3487,84,"T�n T� Du"},
{160,1807,2934,84,"C� V� Th��ng"},
{160,1435,3082,84,"Li�u T� Gia"},
{161,2192,4184,84,"Thi ��i Thi�u"},
{161,1818,4228,84,"T�n V�n B�u "},
{161,2157,4692,84,"��ng B�t Ph�c"},
-- 9x
{11,1796,3559,94,"T�  D�t Minh"},
{15,1784,3495,94,"Nh�m Th��ng Khung"},
{17,1750,3045,94,"Chi�m Ph�c V�n"},
{17,1853,3115,94,"Nh�c Th��ng C�n"},
{11,1319,3014,94,"Vi�n Thi�n Th�"},
{17,1747,3327,94,"Vu C�u  ��"},
{11,1842,3208,94,"D��ng Phong D�t"},
{17,1499,3378,94,"H� Sinh Vong"},
{15,1452,2972,94,"T�ng Ch� �an"},
{15,1832,3307,94,"V� Bi�n Th�nh"},
{15,1392,3503,94,"C� Th� ��ng"},
{11,1791,2986,94,"Gia C�t Kinh H�ng"},
}




function addboss()
for i=1,getn(ToaDoSatThu) do
		quai = AddNpc(1203 + i,ToaDoSatThu[i][4],SubWorldID2Idx(ToaDoSatThu[i][1]),ToaDoSatThu[i][2] * 32,ToaDoSatThu[i][3] * 32)
		SetNpcScript(quai, "\\script\\nvsatthu\\bossstdie.lua")
		SetNpcName(quai, ToaDoSatThu[i][5])
end
end

