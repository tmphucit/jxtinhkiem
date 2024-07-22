Include("\\Script\\global\\sourcejx49.lua");


function JoinFaction(id,task)
if id == 1 then
ThieuLam(task)
elseif id == 2 then
ThienVuong(task)
elseif id == 3 then
DuongMon(task)
elseif id == 4 then
NguDoc(task)
elseif id == 5 then
NgaMi(task)
elseif id == 6 then
ThuyYen(task)
elseif id == 7 then
CaiBang(task)
elseif id == 8 then
ThienNhan(task)
elseif id == 9 then
VoDang(task)
elseif id == 10 then
ConLon(task)
end
end;


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
	else
	return 0
	end
end;



function NguHanh()
nguhanh = GetSeries()
if nguhanh == 0 then
return "He Kim"
elseif nguhanh == 1 then
return "He Moc"
elseif nguhanh == 2 then
return "He Thuy"
elseif nguhanh == 3 then
return "He Hoa"
elseif nguhanh == 4 then
return "He Tho"
elseif nguhanh > 4 then
return "Vo He"
end
end;


function ThieuLam(task)
if NguHanh() == "He Kim" then
SetFaction("Thieu Lam Phai")
SetCamp(1)
SetCurCamp(1)

LearnSkillFaction(task)
else
Talk(1,"","B�n thu�c "..NguHanh().." kh�ng th�ch h�p gia nh�p m�n ph�i n�y...")
end
end;

function ThienVuong(task)
if NguHanh() == "He Kim" then
	SetFaction("Thien Vuong Bang")
	SetCamp(3)
	SetCurCamp(3)

	LearnSkillFaction(task)
else
Talk(1,"","B�n thu�c "..NguHanh().." kh�ng th�ch h�p gia nh�p m�n ph�i n�y...")
end
end;

function DuongMon(task)
if NguHanh() == "He Moc" then
	SetFaction("Duong Mon")
	SetCamp(3)
	SetCurCamp(3)

	LearnSkillFaction(task)
else
Talk(1,"","B�n thu�c "..NguHanh().." kh�ng th�ch h�p gia nh�p m�n ph�i n�y...")
end
end;

function NguDoc(task)
if NguHanh() == "He Moc" then
	SetFaction("Ngu Doc Giao")       
	SetCamp(2)
	SetCurCamp(2)

	LearnSkillFaction(task)
else
Talk(1,"","B�n thu�c "..NguHanh().." kh�ng th�ch h�p gia nh�p m�n ph�i n�y...")
end
end;

function NgaMi(task)
if NguHanh() == "He Thuy" then
	SetFaction("Nga My Phai")
	SetCamp(1)
	SetCurCamp(1)

	LearnSkillFaction(task)
else
Talk(1,"","B�n thu�c "..NguHanh().." kh�ng th�ch h�p gia nh�p m�n ph�i n�y...")
end
end;

function ThuyYen(task)
if NguHanh() == "He Thuy" then
	SetFaction("Thuy Yen Mon")
	SetCamp(3)
	SetCurCamp(3)

	LearnSkillFaction(task)
else
Talk(1,"","B�n thu�c "..NguHanh().." kh�ng th�ch h�p gia nh�p m�n ph�i n�y...")
end
end;

function CaiBang(task)
if NguHanh() == "He Hoa" then
	SetFaction("Cai Bang")
	SetCamp(1)
	SetCurCamp(1)

	LearnSkillFaction(task)
else
Talk(1,"","B�n thu�c "..NguHanh().." kh�ng th�ch h�p gia nh�p m�n ph�i n�y...")
end
end;

function ThienNhan(task)
if NguHanh() == "He Hoa" then
	SetFaction("Thien Nhan Giao")
	SetCamp(2)
	SetCurCamp(2)

	LearnSkillFaction(task)
else
Talk(1,"","B�n thu�c "..NguHanh().." kh�ng th�ch h�p gia nh�p m�n ph�i n�y...")
end
end;

function VoDang(task)
if NguHanh() == "He Tho" then
	SetFaction("Vo Dang Phai")
	SetCamp(1)
	SetCurCamp(1)

	LearnSkillFaction(task)
else
Talk(1,"","B�n thu�c "..NguHanh().." kh�ng th�ch h�p gia nh�p m�n ph�i n�y...")
end
end;

