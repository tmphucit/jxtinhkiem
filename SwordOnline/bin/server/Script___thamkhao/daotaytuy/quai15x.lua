Include("\\script\\Global\\sourcejx49.lua")


TASKSKILL = 200
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


UpSkillExp = {
	{1,100,100,200000},
	{2,200,200,400000},
	{3,500,500,600000},
	{4,800,800,800000},
	{5,1500,1500,1000000},
	{6,4000,4000,1200000},
	{7,5500,5500,1400000},
	{8,7000,7000,1600000},
	{9,14000,14000,1800000},
	{10,22000,22000,2000000},
	{11,30000,30000,2200000},
	{12,40000,40000,2400000},
	{13,80000,80000,2500000},
	{14,100000,100000,2600000},
	{15,130000,130000,2800000},
	{16,160000,160000,3000000},
	{17,190000,190000,3200000},
	{18,240000,240000,3400000},
	{19,280000,280000,4000000},
	{20,350000,350000,5000000},
	{21,450000,450000,5000000},
	{22,550000,550000,5000000},
	{23,650000,650000,5000000},
	{24,800000,800000,5000000},
	{25,900000,900000,5000000},
	{26,1000000,1000000,5000000},
	{27,1100000,1100000,5000000},
	{28,1200000,1200000,5000000},
	{29,1300000,1300000,5000000},
	{30,1400000,1400000,5000000},
}
function OnDeath()
a,b,c,d,e = SearchSkillFaction()
if GetTask(179) == 1 and HaveMagic(d) >= 1 then
CongEXP1()
TyLeExp1()
CongExpSkill1()
TyLePhanTramSkill12x()
elseif GetTask(179) == 2 and HaveMagic(d) >= 1 then
CongEXP2()
TyLeExp2()
CongExpSkill1()
TyLePhanTramSkill12x()
elseif GetTask(179) == 3 and HaveMagic(d) >= 1 then
CongEXP3()
TyLeExp3()
CongExpSkill1()
TyLePhanTramSkill12x()
elseif GetTask(179) == 1 then
CongEXP1()
TyLeExp1()
elseif GetTask(179) == 2 then
CongEXP2()
TyLeExp2()
elseif GetTask(179) == 3 then
CongEXP3()
TyLeExp3()
elseif GetTask(TASKSKILL) == 0 or GetTask(TASKSKILL) >= 4 then
Msg2Player("Ban phai o trong tu luyen moi biet duoc muc do luyen tap cua skill")
end
end;
function CongEXP1()
a,b,c,d,e = SearchSkillFaction()
if HaveMagic(a) >= 1 and HaveMagic(a) < 20 then
		SetTask(TaskSkillFaction9x1,GetTask(TaskSkillFaction9x1)+600)
		CheckUpLevelSkill9X1()
	elseif GetTask(TaskTrungSinh) < 2 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(a) >= 1 and HaveMagic(a) < 21 and GetTask(TaskTrungSinh) >= 2 then
		SetTask(TaskSkillFaction9x1,GetTask(TaskSkillFaction9x1)+600)
		CheckUpLevelSkill9X1()
	elseif GetTask(TaskTrungSinh) < 4 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(a) >= 1 and HaveMagic(a) < 22 and GetTask(TaskTrungSinh) >= 4 then
		SetTask(TaskSkillFaction9x1,GetTask(TaskSkillFaction9x1)+600)
		CheckUpLevelSkill9X1()
	elseif GetTask(TaskTrungSinh) < 6 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(a) >= 1 and HaveMagic(a) < 23 and GetTask(TaskTrungSinh) >= 6 then
		SetTask(TaskSkillFaction9x1,GetTask(TaskSkillFaction9x1)+600)
		CheckUpLevelSkill9X1()
	elseif GetTask(TaskTrungSinh) < 8 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(a) >= 1 and HaveMagic(a) < 24 and GetTask(TaskTrungSinh) >= 8 then
		SetTask(TaskSkillFaction9x1,GetTask(TaskSkillFaction9x1)+600)
		CheckUpLevelSkill9X1()
	elseif GetTask(TaskTrungSinh) < 10 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(a) >= 1 and HaveMagic(a) < 25 and GetTask(TaskTrungSinh) >= 10 then
		SetTask(TaskSkillFaction9x1,GetTask(TaskSkillFaction9x1)+600)
		CheckUpLevelSkill9X1()
	elseif GetTask(TaskTrungSinh) < 12 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(a) >= 1 and HaveMagic(a) < 26 and GetTask(TaskTrungSinh) >= 12 then
		SetTask(TaskSkillFaction9x1,GetTask(TaskSkillFaction9x1)+600)
		CheckUpLevelSkill9X1()
	elseif GetTask(TaskTrungSinh) < 14 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(a) >= 1 and HaveMagic(a) < 27 and GetTask(TaskTrungSinh) >= 14 then
		SetTask(TaskSkillFaction9x1,GetTask(TaskSkillFaction9x1)+600)
		CheckUpLevelSkill9X1()
	elseif GetTask(TaskTrungSinh) < 16 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(a) >= 1 and HaveMagic(a) < 28 and GetTask(TaskTrungSinh) >= 16 then
		SetTask(TaskSkillFaction9x1,GetTask(TaskSkillFaction9x1)+600)
		CheckUpLevelSkill9X1()
	elseif GetTask(TaskTrungSinh) < 18 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(a) >= 1 and HaveMagic(a) < 29 and GetTask(TaskTrungSinh) >= 18 then
		SetTask(TaskSkillFaction9x1,GetTask(TaskSkillFaction9x1)+600)
		CheckUpLevelSkill9X1()
	elseif GetTask(TaskTrungSinh) < 20 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(a) >= 1 and HaveMagic(a) < 30 and GetTask(TaskTrungSinh) >= 20 then
		SetTask(TaskSkillFaction9x1,GetTask(TaskSkillFaction9x1)+600)
		CheckUpLevelSkill9X1()
	elseif HaveMagic(a) == 30 then
		Msg2Player("Ky Nang cua ban dat den dang cap vo han. khong the luyen them nua.")
	else
		SetTask(TaskSkillFaction9x1,0)
	end
	end;
