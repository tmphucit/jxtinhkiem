tennpc = "C«n L«n Ch­ëng M«n"
tenphai = "C«n L«n Ph¸i"
nguhanh = 4
Include("//script//faction49//main_Xuatsu.lua")
tennguhanh = "h?th?"
tenfaction = "Con Lon Phai"
idmonphai = 10
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
		if HaveMagic(169) < 0 then
		AddMagic(169)
		AddMagic(179)
		end
				end
				if GetTask(103) >= 8 then
		if HaveMagic(167) < 0 then
		AddMagic(167)
		AddMagic(168)
		AddMagic(338)
		AddMagic(171)
		end
				end
		if GetTask(103) >= 11 then
		if HaveMagic(174) < 0 then
		AddMagic(174)
		end
				end
				if GetTask(103) >= 16 then
		if HaveMagic(178) < 0 then
		AddMagic(178)
		AddMagic(172)
		AddMagic(339)
		AddMagic(173)
		end
				end
				if GetTask(103) >= 21 then
		if HaveMagic(175) < 0 then
		AddMagic(175)
		AddMagic(181)
		end
				end
				if GetTask(103) >= 26 then
		if HaveMagic(176) < 0 then
		AddMagic(176)
		AddMagic(90)
		end
				end
				if GetTask(103) >= 33 then
		if HaveMagic(275) < 0 then
		AddMagic(275)
		AddMagic(182)
		AddMagic(472)
		end
				end

		if GetTask(103) >= 45 then
		AddMagic(385,20)
		AddMagic(384,20)
		AddMagic(329)

		end


		Msg2Player("B¹n ®· nhËn ®Çy ®ñ k?n¨ng m«n ph¸i ®¼ng cÊp hiÖn t¹i ")
end

function main()
		
W,X,Y = GetWorldPos()
	if GetFaction() == "" then
		if GetSeries() == nguhanh then
			if GetLevel() >= 10 then
				Say("<color=green>"..tennpc.."<color>: Ng­¬i c?muèn tham gia vµo m«n ph¸i <color=yellow>"..tenphai.."<color> hay kh«ng?",2,
				"V©ng ta muèn tham gia vµo "..tenphai.."./nhapphai",
				"Tho¸t/Exit")
			else
				Talk(1,"","<color=green>"..tennpc.."<color>: Ng­êi h·y luyÖn tËp ®Õn <color=red>cÊp ®é 10<color> råi h·y quay l¹i gÆp ta !")
			end
		else
			Talk(1,"","<color=green>"..tennpc.."<color>: "..tenphai.." ch?dµnh cho nh÷ng ng­êi thuéc ng?hµnh "..tennguhanh..", ng­êi vui lßng gia nhËp ph¸i kh¸c nh?!")
		end
	elseif GetFaction() == tenfaction then
		if GetSeries() == nguhanh then
				Say("<color=green>"..tennpc.."<color>: Ng­¬i quay l¹i gÆp ta ®Ó lµm g?",4,
				"Ta muèn häc k?n¨ng cña m«n ph¸i /hockynang",
				"XuEt S-/XuatSu",
				"VO Ph¡Mi/velai",
				"Tho¸t/Exit")
			else
				Talk(1,"","<color=green>"..tennpc.."<color>: "..tenphai.." ch?dµnh cho nh÷ng ng­êi thuéc ng?hµnh "..tennguhanh..", ng­êi vui lßng gia nhËp ph¸i kh¸c nh?!")
			end
		else
			Talk(1,"","<color=green>"..tennpc.."<color>: Ta kh«ng bao gi?nãi chuyÖn víi ng­êi ngoµi ph¸p m×nh, xin th?lçi!")
		end
end;

function Exit()
end

function xemnvdanglam()
if GetTask(103) < 1 and GetTask(103) > getn(mangnv) then
	Talk(1,"","Kh«ng c?d?liÖu nhiÖm v?m«n ph¸i !")
else
	Talk(1,"","<color=red>NhiÖm v?m«n ph¸i<color>: "..mangnv[GetTask(103)][2].." ")
	Msg2Player("NhiÖm v?m«n ph¸i: "..mangnv[GetTask(103)][2].." ")
