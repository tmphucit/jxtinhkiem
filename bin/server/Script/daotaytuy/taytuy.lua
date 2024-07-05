
Include("\\script\\global\\sourcejx49.lua")
Include("\\script\\daotaytuy\\point.lua")


function timmonphai()
	if GetFaction() == "Thieu Lam Phai" then
	return 1
	elseif GetFaction() == "Thien Vuong Bang" then
	return 2
	elseif GetFaction() == "Duong Mon" then
	return 3
	elseif GetFaction() == "Ngu Doc Giao" then
	return 4
	elseif GetFaction() == "Nga My Phai" then
	return 5
	elseif GetFaction() == "Thuy Yen Mon" then
	return 6
	elseif GetFaction() == "Cai Bang" then
	return 7
	elseif GetFaction() == "Thien Nhan Giao" then
	return 8
	elseif GetFaction() == "Vo Dang Phai" then
	return 9
	elseif GetFaction() == "Con Lon Phai" then
	return 10
	end
end;
skills={
{"Thieu Lam",{"Dat Ma Do Giang",350},{"Hoanh Tao Luc Diep",351},{"Vo Tuong Tram",353},{"Dai Thua Nhu Lai",414}},
{"Thien Vuong",{"Pha Thien Tram",342},{"Truy Tinh Truc Nguyet",347},{"Truy Phong Quyet",345}},
{"Duong Mon",{"Nhiep Hon Nguyet Anh",355},{"Bao Vu Le Hoa",302},{"Cuu Cung Phi Tinh",358}},
{"Ngu Doc",{"Am Phong Thuc Cot",359},{"Huyen Am Tram",361}},
{"Nga My",{"Tam Nga Te Tuyet",374},{"Phong Suong Toai Anh",370}},
{"Thuy Yen",{"Bang Tung Vo Anh",377},{"Bang Tam Thien Tu",378}},
{"Cai Bang",{"Phi Long Tai Thien",362},{"Thien Ha Vo Cau",389}},
{"Thien Nhan",{"Van Long Kich",365},{"Thien Ngoai Luu Tinh",367}},
{"Vo Dang",{"Thien Dia Vo Cuc",382},{"Nhan Kiem Hop Nhat",380}},
{"Con Lon",{"Ngao Tuyet Tieu Phong",385},{"Loi Dong Cuu Thien",384}}
}


function SearchSkillFaction()
	if timmonphai() == 1 then
	return 350,351,353,414,0
	elseif timmonphai() == 2 then
	return 342,347,345,412,0
	elseif timmonphai() == 3 then
	return 355,302,358,416,0
	elseif timmonphai() == 4 then
	return 359,361,0,418,0
	elseif timmonphai() == 5 then
	return 374,370,0,420,0
	elseif timmonphai() == 6 then
	return 377,378,0,422,0
	elseif timmonphai() == 7 then
	return 362,389,0,424,0
	elseif timmonphai() == 8 then
	return 365,367,0,426,0
	elseif timmonphai() == 9 then
	return 382,380,0,428,0
	elseif timmonphai() == 10 then
	return 385,384,0,430,0
	end
end;

function main()
SayEx({"<color=red>Tay Tuy Dai Su <color>: Nguoi den tim ta co chuyen gi khong",
	"Ta Muon Tay Tuy./Tay",
	"Vao Tu Luyen Skills./tuluyen",
	"Roi Khoi Dao Tay Tuy./Out_step1",
	"Thoat./no"})
end;
function no()
end;
function tuluyen()
SayEx({"<color=red> Tay Tuy Dai Su <color>: Thi chu hay lua chon viec lam",
		"Tu Luyen./tuluyen1",
		"Dung Tu Luyen./dungtuluyen",
		"Thoat./no"})
end;

function tuluyen1()
if GetTask(TASKTULUYEN)  == 0 then
if timmonphai() == 1 or timmonphai() == 2 or timmonphai() == 3 then
SayEx({"<color=red>Tay Tuy Dai Su <color>: Thi chu hay lua chon ki nang can tu luyen",
	skills[timmonphai()][2][1].."/sk1",
	skills[timmonphai()][3][1].."/sk2",
	skills[timmonphai()][4][1].."/sk3",
	"Thoat/no"})
