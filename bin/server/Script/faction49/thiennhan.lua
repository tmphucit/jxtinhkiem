Include("//script//faction49//main_Xuatsu.lua")
tennpc = "Thiªn NhÉn Ch­ëng M«n"
tenphai = "Thiªn NhÉn Gi¸o"
nguhanh = 3
tennguhanh = "hÖ háa "
tenfaction = "Thien Nhan Giao"
idmonphai = 8

function hockynang()
--if GetTask(103) > 0 then
		if GetLevel() >= 10 and GetLevel() < 20 then
			SetTask(103,8)
		elseif GetLevel() >= 20 and GetLevel() < 30 then
			SetTask(103,11)
		elseif GetLevel() >= 30 and GetLevel() < 40 then
			SetTask(103,16)
		elseif GetLevel() >= 40 and GetLevel() < 50 then
			SetTask(103,21)
		elseif GetLevel() >= 50 and GetLevel() < 60 then
			SetTask(103,26)
		elseif GetLevel() >= 60 and GetLevel() < 90 then
			SetTask(103,33)
		elseif GetLevel() >= 90 then
			SetTask(103,45)
		end
		--end

		if GetTask(103) >= 1 then
		if HaveMagic(135) < 0 then
		AddMagic(135)
		AddMagic(145)
		end
				end
				if GetTask(103) >= 8 then
		if HaveMagic(132) < 0 then
		AddMagic(132)
		AddMagic(131)
		AddMagic(136)
		end
				end
				if GetTask(103) >= 11 then
		if HaveMagic(137) < 0 then
		AddMagic(137)
		end
				end
				if GetTask(103) >= 16 then
		if HaveMagic(141) < 0 then
		AddMagic(141)
		AddMagic(138)
		AddMagic(140)
		end
				end
				if GetTask(103) >= 21 then
		if HaveMagic(364) < 0 then
		AddMagic(364)
		end
				end
				if GetTask(103) >= 26 then
		if HaveMagic(143) < 0 then
		AddMagic(143)
		end
				end
				if GetTask(103) >= 33 then
		if HaveMagic(150) < 0 then
		AddMagic(150)
		AddMagic(142)
		AddMagic(148)
		end
				end

		if GetTask(103) >= 45 then

		AddMagic(365,20)
		AddMagic(367,20)
		AddMagic(328)
		end

Msg2Player("B¹n ®· nhËn ®Çy ®ñ kü n¨ng m«n ph¸i ®¼ng cÊp hiÖn t¹i ")
end

function main()
		

