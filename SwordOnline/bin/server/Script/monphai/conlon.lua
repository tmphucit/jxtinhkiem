tennpc = "C«n L«n Tr­ëng Ph¸i"
tenphai = "C«n L«n Ph¸i"
nguhanh = 4
tennguhanh = "hÖ thæ"
tenfaction = "Con Lon Phai"
idmonphai = 10
Include("\\script\\npcchucnang\\hotrotanthu.lua")
function hockynang()
if GetFaction() == tenfaction then
--if GetTask(103) >= 1 then
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
		elseif GetLevel() >= 60 and GetLevel() < 80 then
			SetTask(103,33)
		elseif GetLevel() >= 80 then
			SetTask(103,45)
		end
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
		-- if GetTask(103) >= 45 then
		-- if HaveMagic(385) > 0 then
			-- Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i ®· häc kü n¨ng 9x cña m«n ph¸i råi mµ !")
			-- return
		-- end
		-- nhiemvu90()
		-- return
		-- end
		Msg2Player("B¹n ®· nhËn ®Çy ®ñ kü n¨ng m«n ph¸i ®¼ng cÊp hiÖn t¹i ")
end

function main()
--hockynang()
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
				SayNew("<color=green>"..tennpc.."<color>: Ng­¬i quay l¹i gÆp ta ®Ó lµm g×?",2,
				"Ta Muèn NhËn L¹i Kü N¨ng/hockynang",
				"Ta Muèn NhËn Kü N¨ng 90/hotroskill9x",
				"Tho¸t/Exit")
			else
				Talk(1,"","<color=green>"..tennpc.."<color>: "..tenphai.." chØ dµnh cho nh÷ng ng­êi thuéc ngò hµnh "..tennguhanh..", ng­êi vui lßng gia nhËp ph¸i kh¸c nhĞ !")
			end
	else
		Talk(1,"","<color=green>"..tennpc.."<color>: Ta kh«ng bao giê nãi chuyÖn víi ng­êi ngoµi ph¸p m×nh, xin thø lçi!")
	end
