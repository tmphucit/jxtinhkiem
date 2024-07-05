function main()
SetTask(119,1) -- Trang thai dang hoa dang
SetFightState(0)

gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
ngay = tonumber(date("%d"))


if GetTask(120) ~= ngay then
SetTask(120,ngay)
SetTask(121,0)
end

tieptuc()
end

function tieptuc()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
ngay = tonumber(date("%d"))

if gio == 12 or gio == 18 or gio == 9 or gio == 15 or gio == 21 then
	if phut <= 5 then
		if GetTask(121) <=  100 then
		Say("<color=green>Hoa §¨ng: <color> B¹n ®· tr¶ lêi c©u hái thø: <color=red>"..GetTask(121).."<color> / 100 c©u.\nB¹n cã muèn tiÕp tôc kh«ng ?",2,
		"TiÕp tôc /tieptuccauhoi",
		"Tho¸t /no")
		else
			SetTask(119,1)
			SetFightState(1)
		Talk(1,"","<color=green>Hoa §¨ng<color> Giíi H¹n Hoa §¨ng <color=yellow>100<color> C©u")
		end
	else
	SetTask(119,1)
	SetFightState(1)
	Talk(1,"","<color=green>Hoa §¨ng<color> Thêi gian ®o¸n Hoa ®¨ng ®· hÕt !!!")
	end
else
	SetTask(119,1)
	SetFightState(1)
Talk(2,"","<color=green>Hoa §¨ng<color> Thêi gian ®o¸n Hoa §¨ng 9 giê, 12 giê, 15 giê, 18 giê, 21 giê ",
"Thêi gian mçi lÇn ®o¸n hoa ®¨ng lµ 5 phót. Tèi ®a 100 c©u 1 ngµy !")
end
end

function no()
SetFightState(1)
SetTask(119,0)
end

function tieptuccauhoi()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
ngay = tonumber(date("%d"))


thoigian = gio*60*60 + phut * 60 + giay



tgcl1 = 59-phut
tgcl2 = 60-giay
if gio <= 12 then
tgcl = 11 - gio
elseif gio <= 18 and gio > 12 then
tgcl = 17 - gio
elseif gio <= 24 and gio > 18 then
tgcl = 24-gio+11
end 
if gio == 12 or gio == 18 or gio == 9 or gio == 15 or gio == 21 then
	if phut <= 5 then
		SetTask(121,GetTask(121)+1)
		if GetTask(121) <= 100 then
			sl = GetCash()
			if GetCash() > tientru() then
				Pay(tientru())
				if GetCash() == (sl-tientru()) then
				main1()				
				else
				Talk(1,"","Hack ha em")
				end			
			else
			Talk(1,"","<color=green>Hoa §¨ng<color> B¹n kh«ng mang ®ñ <color=yellow>"..tientru().."<color> l­îng")
			end	
		else
		Talk(1,"","<color=green>Hoa §¨ng<color> Giíi h¹n Hoa §¨ng <color=yellow>100<color> c©u")
		end
	else
	Talk(1,"","<color=green>Hoa §¨ng<color> Thêi gian ®o¸n Hoa ®¨ng ®· hÕt !!!")
	end
else
Talk(2,"","<color=green>Hoa §¨ng<color> Thêi gian ®o¸n Hoa §¨ng 9 giê, 12 giê, 15 giê, 18 giê, 21 giê ",
"Thêi gian mçi lÇn ®o¸n hoa ®¨ng lµ 5 phót. Tèi ®a 100 c©u 1 ngµy !")
end
end

function tientru()
if GetLevel() < 10 then
return 50
elseif GetLevel() >= 10 and GetLevel() < 20 then
return 100
elseif GetLevel() >= 20 and GetLevel() < 30 then
return 200
elseif GetLevel() >= 30 and GetLevel() < 40 then
return 300
elseif GetLevel() >= 40 and GetLevel() < 50 then
return 500
elseif GetLevel() >= 50 and GetLevel() < 60 then
return 600
elseif GetLevel() >= 60 and GetLevel() < 70 then
return 700
elseif GetLevel() >= 70 and GetLevel() < 80 then
return 900
elseif GetLevel() >= 80 and GetLevel() < 90 then
return 1300
elseif GetLevel() >= 90 and GetLevel() < 100 then
return 1600
else
return 2000
end
end

function main1()
i = random(1,getn(CAUHOI))
a = random(1,4)
if a == 1 then
Say("<color=green>Hoa §¨ng<color>: <color=red>"..checkmau(CAUHOI[i][6]).."<color> "..CAUHOI[i][1].."",4,
"A. "..CAUHOI[i][2].."/dung",
"B. "..CAUHOI[i][3].."/sai",
"C. "..CAUHOI[i][4].."/sai",
"D. "..CAUHOI[i][5].."/sai")
elseif a == 2 then
Say("<color=green>Hoa §¨ng<color>: <color=red>"..checkmau(CAUHOI[i][6]).."<color> "..CAUHOI[i][1].."",4,
"A. "..CAUHOI[i][5].."/sai",
"B. "..CAUHOI[i][2].."/dung",
"C. "..CAUHOI[i][3].."/sai",
"D. "..CAUHOI[i][4].."/sai")
elseif a == 3 then
Say("<color=green>Hoa §¨ng<color>:<color=red> "..checkmau(CAUHOI[i][6]).."<color> "..CAUHOI[i][1].."",4,
"A. "..CAUHOI[i][4].."/sai",
"B. "..CAUHOI[i][5].."/sai",
"C. "..CAUHOI[i][2].."/dung",
"D. "..CAUHOI[i][3].."/sai")
elseif a == 4 then
Say("<color=green>Hoa §¨ng<color>: <color=red>"..checkmau(CAUHOI[i][6]).." <color>"..CAUHOI[i][1].."",4,
"A. "..CAUHOI[i][3].."/sai",
"B. "..CAUHOI[i][4].."/sai",
"C. "..CAUHOI[i][5].."/sai",
"D. "..CAUHOI[i][2].."/dung")
end 
end


function checkmau(i)
if i == 1 then
return "[C©u hái DÔ]"
elseif i == 2 then
return "[C©u hái B×nh Th­êng]"
elseif i == 3 then
return "[C©u hái Khã]"
elseif i == 4 then
return "[C©u hái §Æc BiÖt]"
end
end

function chiacs()
if GetTask(139) == 0 then
return 1
elseif GetTask(139) == 1 then
return 3
elseif GetTask(139) == 2 then
return 9
end
end
function tinhexp()
if GetLevel() < 10 then
return 50
elseif GetLevel() >= 10 and GetLevel() < 20 then
return 40
elseif GetLevel() >= 20 and GetLevel() < 40 then
return 30
elseif GetLevel() >= 40 and GetLevel() < 60 then
return 20
elseif GetLevel() >= 60 and GetLevel() < 70 then
return 10
elseif GetLevel() >= 70 and GetLevel() < 80 then
return 10
elseif GetLevel() >= 80 and GetLevel() < 90 then
return 9
elseif GetLevel() >= 90 and GetLevel() < 100 then
return 6
elseif GetLevel() >= 100 and GetLevel() < 120 then
return 3
elseif GetLevel() >= 120 then
return 1

end
end

function tinhtien()
if GetLevel() < 10 then
return 100
elseif GetLevel() >= 10 and GetLevel() < 20 then
return 200
elseif GetLevel() >= 20 and GetLevel() < 30 then
return 400
elseif GetLevel() >= 30 and GetLevel() < 40 then
return 600
elseif GetLevel() >= 40 and GetLevel() < 50 then
return 1000
elseif GetLevel() >= 50 and GetLevel() < 60 then
return 1200
elseif GetLevel() >= 60 and GetLevel() < 70 then
return 1400
elseif GetLevel() >= 70 and GetLevel() < 80 then
return 1800
elseif GetLevel() >= 80 and GetLevel() < 90 then
return 2000
elseif GetLevel() >= 90 and GetLevel() < 100 then
return 2200
else
return 2400
end
end

function dung()
if GetLevel() >= 80 then
s = random(1,1000)
if s < 500 then
	AddItem(1,2,0,5,0,0,0)
	Msg2Player("C©u hái thø "..GetTask(121)..": Chóc mõng. B¹n ®· tr¶ lêi chÝnh x¸c !!")
	Msg2Player("B¹n nhËn ®­îc 1 B×nh Ngò Hoa Ngäc Lé Hoµn")
elseif s >= 500 and s < 950 then
	tiennhandc = tinhtien()
	for xc=1,CAUHOI[i][6] do Earn(tiennhandc) end
	tienthem =  (CAUHOI[i][6]-1)*tiennhandc
	Msg2Player("C©u hái thø "..GetTask(121)..": Chóc mõng. B¹n ®· tr¶ lêi chÝnh x¸c !!")
	Msg2Player("B¹n nhËn ®­îc "..tiennhandc.." l­îng")
	Msg2Player(""..checkmau(CAUHOI[i][6]).." Ng©n l­îng nhËn thªm "..tienthem.." l­îng")
elseif s >= 950 and s < 980 then
	if GetLevel() < 120 then
	AddEventItem(173)
	Msg2Player("C©u hái thø "..GetTask(121)..": Chóc mõng. B¹n ®· tr¶ lêi chÝnh x¸c !!")
	Msg2Player("B¹n nhËn ®­îc 1 binh Phóc duyªn [TiÓu] ")
	else
	u = random(1,4)
	if u <= 3 then
	AddEventItem(173)
	Msg2Player("C©u hái thø "..GetTask(121)..": Chóc mõng. B¹n ®· tr¶ lêi chÝnh x¸c !!")
	Msg2Player("B¹n nhËn ®­îc 1 binh Phóc Duyªn [TiÓu] ")
	else
	AddEventItem(174)
	Msg2Player("Hoa §¨ng Chóc mõng. B¹n ®· tr¶ lêi chÝnh x¸c !!")
	Msg2Player("B¹n nhËn ®­îc 1 binh Phuc Duyen [Trung] ")
	end
	end
elseif s >= 980 and s < 995 then
	AddEventItem(44)
	Msg2Player("C©u hái thø "..GetTask(121)..": Chóc mõng. B¹n ®· tr¶ lêi chÝnh x¸c !!")
	Msg2Player("B¹n nhËn ®­îc 1 viªn HuyÒn Tinh")
elseif s == 998 then
	AddEventItem(2)
	Msg2Player("C©u hái thø "..GetTask(121)..": Chóc mõng. B¹n ®· tr¶ lêi chÝnh x¸c !!")
	Msg2Player("B¹n nhËn ®­îc 1 ThiÕt La H¸n")
else
	AddItem(1,2,0,5,0,0,0)
	Msg2Player("C©u hái thø "..GetTask(121)..": Chóc mõng. B¹n ®· tr¶ lêi chÝnh x¸c !!")
	Msg2Player("B¹n nhËn ®­îc 1 B×nh Ngò Hoa Ngäc Lé Hoµn")
end
else
s = random(1,1000)
if s < 500 then
	expnhandc = floor(tinhexp()*GetLevelExp()/1000)
	for xc=1,CAUHOI[i][6] do AddOwnExp(expnhandc) end
	expthem = (CAUHOI[i][6]-1)*expnhandc
	Msg2Player("C©u hái thø "..GetTask(121)..": Chóc mõng. B¹n ®· tr¶ lêi chÝnh x¸c !!")
	Msg2Player("B¹n nhËn ®­îc "..(floor(tinhexp()*GetLevelExp()/1000)).." kinh nghiÖm")
	Msg2Player(""..checkmau(CAUHOI[i][6]).." Kinh nghiÖm t¨ng thªm "..expthem.." ®iÓm")
elseif s >= 500 and s < 950 then
	tiennhandc = tinhtien()
	for xc=1,CAUHOI[i][6] do Earn(tiennhandc) end
	tienthem =  (CAUHOI[i][6]-1)*tiennhandc
	Msg2Player("C©u hái thø "..GetTask(121)..": Chóc mõng. B¹n ®· tr¶ lêi chÝnh x¸c !!")
	Msg2Player("B¹n nhËn ®­îc "..tiennhandc.." l­îng")
	Msg2Player(""..checkmau(CAUHOI[i][6]).." Ng©n l­îng nhËn thªm "..tienthem.." l­îng")