function ConLon(task)
if NguHanh() == "He Tho" then
	SetFaction("Con Lon Phai")
	SetCamp(3)
	SetCurCamp(3)
	LearnSkillFaction(task)
else
Talk(1,"","B�n thu�c "..NguHanh().." kh�ng th�ch h�p gia nh�p m�n ph�i n�y...")
end
end;



function LearnSkillFaction(task)
AddMagic(210,1)
yourfaction={{"Thieu Lam Phai","sl"},{"Thien Vuong Bang","tw"},{"Duong Mon","tm"},{"Ngu Doc Giao","wu"},{"Nga My Phai","em"},{"Thuy Yen Mon","cy"},{"Cai Bang","gb"},{"Thien Nhan Giao","tr"},{"Vo Dang Phai","wd"},{"Con Lon Phai","kl"}}
player_faction = GetFaction()
level_list={1,10,20,30,40,50,60,80}
local skillMap ={
		tt={
			{210,1,3}
		},
		sl={
			{14,0,1,"H�ng Long B�t V�"},
			{10,0,1,"Kim Cang Ph�c Ma"},
			{8,0,10,"Thi�u L�m Quy�n Ph�p"},
			{4,0,10,"Thi�u L�m C�n Ph�i"},
			{6,0,10,"Thi�u L�m �ao Ph�p"},
			{15,0,20,"B�t ��ng Minh V��ng"},
			{16,0,30,"La H�n Tr�n"},
			{20,0,40,"S� T� H�ng"},
			{271,0,50,"Long Tr�o H� Tr�o"},
			{11,0,50,"Ho�nh T�o L�c H�p"},
			{19,0,50,"Ma Ha V� L��ng"},
			{273,0,60,"D�ch C�n Kinh"},
			{21,0,60,"Nh� Lai Thi�n �i�p"},
			{350,1,80,"��t Ma �� Giang"},
			{351,1,80,"Ho�nh T�o Thi�n Qu�n"},
			{353,1,80,"V� T��ng Tr�m"},
			
		},
		tw={
			{34,0,1,"Kinh L�i Tr�m"},
			{30,0,1,"H�i Phong L�c Nh�n"},
			{29,0,1,"Tr�m Long Quy�t"},
			{26,0,10,"Thi�n V��ng �ao Ph�p"},
			{23,0,10,"Thi�n V��ng Th��ng Ph�p"},
			{24,0,10,"Thi�n V��ng Ch�y Ph�p"},
			{33,0,20,"T�nh T�m Quy�t"},
			{37,0,30,"B�t Phong Tr�m"},
			{35,0,30,"D��ng Quang Tam �i�p"},
			{31,0,30,"H�ng V�n Quy�t"},
			{40,0,40,"�o�n H�n Th�ch"},
			{42,0,50,"Kim Chung Tr�o"},
			{36,0,60,"V� T�m Tr�m"},
			{32,0,60,"Huy�t Chi�n B�t Ph��ng"},
			{41,0,60,"Th�a Long Quy�t"},
			{325,0,60,"Thi�n V��ng Chi�n � "},
			{342,1,80,"Ph� Thi�n Tr�m"},
			{347,1,80,"Truy Tinh Tr�c Nguy�t"},
			{345,1,80,"Truy Phong Quy�t"},
		},
		em={
			{85,0,1,"Nh�t Di�p Tri Thu"},
			{80,0,1,"Phi�u Tuy�t Xuy�n V�n"},
			{77,0,10,"Nga My Ki�m Ph�p"},
			{79,0,10,"Nga My Ch��ng"},
			{93,0,20,"T� H�ng Ph� ��"},
			{334,0,30,"Th�i Song V�ng Nguy�t"},
			{82,0,30,"T� T��ng ��ng Quy"},
			{89,0,30,"M�ng �i�p"},
			{86,0,40,"L�u Th�y"},
			{92,0,50,"Ph�t T�m T� H�u"},
			{252,0,60,"Ph�t Ph�p V� Bi�n"},
			{88,0,60,"B�t Di�t B�t Tuy�t"},
			{91,0,60,"Ph�t Quang Ph� Chi�u"},
			{282,0,60,"Thanh �m Ph�n X��ng"},
			{374,1,80,"Tam Nga T� Tuy�t"},
			{370,1,80,"Phong S��ng To�i �nh"},
			{291,0,80,"Ph� �� Ch�ng Sinh"}
		},
		cy={
			{99,0,1,"Phong Hoa Tuy�t Nguy�t"},
			{102,0,1,"Phong Quy�n T�n Tuy�t"},
			{95,0,10,"Th�y Y�n �ao Ph�p"},
			{97,0,10,"Th�y Y�n Song �ao"},
			{269,0,20,"B�ng T�m Tr�i �nh"},
			{105,0,30,"V� �� L� Hoa"},
			{113,0,30,"Ph� V�n T�n Tuy�t"},
			{100,0,40,"H� Th� H�n B�ng"},
			{109,0,50,"Tuy�t �nh"},
			{114,0,60,"M�c D� L�u Tinh"},
			{108,0,60,"B�ch H�i Tri�u Sinh"},
			{111,0,60,"B�ng C�t Tuy�t T�m"},
			{377,1,80,"B�ng Tung V� �nh"},
			{378,1,80,"B�ng T�m Ti�n T�"},
		},
		tm={
			{45,0,1,"Ph�ch L�ch ��n"},
			{43,0,10,"���ng M�n �m Kh� "},
			{462,0,10,"��a Di�m H�a"},
			{464,0,20,"��c Th�ch C�t"},
			{436,0,30,"Xuy�n T�m Th�ch"},
			{50,0,30,"Truy T�m Ti�n"},
			{54,0,30,"�o�t H�n Ti�u"},
			{47,0,30,"M�n Thi�n Hoa V� "},
			{434,0,40,"H�n B�ng Th�ch"},
			{439,0,50,"L�i K�ch Thu�t"},
			{48,0,60,"Ti�u L� Phi �ao"},
			{249,0,60,"T�n Hoa Ti�u"},
			{58,0,60,"Thi�n La ��a V�ng"},
			{357,0,60,"T�m Nh�n"},
			{355,1,80,"Nhi�p H�n Nguy�t �nh"},
			{358,1,80,"C�u Cung Phi Tinh"},
			{302,1,80,"B�o V� L� Hoa"},
			{399,0,80,"Lo�n Ho�n K�ch"},
		},
		wu={
			{63,0,1,"��c Sa Ch��ng"},
			{65,0,1,"Huy�t �ao ��c S�t"},
			{62,0,10,"Ng� ��c Ch��ng Ph�p"},
			{60,0,10,"Ng� ��c �ao Ph�p"},
			{67,0,10,"C�u Thi�n Cu�ng L�i"},
			{70,0,20,"X�ch Di�m Th�c Thi�n"},
			{66,0,20,"T�p Nan D��c Kinh"},
			{68,0,30,"U Minh Kh� L�u"},
			{333,0,30,"B�ch ��c Xuy�n T�m"},
			{64,0,30,"B�ng Lam Huy�n Tinh"},
			{69,0,30,"V� H�nh ��c"},
			{336,0,40,"Xuy�n Y Ph� Gi�p"},
			{73,0,40,"V�n C� Th�c T�m"},
			{72,0,50,"Xuy�n T�m ��c Th�ch"},
			{75,0,60,"Thi�n C��ng ��a S�t"},
			{71,0,60,"Chu C�p Thanh Minh"},
			{74,0,60,"Ng� ��c K� Kinh"},
			{359,1,80,"�m Phong Th�c C�t"},
			{361,1,80,"Huy�n �m Tr�m"},
			{327,0,80,"�o�n C�n H� C�t"},
		},
		gb={
			{122,0,1,"Ki�n Nh�n Th�n Th� "},
			{119,0,1,"Di�n M�n Th�c B�t"},
			{116,0,10,"C�i Bang Ch��ng Ph�p"},
			{115,0,10,"C�i Bang B�ng Ph�p"},
			{129,0,20,"H�a Hi�m Vi Di"},
			{274,0,30,"Gi�ng Long Ch��ng"},
			{124,0,30,"�� C�u Tr�n"},
			{277,0,40,"Ho�t B�t L�u Th�"},
			{128,0,50,"Kh�ng H�i H�i"},
			{125,0,50,"B�ng �� �c C�u"},
			{130,0,60,"Ti�u Di�u C�ng"},
			{335,0,60,"T�y �i�p Cu�ng V�"},
			{362,1,80,"Phi Long T�i Thi�n"},
			{389,1,80,"Thi�n H� V� C�u"},
		},
		tr={
			{135,0,1,"T�n D��ng Nh� Tuy�t"},
			{145,0,1,"��n Ch� Li�t Di�m"},
			{132,0,10,"Thi�n Nh�n M�u Ph�p"},
			{131,0,10,"Thi�n Nh�n �ao Ph�p"},
			{136,0,10,"H�a Li�n Ph�n Hoa"},
			{137,0,20,"�o �nh Phi H�"},
			{141,0,30,"Li�t H�a T�nh Thi�n"},
			{138,0,30,"Th�i S�n �i�n H�i"},
			{140,0,30,"Phi H�ng V� T�ch"},
			{364,0,40,"B� T� Thanh Phong"},
			{143,0,50,"L�ch Ma �o�t H�n"},
			{150,0,60,"Th�u Thi�n Ho�n Nh�t"},
			{142,0,60,"Ma Di�m Th�t S�t"},
			{148,0,60,"Thi�n Ma Gi�i Th�"},
			{365,1,80,"V�n Long K�ch"},
			{367,1,80,"Thi�n Ngo�i L�u Tinh"},
			{328,0,80,"Nhi�p H�n Lo�n T�m"},
		},
		wd={
			{153,0,1,"N� L�i Ch� "},
			{155,0,1,"Th��ng H�I Minh Nguy�t "},
			{152,0,10, "V� �ang Quy�n Ph�p"},
			{151,0,10,"V� �ang Ki�m Ph�p"},
			{159,0,20,"Th�t Tinh Tr�n"},
			{164,0,30,"B�c C�p Nhi Ph�c"},
			{158,0,30,"Ki�m Phi Kinh Thi�n"},
			{160,0,40,"Th� V�n Tung"},
			{157,0,50,"T�a V�ng V� Ng�"},
			{166,0,60,"V� Ng� V� Ki�m"},
			{165,0,60,"Tam Ho�n Th�o Nguy�t"},
			{267,0,60,"Th�i C�c Th�n C�ng"},
			{380,1,80,"Thi�n ��a V� C�c"},
			{382,1,80,"Nh�n Ki�m H�p Nh�t"},
		},
		kl={
			{169,0,1,"H� Phong Ph�p"},
			{179,0,1,"Cu�ng L�i Ch�n ��a"},
			{167,0,10,"C�n L�n �ao Ph�p"},
			{168,0,10,"C�n L�n Ki�m Ph�p"},
			{338,0,10,"Th�c Ph��c Ch�"},
			{171,0,10,"Thanh Phong Ph�"},
			{174,0,20,"K� B�n Ph� "},
			{178,0,30,"Nh�t Kh� Tam Thanh"},
			{172,0,30,"Thi�n T� T�n L�i"},
			{339,0,30,"B�c Minh ��o H�i"},
			{173,0,30,"Thi�n Thanh ��a Tr�c"},
			{175,0,40,"Kh� H�n Ng�o Tuy�t"},
			{181,0,40,"Kh� T�m Ph� "},
			{176,0,50,"Cu�ng Phong S�u �i�n"},
			{90,0,50,"M� Tung �o �nh"},
			{275,0,60,"Ng� L�i Ch�nh Ph�p"},
			{182,0,60,"S��ng Ng�o C�n L�n"},
			{472,0,60,"Huy�n Thi�n V� C�c"},
			{385,1,80,"Ng�o Tuy�t Ti�u Phong"},
			{384,1,80,"L�i ��ng C�u Thi�n"},
			{329,0,80,"Tu� Ti�n T� C�t"},
		}
	}
		if  (player_faction ~= "") then	
		for i=1,getn(yourfaction) do
			if (player_faction == yourfaction[i][1]) then	
						for j=1,getn(skillMap[yourfaction[i][2]]) do
							if (skillMap[yourfaction[i][2]][j][3] == task ) then	
								AddMagic(skillMap[yourfaction[i][2]][j][1],skillMap[yourfaction[i][2]][j][2])
								Msg2Player("B�n h�c ���c k� n�ng: "..skillMap[yourfaction[i][2]][j][4].."")
							end
						end
			end
		end
		
	end
	--Skill90()
	--Skill6x()
--	Skill120x()
	return
end

