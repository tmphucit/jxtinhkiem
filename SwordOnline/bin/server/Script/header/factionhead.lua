Include("\\script\\header\\taskid.lua")
Include("\\script\\header\\map_helper.lua")
Include("\\script\\npckhac\\hoanhson\\doccokiem.lua");

FACTION_INFO = {
	{0, "shaolin", 1, 72, "Hoan ngh�nh b�n gia nh�p Thi�u L�m, tr� th�nh T�o ��a t�ng! H�c ���c H�ng Long B�t V�, Kim Cang Ph�c Ma ", "Gia Nh�p Thi�u L�m ph�i, tr� th�nh T�o ��a t�ng"},
	{0, "tianwang", 3, 79, "Hoan ngh�nh b�n gia nh�p Thi�n V��ng bang! H�y kh�i ��u t� m�t ng��i Th� v�!", "Gia nh�p Thi�n V��ng Bang, tr� th�nh Th� V�"},
	{1, "tangmen", 3, 76, "Hoan ngh�nh b�n gia nh�p ���ng m�, tr� th�nh T�p d�ch! H�c ���c v� c�ng T�ch L�ch ��n", "Gia nh�p ���ng M�n, tr� th�nh T�p d�ch"},
	{1, "wudu", 2, 80, "Hoan ngh�nh b�n Gia nh�p Ng� ��c gi�o, tr� th�nh Ng� ��c ��ng T�! H�c ���c ��c Sa Ch��ng, Huy�t �ao ��c S�t.", "Gia nh�p Ng� ��c gi�o, tr� th�nh Ng� ��c ��ng T�"},
	{2, "emei", 1, 74, "Hoan ngh�nh b�n gia nh�p Nga Mi ph�i, tr� th�nh B� Y Ni. H�c ���c Nh�t Di�p Tri Thu, Phi�u Tuy�t Xuy�n V�n", "Gia nh�p Nga Mi Ph�i, tr� th�nh B� Y Ni"},
	{2, "cuiyan", 3, 77, "Hoan ngh�nh b�n gia nh�p Th�y Y�n m�n! Tr� th�nh Hoa T�. H�c ���c Phong Hoa Tuy�t Nguy�t, Phong Quy�n T�n Tuy�t", "Gia nh�p Th�y Y�n m�n, tr� th�nh Hoa T�"},
	{3, "gaibang", 1, 78, "Hoan ngh�nh b�n gia nh�p C�i bang, tr� th�nh �� t� kh�ng t�i! H�c ���c Ki�n Nh�n Th�n Th�, Di�n M�n Th�c B�t", "Gia nh�p C�i bang, tr� th�nh �� t� kh�ng t�i"},
	{3, "tianren", 2, 81, "Hoan ngh�nh b�n gia nh�p Thi�n nh�n gi�o, H�c ���c T�n D��ng Nh� Huy�t, ��n Ch� Li�t Di�m", "Gia nh�p Thi�n nh�n gi�o."},
	{4, "wudang", 1, 73, "Hoan ngh�n b�n gia nh�p V� �ang ph�i! H�y b�t ��u t� m�t ��o ��ng! H�c ���c v� c�ng N� L�i Ch�, Th��ng h�i Minh Nguy�t!", "Gia nh�p V� �ang ph�i, tr� th�nh ��o ��ng"},
	{4, "kunlun", 3, 75, "Hoan ngh�nh b�n gia nh�p C�n L�n ph�i! tr� th�nh Ph�t tr�n �� t�! H�c ���c H� Phong Ph�p, Cu�ng L�i Ch�n ��a", "Gia nh�p C�n L�n ph�i, tr� th�nh Ph�t Tr�n �� t�"},
	{2, "huashan", 3, 89, "Hoan ngh�nh b�n gia nh�p Hoa S�n ph�i tr� th�nh Th� ��ng! H�c ���c v� c�ng B�ch H�ng Qu�n Nh�t, Thanh Phong T�ng S�ng", "Gia nh�p Hoa S�n ph�i, tr� th�nh Th� ��ng"},
}

function gianhapmonphai(newfac)
	local nCurFac = newfac+1;
