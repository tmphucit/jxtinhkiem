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
Talk(1,"","B¹n thuéc "..NguHanh().." kh«ng thÝch hîp gia nhËp m«n ph¸i nµy...")
end
end;

function ThienVuong(task)
if NguHanh() == "He Kim" then
	SetFaction("Thien Vuong Bang")
	SetCamp(3)
	SetCurCamp(3)

	LearnSkillFaction(task)
else
Talk(1,"","B¹n thuéc "..NguHanh().." kh«ng thÝch hîp gia nhËp m«n ph¸i nµy...")
end
end;

function DuongMon(task)
if NguHanh() == "He Moc" then
	SetFaction("Duong Mon")
	SetCamp(3)
	SetCurCamp(3)

	LearnSkillFaction(task)
else
Talk(1,"","B¹n thuéc "..NguHanh().." kh«ng thÝch hîp gia nhËp m«n ph¸i nµy...")
end
end;

function NguDoc(task)
if NguHanh() == "He Moc" then
	SetFaction("Ngu Doc Giao")       
	SetCamp(2)
	SetCurCamp(2)

	LearnSkillFaction(task)
else
Talk(1,"","B¹n thuéc "..NguHanh().." kh«ng thÝch hîp gia nhËp m«n ph¸i nµy...")
end
end;

function NgaMi(task)
if NguHanh() == "He Thuy" then
	SetFaction("Nga My Phai")
	SetCamp(1)
	SetCurCamp(1)

	LearnSkillFaction(task)
else
Talk(1,"","B¹n thuéc "..NguHanh().." kh«ng thÝch hîp gia nhËp m«n ph¸i nµy...")
end
end;

function ThuyYen(task)
if NguHanh() == "He Thuy" then
	SetFaction("Thuy Yen Mon")
	SetCamp(3)
	SetCurCamp(3)

	LearnSkillFaction(task)
else
Talk(1,"","B¹n thuéc "..NguHanh().." kh«ng thÝch hîp gia nhËp m«n ph¸i nµy...")
end
end;

function CaiBang(task)
if NguHanh() == "He Hoa" then
	SetFaction("Cai Bang")
	SetCamp(1)
	SetCurCamp(1)

	LearnSkillFaction(task)
else
Talk(1,"","B¹n thuéc "..NguHanh().." kh«ng thÝch hîp gia nhËp m«n ph¸i nµy...")
end
end;

function ThienNhan(task)
if NguHanh() == "He Hoa" then
	SetFaction("Thien Nhan Giao")
	SetCamp(2)
	SetCurCamp(2)

	LearnSkillFaction(task)
else
Talk(1,"","B¹n thuéc "..NguHanh().." kh«ng thÝch hîp gia nhËp m«n ph¸i nµy...")
end
end;

function VoDang(task)
if NguHanh() == "He Tho" then
	SetFaction("Vo Dang Phai")
	SetCamp(1)
	SetCurCamp(1)

	LearnSkillFaction(task)
else
Talk(1,"","B¹n thuéc "..NguHanh().." kh«ng thÝch hîp gia nhËp m«n ph¸i nµy...")
end
end;

function ConLon(task)
if NguHanh() == "He Tho" then
	SetFaction("Con Lon Phai")
	SetCamp(3)
	SetCurCamp(3)
	LearnSkillFaction(task)
