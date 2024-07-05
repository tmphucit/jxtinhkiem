Include("\\Script\\global\\sourcejx49.lua");

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

EXPSKILL = {
{140,20},	--2x
{19,20},		--2x
{90,30},	--3x
{22,30},	--3x
{41,40},	--4x
{91,40},	--4x
{24,50},	--5x
{42,50},	--5x
{56,60},	--6x
{68,60},	--6x
{72,500},	--7x
{55,500},	--7x
{10,800},	--8x
{69,800},	--8x
{4,900},	--9x
{5,900},	--9x
{8,1000},	--10x
{23,1000},	--10x
{38,1500},	--11x
{50,1500},	--11x
{39,2000},	--12x
{76,2000},	--12x
{40,3000},	--13x
{93,3000},	--13x
{75,4000},	--14x
{94,4000},	--14x
{2,5000},	--15x
{6,5000},	--15x
{9,7000},	--16x
{83,7000},	--16x
{16,10000},	--17x
{875,10000},	--17x
{92,12000},	--18x
{70,12000},	--18x
{74,15000},	--19x
{21,15000},	--19x
}

function SearchSkillFaction()
	if timmonphai() == 1 then
	return 318,319,321,256,419
	elseif timmonphai() == 2 then
	return 322,323,325,257,420
	elseif timmonphai() == 3 then
	return 339,302,342,258,421
	elseif timmonphai() == 4 then
	return 353,355,0,259,422
	elseif timmonphai() == 5 then
	return 328,380,0,260,423
	elseif timmonphai() == 6 then
	return 336,337,0,261,424
	elseif timmonphai() == 7 then
	return 357,359,0,262,425
	elseif timmonphai() == 8 then
	return 361,362,0,263,426
	elseif timmonphai() == 9 then
	return 365,368,0,264,427
	elseif timmonphai() == 10 then
	return 372,375,0,265,428
	end
end;

function GetExpSkill()
W,X,Y = GetWorldPos()
	for i = 1,getn(EXPSKILL) do
		if W == EXPSKILL[i][1] then
		CongExpSkill9X(EXPSKILL[i][2])
		CongExpSkill12X(EXPSKILL[i][2])
		CongExpSkill15X(EXPSKILL[i][2])
		end
	end
end;

function CongExpSkill9X(diem)
a,b,c,d,e = SearchSkillFaction()
	if HaveMagic(a) >= 1 and HaveMagic(a) < 20 then
		SetTask(TaskSkillFaction1,GetTask(TaskSkillFaction1)+diem)
		CheckUpLevelSkill9X()
	else
	SetTask(TaskSkillFaction1,0)
	end
end;

function CongExpSkill12X(diem1)
a,b,c,d,e = SearchSkillFaction()
	if HaveMagic(d) >= 1 and HaveMagic(d) < 20 then
		SetTask(TaskSkillFaction2,GetTask(TaskSkillFaction2)+diem1)
		CheckUpLevelSkill12X()
	else
	SetTask(TaskSkillFaction2,0)
	end
end;

function CongExpSkill15X(diem2)
a,b,c,d,e = SearchSkillFaction()
	if HaveMagic(e) >= 1 and HaveMagic(e) < 20 then
		SetTask(TaskSkillFaction3,GetTask(TaskSkillFaction3)+diem2)
		CheckUpLevelSkill15X()
	else
	SetTask(TaskSkillFaction3,0)
	end
end;


UpSkillExp = {
	{1,80000,100000,200000},
	{2,90000,120000,400000},
	{3,100000,130000,600000},
	{4,110000,140000,800000},
	{5,120000,150000,1000000},
	{6,130000,160000,1200000},
	{7,140000,170000,1400000},
	{8,150000,180000,1600000},
	{9,160000,190000,1800000},
	{10,180000,200000,2000000},
	{11,220000,400000,2200000},
	{12,230000,600000,2400000},
	{13,240000,800000,2500000},
	{14,250000,900000,2600000},
	{15,300000,1000000,2800000},
	{16,400000,1200000,3000000},
	{17,500000,1300000,3200000},
	{18,600000,1400000,3400000},
	{19,800000,1600000,4000000},
	{20,1000000,1800000,5000000},
}


