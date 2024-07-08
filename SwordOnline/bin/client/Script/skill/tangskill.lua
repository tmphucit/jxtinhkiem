Include("\\script\\Global\\sourcejx49.lua");
skillskp={
{"Thieu Lam",{"Vo Tuong Tam",353},{"Dat Ma Do Giang",350},{"Hoanh Tao Thien Quan",351}},
{"Thien Vuong",{"Pha Thien Tram",342},{"Truy Tinh Truc Nguyet",347},{"Truy Phong Quyet",345}},
{"Duong Mon",{"Bao Vu Le Hoa",302},{"Nhiep Hon Nguyet Anh",355},{"Cuu Cung Phi Tinh",358}},
{"Ngu Doc",{"Am Phong Thuc Cot",359},{"Huyen Am Tram",361}},
{"Nga My",{"Tam Nga Te Tuyet",374},{"Phong Suong Toai Anh",370}},
{"Thuy Yen",{"Bang Tung Vo Anh",377},{"Bang Tam Thien Tu",378}},
{"Cai Bang",{"Phi Long Tai Thien",362},{"Thien Ha Vo Cau",389}},
{"Thien Nhan",{"Thien Ngoai Lieu Tinh",367},{"Van Long Kich",365}},
{"Vo Dang",{"Thien Dia Vo Cuc",382},{"Nhan Kiem Hop Nhat",380}},
{"Con Lon",{"Ngao Tuyet Khieu Phong",385},{"Loi Dong Cuu Thien",384}}
}
tableskillmp={
{14,10,8,4,6,15,16,20,271,11,19}, -- thieu lam
{34,30,29,26,23,24,33,37,35,31,40,42,36,32,41,325}, -- Thien vuong
{45,43,50,54,47,48,249,58,357,399}, -- Duong mon
{63,65,62,60,68,333,69,73,75,71,74,327}, -- Ngu Doc
{85,80,77,79,93,334,82,252,88,91,291}, -- Nga My
{99,102,95,97,269,105,113,100,109,114,108,111}, -- Thuy Yen
{122,119,116,115,129,274,124,277,128,125,130,335}, -- Cai Bang
{135,145,132,131,141,138,150,142,148,328}, -- Thieen Nhan
{153,155,152,151,159,164,158,160,157,166,165,267}, -- Vo Dang
{169,179,167,168,178,176,275,182,337,329} -- Con Lon
}
function tangkill9x()
	SayEx({"<color=blue>Npc ADMIN:<color> Khoi khuc skill mon phai ?<color>",
		"Xoa Skills/delski",
		"Tat nhien Add skill chu/kpski",
		"Khong add skill!/no"});
end;
function ktmp()
player_Faction = GetFaction()
if (player_Faction == "´äÑÌÃÅ") then 
mp = 6
elseif (player_Faction == "Îå¶¾½Ì") then
mp = 4
elseif (player_Faction == "ÌìÍõ°ï") then
mp = 2
elseif (player_Faction == "ÉÙÁÖÅÉ") then
mp = 1
elseif (player_Faction == "Îäµ±ÅÉ") then
mp = 9
elseif (player_Faction == "ÌìÈÌ½Ì") then
mp = 8
elseif (player_Faction == "ÌÆÃÅ") then
mp = 3
elseif (player_Faction == "À¥ÂØÅÉ") then
mp = 10
elseif (player_Faction == "¶ëáÒÅÉ") then
mp = 5
elseif (player_Faction == "Ø¤°ï") then
mp = 7
else
mp = -1
end
return mp
end;
function no()
end;
function delski()
	for ii=3,500 do
		DelMagic(ii)
	end
	KickOutSelf()
end
function kpski()
	ktmp()
	id1 = getn(skillskp[mp])
	sayski = "Skill thuong./kpski1"
	sayski1 = skillskp[mp][2][1].."/thuchienrbski"
	sayski2 = skillskp[mp][3][1].."/thuchienrbski1"
	if id1 >= 4 then
		sayski3 = skillskp[mp][4][1].."/thuchienrbski2"
	end
	if id1 <= 3 then
		SayEx({"<color=blue>Npc ADMIN:<color> Ban muon toi khoi phuc skill nao ?<color>",sayski,sayski1,sayski2,"Thoi de lan sau./no"});
	else
		SayEx({"<color=blue>Npc ADMIN:<color> Ban muon toi khoi phuc skill nao ?<color>",sayski,sayski1,sayski2,sayski3,"Thoi de lan sau./no"});
	end
end;
function kpski1()
	ktmp()
	if (mp ~= -1) then
		if mp == 1 then --Thieu Lam Phai
			Addtl()
		elseif mp == 2 then --Thien Vuong Bang
			Addtv()
		elseif mp == 3 then --Duong Mon
			Adddmp()
		elseif mp == 4 then --Ngu Doc Giao
			Addndp()
		elseif mp == 5 then --Nga My Phai
			Addnmp()
		elseif mp == 6 then --Thuy Yen Mon
			Addtyp()
		elseif mp == 7 then --Cai Bang
			Addcbp()
		elseif mp == 8 then --Thien Nhan Giao
			Addtnp()
		elseif mp == 9 then --Vo Dang Phai
			Addvdp()
		elseif mp == 10 then --Con Lon Phai
			Addclp()
		end
	else
		MsgEx("Xin loi! Ban hay gia nhap mon phai di, roi den gap ta.")
	end
