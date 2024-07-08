soluonghoadang = 20


function main(idx)
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
ngay = tonumber(date("%d"))
if GetLevel() < 80 then
Talk(1,"","§¼ng cÊp d­íi 80 kh«ng thÓ tr¶ lêi Hoa §¨ng")
return
end
if CheckFreeBoxItem(4,17,1,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ 1 « trèng, kh«ng thÓ tr¶ lêi c©u hái !")
	return
end
if GetTask(477) > 0 then
Talk(1,"","B¹n ®ang trong thêi gian t¹m khãa Hoa §¨ng, kh«ng thÓ tham gia !")
return
end

if GetTask(120) ~= ngay then
SetTask(120,ngay)
SetTask(121,0)
end

if GetTask(121) <= soluonghoadang then
			sl = GetCash()
			tientru = 1000
			if GetCash() > tientru then
				Pay(tientru)
				if GetCash() == (sl-tientru) then
						DelNpc(idx)
						SetGlbMissionV(43, GetGlbMissionV(43) - 1)
						Msg2World("Cßn l¹i: "..GetGlbMissionV(43).." c©y")
							i = RandomNew(1, getn(CAUHOI))
							SetTaskTemp(2,CAUHOI[i][6])
							SetFightState(0)
							if GetTaskTemp(2) < 1 or GetTaskTemp(2) > 4 then
								return
							end
							a = random(1,4)
							if a == 1 then
							SayNew(""..checkmau(GetTaskTemp(2))..": "..CAUHOI[i][1].."",4,
							"A. "..CAUHOI[i][2].."/dung",
							"B. "..CAUHOI[i][3].."/sai",
							"C. "..CAUHOI[i][4].."/sai",
							"D. "..CAUHOI[i][5].."/sai")
							elseif a == 2 then
							SayNew(""..checkmau(GetTaskTemp(2))..": "..CAUHOI[i][1].."",4,
							"A. "..CAUHOI[i][5].."/sai",
							"B. "..CAUHOI[i][2].."/dung",
							"C. "..CAUHOI[i][3].."/sai",
							"D. "..CAUHOI[i][4].."/sai")
							elseif a == 3 then
							SayNew(""..checkmau(GetTaskTemp(2))..": "..CAUHOI[i][1].."",4,
							"A. "..CAUHOI[i][4].."/sai",
							"B. "..CAUHOI[i][5].."/sai",
							"C. "..CAUHOI[i][2].."/dung",
							"D. "..CAUHOI[i][3].."/sai")
							elseif a == 4 then
							SayNew(""..checkmau(GetTaskTemp(2))..": "..CAUHOI[i][1].."",4,
							"A. "..CAUHOI[i][3].."/sai",
							"B. "..CAUHOI[i][4].."/sai",
							"C. "..CAUHOI[i][5].."/sai",
							"D. "..CAUHOI[i][2].."/dung")
							end 	
				else
				Talk(1,"","Hack ha em")
				end			
			else
			Talk(1,"","<color=green>Hoa §¨ng<color> B¹n kh«ng mang ®ñ <color=yellow>"..tientru.."<color> l­îng")
			end	
		else
		Talk(1,"","<color=green>Hoa §¨ng<color> Giíi h¹n Hoa §¨ng <color=yellow>"..soluonghoadang.."<color> c©u")
		end
end

function checkmau(i)
if i == 1 then
return "<color=red>[C©u hái DÔ]<color>"
elseif i == 2 then
return "<color=green>[C©u hái B×nh Th­êng]<color>"
elseif i == 3 then
return "<color=yellow>[C©u hái Khã]<color>"
elseif i == 4 then
return "<color=pink>[C©u hái §Æc BiÖt]<color>"
end
end

function dung()
check = GetTask(121)
SetTask(121,GetTask(121)+1)
SetFightState(1)
if GetTask(121) == check + 1 then
	Msg2Player("<color=green>C©u hái thø "..GetTask(121)..": Chóc mõng, n¹n ®· tr¶ lêi chÝnh x¸c !!")
	AddOwnExp(250000)


				
	if GetTaskTemp(2) == 1 then
		m = random(1000,5000)
		Earn(m)
		Msg2Player("B¹n tr¶ lêi 1 C©u Hái DÔ nhËn ®­îc: <color=yellow>"..m.." l­îng !")
	elseif GetTaskTemp(2) == 2 then
		sx2 = random(1,100)
		if sx2 < 70 then
					AddEventItem(173)					
					Msg2Player("B¹n tr¶ lêi 1 C©u Hái B×nh Th­êng nhËn ®­îc:  <color=yellow>Phóc Duyªn [TiÓu] ")
		else
					AddEventItem(174)
					Msg2Player("B¹n tr¶ lêi 1 C©u Hái B×nh Th­êng nhËn ®­îc:  <color=yellow>Phóc Duyªn [Trung] ")
		end
	elseif GetTaskTemp(2) == 3 then
				ttl = random(1,100)
				if ttl < 10 then
					idxitem = AddEventItem(113)
					Msg2Player("B¹n tr¶ lêi 1 C©u Hái Khã nhËn ®­îc:  <color=green>"..GetNameItemBox(idxitem).."")
					Msg2World("Chóc mõng "..GetName().." tr¶ lêi C©u Hái Khã nhËn ®­îc:  <color=green>"..GetNameItemBox(idxitem).."")
				else
					idxitem = AddEventItem(114)
					Msg2Player("B¹n tr¶ lêi 1 C©u Hái Khã nhËn ®­îc:  <color=green>"..GetNameItemBox(idxitem).."")
					Msg2World("Chóc mõng "..GetName().." tr¶ lêi C©u Hái Khã nhËn ®­îc:  <color=green>"..GetNameItemBox(idxitem).."")				
				end
	elseif GetTaskTemp(2) == 4 then
				ttl = random(1,100)
				if ttl < 10 then
					idxitem = AddEventItem(117)
					Msg2Player("B¹n tr¶ lêi 1 C©u Hái §Æc BiÖt nhËn ®­îc:  <color=green>"..GetNameItemBox(idxitem).."")
					Msg2World("Chóc mõng "..GetName().." tr¶ lêi C©u Hái §Æc BiÖt nhËn ®­îc:  <color=green>"..GetNameItemBox(idxitem).."")
				else
					idxitem = AddEventItem(118)
					Msg2Player("B¹n tr¶ lêi 1 C©u Hái §Æc BiÖt nhËn ®­îc:  <color=green>"..GetNameItemBox(idxitem).."")
					Msg2World("Chóc mõng "..GetName().." tr¶ lêi C©u Hái §Æc BiÖt nhËn ®­îc:  <color=green>"..GetNameItemBox(idxitem).."")
				end
	end	
else
	Talk(1,"","Hack ha em")
end
end

function sai()
SetFightState(1)
if GetTaskTemp(2) == 4 then
Msg2World("<color=pink>Xin chia buån cïng "..GetName().." võa tr¶ lêi sai 1 c©u hái §Æc BiÖt !")
elseif GetTaskTemp(2) == 3 then
Msg2World("<color=green>Xin chia buån cïng "..GetName().." võa tr¶ lêi sai 1 c©u hái Khã !")
end
Msg2Player("C©u hái thø "..GetTask(121)..": Tr¶ lêi kh«ng chÝnh x¸c. Kh«ng thÓ tr¶ lêi Hoa §¨ng trong 5 gi©y !")
SetTask(477, 5*18)
end

CAUHOI = {
{"1 Man NhËt b»ng bao nhiªu Yªn?","10.000 Yªn","1.000 Yªn","100.000 Yªn","1000.000 Yªn",1},	
{"11 nh©n 11 b»ng mÊy ?","121","122","142","118",1},	
{"112 céng 29 b»ng mÊy?","141","151","121","114",1},	
{"14/02 lµ ngµy g×?","Valentine LÔ T×nh Nh©n","Quèc TÕ ThiÕu Nhi","Phô N÷ ViÖt Nam","LÔ Gi¸ng Sinh",1},	
{"20/11 lµ ngµy g×?","Nhµ gi¸o ViÖt Nam","Quèc TÕ Phô N÷","LÔ T×nh Nh©n","LÔ Gi¸ng Sinh",1},	
{"3 ngµy cuèi tuÇn diÔn ra mÊy trËn Liªn §Êu ?","8","4","6","5",1},	
{"6 nh©n 6 b»ng mÊy ?","36","12","42","18",1},	
{"99 céng 69 b»ng mÊy?","168","151","121","114",1},	
{"Ba L¨ng HuyÖn ®i Xa Phu tõ ®©u qua ?","T­¬ng D­¬ng","Ph­îng T­êng","§¹i Lý","Th¹ch Cæ TrÊn",1},	



{"Ai th¶o ¸ng v¨n bÊt hñ B×nh Ng« §¹i C¸o ?","NguyÔn Tr·i","NguyÔn Du","Ng« TÊt Tè","TrÞnh C«ng S¬n",2},	
{"Al lµ kÝ hiÖu cña nguyªn tè hãa häc nµo? ","Nh«m","S¾t ","KÏm","Vµng ",2},	
{"Alijed Nobel lµ ng­êi s¸ng lËp ra gi¶i Nobel lµ ng­êi n­íc nµo ?","Thôy §iÓn","Mü","Ph¸p","óc",2},	
{" ViÖt Nam ë mói giê thø mÊy ","7 ","6 ","8 ","10 ",2},	
{"Ai lµ ng­êi dêi ®« tõ Hoa L­ vÒ Th¨ng Long n¨m 1010?","Lý Th¸i Tæ","TrÇn Nh©n T«ng","Lª §¹i Hµnh","TrÇn Quèc To¶n",2},	
{"Ai lµ ng­êi ng«ng cuång nhÊt?","TuyÒn C¬ Tö","DiÖu Nh­","HuyÒn Gi¸c","§­êng BÊt NhiÔm",2},	
{"Ai lµ ng­êi t×m ra ch©u Mü?  ","Columbo ","Napoleon ","Henry Co Dai ","Nicoladesi ",2},	
{"Ai lµ ng­êi theo Phan §×nh Phïng ®óc sóng chèng Ph¸p?","Cao Thang","Vu Dinh Long","Pho Duc Phuong","Ly Quang Dieu",2},	
{"Ai l·nh ®¹o qu©n Lam S¬n khëi nghÜa dµnh th¾ng lîi ?","Lª Lîi","TrÇn Quèc To¶n","Vâ ThÞ S¸u","Lý Th¸i Tæ",2},	
{"¢m tiÕt ®­îc ph¸t ra nhê bé phËn g×?","Thanh qu¶n","M«i","L­ìi","D¹ dµy",2},	
{"¢m thanh cña Ve SÇu c¸i ph¸t ra tõ ®©u?","Kh«ng cã ©m thanh","C¸nh","Bông","Ch©n",2},	
{"¢m thanh kh«ng chuyÓn ®­îc ®i trong m«i tr­êng nµo?","Ch©n kh«ng","Bôi","Giã","M­a",2},	
{"Bµ HuyÖn Thanh Quan t¶ c¶nh ®Ìo ngang vµo thêi gian nµo?","ChiÒu","Tèi","S¸ng","Tr­a",2},	
{"B¸c Hå ®äc b¶n tuyªn ng«n ®éc lËp khai sinh ra n­íc ViÖt Nam lµ b¶n tuyªn ng«n thø mÊy ?","3","1","4","2",2},	
{"B¸c Hå ph¸t ®éng TÕt Trång C©y vµo n¨m nµo ?","1960","1945","1922","1955",2},	
{"B¸c Hå quª ë ®©u? ","NghÖ An ","Thanh Hãa ","Quang Ng·i ","Héi An ",2},	
{"B¶n ®å Ba L¨ng HuyÖn cã thÓ ®i ®Õn ®©u ? ","§¹t Ma §­êng ","Ph­îng T­êng ","L©m An ","Chu Tiªn TrÊn ",2},	
{"B¶ng tuÇn hoµn hãa häc cã bao nhiªu nguyªn tè? ","109 ","123 ","190 ","132 ",2},	
{"B¸nh Tr­ng b¸nh Giµy ®c lµm vµo dÞp nµo trong n¨m?","TÕt Nguyªn §¸n","TÕt D­¬ng LÞch","TÕt ThiÕu Nhi","TÕt Trung Thu",2},	


{"Ai kh¸m ph¸ ra Cöu D­¬ng ThÇn C«ng?","Gi¸c ViÔn","§¹t Ma","HuyÒn Gi¸c","HuyÒn Nan",2}, 
{"Ai t¹o ra ph¸i Nga Mi?","Qu¸ch T­¬ng","Tr­¬ng Tam Phong","¢u D­¬ng Phong","Hoµng D­îc S­",2}, 	
{"Anh Hïng X¹ §iªu ph¸t hµnh n¨m nµo?","2003","2002","2004","2005",2}, 	
{"Bao nhiªu ®iÓm tÝch lòy míi lªn ®­îc §¹i T­íng ? ","10000 ","6000 ","3000 ","1500 ",2},	
{"Bao nhiªu ®iÓm tÝch lòy míi lªn ®­îc HiÖu óy ? ","1500 ","6000 ","10000 ","3000 ",2},	
{"Bao nhiªu ®iÓm tÝch lòy míi lªn ®­îc Phã T­íng ? ","6000 ","3000 ","1500 ","10000 ",2},	
{"Bao nhiªu ®iÓm tÝch lòy míi lªn ®­îc Thèng LÜnh ? ","3000 ","6000 ","1500 ","10000 ",2},	
{"Bao nhiªu Nh¹c V­¬ng Hån Th¹ch ®æi ®­îc Nh¹c V­¬ng KiÕm ? ","50 viªn ","30 viªn ","20 viªn ","40 viªn ",2},	
{"Bao nhiªu S¸t Thñ LÖnh míi ghÐp thµnh S¸t Thñ Gi¶n ? ","5 c¸i ","10 c¸i ","15 c¸i ","3 c¸i ",2},	

{"B¹ch V©n C­ SÜ lµ tªn hiÖu cña nhµ th¬?","NguyÔn BØnh Khiªm","Xu©n DiÖu","Hå Xu©n H­¬ng","Tr­¬ng H¸n Siªu",1},	
{"B¹n ®ang tham gia ho¹t ®éng g×?","Hoa §¨ng","Tèng Kim","D· TÈu","VËn Tiªu",1},	
{"B¶n ®å Ch©n Nói Tr­êng B¹ch dµnh cho cÊp ®é bao nhiªu?","8x","7x","6x","5x",1},	
{"B¶n ®å §¹t Ma §­êng dµnh cho cÊp ®é bao nhiªu?","1x","2x","3x","4x",1},	
{"B¶n ®å §iÓm Th­¬ng S¬n dµnh cho cÊp ®é bao nhiªu?","4x","2x","3x","1x",1},	
{"B¶n ®å Hoµnh S¬n Ph¸i dµnh cho cÊp ®é bao nhiªu?","6x","7x","8x","5x",1},	
{"B¶n ®å Kinh Hoµng §éng dµnh cho cÊp ®é bao nhiªu?","6x","7x","8x","5x",1},	
{"B¶n ®å Linh Cèc §éng dµnh cho cÊp ®é bao nhiªu?","6x","7x","8x","5x",1},	
{"B¶n ®å MËt ThÊt ThiÕu L©m dµnh cho cÊp ®é bao nhiªu?","5x","7x","6x","4x",1},	
{"B¶n ®å Nh¹n Th¹ch §éng dµnh cho cÊp ®é bao nhiªu?","8x","7x","6x","5x",1},	
{"B¶n ®å Sa M¹c §Þa BiÓu dµnh cho cÊp ®é bao nhiªu?","8x","9x","5x","6x",1},	
{"B¸n kÝnh tr¸i ®Êt lµ bao nhiªu km?","6.378","6.783","6.873","6.387",2},	
{"B¶ng ch÷ c¸i cña ViÖt Nam cã bao nhiªu chø c¸i? ","29 ","26 ","32 ","45 ",2},	
{"B¶ng ch÷ c¸i TiÕng ViÖt cã bao nhiªu nguyªn ©m?","12","19","22","10",1},	
{"B¸nh PÝa ®Æc s¶n cña ?","Sãc Tr¨ng","Sµi Gßn","Hµ Néi","§µ N½ng",1},	
{"Bao giê cho ®Õn th¸ng ...., hoa g¹o rông xuèng bµ giµ ®¾p ch¨n","Ba","N¨m","Hai","T¸m",1},	
{"Bao nhiªu S¸t Thñ Gi¶n míi ®æi ®­îc LÖnh Bµi V­ît ¶i ? ","5 c¸i ","10 c¸i ","8 c¸i ","15 c¸i ",2},	
{"BÝ kÝp 12x cña C¸i Bang tªn g×? ","Hçn Thiªn khÝ C«ng ","§¹i Thõa Nh­ Lai Chó ","§¶o H­ Thiªn ","HÊp Tinh YÓm ",2},	
{"BÝ kÝp 12x cña C«n L«n  tªn g×? ","L­¬ng Nghi Ch©n KhÝ  ","Hçn Thiªn khÝ C«ng ","§¹i Thõa Nh­ Lai Chó  ","§¶o H­ Thiªn ",2},	
{"BÝ kÝp 12x cña D­¬ng M«n tªn g×? ","Mª ¶nh Tung ","XuÊt ø BÊt NhiÔm ","BÕ NguyÖt PhÊt TrÇn ","§¶o H­ Thiªn ",2},	
{"BÝ kÝp 12x cña Nga Mi tªn g×? ","BÕ NguyÖt PhÊt TrÇn ","Mª ¶nh Tung ","XuÊt ø BÊt NhiÔm ","§¶o H­ Thiªn ",2},	
{"BÝ kÝp 12x cña Ngò §éc tªn g×? ","HÊp Tinh YÓm ","XuÊt ø BÊt NhiÔm ","Ngù TuyÕt Èn ","Mª Hån ¶nh ",2},	
{"BÝ kÝp 12x cña Thiªn NhÉn  tªn g×? ","Ma ¢m PhÖ Ph¸ch ","Hçn Thiªn khÝ C«ng ","§¹i Thõa Nh­ Lai Chó ","§¶o H­ Thiªn ",2},	
{"BÝ kÝp 12x cña Thiªn V­¬ng tªn g× ","§¶o H­ Thiªn ","XuÊt ø BÊt NhiÔm ","Mª ¶nh Tung ","BÕ NguyÖt PhÊt TrÇn ",2},	
{"BÝ kÝp 12x cña ThiÕu L©m tªn g×? ","§¹i Thõa Nh­ Lai Chó ","§¶o H­ Thiªn ","XuÊt ø BÊt NhiÔm ","Mª ¶nh Tung ",2},	
{"BÝ kÝp 12x cña Thóy Yªn tªn g×? ","Ngù TuyÕt Èn ","§¹i Thõa Nh­ Lai Chó ","§¶o H­ Thiªn ","XuÊt ø BÊt NhiÔm ",2},	
{"BÝ kÝp 12x cña Vâ §ang tªn g×? ","XuÊt ø BÊt NhiÔm ","Mª ¶nh Tung ","BÕ NguyÖt PhÊt TrÇn ","§¶o H­  Thiªn ",2},	
{"BÝ KÝp 9x c¸c ph¸i cã tÊt c¶ bao nhiªu cuèn? ","28 cuèn ","30 cuèn ","20 cuèn ","25 cuèn ",2},	
{"BÝ kÝp n»m trong û Thiªn KiÕm tªn g×?","Cöu ¢m Ch©n Kinh","Cöu ¢m B¸t Thñ","§éc C« Ch©n Kinh","§éc C« Cöu ¢m",2}, 	
{"BiÓu t­îng seagames 22 lµ g×? ","Tr©u Vµng ","Nh©n S­ ","Th¸p §«i ","MÆt Trêi ",2},	
{"Bãng bµn lµ m«n thÓ thao phæ biÕn nhÊt cã nguån gèc tõ n­íc nµo ?","Anh","Ph¸p","T©y Ban Nha","Thæ NhÜ Kú",2},	
{"Bé Tem B­u ChÝnh ®Çu tiªn ViÖt Nam in h×nh g× ?","Ch©n dung Chñ TÞch HCM","T­íng Vâ Nguyªn Gi¸p","BiÓu T­îng Sao Vµng","BiÓu T­îng Phong Th­",2},	
{"Bukit T×mah lµ ngän nói cao nhÊt cña Quèc Gia ?","Singapore","Indonesia","Malaysia","Philipin",1},	
{"Bón bß lµ ®Æc s¶n cña miÒn?","Trung","B¾c","Nam","T©y",1},	
{"Bón Mùc V¹n Ninh lµ ®Æc s¶n cña n¬i nµo ?","Nha Trang","§µ L¹t","§µ N½ng","Kiªn Giang",1},	
{"Bón Thang lµ ®Æc s¶n d©n téc cña n¬i nµo ?","Hµ Néi","B¾c Ninh","Nam §Þnh","H¶i Phßng",1},	
{"Ca khóc 19 th¸ng 8 lµ t¸c phÈm cña ?","Xu©n Oanh","Mai H­¬ng","Thu Hoµi","§oan Trang",1},	
{"Ca khóc Ch¾c Ai §ã SÏ vÒ lµ ai h¸t ?","S¬n Tïng MTP","Nam Tïng S¬n","Cao Th¸i S¬n","Hå Quang HiÕu",1},	
{"Ca khóc D­êng Nh­ Ta §· do ai thÓ hiÖn?","Mü T©m","Hå Ngäc Hµ","B¶o Thy","BÝch Ph­¬ng",1},	
{"Ca khóc §øa BÐ do bao nhiªu Ca SÜ Nh¹c SÜ thÓ hiÖn ?","60","50","70","40",1},	
{"Ca khóc Göi anh xa nhí do ai thÓ hiÖn?","BÝch Ph­¬ng","L­¬ng BÝch H÷u","B¶o Thy","§«ng Nhi",1},	
{"Ca khóc M­a §¸ lµ ai h¸t ?","Cao Trung","TuÊn H­ng","§an Tr­êng","TrÞnh §×nh Quang",1},	
{"Ca khóc Pha Lª TÝm do ca sÜ nµo thÓ hiÖn? ","Cao Th¸i S¬n ","Nam C­êng ","V©n Quang Long ","Nguyªn Vò ",2},	
{"Ca khóc Quèc Ca do ai s¸ng t¸c ?","V¨n Cao","Nam Cao","Phong Nh· ","Hoµi Linh",1},	
{"Ca khóc T×nh Ca cña Hoµng ViÖt nh¾c ®Õn mïa?","Xu©n","H¹","Thu","§«ng",1},	
{"Ca khóc Thªm Mét LÇn §au cña nhãm nh¹c nµo?","HKT","LÖ R¬i","Titi","S¬n Tïng",1},	
{"C¸i g× cã thÓ c¾t ®­îc Kim C­¬ng?","Kim C­¬ng","ThÐp","Dao","KÐo",1},	
{"C¶ng lín nhÊt cña §«ng Nam ¸ lµ c¶ng nµo ?","Singapore","Japan","Korea","Taiwan",1},	
{"CÊp TiÓu häc gåm bao nhiªu líp? ","5 líp ","4 líp ","3 líp ","7 líp ",2},	
{"CÊp trang bÞ nµo hç trî nhau ®Ó kÝch thuéc tÝnh ? ","Bao tay - Ngäc béi ","Bao tay - NhÉn trªn ","Bao tay - NhÉn d­íi ","Bao tay - D©y ChuyÒn ",2},	
{"CÊp trang bÞ nµo hç trî nhau ®Ó kÝch thuéc tÝnh ? ","GiÇy - NhÉn trªn ","GiÇy - NhÉn d­íi ","GiÇy - Ngäc béi ","GiÇy - D©y chuyªn ",2},	
{"CÊp trang bÞ nµo hç trî nhau ®Ó kÝch thuéc tÝnh ? ","Nãn - Vó KhÝ ","Nãn - Bao tay ","Nãn - ¸o ","Nãn - Th¾t l­ng ",3},	
{"CÊp trang bÞ nµo hç trî nhau ®Ó kÝch thuéc tÝnh ? ","Th¾t l­ng - NhÉn d­íi ","Th¾t L­ng - NhÉn trªn ","Th¾t l­ng - D©y ChuyÒn ","Th¾t L­ng - Ngäc Béi ",2},	
{"CÊp trang bÞ nµo hç trî nhau ®Ó kÝch thuéc tÝnh ? ","Trang phôc - D©y chuyÒn ","Trang phôc - Ngäc béi ","Trang phôc - NhÉn trªn ","Trang phôc - Nh©n d­íii ",2},	
{"CÇu thñ ®­a Bå §µo Nha giµnh chøc V« §Þch EURO 2016?","Eder","Renato Sanches","Nani","Cristiano Ronaldo",1},	
{"Cã bao nhiªu vÞ thÇn trªn ®Ønh Olympus? ","12 ","10 ","11 ","8 ",2},	
{"Cã tÊt c¶ bao nhiªu lo¹i trang bÞ cã hiÖu øng May M¾n  ","3  ","5  ","4 ","2 ",2},	
{"Con ng­êi ®Çu tiªn ®Æt ch©n lªn MÆt Tr¨ng n¨m nµo?","1969","1696","1669","1966",1},	
{"Con Sªn cã mÊy c¸i mòi ?","4","6","8","2",1},	
{"Con s«ng dµi thø 3 thÕ giíi? ","Mississippi ","Hoµng Hµ ","Tr­êng Giang ","Nil ",2},	
{"Con vËt nµo to nhÊt thÕ giíi? ","C¸ voi xanh ","Chó voi con b¶n ®«n ","Baby Shark Todo Todo ","GÊu Nga",2},	
{"C«n S¬n - KiÕp B¹c lµ di tÝch lÞch sö cña TØnh nµo?","H¶i D­¬ng","H­ng Yªn","Nam §Þnh","B¾c Ninh",2},	
{"Cét ®Ìn giao th«ng cã mÊy mµu? ","3 ","4 ","5 ","2 ",1},	
{"C¬ b¾p m¹nh nhÊt trong c¬ thÓ con ng­êi lµ?","C¬ bông","C¬ cÇu vai","C¬ c¼ng tay","C¬ b¾p ®ïi",1},	
{"C¬ së vËt chÊt chñ yÕu cña sù sèng? ","Pr«tªin vµ Axit Nuclªic ","Pr«tªin ","Carbon Hydrat ","Axit Nuclªic ",3},	
{"Cu lµ kÝ hiÖu cña nguyªn tè hãa häc nµo? ","§ång","S¾t ","Nh«m","Vµng ",2},	
{"Cùu cÇu thñ Bãng §¸ chuyªn nghiÖp ng­êi Anh lµ ai?","David Beckham","Ronaldo","Lionel Messi","Ronaldinho",1},	
{"Ch©n §µ §iÓu cã bao nhiªu mãng?","2","1","4","3",1},	
{"Ch©u lôc nµo mµ cã c¸c n­íc hÇu nh­ trång lóa? ","Ch©u Phi ","Ch©u ¸  ","Ch©u Mü  ","Ch©u ¢u ",2},	
{"Chu ChØ Nh­îc lµ ch­ëng m«n ®êi thø mÊy cña ph¸i Nga Mi?","4","3","5","2",3}, 	
{"Chu k× World Cup Bao nhiªu n¨m? ","4 n¨m ","5 n¨m ","3 n¨m ","6 n¨m ",2},	
{"Chïa Ba Vµng thuéc tØnh?","Qu¶ng Ninh","H¶i Phßng","H­ng Yªn","H¶i D­¬ng",1},	
{"Chïa B¸i §Ýnh thuéc tØnh nµo ?","Ninh B×nh","Hµ TÜnh","Nam §Þnh","Hµ Nam",1},	
{"Chïa Mét Cét ®­îc x©y dùng tõ thêi nµo?","Lý","Lª","TrÇn","NguyÔn",1},	
{"Ch÷ viÕt t¾t B Trong Ng«n ng÷ lËp tr×nh lµ g× ?  ","Basic ","Visual C++ ","Boland C ","Booleen ",2},	
{"Ch­ëng M«n ph¸i Thóy Yªn lµ ai ?","Do·n Hµm Yªn","Yªn HiÓu Tr¸i","Chung Linh Tó","Do·n Thanh V©n",1},	
{"Da ng­êi gåm mÊy líp? ","3 líp ","2 líp ","4 líp ","5 líp ",3},	
{"D­îc phÈm N÷ Nhi Hång cã t¸c dông g× ?","x2 LuyÖn Kü N¨ng","x2 Kinh NghiÖm ","x2 D· tÈu","x2 Tèng Kim",1},	
{"D­îc phÈm Tiªn Th¶o Lé cã t¸c dông g× ?","x2 Kinh NghiÖm ","x2 luyÖn kü n¨ng","x2 D· tÈu","x2 Tèng Kim",1},	
{"§µn BÇu cña ViÖt Nam xuÊt hiÖn vµo thêi gian nµo? ","ThÕ kØ thø 7 ","ThÕ kØ thø 5 ","ThÕ kÜ thø 8 ","ThÕ kØ thø 6 ",2},	
{"§¸p ¸n nµo kh¸c hoµn toµn víi c¸c ®¸p ¸n cßn l¹i? ","Hoa hång ","Con chã ","Con hæ ","Con mÌo ",2},	
{"§Æc s¶n cña H¶i D­¬ng lµ g×?","B¸nh §Ëu Xanh","B¸nh Gai Ninh Giang","B¸nh Cèm","B¸nh Tr­ng",1},	
{"§Ó ®æi mµu tªn cÇn chän NPC nµo? ","Hç trî T©n Thñ ","NhiÕp ThÝ TrÇn ","Kú Tr©n C¸c ","Xa Phu ",1},	
{"§Ó ®æi tªn tèn bao nhiªu tiÒn ®ång? ","100","200","50","60",1},	
{"§ªm th¸ng N¨m ch­a n»m ®· s¸ng, ngµy th¸ng..... ch­a c­êi ®· tèi","M­êi","S¸u","Hai","Bèn",1},	
{"§i hái Giµ, vÒ nhµ hái....?","TrÎ","Vî","Bè","Bå",1},	
{"§iÓm tiÒm n¨ng néi c«ng t¨ng g× ? ","Néi lùc ","Sinh khÝ ","Lùc tay ","ChÝnh x¸c",2},	
{"§iÒn tõ thÝch hîp vµo chç trèng : Cê §á Sao....?","Vµng","Xanh","TÝm","N©u",1},	
{"§é ChÝnh X¸c tèi ®a cña Vò KhÝ lµ bao nhiªu?","300","255","200","100",1},	
{"§å Long §ao ®­îc rÌn tõ? ","HuyÒn ThiÕt Träng KiÕm","û Thiªn KiÕm","V« §Þch ThÇn KiÕm","Kim Xµ KiÕm",2}, 	
{"§éc C« CÇu B¹i sö dông m«n vâ c«ng g×?","§éc C« Cöu KiÕm","§éc C« B¸t Thñ","§éc C« Ch©n Kinh","§éc C« Cöu ¢m",2}, 	
{"§éi tuyÓn Bå §µo Nha v« ®Þch EURO mÊy lÇn ?","1","2","4","3",1},	
{"§éi tuyÓn v« ®Þch EURO 2004 lµ ®éi nµo?","Hy L¹p","T©y Ban Nha","§øc","Bå §µo Nha",1},	
{"§éi tuyÓn v« ®Þch EURO 2012 lµ ®éi nµo?","T©y Ban Nha","Bå §µo Nhµ","§øc","Ph¸p",1},	
{"§éi tuyÓn v« ®Þch EURO 2016 lµ?","Bå §µo Nha","T©y Ban Nha","§øc","Ph¸p",1},	
{"§«ng Ph­¬ng BÊt B¹i tu luyÖn m«n ph¸i vâ c«ng nµo? ","Quú Hoa B¶o §iÓn","Ngäc N÷ T©m Kinh","Phôc Ma Tr­îng Ph¸p","B¸ch BiÕn Quû ¶nh",3}, 	
{"Fe lµ kÝ hiÖu cña nguyªn tè hãa häc nµo? ","S¾t ","§ång ","Nh«m","Vµng ",2},	
{"GÆp NPC nµo ®Ó ®æi tÝch lòy Tèng Kim ?","Qu©n Nhu Quan","HiÖu Thuèc","T¹p Hãa","Mé Binh Quan",1},	
{"GÆp NPC nµo ®Ó h¹ cÊp trang bÞ ?","Thî RÌn","HiÖu Thuèc","T¹p Hãa","B¸n Ngùa",1},	
{"GÆp NPC nµo ®Ó hñy trang bÞ háng ?","Thî RÌn","HiÖu Thuèc","T¹p Hãa","B¸n Ngùa",1},	
{"GÆp NPC nµo ®Ó hñy trang bÞ khãa vÜnh viÔn ?","Thî RÌn","HiÖu Thuèc","T¹p Hãa","B¸n Ngùa",1},	
{"GÆp NPC nµo ®Ó mua Tèng Kim Chiªu Th­ ?","T¹p Hãa","HiÖu Thuèc","Thî RÌn","B¸n Ngùa",1},	
{"GÆp NPC nµo ®Ó mua Tói d­îc phÈm ?","HiÖu Thuèc","T¹p Hãa","Thî RÌn","B¸n Ngùa",1},	
{"GÆp NPC nµo ®Ó n©ng cÊp trang bÞ ?","Thî RÌn","HiÖu Thuèc","T¹p Hãa","B¸n Ngùa",1},	
{"GÆp NPC nµo ®Ó nhËn nhiÖm vô S¸t Thñ? ","NhiÕp ThÝ TrÇn ","Hç Trî T©n Thñ ","§­êng BÊt NhiÔm ","Xa phu ",1},	
{"GÆp NPC nµo ®Ó tham gia Tèng Kim ?","Mé Binh Quan","HiÖu Thuèc","T¹p Hãa","Qu©n Nhu Quan",1},	
{"GÆp NPC nµo ®Ó xem sè l­îng VLMT & TTK nh©n vËt ®· sö dông?","V¹n Sù Th«ng","HiÖu Thuèc","T¹p Hãa","B¸n Ngùa",1},	
{"Gi¸ trÞ B¨ng s¸t néi c«ng tèi ®a cña Vò khÝ xanh lµ bao nhiªu?","200","50","100","150",1},	
{"Gi¸ trÞ B¨ng s¸t ngo¹i c«ng tèi ®a cña Vò khÝ xanh lµ bao nhiªu?","100","200","50","150",1},	
{"Gi¸ trÞ §éc s¸t néi c«ng tèi ®a cña Vò khÝ xanh lµ bao nhiªu?","50","25","100","200",1},	
{"Gi¸ trÞ §éc s¸t ngo¹i c«ng tèi ®a cña Vò khÝ xanh lµ bao nhiªu?","50","200","100","150",1},	
{"Gi¸ trÞ Háa  s¸t ngo¹i c«ng tèi ®a cña Vò khÝ xanh lµ bao nhiªu?","100","200","50","150",1},	
{"Gi¸ trÞ Háa s¸t néi c«ng tèi ®a cña Vò khÝ xanh lµ bao nhiªu?","200","50","100","150",1},	
{"Gi¸ trÞ Kh¸ng B¨ng tèi ®a cña trang bÞ xanh lµ bao nhiªu?","25","22","15","19",1},	
{"Gi¸ trÞ Kh¸ng §éc tèi ®a cña trang bÞ xanh lµ bao nhiªu?","25","22","15","19",1},	
{"Gi¸ trÞ Kh¸ng Háa tèi ®a cña trang bÞ xanh lµ bao nhiªu?","25","22","15","19",1},	
{"Gi¸ trÞ Kh¸ng L«i tèi ®a cña trang bÞ xanh lµ bao nhiªu?","30","22","15","25",1},	
{"Gi¸ trÞ L«i s¸t néi c«ng tèi ®a cña Vò khÝ xanh lµ bao nhiªu?","200","50","100","150",1},	
{"Gi¸ trÞ L«i s¸t ngo¹i c«ng tèi ®a cña Vò khÝ xanh lµ bao nhiªu?","100","200","50","150",1},	
{"Gi¸ trÞ May m¾n tèi ®a cña trang bÞ xanh lµ bao nhiªu?","10%  ","20%  ","9%  ","30% ",1},	
{"Gi¸ trÞ Phßng Thñ VËt Lý tèi ®a cña trang bÞ xanh lµ bao nhiªu?","25","22","15","19",1},	
{"Gi¸ trÞ S¸t th­¬ng vËt lý néi c«ng tèi ®a cña Vò khÝ xanh lµ bao nhiªu?","200","50","100","150",1},	
{"Gi¸ trÞ S¸t th­¬ng vËt lý ngo¹i c«ng tèi ®a cña Vò khÝ xanh lµ bao nhiªu?","50","200","100","150",1},	
{"Gi¶i phãng miÒn Nam lµ ng­êi nµo? ","30 th¸ng 4 ","19 th¸ng 5 ","2 th¸ng 9 ","5 th¸ng 7 ",1},	
{"Hµ Néi cã bao nhiªu phè ph­êng ","36 ","42 ","37 ","63 ",2},	
{"H·ng Hµng Kh«ng nµo cã thªm 20kg hµnh lý ký göi miÔn phÝ?","VietnamAirline","Jetstar","Vietjet","TÊt c¶ ph­¬ng ¸n trªn",1},	
{"Hµnh tinh nµo ko cã bÇu khÝ quyÓn? ","Thñy tinh ","Háa tinh ","Kim tinh ","Méc tinh ",3},	
{"Hµnh tinh nµo ko cã mÆt tr¨ng ","Kim tinh ","Méc tinh ","Háa tinh ","Thæ tinh ",3},	
{"Hµnh tinh to nhÊt hÖ mÆt trêi?","Sao Méc","Sao Háa","Sao B¾c §Èu","Sao Kim",1},	
{"HÖ Háa gåm nh÷ng m«n ph¸i nµo ?","C¸i Bang - Thiªn NhÉn","Nga Mi - Thóy Yªn","ThiÕu L©m - Thiªn V­¬ng","Vâ §ang - C«n L«n",1},	
{"HÖ Háa tù kÝch thuéc tÝnh Èn 1 cña Trang bÞ hÖ g× ?","Thæ","Háa","Kim","Méc",1},	
{"HÖ Kim gåm nh÷ng m«n ph¸i nµo ?","ThiÕu L©m - Thiªn V­¬ng","Nga Mi - Thóy Yªn","Vâ §ang - C«n L«n","C¸i Bang - Thiªn NhÉn",1},	
{"HÖ Kim tù kÝch thuéc tÝnh Èn 1 cña Trang bÞ hÖ g× ?","Thñy","Háa","Thæ","Méc",1},	
{"HÖ Méc gåm nh÷ng m«n ph¸i nµo ?","§­êng M«n - Ngò §éc","Nga Mi - Thóy Yªn","ThiÕu L©m - Thiªn V­¬ng","C¸i Bang - Thiªn NhÉn",1},	
{"HÖ Méc tù kÝch thuéc tÝnh Èn 1 cña Trang bÞ hÖ g× ?","Háa","Thñy","Thæ","Méc",1},	
{"HÖ nµo chØ cã nh©n vËt lµ n÷?","Thñy  ","Háa  ","Thæ  ","Méc ",3},	
{"HÖ nµo chØ cã nh©n vËt nam?","Kim  ","Thñy  ","Háa  ","Thæ ",3},	
{"HÖ Thæ gåm nh÷ng m«n ph¸i nµo ?","Vâ §ang - C«n L«n","Nga Mi - Thóy Yªn","ThiÕu L©m - Thiªn V­¬ng","C¸i Bang - Thiªn NhÉn",1},	
{"HÖ Thæ tù kÝch thuéc tÝnh Èn 1 cña Trang bÞ hÖ g× ?","Kim","Háa","Thæ","Méc",1},	
{"HÖ Thñy gåm nh÷ng m«n ph¸i nµo ?","Nga Mi - Thóy Yªn","Vâ §ang - C«n L«n","ThiÕu L©m- Thiªn V­¬ng","C¸i Bang - Thiªn NhÉn",1},	
{"HÖ Thñy tù kÝch thuéc tÝnh Èn 1 cña Trang bÞ hÖ g× ?","Méc","Háa","Thæ","Thñy",1},	
{"HiÖn t¹i, tiÒn ViÖt Nam cã mÖnh gi¸ cao nhÊt lµ bao nhiªu?","500.000 ®ång","200.000 ®ång","100.000 ®ång","50.000 ®ång",1},	
{"HiÖn t­îng ®­îc t¹o ra do sù t¸n s¾c ¸nh s¸ng cña mÆt trêi qua nh÷ng giät m­a lµ g×? ","CÇu Vång ","Khóc x¹ ","HÊp thô ¸nh s¸ng ","Ph¸t quang ",3},	
{"HiÖn t­îng n­íc tõ trêi r¬i xuèng gäi lµ g×? ","M­a ","Giã ","Bèc h¬i ","TriÒu C­¬ng ",1},	
{"Hå ChÝ Minh viÕt b¶n di chóc ®Çu tiªn vµo n¨m?","1965","1956","1966","1955",1},	
{"Hót Néi Lùc chØ cã t¸c dông víi ?","Ngo¹i C«ng","Néi C«ng","Néi C«ng vµ Ngo¹i C«ng","Kh«ng cã t¸c dông trong server",1}, -- sai	
{"Hót Sinh Lùc chØ cã t¸c dông víi ?","Ngo¹i C«ng","Néi C«ng","Néi C«ng vµ Ngo¹i C«ng","Kh«ng cã t¸c dông trong server",1}, -- sai	
{"HuyÒn Gi¸c lµ boss Hoµng Kim m«n ph¸i g× ?","ThiÕu L©m","Ngò §éc","C«n L«n","Thiªn NhÉn",1},	
{"Idol ViÖt Nam N¨m 2011 lµ ai? ","Uyªn Linh ","Mai H­¬ng ","§¨ng Khoa ","Ph­¬ng Vy ",2},	
{"Kinh §« ®Çu tiªn n­íc V¨n Lang n»m ë ®©u ?","Phó Thä","Cao B»ng","B¾c K¹n","Yªn B¸i",1},	
{"Kü n¨ng 1x hç trî t¨ng S¸t Th­¬ng VËt Lý cho c¶ 3 ®­êng ngo¹i c«ng cña §­êng M«n tªn lµ g× ?","§­êng M«n ¸m KhÝ","TÝch LÞch §¬n","§Þa DiÖm Háa","§éc ThÝch Cèt",1},	
{"Kü n¨ng 6x §ao cña ThiÕu L©m tªn g× ? ","Ma Ha V« L­¬ng ","Long Tr¶o Hæ Tr¶o ","Hoµnh T¶o Lôc Hîp ","S­ Tö Hèng ",1},	
{"Kü n¨ng 6x hç trî Nga mi ch­ëng  ","PhËt quang phæ chiÕu  ","BÊt diÖt bÊt tuyÖt  ","Th«i song väng nguyÖt  ","Nga mi ch­ëng ph¸p ",2},	
{"Kü n¨ng 6x hç trî ngò ®éc ®ao  ","Chu cÊp thanh minh  ","Ngò ®éc ®ao ph¸p  ","HuyÕt ®ao ®éc s¸t  ","B¸ch ®éc xuyªn t©m ",2},	
{"Kü n¨ng 6x nµo hç trî vâ kiÕm  ","Tam hoµnh thao nguyÖt  ","V« ng· v« kiÕm  ","Né l«i chØ  ","Vâ ®ang quyÒn ph¸p ",2},	
{"Kü n¨ng 9x Bïa cña Ngò §éc tªn lµ g×?","§o¹n H©n Hñ Cèt","V¹n §éc Thùc T©m","Xuyªn Y Ph¸ Gi¸p","Cöu Thiªn Cuång L«i",1},	
{"Kü n¨ng 9x bïa cña thiªn nhÉn  ","NhiÕp hån lo¹n t©m  ","V©n long kÝch  ","Thiªn ma gi¶i thÓ  ","Ma ©m phÖ ph¸ch ",1},	
{"Kü n¨ng 9x cña §­êng m«n phi ®ao  ","NhiÕp hån nguyÖt ¶nh  ","T¸n hoa tiªu  ","B·o vò lÖ hoa  ","Truy t©m tiÔn ",1},	
{"Kü n¨ng 9x cña néi c«ng cña c«n l«n   ","L«i ®éng cöu thiªn  ","L­ìng nghi ch©n khÝ  ","S­íng ng¹o c«n l«n  ","NhÊt khÝ tam thanh ",2},	
{"Kü n¨ng 9x cña ngñ ®éc ch­ëng  ","¢m phong thùc cèt  ","§o¹n c©n hñ cèt  ","Ngò ®éc ch­ëng ph¸p  ","B¸ch ®éc xuyªn t©m ",2},	
{"Kü n¨ng 9x ®ao cña C«n L«n tªn g×   ","Ng¹o tuyÕt tiªu phong  ","L«i ®éng cöu thiªn  ","S­¬ng ng¹o c«n l«n  ","Cuång phong s©u ®iÖn ",2},	
{"Kü n¨ng 9x néi c«ng C¸i Bang tªn g× ? ","Phi Long T¹i Thiªn ","§¶ CÈu TrËn ","Thiªn H¹ V« CÈu ","Tiªu Diªu C«ng ",1},	
{"Kü n¨ng 9x néi c«ng Nga Mi tªn g× ? ","Phong S­¬ng To¸i ¶nh ","Méng §iÖp ","BÊt TuyÖt BÊt DiÖt ","PhËt T©m Tõ H÷u ",1},	
{"Kü n¨ng 9x néi c«ngcña Thóy Yªn lµ g× ?","B¨ng T©m Tiªn Tö","B¨ng Tung V« ¶nh","B¨ng Cèt TuyÕt T©m","TuyÕt ¶nh",1},	
{"Kü n¨ng 9x ngo¹i c«ng C¸i Bang tªn g×  ? ","Thiªn H¹ V« CÈu ","Phi Long T¹i Thiªn ","Ho¹t B¸t L­u Thñ ","Kh¸ng Long H÷u Hèi ",1},	
{"Kü n¨ng 9x ngo¹i c«ng cña Vâ §ang lµ g× ?","Nh©n KiÕm Hîp NhÊt","Thiªn §Þa V« Cùc","Tam Hoµng Thao NguyÖt","Vâ §ang KiÕm Ph¸p",1},	
{"Kü n¨ng 9x ngo¹i c«ng Nga Mi tªn g× ? ","Tam Nga Tª TuyÕt ","Th«i Song Väng NguyÖt ","BÊt TuyÖt BÊt DiÖt ","L­u Thñy ",1},	
{"Kü n¨ng 9x ngo¹i c«ng Thóy Yªn tªn g× ? ","B¨ng Tung V« ¶nh ","TuyÖt ¶nh ","B¨ng Cèt TuyÕt T©m ","B¨ng T©m Tr¸i ¶nh ",1},	
{"Kü n¨ng 9x thiÕu l©m ®ao ph¸p  ","V« t­íng tr¶m  ","Ph¸ thiªn tr¶m  ","§¹t Ma hé giang  ","Hoµnh t¶o thiªn qu©n ",3},	
{"Kü n¨ng 9x Th­¬ng cña Thiªn v­¬ng tªn g× ? ","Truy Tinh Tróc NguyÖt ","HuyÕt ChiÕn BÊt Ph­¬ng ","Kim Chung Tr¸o ","Thõa Long QuyÕt ",1},	
{"Kü n¨ng B¹o Vò Lª Hoa yªu cÇu vò khÝ g×?","Tô TiÔn","KiÕm","§ao","Bæng",1},	
{"Kü n¨ng B¨ng Tung V« ¶nh yªu cÇu vò khÝ g×?","§ao","KiÕm","Bæng","Tô TiÔn",1},	
{"Kü n¨ng bïa nµo cña c«n l«n lµm gi¶m tèc ®é di chuyÓn  ","KÝ b¶n phï  ","Thanh phong phï  ","S­¬ng ng¹o c«n l«n  ","Mª tung ¶o ¶nh ",3},	
{"Kü n¨ng bïa t¨ng kh¸ng cña c«n l«n  ","thiªn thanh ®Þa träc  ","S­¬ng ng¹o c«n l«n  ","Tóy tiªn t¸ cètt  ","Thanh phong phï ",1},	
{"Kü n¨ng Buff 100% tróng ®éc Ngò §éc tªn g× ? ","Xuyªn T©m §éc ThÝch ","Ngò §éc Kú Kinh ","B¨ng Lam Huyªn Tinh ","Xuyªn Y Ph¸ Gi¸p ",1},	
{"Kü n¨ng Buff bïa 9x C«n L«n tªn g× ? ","Tïy TiÖn Tµ Cèt ","Thiªn Thanh §Þa Träc ","Thiªn TÒ TÇn L«i ","KÝ B¸n Phï ",1},	
{"Kü n¨ng g©y cho¸ng cho ®èi ph­¬ng cña c«n l«n lµ  ","KhÝ tam phï  ","S­íng ng¹o c«n l«n  ","KÝ b¶n phï  ","Thanh phong phï ",3},	
{"Kü n¨ng gi¶m hiÖu øng lµm chËm, lµm cho¸ng cña C«n L«n lµ g×?","Mª Tung ¶o ¶nh","KhÝ Hµn Ng¹o TuyÕt","B¾c Minh §¶o H¶i","Thóc Ph­îc Chó",1},	
{"Kü n¨ng hç trî cña thiÕu l©m quyÒn  ","Hµn long b¸t vò  ","Kim cang phôc ma  ","Ma ha v« l­îng  ","§¹t ma hé giang ",1},	
{"Kü n¨ng kh¸ng ph¶n ®ßn cña c«n l«n cã tªn lµ  ","HuyÒn thiªn v« cùc  ","Thiªn thanh ®Þa träc  ","Thanh phong phï  ","Mª tung ¶o ¶nh ",3},	
{"Kü n¨ng kh¸ng tÊt c¶ ThiÕu l©m tªn g× ? ","DÞch C©n Kinh ","Nh­ Lai Thiªn §iÖp ","La H¸n TrËn ","BÊt §éng Minh V­¬ng ",1},	
{"Kü n¨ng nµo hç trî Kü n¨ng Thiªn §Þa V« Cùc ? ","V« Ng· V« KiÕm ","Tam Ho¶n Th¶o NguyÖt ","KiÕm Phi kinh Thiªn ","Nh©n KiÕm Hîp NhÊt ",1},	
{"Kü n¨ng nµo sau d©y kh«ng ph¶i lµ bïa chó cña Thiªn nhÉn  ","Ma diÖm thÊt s¸t  ","¶o ¶nh phi hå  ","Phi hång v« tÝch  ","NhiÕp hån lo¹n t©m ",3},	
{"Kü n¨ng nµo sau ®©y kh«ng hç trî cho §­êng m«n bÉy  ","¸m khÝ ®­êng m«n  ","§Þa diÖm háa  ","Xuyªn t©m thÝch  ","Hµn b¨ng thÝch ",3},	
{"Kü n¨ng nµo t¨ng ®é chÝnh x¸c cña vâ ®ang  ","ThÊt tinh trËn  ","ThÕ v©n tung  ","Täa väng v« ng·  ","Th¸i cùc thÇn c«ng ",1},	
{"Kü n¨ng Ng¹o TuyÕt Tiªu Phong yªu cÇu vò khÝ g×?","§ao","KiÕm","Bæng","Tô TiÔn",1},	
{"Kü n¨ng Tam Nga TÒ TuyÕt yªu cÇu vò khÝ g×?","KiÕm","Bæng","§ao","Tô TiÔn",1},	
{"Kü n¨ng t¨ng ®é chÝnh x¸c cña Thiªn V­¬ng lµ g×?","TÜnh T©m QuyÕt","Kim Chung Tr¸o","§o¹t Hån ThÝch","Thiªn V­¬ng ChiÕn ý",1},	
{"Kü n¨ng t¨ng Kh¸ng §éc cña Ngò §éc tªn g× ?","T¹p Nan D­îc Kinh","Ngò §éc Kú Kinh","XÝch DiÖm Thùc Thiªn","B¸ch §éc Xuyªn T©m",1},	
{"Kü n¨ng t¨ng kh¸ng tÊt c¶ cña Nga Mi  ","Phæ ®é chóng sinh  ","L­u thñy  ","Méng ®iÖp  ","Tõ hµng phæ ®é ",3},	
{"Kü n¨ng t¨ng kh¸ng tÊt c¶ Thiªn V­¬ng tªn g× ? ","Kim Chung Tr¸o ","Thiªn V­¬ng Chiªn Y ","HuyÕt ChiÕn B¸t Ph­¬ng ","Thõa Long QuyÕt ",1},	
{"Kü n¨ng t¨ng tèc ®é ch¹y cña C¸i Bang lµ g×?","Ho¹t BÊt L­u Thñ","Tóy §iÖp Cuång Vò","Tiªu Diªu C«ng","Háa DiÖm Vi Di",1},	
{"Kü n¨ng t¨ng tèc ®é ch¹y cña C«n L«n cã tªn lµ g×  ","Thanh phong phï  ","KÝ b¶n phï  ","B¾c Minh §¶o H¶i  ","KhÝ hµn ng¹o tuyÕt ",3},	
{"Kü n¨ng t¨ng tèc ®é ch¹y cña Nga Mi cã tªn lµ g×  ","L­u thñy  ","Méng diÖp  ","PhËt t©m tõ h÷  ","PhËt quang phæ chiÕu ",1},	
{"Kü n¨ng t¨ng tèc ®é ch¹y cña Vâ §ang lµ g×?","ThÕ V©n Tung","ThÊt Tinh TrËn","Täa Vong V« Ng·","Tam Hoµn Thao NguyÖt",1},	
{"Kü n¨ng Thiªn H¹ V« CÈu yªu cÇu vò khÝ g×?","Bæng","KiÕm","§ao","Tô TiÔn",1},	
{"Kü n¨ng trÊn ph¸i C¸i Bang tªn g× ? ","Tóy §iÖp Cuång Vò ","Phi Long Tai Thien ","Hoa Diem Vi Di ","Hoat Bat Luu Thu ",1},	
{"Kü n¨ng trÊn ph¸i cña C«n L«n lµ   ","S­¬ng Ng¹o C«n L«n  ","Cuång Phong S©u §iÖn  ","Tóy Tiªn T¸ Cèt  ","B¾c minh ®áa h¶i ",1},	
{"Kü n¨ng trÊn ph¸i cña §­êng m«n tªn lµ g×  ","T©m nh·n  ","¸m khÝ ®­êng m«n  ","Thiªn la ®Þa vâng  ","Truy t©m tiÔn ",3},	
{"Kü n¨ng trÊn ph¸i cña Ngò ®éc tªn lµ g×  ","Ngò ®éc kú kinh  ","Xuyªn t©m ®éc thÝch  ","V« h×nh ®éc  ","§o¹n c©n hñ cèt ",3},	
{"Kü n¨ng trÊn ph¸i cña thiªn v­¬ng tªn lµ g×  ","Thiªn v­¬ng chiÕn ý  ","Kim chung tr¸o  ","Truy phong quyÕt  ","Truy tinh trôc huyÖt ",3},	
{"Kü n¨ng trÊn ph¸i cña thiÕu l©m tªn lµ g×  ","Nh­ lai thiÒn ®iÖp  ","DÞch ch©n kinh","Ph¸ thiªn tr¶m  ","Truy tinh trôc huyÖt ",1},	
{"Kü n¨ng trÊn ph¸i Nga Mi tªn g× ? ","PhËt Ph¸p V« Biªn ","L­u Thñy ","Phç §é Chóng Sinh ","Th«i Song Väng NguyÖn ",1},	
{"Kü n¨ng trÊn phai Thiªn NhÉn tªn g× ? ","Thiªn Ma Gi¶i ThÓ ","Phi Hång V« TÝch ","BÝ T« Thanh Phong ","Ma DiÖm Th©t S¸t ",1},	
{"Kü n¨ng trÊn ph¸i Thóy Yªn tªn g× ? ","B¨ng Cèt TuyÕt T©m ","TuyÖt ¶nh ","Bang Tung V« ¶nh ","Bang T©m Tr¸i ¶nh ",1},	
{"Kü n¨ng V©n Long KÝch yªu cÇu vò khÝ g×?","Th­¬ng","KiÕm","§ao","Tô TiÔn",1},	
{"Kü n¨ng V« T­íng Tr¶m yªu cÇu vò khÝ g×?","§ao","KiÕm","Tô TiÔn","Bæng",1},	
{"Kú Tr©n C¸c kh«ng b¸n vËt phÉm nµo ? ","Tiªn Th¶o Lé ","N÷ Nhi Hång ","Thñy Tinh ","Bµn Nh­ît T©m Kinh ",1},	
{"Khiªu ChiÕn LÖnh dïng ®Ó lµm g× ?","§Êu gi¸ tham gia C«ng Thµnh ChiÕn","§i Phong L¨ng §é","§i V­ît ¶i","Tham gia Tèng Kim",1},	
{"Khinh KhÝ CÇu bay ®­îc nhê g× ?","KhÝ nãng","KhÝ l¹nh","Giã","H¬i n­íc",1},	
{"Khu Vùc §«ng Nam ¸ cã bao nhiªu quèc gia ","11 ","10 ","15 ","12 ",3},	
{"Lang Liªu lµ con thø mÊy cña Vua Hïng?","18","11","16","14",1},	
{"LÔ héi hãa trang Halloween lµ ngµy bao nhiªu?","31-10","31-09","13-11","11-03",1},	
{"Loµi chim nµo cã thÓ bay lïi vÒ phÝa sau? ","Chim Ruåi ","Chim SÎ ","Chim C¸nh côt ","Chim Bå C©u ",2},	
{"Lo¹i ®¸ ®­îc h×nh thµnh tõ x¸c ®éng vËt? ","§¸ v«i ","§¸ trÇm tÝch ","§¸ Magma ","§¸ Catket ",2},	
{"Lo¹i thó duy nhÊt ®Î trøng? ","Thó má vÞt ","C¸ Voi xanh ","Chim kªnh kªnh ","Khi ®Çu chã ",2},	
{"Loµi V­în ng­êi nµo cã quan hÖ gÇn gñi víi con ng­êi nhÊt? ","Tinh Tinh ","V­în ","§­êi ¦¬i ","KhØ G«rila ",2},	
{"L­u Thñy lµ Kü n¨ng cña ph¸i nµo","Nga Mi","Vâ §ang","Thóy Yªn","Thiªn V­¬ng",1},	
{"Mµu tªn ChÝnh ph¸i lµ mµu g× ","Cam ","TÝm ","Xanh ","§á ",1},	
{"Mµu tªn LuyÖn c«ng lµ mµu g× ","Tr¾ng ","Cam ","Xanh ","§á ",1},	
{"Mµu tªn S¸t Thñ lµ mµu g× ","§á ","Cam ","Xanh ","TÝm ",1},	
{"Mµu tªn Tµ ph¸i lµ mµu g× ","TÝm ","Cam ","Xanh ","§á ",1},	
{"Mµu tªn Trung lËp lµ mµu g× ","Xanh ","Cam ","TÝm ","§á ",1},	
{"May m¾n chØ cã trªn trang bÞ nµo  ","D©y chuyÒn  ","¸o  ","Th¾t l­ng  ","Giµy ",3},	
{"May m¾n lµ thuéc tÝnh chØ cã trªn trang bÞ hÖ  ","Méc  ","Thñy  ","Háa  ","Thæ ",1},	
{"M«n ph¸i nµo sö dông Sinh Lùc ®Ó thi triÓn vâ c«ng?","Thiªn V­¬ng Bang","Thiªn NhÉn Gi¸o","C¸i Bang","Nga Mi",1},	
{"Mét mÐt khèi b»ng bao nhiªu lÝt? ","1000 lÝt ","100 lÝt ","10 lÝt ","10000 lÝt ",1},	
{"Mét n¨m cã bao nhiªu ngµy? ","365 ","366 ","367 ","360 ",2},	
{"Mét n¨m cã nhiÒu nhÊt bao nhiªu ngµy Chñ NhËt ","53 ","52 ","51 ","54 ",3},	
{"Mét ngµy 1 nh©n vËt ®c nhËn tèi ®a lµ bao nhiªu Boss S¸t Thñ ?","8","16","7","6",1},	
{"Mét ngµy cã bao nhiªu giê? ","24 ","12 ","26 ","29 ",1},	
{"Mét ngµy cã bao nhiªu thêi ®iÓm Tr¶ Lêi Hoa §¨ng ?","5","2","1","8",1},	
{"Mét ngµy cã thÓ lµm ®­îc tèi ®a bao nhiªu nhiÖm vô d· tÉu  ","20  ","50  ","30  ","40 ",3},	
{"Mét ngµy cã thÓ s¨n ®­îc bao nhiªu con boss s¸t thñ? ","8 ","9 ","18 ","16 ",2},	
{"Mét set An Bang gåm bao nhiªu mãn ?","4 mãn","10 mãn","6 mãn","9 mãn",1},	
{"Mét set §Þnh Quèc gåm bao nhiªu mãn ?","5 mãn","10 mãn","6 mãn","4 mãn",1},	
{"Mét set HiÖp Cèt gåm bao nhiªu mãn ?","4 mãn","10 mãn","6 mãn","9 mãn",1},	
{"Mét set Kim Phong gåm bao nhiªu mãn ?","9 mãn","10 mãn","6 mãn","4 mãn",1},	
{"Mét set Nhu T×nh gåm bao nhiªu mãn ?","4 mãn","10 mãn","6 mãn","9 mãn",1},	
{"Mét set Thiªn Hoµng gåm bao nhiªu mãn ?","9 mãn","10 mãn","6 mãn","4 mãn",1},	
{"Nói Bµ §en thuéc tØnh nµo? ","T©y Ninh ","§ång Nai ", "L©m §ång ","Cao B»ng ",3},	
{"N÷ hoµng ®Õ duy nhÊt cña Trung Quèc lµ ai? ","Vâ T¾c Thiªn ","D­¬ng Quý Phi ","Tõ Nghi Th¸i HËu ","Lý Chiªu Qu©n  ",2},	
{"N­íc ®· ph¸t minh ra mãn m× ¨n liÒn? ","NhËt B¶n ","Trung Quèc ","§µi Loan ","Hy L¹p ",2},	
{"N­íc nµo lµ quª h­¬ng cña «ng gi¸ tuyÕt? ","PhÇn Lan ","Ba Lan ","Anh ","§øc ",2},	
{"N­íc tiªu thô m× ¨n liÒn nhiÒu nhÊt thÕ giíi? ","Trung Quèc ","NhËt B¶n ","Hµn Quèc ","ViÖt Nam ",1},	
{"Ngµy 8 th¸ng 3 lµ ngµy g×? ","Quèc TÕ Phô N÷ ","Quèc TÕ ThiÕu Nhi ","Quèc TÕ Lao §éng ","Phô N÷ ViÖt Nam ",1},	
{"Ngµy LÔ Gi¸ng Sinh (Noel) lµ ngµy nµo? ","24-12","20-12","14-12","19-12",1},	
{"Ngµy th­¬ng binh liÖt sÜ lµ ngµynµo?","27-7","17-7","7-7","27-6",1},	
{"Ngµy truyÒn thèng cña häc sinh sinh viªn lµ ngµy nµo? ","9 th¸ng 1 ","1 th¸ng 6 ","16 th¸ng 1 ","1 th¸ng 9 ",2},	
{"NghÒ nghiÖp chÝnh cña ng­êi ViÖt thêi Vua Hïng lµ g× ?","S¨n B¾t","CÇm §å","N«ng NghiÖp","L©m NghiÖp",1},	
{"Ngò hµnh cã bao nhiªu hÖ? ","5 ","6 ","4 ","7 ",1},	
{"NguyÖt Nha §ao lµ §ao cÊp mÊy?","5","7","4","1",1},	
{"Ngùa B«n Tiªu cã mµu g×?","§en","Tr¾ng","N©u","X¸m",1},	
{"Ngùa nµo ch¹y nhanh nhÊt trong c¸c läai sau: ","ChiÕu D¹ ","¤ V©n §¹p TuyÕt ","§Ých L« ","TuyÖt ¶nh ",2},	
{"Ngùa nµo sinh lùc nhiÒu nhÊt trong c¸c lo¹i sau ?","XÝch Thè","TuyÖt ¶nh","¤ V©n §¹p TuyÕt","§Ých L«",1},	
{"Ngùa nµo trong d·y cã mµu n©u: ","§Ých L« ","ChiÕu D¹ ","¤ V©n §¹p TuyÕt ","TuyÖt ¶nh ",2},	
{"Ng­êi ®­îc mÖnh danh lµ Bµ Chóa Th¬ N«m? ","Hå Xu©n H­¬ng ","§oµn ThÞ §iÓm ","Xu©n Quúnh ","NguyÔn ThÞ Minh Khai ",2},	
{"Nh©n vËt nam chÝnh trong Anh hïng x¹ ®iªu lµ?","Qu¸ch TÜnh","D­¬ng Qu¸","Tiªu Phong","Hoµng Dung",3}, 	
{"NhiÖm kú thø 58 cña tæng thèng Hoa Kú tªn g× ?","Donald Trump","Joe Biden","Barack Obama","W Bush",2},	
{"Nhãm nh¹c HKT cã mÊy thµnh viªn?","3","5","2","6",1},	
{"Nhãm nh¹c The Men cã mÊy thµnh viªn?","2","3","5","6",1},	
{"Nhãm nh¹c Weboys cã mÊy thµnh viªn?","3","5","2","6",1},	
{"Option Phôc Håi Néi Lùc cã trªn trang bÞ nµo?","Ngäc Béi","NhÉn","¸o","§ai l­ng",1},	
{"Option Phôc Håi Sinh Lùc cã trªn trang bÞ nµo?"," Bao tay","D©y chuyÒn","Vò khÝ ","Ngäc béi",1}, -- Thieu 1	
{"Option Phôc Håi ThÓ Lùc cã trªn trang bÞ nµo?","D©y chuyÒn","Giµy","§ai l­ng","Bao tay",1},	
{"PhËt Gi¸o du nhËp vµo VIÖt Nam vµo thêi gian nµo? ","ThÕ kØ thø 2 ","§Çu c«ng nguyªn ","ThÕ kØ thø 2 TCN ","ThÕ kØ thø 3 ",2},	
{"PhÝm nµo t¾t më giao dÞch ? ","PhÝm O ","PhÝm P ","PhÝm R ","PhÝm V ",2},	
{"Phim t¾t nµo bËt B¶ng kü n¨ng ? ","PhÝm F5 ","PhÝm F3 ","PhÝm F4 ","PhÝm F6 ",1},	
{"PhÝm t¾t nµo bËt Hµnh Trang ? ","PhÝm F4 ","PhÝm F3 ","PhÝm F5 ","PhÝm F2 ",1},	
{"PhÝm t¾t nµo bËt H¶o H÷u ? ","PhÝm F6 ","PhÝm F3 ","PhÝm F4 ","PhÝm F5 ",1},	
{"PhÝm t¾t nµo bËt Hç Trî Game ? ","PhÝm F1 ","PhÝm F2 ","PhÝm F3 ","PhÝm F4 ",1},	
{"PhÝm t¾t nµo bËt nhanh Giao DÞch ? ","PhÝm O ","PhÝm P ","PhÝm K ","PhÝm L ",1},	
{"Phim t¾t nµo bËt nhanh Tæ §éi ? ","PhÝm P ","PhÝm T ","PhÝm K ","PhÝm L ",1},	
{"Phßng thñ vËy lý chØ cã trªn trang bÞ hÖ g×  ","Háa  ","thñy  ","Thæ  ","Méc ",3},	
{"Phæ §é Chóng Sinh kh¸ng tÊt c¶ tèi ®a lµ bao nhiªu?","40","30","25","35",1},	
{"Phë xuÊt hiÖn ®Çu tiªn ë ®©u? ","Nam §Þnh ","Hµ Néi ","Sµi Gßn ","Trung Quèc ",2},	
{"QuÇn ¸o cã kÝch cì lín nhÊt lµ Size nµo ?","XXM","XXL","M","L",1},	
{"Quèc gi¸o cña Irac lµ t«n gi¸o nµo ","Håi gi¸o ","PhËt Gi¸o ","Thiªn Chóa Gi¸o ","Tin lµnh ",3},	
{"Quèc k× cña c¸c n­íc §«ng Nam ¸ cã mµu g× chung  ","§á ","Vµng ","Cam ","Tr¾ng ",2},	
{"Quèc Kú cña Mü cã bao nhiªu ng«i sao? ","50 sao ","45 sao ","30 sao ","54 sao ",2},	
{"Quèc kh¸nh ViÖt Nam lµ ngµy nµo? ","2 th¸ng 9 ","19 th¸ng 5 ","15 th¸ng 9 ","9 th¸ng 2 ",2},	
{"Quèc tÕ thiÕu nhi lµ ngµy nµo? ","1 th¸ng 6 ","1 th¸ng 5 ","9 th¸ng 1 ","12 th¸ng 12 ",2},	
{"Quü ®¹o di chuyÓn cña c¸c hµnh tinh quanh mÆt trêi h×nh g×? ","Elip ","Trßn ","Th¼ng ","Parapol ",3},	
{"R¹ch Gi¸ thuéc tØnh/thµnh phè nµo ?","Kiªn Giang","Hµ Giang","B¾c Giang","Lµo Cai",1},	
{"RÐt th¸ng..... bµ giµ chÕt cãng?","Ba","Hai","M­êi","ChÝn",1},	
{"Sao Thiªn V­¬ng quay quanh hÖ MÆt Trêi tèn kho¶ng bao nhiªu l©u?","84 n¨m","79 n¨m","86 n¨m","83 n¨m",1},	
{"Sea Games 22 ®­îc tæ chøc t¹i ViÖt Nam cã bao nhiªu m«n thi ®Êu? ","32 ","28 ","25 ","35 ",2},	
{"Sea Games ®Çu tiªn ®­îc tæ chøc vµo n¨m nµo? ","1959 ","1955 ","1963 ","1967 ",3},	
{"Sinh nhËt B¸c Hå vµo ngµy nµo?","19-5","15-9","9-5","5-9",1},	
{"Sè l­îng TÈy Tñy Kinh mµ 1 nh©n vËt cã thÓ sö dông?","15","10","5","8",1},	
{"Sè l­îng Vâ L©m MËt TÞch mµ 1 nh©n vËt cã thÓ sö dông?","10","15","5","8",1},	
{"S­ phô cña TiÓu Long N÷ tªn g×?","A Hoµn","§éc C« CÇu B¹i","Lam Y Y","Thanh TuyÖt S­ Th¸i",3}, 	
{"Sù TÝch S¬n Tinh-Thñy Tinh x¶y ra vµo ®êi Vua thø mÊy?","18","15","19","16",1},	
{"T¸c gi¶ cña bé TruyÖn Tranh Th¸m Tö Conan lµ ai ?","Gosho Aoyama","Rina Aozaka","Ria Sakurai","Hana Yumi",1},	
{"T¸c phÈm ChÝ PhÌo cña Nam Cao ®­îc ®æi tªn mÊy lÇn? ","3 ","2 ","4 ","5 ",1},	
{"TÇng 2 cña Kü n¨ng 9x Nga mi kiÕm tªn lµ g×  ","Ngäc tuyÕt tÈy trÇn  ","Tam nga tÒ tuyÕt  ","Phong s­¬ng tèi ¶nh  ","Phæ ®é chóng sinh ",3},	
{"TÇng thø 2 cña Kü n¨ng Nga Mi ch­ëng tªn lµ  ","Kim ®Ønh phËt quang  ","Phong s­¬ng tèi ¶nh  ","Tam nga tÒ tuyÕt  ","Ngäc tuyÕt tÈy trÇn ",3},	
{"TÈy ®iÓm kü n¨ng cÇn vËt phÈm g×?","Lam-Lôc-Tö Thñy Tinh","Tö-Tö-Lam Thñy Tinh","Lôc-Tö-Lôc Thñy Tinh","6 Tinh Hång B¶o Th¹ch",1},	
{"TÈy ®iÓm tiÒm n¨ng & kü n¨ng cÇn vËt phÈm g×?","Thñy Tinh & Tinh Hång B¶o Th¹ch","3 Tö Thñy Tinh","3 Kim Nguyªn Bao","6 Tinh Hång B¶o Th¹ch",1},	
{"TÈy ®iÓm tiÒm n¨ng cÇn vËt phÈm g×?","6 Tinh Hång B¶o Th¹ch","3 Tö Thñy Tinh","3 Kim Nguyªn Bao","Thñy Tinh 3 Lo¹i & THBT",1},	
{"Tªn d©n gian cña sao Kim lµ g×? ","Sao Mai vµ Sao H«m ","Sao Chøc N÷ ", "Sao B¾c §Èu ","Sao Khuª ",1},	
{"Tªn HÖ thèng d·y nói lín nhÊt thÕ giíi? ","Himalaya ","Andes ","Tr­êng S¬n ","Apls ",3},	
{"Tªn NPC gia nhËp m«n ph¸i C¸i Bang ? ","§Ö Tö C¸i Bang ","C¸i Bang Chiªu Sinh ","KÎ ¡n Mµy  ","C¸i Bang Tr­ëng L·o ",2},	
{"Tªn NPC gia nhËp m«n ph¸i C«n L«n ? ","C«n L«n Hé Ph¸p ","C«n L«n La H¸n ","C«n L«n Chiªu Sinh ","C«n L«n §¹o SÜ ",2},	
{"Tªn NPC gia nhËp m«n ph¸i §­êng M«n ? ","§­êng M«n ThÞ VÖ ","§­êng Tam ","§­êng BÊt Lùc","§­êng Tam T¹ng",2},	
{"Tªn NPC gia nhËp m«n ph¸i Nga Mi ? ","Nga Mi CÈm Y Ni ","Nga Mi Chiªu Sinh ","Nga Mi Y Ni ","Nga Mi Ni C« ",2},	
{"Tªn NPC gia nhËp m«n ph¸i Ngò §éc ? ","Ngò §éc T¸n Nh©n","Ngò §éc Chiªu Sinh","Lam Y Y","Ngò §éc Hé Ph¸p",2},	
{"Tªn NPC gia nhËp m«n ph¸i Thiªn NhÉn ? ","Thiªn NhÉn Tö SØ","Thiªn NhÉn Chiªu Sinh","Hoµng LiÖt","Thiªn NhÉn Hé Ph¸p",2},	
{"Tªn NPC gia nhËp m«n ph¸i Thiªn V­¬ng ? ","Thiªn V­¬ng T­íng LÜnh ","Thiªn V­¬ng Chiªu Sinh ","Thiªn V­¬ng T­íng Qu©n ","§­êng ThiÕt T©m ",2},	
{"Tªn NPC gia nhËp m«n ph¸i ThiÕu L©m ? ","ThiÕu L©m La H¸n ","ThiÕu L©m §¹t Ma ","ThiÕu L©m Chiªu Sinh ","ThiÕu L©m Tu TrÝ ",2},	
{"Tªn NPC gia nhËp m«n ph¸i Thóy Yªn ? ","Thóy Yªn Hoa Sø ","Thóy Yªn Hoa N÷ ","Thóy Yªn Hoa Lan ","Thóy Yªn Chiªu Sinh ",2},	
{"Tªn NPC gia nhËp m«n ph¸i Vâ §ang ? ","Vâ §ang §¹o Nh©n ","Tr­¬ng Tam Phong ","Tr­¬ng ThiÕt Tam ","Vâ §ang Chiªu Sinh ",2},	
{"TÝch cña ba sè tù nhiªn ®Çu tiªn lµ bao nhiªu? ","0 ","6 ","9 ","12 ",1},	
{"TiÓu Long N÷ ph¸i g×?","Cæ Mé","Vâ §ang","Nga Mi","Thóy Yªn",4}, 	
{"TiÕu Ng¹o Giang Hå ph¸t hµnh n¨m nµo?","2001","2002","2004","2005",4}, 	
{"TØnh nµo cã ®iÖn tÝch lín nhÊt ViÖt Nam? ","NghÖ An ","Hµ TØnh ","Ninh B×nh ","TP HCM  ",2},	
{"TÝnh n¨ng Phong L¨ng §é cã mÊy bÕn? ","3","1 ","2","4 ",2},	
{"TÝnh n¨ng Phong L¨ng §é ®i mÊt bao l©u ? ","40 phót","30 phót ","35 phót","45 phót ",2},	
{"TÝnh n¨ng Tèng Kim b¸o danh tr­íc bao nhiªu phót  ","15  ","45  ","30  ","60 ",1},	
{"TÝnh n¨ng Tèng Kim mçi trËn kÐo dµi bao nhiªu phót  ","60  ","45  ","30  ","15 ",1},	
{"TÝnh n¨ng V­ît ¶i cã bao nhiªu ¶i ","18 ","15 ","16 ","17 ",2},	
{"TÝnh n¨ng V­ît ¶i ®¨ng ký vµo phót bao nhiªu mçi giê?","50 ","40","45","55",2},	
{"TÝnh n¨ng V­ît ¶i giíi h¹n thêi gian hoµn thµnh lµ bao nhiªu phót?","40 ","30","45","55",2},	
{"TÝnh n¨ng V­ît ¶i mét ngµy nh©n vËt ®i ®­îc mÊy lÇn ? ","1 lÇn ","2 lÇn ","3 lÇn ","4 lÇn ",1},	
{"TÝnh n¨ng V­ît ¶i yªu cÇu tæ ®éi tèi thiÓu bao nhiªu ng­êi? ","6 ng­êi ","7 ng­êi ","8 ng­êi ","5 ng­êi ",2},	
{"Tèc ®é ®¸nh tèi ®a cña Vò KhÝ xanh lµ bao nhiªu?","30%","40%","20%","36%",1},	
{"T«n Ngé Kh«ng trong phim T©y Du Ký do ai ®ãng vai?","Lôc TiÓu Linh §ång","Hµ Gia KÝnh","Ph¹m Hång Liªn","Ch©u Du D©n",1},	
{"Tæng 3 gèc trong 1 Tam Gi¸c bao nhiªu ®é? ","180 ","120 ","270 ","90 ",2},	
{"Tõ viÕt t¾c cña chØ sè th«ng minh lµ g×? ","IQ ","EQ ","GDP ","HP ",2},	
{"Thµnh phè §µ L¹t thuéc tØnh thµnh nµo? ","L©m §ång ","§µ N½ng ","An Giang ","Kom Tum ",2},	
{"Thµnh Phè §µ N½ng thuéc MiÒn nµo?","MiÒn Trung","MiÒn B¾c","MiÒn T©y","MiÒn Nam",1},	
{"Thµnh phè ®«ng d©n nhÊt §«ng Nam ¸? ","Jakarta ","Hå ChÝ Minh ","Bangkok ","Phn«m Pªnh ",2},	
{"Thµnh phè ®­îc mÖnh danh lµ thµnh phè hoa ph­¬ng ®á? ","H¶i Phßng ","H¶i D­¬ng ","H­n Yªn ","Hµ Giang ",2},	
{"Th»ng Bêm ®· ®æi Qu¹t Mo lÊy c¸i g×? ","N¾m X«i ","3 bß 9 tr©u ","BÌ gç lim ","Chim ®åi måi ",2},	
{"Th¾t l­ng kÝch ®­îc thuéc tÝnh cña   ","¸o  ","Vò khÝ  ","Giµy  ","Ngäc béi ",3},	
{"ThÇn §iªu §¹i HiÖp ph¸t hµnh n¨m nµo?","1995","1996","2004","2005",3}, 	
{"Theo tiÓu thuyÕt kiÕm hiÖp cña Kim Dung, ai lµ «ng tæ cña Th¸i Cùc QuyÒn vµ Th¸i Cùc KiÕm?","Tr­¬ng Tam Phong","V­¬ng Trïng D­¬ng","Hång ThÊt C«ng","Do·n ChÝ B×nh",3}, 	
{"Thî rÌn cÇn vËt phÈm g× ®Ó h¹ cÊp trang bÞ?","Lôc Thñy Tinh","Lam Thñy Tinh","Tö Thñy Tinh","Kim Nguyªn B¶o",1},	
{"Thî rÌn cÇn vËt phÈm g× ®Ó n©ng cÊp trang bÞ?","Tö Thñy Tinh","Lam Thñy Tinh","Lôc Thñy Tinh","Kim Nguyªn B¶o",1},	
{"Thî rÌn cÇn vËt phÈm g× ®Ó söa cÊp trang bÞ háng?","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Kim Nguyªn B¶o",1},	
{"Thêi gian cho¸ng cã trªn trang bÞ hÖ  ","Thñy  ","Háa  ","Thæ  ","Méc ",4},	
{"Thêi gian lµm chËm lµ hiÖu øng cã trªn trang bÞ hÖ  ","Háa  ","Méc  ","Thñy  ","Thæ ",4},	
{"Thêi gian tróng ®éc lµ hiÖu øng cã trªn trang bÞ hÖ  ","Thæ  ","Méc  ","Háa  ","Thñy ",2},	
{"Thñ ®« nµo l©u ®êi nhÊt §«ng Nam ¸? ","Hµ Néi ","Bangkok ","Viªng Ch¨n ","Phn«m Pªnh ",2},	
{"ThuËt ng÷ T«n Gi¸o cã nguån gèc tõ ®©u? ","Ph­¬ng T©y ","ViÖt Nam ","Trung Quèc ","TÊt c¶ ®Òu sai ",2},	
{"Thôy §iÓn næi tiÕng vÒ thÓ lo¹i nh¹c nµo? ","Nh¹c Pop ","Nh¹c Dance ","Nh¹c Jazz ","Cæ ®iÓn ",4},	
{"Thóy KiÒu Trong TruyÖn KiÒu cña NguyÔn Du mang hä g× ","V­¬ng ","TrÇn ","NguyÔn ","Mai ",4},	
{"ThuyÒn Phong L¨ng §é khëi hµnh vµo phót thø mÊy?","10","20","15","25",1},	
{"Tr¶ nhiÖm vô boss s¸t thñ sÏ d­îc bao nhiªu ®iÓm danh väng  ","2  ","1  ","3  ","4 ",2},	
{"Trang bÞ ¸o §Þnh Quèc cã thêi gian phôc håi tèi ®a bao nhiªu? ","50  ","49  ","47  ","40 ",2},	
{"Trang bÞ ¸o HiÖp Cèt cã thêi gian phôc håi tèi ®a bao nhiªu? ","50  ","49  ","47  ","40 ",2},	
{"Trang bÞ ¸o Nhu T×nh cã thêi gian phôc håi tèi ®a bao nhiªu? ","0  ","49  ","47  ","40 ",2},	
{"Trang bÞ D©y chuyÒn kÝch ®­îc thuéc tÝnh Èn cho trang bi nµo ? ","Vò khÝ ","¸o ","Th¾t L­ng ","GiÇy ",2},	
{"Trang bÞ §­êng Nghª Gi¸p yªu cÇu søc m¹nh bao nhiªu?","260","210","165","110",1},	
{"Trang bÞ Giµy cã thÓ kÝch ®­îc thuéc tÝnh Èn cña  ","Ngäc béi  ","NhÉn trªn  ","Th¾t l­ng  ","¸o ",4},	
{"Trang bÞ Ngäc Béi HiÖp Cèt kh¸ng tÊt c¶ tèi ®a lµ bao nhiªu?","5","3","2","6",1},	
{"Trang bÞ Ngäc Béi Nhu T×nh PTVL Tèi ®a lµ bao nhiªu?","25","23","22","26",1},	
{"Trang bÞ NhÉn H¶i Lam B¶o Th¹ch Giíi ChØ lµ trang bÞ cÊp mÊy?","7","10","8","9",3},	
{"Trang bÞ NhÉn HiÖp Cèt t¨ng Søc M¹nh tèi ®a lµ bao nhiªu?","24","22","23","20",1},	
{"Trang bÞ NhÉn Hoµng Ngäc Giíi ChØ lµ trang bÞ cÊp mÊy?","1","2","3","4",1},	
{"Trang bÞ NhÉn Lam B¶o Th¹ch Giíi ChØ lµ trang bÞ cÊp mÊy?","9","7","8","10",4},	
{"Trang bÞ NhÉn PhØ Thóy Giíi ChØ lµ trang bÞ cÊp mÊy?","4","5","6","7",1},	
{"Trang bÞ NhÉn Phï Dung Th¹ch Giíi ChØ lµ trang bÞ cÊp mÊy?","3","1","2","4",1},	
{"Trang bÞ NhÉn Toµn Th¹ch Giíi ChØ lµ trang bÞ cÊp mÊy?","10","7","8","9",1},	
{"Trang bÞ NhÉn Tæ MÉu Lôc Giíi ChØ lµ trang bÞ cÊp mÊy?","6","7","8","9",1},	
{"Trang bÞ NhÉn Thóy Lùu Th¹ch Giíi ChØ lµ trang bÞ cÊp mÊy?","5","7","8","6",1},	
{"Trang bÞ Nhu T×nh C©n Quèc NghÖ Th­êng cã Kh¸ng ®éc kho¶ng bao nhiªu? - Theo TKH ","15 - 25 ","15 - 20 ","20 - 25 ","20 - 30 ",4},	
{"Trang bÞ Th­¬ng cÊp 10 cã tªn gäi lµ g× ?","Ph¸ Thiªn KÝch","Hoµn Tö Th­¬ng","ThiÕt Th­¬ng","C©u Liªm Th­¬ng",1},	
{"Trang bÞ th­êng nµo kh«ng ph©n biÖt nam vµ n÷  ","Th¾t l­ng  ","¸o  ","Nãn  ","Bao tay ",3},	
{"Trang bÞ Vò KhÝ kÝch d­îc thuéc tÝnh Èn cho trang bÞ nµo ? ","GiÇy ","Nãn ","¸o ","Th¾t L­ng ",2},	
{"Trang bÞ xanh ¸o cã thêi gian phôc håi tèi ®a bao nhiªu? ","40  ","49  ","47  ","50 ",2},	
{"Trang bÞ xanh D©y chuyÒn cã chØ sè kh¸ng tÊt c¶ tèi ®a bao nhiªu?","20","18","15","16",1},	
{"Tr¹ng nguyªn cuèi cïng trong lÞch sö n­íc ViÖt Nam lµ ai? ","TrÞnh TuÖ ","Tr¹ng Quúnh ","NguyÔn §Æng T¹o ","TrÇn TÊt V¨n ",2},	
{"TriÒu ®¹i nhµ NguyÔn b¾t ®Çu tõ n¨m nµo? ","1802 ","1790 ","1845 ","1900 ",2},	
{"Trong Léc §Ønh Ký, Vi TiÓu B¶o cã bao nhiªu bµ vî?","7","6","5","8",3}, 	
{"Trong cuéc luËn kiÕm lÇn thø nhÊt diÔn ra trªn ®Ønh Hoa S¬n, ai lµ ng­êi ®­îc coi lµ m¹nh nhÊt ®Ó gi÷ Cöu ¢m Ch©n Kinh?","V­¬ng Trïng D­¬ng","Tr­¬ng Tam Phong","¢u D­¬ng Phong","Hoµng D­îc S­",3}, 	
{"Trong t¸c phÈm Tam Quèc ChÝ, ng­êi ®c mÖnh danh lµ Phïng Së lµ ai ?","Bµng Th«ng","Quan Vò","L­u BÞ","Tr­¬ng Phi",2},	
{"Trong truyÖn Thiªn long b¸t bé, cha cña Mé Dung Phôc lµ ai?","Mé Dung B¸c","Mé Dung Cöu","Mé Dung Kh«ng","Mé Dung Phôc",3}, 	
{"Trung häc gåm bao nhiªu líp? ","7 líp ","4 líp ","3 líp ","5 líp ",2},	
{"TruyÒn thuyÕn nµo thuéc thêi k× ¢u L¹c? ","An D­¬ng V­¬ng ","Th¸nh Giãng ","S¬n Tinh Thñy Tinh ","L¹c Long Qu©n vµ ¢u C¬ ",3},	
{"V¹n Lý Tr­êng Thµnh ®­îc x©y dùng bëi bao nhiªu % d©n sè Trung Quèc?","70%","90%","20%","50%",4},	
{"V¹n Lý Tr­êng Thµnh lµ di s¶n V¨n Hãa cña quèc gia nµo? ","Trung Quèc ","Nga ","ViÖt Nam ","Hång K«ng ",4},	
{"VËt phÈm nµo t¨ng 1 ®iÓm kü n¨ng khi sö dông?","Vâ L©m MËt TÞch","TÈy Tñy Kinh","Bµn Nh­îc T©m Kinh","ThiÕt La H¸n",1},	
{"VËt phÈm nµo t¨ng 5 ®iÓm tiÒm n¨ng khi sö dông?","TÈy Tñy Kinh","Vâ L©m MËt TÞch","ThiÕt La H¸n","Bµn Nh­îc T©m Kinh",1},	
{"VËt phÈm nµo tÈy hÕt ®iÓm kinh nghiÖm ©m?","Bµn Nh­îc T©m Kinh","ThiÕt La H¸n","Vâ L©m MËt TÞch","TÈy Tñy Kinh",1},	
{"VÞ vua ph¸t hµnh tiÒn giÊy ®Çu tiªn cña ViÖt Nam ","Hå Quý Ly ","Lý C«ng UÈn ","Lª §¹i Hµnh ","Mai Thóc Loan ",4},	
{"VÞ vua Trung Hoa nµo cã tuæi thä cao nhÊt? ","Cµn Long ","Khang Hy ","TÇn Thñy Hoµng ","Vâ T¾c Thiªn ",2},	
{"ViÖt Nam cã bao nhiªu khu b¶o tån thiªn nhiªn ?","61","71","91","41",1},	
{"ViÖt Nam cã bao nhiªu tØnh thµnh? ","64 ","54 ","45 ","65 ",2},	
{"ViÖt Nam cã mÊy di sµn V¨n Hãa ThÕ Giíi? ","7 ","8 ","6 ","5 ",3},	
{"ViÖt Nam v« ®Þch AFF cup n¨m nµo ?","2008","2001","2011","2005",1},	
{"VÞnh H¹ Long - Qu¶ng Ninh ®­îc Unesco c«ng nhËn lµ Di S¶n Thiªn Nhiªn ThÕ Giíi vµo n¨m nµo ?","1994","1990","2005","2010",2},	
{"VIP lµ tõ viÕt t¾c cña tõ nµo? ","Very Important Person ","Very Improve People ","Value In Public ","mét tõ kh¸c ",3},	
{"Vâ L©m cã bao nhiªu m«n ph¸i ? ","10 ph¸i ","11 ph¸i ","12 ph¸i ","8 ph¸i ",2},	
{"Vâ L©m Liªn §Êu Qu¸n Qu©n lµ danh hiÖu cña Liªn §Êu h¹ng mÊy ?","1","4","3","2",1},	
{"Vâ L©m Håi øc - PhËt S¬n cã bao nhiªu Thµnh ThÞ vµ Th«n ?","3 Thµnh 3 Th«n","2 Thµnh 3 Th«n","3 Thµnh 2 Th«n","2 Thµnh 2 Th«n",1},	
{"Vâ L©m Håi øc - PhËt S¬n khai më AlphaTest vµo ngµy nµo ?","11.08.2021","21.08.2021","24.08.2021","25.08.2021",1},	
{"Vâ L©m Håi øc - PhËt S¬n Open vµo ngµy nµo?","21.08.2021","25.08.2021","11.08.2021","17.04.2021",1},	
{"Vâ Môc di th­ ®­îc cÊt giÊu ë ®©u? ","§å Long §ao","û Thiªn KiÕm","HuyÒn ThiÕt Träng KiÕm","Kim Xµ KiÕm",3}, 	
{"Worl Cup 1986 ®c tæ chøc t¹i ?","Mexico","Iran","Campuchia","Malaysia",1},	
{"World Cup 2014 ®­îc tæ chøc ë ®©u? ","Brazil ","Ph¸p ","Hµn Quèc ","Mü ",3},	
{"Xe m¸y Atila lµ cña h·ng nµo?","SYM","Yamaha","Suzuky","Piaggio",1},	
{"Xe m¸y Sirius lµ cña h·ng nµo?","Yamaha","Honda","Suzuky","Piaggio",1},	
{"Xe m¸y Wave Alpha lµ cña h·ng nµo?","Honda","Yamaha","Suzuky","Piaggio",1},	
{"X­¬ng nµo nhá nhÊt trong c¬ thÓ ng­êi ","X­¬ng tai trong ","X­¬ng côt ","X­¬ng sãng mòi ","X­¬ng vµnh tai ",4}, 	
{"û Thiªn KiÕm ®­îc rÌn tõ? ","Qu©n Tö & Thôc N÷ KiÕm","HuyÒn ThiÕt Träng KiÕm","V« §Þch ThÇn KiÕm","Kim Xµ KiÕm",4}, 	
{"Zn lµ kÝ hiÖu cña nguyªn tè hãa häc nµo? ","KÏm","S¾t ","Nh«m","Vµng ",2},	
}