elseif s >= 950 and s < 980 then
	if GetLevel() < 120 then
	AddEventItem(173)
	Msg2Player("C©u hái thø "..GetTask(121)..": Chóc mõng. B¹n ®· tr¶ lêi chÝnh x¸c !!")
	Msg2Player("B¹n nhËn ®­îc 1 binh Phóc duyªn [TiÓu] ")
	else
	u = random(1,4)
	if u <= 3 then
	AddEventItem(173)
	Msg2Player("C©u hái thø "..GetTask(121)..": Chóc mõng. B¹n ®· tr¶ lêi chÝnh x¸c !!")
	Msg2Player("B¹n nhËn ®­îc 1 binh Phóc Duyªn [TiÓu] ")
	else
	AddEventItem(174)
	Msg2Player("Hoa §¨ng Chóc mõng. B¹n ®· tr¶ lêi chÝnh x¸c !!")
	Msg2Player("B¹n nhËn ®­îc 1 binh Phuc Duyen [Trung] ")
	end
	end
elseif s >= 980 and s < 995 then
	AddEventItem(44)
	Msg2Player("C©u hái thø "..GetTask(121)..": Chóc mõng. B¹n ®· tr¶ lêi chÝnh x¸c !!")
	Msg2Player("B¹n nhËn ®­îc 1 viªn HuyÒn Tinh")
elseif s == 998 then
	AddEventItem(2)
	Msg2Player("C©u hái thø "..GetTask(121)..": Chóc mõng. B¹n ®· tr¶ lêi chÝnh x¸c !!")
	Msg2Player("B¹n nhËn ®­îc 1 ThiÕt La H¸n")
else
	AddOwnExp(floor(tinhexp()*GetLevelExp()/100))
	Msg2Player("C©u hái thø "..GetTask(121)..": Chóc mõng. B¹n ®· tr¶ lêi chÝnh x¸c !!")
	Msg2Player("B¹n nhËn ®­îc "..(floor(tinhexp()*GetLevelExp()/100)).." kinh nghiÖm")
end
end
tieptuc()
end



function sai()
if CAUHOI[i][6] == 3 then
Pay(5000)
Msg2Player("C©u hái thø "..GetTask(121)..": B¹n bÞ mÊt 5000 l­îng do tr¶ lêi sai c©u hái khã")
elseif CAUHOI[i][6] == 4 then
Pay(10000)
Msg2Player("C©u hái thø "..GetTask(121)..": B¹n bÞ mÊt 1 v¹n l­îng do tr¶ lêi sai c©u hái ®Æc biÖt")
else
Msg2Player("C©u hái thø "..GetTask(121)..": Tr¶ lêi kh«ng chÝnh x¸c")
end 
tieptuc()
end

