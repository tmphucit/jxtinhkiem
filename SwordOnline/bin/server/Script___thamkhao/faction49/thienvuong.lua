tennpc = "Thiªn V­¬ng Ch­ëng M«n"
tenphai = "Thiªn V­¬ng Bang"
nguhanh = 0
tennguhanh = "hÖ kim "
tenfaction = "Thien Vuong Bang"
idmonphai = 2

function hockynang()
if GetFaction() == tenfaction then
if GetLevel() < 10 then
			SetTask(103,0)
		elseif GetLevel() < 20 then
			SetTask(103,8)
		elseif GetLevel() < 30 then
			SetTask(103,11)
		elseif GetLevel() < 40 then
			SetTask(103,16)
		elseif GetLevel() < 50 then
			SetTask(103,21)
		elseif GetLevel() < 60 then
			SetTask(103,26)
		elseif GetLevel() < 90 then
			SetTask(103,33)
		else
			SetTask(103,45)
		end


	if GetTask(103) >= 1 then
		if HaveMagic(34) < 0 or HaveMagic(30) < 0 or HaveMagic(29) < 0 then
		AddMagic(34)
		AddMagic(30)
		AddMagic(29)
		end
				end
				if GetTask(103) >= 8 then
		if HaveMagic(26) < 0 or HaveMagic(23) < 0 or HaveMagic(24) < 0 then
		AddMagic(26)
		AddMagic(23)
		AddMagic(24)
		end
				end
				if GetTask(103) >= 11 then
		if HaveMagic(33) < 0 then
		AddMagic(33)
		end
				end
				if GetTask(103) >= 16 then
	if HaveMagic(37) < 0 or HaveMagic(35) < 0 or HaveMagic(31) < 0 then
	AddMagic(37)
	AddMagic(35)
	AddMagic(31)
	end
				end
				if GetTask(103) >= 21 then
	if HaveMagic(40) < 0 then
	AddMagic(40)
	end
				end
				if GetTask(103) >= 26 then
	if HaveMagic(42) < 0 then
	AddMagic(42)
	end
				end
				if GetTask(103) >= 33 then
	if HaveMagic(36) < 0 or HaveMagic(32) < 0 or HaveMagic(41) < 0 or HaveMagic(325) < 0 then
	AddMagic(36)
	AddMagic(32)
	AddMagic(41)
	AddMagic(325)
	end
				end

	if GetTask(103) >= 45 then

	AddMagic(342,1)
	AddMagic(347,1)
	AddMagic(345,1)
	end