end;

function Addtl()
	local id = getn(tableskillmp[mp])
	for ii=1,id do
		if (HaveMagic(tableskillmp[mp][ii]) == -1) then
			AddMagic(tableskillmp[mp][ii],20)
		end
	end
	KickOutSelf()
	MsgEx("Ban da dc khoi phuc skill thanh cong.")
end;
function Addtv()
	local id = getn(tableskillmp[mp])
	for ii=1,id do
		if (HaveMagic(tableskillmp[mp][ii]) == -1) then
			AddMagic(tableskillmp[mp][ii],20)
		end
	end
	KickOutSelf()
	MsgEx("Ban da dc khoi phuc skill thanh cong.")
end
function Adddmp()
	local id = getn(tableskillmp[mp])
	for ii=1,id do
		if (HaveMagic(tableskillmp[mp][ii]) == -1) then
			AddMagic(tableskillmp[mp][ii],20)
		end
	end
	KickOutSelf()
	MsgEx("Ban da dc khoi phuc skill thanh cong.")
end;
function Addndp()

	local id = getn(tableskillmp[mp])
	for ii=1,id do
		if (HaveMagic(tableskillmp[mp][ii]) == -1) then
			AddMagic(tableskillmp[mp][ii],20)
		end
	end
	KickOutSelf()
	MsgEx("Ban da dc khoi phuc skill thanh cong.")
end;
function Addnmp()
	local id = getn(tableskillmp[mp])
	for ii=1,id do
		if (HaveMagic(tableskillmp[mp][ii]) == -1) then
			AddMagic(tableskillmp[mp][ii],20)
		end
	end
	KickOutSelf()
	MsgEx("Ban da dc khoi phuc skill thanh cong.")
end;
function Addtyp()
	local id = getn(tableskillmp[mp])
	for ii=1,id do
		if (HaveMagic(tableskillmp[mp][ii]) == -1) then
			AddMagic(tableskillmp[mp][ii],20)
		end
	end
	KickOutSelf()
	MsgEx("Ban da dc khoi phuc skill thanh cong.")
end;
function Addcbp()

	local id = getn(tableskillmp[mp])
	for ii=1,id do
		if (HaveMagic(tableskillmp[mp][ii]) == -1) then
			AddMagic(tableskillmp[mp][ii],20)
		end
	end
	KickOutSelf()
	MsgEx("Ban da dc khoi phuc skill thanh cong.")
end;
function Addtnp()
	local id = getn(tableskillmp[mp])
	for ii=1,id do
		if (HaveMagic(tableskillmp[mp][ii]) == -1) then
			AddMagic(tableskillmp[mp][ii],20)
		end
	end
	KickOutSelf()
	MsgEx("Ban da dc khoi phuc skill thanh cong.")
end;
function Addvdp()
	local id = getn(tableskillmp[mp])
	for ii=1,id do
		if (HaveMagic(tableskillmp[mp][ii]) == -1) then
			AddMagic(tableskillmp[mp][ii],20)
		end
	end
	KickOutSelf()
	MsgEx("Ban da dc khoi phuc skill thanh cong.")
end;
function Addclp()
	local id = getn(tableskillmp[mp])
	for ii=1,id do
		if (HaveMagic(tableskillmp[mp][ii]) == -1) then
			AddMagic(tableskillmp[mp][ii],20)
		end
	end
	KickOutSelf()
	MsgEx("Ban da dc khoi phuc skill thanh cong.")
end;
function thuchienrbski()
	if GetLevel() >= 90 then
		if (HaveMagic(skillskp[mp][2][2]) >= 1) then
			AddMagic(skillskp[mp][2][2],20)
			KickOutSelf()
			MsgEx("Ban da dc khoi phuc skill "..skillskp[mp][2][1].." thanh cong.")
		else
			MsgEx("Nguoi co mat dau ma bao ta add. Dung la do luu manh...")
		end
	else
		MsgEx("Nguoi hay dat den dang cap 90 di da roi hay den gap ta. Tam thoi ta chua truyen cho nguoi dc.")
	end
end;
function thuchienrbski1()
	if GetLevel() >= 90 then
		if (HaveMagic(skillskp[mp][3][2]) >= 1) then
			AddMagic(skillskp[mp][3][2],20)
			KickOutSelf()
			MsgEx("Ban da dc khoi phuc skill "..skillskp[mp][3][1].." thanh cong.")
		else
			MsgEx("Nguoi co mat dau ma bao ta add. Dung la do luu manh...")
		end
	else
		MsgEx("Nguoi hay dat den dang cap 90 di da roi hay den gap ta. Tam thoi ta chua truyen cho nguoi dc.")
	end
end;
function thuchienrbski2()
	if GetLevel() >= 90 then
		if (HaveMagic(skillskp[mp][4][2]) >= 1) then
			AddMagic(skillskp[mp][4][2],20)
			KickOutSelf()
			MsgEx("Ban da dc khoi phuc skill "..skillskp[mp][4][1].." thanh cong.")
		else
			MsgEx("Nguoi co mat dau ma bao ta add. Dung la do luu manh...")
		end
	else
		MsgEx("Nguoi hay dat den dang cap 90 di da roi hay den gap ta. Tam thoi ta chua truyen cho nguoi dc.")
	end
end;