if check_yes(FACTION_INFO[nCurFac][1]) == 1 then
	SetFaction(FACTION_INFO[nCurFac][2])
	SetCamp(FACTION_INFO[nCurFac][3])
	SetCurCamp(FACTION_INFO[nCurFac][3])
	SetRank(FACTION_INFO[nCurFac][4])
	hockynang(nCurFac)
	Msg2Player(FACTION_INFO[nCurFac][5])
	Msg2Faction(""..GetName().." t� h�m nay gia nh�p "..GetFactionName()..", xin b�i ki�n c�c v� huynh t�! Mong c�c v� quan t�m ch� gi�o!") 
end
end;

function xuatsu()
	SetCamp(4);
	SetCurCamp(4);
	LeaveTeam();
	SetTask(TASK_DUNGCHUNG2,SetNumber(1,GetTask(TASK_DUNGCHUNG2),9,1));
	Msg2Faction(""..GetFactionName().." "..GetName().." th�nh t�i xu�t s�, b�i bi�t ch� v� ��ng m�n phi�u b�t giang h� ") 
end;

function sr2name(series)
	local nSeries = 0;
	if (series==nil) then
		nSeries = GetSeries();
	else
		nSeries = series;
	end;
	if (nSeries == 0) then
		return "<color=Metal>h� Kim<color>";
	elseif (nSeries == 1) then
		return "<color=Wood>h� M�c<color>";
	elseif (nSeries == 2) then
		return "<color=Water>h� Th�y<color>";
	elseif (nSeries == 3) then
		return "<color=Fire>h� H�a<color>";
	elseif (nSeries == 4) then
		return "<color=Earth>h� Th�<color>";
	else
		return "<color=White>V� H�<color>";
	end;
end

function trungphansumon()
	if GetTongFlag() > 0 then
		Talk(1,"", "Th�nh vi�n Bang h�i kh�ng th� tr�ng ph�n s� m�n")	
		return 0;
	end
	local nCurFac=GetFactionNo();
	if(nCurFac==-1) then return end;
	LeaveTeam();
	SetCamp(FACTION_INFO[nCurFac+1][3]);
	SetCurCamp(FACTION_INFO[nCurFac+1][3]);
	SetTask(TASK_DUNGCHUNG2,SetNumber(1,GetTask(TASK_DUNGCHUNG2),9,0));
end;

function check_yes(series)			-- ������ȷ����������ļ�顣������δ��Ӧ����
	if (GetSeries() ~= series) then
		Talk(1,"","Ng� h�nh c�a ng��i kh�c ng� h�nh "..sr2name(series).." v�i b�n ta!  ��n ��y l�m g�? H�y l�n di�n ��n h�c h�i �i!")
		return 0;
	end
	return 1;
end;

function hockynang(nCurFac)
	for i=1,getn(SKILLNORMAL[nCurFac]) do
    AddMagic(SKILLNORMAL[nCurFac][i][1],SKILLNORMAL[nCurFac][i][2])
	end
end;

function show_kynang90(nCurFac)
	local nTarFac = GetFactionNo()+1;
	if(nCurFac ~= nil) then
		nTarFac = nCurFac;
	end;
	local nskillcount = getn(SKILL90_ARRAY[nTarFac])
	if(GetLevel() < 80) then
		Talk(1,"",14576)
	return end
	local skilltab = {};
	local count = 1;
	for i=1,nskillcount do
		skilltab[count] = format(SKILL90_ARRAY[nTarFac][i][1].."/selskill(%d,%d)", i, nTarFac);
		count = count + 1;
	end
	if(count == 1) then
	return end
	skilltab[count] = "��ng/no";
	SayNew("Ng��i mu�n h�c k� n�ng n�o:",count,skilltab);
end;

function show_kynang150(nCurFac)
	local nTarFac = GetFactionNo()+1;
	if(nCurFac ~= nil) then
		nTarFac = nCurFac;
	end;
	local nskillcount = getn(SKILL150_ARRAY[nTarFac])
	if(GetLevel() < 80) then
		Talk(1,"",14576)
	return end
	local skilltab = {};
	local count = 1;
	for i=1,nskillcount do
		skilltab[count] = format(SKILL150_ARRAY[nTarFac][i][1].."/selskill(%d,%d)", i, nTarFac);
		count = count + 1;
	end
	if(count == 1) then
	return end
	skilltab[count] = "��ng/no";
	SayNew("Ng��i mu�n h�c k� n�ng n�o:",count,skilltab);
	
