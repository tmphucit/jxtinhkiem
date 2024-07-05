Include("\\script\\lib\\thuvien.lua")
FACTION = 30
FirstSay	= "Mêi c¸c h¹ chän mãn ®å ®eÎ hîp thµnh"
FinallySay	= "Ta suy nghÜ l¹i/no" 
Finally	= "Ta suy nghÜ l¹i/travatpham" 
 function hoangkim()
 	Say("<color=green>Thî rÌn<color> H·y lùa chän 1 vò khÝ ngang víi søc m×nh nhÐ: ",11,
		"ThiÕu L©m ph¸i./hoangkimmonphaihk",
		"Thiªn V­¬ng Bang./hoangkimmonphaihk",
		"Nga My ph¸i./hoangkimmonphaihk",
		"Thóy Yªn m«n./hoangkimmonphaihk",
		"Ngò §éc Gi¸o./hoangkimmonphaihk", 
		"§­êng M«n./hoangkimmonphaihk",
		"C¸i Bang./hoangkimmonphaihk",
		"Thiªn NhÉn Gi¸o./hoangkimmonphaihk",
		"Vâ §ang ph¸i./hoangkimmonphaihk",
		"C«n L«n ph¸i./hoangkimmonphaihk",
	"Tho¸t./no")
 end
 
function hoangkimmonphaihk(nSel)
	SetTaskTemp(FACTION, 0); -- reset task before set
	local nRow = nSel + 1;
	SetTaskTemp(FACTION, nRow);
	local TAB_HKMP = {
	{"ThiÕu l©m bæng ph¸p/trangbihk","ThiÕu l©m ®ao ph¸p/trangbihk","ThiÕu l©m quyÒn ph¸p/trangbihk",},
	{"Thiªn v­¬ng ®ao ph¸p/trangbihk","Thiªn v­¬ng th­¬ng ph¸p/trangbihk","Thiªn v­¬ng chïy ph¸p/trangbihk",},
	{"Nga mi kiÕm ph¸p/trangbihk","Nga mi ch­ëng ph¸p/trangbihk","Nga mi buff ph¸p/trangbihk",},
	{"Thóy yªn ®¬n ®ao/trangbihk","Thóy yªn song ®ao/trangbihk",},
	{"Ngò ®éc ®ao ph¸p/trangbihk","Ngñ ®éc ch­ëng ph¸p/trangbihk","Ngò ®éc bïa ph¸p/trangbihk",},
	{"§­¬ng m«n tô tiÔn/trangbihk","§­êng m«n phi tiªu/trangbihk","§­êng m«n phi ®ao/trangbihk","§­êng m«n bÉy thuËt ph¸p/trangbihk",},
	{"C¸i bang bæng ph¸p/trangbihk","C¸i bang ch­ëng ph¸p/trangbihk",},
	{"Thiªn nh·n kÝch/trangbihk","Thiªn nh·n ch­ëng/trangbihk","Thiªn bïa ph¸p /trangbihk",},
	{"Vâ ®ang kiÕm ph¸p /trangbihk","Vâ ®ang ch­ëng ph¸p/trangbihk",},
	{"C«n l«n ®ao ph¸p/trangbihk","C«n l«n kiÕm ph¸p/trangbihk","C«n l«n kiÕm ph¸p/trangbihk",},
	}
	if nRow == 6 then
		Say(FirstSay,5,		
				TAB_HKMP[nRow][1],
				TAB_HKMP[nRow][2],
				TAB_HKMP[nRow][3],
				TAB_HKMP[nRow][4],
		Finally)
		elseif nRow == 4 or nRow == 7 or nRow == 9 then
			Say(FirstSay,3,
				TAB_HKMP[nRow][1],
				TAB_HKMP[nRow][2],
		Finally)
		else
			Say(FirstSay,4,
				TAB_HKMP[nRow][1],
				TAB_HKMP[nRow][2],
				TAB_HKMP[nRow][3],
		Finally)
	end