Msg2Player("B¹n ®· nhËn ®Çy ®ñ kü n¨ng m«n ph¸i ®¼ng cÊp hiÖn t¹i ")
end
end
function main()
hockynang()
W,X,Y = GetWorldPos()
	if GetFaction() == "" then
		if GetSeries() == nguhanh then
			if GetLevel() >= 10 then
				SayNew("<color=green>"..tennpc.."<color>: Ng­¬i cã muèn tham gia vµo m«n ph¸i <color=yellow>"..tenphai.."<color> hay kh«ng?",2,
				"V©ng ta muèn tham gia vµo "..tenphai.."./nhapphai",
				"Tho¸t/Exit")
			else
				Talk(1,"","<color=green>"..tennpc.."<color>: Ng­êi h·y luyÖn tËp ®Õn <color=red>cÊp ®é 10<color> råi h·y quay l¹i gÆp ta !")
			end
		else
			Talk(1,"","<color=green>"..tennpc.."<color>: "..tenphai.." chØ dµnh cho nh÷ng ng­êi thuéc ngò hµnh "..tennguhanh..", ng­êi vui lßng gia nhËp ph¸i kh¸c nhĞ !")
		end
	elseif GetFaction() == tenfaction then
			if GetSeries() == nguhanh then
				
				if GetTask(103) < 9 then
					if GetLevel() >= 10 then
						SayNew("<color=green>"..tennpc.."<color>: Ng­¬i cã muèn tham gia vµo m«n ph¸i <color=yellow>"..tenphai.."<color> hay kh«ng?",3,
						"NhiÖm vô m«n ph¸i./nhapphai",
						"Xem nhiÖm vô ®ang lµm /xemnvdanglam",
						"Tho¸t/Exit")
					else
						Talk(1,"","<color=green>"..tennpc.."<color>: Ng­êi h·y luyÖn tËp ®Õn <color=red>cÊp ®é 10<color> råi h·y quay l¹i gÆp ta !")
					end
				elseif GetTask(103) >= 9 and GetTask(103) <= 11 then
					if GetLevel() >= 20 then
						SayNew("<color=green>"..tennpc.."<color>: Con ®­êng tu luyÖn cña ng­¬i cßn dµi l¾m, h·y cè g¾ng lªn nhĞ ",3,
						"NhiÖm vô m«n ph¸i cÊp ®é 20/nhiemvu20",
						"Xem nhiÖm vô ®ang lµm /xemnvdanglam",
						"Ta chØ nh©n tiÖn ghĞ qua th«i !/Exit")

					else
						Talk(1,"","<color=green>"..tennpc.."<color>: Ng­êi h·y luyÖn tËp ®Õn <color=red>cÊp ®é 20<color> råi h·y quay l¹i gÆp ta !")
					end
				elseif GetTask(103) >= 12 and GetTask(103) <= 16 then
 					if GetLevel() >= 30 then
						SayNew("<color=green>"..tennpc.."<color>: Con ®­êng tu luyÖn cña ng­¬i cßn dµi l¾m, h·y cè g¾ng lªn nhĞ ",3,
						"NhiÖm vô m«n ph¸i cÊp ®é 30/nhiemvu30",
						"Xem nhiÖm vô ®ang lµm /xemnvdanglam",
						"Ta chØ nh©n tiÖn ghĞ qua th«i !/Exit")						
					else
						Talk(1,"","<color=green>"..tennpc.."<color>: Ng­êi h·y luyÖn tËp ®Õn <color=red>cÊp ®é 30<color> råi h·y quay l¹i gÆp ta !")
					end
				elseif GetTask(103) >= 17 and GetTask(103) <= 21 then
					if GetLevel() >= 40 then
						SayNew("<color=green>"..tennpc.."<color>: Con ®­êng tu luyÖn cña ng­¬i cßn dµi l¾m, h·y cè g¾ng lªn nhĞ ",3,
						"NhiÖm vô m«n ph¸i cÊp ®é 40/nhiemvu40",
						"Xem nhiÖm vô ®ang lµm /xemnvdanglam",
						"Ta chØ nh©n tiÖn ghĞ qua th«i !/Exit")						
					else
						Talk(1,"","<color=green>"..tennpc.."<color>: Ng­êi h·y luyÖn tËp ®Õn <color=red>cÊp ®é 40<color> råi h·y quay l¹i gÆp ta !")
					end
				elseif GetTask(103) >= 22 and GetTask(103) <= 26 then
					if GetLevel() >= 50 then
						SayNew("<color=green>"..tennpc.."<color>: Con ®­êng tu luyÖn cña ng­¬i cßn dµi l¾m, h·y cè g¾ng lªn nhĞ ",3,
						"NhiÖm vô m«n ph¸i cÊp ®é 50/nhiemvu50",
						"Xem nhiÖm vô ®ang lµm /xemnvdanglam",
						"Ta chØ nh©n tiÖn ghĞ qua th«i !/Exit")						
					else
						Talk(1,"","<color=green>"..tennpc.."<color>: Ng­êi h·y luyÖn tËp ®Õn <color=red>cÊp ®é 50<color> råi h·y quay l¹i gÆp ta !")
					end
				elseif GetTask(103) >= 27 and GetTask(103) <= 33 then
					if GetLevel() >= 60 then
						SayNew("<color=green>"..tennpc.."<color>: Con ®­êng tu luyÖn cña ng­¬i cßn dµi l¾m, h·y cè g¾ng lªn nhĞ ",3,
						"NhiÖm vô xuÊt s­ /nhiemvu60",
						"Xem nhiÖm vô ®ang lµm /xemnvdanglam",
						"Ta chØ nh©n tiÖn ghĞ qua th«i !/Exit")						
					else
						Talk(1,"","<color=green>"..tennpc.."<color>: Ng­êi h·y luyÖn tËp ®Õn <color=red>cÊp ®é 60<color> råi h·y quay l¹i gÆp ta !")
					end
				elseif GetTask(103) >= 34 and GetTask(103) <= 45 then
					if GetLevel() >= 90 then
						SayNew("<color=green>"..tennpc.."<color>: Con ®­êng tu luyÖn cña ng­¬i cßn dµi l¾m, h·y cè g¾ng lªn nhĞ ",3,
						"NhiÖm vô Trïng Ph¶n S­ M«n/nhiemvu90",
						"Xem nhiÖm vô ®ang lµm /xemnvdanglam",
						"Ta chØ nh©n tiÖn ghĞ qua th«i !/Exit")						
					else
						Talk(3,"","<color=green>"..tennpc.."<color>: Con ®­êng tu luyÖn ngoµi giang hå cña ng­¬i thÕ nµo, tèt c¶ chø ",
						"<color=green>"..tennpc.."<color>: Míi võa ra ®i l¹i quay vÒ råi, ®õng cã l­êi nh­ thÕ, tiÕp tôc tu luyÖn ®i ",
						"<color=green>"..tennpc.."<color>: Ng­êi h·y luyÖn tËp ®Õn <color=red>cÊp ®é 90<color> råi h·y quay l¹i gÆp ta !")
					end
				else
					SayNew("<color=green>"..tennpc.."<color>: Con ®­êng tu luyÖn cña ng­¬i cßn dµi l¾m, h·y cè g¾ng lªn nhĞ ",2,
						"NhiÖm vô Kü N¨ng TuyÖt Häc 120/nhiemvu120",
						"Ta chØ nh©n tiÖn ghĞ qua th«i !/Exit")	
				end
			
				
				
			else
				Talk(1,"","<color=green>"..tennpc.."<color>: "..tenphai.." chØ dµnh cho nh÷ng ng­êi thuéc ngò hµnh "..tennguhanh..", ng­êi vui lßng gia nhËp ph¸i kh¸c nhĞ !")
			end
		else
			Talk(1,"","<color=green>"..tennpc.."<color>: Ta kh«ng bao giê nãi chuyÖn víi ng­êi ngoµi ph¸p m×nh, xin thø lçi!")
		end