function CongEXP2()
a,b,c,d,e = SearchSkillFaction()
if HaveMagic(b) >= 1 and HaveMagic(b) < 20 then
		SetTask(TaskSkillFaction9x2,GetTask(TaskSkillFaction9x2)+600)
		CheckUpLevelSkill9X2()
	elseif GetTask(TaskTrungSinh) < 2 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(b) >= 1 and HaveMagic(b) < 21 and GetTask(TaskTrungSinh) >= 2 then
		SetTask(TaskSkillFaction9x2,GetTask(TaskSkillFaction9x2)+600)
		CheckUpLevelSkill9X2()
	elseif GetTask(TaskTrungSinh) < 4 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(b) >= 1 and HaveMagic(b) < 22 and GetTask(TaskTrungSinh) >= 4 then
		SetTask(TaskSkillFaction9x2,GetTask(TaskSkillFaction9x2)+600)
		CheckUpLevelSkill9X2()
	elseif GetTask(TaskTrungSinh) < 6 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(b) >= 1 and HaveMagic(b) < 23 and GetTask(TaskTrungSinh) >= 6 then
		SetTask(TaskSkillFaction9x2,GetTask(TaskSkillFaction9x2)+600)
		CheckUpLevelSkill9X2()
	elseif GetTask(TaskTrungSinh) < 8 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(b) >= 1 and HaveMagic(b) < 24 and GetTask(TaskTrungSinh) >= 8 then
		SetTask(TaskSkillFaction9x2,GetTask(TaskSkillFaction9x2)+600)
		CheckUpLevelSkill9X2()
	elseif GetTask(TaskTrungSinh) < 10 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(b) >= 1 and HaveMagic(b) < 25 and GetTask(TaskTrungSinh) >= 10 then
		SetTask(TaskSkillFaction9x2,GetTask(TaskSkillFaction9x2)+600)
		CheckUpLevelSkill9X2()
	elseif GetTask(TaskTrungSinh) < 12 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(b) >= 1 and HaveMagic(b) < 26 and GetTask(TaskTrungSinh) >= 12 then
		SetTask(TaskSkillFaction9x2,GetTask(TaskSkillFaction9x2)+600)
		CheckUpLevelSkill9X2()
	elseif GetTask(TaskTrungSinh) < 14 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(b) >= 1 and HaveMagic(b) < 27 and GetTask(TaskTrungSinh) >= 14 then
		SetTask(TaskSkillFaction9x2,GetTask(TaskSkillFaction9x2)+600)
		CheckUpLevelSkill9X2()
	elseif GetTask(TaskTrungSinh) < 16 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(b) >= 1 and HaveMagic(b) < 28 and GetTask(TaskTrungSinh) >= 16 then
		SetTask(TaskSkillFaction9x2,GetTask(TaskSkillFaction9x2)+600)
		CheckUpLevelSkill9X2()
	elseif GetTask(TaskTrungSinh) < 18 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(b) >= 1 and HaveMagic(b) < 29 and GetTask(TaskTrungSinh) >= 18 then
		SetTask(TaskSkillFaction9x2,GetTask(TaskSkillFaction9x2)+600)
		CheckUpLevelSkill9X2()
	elseif GetTask(TaskTrungSinh) < 20 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(b) >= 1 and HaveMagic(b) < 30 and GetTask(TaskTrungSinh) >= 20 then
		SetTask(TaskSkillFaction9x2,GetTask(TaskSkillFaction9x2)+600)
		CheckUpLevelSkill9X2()
	elseif HaveMagic(b) == 30 then
		Msg2Player("Ky Nang cua ban dat den dang cap vo han. khong the luyen them nua.")
	else
		SetTask(TaskSkillFaction9x2,0)
	end