end

	TAB_DOMONPHAI ={	
			{	--thieulam
				{	{"Phôc Ma Tö Kim C«n/chay",						0,0,2,61,189,77	,	}	,
					{"Phôc Ma HuyÒn Hoµng Cµ Sa/chay",				0,2,35,1,201,77,	}	,
					{"Phôc Ma ¤ Kim NhuyÔn §iÒu/chay",				0,6,6,1,213,77,	}	,
					{"Phôc Ma PhËt T©m NhuyÔn KhÊu/chay",			0,3,8,1,237,77}	,
					{"Phôc Ma Phæ §é T¨ng hµi/chay",				0,5,7,1,219,77,	}	,	}	,	
				{	{"Tø Kh«ng Gi¸ng Ma Giíi ®ao/chay",				0,0,1,61,189,76,	}	,
					{"Tø Kh«ng Tö Kim Cµ Sa/chay",					0,2,34,1,201,76,	}	,
					{"Tø Kh«ng Hé ph¸p Yªu ®¸i/chay",				0,6,5,1,213,76,	}	,
					{"Tø Kh«ng NhuyÔn B× Hé UyÓn/chay",				0,8,4,1,207,76,	}	,
					{"Tø Kh«ng Giíi LuËt Ph¸p giíi/chay",			0,3,7,1,237,76,	}	,	}	,			
				{	{"Méng Long ChÝnh Hång T¨ng M·o/chay",			0,7,16,1,195,75,	}	,
					{"Méng Long Kim Ti ChÝnh Hång Cµ Sa/chay",		0,2,33,1,201,75,	}	,
					{"Méng Long HuyÒn Ti Ph¸t ®¸i/chay",			0,6,5,1,213,76,	}	,
					{"Méng Long PhËt Ph¸p HuyÒn Béi/chay",			0,9,6,1,231,75,	}	,
					{"Méng Long §¹t Ma T¨ng hµi/chay",				0,5,6,1,219,75,	}	,	}	,
			},  		
			{	--tv
				{	{"Ngù Long L­îng Ng©n B¶o ®ao/chay",			0,0,1,121,189,80,	}	,		
					{"Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p/chay",		0,4,6,1,225,80,	}	,		
					{"Ngù Long Thiªn M«n Thóc Yªu hoµn/chay",		0,6,9,1,213,80,	}	,		
					{"Ngù Long TÊn Phong Hé yÓn/chay",				0,8,7,1,207,80,	}	,		
					{"Ngù Long TuyÖt MÖnh ChØ hoµn/chay",			0,3,9,1,237,80,	}	,	}	,			
				{	{"KÕ NghiÖp B«n L«i Toµn Long th­¬ng/chay",		0,0,3,61,189,78,	}	,		
					{"KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i/chay",		0,2,36,1,201,78,	}	,		
					{"KÕ NghiÖp B¹ch Hæ V« Song khÊu/chay",			0,6,7,1,213,78,	}	,		
					{"KÕ NghiÖp HáaV©n Kú L©n Thñ /chay",			0,8,5,1,207,78,	}	,		
					{"KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa/chay",		0,5,8,1,219,78,	}	,	}	,
				{	{"H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy/chay",	0,0,4,61,189,79,	}	,		
					{"H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p/chay",		0,2,37,1,201,79,	}	,		
					{"H¸m Thiªn Uy Vò Thóc yªu ®¸i/chay",			0,6,8,1,213,79,	}	,		
					{"H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn/chay",		0,8,6,1,207,79,	}	,		
					{"H¸m Thiªn Thõa Long ChiÕn Ngoa/chay",			0,5,9,1,219,79,	}	,	}	,
			},
			{												
				{	{"V« Gian û Thiªn KiÕm/chay",					0,0,0,61,189,89,	}	,		
					{"V« Gian Thanh Phong Truy Y/chay",				0,2,42,1,201,89,	}	,		
					{"V« Gian PhÊt V©n Ti ®¸i/chay",				0,6,14,1,213,89,	}	,		
					{"V« Gian CÇm VËn Hé UyÓn/chay",				0,8,13,1,207,89,	}	,		
					{"V« Gian B¹ch Ngäc Bµn ChØ /chay",				0,3,14,1,237,89,	}	,	}	,
				{	{"V« Ma Ma Ni qu¸n/chay",						0,7,20,1,195,88,	}	,		
					{"V« Ma Tö Kh©m Cµ Sa/chay",					0,2,43,1,201,88,	}	,		
					{"V« Ma B¨ng Tinh ChØ Hoµn/chay",				0,3,15,1,237,88,	}	,		
					{"V« Ma TÈy T­îng Ngäc KhÊu /chay",				0,9,16,1,231,88,	}	,		
					{"V« Ma Hång Truy NhuyÔn Th¸p hµi/chay",		0,5,16,1,219,88,	}	,	}	,
				{	{"V« TrÇn Ngäc N÷ Tè T©m qu¸n/chay",			0,7,21,1,195,90,	}	,		
					{"V« TrÇn Thanh T©m H­íng ThiÖn Ch©u/chay",		0,4,10,1,225,90,	}	,		
					{"V« TrÇn Tõ Bi Ngäc Ban ChØ /chay",			0,3,17,1,237,90,	}	,		
					{"V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi/chay",		0,9,9,1,231,90,	}	,		
					{"V« TrÇn PhËt Quang ChØ Hoµn/chay",			0,3,16,1,237,90,	}	,	}	,
			},
			{												
				{	{"Tª Hoµng Phông Nghi ®ao/chay",				0,0,1,181,189,91,	}	,		
					{"Tª Hoµng TuÖ T©m Khinh Sa Y/chay",			0,2,44,1,201,91,	}	,		
					{"Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i/chay",	0,6,15,1,213,91,	}	,		
					{"Tª Hoµng B¨ng Tung CÈm uyÓn/chay",			0,8,14,1,207,91,	}	,		
					{"Tª Hoµng Thóy Ngäc ChØ Hoµn/chay",			0,3,18,1,237,91,	}	,	}	,
				{	{"BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao/chay",		0,0,5,61,189,92,	}	,		
					{"BÝch H¶i Hoµn Ch©u Vò Liªn/chay",				0,4,11,1,225,92,	}	,		
					{"BÝch H¶i Hång Linh Kim Ti ®¸i/chay",			0,6,16,1,213,92,	}	,		
					{"BÝch H¶i Hång L¨ng Ba/chay",					0,9,10,1,231,92,	}	,		
					{"BÝch H¶i Khiªn TÕ ChØ hoµn",					104	,	}	,	}	,
			},
			{												
				{	{"U Lung Kim Xµ Ph¸t ®¸i/chay",						0,7,19,1,195,85	,	}	,		
					{"U Lung XÝch YÕt MËt trang/chay",					0,2,40,1,201,85	,	}	,		
					{"U Lung Thanh Ng« TriÒn yªu/chay",					0,6,13,1,213,85	,	}	,		
					{"U Lung Ng©n ThÒm Hé UyÓn/chay",					0,8,11,1,207,85	,	}	,		
					{"U Lung MÆc Thï NhuyÔn Lý /chay",					0,5,14,1,219,85	,	}	,	}	,
				{	{"Minh ¶o Tµ S¸t §éc NhËn/chay",					0,0,1,171,189,86	,	}	,		
					{"Minh ¶o U §éc ¸m Y/chay",							0,2,41,1,201,86	,	}	,		
					{"Minh ¶o §éc YÕt ChØ Hoµn/chay",					0,3,13,1,237,86	,	}	,		
					{"Minh ¶o Hñ Cèt Hé uyÓn/chay",						0,8,12,1,207,86	,	}	,		
					{"Minh ¶o Song Hoµn Xµ Hµi/chay",					0,5,15,1,219,86	,	}	,	}	,
				{	{"Chó Ph­îc Ph¸ gi¸p ®Çu hoµn/chay",				0,7,18,1,195,87	,	}	,		
					{"Chó Ph­îc DiÖt L«i C¶nh Phï /chay",				0,4,9,1,225,87	,	}	,		
					{"Chó Ph­îc U ¶o ChØ Hoµn/chay",					0,3,12,1,237,87	,	}	,		
					{"Chó Ph­îc Xuyªn T©m §éc UyÓn/chay",				0,8,10,1,207,87	,	}	,		
					{"Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa/chay",			0,5,13,1,219,87	,	}	,	}	,
			},
			{												
				{	{"Thiªn Quang Hoa Vò M¹n Thiªn/chay",				0,1,2,31,189,81	,	}	,		
					{"Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï /chay",		0,4,8,1,225,81	,	}	,		
					{"Thiªn Quang S©m La Thóc §¸i/chay",				0,6,12,1,213,81	,	}	,		
					{"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c/chay",		0,8,9,1,207,81	,	}	,		
					{"Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn/chay",		0,3,11,1,237,81	,	}	,	}	,
				{	{"S©m Hoang Phi Tinh §o¹t Hån/chay",				0,1,0,41,189,83	,	}	,		
					{"S©m Hoang KimTiÒn Liªn Hoµn Gi¸p/chay",			0,2,39,1,201,83	,	}	,		
					{"S©m Hoang Hån Gi¶o Yªu Thóc/chay",				0,6,11,1,213,83	,	}	,		
					{"S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi/chay",		0,9,8,1,231,83	,	}	,		
					{"S©m Hoang Tinh VÉn Phi Lý /chay",					0,5,12,1,219,83	,	}	,	}	,	
				{	{"B¨ng Hµn §¬n ChØ Phi §ao/chay",					0,1,1,21,189,82	,	}	,		
					{"B¨ng Hµn HuyÒn Y Thóc Gi¸p/chay",					0,2,38,1,201,82	,	}	,		
					{"B¨ng Hµn T©m TiÔn Yªu KhÊu/chay",					0,6,10,1,213,82	,	}	,		
					{"B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi/chay",			0,9,7,1,231,82	,	}	,		
					{"B¨ng Hµn NguyÖt ¶nh Ngoa/chay",					0,5,11,1,219,82	,	}	,	}	,
				{	{"§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n/chay",			0,7,17,1,195,84	,	}	,		
					{"§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn/chay",			0,4,7,1,225,84	,	}	,		
					{"§Þa Ph¸ch TÝch LÞch L«i Háa Giíi/chay",			0,3,10,1,237,84	,	}	,		
					{"§Þa Ph¸ch KhÊu T©m tr¹c/chay",					0,8,8,1,207,84	,	}	,		
					{"§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa/chay",			0,5,10,1,219,84	,	}	,	}	,
			},
			{												
				{	{"§Þch Kh¸i Lôc Ngäc Tr­îng/chay",					0,0,2,121,189,94	,	}	,		
					{"§Þch Kh¸i Cöu §¹i C¸i Y/chay",					0,2,46,1,201,94	,	}	,		
					{"§Þch Kh¸i TriÒn M·ng yªu ®¸i/chay",				0,6,18,1,213,94	,	}	,		
					{"§Þch Kh¸i CÈu TÝch B× Hé uyÓn/chay",				0,8,16,1,207,94	,	}	,		
					{"§Þch Kh¸i Th¶o Gian Th¹ch giíi/chay",				0,3,20,1,237,94	,	}	,	}	,
				{	{"§ång Cõu Phi Long §Çu hoµn/chay",					0,7,22,1,195,93	,	}	,		
					{"§ång Cõu Gi¸ng Long C¸i Y/chay",					0,2,45,1,201,93	,	}	,		
					{"§ång Cõu TiÒm Long Yªu §¸i/chay",					0,6,17,1,213,93	,	}	,		
					{"§ång Cõu Kh¸ng Long Hé UyÓn/chay",				0,8,15,1,207,93	,	}	,		
					{"§ång Cõu KiÕn Long Ban ChØ /chay",				0,3,19,1,237,93	,	}	,	}	,
			},
			{												
				{	{"Ma S¸t Quû Cèc U Minh Th­¬ng/chay",				0,0,3,121,189,96	,	}	,		
					{"Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p/chay",			0,2,47,1,201,96	,	}	,		
					{"Ma S¸t XÝch Ký Táa Yªu KhÊu/chay",				0,6,20,1,213,96	,	}	,		
					{"Ma S¸t Cö Háa Liªu Thiªn uyÓn/chay",				0,8,18,1,207,96	,	}	,		
					{"Ma S¸t V©n Long Thæ Ch©u giíi/chay",				0,3,22,1,237,96	,	}	,	}	,
				{	{"Ma Hoµng Kim Gi¸p Kh«i/chay",						0,7,23,1,195,97	,	}	,		
					{"Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn/chay",			0,4,12,1,225,97	,	}	,		
					{"Ma Hoµng Khª Cèc Thóc yªu ®¸i/chay",				0,6,19,1,213,97	,	}	,		
					{"Ma Hoµng HuyÕt Y Thó Tr¹c/chay",					0,8,17,1,207,97	,	}	,		
					{"Ma Hoµng §¨ng §¹p Ngoa/chay",						0,5,17,1,219,97,	}	,	}	,
				{	{"Ma ThÞ LiÖt DiÖm Qu¸n MiÖn/chay",					0,7,24,1,195,95	,	}	,		
					{"Ma ThÞ LÖ Ma PhÖ T©m Liªn/chay",					0,4,13,1,225,95	,	}	,		
					{"Ma ThÞ NghiÖp Háa U Minh Giíi/chay",				0,3,21,1,237,95	,	}	,		
					{"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi/chay",				0,9,11,1,231,95	,	}	,		
					{"Ma ThÞ s¬n  H¶i Phi Hång Lý /chay",				0,5,18,1,219,95	,	}	,	}	,
			},
			{												
				{	{"CËp Phong Ch©n Vò KiÕm/chay",						0,0,0,171,189,98	,	}	,		
					{"CËp Phong Tam Thanh Phï /chay",					0,4,14,1,225,98	,	}	,		
					{"CËp Phong HuyÒn Ti Tam §o¹n cÈm/chay",			0,6,21,1,213,98	,	}	,		
					{"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi/chay",		0,9,12,1,231,98	,	}	,		
					{"CËp Phong Thanh Tïng Ph¸p giíi/chay",				0,3,23,1,237,98	,	}	,	}	,
				{	{"L¨ng Nh¹c Th¸i Cùc KiÕm/chay",					0,0,0,121,189,99	,	}	,		
					{"L¨ng Nh¹c V« Ng· ®¹o bµo/chay",					0,2,48,1,201,99	,	}	,		
					{"L¨ng Nh¹c Né L«i Giíi/chay",						0,3,24,1,237,99	,	}	,		
					{"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi/chay",			0,9,13,1,231,99	,	}	,		
					{"L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi/chay",		0,3,25,1,237,99	,	}	,	}	,
			},
			{												
				{	{"S­¬ng Tinh Thiªn Niªn Hµn ThiÕt/chay",			0,0,1,151,189,101	,	}	,		
					{"S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo/chay",				0,2,49,1,201,101	,	}	,		
					{"S­¬ng Tinh Thanh Phong Lò ®¸i/chay",				0,6,22,1,213,101	,	}	,		
					{"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ /chay",		0,8,19,1,207,101	,	}	,		
					{"S­¬ng Tinh Phong B¹o chØ hoµn/chay",				0,3,27,1,237,101	,	}	,	}	,
				{	{"L«i Khung Hµn Tung B¨ng B¹ch quan/chay",			0,7,26,1,195,100	,	}	,		
					{"L«i Khung Thiªn §Þa Hé phï /chay",				0,4,16,1,225,100	,	}	,		
					{"L«i Khung Phong L«i Thanh CÈm ®¸i/chay",			0,6,23,1,213,100	,	}	,		
					{"L«i Khung Linh Ngäc UÈn L«i/chay",				0,9,15,1,231,100	,	}	,		
					{"L«i Khung Cöu Thiªn DÉn L«i giíi/chay",			0,3,28,1,237,100	,	}	,	}	,
				{	{"Vô ¶o B¾c Minh §¹o qu¸n/chay",					0,7,25,1,195,102	,	}	,		
					{"Vô ¶o Ki B¸n phï chó /chay",						0,5,19,1,219,102	,	}	,		
					{"Vô ¶o Thóc T©m chØ hoµn/chay",					0,3,26,1,237,102	,	}	,		
					{"Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi/chay",				0,9,14,1,231,102	,	}	,		
					{"Vô ¶o Tung Phong TuyÕt ¶nh ngoa/chay",			0,5,19,1,219,102	,	}	,	}	,
				},										
		}