else
SayEx({"<color=blue>Tay Tuy Dai Su:<color> Thi chu hay lua chon ki nang can tu luyen",
		skills[timmonphai()][2][1].."/sk1",
		skills[timmonphai()][3][1].."/sk2",
		"Thoat/no"})
end
else
Talk(1,"","Ban dang trong giai doan <color=red> Tu Luyen Chanh Qua <color> khong the nhan nua duoc")
end
end;


function sk1()
a,b,c,d,e = SearchSkillFaction()
if HaveMagic(a) >= 1 then
	SetTask(TASKSKILL1,HaveMagic(a))
	SetTask(TASKSKILL2,HaveMagic(b))
	SetTask(TASKSKILL3,HaveMagic(c))
	SetTask(TASKSKILL4,HaveMagic(d))
	DelMagic(b)
	DelMagic(c)
	RollbackSkill()		
	UpdateSkill()
	p = GetRestSP()
	AddMagicPoint(-p)
	AddMagic(a,GetTask(TASKSKILL1))
	AddMagic(d,GetTask(TASKSKILL4))
	SetTask(TASKTULUYEN,1)
	vaotuluyen()
	Msg2Player("Ban da vao trang thai tu luyen Skill "..skills[timmonphai()][2][1].."!")
	KickOutSelf()
elseif HaveMagic(a) <= 0 then
	Talk(1,"","Ban khong co Ky Nang <color=red>"..skills[timmonphai()][2][1].."<color> de thuc hien tu luyen")
end
end;



function sk2()
a,b,c,d,e = SearchSkillFaction()
if HaveMagic(b) >= 1 then
	SetTask(TASKSKILL1,HaveMagic(a))
	SetTask(TASKSKILL2,HaveMagic(b))
	SetTask(TASKSKILL3,HaveMagic(c))
	SetTask(TASKSKILL4,HaveMagic(d))
	DelMagic(a)
	DelMagic(c)
	RollbackSkill()		
	UpdateSkill()
	p = GetRestSP()
	AddMagicPoint(-p)
	AddMagic(b,GetTask(TASKSKILL2))
	AddMagic(d,GetTask(TASKSKILL4))
	SetTask(TASKTULUYEN,2)
	vaotuluyen()
	Msg2Player("Ban da vao trang thai tu luyen Skill "..skills[timmonphai()][3][1].."!")
	KickOutSelf()
elseif HaveMagic(b) <= 0 then
	Talk(1,"","Ban khong co Ky Nang <color=red>"..skills[timmonphai()][3][1].."<color> de thuc hien tu luyen")
end
end;

function sk3()
a,b,c,d,e = SearchSkillFaction()
if HaveMagic(c) >= 1 then
	SetTask(TASKSKILL1,HaveMagic(a))
	SetTask(TASKSKILL2,HaveMagic(b))
	SetTask(TASKSKILL3,HaveMagic(c))
	SetTask(TASKSKILL4,HaveMagic(d))
	DelMagic(a)
	DelMagic(b)
	RollbackSkill()		
	UpdateSkill()
	p = GetRestSP()
	AddMagicPoint(-p)
	AddMagic(c,GetTask(TASKSKILL3))
	AddMagic(d,GetTask(TASKSKILL4))
	SetTask(TASKTULUYEN,3)
	vaotuluyen()
	Msg2Player("Ban da vao trang thai tu luyen Skill "..skills[timmonphai()][4][1].."!")
	KickOutSelf()
elseif HaveMagic(c) <= 0 then
	Talk(1,"","Ban khong co Ky Nang <color=red>"..skills[timmonphai()][4][1].."<color> de thuc hien tu luyen")
end
end;

function vaotuluyen()
SetFightState(1);
Msg2Player("Ban da vao trang thai chien dau !");
end;
function ratuluyen()
SetFightState(0);
SetTask(TASKTULUYEN,0)
SetTask(TASKSKILL1,0)
SetTask(TASKSKILL2,0)
SetTask(TASKSKILL3,0)
Msg2Player("Ban da vao trang thai phi chien dau !");
end;