CAUHOI = {
{"Skill 9x néi c«ng C¸i Bang tªn g× ? ","Phi Long T¹i Thiªn ","§¶ CÈu TrËn ","Thiªn H¹ V« CÈu ","Tiªu Diªu C«ng ",1},
{"Skill 9x ngo¹i c«ng C¸i Bang tªn g×  ? ","Thiªn H¹ V« CÈu ","Phi Long T¹i Thiªn ","Ho¹t B¸t L­u Thñ ","Kh¸ng Long H÷u Hèi ",1},
{"Skill trÊn ph¸i C¸i Bang tªn g× ? ","Tóy §iÖp Cuång Vò ","Phi Long Tai Thien ","Hoa Diem Vi Di ","Hoat Bat Luu Thu ",1},
{"Skill 9x néi c«ng Nga My tªn g× ? ","Phong S­¬ng To¸i ¶nh ","Méng §iÖp ","BÊt TuyÖt BÊt DiÖt ","PhËt T©m Tõ H÷u ",1},
{"Skill 9x ngo¹i c«ng Nga My tªn g× ? ","Tam Nga Tª TuyÕt ","Th«i Song Väng NguyÖt ","BÊt TuyÖt BÊt DiÖt ","L­u Thñy ",1},
{"Skill trÊn ph¸i Nga My tªn g× ? ","PhËt Ph¸p V« Biªn ","L­u Thñy ","Phç §é Chóng Sinh ","Th«i Song Väng NguyÖn ",1},
{"Skill 9x ngo¹i c«ng Thóy Yªn tªn g× ? ","Bang Tung V« ¶nh ","TuyÖt ¶nh ","B¨ng Cèt TuyÕt T©m ","B¨ng T©m Tr¸i ¶nh ",1},
{"Skill trÊn ph¸i Thóy Yªn tªn g× ? ","B¨ng Cèt TuyÕt T©m ","TuyÖt ¶nh ","Bang Tung V« ¶nh ","Bang T©m Tr¸i ¶nh ",1},
{"Skill buff bïa 9x C«n L«n tªn g× ? ","Tïy TiÖn Tµ Cèt ","Thiªn Thanh §Þa Träc ","Thiªn TÒ TÇn L«i ","KÝ B¸n Phï ",1},
{"Skill t¨ng kh¸ng tÊt c¶ Thiªn V­¬ng tªn g× ? ","Kim Chung Tr¸o ","Thiªn V­¬ng Chiªn Y ","HuyÕt ChiÕn B¸t Ph­¬ng ","Thõa Long QuyÕt ",1},
{"Skill 9x Th­¬ng cña Thiªn v­¬ng tªn g× ? ","Truy Tinh Tróc NguyÖt ","HuyÕt ChiÕn BÊt Ph­¬ng ","Kim Chung Tr¸o ","Thõa Long QuyÕt ",1},
{"Skill buff 100% tróng ®éc Ngò §éc tªn g× ? ","Xuyªn T©m §éc ThÝch ","Ngò §«cc K× Kinh ","B¨ng Lam Huyªn Tinh ","Xuyªn Y Ph¸ Gi¸p ",1},
{"Skill nµo hç trî skill 9x Vâ §ang KhÝ ? ","V« Ng· V« KiÕm ","Tam Ho¶n Th¶o NguyÖt ","KiÕm Phi kinh Thiªn ","Nh©n KiÕm Hîp NhÊt ",1},
{"Skill 6x §ao cña ThiÕu L©m tªn g× ? ","Ma Ha V« L­¬ng ","Long Tr¶o Hæ Tr¶o ","Hoµnh T¶o Lôc Hîp ","S­ Tö Hèng ",1},
{"Skill kh¸ng tÊt ca ThiÕu l©m tªn g× ? ","DÞch C©n Kinh ","Nh­ Lai Thiªn §iÖp ","La H¸n TrËn ","BÊt §éng Minh V­¬ng ",1},
{"Skill trÊn phai Thiªn NhÉn tªn g× ? ","Thiªn Ma Gi¶i ThÓ ","Phi Hång V« TÝch ","BÝ T« Thanh Phong ","Ma DiÖm Th©t S¸t ",1},
{"Bao  nhiªu S¸t Thñ Gian míi ®æi ®­¬c LÖnh Bµi S¸t Thñ Tiªu ? ","10 c¸i ","5 c¸i ","15 c¸i ","3 c¸i ",3},
{"CÊp trang bÞ nµo hç trî nhau ®Ó kÝch thuéc tÝnh ? ","Th¾t l­ng - NhÉn d­íi ","Th¾t L­ng - NhÉn trªn ","Th¾t l­ng - D©y ChuyÒn ","Th¾t L­ng - Ngäc Béi ",3},
{"CÊp trang bÞ nµo hç trî nhau ®Ó kÝch thuéc tÝnh ? ","Trang phôc - D©y chuyÒn ","Trang phôc - Ngäc béi ","Trang phôc - NhÉn trªn ","Trang phôc - Nh©n d­íii ",3},
{"CÊp trang bÞ nµo hç trî nhau ®Ó kÝch thuéc tÝnh ? ","GiÇy - NhÉn trªn ","GiÇy - NhÉn d­íi ","GiÇy - Ngäc béi ","GiÇy - D©y chuyªn ",3},
{"CÊp trang bÞ nµo hç trî nhau ®Ó kÝch thuéc tÝnh ? ","Bao tay - Ngäc béi ","Bao tay - NhÉn trªn ","Bao tay - NhÉn d­íi ","Bao tay - D©y ChuyÒn ",3},
{"CÊp trang bÞ nµo hç trî nhau ®Ó kÝch thuéc tÝnh ? "," Nãn- Vó KhÝ ","Nãn - Bao tay ","Nãn - ¸o ","Nãn - Th¾t l­ng ",3},
{"PhÝm t¾t nµo bÆt nhanh Giao DÞch ? ","PhÝm O ","PhÝm P ","PhÝm K ","PhÝm L ",1},
{"Phim tat nao bat nhanh To Doi ? ","PhÝm P ","PhÝm T ","PhÝm K ","PhÝm L ",1},
{"Bao nhiªu S¸t Thñ Gian míi ®ëi ®­îc LÖnh Bµi V­ît ¶i ? ","5 c¸i ","10 c¸i ","8 c¸i ","15 c¸i ",2},
{"B¶n ®å Ba L¨ng HuyÖn cã thÓ ®i ®Õn ®©u ? ","Miªu LÜnh ","Ph­îng T­êng ","L©m An ","Chu Tiªn TrÊn ",2},
{"NPC b¸n thuèc trong Tèng Kim tªn g× ? ","Kim Qu©n Nhu ","Kim Qu¶n Qu©n ","Kim Qu©n ","Kim Nhu ",2},
{"Vò KhÝ kÝch d­îc thuéc tÝnh Èn cho trang bÞ nµo ? ","GiÇy ","Nãn ","¸o ","Th¾t L­ng ",2},
{"D©y chuyÒn kÝch ®­îc thuéc tÝnh Èn cho trang bi nµo ? ","Vò khÝ ","¸o ","Th¾t L­ng ","GiÇy ",2},
{"Vâ L©m cã bao nhiªu m«n ph¸i ? ","10 ph¸i ","11 ph¸i ","12 ph¸i ","8 ph¸i ",2},
{"Kú Tr©n C¸c kh«ng b¸n vËt phÉm nµo ? ","Thæ §Þa Phï ","ChiÕu d¹ ","Thñy Tinh ","ThiÕt La Han ",2},
{"§iÓm tiÒm n¨ng søc m¹nh kh«ng t¨ng g× ? ","Néi lùc ","Sinh khÝ ","Lùc tay ","Damage ",2},
{"PhÝm t¾t nµo bÊt Hç Trî Game ? ","PhÝm F1 ","PhÝm F2 ","PhÝm F3 ","PhÝm F4 ",1},
{"PhÝm t¾t nµo bËt Hµnh Trang ? ","PhÝm F4 ","PhÝm F3 ","PhÝm F5 ","PhÝm F2 ",1},
{"Phim t¾t nµo bËt H¶o H÷u ? ","PhÝm F6 ","PhÝm F3 ","PhÝm F4 ","PhÝm F5 ",1},
{"Phim t¾t nµo bÊt B¶ng Skill ? ","PhÝm F5 ","PhÝm F3 ","PhÝm F4 ","PhÝm F6 ",1},
{"NPC nhËn nhiÖm vò s¸t thñ tÑn g× ? ","NhiÕp ThÝ TrÇn ","H« Trî T©n Thñ ","§­êngng BÊt NhiÖm ","Xa phu ",1},
{"V­ît ¶i mét ngµy nh©n vËt ®i ®­îc mÊy lÇn ? ","1 lÇn ","2 lÇn ","3 lÇn ","4 lÇn ",1},

{"Ngùa nµo ch¹y nhanh nhÊt trong c¸c läai sau: ","ChiÕu D¹ ","¤ V©n §¹p TuyÕt ","§Ých L« ","TuyÖt ¶nh ",2},
{"Ngùa nµo trong d·y cã mµu n©u: ","§Ých L« ","ChiÕu D¹ ","¤ V©n §¹p TuyÕt ","TuyÖt ¶nh ",2},


{"Bao nhu Nhac Vuong Hon Thach doi duoc Nhac Vuong Kiem ? ","50 vien ","30 vien ","20 vien ","40 vien ",3},
{"Bao nhiªu ®iÓm tÝch lòy míi lªn ®­îc HiÖu óy ? ","1500 ","1000 ","200 ","500 ",3},
{"Bao nhiªu ®iÓm tÝch lòy míi lªn ®­îc Thèng LÜnh ? ","3000 ","1000 ","1500 ","2500 ",3},

{"Tham gia Tèng Kim t¹i NPC nµo ? ","Tèng Kim Mé Binh ","Tèng Kim Chiªu Binh ","Tèng Kim TuyÓn Binh ","Tèng Kim Chän Binh ",3},
{"Tªn NPC gia nhËp m«n ph¸i ThiÕu L©m ? ","ThiÕu L©m La H¸n ","ThiÕu L©m §¹t Ma ","ThiÕu L©m Chiªu Sinh ","ThiÕu L©m Tu TrÝ ",1},
{"Tªn NPC gia nhËp m«n ph¸i Thiªn V­¬ng ? ","Thiªn V­¬ng T­íng LÜnh ","Thiªn V­¬ng Chiªu Sinh ","Thiªn V­¬ng T­íng Qu©n ","§­êng ThiÕt T©m ",1},
{"Tªn NPC gia nhËp m«n ph¸i Vâ §ang ? ","Vâ §ang §¹o Nh©n ","Tr­¬ng Tam Phong ","Tr­¬ng ThiÕt Tam ","Vâ §ang Chiªu Sinh ",1},
{"Tªn NPC gia nhËp m«n ph¸i Nga My ? ","Nga My CÈm Y Ni ","Nga My Chiªu Sinh ","Nga My Y Ni ","Nga My Ni C« ",1},
{"Tªn NPC gia nhËp m«n ph¸i Thóy Yªn ? ","Thóy Yªn Hoa Sø ","Thóy Yªn Hoa N÷ ","Thóy Yªn Hoa Lan ","Thóy Yªn Chiªu Sinh ",1},
{"Tªn NPC gia nhËp m«n ph¸i C«n L«n ? ","C«n L«n Hé Ph¸p ","C«n L«n La H¸n ","C«n L«n Chiªu Sinh ","C«n L«n §¹o SÜ ",1},
{"Tªn NPC gia nhËp m«n ph¸i C¸i Bang ? ","§Ö Tö C¸i Bang ","C¸i Bang Chiªu Sinh ","KÎ ¡n Mµy  ","C¸i Bang Tr­ëng L·o ",1},

{"Ngò hµnh cã bao nhiªu hÖ? ","5 ","6 ","4 ","7 ",1},

{"§Ó ®æi mµu cÇn chän NPC nµo? ","Hç trî T©n Thñ ","NhiÕp ThÝ TrÇn ","Kú Tr©n C¸c ","Xa Phu ",1},


{"B¶ng ch÷ c¸i cña ViÖt Nam cã bao nhiªu chø c¸i? ","29 ","26 ","32 ","45 ",3},
{"TÝch cña ba sè tù nhiªn ®Çu tiªn lµ bao nhiªu? ","0 ","6 ","9 ","12 ",1},
{" ViÖt Nam ë mói giê thø mÊy ","7 ","6 ","8 ","10 ",2},
{"Mét n¨m cã nhiÒu nhÊt bao nhiªu ngµy Chñ NhËt ","53 ","52 ","51 ","54 ",3},
{"Mét ngµy cã bao nhiªu giê? ","24 ","12 ","26 ","29 ",1},
{"Khu Vùc §«ng Nam ¸ cã bao nhiªu quèc gia ","11 ","10 ","15 ","12 ",3},
{"Khi V­ît ¸i Nhãm ®­îc Pt Ýt nhÊt bao nhiªu ng­êi? ","6 ng­êi ","7 ng­êi ","8 ng­êi ","5 ng­êi ",2},
{"V­ît ¶i cã bao nhiªu ¶i ","18 ","15 ","16 ","17 ",2},
{"BÝ KÝp 9x c¸c ph¸i cã tÊt c¶ bao nhiªu cuèn? ","28 cuèn ","30 cuèn ","20 cuèn ","25 cuèn ",3},
{"PhÝm nµo t¾t më giao dÞch ? ","PhÝm O ","PhÝm P ","PhÝm R ","PhÝm V ",2},
{"Chu k× World Cup Bao nhiªu n¨m? ","4 n¨m ","5 n¨m ","3 n¨m ","6 n¨m ",2},
{"Quèc kh¸nh ViÖt Nam lµ ngµy nµo? ","2 th¸ng 9 ","19 th¸ng 5 ","15 th¸ng 9 ","9 th¸ng 2 ",2},
{"Quèc tÕ thiÕu nhi lµ ngµy nµo? ","1 th¸ng 6 ","1 th¸ng 5 ","9 th¸ng 1 ","12 th¸ng 12 ",2},
{"Mét n¨m cã bao nhiªu ngµy? ","365 ","366 ","367 ","360 ",2},
{"Idol ViÖt Nam N¨m 2011 lµ ai? ","Uyªn Linh ","Mai H­¬ng ","§¨ng Khoa ","Ph­¬ng Vy ",2},
{"§Ó nhËn nhiÖm vô s¸t thñ b¹n cÇn cã bao nhiªu tiÒn? ","5000 l­¬ng ","50000 l­¬ng ","1000 l­¬ng  ","100 l­¬ng ",2},
{"Trung häc gåm bao nhiªu líp? ","7 líp ","4 líp ","3 líp ","5 líp ",2},
{"CÊp TiÓu häc gåm bao nhiªu líp? ","5 líp ","4 líp ","3 líp ","7 líp ",2},
{"B¹n ®ang tham gia event g×? ","Hoa §¨ng ","Tèng Kim ","V­ît ¶i ","Trång C©y ",1},
{"Ngµy 8 th¸ng 3 lµ ngµy g×? ","Quèc TÕ Phô N÷ ","Quèc TÕ ThiÕu Nhi ","Quèc TÕ Lao §éng ","Phô N÷ ViÖt Nam ",1},
{"Mµu luyÖn c«ng lµ mµu g× ","Tr¾ng ","Cam ","Xanh ","§á ",1},
{"Nga My hÖ? ","Thñy ","Thæ ","Kim ","Méc ",1},
{"Mét mÐt khèi b»ng bao nhiªu lÝt? ","1000 lÝt ","100 lÝt ","10 lÝt ","10000 lÝt ",1},
{"§¸p ¸n nµo kh¸c hoµn toµn víi c¸c ®¸p ¸n cßn l¹i? ","Hoa hång ","Con chã ","Con hæ ","Con mÌo ",3},
{"World Cup 2014 ®­îc tæ chøc ë ®©u? ","Brazil ","Ph¸p ","Hµn Quèc ","Mü ",3},
{"Nói Ba §en thuéc tØnh nµo? ","T©y Ninh ","§ång Nai ", "L©m §ång ","Cao B»ng ",3},
{"Ai lµ ng­êi t×m ra ch©u Mü?  ","Columbo ","Napoleon ","Henry Co Dai ","Nicoladesi ",2},
{"TØnh nµo cã ®iÖn tÝch lín nhÊt ViÖt Nam? ","NghÖ An ","Hµ TØnh ","Ninh B×nh ","TP HCM  ",2},
{"Con vËt nµo to nhÊt thÕ giíi? ","C¸ voi xanh ","Voi B¶n §«n ","C¸ mËp tr¾ng ","GÊu B¾c Cùc ",2},
{"Lo¹i thó duy nhÊt ®Î trøng? ","Thó má vÞt ","C¸ Voi xanh ","Chim kªnh kªnh ","Khi ®Çu chã ",2},
{"B¶ng tuÇn hoµn hãa häc cã bao nhiªu nguyªn tè? ","109 ","123 ","190 ","132 ",2},
{"Hµ Néi cã bao nhiªu phè ph­êng ","36 ","42 ","37 ","63 ",2},
{"Tæng 3 gèc trong 1 Tam Gi¸c bao nhiªu ®é? ","180 ","120 ","270 ","90 ",2},
{"VÞ vua ph¸t hµnh tiÒn giÊy ®Çu tiªn cña ViÖt Nam ","Hå Quý Ly ","Lý C«ng UÈn ","Lª §¹i Hµnh ","Mai Thóc Loan ",3},
{"Thóy KiÒu Trong TruyÖn KiÒu cña NguyÔn Du mang hä g× ","V­¬ng ","TrÇn ","NguyÔn ","Mai ",3},
{"Quèc k× cña c¸c n­íc §«ng Nam ¸ cã mµu g× chung  ","§á ","Vµng ","Cam ","Tr¾ng ",2},
{"Fe lµ kÝ hiÖu cña nguyªn tè hãa häc nµo? ","S¾t ","§ång ","Nh«m ","Vµng ",2},
{"Loµi chim nµo cã thÓ bay lïi vÒ phÝa sau? ","Chim Ruåi ","Chim SÎ ","Chim C¸nh côt ","Chim Bå C©u ",2},
{"ViÖt Nam cã mÊy di sµn V¨n Hãa ThÕ Giíi? ","7 ","8 ","6 ","5 ",3},
{"Quèc gi¸o cña Irac lµ t«n gi¸o nµo ","Håi gi¸o ","PhËt Gi¸o ","Thiªn Chóa Gi¸o ","Tin lµnh ",3},
{"Ngµy truyÒn thèng cña häc sinh sinh viªn lµ ngµy nµo? ","9 th¸ng 1 ","1 th¸ng 6 ","16 th¸ng 1 ","1 th¸ng 9 ",2},
{"V¹n Lý Tr­êng Thµnh lµ di s¶n V¨n Hãa cña quèc gia nµo? ","Trung Quèc ","Nga ","ViÖt Nam ","Hång K«ng ",3},
{"ViÖt Nam cã bao nhiªu tØnh thµnh? ","64 ","54 ","45 ","65 ",2},
{"BiÓu t­îng seagames 22 lµ g×? ","Tr©u Vµng ","Nh©n S­ ","Th¸p §«i ","MÆt Trêi ",3},
{"Tõ viÕt t¾c cña chØ sè th«ng minh lµ g×? ","IQ ","EQ ","GDP ","HP ",2},
{"Quèc Kú cña Mü cã bao nhiªu ng«i sao? ","50 sao ","45 sao ","30 sao ","54 sao ",2},
{"N÷ hoµng ®Õ duy nhÊt cña Trung Quèc lµ ai? ","Vâ T¾c Thiªn ","D­¬ng Quý Phi ","Tõ Nghi Th¸i HËu ","Lý Chiªu Qu©n  ",2},
{"Thµnh phè §µ L¹t thuéc tØnh thµnh nµo? ","L©m §ång ","§µ N½ng ","An Giang ","Kom Tum ",2},
{"Thµnh phè ®­îc mÖnh danh lµ thµnh phè hoa ph­¬ng ®á? ","H¶i Phßng ","H¶i D­¬ng ","H­n Yªn ","Hµ Giang ",2},
{"VIP lµ tõ viÕt t¾c cña tõ nµo? ","Very Important Person ","Very Improve People ","Value In Public ","mét tõ kh¸c ",4},
{"Bµi h¸t PHA L£ TÝM do ca sÜ nµo thÓ hiÖn? ","Cao Th¸i S¬n ","Nam C­êng ","V©n Quang Long ","Nguyªn Vò ",2},
{"B¸c Hå quª ë ®©u? ","NghÖ An ","Thanh Hãa ","Quang Ng·i ","Héi An ",2},
{"Th»ng Bêm ®· ®æi Qu¹t Mo lÊy c¸i g×? ","N¾m X«i ","3 bß 9 tr©u ","BÌ gç lim ","Chim ®åi måi ",2},

{"§Ó tÈy ®iÓm tiÒm n¨ng cÇn cã g×? ","6 viªn Tinh Hång Bao Th¹ch ","6 viªn huyÒn tinh 1 ","3 thñy tinh kh¸c mµu ","3 cuèn tÈy tñy kinh ",2},
{"Item g× ®Ó x2 luyÖn skill? ","N÷ nhi hång ","Tiªn th¶o l« ","Lam thñy tinh ","Thæ ®Þa phï ",2},
{"Bé An Bang gåm bao nhiªu mãn? ","4 ","5 ","6 ","7 ",2},
{"Item nh©n ®«i kinh nghiªm tªn g×? ","Tiªn th¶o lé ","HuyÒn tinh cÊp 10 ","N÷ nhi hång ","Thñy tinh ",2},
{"Lo¹i ngùa cã kh¸ng tÊt c¶ 10 tªn g×? ","Phiªn Vò ","ChiÕu D¹ ","B«n Tiªu ","Phi V©n ",2},
{"BÝ kÝp 12x cña D­¬ng M«n tªn g×? ","Mª ¶nh Tung ","XuÊt ø BÊt NhiÔm ","BÕ NguyÖt PhÊt TrÇn ","§¶o H­ Thiªn ",2},
{"BÝ kÝp 12x cña Nga My tªn g×? ","BÕ NguyÖt PhÊt TrÇn ","Mª ¶nh Tung ","XuÊt ø BÊt NhiÔm ","§¶o H­ Thiªn ",2},
{"BÝ kÝp 12x cña Vâ §ang tªn g×? ","XuÊt ø BÊt NhiÔm ","Mª ¶nh Tung ","BÕ NguyÖt PhÊt TrÇn ","§¶o H­  Thiªn ",2},
{"BÝ kÝp 12x cña Thiªn V­¬ng tªn g× ","§¶o H­ Thiªn ","XuÊt ø BÊt NhiÔm ","Mª ¶nh Tung ","BÕ NguyÖt PhÊt TrÇn ",2},
{"BÝ kÝp 12x cña ThiÕu L©m tªn g×? ","§¹i Thõa Nh­ Lai Chó ","§¶o H­ Thiªn ","XuÊt ø BÊt NhiÔm ","Mª ¶nh Tung ",2},
{"BÝ kÝp 12x cña Ngò §éc tªn g×? ","HÊp Tinh YÓm ","XuÊt ø BÊt NhiÔm ","Ngù TuyÕt Èn ","Mª Hån ¶nh ",2},
{"BÝ kÝp 12x cña Thóy Yªn tªn g×? ","Ngù TuyÕt Èn ","§¹i Thõa Nh­ Lai Chó ","§¶o H­ Thiªn ","XuÊt ø BÊt NhiÔm ",2},
{"BÝ kÝp 12x cña C¸i Bang tªn g×? ","Hçn Thiªn khÝ C«ng ","§¹i Thõa Nh­ Lai Chó ","§¶o H­ Thiªn ","HÊp Tinh YÓm ",2},
{"BÝ kÝp 12x cña Thiªn NhÉn  tªn g×? ","Ma ¢m PhÖ Ph¸ch ","Hçn Thiªn khÝ C«ng ","§¹i Thõa Nh­ Lai Chó ","§¶o H­ Thiªn ",2},
{"BÝ kÝp 12x cña C«n L«n  tªn g×? ","L­¬ng Nghi Ch©n KhÝ  ","Hçn Thiªn khÝ C«ng ","§¹i Thõa Nh­ Lai Chó  ","§¶o H­ Thiªn ",2},

{"Tæng Gi¸m ®èc C«ng ty Vinagame lµ Ai? - TÝnh ®Õn 2011 ","Lª Hång Minh ","LÒ Hoµng Minh ","Lª Ngäc Minh ","Lª Quang Minh ",4},
{"Trang bÞ Nhu T×nh C©n Quèc NghÖ Th­êng cã Kh¸ng ®éc kho¶ng bao nhiªu? - Theo TKH ","15 - 25 ","15 - 20 ","20 - 25 ","20 - 30 ",4},
{"Ch÷ viÕt t¾t B Trong Ng«n ng÷ lËp tr×nh lµ g× ?  ","Basic ","Visual C++ ","Boland C ","Booleen ",4},
{"§iÓm ®Ó lªn ®­îc §¹i T­íng trong Tèng Kim lµ bao nhiªu?  ","10000 ®iÓm ","5000 ®iÓm ","3000 ®iÓm ","8000 ®iÓm ",2},
{"§Ó chuyÓn sinh b¹n cÇn cã vËt phÇm g× ","Tr­êng sinh ®an ","ChuyÓn sinh ®an ","Phóc duyªn ®¹i ","Tinh hång b¶o th¹ch ",2},
{"Mét ngµy cã thÓ s¨n ®­îc bao nhiªu con boss s¸t thñ? ","8 ","9 ","18 ","16 ",2},

{"Bé Thñy tinh gåm cã bao nhiªu viªn? ","3 viªn ","4 viªn ","5 viªn ","6 viªn ",3},
{"Bé Tinh hång b¶o th¹ch cã bao nhiªu viªn? ","6 viªn ","5 viªn ","4 viªn ","3 viªn ",1},

{"Lo¹i ®¸ ®­îc h×nh thµnh tõ x¸c ®éng vËt? ","§¸ v«i ","§¸ trÇm tÝch ","§¸ Magma ","§¸ Catket ",2},
{"Tªn HÖ thèng d·y nói lín nhÊt thÕ giíi? ","Himalaya ","Andes ","Tr­êng S¬n ","Apls ",3},
{"Con s«ng dµi thø 3 thÕ giíi? ","Mississippi ","Hoµng Hµ ","Tr­êng Giang ","Nil ",2},
{"Thµnh phè ®«ng d©n nhÊt §«ng Nam ¸? ","Jakarta ","Hå ChÝ Minh ","Bangkok ","Phn«m Pªnh ",1},
{"§ång tiÒn chung Euro chÝnh thøc l­u hµnh vµo n¨m nµo? ","2002 ","1998 ","2000 ","1980 ",3},
{"ThuËt ng÷ T«n Gi¸o cã nguån gèc tõ ®©u? ","Ph­¬ng T©y ","ViÖt Nam ","Trung Quèc ","TÊt c¶ ®Òu sai ",2},
{"Thñ ®« nµo l©u ®êi nhÊt §«ng Nam ¸? ","Hµ Néi ","Bangkok ","Viªng Ch¨n ","Phn«m Pªnh ",2},
{"N­íc nµo cã nÒn kinh tÕ lín nhÊt Ch©u ¢u? ","§øc ","Anh ","Ph¸p ","Thôy Sü ",1},
{"Thôy §iÓn næi tiÕng vÒ thÓ lo¹i nh¹c nµo? ","Nh¹c Pop ","Nh¹c Dance ","Nh¹c Jazz ","Cæ ®iÓn ",3},
{"N­íc tiªu thô m× ¨n liÒn nhiÒu nhÊt thÕ giíi? ","Trung Quèc ","NhËt B¶n ","Hµn Quèc ","ViÖt Nam ",1},
{"N­íc ®· ph¸t minh ra mãn m× ¨n liÒn? ","NhËt B¶n ","Trung Quèc ","§µi Loan ","Hy L¹p ",2},
{"TiÕng ViÖt lµ ng«n ng÷ phæ biÕn thø mÊy t¹i Mü? ","7 ","8 ","9 ","6 ",3},
{"VÞ vua Trung Hoa nµo cã tuæi thä cao nhÊt? ","Cµn Long ","Khang Hy ","TÇn Thñy Hoµng ","Vâ T¾c Thiªn ",2},
{"§µn BÇu cña ViÖt Nam xuÊt hiÖn vµo thêi gian nµo? ","ThÕ kØ thø 7 ","ThÕ kØ thø 5 ","ThÕ kÜ thø 8 ","ThÕ kØ thø 6 ",2},
{"Nho gi¸o cßn ®­îc gäi lµ g×? ","Khæng gi¸o ","PhËt gi¸o ","Minh gi¸o ","§¹o gi¸o ",2},
{"§iÓm thi ®Êu Sea Games ph¶i treo bao nhiªu l¸ cê? ","14 ","11 ","10 ","8 ",2},
{"Sea Games ®Çu tiªn ®­îc tæ chøc vµo n¨m nµo? ","1959 ","1955 ","1963 ","1967 ",3},
{"Sea Games 22 ®­îc tæ chøc t¹i ViÖt Nam cã bao nhiªu m«n thi ®Êu? ","32 ","28 ","25 ","35 ",2},
{"TruyÒn thuyÕn nµo thuéc thêi k× ¢u L¹c? ","An D­¬ng V­¬ng ","Th¸nh Giãng ","S¬n Tinh Thñy Tinh ","L¹c Long Qu©n vµ ¢u C¬ ",1},
{"T¸c phÈm ChÝ PhÌo cña Nam Cao ®­îc ®æi tªn mÊy lÇn? ","3 ","2 ","4 ","5 ",1},
{"Ng­êi ®­îc mÖnh danh lµ Bµ Chóa Th¬ N«m? ","Hå Xu©n H­¬ng ","§oµn ThÞ §iÓm ","Xu©n Quúnh ","NguyÔn ThÞ Minh Khai ",2},
{"C¬ së vËt chÊt chñ yÕu cña sù sèng? ","Pr«tªin vµ Axit Nuclªic ","Pr«tªin ","Carbon Hydrat ","Axit Nuclªic ",3},
{"Loµi V­în ng­êi nµo cã quan hÖ gÇn gñi víi con ng­êi nhÊt? ","Tinh Tinh ","V­în ","§­êi ¦¬i ","KhØ G«rila ",2},
{"X­¬ng nµo nhá nhÊt trong c¬ thÓ ng­êi ","X­¬ng tai trong ","X­¬ng côt ","X­¬ng sãng mòi ","X­¬ng vµnh tai ",3}, 
{"Gi¶i phãng miÒn Nam lµ ng­êi nµo? ","30 th¸ng 4 ","19 th¸ng 5 ","2 th¸ng 9 ","5 th¸ng 7 ",1},
{"Cét ®Ìn giao th«ng cã mÊy mµu? ","3 ","4 ","5 ","2 ",1},
{"Tªn d©n gian cña sao Kim lµ g×? ","Sao Mai vµ Sao H«m ","Sao Chøc N÷ ", "Sao B¾c §Èu ","Sao Khuª ",1},
{"HiÖn t­îng ®­îc t¹o ra do sù t¸n s¾c ¸nh s¸ng cña mÆt trêi qua nh÷ng giät m­a lµ g×? ","CÇu Vång ","Khóc x¹ ","HÊp thô ¸nh s¸ng ","Ph¸t quang ",3},
{"Quü ®¹o di chuyÓn cña c¸c hµnh tinh quanh mÆt trêi h×nh g×? ","Elip ","Trßn ","Th¼ng ","Parapol ",3},
{"Da gåm mÊy líp? ","3 líp ","2 líp ","4 líp ","5 líp ",3},
{"Khi bÞ báng b¹n sÏ lµm g× ®Çu tiªn? ","Ng©m n­íc l¹nh ","B«i mì Tr¨n ","B«i kem ®¸nh r¨ng ","Ng©m dÊm ",2},
{"Tr¹ng nguyªn cuèi cïng trong lÞch sö n­íc ViÖt Nam lµ ai? ","TrÞnh TuÖ ","Tr¹ng Quúnh ","NguyÔn §Æng T¹o ","TrÇn TÊt V¨n ",2},
{"PhËt Gi¸o du nhËp vµo VIÖt Nam vµo thêi gian nµo? ","ThÕ kØ thø 2 ","§Çu c«ng nguyªn ","ThÕ kØ thø 2 TCN ","ThÕ kØ thø 3 ",2},
{"Cã bao nhiªu vÞ thÇn trªn ®Ønh Olympus? ","12 ","10 ","11 ","8 ",2},
{"TriÒu ®¹i nhµ NguyÔn b¾t ®Çu tõ n¨m nµo? ","1802 ","1790 ","1845 ","1900 ",2},
{"N­íc nµo lµ quª h­¬ng cña «ng gi¸ tuyÕt? ","PhÇn Lan ","Ba Lan ","Anh ","§øc ",2},
{"Phë xuÊt hiÖn ®Çu tiªn ë ®©u? ","Nam §Þnh ","Hµ Néi ","Sµi Gßn ","Trung Quèc ",2},
{"ê Hµnh tinh nµo ko cã mÆt tr¨ng ","Kim tinh ","Méc tinh ","Háa tinh ","Thæ tinh ",3},
{"Hµnh tinh nµo ko cã bÇu khÝ quyÓn? ","Thñy tinh ","Háa tinh ","Kim tinh ","Méc tinh ",3},
{"Ch©u lôc nµo mµ cã c¸c n­íc hÇu nh­ trång lóa? ","Ch©u Phi ","Ch©u ¸  ","Ch©u Mü  ","Ch©u ¢u ",2},
{"HiÖn t­îng n­íc tõ trêi r¬i xuèng gäi lµ g×? ","M­a ","Giã ","Bèc h¬i ","TriÒu C­¬ng ",1},
{"Skill trÊn ph¸i cña C«n L«n lµ   ","S­¬ng Ng¹o C«n L«n  ","Cuång Phong S©u §iÖn  ","Tóy Tiªn T¸ Cèt  ","B¾c minh ®áa h¶i ",2},




{"Skill 9x ®ao cña C«n L«n tªn g×   ","Ng¹o tuyÕt tiªu phong  ","L«i ®éng cöu thiªn  ","S­¬ng ng¹o c«n l«n  ","Cuång phong s©u ®iÖn ",3},
{"Skill 9x cña néi c«ng cña c«n l«n   ","L«i ®éng cöu thiªn  ","L­ìng nghi ch©n khÝ  ","S­íng ng¹o c«n l«n  ","NhÊt khÝ tam thanh ",3},
{"Skill t¨ng tèc ®é ch¹y cña Nga Mi cã tªn lµ g×  ","L­u thñy  ","Méng diÖp  ","PhËt t©m tõ h÷  ","PhËt quang phæ chiÕu ",2},
{"Skill t¨ng tèc ®é ch¹y cña C«n L«n cã tªn lµ g×  ","Thanh phong phï  ","KÝ b¶n phï  ","B¾c Minh §¶o H¶i  ","KhÝ hµn ng¹o tuyÕt ",3},
{"Skill t¨ng tèc ®é ch¹y cña Vâ ®ang cã tªn lµ g×  ","ThÕ v©n tung  ","ThÊt tinh trËn  ","Täa väng v« ng·  ","Th¸i cùc thÇn c«ng ",2},
{"Skill trÊn ph¸i cña thiªn v­¬ng tªn lµ g×  ","Thiªn v­¬ng chiÕn ý  ","Kim chung tr¸o  ","Truy phong quyÕt  ","Truy tinh trôc huyÖt ",3},
{"Skill trÊn ph¸i cña thiÕu l©m tªn lµ g×  ","Nh­ lai thiÒn ®iÖp  ","dÞch ch©n kinh¸o  ","Ph¸ thiªn tr¶m  ","Truy tinh trôc huyÖt ",2},
{"Skill 9x thiÕu l©m ®ao ph¸p  ","V« t­íng tr¶m  ","Ph¸ thiªn tr¶m  ","§¹t Ma hé giang  ","Hoµnh t¶o thiªn qu©n ",3},
{"Skill hç trî cña thiÕu l©m quyÒn  ","Hµn long b¸t vò  ","Kim cang phôc ma  ","Ma ha v« l­îng  ","§¹t ma hé giang ",2},
{"Skill trÊn ph¸i cña §­êng m«n tªn lµ g×  ","T©m nh·n  ","¸m khÝ ®­êng m«n  ","Thiªn la ®Þa vâng  ","Truy t©m tiÔn ",3},
{"Skill nµo sau ®©y kh«ng hç trî cho §­êng m«n bÉy  ","¸m khÝ ®­êng m«n  ","§Þa diÖm háa  ","Xuyªn t©m thÝch  ","Hµn b¨ng thÝch ",3},
{"Skill trÊn ph¸i cña thiÕu l©m tªn lµ g×  ","Nh­ lai thiÒn ®iÖp  ","dÞch ch©n kinh¸o  ","Ph¸ thiªn tr¶m  ","Truy tinh trôc huyÖt ",2},
{"Skill 9x cña §­êng m«n phi ®ao  ","NhiÕp hån nguyÖt ¶nh  ","T¸n hoa tiªu  ","B·o vò lÖ hoa  ","Truy t©m tiÔn ",2},
{"Skill trÊn ph¸i cña Ngò ®éc tªn lµ g×  ","Ngò ®éc kú kinh  ","Xuyªn t©m ®éc thÝch  ","V« h×nh ®éc  ","§o¹n c©n hñ cèt ",4},
{"Skill 9x cña ngñ ®éc ch­ëng  ","¢m phong thùc cèt  ","§o¹n c©n hñ cèt  ","Ngò ®éc ch­ëng ph¸p  ","B¸ch ®éc xuyªn t©m ",3},
{"Skill 6x hç trî ngò ®éc ®ao  ","Chu cÊp thanh minh  ","Ngò ®éc ®ao ph¸p  ","HuyÕt ®ao ®éc s¸t  ","B¸ch ®éc xuyªn t©m ",3},
{"Skill 6x hç trî Nga mi ch­ëng  ","PhËt quang phæ chiÕu  ","BÊt diÖt bÊt tuyÖt  ","Th«i song väng nguyÖt  ","Nga mi ch­ëng ph¸p ",3},
{"Skill t¨ng kh¸ng tÊt c¶ cña Nga Mi  ","Phæ ®é chóng sinh  ","L­u thñy  ","Méng ®iÖp  ","Tõ hµng phæ ®é ",3},
{"TÇng 2 cña skill 9x Nga mi kiÕm tªn lµ g×  ","Ngäc tuyÕt tÈy trÇn  ","Tam nga tÒ tuyÕt  ","Phong s­¬ng tèi ¶nh  ","Phæ ®é chóng sinh ",3},
{"Skill 9x bïa cña thiªn nhÉn  ","NhiÕp hån lo¹n t©m  ","V©n long kÝch  ","Thiªn ma gi¶i thÓ  ","Ma ©m phÖ ph¸ch ",2},
{"Skill nµo sau d©y kh«ng ph¶i lµ bïa chó cña Thiªn nhÉn  ","Ma diÖm thÊt s¸t  ","¶o ¶nh phi hå  ","Phi hång v« tÝch  ","NhiÕp hån lo¹n t©m ",4},
{"Skill 6x nµo hç trî vâ kiÕm  ","Tam hoµnh thao nguyÖt  ","V« ng· v« kiÕm  ","Né l«i chØ  ","Vâ ®ang quyÒn ph¸p ",3},
{"Skill nµo t¨ng ®é chÝnh x¸c cña vâ ®ang  ","ThÊt tinh trËn  ","ThÕ v©n tung  ","Täa väng v« ng·  ","Th¸i cùc thÇn c«ng ",2},
{"Skill bïa t¨ng kh¸ng cña c«n l«n  ","thiªn thanh ®Þa träc  ","S­¬ng ng¹o c«n l«n  ","Tóy tiªn t¸ cètt  ","Thanh phong phï ",2},
{"Skill kh¸ng ph¶n ®ßn cña c«n l«n cã tªn lµ  ","HuyÒn thiªn v« cùc  ","Thiªn thanh ®Þa träc  ","Thanh phong phï  ","Mª tung ¶o ¶nh ",3},
{"TÇng thø 2 cña skill Nga Mi ch­ëng tªn lµ  ","Kim ®Ønh phËt quang  ","Phong s­¬ng tèi ¶nh  ","Tam nga tÒ tuyÕt  ","Ngäc tuyÕt tÈy trÇn ",3},
{"Skill bïa nµo cña c«n l«n lµm gi¶m tèc ®é di chuyÓn  ","KÝ b¶n phï  ","Thanh phong phï  ","S­¬ng ng¹o c«n l«n  ","Mª tung ¶o ¶nh ",3},
{"Skill 6x hç trî Nga mi ch­ëng  ","PhËt quang phæ chiÕu  ","BÊt diÖt bÊt tuyÖt  ","Th«i song väng nguyÖt  ","Nga mi ch­ëng ph¸p ",3},
{"Skill g©y cho¸ng cho ®èi ph­¬ng cña c«n l«n lµ  ","KhÝ tam phï  ","S­íng ng¹o c«n l«n  ","KÝ b¶n phï  ","Thanh phong phï ",3},
{"HÖ thñy mÆc trang bÞ hÖ g× sÏ tù kÝch ®­îc Èn 1 cña trang bÞ  ","Méc  ","Háa  ","Thæ  ","Thñy ",4},
{"Phßng thñ vËy lý chØ cã trªn trang bÞ hÖ g×  ","Háa  ","thñy  ","Thæ  ","Méc ",3},
{"Thêi gian lµm chËm lµ hiÖu øng cã trªn trang bÞ hÖ  ","Háa  ","Méc  ","Thñy  ","Thæ ",3},
{"Thêi gian cho¸ng cã trªn trang bÞ hÖ  ","Thñy  ","Háa  ","Thæ  ","Méc ",3},
{"Thêi gian tróng ®äc lµ hiÖu øng cã trªn trang bÞ hÖ  ","Thæ  ","Méc  ","Háa  ","Thñy ",2},

{"May m¾ chØ cã trªn trang bÞ nµo  ","D©y chuyÒn  ","¸o  ","Th¾t l­ng  ","Giµy ",3},
{"May m¾n lµ thuéc tÝnh chØ cã trªn trang bÞ hÖ  ","Méc  ","Thñy  ","Háa  ","Thæ ",1},
{"Bé §Þnh Quèc gåm bao nhiªu mèn  ","5  ","6  ","4  ","3 ",2},
{"HiÖu øng thêi gian phôc håi tèi ®a trang bÞ §Þnh Quèc lµ  ","50  ","49  ","47  ","40 ",2},
{"Cã tÊt c¶ bao nhiªu trang bÞ cã hiÖu øng may m¾c  ","4  ","5  ","3  ","2 ",2},
{"Gi¸ trÞ may m¾n tèi ®a cña 1 trang bÞ lµ  ","10%  ","40%  ","9%  ","30% ",1},
{"Mét ngµy cã thÓ lµm ®­îc tèi ®a bao nhiªu nhiÖm vô d· tÉu  ","40  ","50  ","30  ","20 ",3},
{"Trang bÞ th­êng nµo kh«ng ph©n biÖt nam vµ n÷  ","Th¾t l­ng  ","¸o  ","Nãn  ","Bao tay ",3},
{"HÖ nµo chØ cã nh©n vËt lµ n÷  ","Thñy  ","Háa  ","Thæ  ","Méc ",3},
{"HÖ nµo chØ cã nh©n vËt nam  ","Kim  ","Thñy  ","Háa  ","Thæ ",3},



{"Mét trang bÞ hÖ thñy kh«ng thÓ cã  ","kh¸ng l«iu  ","kh¸ng háa  ","thêi gian cho¸ng  ","cho¶ng hãa s¸t th­¬ng thµnh néi lùc ",1},

{"Mét ngµy cã bao nhiªm thêi ®iÓm cã thÓ ®¨ng kÝ v­ît ¶i  ","8  ","7  ","6  ","12 ",2},
{"Mçi trËn tèng kim kÐo dµi bao nhiªu phót  ","60  ","45  ","30  ","15 ",1},


{"Tr¶ nhiÖm vô boss s¸t thñ sÏ d­îc bao nhiªu ®iÓm danh väng  ","2  ","1  ","3  ","4 ",2},
{"Thêi gian xuÊt hiÖn boss ®¹i hoµng kim  ","21h00  ","9h00  ","20h30  ","20h00 ",3},

{"Giµy cã thÓ kÝch ®­îc thuéc tÝnh Èn cña  ","Ngäc béi  ","NhÉn trªn  ","Th¾t l­ng  ","¸o ",4},
{"Th¾t l­ng kÝch ®­îc thuéc tÝnh cña   ","¸o  ","Vò khÝ  ","Giµy  ","Ngäc béi ",3},

{"World cup lÇn ®Çu tiªn ®­îc tæ chøc ë ®©u  ","Uruguay  ","Brazil  ","Anh  ","§øc ",3},
{"Ban nh¹c ABBA gåm bao nhiªu thµnh viªn  ","4 ","3  ","2 ","5 ",2},
{"CÇu thñ uÊt s¾c nhÊt thÕ giíi n¨m 2004  ","Ronaldinho ","Ronaldo ","Beckkham ","Messi ",4},
{"§éi tuyÓn Brazil ®· bao nhiªu lÇn vµo chung kÕt World cup ","7  ","6 ","5  ","8 ",3},
{"§éi tuyÓn nµo v« ®Þch World cup nhiÒu nhÊt  ","Brazil ","T©y Ban Nha ","Ph¸p ","ý ",2},
{"§Êt n­íc cã b¶ng ch÷ c¸i gåm 76 ch÷ c¸i lµ  ","Campuchia  ","Lµo  ","Th¸i Lan  ","Myanma ",2},
{"TÜnh cùc b¾c cña n­íc ta lµ  ","Hµ Giang  ","B¾c Giang  ","L¹ng S¬n  ","Lµo Cai ",4},


{"Mét dÆm ( mile) b»ng bao nhiªu km  ","1,6 ","1 ","2 ","1,3 ",2},
{"Mét inch b»ng bao nhiªu cm  ","2,54 ","2 ","3 ","1 ",1},
{"Vitamin nµo tan ®­îc trong dÇu mì  ","A ","C ","B1 ","B6 ",3},
{"Trong 1 n¨m d­¬ng lÞch cã bao nhiªu th¸ng cã 30 ngµy  ","4  ","5  ","6  ","7 ",2},


{"HiÖn t­îng MÆt Tr¨ng n»m gi÷a MÆt Trêi vµ Tr¸i §Êt gäi lµ  ","NhËt thùc  ","NguyÖt thùc  ","X©m thùc  ","TÊt c¶ ®Òu sai ",3},



{"§¹i La lµ tªn cò cña  ","Hµ Néi  ","Ninh B×nh  ","Phó Thä  ","TÊt c¶ ®Òu sai ",3},

{"Phè cæ Héi An ®­îc x©y dùng tõ thÕ kÜ  ","16  ","17  ","14  ","15 ",4},
{"VÜ TuyÕt 17 ch¹y qua ®Þa phËn tÜnh nµo  ","Qu¶ng TrÞ ","Qu¶ng B×nh ","Qu¶ng Nam ","Qu¶ng Ng·i ",3},

{"N­íc nµo nhá nhÊt thÕ giíi  ","Vantican  ","Somalia  ","Monaco  ","TÊt c¶ ®Òu sai ",4},
{"Vua nµo ban chiÕu dêi ®« tõ Hoa L­ vÒ Th¨ng Long  ","Lý C«ng UÈn  ","Hå Quý Ly  ","Lª Lîi  ","NguyÔn HuÖ ",4},


{"Liªn HiÖp Quèc ®­îc thµnh lËp vµo n¨m nµo  ","1945  ","1955  ","1950  ","1960 ",2},
{"Tæng s¶n phÈm quèc néi ®­îc ký hiÖu lµ  ","GDP  ","GNP  ","BTO  ","ODA ",2},
{"ChiÕn tranh thÕ giíi lÇn thø 2 kÕt thóc vµo n¨m nµo  ","1945  ","1944  ","1946  ","1947 ",3},
{"Hµnh tinh nµo gÇn víi MÆt Trêi nhÊt  ","Thñy tinh  ","Kim Tinh  ","Méc Tinh  ","Háa Tinh ",2},



{"Hoa hoonhf lµ quèc hoa cña n­íc nµo  ","Bungari  ","Hungary  ","PhÇn Lan  ","TÊt c¶ ®Òu sai ",3},

{"N¨m nµo kh«ng ph¶i lµ n¨m nhuËn  ","1994  ","2000  ","1980  ","2012 ",2},
{"Cã bao nhiªu quèc gia ë §«ng Nam ¸ hiÖn nay cßn vua trÞ v×  ","3  ","4  ","2  ","1 ",3},
{"Quèc hiÖu n­íc ta d­íi thêi An D­¬ng V­¬ng lµ  ","¢u L¹c  ","L¹c ViÖt  ","§¹i ViÖt  ","TÊt c¶ ®Òu sai ",3},
{"Thµnh phè ®­îc gäi lµ kinh ®o cña ¸nh s¸ng  ","Paris  ","Milan  ","London  ","Berlin ",2},

{"N¬i hÑp nhÊt n­íc ta thuéc tØnh nµo  ","Qu¶ng B×nh  ","Qu¶ng TrÞ  ","NghÖ An  ","Qu¶ng Nam ",3},
{"¤ CÊp lµ tªn gäi cña thµnh phè nµo thêi ph¸p  ","Vòng Tµu  ","MÜ Tho  ","CÇn Th¬  ","Biªn Hßa ",3},
{"Tæng bÝ th­ ®Çu tiªn cña §¶ng céng s¶n ViÖt Nam  ","TrÇn Phó  ","NguyÔn V¨n Cõ  ","Hå ChÝ Minh  ","TÊt c¶ ®Òu sai ",2},
{"§µn nguyÖt gåm cã mÊy d©y  ","2  ","3  ","1  ","5 ",3},
{"M«n bãng rç xuÊt xø tõ n­íc nµo  ","MÜ  ","Anh  ","Brazil  ","TÊt c¶ ®Òu sai ",4},

{"ë Ph­¬ng T©y ng­êi ta kiªn kþ sè nµo nhÊt  ","13  ","3  ","7  ","9 ",2},

{"Trong bÇu khÝ quyÓn cña Tr¸i §Êt khÝ g× chiÕm tû lÖ nhiÒu nhÊt  ","Nito  ","Oxi  ","CO2  ","TÊt c¶ ®Òu sai ",2},
{"H·y nãi theo c¸ch cña b¹n lµ khÈu hiÖu cña  ","Viettel  ","Mobi  ","Vian  ","G-mobile ",1},
{"§Ønh nói cao nhÊt MiÒn Nam n­íc ta lµ  ","Bµ §en  ","Phan-xi-bang  ","Lang-Bi-Ang  ","TÊt c¶ ®Òu sai ",2},
{"TØnh nµo cña n­íc ta cã biªn giíi víi Lµo vµ Campuchia  ","Kontum  ","Lµo Cai  ","Long An  ","An Giang ",3},
{"Ch©u lôc nµo ®­îc ph¸t hiÖn muén nhÊt  ","Ch©u Nam Cùc  ","Ch©u Mü  ","Ch©y óc  ","TÊt c¶ ®Òu sai ",3},
{"HiÖn nay hÖ MÆt Trêi cã bao nhiªu hµnh tinh  ","8  ","9  ","10  ","7 ",2},
{"V­ên Quèc Gia C¸t Tiªn n»m trªn ®Þa bµn mÊy tÜnh  ","4  ","3  ","2  ","1 ",3},
{"V­ên quèc gia C¸t Bµ thuéc tÜnh nßa   ","H¶i Phßng  ","§ång Nai  ","Hµ TÜnh  ","TÊt c¶ ®Òu sai ",3},
{"Ng· ba §ång Léc thuéc tÜnh nµo  ","Hµ TÜnh  ","§ång Nai  ","Qu¶ng TrÞ  ","Thõa-Thiªn HuÕ ",3},
{"ViÖt Nam tham dù Olympic ®Çu tiªn vµo n¨m nµo  ","1980  ","1977  ","1985  ","1990 ",4},
{"VÞ chóa TrÞnh cuèi cïng cña n­íc ta  ","TrÞnh Bång  ","TrÞnh TuÖ  ","TrÞnh KiÓm  ","TÊt c¶ ®Òu sai ",3},
{"§Þa danh R¹ch GÇm-Xoµi Mót thuéc tØnh nµo  ","TiÒn Giang  ","Long An  ","BÕn Tre  ","An Giang ",4},
{"Nhµ m¸y läc dÇu ®Çu tiªn Dung QuÊt thuéc tÜnh nµo  ","Qu¶ng Nam  ","Qu¶ng TrÞ  ","Qu¶ng B×nh  ","TÊt c¶ ®Òu sai ",3},
{"Kim lo¹i ®Çu tiªn mµ con ng­êi mµ luyÖn ®­îc  ","§ång  ","S¾t  ","Ch×  ","KÏm ",3},
{"H×nh chãp tø gi¸c cã bao nhiªu c¹nh  ","8  ","4  ","7  ","10i ",3},
{"Karaoke cã nguån gèc tõ n­íc nµo  ","NhËt B¶n  ","Anh  ","Thôy §iÓn  ","TÊt c¶ ®Òu sai ",4},
{"TØnh nhá nhÊt cña n­íc ta lµ  ","B¾c Ninh  ","NghÖ An  ","Hµ TÜnh  ","§ång Nai ",3},
{"L¨ng chñ tÞch Hå ChÝ Minh ®­îc x©y dùng vµo n¨m nµo  ","1973  ","1975  ","1972  ","TÊt c¶ ®Òu sai ",2},
{"ViÖ Nam lµ thµnh viªn thø bao nhiªu cña WTO  ","150  ","140  ","160  ","155 ",3},
{"N­íc ta hiÖn nay cã bao nhiªu thµnh phè trùc thuéc Trung ¦¬ng  ","5  ","4  ","6  ","7 ",3},
{"S«ng Mª C«ng ch¶y vµo n­íc ta ®Çu tiªn qua tØnh nµo  ","TiÒn Giang  ","Long An  ","BÕn Tre  ","HËu Giang ",2},
{"Cùc ®«ng cña n­íc ta thuéc tØnh nµo  ","Kh¸nh Hßa  ","Lµo Cai  ","Hµ Giang  ","Cµ Mau ",3},
{"N­íc ta cã bao nhiªu b¶n tuyªn ng«n ®éc lËp  ","3  ","2  ","1  ","4 ",2},
{"Tªn khai sinh thuë nhá cña B¸c Hå  ","NguyÔn Sinh Cung  ","NguyÔn ¸i Quèc  ","Hå ChÝ Minh  ","TÊt c¶ ®Òu sai ",3},
{"Kim lo¹i duy nhÊt thuéc thÓ láng  ","Thñy Ng©n  ","B¹c  ","Ch×  ","Vµng ",1},
{"Casino lµ ®Ó chØ n¬i nµo  ","Sßng b¹c  ","kh¸ch s¹n  ","khu nghÜ d­ìng  ","TÊt c¶ ®Òu sai ",1},
{"Con ®­êng t¬ lôa b¾t nguån tõ Trung Quèc vµ kÕt thóc ë  ","ý  ","Ên §ä  ","thæ NhÜ K×  ","Ai CËp ",3},
{"Gi¶ nobel to¸n häc n¨m 2010 thuéc vÒ quèc gia nµo  ","Kh«ng cã n­íc nµo c¶  ","MÜ  ","ViÖt Nam  ","Ph¸p ",4},
{"M«n häc nµo kh«ng cã thi trong k× thi Tèt nghiÖp n¨m 2013  ","VËt Lý  ","§Þa lý  ","Hãa häc  ","To¸n ",3},
{"NghÜ lÔ giæ tæ Hïng V­¬ng 10 th¸ng 3 ¸p dông tõ n¨m nµo  ","2007  ","2010  ","2009  ","2008 ",4},
{"CÇu thñ ®¹t qu¶ bãng vµng thÕ giíi n¨m 2008  ","C.Ronaldo  ","Messi  ","Ronaldinho  ","TÊt c¶ ®Òu sai ",4},
{"V¨n MiÕu ®­îc x©y dùng vµo thêi nµo  ","Nhµ Lý  ","Nhµ TrÇn  ","Nhµ Lª  ","Nhµ HËu Lª ",3},
{"C¸c nguyªn tè cïng ®ång vÞ gäi lµ  ","§ång vÞ  ","cïng khèi l­îng  ","Cïng cÊu h×nh electron  ","TÊt c¶ ®Òu sai ",2},
{"ViÖt Nam cã tÊt c¶ bao nhiªu d©n téc  ","54  ","55  ","64  ","65 ",2},
{"Cùc T©y thuéc tÜnh nµo cña n­íc ta hiÖn nay  ","§iÖn Biªn  ","Lµo Cai  ","Hµ Giang  ","Kh¸nh Hßa ",3},
{"§Êt n­íc ®­îc mÖnh danh lµ §Êt n­íc V¹n chïa  ","Myanma  ","Campuchia  ","Lµo  ","Th¸i Lan ",3},
{"Trô së cña Liªn HiÖp Quèc ®Æt ë ®©u  ","New York  ","London  ","Washinton  ","Paris ",3},
{"Mét thïng dÇu t­¬ng ®­¬ng bao nhiªu lÝt  ","159  ","100  ","150  ","200 ",4},
{"Tr­íc khi dêi ®« vÒ Th¨ng Long th× kinh ®« cò cña n­íc ta ë ®©u  ","Hoa L­  ","Ninh B×nh  ","Phó Thä  ","TÊt c¶ ®Òu sai ",3},
{"Sapa thuéc tØnh nµo n­íc ta hiÖn nay  ","Lµo Cai  ","L¹ng S¬n  ","HµGiang  ","B¾c Giang ",3},
{"Gi¶i th­ëng Nobel ®­îc trao tÆng ë n­íc nµo  ","Thôy §iÓn  ","Thôy SÜ  ","MÜ  ","PhÇn Lan ",2},
{"Sè cÆp nhiÔm s¾t thÓ cña con ng­êi  ","23  ","21  ","20ä  ","22 ",2},
{"Mét nhiÖm k× quèc héi n­íc ta kÐo dµi mÊy n¨m  ","5  ","4  ","6  ","10 ",3},
{"§iÖu nh¶y næi tiÕng xuÊt xø tõ Achentina  ","Tango  ","Samba  ","Chachacha  ","TÊt c¶ ®Òu sai ",3},
{"Thùc d©n Ph¸p tÊn c«ng n­íc ta ®Çu tiªn vµo n¨m nµo  ","1858  ","1856  ","1900  ","1902 ",3},
{"Trong c¬ thÓ con ng­êi,x­¬ng nµo dµi nhÊt  ","X­¬ng ®ïi  ","X­¬ng tay  ","X­¬ng s­ên  ","TÊt c¶ ®Òu sai ",4},
{"NghÖ thuËt xÕp giÊy truyÒn thèng cña NhËt B¶n  ","Origami  ","Bonsai  ","Tanka  ","Ikebana ",1},

{"Thµnh phè ®«ng d©n nhÊt n­¬c ta hiÖn nay  ","Hå ChÝ Minh  ","Hµ Néi  ","Dong Nai  ","Vòng Tµu ",1},
{"tØnh nµo sau ®©y kh«ng gi¸p víi thµnh phè Hå ChÝ Minh  ","L©m §ång  ","TiÒn Giang  ","Long An  ","§ång Nai ",1},
{"TuyÕt ®­êng nµo dµi nhÊt n­íc ta  ","Quèc lé 1A  ","§­êng Hå ChÝ Minh  ","Quèc lé 50  ","Quèc lé 51 ",1},
{"Lôc  ®Þa giµ lµ ®Ó ¸m chØ ch©u lôc nµo  ","Ch©u ¢u  ","Ch©u ¸  ","Ch©u Mü  ","Ch©u Phi ",1},
{"Khu du lÞch §¹i Nam thuéc tÜnh nµo  ","B×nh D­¬ng  ","Hå ChÝ Minh  ","Vòng Tµu  ","Ikebana ",1},
{"vÞnh H¹ Long thuéc tØnh nµo ","Qu¶ng Ninh ","H¶i Phßng ","Qu¶ng Nam ","L¹ng S¬n ",1},
{"Hµnh tinh gÇn Tr¸i §Êt nhÊt?  ","Sao Kim ","Sao thñy ","Sao háa ","Sao thæ  ",2},

{"Tranh §«ng Hå lµ s¶n phÈm thuéc tÜnh nµo ","B¾c Ninh ","Qu¶ng Ninh ","Hµ Néi ","Qu¶ng B×nh ",1},
{"Th¸nh ®Þa Mü sown thuéc tØnh nµo ","Qu¶ng Nam ","Qu¶ng B×nh ","Qu¶ng TrÞ ","Qu¶ng NgÜa ",2},
{"QuÇn thÓ di tÝch HuÕ ®­îc c«ng nhËn lµ di s¶n v¨n hãa thÕ giíi vµo n¨m nµo ","1993 ","1994 ","1995t ","1996 ",3},
{"Tªn Con S«ng dµi nhÊt Ch©u ¸ ","D­¬ng Tö ","S«ng Mª C«ng ","S«ng Hång ","S«ng §ång Nai ",2},
{"VËn tèc ¸nh s¸ng trong kh«ng khÝ lµ ","300000kms ","300000kmh ","300000ms ","30000kms ",1},
{"Trang tõ ®iÓn b¸ch khoa më lín nhÊt trªn m¹ng lµ ","wikipedia ","google ","yahoo ","facebook ",2},
{"Cöa khÈu tÞnh Biªn thuéc tØnh nµo cña ViÖt Nam  ","An Giang ","T©y Ninh ","Kiªn Giang ","TiÒn Giang ",2},
{"Nhµ m¸y thñy ®iÖn ®Çu tiªn cña n­íc ta ®­îc x©y dùng ë ®©u  ","§µ L¹t ","§ång Nai ","Lµo Cai ","B¾cGiang ",4},
{"Nhµ m¸y thñy ®iÖn lín nh¸t n­íc ta hiÖn nay ","S¬n La ","Hßa B×nh ","§ång Nai ","Th¸c Bµ ",2},
{"Thuèc næ ®­îc ph¸t minh bëi ","Nobel ","Anh-xtanh ","Edison ","TÊt c¶ ®Òu sai ",3},
{"Thñ t­íng NguyÔn TÊn Dòng quª ë ®©u ","Cµ Mau ","Kiªn Giang ","B¹c Liªu ","HËu Giang ",2},
{"Chøc n¨ng chÝnh cña trang google.com lµ g× ","t×m kiÕm ","nghe nh¹c ","ch¬i game ","xem phim ",1},
{"§¹i d­¬ng nµo gi¸p ch©u ¸,MÜ,Ch©u §¹i D­¬ng ","Th¸i Binhd D­¬ng ","§¹i T©y D­¬ng ","B¾c B¨ng D­¬ng ","TÊt c¶ ®Òu sai ",1},
{"Sè pi dïng tÝnh chu vi h×nh g× ","H×nh trßn ","H×nh chö nhËt ","H×nh vu«ng ","H×nh thang ",1},
{"Game show The Voice lµ ch­¬ng tr×nh vÒ ","Ca hÊt ","¶o thuËt ","Khiªu vò ","TÊt c¶ ®Òu ®óng ",1},
{"Game show nµo kh«ng ph¶i lµ chñ yÕu lµ ca h¸t ","Viet Nam got talen ","The voice ","ViÖt Nam Idol ","Bµi h¸t ViÖt ",1},
{"TRuyÒn h×nh c¸p nµo hiÖn nay ®éc quyÒn ph¸t sãng gi¶i Ngo¹i h¹ng anh ","K+ ","VTVC ","HTVC ","VTV ",1},
{"§éi v« ®Þch Champion league gÇn ®©y nhÊt lµ ","Bayer Munich ","Real Madrid ","Asenal ","M.U ",4},


{"Bitexco lµ tßa nhµ cao thø mÊy thÕ giíi ","110 ","100 ","80 ","900 ",1},
{"Tßa nhµ cao nhÊt thÕ giíi hiÖn nay ë ","Dubai ","MÜ ","Trung Quèc ","NhËt b¶n ",3},
{"Sè pi dïng tÝnh chu vi h×nh g× ","H×nh trßn ","H×nh chö nhËt ","H×nh vu«ng ","H×nh thang ",1},
{"Tßa nhµ cao nhÊt §«ng Nam ¸ thuéc quèc gia ","Malaysia ","singapore ","Th¸i Lan ","ViÖt Nam ",2},
{"HÇm thñ thiªm b¾t qua s«ng nµo ","S«ng Sµi Gßn ","S«ng §ång Nai ","S«ng ThÞ NghÌ ","TÊt c¶ ®Òu sai ",1},
{"Bé tr­ëng Bé Gi¸o dôc cña n­íc ta hiÖn nay ","Ph¹m Vò LuËn ","NguyÔn ThiÖn NhËn ","NguyÔn Sinh Hïng ","Bïi V¨n Ga ",2},
{"HiÖn nay luËt quy ®Þnh mét ngµy ch¬i game kh«ng qu¸ ","3h ","6h ","4h ","Ch¬i bao l©u còng ®­îc ",2},
{"ViÖt Nam idol lÇn ®Çu tiªn tæ chøc vµo n¨m nµo ","2007 ","2008 ","2006 ","2009 ",3},
{"Qu¸n qu©n ViÖ Nam got talen 2012 tr×nh bµy nghÑ thuËt g× ","Khiªu vò ","Ca h¸t ","¶o thuËt ","TÊt c¶ ®Òu sai ",2},

{"N­íc nµo sau ®©y kh«ng cã bê biÓn ","Lµo ","Campuchia ","Th¸i Lan ","ViÖt Nam ",2},
{"N­íc ta cã mÊy ng­êi ®­¬ch c«ng nhËn lµ danh nh©n v¨n hãa thÕ giíi ","3 ","2 ","4 ","1 ",2},
{"Ranh giíi tù nhiªn gi÷a Ch©u ¢u vµ Ch©u ¸ ","D·y nói Uran ","D·y Himalaya ","D·y Alps ","TÊt c¶ ®Òu sai ",3},
{"N­íc nµo cã diÖn tÝch lín nhÊt thÕ giíi ","Nga ","MÜ ","Trung Quèc ","Ên §é ",1},
{"N­íc nµo lµ nÒn kinh tÕ lín thø 2 thÕ giíi ","Trung Quèc ","NhËt B¶n ","MÜ ","§øc ",1},
{"N­íc ta lÊy tªn n­íc nh­ hiÖn nay vµo n¨m nµo ","1976 ","1975 ","1946 ","1945 ",3},
{"1 byte gåm bao nhiªu bit ","8 ","10 ","12 ","1024 ",2},
{"Theo d­¬ng lÞch 1 n¨m cã bao nhiªu th¸ng cã 28 ngµy ","12 th¸ng ","1 ","2 ","TÊt cae ®Òu sai ",4},
{"Lo¹i h×nh s©n khÊu c¶i l­¬ng cã nguån gèc tõ ","Nam bé ","B¾c Bé ","Trung bé ","T©y nguyªn ",1},
{"N¨m ph¸t minh ra §iÖn tho¹i di ®éng ","1973 ","1972 ","175 ","1974 ",3},
{"N­íc n»m trªn c¶ Ch©u ¸ vµ Ch©u ¢u ","Thæ NhÜ K× ","Ph¸p ","§øc ","TÊt c¶ ®Òu sai ",2},
{"§µn ghita th­êng cã mÊy d©y ","6 ","5 ","4 ","2 ",1},
{"CÇu Mü thu¹n b¾t qua s«ng g× ","S«ng TiÒn ","S«ng HËu ","S«ng vµm cá ","S«ng Sµi Gßn ",2},
{"Ai ®­îc mÖnh danh lµ nhµ th¬ míi nhÊt trong c¸c nhµ th¬ míi ","Xu©n DiÖu ","Hå Xu©n H­¬ng ","ChÕ Lan Viªn ","TÊt c¶ ®Òu sai ",3},
{"S«ng Mª C«ng b¾t nguån tõ ®©u ","Cao Nguyªn T©y T¹ng ","Th¸i Lan ","Lµo ","Campuchia ",2},
{"§µn ghita cã nguån gèc tõ quèc gia nµo ","T©y Ban Nha ","Anh ","§øc ","Ph¸p ",2},
{"§éi tuyÓn Anh ®· bao nhiªu lÇn v« ®Þch World cup ","1 ","2 ","3 ","0 ",1},
{"Cµn Long vµ Khang Hi cã quan hÖ nh­ thÕ nµo ","Cµn Long lµ ch¸u néi KHang hi ","Cµn Long lµ cha KHang Hi ","Khang Hi lµ ch¸u néi Cµn Long ","Kh«ng cã quan hÖ g× c¶ ",2},
{"Tr¸i §Êt quay theo chiÒu nµo ","Cïng chiÒu kim ®ång hå ","Ng­îc chiÒu kim ®ång hå ","Tïy vµo c¸c mïa trong n¨m ","TÊt c¶ ®Òu sai ",2},

{"S«ng §ång Nai b¾t nguån tõ ®©u ","Cao Nguyªn L©m Viªn ","§ång Nai ","T©y nguyªn ","TÊt cae ®Òu sai ",3},
{"S«ng Mª C«ng b¾t nguån tõ ®©u ","Cao Nguyªn T©y T¹ng ","Th¸i Lan ","Lµo ","Campuchia ",2},
{"Trøng cña loµi chim nµo lµ to nhÊt ","§µ ®Óu ","§¹i Bµng ","C¸nh côt ","Chim ruåi ",2},
{"§Ønh nói cao nhÊt n­íc ta thuéc tØnh nµo ","Lµo Cai ","L©m §ång ","L¹ng S¬n ","B¾c Giang ",3},

{"B¸c Hå ®· ®i tæng céng bao nhiªu quèc gia t×m ®­êng cøu n­íc ","48 ","24 ","50 ","12 ",4},
{"C©u l¹c bé ®­îc b×nh chän lµ CLB vÜ ®¹i nhÊt thÕ kÜ 20 ","Real Madrid ","M.U ","Bayer Munich ","Liverpool ",4},
{"Hµnh tinh nãng nhÊt hÖ MÆt Trêi ","Sao Kim ","Sao Háa ","Sao Méc ","Sao Thñy ",3},


{"N­íc ph¸t minh ra kü thuËt lµm giÊy ","Trung Quèc ","NhËt B¶n ","MÜ ","Ên §é ",2},
{"Tªn gäi ViÖt Nam cã tõ n¨m nµo ","1804 ","1802 ","1800 ","1806 ",3},
{"columbo ®· kh¸m ph¸ ra ch©u MÜ vµo n¨m ","1492 ","1942 ","1495 ","1496 ",2},
{"S«ng Mª C«ng b¾t nguån tõ ®©u ","Cao Nguyªn T©y T¹ng ","Th¸i Lan ","Lµo ","Campuchia ",2},
{"Trô së cña Asean ®Æt ë ®©u ","Indonesia ","Th¸i Lan ","Lµo ","Campuchia ",2},

{"Quèc gia cã nhiÒu ng­êi theo ®¹o Håi nhÊt ","Indonesia ","I ran ","I r¾c ","TÊt c¶ ®Òu sai ",2},
{"ChiÕc cèi xay giã ®Çu tiªn xuÊt hiÖn ë ","I Ran ","Hµ Lan ","PhÇn Lan ","TÊt c¶ ®Òu sai ",2},
{"§Êt n­íc ®øng thø 3 vÒ xuÊt khÈu lóa g¹o ","Indonesia ","Th¸i Lan ","ViÖt Nam ","Ên §é ",2},

{"§¶ng Céng s¶n ViÖt Nam ra §êi vµo n¨m nµo ","1930 ","1932 ","1931 ","TÊt c¶ ®Òu sai ",2},

{"§¬n vÞ th«ng tin nhá nhÊt lµ ","bit ","byte ","MB ","KB ",2},
{"§¸ hiÖn 1 cã tªn gäi lµ g× ","HuyÕn thiÕt nguyªn kho¸ng ","Chu sa nguyªn th¹ch ","Chu sa nguyªn kho¸ng ","Kh«ng biÕt ",1},
{"H¹n chÕ vò khÝ skill 9x ngo¹i c«ng Vâ §ang lµ g× ","Tr­êng kiÕm ","Tô tiÓn ","§ao ","Song §ao ",2},
{"H¹n chÕ vò khÝ skill 9x ngo¹i c«ng Nga Mi lµ g× ","Tr­êng kiÕm ","Phi tiªu ","Tay kh«ng ","Tr­êng th­¬ng ",2},
{"Né l«i chØ lµ chiªu thøc cña m«n ph¸i nµo? ","Vâ §ang ","Ngò §éc ","Nga Mi ","§­êng M«n ",1},
{"Chiªu thøc chuyÓn hãa s¸t th­¬ng thµnh néi lùc cña Vâ §ang lµ g×? ","Täa Väng V« Ng· ","HuyÒn ¢m Tr¶m ","HÊp Tinh §¹i Ph¸p ","Tiªu Diªu C«ng ",2},
{"Tèc ®é di chuyÓn cña ngùa XÝch Thè lµ bao nhiu ","80% ","90% ","100% ","50% ",3},
{"HÖ nµo chØ cã thÓ t¹o nh©n vËt lµ N÷? ","HÖ Thñy ","HÖ Háa ","HÖ KIm ","HÖ Méc ",2},
{"HÖ nµo chØ cã thÓ t¹o nh©n vËt lµ Nam ","HÖ Kim ","HÖ Méc ","HÖ MÆt Trêi ","HÖ Thñy ",1},
{"Skill t¨ng ®é chÝnh x¸c vµ nÐ tr¸nh cña Vä §ang lµ: ","ThÊt Tinh TrËn ","La H¸n TrËn ","Thiªn M«n TrËn ","B¸t Qu¸i TrËn ",2},
{"Trang bÞ §Þnh Quèc cã tæng céng bao nhiu mãn? ","5 ","4 ","3 ","1 ",2},
{"¸o §Þnh Quèc ®­îc cho lµ max options khi cã: ","Thêi gian phôc héi 50 ","Thêi gian phôc håi 40 ","Thêi gian phôc håi 60 ","Thêi gian phôc håi 100 ",4},
{"Thêi gian më khãa b¶o hiÓm cña trang bÞ vµ vò khÝ lµ: ","48 giê ","24 giê ","12 giê ","168 giê ",2},


{"Skill ThÕ V©n Tung cña Vâ §ang t¨ng: ","Tèc ®é di chuyÓn ","Tèc ®é xuÊt chiªu ","NÐ Tr¸nh ","§é chÝnh x¸c ",1},

{"Muèn ®i Phong L¨ng §é bê Nam cÇn ph¶i cã: ","5000 l­îng ","4000 l­îng ","2000 l­îng ","500 l­îng ",4},

{"ThiÕt Th¸p Mª Cung n»m ë thµnh thÞ nµo ","BiÖn Kinh ","T­¬ng D­¬ng ","Ph­îng T­êng ","Thµnh §« ",1},
{"Mçi thµnh thÞ cã bao nhiu NPC B¸n Ngùa ","1 ","2 ","0 ","3 ",3},
{"Phóc duyªn ®¹i ®­îc b¸n ë NPC: ","Kh«ng cã NPC nµo ","Thî rÌn ","HiÖu thuèc ","TiÖm t¹p hãa ",1},
{"Chøc vô cao nhÊt trong bang héi lµ: ","Bang chñ ","§­êng chñ ","Tr­ìng l·o ","M«n ®Ö ",2},

{"M× gãi lµ lo¹i thùc phÈm ®­îc tiªu thô nhiÒu nhÊt ë ViÖt Nam bëi ®èi t­îng nµo? ","Sinh viªn ","Ca sÜ ","B¸c sÜ ","Ng­êi mÉu ",2},
{"Thµnh phè ®«ng d©n nhÊt thÕ giíi hiÖn nay lµ:¸ ","Tokyo ","Mexico city ","New York ","Hµ Néi ",2},

{"§Êt n­íc Argentina næi tiÕng víi ®iÖu nh¶y nµo? ","Tango ","Dance ","Cha cha cha ","Rumba ",2},
{"Tªn bé phim ®· ®¹t 11 gi¶i Oscar ","Titanic ","Lords of the Ring ","§iÖp viªn 007 ","Ng­êi vËn chuyÓn ",4},
{"§éi tuyÓn nµo v« ®Þch World Cup 4 lÇn? ","Italia ","T©y Ban Nha ","Brazil ","§øc ",2},

{"Quèc gia ®«ng d©n nhÊt ch©u Phi? ","Nigeria ","Somali ","Lebanon ","Nam Phi ",3},
{"TiÒn ®¹o Robin van Persie lµ cÇu thñ cña Quèc gia nµo? ","Hµ Lan ","§øc ","Trung Quèc ","Ph¸p ",1},
{"§éi bãng v« ®Þch Premier League mïa gi¶i 2012-2013 lµ: ","MU ","MC ","Chelsea ","Arsenal ",1},
{"§éi bãng nµo v« dÞch Euro nhiÒu nhÊt? ","§øc ","Anh ","Ph¸p ","Mü ",3},
{"Tim ng­êi cã mÊy ng¨n? ","4 ","6 ","8 ","2 ",2},
{"Con mÌo cã mÊy ch©n ","4 ","5 ","2 ","1 ",4},
{"R­ìi Gß §en lµ ®Æc s¶n cña tØnh nµo sau ®©y: ","Long An ","TiÒn Giang ","BÕn Tre ","Trµ Vinh ",1},



{"BiÓn sè xe 79 lµ cña tØnh nµo sau ®©y: ","Kh¸nh Hßa ","Phó Yªn ","B×nh §Þnh ","B×nh ThuËn ",2},

{"R¹p h¸t Hßa B×nh Tp.HCM n»m trªn ®­êng nµo ","3-2 ","C¸ch m¹ng th¸ng t¸m ","Lý Tù Träng ","Nam K× Khëi NghÜa ",2},{"Thêi gian ®Êu gi¸ khiªu chiÕn lÖnh hµng ngµy lµ ","18h-19h ","6h-7h ","20h-22h ","8h-10h ",2},



{"Thµnh viªn trong bang ph¶i tham gia Ýt nhÊt bao nhiªu ngµy míi ®­îc tham gia c«ng-thñ thµnh ","7 ngµy ","6 ngµy ","14 ngµy ","Kh«ng cã ®iÒu kiÖn ",2},

{"Map nµo sau ®©y ®¸nh qu¸i kh«ng r¬i khiªu chiÕn lÖnh ","Hoa S¬n ","Ch©n nói tr­êng b¹ch ","M¹c b¨c th¶o nguyªn ","Tr­êng ca m«n ",2},


{"§Ó tÈy ®iÓm kú n¨ng cÇn ","3 viªn thñy tinh kh¸c nhau ","6 tinh hång b¶o th¹ch ","3 viªn thñy tinh gièng nhau ","TÊt c¶ ®Òu sai ",2},


{"Mét ngµy cã thÓ nép tèi ®a bao nhiªu khiªu chiÕn lÖnh ","100 ","200 ","50 ","Bao nhiªu còng ®­îc ",1},




{"Kinh tuyÕn gèc ®i qua n­íc nµo ","Anh ","MÜ ","Ph¸p ","§øc ",2},

{"§¹i d­¬ng nµo lµ n¬i x¶y ra nhiÒu b·o nhÊt ","Th¸i B×nh D­¬ng ","§¹i T©y D­¬ng ","B¾c B¨ng D­¬ng ","Ên ®ä D­¬ng ",2},
{"KÒn KÒn Tr¾ng lµ biÖt danh cña ®éi bãng nßa ","Real Madrid ","M.U ","Asenal ","Barcalona ",1},

{"Ngµy thµnh lËp §oµn lµ ","26-3-1931 ","26-3-1930 ","26-6-1931 ","27-6-1930 ",2},
{"Hoa K× cã bao nhiªu bang ","50 ","16 ","52 ","56 ",2},
{"VËt thÓ bay kh«ng x¸c ®Þnh viÕt t¾t lµ g× ","UFO ","WWF ","WWW ","ESCAP ",2},

{"N­íc ta gia nhËp Asean vµo n¨m nµo ","1995 ","1997 ","1977 ","1975 ",3},

{"Quª h­¬ng cña h·ng Nokia ","PhÇn Lan ","Hµn Quèc ","NhËt B¶n ","Trung Quèc ",2},
{"Ngµy quèc tÕ lao ®éng lµ ngµy nµo ","1-5 ","10-3 ","30-4 ","14-2 ",2},
{"Th¨ng Long trë thµnh kinh ®« cña n­íc ta tõ n¨m nµo ","1010 ","1000 ","990 ","900 ",3},

{"Liªn ®oµn bãng ®¸ thÕ giíi viÕt t¾t lµ ","FIFA ","VFF ","FA ","AFC ",2},
{"N­íc cã diÖn tÝch lín thø 3 thÕ giíi ","Trung Quèc ","Nga ","MÜ ","Canada ",3},
{"097 hiÖn lµ ®Çu sè cña nhµ m¹ng nµo ","Viettel ","Mobi ","Vina ","G-tel ",1},

{"Hµnh tinh lín nhÊt trong hÖ TÆc Trêi ","Sao Méc ","Sao thñy ","Sao thæ ","Sao Háa ",2},

{"Con s«ng dµi nhÊt Ch©u ¢u ","Vonga ","Nile ","Missisippi ","TÊt c¶ ®Òu sai ",4},
{"Vò khÝ h¹t nh©n ®­îc sö dông vµo n¨m nµo ","1945 ","1946 ","1900 ","1950 ",3},
{"Tßa nhµ cao nhÊt ViÖt Nam hiÖn nay n»m ë ®©u ","Hµ Néi ","Thµnh phè Hå ChÝ Minh ","§µ N½ng ","B×nh D­¬ng ",2},
{"Hµnh tinh quay nhanh nhÊt trong hÖ MÆ Trêi ","Sao Méc ","Sao Háa ","Sao Thñy ","Sao Kim ",4},

{"M«n Yoga cã nguån gèc tõ n­íc nµo ","Ên §é ","Ai CËp ","Trung Quèc ","NhËt B¶n ",4},

{"World cup 2010 ®­îc tæ chøc ë ","Nam Phi ","Brazil ","NhËt B¶n-Hµn Quèc ","TÊt c¶ ®Òu sai ",4},
{"TiÒn polymer cã mÖnh gi¸ thÊp nhÊt hiÖn nay ","10000 ","5000 ","500 ","20000 ",1},
{"HiÖn nay ViÖt Nam cã mÊy nahf m¸y ®iÖn h¹t nh©n ","0 ","1 ","2 ","3 ",4},
{"B¸c Hå sinh n¨m mÊy ","1890 ","1980 ","1900 ","1898 ",2}
}