end;


function Exit()
end

function xemnvdanglam()
if GetTask(103) < 1 and GetTask(103) > getn(mangnv) then
	Talk(1,"","Kh«ng cã d÷ liÖu nhiÖm vô m«n ph¸i !")
else
	Talk(1,"","<color=red>NhiÖm vô m«n ph¸i<color>: "..mangnv[GetTask(103)][2].." ")
	Msg2Player("NhiÖm vô m«n ph¸i: "..mangnv[GetTask(103)][2].." ")
end
end

mangnv = {
{1,"Tiªu diÖt 10 con Nhİm ë Hoa S¬n "},
{2,"§èi tho¹i DiÖp TiÕp Mü t¹i Hoa S¬n 304/215 "},
{3,"§èi tho¹i víi NPC M«n Ph¸i "},
{4,"§èi tho¹i víi NPC D­îc §iÕm "},
{5,"§èi tho¹i víi NPC T¹p Hãa  "},
{6,"§èi tho¹i víi NPC Thî RÌn  "},
{7,"§èi tho¹i víi NPC B¸n ngùa ë thµnh thŞ  "},
{8,"GÆp NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm vô  "},
{9,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm vô 20 "},
{10,"H·y ®Õn B¹ch V©n §éng 219/192, 212/201, 219/207 tiªu diÖt Tr­¬ng §Çu B­u ! "},
{11,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm vô  "},
{12,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm vô 30 "},
{13,"§Õn T­¬ng D­¬ng t×m Tèng ViÔn Thanh 191/193 "},
{14,"§i Phôc Ng­u S¬n ®¸nh b¹i HuyÕt Ma Hæ 241/223 "},
{15,"Quay vÒ gÆp Tèng ViÔn Thanh b¸o tin "},
{16,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm vô  "},
{17,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm vô 40 "},
{18,"§i D­îc V­¬ng §éng tiªu diÖt Thİch Kh¸ch Kim Quèc  "},
{19,"Quay vÒ gÆp NPC M«n Ph¸i "},
{20,"§Õn BiÖn Kinh gÆp Tiªu T­íng Qu©n 217/184 "},
{21,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm vô  "},
{22,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm vô 50 "},
{23,"§Õn Ph­îng T­êng gÆp Tõ Chung §¹i S­ 209/199 "},
{24,"§i Kim Quang §éng tiªu diÖt Thµnh Kh«n 179/185, 204/190 "},
{25,"Quay vÒ GÆp Tõ Chung §¹i S­ "},
{26,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm vô  "},
{27,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm vô 60 "},
{28,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm vô 60 "},
{29,"§Õn Giang T©n Th«n gÆp Thµnh §¹i Qu©n 443/382 "},
{30,"§i Chu Tiªn TrÊn ®¸nh b¹i LiÔu Tè Tè 217/180 "},
{31,"VÒ Giang T©n Th«n gÆp Thµnh §¹i Qu©n "},
{32,"Qua T­¬ng D­¬ng gÆp KÎ ¡n Mµy "},
{33,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm vô  "},
{34,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm vô 90 "},
{35,"§Õn Ba L¨ng HuyÖn gÆp Tr­ Bµ Bµ 203/202 "},
{36,"§Õn BiÖn Kinh gÆp Chóc Tó Thanh 198/191 "},
{37,"§i T­¬ng D­¬ng thØnh gi¸o Hµ Mé TuyÕt 191/206 "},
{38,"Lªn L©m Du Quan thu phôc §Şch H¹o Nhiªn 204/235 "},
{39,"Quay vÒ gÆp Chóc Tó Thanh "},
{40,"§Õn Ba L¨ng HuyÖn giao Tr©m cho Tr­ Bµ Bµ  "},
{41,"§Õn Thµnh §« gÆp Cæ Dù TÈu 478/383 "},
{42,"§Õn Ph­îng T­êng gÆp Vâ L©m Minh Chñ 201/189 "},
{43,"Lªn Ch©n Nói Tr­êng B¹ch tiªu diÖt Tµo Hïng 168/142  "},
{44,"Quay vÒ GÆp Vâ L©m Minh Chñ  "},
{45,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm vô  "},
{46,""}
}
function nhapphai() -- nv lv 10
	if GetTask(103) == 0 then
		SetFaction("Thien Vuong Bang")
		SetCamp(3)
		SetCurCamp(3)
		if HaveMagic(34) < 0 or HaveMagic(30) < 0 or HaveMagic(29) < 0 then
		AddMagic(34)
		AddMagic(30)
		AddMagic(29)
		end

		SetTask(103,1)
		SetTask(104,0) -- so luong nhiem vu
		
		--hockynang()
		Talk(1,"","<color=green>"..tennpc.."<color>: Tõ h«m nay ng­êi ®· chİnh thøc gia nhËp <color=yellow>"..tenphai.."<color>, h·y cè g¾ng luyÖn tËp nhĞ.")
		Msg2Player("H·y ®èi tho¹i l¹i víi NPC M«n Ph¸i ®Ó nhËn ®Çy ®ñ kü n¨ng cÊp 10 !")
		KickOutSelf()
	elseif GetTask(103) == 1 then
		if GetTask(104) < 10 then
			Talk(1,"","<color=green>"..tennpc.."<color>: NhiÖm vô ta giao ch­a hoµn thµnh sao l¹i vÒ nhanh thÕ !")
			Msg2Player("NhiÖm vô s¬ nhËp "..tenphai..": lªn Hoa S¬n tiªu diÖt 10 con nhİm !")
		else
			SetTask(103,2)
			SetTask(104,0)
			Talk(1,"","<color=green>"..tennpc.."<color>: Mang thñ cÊp Nhİm ®Õn Hoa S¬n 304/215 gÆp <color=yellow>DiÖp TiÕp Mü <color>")
			Msg2Player("Mang thñ cÊp Nhİm ®Õn Hoa S¬n 304/215 gÆp DiÖp TiÕp Mü ")
		end	
	elseif GetTask(103) == 3 then
		SetTask(103,4)
		Talk(3,"","<color=green>"..tennpc.."<color>: Nhµ ng­¬i còng rÊt kh¸ ®Êy, hi väng ng­¬i sÏ dïng tµi trİ cña m×nh ®Ó lµm r¹ng danh "..tenphai.."",
		"H·y ®i gÆp chñ d­îc ®iÕm, chñ t¹p hãa, chñ thî rÌn vµ chñ b¸n ngùa. Giao tİn th­ cña ta ®Õn nh÷ng ng­êi nµy !",
		"H·y nhanh lªn nhĞ, ta cßn ph¶i lµm nhiÒu viÖc kh¸c n÷a ")
		Msg2Player("NhËn ®­îc tİn th­ cña Ch­ëng M«n, h·y ®i nãi chuyÖn lÇn l­ît : chñ d­îc ®iÕm, chñ t¹p hãa, chñ thî rÌn, chñ b¸n ngùa ")
	elseif GetTask(103) >= 4 and GetTask(103) <= 7 then
		Talk(1,"","Ng­¬i ®ang lµm nhiÖm vô M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
		Msg2Player("H·y giao tİn th­ cña ta ®Õn lÇn l­ît : chñ d­îc ®iÕm, chñ t¹p hãa, chñ thî rÌn, chñ b¸n ngùa ")
	elseif GetTask(103) == 8 then
		if HaveMagic(26) < 0 or HaveMagic(23) < 0 or HaveMagic(24) < 0 then
		AddMagic(26)
		AddMagic(23)
		AddMagic(24)
		end
		Talk(1,"","<color=green>"..tennpc.."<color>: Nh÷ng g× ta giao phã ng­¬i ®· lµm rÊt tèt, chİnh thøc nhËn ng­¬i vµo <color=yellow>"..tenphai.."<color>")	
		Msg2Player("B¹n ®· gia nhËp "..tenphai..", häc ®­îc kü n¨ng cÊp 10 !")
		SetTask(103,9)
	else
		Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i ®ang lµm nhiÖm vô M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
	end
end;

function nhiemvu20()
if GetTask(103) == 9 then
	SetTask(103,10)
	Talk(2,"","<color=red><color>: Ta ®· tu luyÖn bÊy l©u giê muèn n©ng cao søc m¹nh cña m×nh, xin s­ phô chØ b¶o thªm ",
	"Ng­êi cã bao giê nghe nãi mét tªn û m¹nh hiÕp yÕu kh«ng, h¾n ta ®ang hãng h¸ch ë Phôc Ng­u S¬n, gióp ta d¹y b¶o h¾n ")
	Msg2Player("H·y ®Õn B¹ch V©n §éng 219/192, 212/201, 219/207 tiªu diÖt Tr­¬ng §Çu B­u !")
elseif GetTask(103) == 11 then
	if HaveMagic(33) < 0 then
	AddMagic(33)
	end
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm vô , häc ®­îc kü n¨ng cÊp 20 !")
	SetTask(103,12)
else 
		Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i ®ang lµm nhiÖm vô M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
end
end

function nhiemvu30()
if GetTask(103) == 12 then
	Talk(2,"","<color=green>"..tennpc.."<color>: §Õn <color=yellow>T­¬ng D­¬ng Phñ <color>t×m <color=red>Tèng ViÔn Thµnh 191/193<color>. ¤ng ta sÏ kÓ cho ng­êi nghe vÒ chuyÖn mét con HuyÕt Ma Hæ ",
	"Nã ®· tõng s¸t h¹i rÊt nhiÒu ng­êi khiÕn d©n trong vïng v« cïng kinh sî !")
	Msg2Player("§Õn T­¬ng D­¬ng Phñ t×m Tèng ViÔn Thµnh 191/193")
	SetTask(103,13)
elseif GetTask(103) == 16 then
	if HaveMagic(37) < 0 or HaveMagic(35) < 0 or HaveMagic(31) < 0 then
	AddMagic(37)
	AddMagic(35)
	AddMagic(31)
	end
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm vô , häc ®­îc kü n¨ng cÊp 30 !")
	SetTask(103,17)
else
	Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i ®ang lµm nhiÖm vô M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
end
end

function nhiemvu40()
if GetTask(103) == 17 then
	Talk(2,"","<color=green>"..tennpc.."<color>: Cã thÓ lÇn nµy ng­¬i ph¶i ®i <color=yellow>Phôc Ng­u S¬n T©y<color> 1 chuyÕn råi, ta ®ang cÇn t×m 1 mËt hµm quan träng ",
	"§¸nh b¹i <color=red>Thİch Kh¸ch Kim Quèc<color> 248/192, 269/183, 246/180, b¾t h¾n ph¶i giao mËt hµm ra")
	Msg2Player("§i Phôc Ng­u S¬n T©y ®¸nh b¹i Thİch Kh¸ch Kim Quèc 248/192, 269/183, 246/180")
	SetTask(103,18)
elseif GetTask(103) == 19 then
	Talk(1,"","<color=green>"..tennpc.."<color>: Kh¸ l¾m ®Ö tö, h·y nhanh ch©n ®em mËt hµm ®Õn <color=yellow>BiÖn Kinh<color> ®­a cho <color=red>Tiªu T­íng Quan 217/184")
	Msg2Player("§Õn BiÖn Kinh 217/184 ®­a bøc mËt hµm cho Tiªu T­íng Qu©n ")
	SetTask(103,20)
elseif GetTask(103) == 21 then
	if HaveMagic(40) < 0 then
	AddMagic(40)
	end
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm vô , häc ®­îc kü n¨ng cÊp 40 !")
	SetTask(103,22)
else
	Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i ®ang lµm nhiÖm vô M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
end
end

function nhiemvu50()
if GetTask(103) == 22 then
	Talk(1,"","<color=green>"..tennpc.."<color>: §Õn <color=yellow>Tİn T­íng Tù Thµnh §« <color> gÆp <color=red>Tõ Chung §¹i S­ <color>209/199, ta cã viÖc cÇn truyÒn ®¹t !")
	Msg2Player("NhËn nhiÖm vô: §Õn Ph­îng T­êng gÆp Tõ Chung §¹i S­ 209/199")
	SetTask(103,23)
elseif GetTask(103) == 26 then
	if HaveMagic(42) < 0 then
	AddMagic(42)
	end
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm vô , häc ®­îc kü n¨ng cÊp 50 !")
	SetTask(103,28)
else
	Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i ®ang lµm nhiÖm vô M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
end
end

function nhiemvu60()
if GetTask(103) == 28 or GetTask(103) == 27 then
	Talk(2,"","<color=green>"..tennpc.."<color>: H·y ®i t×m <color=red>Tİn VËt M«n Ph¸i<color> ®· thÊt l¹c trong giang hå ",
	"H·y ®Õn <color=yellow>Giang T©n Th«n 443/382<color> gÆp Thµnh §¹i Qu©n dÓ hái th¨m tin tøc !")
	Msg2Player("NhiÖm vô m«n ph¸i: TiÕp nhËn nhiÖm vô, ®Õn Giang T©n Th«n 443/382 gÆp Thµnh §¹i Qu©n !")
	SetTask(103,29)
elseif GetTask(103) == 33 then
	if HaveMagic(36) < 0 or HaveMagic(32) < 0 or HaveMagic(41) < 0 or HaveMagic(325) < 0 then
	AddMagic(36)
	AddMagic(32)
	AddMagic(41)
	AddMagic(325)
	end
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm vô , häc ®­îc kü n¨ng cÊp 60 !")
	SetTask(103,34)		
else
	Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i ®ang lµm nhiÖm vô M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
end
end

function nhiemvu90()
if GetTask(103) == 34 then
	if GetTongName() == "" then
		if GetTask(100) >= 240 then
			Talk(2,"","<color=green>"..tennpc.."<color>: Khæ luyÖn nhiÒu n¨m ¾t sÏ thµnh tµi, ®Ó häc tuyÖt kü m«n ph¸i ng­êi ph¶i vÊt v¶ l¾m ®Êy !",
			"H·y ®Õn <color=yellow>Ba L¨ng HuyÖn<color> gÆp <color=red>Tr­ Bµ Bµ 203/202<color> ®Ó bµ h­íng dÉn cho")
			Msg2Player("TiÕp nhËn nhiÖm vô Trïng Ph¶n S­ M«n, ®Õn Ba L¨ng HuyÖn gÆp Tr­ Bµ bµ 203/202 ")
			SetTask(103,35)
		else
			Talk(1,"","<color=green>"..tennpc.."<color>: Danh väng cña ng­êi kh«ng ®ñ <color=red>240<color> ®iÓm, kh«ng thÓ quay vÒ !")	
			Msg2Player("Hoµn thµnh ®ñ 240 ®iÓm råi quay l¹i. §iÓm danh väng cã thÓ kiÕm ®­îc ë V­ît ¶i, Boss S¸t Thñ, Tèng Kim !")
		end
	else
		Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i muèn vÒ m«n ph¸i mµ l¹i chia bang chia ph¸i thÕ kia, ta kh«ng nhËn ng­¬i !")
		Msg2Player("Rêi khái bang héi tr­íc khi nhËn nhiÖm vô Trïng Ph¶n S­ M«n !")
	end
elseif GetTask(103) == 45 then
	--AddMagic(342,1)
	--AddMagic(347,1)
	--AddMagic(345,1)
	Talk(2,"","<color=green>"..tennpc.."<color>: Ng­¬i kh«ng hæ danh lµ ®Ô tõ cña "..tenphai..", h·y dïng tuyÖt kü cña b«n m«n ®Ó vinh danh nhĞ !",
	"<color=red><color>: §a t¹ s­ phô, xin b¸i biÖt !")
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm vô , häc ®­îc kü n¨ng cÊp 90 !")
	SetTask(103,46)
else
	Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i ®ang lµm nhiÖm vô M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
end
end

function nhiemvu120()
Talk(1,"","Chøc n¨ng ch­a Updadte !")
end