function trangbihk(nSel) -- no loi ham nay ma
local nFactionId = GetTaskTemp(FACTION);
	SetTaskTemp(Line, 0); -- reset task before set
	local nRow = nSel + 1;
	SetTaskTemp(Line,nRow);
	Say(FirstSay,6,
	TAB_DOMONPHAI[nFactionId][nRow][1][1],
	TAB_DOMONPHAI[nFactionId][nRow][2][1],
	TAB_DOMONPHAI[nFactionId][nRow][3][1],
	TAB_DOMONPHAI[nFactionId][nRow][4][1],
	TAB_DOMONPHAI[nFactionId][nRow][5][1],
	Finally)

end
		
		
function chay(nSel)
local nFactionId = GetTaskTemp(FACTION);
local nLine = GetTaskTemp(Line);
local nRow = nSel + 1;
	-- Random = random (1,2)
	-- if a == 1 then
	--	AddGoldItem(TAB_DOMONPHAI[nFactionId][nLine][nRow][2])
		AddItem(TAB_DOMONPHAI[nFactionId][nLine][nRow][2],TAB_DOMONPHAI[nFactionId][nLine][nRow][3],TAB_DOMONPHAI[nFactionId][nLine][nRow][4],TAB_DOMONPHAI[nFactionId][nLine][nRow][5],0,0,0)
		Msg2Player("Chóc mõng c¸c h¹ ®· chÕ t¹o thµnh c«ng trang bÞ hoµng kim m«n ph¸i")
		-- else
		-- Msg2Player("ThÊt b¹i")
	-- end
end
--===========================Nguyen lieu ep trang bi hoang kim [ Manh trang bi + Mat tich mon phai + bi kim theo duong + thuy tinh]

function nguyenlieuhk()
 	Say("",4,
	"Manh Hoang Kim/manh",
	"Mat Tich/mattich",
	"Bi Kip/bikip",
	"Tho¸t./no")
 end

 function manh()
  	Say("Chon manh",4,
	"Manh ao/manhselect",
	"Manh non/manhselect",
	"Manh that lung/manhselect",
	"Manh giay/manhselect",
	"Manh vu khi/manhselect",
	"Manh day chuyen/manhselect",
	"Manh ngoc boi/manhselect",
	"Manh bao tay/manhselect",
	"Manh nhan/manhselect",
	"Tho¸t./no")
  end
  
 -- TAB_MANH={
 -- {}
 
 -- }
-- function manhselect(nSel)
-- nRow = Sel + 1
	-- if 

-- end