end;

function selskill(sel, nCurFac)
	if(HaveMagic(SKILL90_ARRAY[nCurFac][sel][2]) ~= -1) then
			Talk(1,"",15467)
	return end
	AddMagic(SKILL90_ARRAY[nCurFac][sel][2],SKILL90_ARRAY[nCurFac][sel][3]);
	local str = "B�n �� h�c ���c k� n�ng "..SKILL90_ARRAY[nCurFac][sel][1];
	Msg2Player(str);
end;

function no()
end;

SKILLNORMAL = {
[1]={--thieu lam
	{14	, 0}, ---Han Long Bat Vu
    {10	, 0}, --- Kim Cang Phuc Ma
    {4		, 0}, --- Thieu Lam Con Phap
    {6		, 0}, --- Thieu Lam Dao Phap
    {8		, 0}, --- Thieu Lam Quyen Phap
    {15	, 0}, --- Bat Dong Minh Vuong
    {16	, 0}, --- La Han Tran
    {20	, 0}, --- Su Tu Hong
    {271	, 0}, --- Long Trao ho trao
    {11	, 0}, --- Hoanh Tao Luc Hop
    {19	, 0}, --- Ma Ha Vo Luong
    {21	, 0}, --- Dich Can Kinh
    {273	, 0} --- Nhu Lai Thien Diep-Tran phai
},
[2]={--thien vuong
    {34, 0}, --- Kinh loi Tram
    {30, 0}, --- Hoi Phong Lac Nhan
    {29, 0}, --- Tram Long Quyet
    {24, 0}, --- Thien Vuong Dao phap
    {23, 0}, --- Thien Vuong Thuong phap
    {26, 0}, ---Thien Vuong Chuy phap
    {33, 0}, ---Tinh Tam Quyet
    {37, 0}, ---Bat Phong Tram
    {35, 0}, ---Duong Quang Tam Diep
    {31, 0}, ---Hang Van Quyet
    {40, 0}, ---Doan Hon Thich
    {42, 0}, ---Kim Chung Trao
    {32, 0}, --- Vo Tam Tram
    {41, 0}, --- Huyet Chien Bat Phuong
    {324, 0}, ---Thua Long Quyet
    {36	, 0} ---Thien Vuong Chien Y -Tran phai
},
[3]={--duong mon
    {45	, 0}, ---Phich Lich Don
    {347	, 0}, ---Dia Diem Hoa
    {43	, 0}, ---Duong Mon Am Khi
    {303	, 0}, ---Doc Thich Cot
    {50	, 0}, ---Truy Tam Tien
    {47	, 0}, ---Doat Hon Tieu
    {54	, 0}, ---Man Thien Hoa Vu
    {343	, 0}, ---Xuyen Tam Thich
    {345	, 0}, ---Han Bang Thich
    {349	, 0}, ---Loi Kich Thuat
    {249	, 0}, ---Tieu Ly Phi Dao
    {341	, 0}, ---Tan Hoa Tieu
    {58	, 0}, ---Thien La Dia Vong
    {48	, 0} ---Tam Nhan - tran phai
},
[4]={--ngu doc
    {63, 0}, ---Doc Sa Chuong
    {65, 0}, ---Huyet Dao Doc Sat
    {62, 0}, ---Ngu Doc Chuong Phap
    {60, 0}, ---Ngu Doc Dao phap
    {67, 0}, ---Cuu Thien Cuong Loi
    {70, 0}, ---Xich Diem Thuc Thien
    {66, 0}, ---Tap Nan Duoc kinh
    {68, 0}, ---U Minh Kho Lau
    {384,0}, ---Bach Doc Xuyen Tam
    {64	, 0}, ---Bang Lam Huyen Tinh
    {69	, 0}, ---Vo Hinh Doc
    {356	, 0}, ---Xuyen Y Pha Giap
    {73	, 0}, ---Van Co Thuc Tam
    {72	, 0}, ---Xuyen Tam Doc Thich
    {71	, 0}, ---Thien Cuong Dia Sat
    {74	, 0}, ---Chu Cap Thanh Minh
    {75	, 0} ---Ngu Doc Ky Kinh - tran phai
},
[5]={--nga my
    {85, 0}, ---Nhat Diep Tri Thu
    {80, 0}, --- Phieu Tuyet Xuyen Van
    {77, 0}, ---Nga My Kiem Phap
    {79, 0}, ---Nga My Chuong Phap
    {93, 0}, ---Tu Hang Pho Do
    {385,0}, ---Thoi Song Vong Nguyet
    {82, 0}, ---Tu Tuong Dong Quy
    {89, 0}, ---Mong Diep
    {86, 0}, ---Luu Thuy
    {92, 0}, ---Phat Tam Tu Huu
    {88, 0}, --- Bat Diet Bat Tuyet
    {91, 0}, --- Phat Quang Pho Chieu
    {282,0}, ---Thanh Am Phan Xuong
    {252,0} ---Phat Phap Vo Bien - tran phai
},
[6]={--thuy yen
    {99	, 0}, -- Phong Hoa Tuyet Nguyet
    {102	, 0}, -- Phong Quyen Tan Tuyet
    {95	, 0}, -- Thuy Yen Dao Phap
    {97	, 0}, -- Thuy Yen Song Dao
    {269	, 0}, -- Bang Tam Trai Anh
    {105	, 0}, -- Vu Da Le Hoa
    {113	, 0}, -- Phu Van Tan Tuyet
    {100	, 0},	-- Ho The Han Bang
    {109	, 0}, -- Tuyet Anh
    {108	, 0},	-- Muc Da Luu Tinh
    {111	, 0}, -- Bich Hai Trieu Sinh
    {114	, 0} -- Bang Cot Tuyet Tam - tran phai
},
[7]={--cai bang
    {122,0}, ---Kien Nhan Than Thu
    {119,0}, ---Dieu mon Thac Bat
    {116,0}, ---Cai Bang Chuong Phap
    {115,0}, ---Cai Bang Bong Phap
    {129,0}, ---Hoa Hiem Vi Di
    {274,0}, ---Giang Long Chuong
    {124,0}, ---Da Cau Tran (Da cau bong phap)
    {277,0}, ---Hoat Bat Luu Thu
    {128,0}, ---Khang Long Huu Hoi
    {125,0}, ---Bong Da Ac Cau
    {360,0}, ---Tieu Dieu Cong
    {130,0} ---Tuy Diep Cuong Vu -tran phai
},
[8]={--thien nhan
    {135,0}, ---Tan Duong Nhu Huyet
    {145,0}, ---Don Chi Liet Diem
    {132,0}, ---Thien Nhan Mau Phap
	{131,0}, ---Thien Nhan Dao Phap
	{136,0}, ---Hoa lien Phan Hoa
	{137,0}, ---Ao Anh Phi Ho
	{141,0}, ---Liet Hoa Tinh Thien
	{138,0}, ---Thoi Son Dien Hai
	{140,0}, ---Phi Hong Vo Tich
	{364,0}, ---Bi To Thanh Phong
	{143,0}, ---Lich Ma Doat Hon
	{142,0}, ---Thau Thien Hoan Nhat
	{148,0}, ---Ma Diem That Sat
	{150,0} ---Thien Ma Giai The -tran phai
},
[9]={--vo dang
	{153,0}, ---No Loi Chi
	{155,0}, ---Thuong Hai Minh Nguyet
	{152,0}, ---Vo Dang Quyen Phap
	{151,0},---Vo Dang Kiem Phap
	{159,0},---That Tinh Tran
	{164,0},---Bac Cap Nhi Phuc
	{158,0},---Kiem Phi Kinh Thien
	{160,0},---The Van Tung
	{157,0},---Toa Vong Vo Nga
	{165,0},---Vo Nga Vo Kiem
	{267,0},---Tam Hoan Thao Nguyet
	{166,0}---Thai Cuc Than Cong - tran phai
},
[10]={--con lon
	{169,0}, ---Ho Phong Phap
	{179,0},---Cuong Loi Chan Dia
	{167,0},---Con Lon Dao Phap
	{168,0},---Con Lon Kiem Phap
	{392,0},---Thuc Phuoc Chu
	{171,0},---Thanh Phong Phu
	{174,0},---Ki Ban Phu
	{178,0},---Nhat Khi Tam Thanh
	{172,0},---Thien Te Tan Loi
	{393,0},---Bac Minh Dao Hai
	{173,0},---Thien Thanh Dia Troc
	{175,0},---Khi Han Ngao Tuyet
	{181,0},---Khi Tam Phu
	{176,0},---Cuong Phong Sau Dien
	{90,  0},---Me Tung Ao Anh
	{182,0},---Ngu Loi Chanh Phap
	{275,0},---Suong Ngao Con Luan - tran phai
	{630,0}---Huyen Thien Vo cuc
}
};