end;
function CongEXP3()
a,b,c,d,e = SearchSkillFaction()
if HaveMagic(c) >= 1 and HaveMagic(c) < 20 then
		SetTask(TaskSkillFaction9x3,GetTask(TaskSkillFaction9x3)+600)
		CheckUpLevelSkill9X3()
	elseif GetTask(TaskTrungSinh) < 2 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(c) >= 1 and HaveMagic(c) < 21 and GetTask(TaskTrungSinh) >= 2 then
		SetTask(TaskSkillFaction9x3,GetTask(TaskSkillFaction9x3)+600)
		CheckUpLevelSkill9X3()
	elseif GetTask(TaskTrungSinh) < 4 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(c) >= 1 and HaveMagic(c) < 22 and GetTask(TaskTrungSinh) >= 4 then
		SetTask(TaskSkillFaction9x3,GetTask(TaskSkillFaction9x3)+600)
		CheckUpLevelSkill9X3()
	elseif GetTask(TaskTrungSinh) < 6 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(c) >= 1 and HaveMagic(c) < 23 and GetTask(TaskTrungSinh) >= 6 then
		SetTask(TaskSkillFaction9x3,GetTask(TaskSkillFaction9x3)+600)
		CheckUpLevelSkill9X3()
	elseif GetTask(TaskTrungSinh) < 8 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(c) >= 1 and HaveMagic(c) < 24 and GetTask(TaskTrungSinh) >= 8 then
		SetTask(TaskSkillFaction9x3,GetTask(TaskSkillFaction9x3)+600)
		CheckUpLevelSkill9X3()
	elseif GetTask(TaskTrungSinh) < 10 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(c) >= 1 and HaveMagic(c) < 25 and GetTask(TaskTrungSinh) >= 10 then
		SetTask(TaskSkillFaction9x3,GetTask(TaskSkillFaction9x3)+600)
		CheckUpLevelSkill9X3()
	elseif GetTask(TaskTrungSinh) < 12 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(c) >= 1 and HaveMagic(c) < 26 and GetTask(TaskTrungSinh) >= 12 then
		SetTask(TaskSkillFaction9x3,GetTask(TaskSkillFaction9x3)+600)
		CheckUpLevelSkill9X3()
	elseif GetTask(TaskTrungSinh) < 14 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(c) >= 1 and HaveMagic(c) < 27 and GetTask(TaskTrungSinh) >= 14 then
		SetTask(TaskSkillFaction9x3,GetTask(TaskSkillFaction9x3)+600)
		CheckUpLevelSkill9X3()
	elseif GetTask(TaskTrungSinh) < 16 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(c) >= 1 and HaveMagic(c) < 28 and GetTask(TaskTrungSinh) >= 16 then
		SetTask(TaskSkillFaction9x3,GetTask(TaskSkillFaction9x3)+600)
		CheckUpLevelSkill9X3()
	elseif GetTask(TaskTrungSinh) < 18 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(c) >= 1 and HaveMagic(c) < 29 and GetTask(TaskTrungSinh) >= 18 then
		SetTask(TaskSkillFaction9x3,GetTask(TaskSkillFaction9x3)+600)
		CheckUpLevelSkill9X3()
	elseif GetTask(TaskTrungSinh) < 20 then
		Msg2Player("Ky Nang cua ban da dat toi da,co gang trung sinh de duoc dat dang cap tiep theo.")
	elseif HaveMagic(c) >= 1 and HaveMagic(c) < 30 and GetTask(TaskTrungSinh) >= 20 then
		SetTask(TaskSkillFaction9x3,GetTask(TaskSkillFaction9x3)+600)
		CheckUpLevelSkill9X3()
	elseif HaveMagic(c) == 30 then
		Msg2Player("Ky Nang cua ban dat den dang cap vo han. khong the luyen them nua.")
	else
		SetTask(TaskSkillFaction9x3,0)
	end

end;

function CongExpSkill1()
a,b,c,d,e = SearchSkillFaction()
if HaveMagic(d) >= 1 and HaveMagic(d) < 20 then
		SetTask(TaskSkillFaction12x1,GetTask(TaskSkillFaction12x1)+400)
		CheckUpLevelSkill12X1()
	elseif HaveMagic(d) == 20 then
		Msg2Player("Ky Nang 120 cua ban da dat toi da")
	else
		SetTask(TaskSkillFaction12x1,0)
	end
end;