function CheckUpLevelSkill9X()
a,b,c,d,e = SearchSkillFaction()
trap = HaveMagic(a)
xpskill = GetTask(TaskSkillFaction1)
	if trap < 20 then
		if xpskill >= UpSkillExp[trap][2] then
			AddMagic(a,trap+1)
			AddMagic(b,trap+1)
			if c ~= 0 then
			AddMagic(c,trap+1)
			end
			SetTask(TaskSkillFaction1,0)
			MsgEx("Ky Nang 90 cua ban da thang len dang cap "..HaveMagic(a)..".")
		end
	else
	SetTask(TaskSkillFaction1,0)
	end
end;

function CheckUpLevelSkill12X()
a,b,c,d,e = SearchSkillFaction()
trap = HaveMagic(d)
xpskill2 = GetTask(TaskSkillFaction2)
	if trap < 20 then
		if xpskill2 >= UpSkillExp[trap][3] then
			AddMagic(d,trap+1)
			SetTask(TaskSkillFaction2,0)
			MsgEx("Ky Nang 120 cua ban da thang len dang cap "..HaveMagic(d)..".")
		end
	else
	SetTask(TaskSkillFaction2,0)
	end
end;

function CheckUpLevelSkill15X()
a,b,c,d,e = SearchSkillFaction()
trap = HaveMagic(e)
xpskill3 = GetTask(TaskSkillFaction3)
	if trap < 20 then
		if xpskill3 >= UpSkillExp[trap][4] then
			AddMagic(e,trap+1)
			SetTask(TaskSkillFaction3,0)
			MsgEx("Ky Nang 150 cua ban da thang len dang cap "..HaveMagic(e)..".")
		end
	else
	SetTask(TaskSkillFaction3,0)
	end
end;

function TyLePhanTramSkill(level)
a,b,c,d,e = SearchSkillFaction()
	if level == 90 then
	diem9x = GetTask(TaskSkillFaction1)
	trap9x = HaveMagic(a)
	diemup9x = UpSkillExp[trap9x][2]
	tinhphantram = floor((diem9x/diemup9x)*100)
	phantram = floor((diem9x/(diemup9x*10))*100)
		if HaveMagic(a) == 20 then
		MsgEx("Ky Nang dat den cap do toi da.")
		else
		MsgEx("Muc Do Luyen Tap Hien Nay La: "..tinhphantram.." ,"..phantram.." %.")
		end
	elseif level == 120 then
	diem12x = GetTask(TaskSkillFaction2)
	trap12x = HaveMagic(d)
	diemup12x = UpSkillExp[trap12x][3]
	tinhphantram1 = floor((diem12x/diemup12x)*100)
	phantram1 = floor((diem12x/(diemup12x*10))*100)
		if HaveMagic(d) == 20 then
		MsgEx("Ky Nang dat den cap do toi da.")
		else
		MsgEx("Muc Do Luyen Tap Hien Nay La: "..tinhphantram1.." ,"..phantram1.." %.")
		end
	elseif level == 150 then
	diem15x = GetTask(TaskSkillFaction3)
	trap15x = HaveMagic(e)
	diemup15x = UpSkillExp[trap15x][4]
	tinhphantram2 = floor((diem15x/diemup15x)*100)
	phantram2 = floor((diem15x/(diemup15x*10))*100)
		if HaveMagic(e) == 20 then
		MsgEx("Ky Nang dat den cap do toi da.")
		else
		MsgEx("Muc Do Luyen Tap Hien Nay La: "..tinhphantram2.." ,"..phantram2.." %.")
		end
	end
end;