SKILL90_ARRAY={
[1]={
	{"��t Ma �� Giang",318,1},
	{"Ho�nh T�o Thi�n Qu�n",319,1},
	{"V� T��ng Tr�m",321,1}
},
[2]={
	{"Ph� Thi�n Tr�m",322,1},
	{"Truy Tinh Tr�c Nguy�t",323,1},
	{"Truy Phong Quy�t",325,1}
},
[3]={
	{"Nhi�p H�n Nguy�t �nh",339,1},
	{"C�u Cung Phi Tinh",342,1},
	{"B�o V� L� Hoa",302,1},
	{"Lo�n Ho�n K�ch",351,0}
},
[4]={
	{"�m Phong Th�c C�t",353,1},
	{"Huy�n �m Tr�m",355,1},
	{"�o�n C�n H� C�t",390,0}
},
[5]={
	{"Tam Nga T� Tuy�t",328,1},
	{"Phong S��ng To�i �nh",380,1},
	{"Ph� �� Ch�ng Sinh",332,0}
},
[6]={
	{"B�ng Tung V� �nh",336,1},
	{"B�ng T�m Ti�n T�",337,1}
},
[7]={
	{"Phi Long T�i Thi�n",357,1},
	{"Thi�n H� V� C�u",359,1}
},
[8]={
	{"V�n Long K�ch",361,1},
	{"Thi�n Ngo�i L�u Tinh",362,1},
	{"Nhi�p H�n Lo�n T�m",391,0}
},
[9]={
	{"Thi�n ��a V� C�c",365,1},
	{"Nh�n Ki�m H�p Nh�t",368,1}
},
[10]={
	{"Ng�o Tuy�t Ti�u Phong",372,1},
	{"L�i ��ng C�u Thi�n",375,1},
	{"T�y Ti�n T� C�t",394,0}
}
};