function CheckUpLevelSkill9X1()
a,b,c,d,e = SearchSkillFaction()
trap = HaveMagic(a)
xp = GetTask(TaskSkillFaction9x1)
	if trap < 30 then
		if xp >= UpSkillExp[trap][2] then
			AddMagic(a,trap+1)
			SetTask(TaskSkillFaction9x1,0)
	MsgEx("Ky Nang 90 cua ban thang den cap do "..HaveMagic(a).." cap")
		end
		else
		SetTask(TaskSkillFaction9x1,0)
	end
end;
function CheckUpLevelSkill9X2()
a,b,c,d,e = SearchSkillFaction()
trap = HaveMagic(b)
xp = GetTask(TaskSkillFaction9x2)
	if trap < 30 then
		if xp >= UpSkillExp[trap][2] then
			AddMagic(b,trap+1)
			SetTask(TaskSkillFaction9x2,0)
	MsgEx("Ky Nang 90 cua ban thang den cap do "..HaveMagic(b).." cap")
		end
		else
		SetTask(TaskSkillFaction9x2,0)
	end
end;	
function CheckUpLevelSkill9X3()
a,b,c,d,e = SearchSkillFaction()
trap = HaveMagic(c)
xp = GetTask(TaskSkillFaction9x3)
	if trap < 30 then
		if xp >= UpSkillExp[trap][2] then
			AddMagic(c,trap+1)
			SetTask(TaskSkillFaction9x3,0)
	MsgEx("Ky Nang 90 cua ban thang den cap do "..HaveMagic(c).." cap")
		end
		else
		SetTask(TaskSkillFaction9x3,0)
	end
end;	

function CheckUpLevelSkill12X1()
a,b,c,d,e = SearchSkillFaction()
trap = HaveMagic(d)
xp = GetTask(TaskSkillFaction12x1)
	if trap < 20 then
		if xp >= UpSkillExp[trap][3] then
			AddMagic(d,trap+1)
			SetTask(TaskSkillFaction12x1,0)
	MsgEx("Ky Nang 120 cua ban thang den cap do "..HaveMagic(d).." cap")
		end
		else
		SetTask(TaskSkillFaction12x1,0)
	end
end;

function TyLeExp1()
a,b,c,d,e = SearchSkillFaction()
	diem9x1 = GetTask(TaskSkillFaction9x1)
	trap9x1 = HaveMagic(a)
	diemup9x1 = UpSkillExp[trap9x1][2]
	tinhphantram1 = floor((diem9x1/diemup9x1)*100)
	phantram1 = floor((diem9x1/(diemup9x1*10))*100)
		if HaveMagic(a) == 30 then
		MsgEx("Ky Nang dat den cap do toi da.")
		else
		MsgEx("Muc Do Luyen Tap Hien Nay La: "..tinhphantram1.." ,"..phantram1.." %.")
		end
		end;
function TyLeExp2()
a,b,c,d,e = SearchSkillFaction()
	diem9x2 = GetTask(TaskSkillFaction9x2)
	trap9x2 = HaveMagic(b)
	diemup9x2 = UpSkillExp[trap9x2][2]
	tinhphantram2 = floor((diem9x2/diemup9x2)*100)
	phantram2 = floor((diem9x2/(diemup9x2*10))*100)
		if HaveMagic(b) == 30 then
		MsgEx("Ky Nang dat den cap do toi da.")
		else
		MsgEx("Muc Do Luyen Tap Hien Nay La: "..tinhphantram2.." ,"..phantram2.." %.")
		end
		end;
function TyLeExp3()
a,b,c,d,e = SearchSkillFaction()
	diem9x3 = GetTask(TaskSkillFaction9x3)
	trap9x3 = HaveMagic(c)
	diemup9x3 = UpSkillExp[trap9x3][2]
	tinhphantram3 = floor((diem9x3/diemup9x3)*100)
	phantram3 = floor((diem9x3/(diemup9x3*10))*100)
		if HaveMagic(c) == 30 then
		MsgEx("Ky Nang dat den cap do toi da.")
		else
		MsgEx("Muc Do Luyen Tap Hien Nay La: "..tinhphantram3.." ,"..phantram3.." %.")
		end
		end;


function TyLePhanTramSkill12x()
a,b,c,d,e = SearchSkillFaction()
	diem12x1 = GetTask(TaskSkillFaction12x1)
	trap1 = HaveMagic(d)
	diemup12x1 = UpSkillExp[trap1][2]
	tinhphantram3 = floor((diem12x1/diemup12x1)*100)
	phantram3 = floor((diem12x1/(diemup12x1*10))*100)
		if HaveMagic(d) == 20 then
		MsgEx("Ky Nang dat den cap do toi da.")
		else
		MsgEx("Muc Do Luyen Tap Ky Nang 120 hien nay La: "..tinhphantram3.." ,"..phantram3.." %.")
		end
		end;