function dungtuluyen()
if GetTask(TASKTULUYEN) == 1 then
	nhanskill1()
elseif GetTask(TASKTULUYEN) == 2 then
	nhanskill2()
elseif GetTask(TASKTULUYEN) == 3 then
	nhanskill3()
elseif GetTask(TASKTULUYEN) == 0 then
	Talk(1,""," Ban chua nhan tu luyen khong the dung duoc")
end
end;

function nhanskill1()
a,b,c,d,e = SearchSkillFaction()
if GetTask(TASKSKILL2) >= 1 and GetTask(TASKSKILL3) >= 1 then
	AddMagic(b,GetTask(TASKSKILL2))
	AddMagic(c,GetTask(TASKSKILL3))
	ratuluyen()
Msg2Player("Ban da hoan thanh viec tu luyen cua minh")
	KyNangClear()
elseif GetTask(TASKSKILL2) <= 0 and GetTask(TASKSKILL3) <= 0 then
	ratuluyen()
	Msg2Player("Ban da hoan thanh viec tu luyen cua minh")
	KyNangClear()
elseif GetTask(TASKSKILL2) <= 0 and GetTask(TASKSKILL3) >= 1 then
	AddMagic(c,GetTask(TASKSKILL3))
	ratuluyen()
Msg2Player("Ban da hoan thanh viec tu luyen cua minh")
	KyNangClear()
elseif GetTask(TASKSKILL2) >= 1 and GetTask(TASKSKILL3) <= 0 then
	AddMagic(b,GetTask(TASKSKILL2))
	ratuluyen()
Msg2Player("Ban da hoan thanh viec tu luyen cua minh")
	KyNangClear()
end
end;


function nhanskill2()
a,b,c,d,e = SearchSkillFaction()
if GetTask(TASKSKILL1) >= 1 and GetTask(TASKSKILL3) >= 1 then
	AddMagic(a,GetTask(TASKSKILL1))
	AddMagic(c,GetTask(TASKSKILL3))
	ratuluyen()
Msg2Player("Ban da hoan thanh viec tu luyen cua minh")
	KyNangClear()
elseif GetTask(TASKSKILL1) <= 0 and GetTask(TASKSKILL3) <= 0 then
	ratuluyen()
	Msg2Player("Ban da hoan thanh viec tu luyen cua minh")
	KyNangClear()
elseif GetTask(TASKSKILL1) <= 0 and GetTask(TASKSKILL3) >= 1 then
	AddMagic(c,GetTask(TASKSKILL3))
	ratuluyen()
Msg2Player("Ban da hoan thanh viec tu luyen cua minh")
	KyNangClear()
elseif GetTask(TASKSKILL1) >= 1 and GetTask(TASKSKILL3) <= 0 then
	AddMagic(a,GetTask(TASKSKILL1))
	ratuluyen()
Msg2Player("Ban da hoan thanh viec tu luyen cua minh")
	KyNangClear()
end
end;










function nhanskill3()
a,b,c,d,e = SearchSkillFaction()
if GetTask(TASKSKILL1) >= 1 and GetTask(TASKSKILL2) >= 1 then
	AddMagic(a,GetTask(TASKSKILL1))
	AddMagic(b,GetTask(TASKSKILL2))
	ratuluyen()
Msg2Player("Ban da hoan thanh viec tu luyen cua minh")
	KyNangClear()
elseif GetTask(TASKSKILL1) <= 0 and GetTask(TASKSKILL2) <= 0 then
	ratuluyen()
	Msg2Player("Ban da hoan thanh viec tu luyen cua minh")
	KyNangClear()
elseif GetTask(TASKSKILL1) <= 0 and GetTask(TASKSKILL2) >= 1 then
	AddMagic(b,GetTask(TASKSKILL2))
	ratuluyen()
Msg2Player("Ban da hoan thanh viec tu luyen cua minh")
	KyNangClear()
elseif GetTask(TASKSKILL1) >= 1 and GetTask(TASKSKILL2) <= 0 then
	AddMagic(a,GetTask(TASKSKILL1))
	ratuluyen()
Msg2Player("Ban da hoan thanh viec tu luyen cua minh")
	KyNangClear()
end
end;

	