end;
function doimau11()
if GetCash() >= 100000 then
Pay(100000)
SetCamp(4)
SetCurCamp(4)
else
Talk(1,"","<color=green>Hç trî t©n thñ: <color>Kh«ng ®ñ 10 v¹n l­îng")
end
end
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
{2,"§èi tho¹i DiÖp TiÕp M?t¹i Hoa S¬n 304/215"},
{3,"§èi tho¹i víi NPC M«n Ph¸i"},
{4,"§èi tho¹i víi NPC D­îc §iÕm"},
{5,"§èi tho¹i víi NPC T¹p Hãa "},
{6,"§èi tho¹i víi NPC Th?RÌn "},
{7,"§èi tho¹i víi NPC B¸n ngùa ?thµnh th?"},
{8,"GÆp NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm v?"},
{9,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm v?20"},
{10,"H·y ®Õn B¹ch V©n §éng 219/192, 212/201, 219/207 tiªu diÖt Tr­¬ng §Çu B­u !"},
{11,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm v?"},
{12,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm v?30"},
{13,"§Õn T­¬ng D­¬ng t×m Tèng ViÔn Thanh 191/193"},
{14,"§i Phôc Ng­u S¬n ®¸nh b¹i HuyÕt Ma H?241/223"},
{15,"Quay v?gÆp Tèng ViÔn Thanh b¸o tin"},
{16,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm v?"},
{17,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm v?40"},
{18,"§i Phôc Ng­u S¬n T©y tiªu diÖt Thİch Kh¸ch Kim Quèc 248/192, 269/183, 246/180"},
{19,"Quay v?gÆp NPC M«n Ph¸i"},
{20,"§Õn Ph­îng T­êng gÆp Tiªu T­íng Qu©n 217/184"},
{21,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm v?"},
{22,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm v?50"},
{23,"§Õn Ph­îng T­êng gÆp T?Chung §¹i S?209/199"},
{24,"§i Kim Quang §éng tiªu diÖt Thµnh Kh«n 179/185, 204/190"},
{25,"Quay v?GÆp T?Chung §¹i S?"},
{26,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm v?"},
{27,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm v?60"},
{28,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm v?60"},
{29,"§Õn Giang T©n Th«n gÆp Thµnh §¹i Qu©n 443/382"},
{30,"§i Chu Tiªn TrÊn ®¸nh b¹i LiÔu T?T?217/180"},
{31,"V?Giang T©n Th«n gÆp Thµnh §¹i Qu©n"},
{32,"Qua T­¬ng D­¬ng gÆp K?¡n Mµy"},
{33,"§èi tho¹i NPC M«n Ph¸i ®Ó hoµn thµnh nhiÖm v?"},
{34,"§èi tho¹i NPC m«n ph¸i nhËn nhiÖm v?90"},
{35,"§Õn Ba L¨ng HuyÖn gÆp Tr?B?B?203/202"},
{36,"§Õn Ph­îng T­êng gÆp Chóc T?Thanh 198/191"},
{37,"§i T­¬ng D­¬ng thØnh gi¸o H?M?TuyÕt 191/206"},
{38,"Lªn L©m Du Quan thu phôc §Şch H¹o Nhiªn 204/235"},
{39,"Quay v?gÆp Chóc T?Thanh"},
{40,"§Õn Ba L¨ng HuyÖn giao Tr©m cho Tr?B?B?"},
{41,"§Õn Thµnh §« gÆp C?D?TÈu 478/383"},
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
		AddMagic(167)
		AddMagic(168)
		AddMagic(338)
		AddMagic(171)
		AddMagic(174)
		AddMagic(178)
		AddMagic(172)
		AddMagic(339)
		AddMagic(173)
		AddMagic(175)
		AddMagic(181)
		AddMagic(176)
		AddMagic(90)
		AddMagic(275)
		AddMagic(182)
		AddMagic(472)
		end

		SetTask(103,8)
		SetTask(104,0) -- so luong nhiem vu
		
		--hockynang()
		Talk(1,"","<color=green>"..tennpc.."<color>: Tõ h«m nay ng­êi ®· chİnh thøc gia nhËp <color=yellow>"..tenphai.."<color>, h·y cè g¾ng luyÖn tËp nhĞ.")
		Msg2Player("H·y ®èi tho¹i l¹i víi NPC M«n Ph¸i ®Ó nhËn ®Çy ®ñ kü n¨ng cÊp 10 !")	
	elseif GetTask(103) == 1 then
		if GetTask(104) < 10 then
			Talk(1,"","<color=green>"..tennpc.."<color>: NhiÖm v?ta giao ch­a hoµn thµnh sao l¹i v?nhanh th?!")
			Msg2Player("NhiÖm v?s?nhËp "..tenphai..": lªn Hoa S¬n tiªu diÖt 10 con nhİm !")
		else
			SetTask(103,2)
			SetTask(104,0)
			Talk(1,"","<color=green>"..tennpc.."<color>: Mang th?cÊp Nhİm ®Õn Hoa S¬n 304/215 gÆp <color=yellow>DiÖp TiÕp M?<color>")
			Msg2Player("Mang th?cÊp Nhİm ®Õn Hoa S¬n 304/215 gÆp DiÖp TiÕp M?")
		end	
	elseif GetTask(103) == 3 then
		SetTask(103,4)
		Talk(3,"","<color=green>"..tennpc.."<color>: Nh?ng­¬i còng rÊt kh?®Êy, hi väng ng­¬i s?dïng tµi tr?cña m×nh ®Ó lµm r¹ng danh "..tenphai.."",
		"H·y ®i gÆp ch?d­îc ®iÕm, ch?t¹p hãa, ch?th?rÌn v?ch?b¸n ngùa. Giao tİn th?cña ta ®Õn nh÷ng ng­êi nµy !",
		"H·y nhanh lªn nh? ta cßn ph¶i lµm nhiÒu viÖc kh¸c n÷a ")
		Msg2Player("NhËn ®­îc tİn th?cña Ch­ëng M«n, h·y ®i nãi chuyÖn lÇn l­ît : ch?d­îc ®iÕm, ch?t¹p hãa, ch?th?rÌn, ch?b¸n ngùa ")
	elseif GetTask(103) >= 4 and GetTask(103) <= 7 then
		Talk(1,"","Ng­¬i ®ang lµm nhiÖm vô M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
		Msg2Player("H·y giao tİn th?cña ta ®Õn lÇn l­ît : ch?d­îc ®iÕm, ch?t¹p hãa, ch?th?rÌn, ch?b¸n ngùa ")
	elseif GetTask(103) == 8 then
		if HaveMagic(167) < 0 or HaveMagic(338) < 0 then
		AddMagic(167)
		AddMagic(168)
		AddMagic(338)
		AddMagic(171)
		end
		Talk(1,"","<color=green>"..tennpc.."<color>: Nh÷ng g× ta giao phã ng­¬i ®· lµm rÊt tèt, chİnh thøc nhËn ng­¬i vµo <color=yellow>"..tenphai.."<color>")	
		Msg2Player("B¹n ®· gia nhËp "..tenphai..", häc ®­îc k?n¨ng cÊp 10 !")
		SetTask(103,9)
	else
		Talk(1,"","<color=green>"..tennpc.."<color>: Ng­¬i ®ang lµm nhiÖm vô M«n Ph¸i, h·y hoµn thµnh råi quay l¹i gÆp ta !")
	end
end;


function nhiemvu20()
if GetTask(103) == 9 then
	SetTask(103,10)
	Talk(2,"","<color=red><color>: Ta ®· tu luyÖn bÊy l©u gi?muèn n©ng cao søc m¹nh cña m×nh, xin s?ph?ch?b¶o thªm ",
	"Ng­êi c?bao gi?nghe nãi mét tªn ?m¹nh hiÕp yÕu kh«ng, h¾n ta ®ang hãng h¸ch ?Phôc Ng­u S¬n, gióp ta d¹y b¶o h¾n ")
	Msg2Player("H·y ®Õn B¹ch V©n §éng 219/192, 212/201, 219/207 tiªu diÖt Tr­¬ng §Çu B­u !")
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
	Talk(2,"","<color=green>"..tennpc.."<color>: C?th?lÇn nµy ng­¬i ph¶i ®i <color=yellow>Phôc Ng­u S¬n T©y<color> 1 chuyÕn råi, ta ®ang cÇn t×m 1 mËt hµm quan träng ",
	"§¸nh b¹i <color=red>Thİch Kh¸ch Kim Quèc<color> 248/192, 269/183, 246/180, b¾t h¾n ph¶i giao mËt hµm ra")
	Msg2Player("§i Phôc Ng­u S¬n T©y ®¸nh b¹i Thİch Kh¸ch Kim Quèc 248/192, 269/183, 246/180")
	SetTask(103,18)
elseif GetTask(103) == 19 then
	Talk(1,"","<color=green>"..tennpc.."<color>: Kh?l¾m ®Ö t? h·y nhanh ch©n ®em mËt hµm ®Õn <color=yellow>Ph­îng T­êng<color> ®­a cho <color=red>Tiªu T­íng Quan 217/184")
	Msg2Player("§Õn Ph­îng T­êng 217/184 ®­a bøc mËt hµm cho Tiªu T­íng Qu©n ")
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
	Talk(1,"","<color=green>"..tennpc.."<color>: §Õn <color=yellow>Tİn T­íng T?Thµnh §« <color> gÆp <color=red>T?Chung §¹i S?<color>209/199, ta c?viÖc cÇn truyÒn ®¹t !")
	Msg2Player("NhËn nhiÖm v? §Õn Ph­îng T­êng gÆp T?Chung §¹i S?209/199")
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
	"H·y ®Õn <color=yellow>Giang T©n Th«n 443/382<color> gÆp Thµnh §¹i Qu©n d?hái th¨m tin tøc !")
	Msg2Player("NhiÖm v?m«n ph¸i: TiÕp nhËn nhiÖm v? ®Õn Giang T©n Th«n 443/382 gÆp Thµnh §¹i Qu©n !")
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
		AddMagic(385,1)
		AddMagic(384,1)
		AddMagic(329)
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