else
Talk(1,"","B¹n thuéc "..NguHanh().." kh«ng thÝch hîp gia nhËp m«n ph¸i nµy...")
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
			{14,0,1,"Hµng Long B¸t Vò"},
			{10,0,1,"Kim Cang Phôc Ma"},
			{8,0,10,"ThiÕu L©m QuyÒn Ph¸p"},
			{4,0,10,"ThiÕu L©m C«n Ph¸i"},
			{6,0,10,"ThiÕu L©m §ao Ph¸p"},
			{15,0,20,"BÊt §éng Minh V­¬ng"},
			{16,0,30,"La H¸n TrËn"},
			{20,0,40,"S­ Tö Hãng"},
			{271,0,50,"Long Tr¶o Hæ Tr¶o"},
			{11,0,50,"Hoµnh T¶o Lôc Hîp"},
			{19,0,50,"Ma Ha V« L­îng"},
			{273,0,60,"DÞch C©n Kinh"},
			{21,0,60,"Nh­ Lai Thiªn §iÖp"},
			{350,1,80,"§¹t Ma §é Giang"},
			{351,1,80,"Hoµnh T¶o Thiªn Qu©n"},
			{353,1,80,"V« T­íng Tr¶m"},
			
		},
		tw={
			{34,0,1,"Kinh L«i Tr¶m"},
			{30,0,1,"Håi Phong L¹c Nh©n"},
			{29,0,1,"Tr¶m Long QuyÕt"},
			{26,0,10,"Thiªn V­¬ng §ao Ph¸p"},
			{23,0,10,"Thiªn V­¬ng Th­¬ng Ph¸p"},
			{24,0,10,"Thiªn V­¬ng Chïy Ph¸p"},
			{33,0,20,"TÜnh T©m QuyÕt"},
			{37,0,30,"B¸t Phong Tr¶m"},
			{35,0,30,"D­¬ng Quang Tam §iÖp"},
			{31,0,30,"Hµng V©n QuyÕt"},
			{40,0,40,"§o¹n Hån ThÝch"},
			{42,0,50,"Kim Chung Tr¸o"},
			{36,0,60,"V« T©m Tr¶m"},
			{32,0,60,"HuyÕt ChiÕn B¸t Ph­¬ng"},
			{41,0,60,"Thõa Long QuyÕt"},
			{325,0,60,"Thiªn V­¬ng ChiÕn ý "},
			{342,1,80,"Ph¸ Thiªn Tr¶m"},
			{347,1,80,"Truy Tinh Tróc NguyÖt"},
			{345,1,80,"Truy Phong QuyÕt"},
		},
		em={
			{85,0,1,"NhÊt DiÖp Tri Thu"},
			{80,0,1,"Phiªu TuyÕt Xuyªn V©n"},
			{77,0,10,"Nga My KiÕm Ph¸p"},
			{79,0,10,"Nga My Ch­ëng"},
			{93,0,20,"Tõ Hµng Phæ §é"},
			{334,0,30,"Th«i Song Väng NguyÖt"},
			{82,0,30,"Tø T­îng §ång Quy"},
			{89,0,30,"Méng §iÖp"},
			{86,0,40,"L­u Thñy"},
			{92,0,50,"PhËt T©m Tõ H÷u"},
			{252,0,60,"PhËt Ph¸p V« Biªn"},
			{88,0,60,"BÊt DiÖt BÊt TuyÖt"},
			{91,0,60,"PhËt Quang Phæ ChiÕu"},
			{282,0,60,"Thanh ¢m Ph¹n X­íng"},
			{374,1,80,"Tam Nga Tª TuyÕt"},
			{370,1,80,"Phong S­¬ng To¸i ¶nh"},
			{291,0,80,"Phæ §é Chóng Sinh"}
		},
		cy={
			{99,0,1,"Phong Hoa TuyÕt NguyÖt"},
			{102,0,1,"Phong QuyÒn Tµn TuyÕt"},
			{95,0,10,"Thóy Yªn §ao Ph¸p"},
			{97,0,10,"Thóy Yªn Song §ao"},
			{269,0,20,"B¨ng T©m Tr¸i ¶nh"},
			{105,0,30,"Vñ §· Lª Hoa"},
			{113,0,30,"Phï V©n T¸n TuyÕt"},
			{100,0,40,"Hé ThÓ Hµn B¨ng"},
			{109,0,50,"TuyÕt ¶nh"},
			{114,0,60,"Môc D¶ L­u Tinh"},
			{108,0,60,"BÝch H¶i TriÒu Sinh"},
			{111,0,60,"B¨ng Cèt TuyÕt T©m"},
			{377,1,80,"B¨ng Tung V« ¶nh"},
			{378,1,80,"B¨ng T©m Tiªn Tö"},
		},
		tm={
			{45,0,1,"PhÝch LÞch §¬n"},
			{43,0,10,"§­êng M«n ¸m KhÝ "},
			{462,0,10,"§Þa DiÖm Háa"},
			{464,0,20,"§éc ThÝch Cèt"},
			{436,0,30,"Xuyªn T©m ThÝch"},
			{50,0,30,"Truy T©m TiÔn"},
			{54,0,30,"§o¹t Hån Tiªu"},
			{47,0,30,"M¹n Thiªn Hoa Vò "},
			{434,0,40,"Hµn B¨ng ThÝch"},
			{439,0,50,"L«i KÝch ThuËt"},
			{48,0,60,"TiÓu Lý Phi §ao"},
			{249,0,60,"T¸n Hoa Tiªu"},
			{58,0,60,"Thiªn La §Þa Vâng"},
			{357,0,60,"T©m Nh·n"},
			{355,1,80,"NhiÕp Hån NguyÖt ¶nh"},
			{358,1,80,"Cöu Cung Phi Tinh"},
			{302,1,80,"B¹o Vò Lª Hoa"},
			{399,0,80,"Lo¹n Hoµn KÝch"},
		},
		wu={
			{63,0,1,"§éc Sa Ch­ëng"},
			{65,0,1,"HuyÕt §ao §éc S¸t"},
			{62,0,10,"Ngò §éc Ch­ëng Ph¸p"},
			{60,0,10,"Ngò §éc §ao Ph¸p"},
			{67,0,10,"Cöu Thiªn Cuång L«i"},
			{70,0,20,"XÝch DiÖm Thùc Thiªn"},
			{66,0,20,"T¹p Nan D­îc Kinh"},
			{68,0,30,"U Minh Kh« L©u"},
			{333,0,30,"B¸ch §éc Xuyªn T©m"},
			{64,0,30,"B¨ng Lam HuyÒn Tinh"},
			{69,0,30,"V« H×nh §éc"},
			{336,0,40,"Xuyªn Y Ph¸ Gi¸p"},
			{73,0,40,"V¹n C¬ Thùc T©m"},
			{72,0,50,"Xuyªn T©m §éc ThÝch"},
			{75,0,60,"Thiªn C­¬ng §Þa S¸t"},
			{71,0,60,"Chu C¸p Thanh Minh"},
			{74,0,60,"Ngò §éc Kú Kinh"},
			{359,1,80,"¢m Phong Thùc Cèt"},
			{361,1,80,"HuyÒn ¢m Tr¶m"},
			{327,0,80,"§o¹n C©n Hñ Cèt"},
		},
		gb={
			{122,0,1,"KiÕn Nh©n ThÇn Thñ "},
			{119,0,1,"Diªn M«n Th¸c B¸t"},
			{116,0,10,"C¸i Bang Ch­ëng Ph¸p"},
			{115,0,10,"C¸i Bang Bæng Ph¸p"},
			{129,0,20,"Háa HiÓm Vi Di"},
			{274,0,30,"Gi¸ng Long Ch­ëng"},
			{124,0,30,"§¶ CÈu TrËn"},
			{277,0,40,"Ho¹t B¸t L­u Thñ"},
			{128,0,50,"Kh¸ng Hèi Hèi"},
			{125,0,50,"Bèng §¸ ¸c CÈu"},
			{130,0,60,"Tiªu Diªu C«ng"},
			{335,0,60,"Tóy §iÖp Cuång Vò"},
			{362,1,80,"Phi Long T¹i Thiªn"},
			{389,1,80,"Thiªn H¹ V« CÈu"},
		},
		tr={
			{135,0,1,"Tµn D­¬ng Nh­ TuyÕt"},
			{145,0,1,"§¬n ChØ LiÖt DiÖm"},
			{132,0,10,"Thiªn NhÉn M©u Ph¸p"},
			{131,0,10,"Thiªn NhÉn §ao Ph¸p"},
			{136,0,10,"Háa Liªn PhÇn Hoa"},
			{137,0,20,"¶o ¶nh Phi Hæ"},
			{141,0,30,"LiÖt Háa T×nh Thiªn"},
			{138,0,30,"Th«i S¬n §iÒn H¶i"},
			{140,0,30,"Phi Hång V« TÝch"},
			{364,0,40,"BÝ T« Thanh Phong"},
			{143,0,50,"LÞch Ma §o¹t Hån"},
			{150,0,60,"Th©u Thiªn Ho¸n NhËt"},
			{142,0,60,"Ma DiÖm ThÊt S¸t"},
			{148,0,60,"Thiªn Ma Gi¶i ThÓ"},
			{365,1,80,"V©n Long KÝch"},
			{367,1,80,"Thiªn Ngo¹i L­u Tinh"},
			{328,0,80,"NhiÕp Hån Lo¹n T©m"},
		},
		wd={
			{153,0,1,"Né L«i ChÝ "},
			{155,0,1,"Th­îng H¶I Minh NguyÖt "},
			{152,0,10, "Vâ §ang QuyÒn Ph¸p"},
			{151,0,10,"Vâ §ang KiÕm Ph¸p"},
			{159,0,20,"ThÊt Tinh TrËn"},
			{164,0,30,"B¾c C¸p Nhi Phôc"},
			{158,0,30,"KiÕm Phi Kinh Thiªn"},
			{160,0,40,"ThÕ V©n Tung"},
			{157,0,50,"Täa Väng V« Ng·"},
			{166,0,60,"V« Ng· V« KiÕm"},
			{165,0,60,"Tam Hoµn Th¶o NguyÖt"},
			{267,0,60,"Th¸i Cùc ThÇn C«ng"},
			{380,1,80,"Thiªn §Þa V« Cùc"},
			{382,1,80,"Nh©n KiÕm Hîp NhÊt"},
		},
		kl={
			{169,0,1,"H« Phong Ph¸p"},
			{179,0,1,"Cuång L«i ChÊn §Þa"},
			{167,0,10,"C«n L«n §ao Ph¸p"},
			{168,0,10,"C«n L«n KiÕm Ph¸p"},
			{338,0,10,"Thóc Ph­îc Chó"},
			{171,0,10,"Thanh Phong Phï"},
			{174,0,20,"KÝ B¸n Phï "},
			{178,0,30,"NhÊt KhÝ Tam Thanh"},
			{172,0,30,"Thiªn TÒ TÇn L«i"},
			{339,0,30,"B¾c Minh §¶o H¶i"},
			{173,0,30,"Thiªn Thanh §Þa Träc"},
			{175,0,40,"KhÝ Hµn Ng¹o TuyÕt"},
			{181,0,40,"KhÝ T©m Phï "},
			{176,0,50,"Cuång Phong S©u §iÖn"},
			{90,0,50,"Mª Tung ¶o ¶nh"},
			{275,0,60,"Ngò L«i ChÝnh Ph¸p"},
			{182,0,60,"S­¬ng Ng¹o C«n L«n"},
			{472,0,60,"HuyÒn Thiªn V« Cùc"},
			{385,1,80,"Ng¹o TuyÕt Tiªu Phong"},
			{384,1,80,"L«i §éng Cöu Thiªn"},
			{329,0,80,"Tuý Tiªn T¸ Cèt"},
		}
	}
		if  (player_faction ~= "") then	
		for i=1,getn(yourfaction) do
			if (player_faction == yourfaction[i][1]) then	
						for j=1,getn(skillMap[yourfaction[i][2]]) do
							if (skillMap[yourfaction[i][2]][j][3] == task ) then	
								AddMagic(skillMap[yourfaction[i][2]][j][1],skillMap[yourfaction[i][2]][j][2])
								Msg2Player("B¹n häc ®­îc kü n¨ng: "..skillMap[yourfaction[i][2]][j][4].."")
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