W,X,Y = GetWorldPos()
	if GetFaction() == "" then
		if GetSeries() == nguhanh then
			if GetLevel() >= 10 then
				Say("<color=green>"..tennpc.."<color>: Ng­¬i cã muèn tham gia vµo m«n ph¸i <color=yellow>"..tenphai.."<color> hay kh«ng?",2,
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
				Say("<color=green>"..tennpc.."<color>: Ng­¬i quay l¹i gÆp ta ®Ó lµm g×?",4,
				"Ta muèn häc kü n¨ng cña m«n ph¸i /hockynang",
				"XuÊt S­/XuatSu",
				"VÒ Ph¸i/velai",
				"Tho¸t/Exit")
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
{2,"§èi tho¹i DiÖp TiÕp Mü t¹i Hoa S¬n 304/315 "},
{3,"§èi tho¹i víi NPC M«n Ph¸i "},
{4,"§èi tho¹i víi NPC D­îc §iÕm "},
{5,"§èi tho¹i víi NPC T¹p Hãa  "},
{6,"§èi tho¹i víi NPC Thî RÌn  "},
{7,"§èi tho¹i víi NPC B¸n ngùa ë thµnh thŞ  "},
{8,"GÆp NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm vô  "},
{9,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm vô 20 "},
{10,"H·y ®Õn Phôc Ng­u S¬n 235/214 tiªu diÖt Tr­¬ng §Çu B­u ! "},
{11,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm vô  "},
{12,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm vô 30 "},
{13,"§Õn T­¬ng D­¬ng t×m Tèng ViÔn Thanh 191/193 "},
{14,"§i Phôc Ng­u S¬n ®¸nh b¹i HuyÕt Ma Hæ 241/223 "},
{15,"Quay vÒ gÆp Tèng ViÔn Thanh b¸o tin "},
{16,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm vô  "},
{17,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm vô 40 "},
{18,"§i D­îc V­¬ng §éng tiªu diÖt Thİch Kh¸ch Kim Quèc 216/199 "},
{19,"Quay vÒ gÆp NPC M«n Ph¸i "},
{20,"§Õn BiÖn Kinh gÆp Tiªu T­íng Qu©n 217/184 "},
{21,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm vô  "},
{22,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm vô 50 "},
{23,"§Õn Tİn T­íng Tù Thµnh §« gÆp Tõ Chung §¹i S­ 402/319 "},
{24,"§i TÇn L¨ng tiªu diÖt Thµnh Kh«n 199/219 "},
{25,"Quay vÒ GÆp Tõ Chung §¹i S­ "},
{26,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm vô  "},
{27,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm vô 60 "},
{28,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm vô 60 "},
{29,"§Õn Ph­îng T­êng gÆp Thµnh §¹i Qu©n 201/202 "},
{30,"§i Chu Tiªn TrÊn ®¸nh b¹i LiÔu Tè Tè 217/180 "},
{31,"VÒ Ph­îng T­îng gÆp Thµnh §¹i Qu©n "},
{32,"Qua Thµnh §« gÆp KÎ ¡n Mµy "},
{33,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm vô  "},
{34,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm vô 90 "},
{35,"§Õn Ba L¨ng HuyÖn gÆp Tr­ Bµ Bµ 203/202 "},
{36,"§Õn BiÖn Kinh gÆp Chóc Tó Thanh 198/191 "},
{37,"§i T­¬ng D­¬ng thØnh gi¸o Hµ Mé TuyÕt 191/206 "},
{38,"Lªn L©m Du Quan thu phôc §Şch H¹o Nhiªn 204/235 "},
{39,"Quay vÒ gÆp Chóc Tó Thanh "},
{40,"§Õn Ba L¨ng HuyÖn giao Tr©m cho Tr­ Bµ Bµ  "},
{41,"§Õn Thµnh §« gÆp Cæ D­ TÈu 384/318 "},
{42,"§Õn Ph­îng T­êng gÆp Vâ L©m Minh Chñ 201/189 "},
{43,"Lªn Ch©n Nói Tr­êng B¹ch tiªu diÖt Tµo Hïng 168/142  "},
{44,"Quay vÒ GÆp Vâ L©m Minh Chñ  "},
{45,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm vô  "},
{46,""}
}
function nhapphai() -- nv lv 10
	if GetTask(103) == 0 then
		SetFaction("Thien Nhan Giao")
		SetCamp(2)
		SetCurCamp(2)
		if HaveMagic(135) < 0 then
		AddMagic(135)
		AddMagic(145)
		end
	
		SetTask(103,8)
		SetTask(104,0) -- so luong nhiem vu
		Talk(1,"","<color=green>"..tennpc.."<color>: Tõ h«m nay ng­êi ®· chİnh thøc gia nhËp <color=yellow>"..tenphai.."<color>, h·y cè g¾ng luyÖn tËp nhĞ.")
		Msg2Player("H·y ®èi tho¹i l¹i víi NPC M«n Ph¸i ®Ó nhËn ®Çy ®ñ kü n¨ng cÊp 10 !")
	elseif GetTask(103) == 1 then
		if GetTask(104) < 10 then
			Talk(1,"","<color=green>"..tennpc.."<color>: NhiÖm vô ta giao ch­a hoµn thµnh sao l¹i vÒ nhanh thÕ !")
			Msg2Player("NhiÖm vô s¬ nhËp "..tenphai..": lªn Hoa S¬n tiªu diÖt 10 con nhİm !")
		else
			SetTask(103,2)
			SetTask(104,0)
			Talk(1,"","<color=green>"..tennpc.."<color>: Mang thñ cÊp Nhİm ®Õn Hoa S¬n 304/315 gÆp <color=yellow>DiÖp TiÕp Mü <color>")
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
		if HaveMagic(132) < 0 then
		AddMagic(132)
		AddMagic(131)
		AddMagic(136)
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
	Msg2Player("H·y ®Õn Phôc Ng­u S¬n 235/214 tiªu diÖt Tr­¬ng §Çu B­u !")
elseif GetTask(103) == 11 then
		if HaveMagic(137) < 0 then
		AddMagic(137)
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
		if HaveMagic(141) < 0 then
		AddMagic(141)
		AddMagic(138)
		AddMagic(140)
		end
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm vô , häc ®­îc kü n¨ng cÊp 30 !")
	SetTask(103,17)
else
	Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i ®ang lµm nhiÖm vô M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
end
end

function nhiemvu40()
if GetTask(103) == 17 then
	Talk(2,"","<color=green>"..tennpc.."<color>: Cã thÓ lÇn nµy ng­¬i ph¶i ®i <color=yellow>D­îc V­¬ng §éng<color> 1 chuyÕn råi, ta ®ang cÇn t×m 1 mËt hµm quan träng ",
	"§¸nh b¹i <color=red>Thİch Kh¸ch Kim Quèc<color> 216/199 vµ 220/192, b¾t h¾n ph¶i giao mËt hµm ra")
	Msg2Player("§i D­îc V­¬ng §éng ®¸nh b¹i Thİch Kh¸ch Kim Quèc 216/199 vµ 220/192")
	SetTask(103,18)
elseif GetTask(103) == 19 then
	Talk(1,"","<color=green>"..tennpc.."<color>: Kh¸ l¾m ®Ö tö, h·y nhanh ch©n ®em mËt hµm ®Õn <color=yellow>BiÖn Kinh<color> ®­a cho <color=red>Tiªu T­íng Quan 217/184")
	Msg2Player("§Õn BiÖn Kinh 217/184 ®­a bøc mËt hµm cho Tiªu T­íng Qu©n ")
	SetTask(103,20)
elseif GetTask(103) == 21 then
		if HaveMagic(364) < 0 then
		AddMagic(364)
		end
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm vô , häc ®­îc kü n¨ng cÊp 40 !")
	SetTask(103,22)
else
	Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i ®ang lµm nhiÖm vô M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
end
end

function nhiemvu50()
if GetTask(103) == 22 then
	Talk(1,"","<color=green>"..tennpc.."<color>: §Õn <color=yellow>Tİn T­íng Tù Thµnh §« <color> gÆp <color=red>Tõ Chung §¹i S­ <color>402/319, ta cã viÖc cÇn truyÒn ®¹t !")
	Msg2Player("NhËn nhiÖm vô: §Õn Tİn T­íng Tù Thµnh §« gÆp Tõ Chung §¹i S­ 402/319")
	SetTask(103,23)
elseif GetTask(103) == 26 then
	
		if HaveMagic(143) < 0 then
		AddMagic(143)
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
	"H·y ®Õn <color=yellow>Ph­îng T­êng 201/202<color> gÆp Thµnh §¹i Qu©n dÓ hái th¨m tin tøc !")
	Msg2Player("NhiÖm vô m«n ph¸i: TiÕp nhËn nhiÖm vô, ®Õn Ph­îng T­êng 201/202 gÆp Thµnh §¹i Qu©n !")
	SetTask(103,29)
elseif GetTask(103) == 33 then
		if HaveMagic(150) < 0 then
		AddMagic(150)
		AddMagic(142)
		AddMagic(148)
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
		AddMagic(365,1)
		AddMagic(367,1)
		AddMagic(328)
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