end
end

mangnv = {
{1,"Tiªu diÖt 10 con Nhİm ?Hoa S¬n"},
{2,"§èi tho¹i DiÖp TiÕp M?t¹i Hoa S¬n 304/315"},
{3,"§èi tho¹i víi NPC M«n Ph¸i"},
{4,"§èi tho¹i víi NPC D­îc §iÕm"},
{5,"§èi tho¹i víi NPC T¹p Hãa "},
{6,"§èi tho¹i víi NPC Th?RÌn "},
{7,"§èi tho¹i víi NPC B¸n ngùa ?thµnh th?"},
{8,"GÆp NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm v?"},
{9,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm v?20"},
{10,"H·y ®Õn Phôc Ng­u S¬n 235/214 tiªu diÖt Tr­¬ng §Çu B­u !"},
{11,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm v?"},
{12,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm v?30"},
{13,"§Õn T­¬ng D­¬ng t×m Tèng ViÔn Thanh 191/193"},
{14,"§i Phôc Ng­u S¬n ®¸nh b¹i HuyÕt Ma H?241/223"},
{15,"Quay v?gÆp Tèng ViÔn Thanh b¸o tin"},
{16,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm v?"},
{17,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm v?40"},
{18,"§i D­îc V­¬ng §éng tiªu diÖt Thİch Kh¸ch Kim Quèc 216/199"},
{19,"Quay v?gÆp NPC M«n Ph¸i"},
{20,"§Õn BiÖn Kinh gÆp Tiªu T­íng Qu©n 217/184"},
{21,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm v?"},
{22,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm v?50"},
{23,"§Õn Tİn T­íng T?Thµnh §« gÆp T?Chung §¹i S?402/319"},
{24,"§i TÇn L¨ng tiªu diÖt Thµnh Kh«n 199/219"},
{25,"Quay v?GÆp T?Chung §¹i S?"},
{26,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm v?"},
{27,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm v?60"},
{28,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm v?60"},
{29,"§Õn Ph­îng T­êng gÆp Thµnh §¹i Qu©n 201/202"},
{30,"§i Chu Tiªn TrÊn ®¸nh b¹i LiÔu T?T?217/180"},
{31,"V?Ph­îng T­îng gÆp Thµnh §¹i Qu©n"},
{32,"Qua Thµnh §« gÆp K?¡n Mµy"},
{33,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm v?"},
{34,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm v?90"},
{35,"§Õn Ba L¨ng HuyÖn gÆp Tr?B?B?203/202"},
{36,"§Õn BiÖn Kinh gÆp Chóc T?Thanh 198/191"},
{37,"§i T­¬ng D­¬ng thØnh gi¸o H?M?TuyÕt 191/206"},
{38,"Lªn L©m Du Quan thu phôc §Şch H¹o Nhiªn 204/235"},
{39,"Quay v?gÆp Chóc T?Thanh"},
{40,"§Õn Ba L¨ng HuyÖn giao Tr©m cho Tr?B?B?"},
{41,"§Õn Thµnh §« gÆp C?D?TÈu 384/318"},
{42,"§Õn Ph­îng T­êng gÆp V?L©m Minh Ch?201/189"},
{43,"Lªn Ch©n Nói Tr­êng B¹ch tiªu diÖt Tµo Hïng 168/142 "},
{44,"Quay v?GÆp V?L©m Minh Ch?"},
{45,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm v?"},
{46,""}
}
function nhapphai() -- nv lv 10
	if GetTask(103) == 0 then
		SetFaction("Con Lon Phai")
		SetCamp(3)
		SetCurCamp(3)
		if HaveMagic(169) < 0 then
		AddMagic(169)
		AddMagic(179)
		end

		SetTask(103,8)
		SetTask(104,0) -- so luong nhiem vu
		Talk(1,"","<color=green>"..tennpc.."<color>: T?h«m nay ng­êi ®· chİnh thøc gia nhËp <color=yellow>"..tenphai.."<color>, h·y c?g¾ng luyÖn tËp nh? ")
		Msg2Player("H·y ®èi tho¹i l¹i víi NPC M«n Ph¸i ®Ó nhËn ®Çy ®ñ k?n¨ng cÊp 10 !")
	else
		Talk(1,"","<color=green>"..tennpc.."<color>: H·y ®¹t ®ñ ®¼ng cÊp råi ®Õn ®©y gÆp ta ®Ó häc k?n¨ng míi ! !")
	end
end;

function nhiemvu20()
if GetTask(103) == 9 then
	SetTask(103,10)
	Talk(2,"","<color=red><color>: Ta ®· tu luyÖn bÊy l©u gi?muèn n©ng cao søc m¹nh cña m×nh, xin s?ph?ch?b¶o thªm ",
	"Ng­êi c?bao gi?nghe nãi mét tªn ?m¹nh hiÕp yÕu kh«ng, h¾n ta ®ang hãng h¸ch ?Phôc Ng­u S¬n, gióp ta d¹y b¶o h¾n ")
	Msg2Player("H·y ®Õn Phôc Ng­u S¬n 235/214 tiªu diÖt Tr­¬ng §Çu B­u !")
elseif GetTask(103) == 11 then
	if HaveMagic(174) < 0 then
	AddMagic(174)
	end
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm v?, häc ®­îc k?n¨ng cÊp 20 !")
	SetTask(103,12)
else 
		Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i ®ang lµm nhiÖm v?M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
end
end

function nhiemvu30()
if GetTask(103) == 12 then
	Talk(2,"","<color=green>"..tennpc.."<color>: §Õn <color=yellow>T­¬ng D­¬ng Ph?<color>t×m <color=red>Tèng ViÔn Thµnh 191/193<color>. ¤ng ta s?k?cho ng­êi nghe v?chuyÖn mét con HuyÕt Ma H?",
	"N?®· tõng s¸t h¹i rÊt nhiÒu ng­êi khiÕn d©n trong vïng v?cïng kinh s?!")
	Msg2Player("§Õn T­¬ng D­¬ng Ph?t×m Tèng ViÔn Thµnh 191/193")
	SetTask(103,13)
elseif GetTask(103) == 16 then
		if HaveMagic(178) < 0 then
		AddMagic(178)
		AddMagic(172)
		AddMagic(339)
		AddMagic(173)
		end
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm v?, häc ®­îc k?n¨ng cÊp 30 !")
	SetTask(103,17)
else
	Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i ®ang lµm nhiÖm v?M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
end
end

function nhiemvu40()
if GetTask(103) == 17 then
	Talk(2,"","<color=green>"..tennpc.."<color>: C?th?lÇn nµy ng­¬i ph¶i ®i <color=yellow>D­îc V­¬ng §éng<color> 1 chuyÕn råi, ta ®ang cÇn t×m 1 mËt hµm quan träng ",
	"§¸nh b¹i <color=red>Thİch Kh¸ch Kim Quèc<color> 216/199 v?220/192, b¾t h¾n ph¶i giao mËt hµm ra")
	Msg2Player("§i D­îc V­¬ng §éng ®¸nh b¹i Thİch Kh¸ch Kim Quèc 216/199 v?220/192")
	SetTask(103,18)
elseif GetTask(103) == 19 then
	Talk(1,"","<color=green>"..tennpc.."<color>: Kh?l¾m ®Ö t? h·y nhanh ch©n ®em mËt hµm ®Õn <color=yellow>BiÖn Kinh<color> ®­a cho <color=red>Tiªu T­íng Quan 217/184")
	Msg2Player("§Õn BiÖn Kinh 217/184 ®­a bøc mËt hµm cho Tiªu T­íng Qu©n ")
	SetTask(103,20)
elseif GetTask(103) == 21 then
		if HaveMagic(175) < 0 then
		AddMagic(175)
		AddMagic(181)
		end
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm v?, häc ®­îc k?n¨ng cÊp 40 !")
	SetTask(103,22)
else
	Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i ®ang lµm nhiÖm v?M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
end
end

function nhiemvu50()
if GetTask(103) == 22 then
	Talk(1,"","<color=green>"..tennpc.."<color>: §Õn <color=yellow>Tİn T­íng T?Thµnh §« <color> gÆp <color=red>T?Chung §¹i S?<color>402/319, ta c?viÖc cÇn truyÒn ®¹t !")
	Msg2Player("NhËn nhiÖm v? §Õn Tİn T­íng T?Thµnh §« gÆp T?Chung §¹i S?402/319")
	SetTask(103,23)
elseif GetTask(103) == 26 then
		if HaveMagic(176) < 0 then
		AddMagic(176)
		AddMagic(90)
		end
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm v?, häc ®­îc k?n¨ng cÊp 50 !")
	SetTask(103,28)
else
	Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i ®ang lµm nhiÖm v?M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
end
end

function nhiemvu60()
if GetTask(103) == 28 or GetTask(103) == 27 then
	Talk(2,"","<color=green>"..tennpc.."<color>: H·y ®i t×m <color=red>Tİn VËt M«n Ph¸i<color> ®· thÊt l¹c trong giang h?",
	"H·y ®Õn <color=yellow>Ph­îng T­êng 201/202<color> gÆp Thµnh §¹i Qu©n d?hái th¨m tin tøc !")
	Msg2Player("NhiÖm v?m«n ph¸i: TiÕp nhËn nhiÖm v? ®Õn Ph­îng T­êng 201/202 gÆp Thµnh §¹i Qu©n !")
	SetTask(103,29)
elseif GetTask(103) == 33 then
		if HaveMagic(275) < 0 then
		AddMagic(275)
		AddMagic(182)
		AddMagic(472)
		end
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm v?, häc ®­îc k?n¨ng cÊp 60 !")
	SetTask(103,34)		
else
	Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i ®ang lµm nhiÖm v?M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
end
end

function nhiemvu90()
if GetTask(103) == 34 then
	if GetTongName() == "" then
		if GetTask(100) >= 240 then
			Talk(2,"","<color=green>"..tennpc.."<color>: Kh?luyÖn nhiÒu n¨m ¾t s?thµnh tµi, ®Ó häc tuyÖt k?m«n ph¸i ng­êi ph¶i vÊt v?l¾m ®Êy !",
			"H·y ®Õn <color=yellow>Ba L¨ng HuyÖn<color> gÆp <color=red>Tr?B?B?203/202<color> ®Ó b?h­íng dÉn cho")
			Msg2Player("TiÕp nhËn nhiÖm v?Trïng Ph¶n S?M«n, ®Õn Ba L¨ng HuyÖn gÆp Tr?B?b?203/202 ")
			SetTask(103,35)
		else
			Talk(1,"","<color=green>"..tennpc.."<color>: Danh väng cña ng­êi kh«ng ®ñ <color=red>240<color> ®iÓm, kh«ng th?quay v?!")	
			Msg2Player("Hoµn thµnh ®ñ 240 ®iÓm råi quay l¹i. §iÓm danh väng c?th?kiÕm ®­îc ?V­ît ¶i, Boss S¸t Th? Tèng Kim !")
		end
	else
		Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i muèn v?m«n ph¸i m?l¹i chia bang chia ph¸i th?kia, ta kh«ng nhËn ng­¬i !")
		Msg2Player("Rêi khái bang héi tr­íc khi nhËn nhiÖm v?Trïng Ph¶n S?M«n !")
	end
elseif GetTask(103) == 45 then
		AddMagic(385,1)
		AddMagic(384,1)
		AddMagic(329)
	Talk(2,"","<color=green>"..tennpc.."<color>: Ng­¬i kh«ng h?danh l?®Ô t?cña "..tenphai..", h·y dïng tuyÖt k?cña b«n m«n ®Ó vinh danh nh?!",
	"<color=red><color>: §a t?s?ph? xin b¸i biÖt !")
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm v?, häc ®­îc k?n¨ng cÊp 90 !")
	SetTask(103,46)
else
	Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i ®ang lµm nhiÖm v?M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
end
end

function nhiemvu120()
Talk(1,"","Chøc n¨ng ch­a Updadte !")
end