SKILL120AR=
{
	709,708,710,711,712,713,714,715,716,717
};

SKILL150_ARRAY={
[1]={
	{"��i L�c Kim Cang Ch��ng",1055,1},
	{"Vi �� Hi�n X�",1056,1},
	{"Tam Gi�i Quy Thi�n",1057,1}
},
[2]={
	{"H�o H�ng Tr�m",1058,1},
	{"Tung Ho�nh B�t Hoang",1059,1},
	{"B� V��ng T�m Kim",1060,1}
},
[3]={
	{"V� �nh Xuy�n",1069,1},
	{"Thi�t Li�n T� S�t",1070,1},
	{"C�n Kh�n Nh�t Tr�ch",1071,1},
	{"T�ch L�ch Lo�n Ho�n K�ch",1110,0}
},
[4]={
	{"H�nh Ti�u C�t L�p",1066,1},
	{"U H�n Ph� �nh",1067,1},
},
[5]={
	{"Ki�m Hoa V�n Tinh",1061,1},
	{"B�ng V� L�c Tinh",1062,1},
},
[6]={
	{"B�ng T��c Ho�t K�",1063,1},
	{"B�ng Ng�ng H�n Y�n",1064,1}
},
[7]={
	{"Th�i Th�a L�c Long",1073,1},
	{"B�ng Hu�nh L��c ��a",1074,1}
},
[8]={
	{"Giang H�i N� Lan",1075,1},
	{"T�t H�a Li�u Nguy�n",1076,1},
},
[9]={
	{"T�o H�a Th�i Thanh",1078,1},
	{"Ki�m Th�y Tinh H�",1079,1}
},
[10]={
	{"C�u Thi�n C��ng Phong",1080,1},
	{"Thi�n L�i Ch�n Nh�c",1081,1},
}
};

FACTION_PROP={
{35,25,25,15},
{20,35,20,25},
{25,25,25,25},
{30,20,30,20},
{20,15,25,40}
};

SERIES_BASE={
{16,204,100},
{77,103,100},
{77,153,100},
{41,213,100},
{163,76,100}
};