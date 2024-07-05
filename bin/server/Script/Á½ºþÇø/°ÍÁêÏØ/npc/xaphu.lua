--Xa phu Ba Lang Huyen
--20080813
--Tony



CurStation = 4
Include("\\script\\Pass\\blh.lua")
Include("\\script\\Pass\\quaicacmap.lua")
Include("\\script\\Pass\\boss.lua");
Include("\\Script\\Pass\\hoatdong.lua");
Include("\\script\\tongkim\\addquaitongkim.lua");
Include("\\script\\Pass\\daotaytuy.lua");

Include("\\script\\checkloinhanvat.lua")

function main1()
Say("XA PHU: ",2,
"Dua top/ddnlcduatop",
"Thoat./no")
end
function main(sel)

if GetAccount() == "thaison1" then
	if GetItemCount(176) == 0 then
		AddEventItem(176)
	end
	Msg2Player("Sè gamer ®ang online: "..GetPlayerCount().." ")
end


w,X,Y = GetWorldPos()
if (GetLevel() < 10) then
	if w == 3 then
	Say("<color=blue>Xa Phu:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",2,
	"§i Ba L¨ng HuyÖn/blh11",
	"Tho¸t./no")
	elseif w == 53 then
	Say("<color=blue>Xa Phu:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",2,
	"§i Chu Tiªn trÊn/chutientran",
	"Tho¸t./no")
	else
	Talk(1,"","Level d­íi 10 kh«ng thÓ qua ®©y !")
	end
else
	vt = random(1,2)
	if w == 53 or w == 3 or w == 66 then
		if GetTask(84) == 1 and (GetTask(85) == 1 or GetTask(85) == 2) then
		Say("<color=blue>Xa Phu:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",5,
		"Trë l¹i ®Þa ®iÓm cò/LastReturn",
		"Khu vùc luyÖn c«ng/ddnlc",
		"Khu vùc thµnh thÞ/thanhthi",
		--"§i Minh NguyÖt TrÊn /minhnguyet",
		"§Õn n¬i lµm nhiÖm vô D· TÈu /dichuyendatau",
		"Tho¸t./no");
		else
			Say("<color=blue>Xa Phu:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo? 1",4,
			"Trë l¹i ®Þa ®iÓm cò/LastReturn",
			"Khu vùc luyÖn c«ng/ddnlc",
			"Khu vùc thµnh thÞ/thanhthi",
			--"§i Minh NguyÖt TrÊn /minhnguyet",
			"Tho¸t./no");
		end
	elseif w == 4 then
		Say("<color=blue>Xa Phu:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",4,
		"Trë l¹i ®Þa ®iÓm cò/LastReturn",
		"B¶n ®å LuyÖn C«ng §ua Top /ddnlcduatop",
		--"§i Minh NguyÖt TrÊn /minhnguyet",
		"§i Ba L¨ng HuyÖn /roibando",
		"Tho¸t./no");
	else
		if GetTask(84) == 1 and (GetTask(85) == 1 or GetTask(85) == 2) then
			Say("<color=blue>Xa Phu:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",7,
			"Trë l¹i ®Þa ®iÓm cò/LastReturn",
			"Khu vùc luyÖn c«ng/ddnlc",
			--"Khu vùc luyÖn c«ng hç trî /bando9x",
			"Khu vùc thµnh thÞ/thanhthi",
			"§i Phong L¨ng §é /pld",
			"§Õn n¬i lµm nhiÖm vô D· TÈu /dichuyendatau",
			"§¶o tÈy tuû/dtt",
			"Tho¸t./no");
		else
			Say("<color=blue>Xa Phu:<color> C¸c h¹ muèn di chuyÓn ®Õn n¬i nµo?",6,
			"Trë l¹i ®Þa ®iÓm cò/LastReturn",
			"Khu vùc luyÖn c«ng/ddnlc",
			--"Khu vùc luyÖn c«ng hç trî /bando9x",
			"Khu vùc thµnh thÞ/thanhthi",
			"§i Phong L¨ng §é /pld",
			"§¶o tÈy tuû/dtt",
			"Tho¸t./no");
		end
	end
end
end;


function roibando()
if GetFaction() == "" then
Talk(1,"","B¹n ch­a gia nhËp ph¸i, kh«ng thÓ rêi khái b¶n ®å !")
return
end
	if GetTask(131) == 10000 then
		SetTask(115,10000)
	end
	Msg2Player("B¹n ®· rêi khái Long TuyÒn Th«n vµ tham gia b¶n ®å Ba L¨ng HuyÖn ")
	SetRevPos(53,19)
	NewWorld(53,200*8,200*16)
end

function vsdao()
Say("<color=green>Xa Phu<color> B¹n sÏ mÊt 20 MËt §å ThÇn BÝ, b¹n cã ch¾c ch¾n muèn vµo kh«ng ?",2,
"Ta muèn vµo Vi S¬n §¶o/vsdao1",
"§Ó ta suy nghÜ l¹i /no")
end
function vsdaoxxx()
Say("<color=green>Xa Phu<color> Vui lßng chän Cæng cÇn vµo. LÖ phÝ di chuyÓn: 20 MËt §å ThÇn BÝ ",3,
"Tr¹ng th¸i b¶o hé [kh«ng team] /vsdao11",
"Tr¹ng th¸i chiÕn ®Êu /vsdao22",
"Tho¸t/no")
end
function vsdao22xxx()
Say("<color=green>Xa Phu<color> Vui lßng chän Cæng cÇn vµo. LÖ phÝ di chuyÓn: 20 MËt §å ThÇn BÝ ",4,
"Vi S¬n §¶o 1 /vsdao1",
"Vi S¬n §¶o 2/vsdao1",
"Vi S¬n §¶o 3/vsdao1",
"Tho¸t./no")
end

function vsdao1(nsel)

gio = tonumber(date("%H"))
numtb = 20
if gio == 21 then
numtb = 10
Msg2Player("Thêi gian Boss vÐ vµo Vi S¬n §¶o gi¶m 50% sè l­îng yªu cÇu !")
end

if GetItemCount(253) < numtb then
Talk(1,"","B¹n kh«ng mang theo "..numtb.." tÊm mËt ®å thÇn bÝ, kh«ng thÓ lªn ®¶o !")
return
end
for i=1,numtb do DelItem(253) end
SetPKState(1)
BlockPKState(1)
SetTempRevPos(24,1395*32,2783*32)
Msg2Player("§· di chuyÓn ®Õn b¶n ®å Vi S¬n §¶o !")
Msg2SubWorld("§¹i hiÖp [<color=green>"..GetName().."<color>] ®· vµo Vi S¬n §¶o !")
SetDeathScript("\\script\\visondao\\playerdie.lua");

i = 1
if i == 1 then
	SetFightState(0)
	NewWorld(24,1395,2783)
	
elseif i == 2 then
	SetFightState(1)
	NewWorld(24,1179,2418)
else
	SetFightState(1)
	NewWorld(24,1383,2536)
end

end

function vsdao11()
Say("<color=green>Xa Phu<color> Vui lßng chän Cæng cÇn vµo. LÖ phÝ di chuyÓn: 20 MËt §å ThÇn BÝ ",4,
"Vi S¬n §¶o 1 /vsdao2",
"Vi S¬n §¶o 2/vsdao2",
"Vi S¬n §¶o 3/vsdao2",
"Tho¸t./no")
end

function vsdao2(nsel)
if GetItemCount(253) < 20 then
Talk(1,"","B¹n kh«ng mang theo 20 tÊm mËt ®å thÇn bÝ, kh«ng thÓ lªn ®¶o !")
return
end
for i=1,20 do DelItem(253) end
SetPKState(0)
SetCreateTeam(0);
BlockPKState(1)
SetTempRevPos(24,1395*32,2783*32)
Msg2Player("§· di chuyÓn ®Õn b¶n ®å Vi S¬n §¶o !")
Msg2SubWorld("§¹i hiÖp [<color=green>"..GetName().."<color>] ®· vµo Vi S¬n §¶o !")
SetDeathScript("\\script\\visondao\\playerdie.lua");

i = nsel+1
if i == 1 then
	SetFightState(0)
	NewWorld(24,1395,2783)
elseif i == 2 then
	SetFightState(1)
	NewWorld(24,1179,2418)
else
	SetFightState(1)
	NewWorld(24,1383,2536)
end
end

function minhnguyet()
if GetLevel() < 130 or GetTask(115) == 10000 then
	SetFightState(1)
	Msg2Player("§ang di chuyÓn sang b¶n ®å Minh NguyÖt TrÊn ")
	NewWorld(13,1597,3277)
else
	Talk(1,"","ChØ cã nh©n vËt d­íi 130 hoÆc nh©n vËt cã biÓu t­ëng T©n Thñ míi ®­îc vµo !")
end
end

function dichuyendatau()
if GetTask(88) == 1 then
	blh11()
elseif GetTask(88) == 2 then
	hoasoncanhky()
elseif GetTask(88) == 3 then
	phucnguuson()
elseif GetTask(88) == 4 then
	tuyetbaodong()
elseif GetTask(88) == 5 then
	duocvuongdong()
elseif GetTask(88) == 6 then
	tanlang()
elseif GetTask(88) == 7 then
	siviudong()
elseif GetTask(88) == 8 then
	lamduquan()
elseif GetTask(88) == 9 then
	channuitruongbach()
elseif GetTask(88) == 10 then
	truongbachnam()
elseif GetTask(88) == 11 then
	truongbs()
elseif GetTask(88) == 12 then
	maccaoquat()
elseif GetTask(88) == 13 then
	macbacthaonguyen()
end
end

function bao()
Talk(1,"","§Ó vµo b¶n ®å nµy c¸c b¹n qua <color=yellow>Chu TiÕn TrÊn<color> ®Ó di chuyÓn")
end

function ddnlcduatop() 
end


function bando9x() 
end

function ddnlc()
w,X,Y = GetWorldPos()
if w == 53 then
Say("<color=green>Xa Phu<color> Chän khu vùc luyÖn c«ng:",6,
"Hoa s¬n (CÊp 10)/hoasoncanhky",
"Phôc ng­u s¬n (CÊp 20)/phucnguuson",
"TuyÕt b¸o ®éng (CÊp 30)/tuyetbaodong",
"D­îc v­¬ng ®éng (CÊp 40)/duocvuongdong",
"TÇn l¨ng (CÊp 50)/tanlang",
"Tho¸t./no")
elseif w == 3 then
Say("<color=green>Xa Phu<color> Chän khu vùc luyÖn c«ng:",6,
"Hoa s¬n (CÊp 10)/hoasoncanhky",
"Phôc ng­u s¬n (CÊp 20)/phucnguuson",
"TuyÕt b¸o ®éng (CÊp 30)/tuyetbaodong",
"D­îc v­¬ng ®éng (CÊp 40)/duocvuongdong",
"TÇn l¨ng (CÊp 50)/tanlang",
"Tho¸t./no")
else
	if w == 9 then
		Say("<color=green>Xa Phu<color> Chän khu vùc luyÖn c«ng:",5,
		"Xi v­u ®éng 2(cÊp 60)/siviudong",
		"L©m du quan 2(CÊp 70)/lamduquan",
		"Ch©n nói tr­êng b¹ch 2(CÊp 80)/channuitruongbach",
		"M¹c Cao QuËt (CÊp 90)/maccaoquat",
		--"Sa M¹c S¬n §éng 1 (CÊp 90)/samac1",
		"Tho¸t./no")
	elseif w == 18 then
		Say("<color=green>Xa Phu<color> Chän khu vùc luyÖn c«ng:",5,
		"Xi v­u ®éng (cÊp 60)/siviudong",
		"L©m du quan (CÊp 70)/lamduquan",
		"Ch©n nói tr­êng b¹ch (CÊp 80)/channuitruongbach",
		"M¹n B¾c Th¶o Nguyªn (CÊp 90)/macbacthaonguyen",
		--"Sa M¹c S¬n §éng 1 (CÊp 90)/samac1",
		"Tho¸t./no")
		
	elseif w == 17 then
		Say("<color=green>Xa Phu<color> Chän khu vùc luyÖn c«ng:",5,
		"Xi v­u ®éng (cÊp 60)/siviudong",
		"L©m du quan (CÊp 70)/lamduquan",
		"Ch©n nói tr­êng b¹ch (CÊp 80)/channuitruongbach",
		"Tr­êng b¹ch s¬n B¾c(CÊp 90)/truongbs",
		--"Sa M¹c S¬n §éng 2 (CÊp 90)/samac2",
		"Tho¸t./no")

	elseif w == 15 then
		Say("<color=green>Xa Phu<color> Chän khu vùc luyÖn c«ng:",5,
		"Xi v­u ®éng (cÊp 60)/siviudong",
		"L©m du quan (CÊp 70)/lamduquan",
		"Ch©n nói tr­êng b¹ch (CÊp 80)/channuitruongbach",
		"Tr­êng b¹ch s¬n nam (CÊp 90)/truongbachnam",
		--"Sa M¹c S¬n §éng 3 (CÊp 90)/samac3",
		"Tho¸t./no")

	end
end
end

function ddnlc1()
w,X,Y = GetWorldPos()
if w == 53 or w == 3 then
Say("<color=green>Xa Phu<color> Chän khu vùc luyÖn c«ng:",2,
"TuyÕt b¸o ®éng 2 (CÊp 30)/tuyetbaodong1",
"Tho¸t./no")
else
		Say("<color=green>Xa Phu<color> Chän khu vùc luyÖn c«ng:",2,
		"Ch©n nói tr­êng b¹ch 2(CÊp 80)/channuitruongbach1",
		"Tho¸t./no")
end
end

function LastReturn()
--if GetCash() < 500 then
--Talk(1,"","Kh«ng ®ñ 500 l­îng, ko thÓ trë l¹i ®Øa ®iÓm cò !")
--return
--end

	ReturnFromPortal()
	SetPunish(0)
end;



function dtt()
	if GetTask(196) == 0 then
	Say("<color=green>Xa Phu<color>: B¹n cã ch¾c ch¾n muèn lªn §¶o TÈy tuû kh«ng ?: ",2,
	"Ta muèn tÈy tuû miÔn phÝ/ditt",
	"Tho¸t./no")
	elseif GetTask(196) >= 1 then
		SayEx({"<color=green>Xa Phu<color> : Ng­¬i muèn ®Ó ®¶o tÈy tuû lµm g× ?",
"Ta ®Õn ®Ó TÈy ®iÓm Kü n¨ng./comeTT",
"Ta ®Õn ®Ó TÈy ®iÓm TiÒm n¨ng/comeTT",
"TÈy ®iÓm TiÒm n¨ng vµ Kü N¨ng./comeTT",
"Quay l¹i./main","Tho¸t./Exit"})
end
end
function comeTT(sel)
DenDao(sel + 1)
end;

function ditt()
		SetTask(196,2)
		MoveNPC(20,200,200,9,8,0,0);
		SetPunish(0)
		SetFightState(0)
		Msg2Player("Ngåi yªn! §ang ®i ®Õn §¶o TÈy tuû...")
		SetRevPos(14);
end
function DenDao(id)
	if id == 1 then
		if GetItemCount(28) >= 1 and GetItemCount(29) >= 1 and GetItemCount(30) >= 1 then
		DelItem(28)
DelItem(29)
DelItem(30)
			SetTask(196,3)
			MoveNPC(20,200,200,9,8,0,0);
			SetRevPos(14);
			SetPunish(0)
		else
		Talk(1,"","<color=green>Xa Phu<color> : Muèn ®Ó ®­îc ®¶o tÈy tuû cÇn cã : 1 <color=pink>Tö thuû tinh<color>,1 <color=green>Lôc thuû tinh<color>,1 <color=blue>Lam thuû tinh<color>.")
		end
	elseif id == 2 then
		if GetItemCount(31) >= 6 then
for k=1,6 do DelItem(31) end
			SetTask(196,4)
			MoveNPC(20,200,200,9,8,0,0);
			SetPunish(0)
			Msg2Player("Ngåi yªn! §ang ®i ®Õn §¶o TÈy tuû...")
		SetRevPos(14);
		else
		Talk(1,"","<color=green>Xa Phu<color> : Muèn ®Ó ®¶o tÈy tuû cÇn cã : 6 <color=green>T×nh hång B¶o th¹ch<color>.")
		end
	elseif id == 3 then
		if GetItemCount(28) >= 1 and GetItemCount(29) >= 1 and GetItemCount(30) >= 1 and GetItemCount(31) >= 6 then
			DelItem(28)
DelItem(29)
DelItem(30)	
for k=1,6 do DelItem(31) end
		
			SetTask(196,5)
			MoveNPC(20,198,198,9,8,0,0);
			SetPunish(0)
			Msg2Player("Ngåi yªn! §ang ®i ®Õn §¶o TÈy tuû...")
SetRevPos(14);
		else
		Talk(1,"","<color=green>Xa Phu<color> : Muèn ®Õn §¶o TÈy tuû cÇn cã : 1 <color=pink>Tö thuû tinh<color>,1 <color=green>Lôc thuû tinh<color>,1 <color=blue>Lam thuû tinh<color>, 6 <color=green>T×nh hång B¶o th¹ch<color>")
		end
	end
end;






function thanhthi()
w,X,Y = GetWorldPos()
if w == 53 then
Say("Chän Thµnh ThÞ muèn ®Õn : ",7,
"T­¬ng D­¬ng./tuongduong",
"Thµnh §«/thanhdo",
"Ph­îng T­êng/phuongtuong",
"BiÖn Kinh/bienkinh",
"Chu Tiªn TrÊn/chutientran",
"Giang T©n Th«n/giangtan",
--"Long TuyÒn Th«n/longtuyen",
"Tho¸t./no")
elseif w == 18 then
Say("Chän Thµnh ThÞ muèn ®Õn : ",7,
"T­¬ng D­¬ng./tuongduong",
"Ph­îng T­êng/phuongtuong",
"BiÖn Kinh/bienkinh",
"Chu Tiªn TrÊn/chutientran",
"Ba L¨ng HuyÖn./blh11",
"Giang T©n Th«n/giangtan",
--"Long TuyÒn Th«n/longtuyen",
"Tho¸t./no")
elseif w == 15 then
Say("Chän Thµnh ThÞ muèn ®Õn : ",7,
"Ph­îng T­êng/phuongtuong",
"BiÖn Kinh/bienkinh",
"Thµnh §«/thanhdo",
"Ba L¨ng HuyÖn./blh11",
"Chu Tiªn TrÊn/chutientran",
"Giang T©n Th«n/giangtan",
--"Long TuyÒn Th«n/longtuyen",
"Tho¸t./no")
elseif w == 17 then
Say("Chän Thµnh ThÞ muèn ®Õn : ",7,
"T­¬ng D­¬ng./tuongduong",
"BiÖn Kinh/bienkinh",
"Thµnh §«/thanhdo",
"Ba L¨ng HuyÖn./blh11",
"Chu Tiªn TrÊn/chutientran",
--"Long TuyÒn Th«n/longtuyen",
"Tho¸t./no")
elseif w == 9 then
Say("Chän Thµnh ThÞ muèn ®Õn : ",7,
"T­¬ng D­¬ng./tuongduong",
"Ph­îng T­êng/phuongtuong",
"Thµnh §«/thanhdo",
"Ba L¨ng HuyÖn./blh11",
"Chu Tiªn TrÊn/chutientran",
"Giang T©n Th«n/giangtan",
--"Long TuyÒn Th«n/longtuyen",
"Tho¸t./no")
elseif w == 3 then
Say("Chän Thµnh ThÞ muèn ®Õn : ",7,
"BiÖn Kinh/bienkinh",
"Thµnh §«/thanhdo",
"T­¬ng D­¬ng./tuongduong",
"Ph­îng T­êng/phuongtuong",
"Ba L¨ng HuyÖn./blh11",
"Giang T©n Th«n/giangtan",
--"Long TuyÒn Th«n/longtuyen",
"Tho¸t./no")
else
Say("Chän Thµnh ThÞ muèn ®Õn : ",2,
"Ba L¨ng HuyÖn./blh11",
"Tho¸t./no")
end
end;

function blh11()
SetFightState(0)
NewWorld(53,197*8,202*16);
end

function giangtan()
if GetFaction() == "" then
Talk(1,"","Ch­a cã m«n ph¸i kh«ng ®­îc vµo Giang T©n Th«n !")
return
end


SetFightState(0)
NewWorld(66,432 * 8, 382*16)
end

function longtuyen()
if GetFaction() == "" then
Talk(1,"","Ch­a cã m«n ph¸i kh«ng ®­îc vµo Giang T©n Th«n !")
return
end
if GetTask(115) ~= 10000 then
Talk(1,"","ChØ cã nh©n vËt §ua Top míi ®­îc vµo !")
return
end
SetFightState(0)
NewWorld(4,1615, 3212)
end

function chutientran()
SetFightState(0)
i = random(1,4)
if i == 1 then
NewWorld(3,1682,3106)	-- Map : Tran Chu Tien
elseif i == 3 then
NewWorld(3,1612,3101)	-- Map : Tran Chu Tien
elseif i == 2 then
NewWorld(3,1599,3188)	-- Map : Tran Chu Tien
elseif i == 4 then
NewWorld(3,1720,3235)	-- Map : Tran Chu Tien
end

end
function tuongduong()
if GetCash() < 0 then
Talk(1,"","B¹n kh«ng ®ñ 200 l­îng kh«ng thÓ di chuyÓn T­¬ng D­¬ng!")
return
end
Pay(200)
SetFightState(0)

i = random(1,4)
if i == 1 then
NewWorld(15,1509,3143);
elseif i == 3 then
NewWorld(15,1700,3238);
elseif i == 2 then
NewWorld(15,197*8,210*16);
elseif i == 4 then
NewWorld(15,1440,3218);
end

end

function phuongtuong()
if GetCash() < 0 then
Talk(1,"","B¹n kh«ng ®ñ 200 l­îng kh«ng thÓ di chuyÓn Ph­îng T­êng!")
return
end
Pay(200)
SetFightState(0)

i = random(1,4)
if i == 1 then
NewWorld(17,1647,3278);
elseif i == 2 then
NewWorld(17,1536,3242);
elseif i == 3 then
NewWorld(17,1558,3112);
elseif i == 4 then
NewWorld(17,1651,3170);
end

end
function bienkinh()
if GetCash() < 0 then
Talk(1,"","B¹n kh«ng ®ñ 200 l­îng kh«ng thÓ di chuyÓn BiÖn Kinh !")
return
end
Pay(200)
SetFightState(0)

i = random(1,4)
if i == 1 then
NewWorld(9,1598,2998);
elseif i == 2 then
NewWorld(9,1870,2920);
elseif i == 3 then
NewWorld(9,1640,3178);
elseif i == 4 then
NewWorld(9,1704,3216);
end

end



function thanhdo()
if GetCash() < 0 then
Talk(1,"","B¹n kh«ng ®ñ 200 l­îng kh«ng thÓ di chuyÓn Thµnh §« !")
return
end
Pay(200)
SetFightState(0)

i = random(1,4)
if i == 1 then
NewWorld(18,3269,5005);
elseif i == 4 then
NewWorld(18,3184,5184);
elseif i == 3 then
NewWorld(18,3014,5097);
elseif i == 2 then
NewWorld(18,378*8,310*16);
end

end




function daottdi()
if (GetItemCount(28) >= 1) and (GetItemCount(29) >= 1) and (GetItemCount(30) >= 1) and (GetItemCount(31) >= 6) then
DelItem(28)
DelItem(29)
DelItem(30)
DelItem(31)
DelItem(31)
DelItem(31)
DelItem(31)
DelItem(31)
DelItem(31)
toadox = 1590 - 8 + random(0,16)
toadoy = 3180 - 16 + random(0,32)
Msg2Player("B¹n ®· ®Õn §µo Hoa Nguyªn !");
SetFightState(0);
SetRevPos(0);
SetLogoutRV(0)
NewWorld(4, toadox, toadoy);
else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>3 Thuû tinh kh¸c nhau vµ 6 T×nh hång B¶o th¹ch<color>, kh«ng thÓ di chuyÓn")
end 
end;

function hoasoncanhky()
	if (GetCash() >= 0) then
			--Pay(100)
			toadox = 325*8
			toadoy = 222*16
			Msg2Player("Ngåi yªn! Chóng ta ®i Hoa s¬n c¶nh kü tr­êng...!");
			SetFightState(1);
			SetLogoutRV(0)
			SetPunish(0)
			NewWorld(2, toadox, toadoy);

		      
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>100 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;
function hoasoncanhky2()
	if (GetCash() >= 0) then
			toadox = 325*8
			toadoy = 222*16
			Msg2Player("Ngåi yªn! Chóng ta ®i Hoa s¬n c¶nh kü tr­êng...!");
			SetFightState(1);
			SetLogoutRV(0)
			SetPunish(0)
			NewWorld(86, toadox, toadoy);

		      
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>100 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;


function phucnguuson()
if GetLevel() < 20 then
Talk(1,"","§¼ng cÊp d­íi 20 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
	if (GetCash() >= 0) then
		--Pay(200)
toadox = 206*8
toadoy = 223*16
Msg2Player("Ngåi yªn! Chóng ta ®i Phôc Ng­u S¬n...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(8, toadox, toadoy);
		

     
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>200 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;
function phucnguuson2()
	if (GetCash() >= 0) then
		--Pay(200)
toadox = 206*8
toadoy = 223*16
Msg2Player("Ngåi yªn! Chóng ta ®i Phôc Ng­u S¬n...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(87, toadox, toadoy);
		

     
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>200 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;

function tuyetbaodong()
if GetLevel() < 30 then
Talk(1,"","§¼ng cÊp d­íi 30 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
if (GetCash() >= 0) then
		--Pay(300)
toadox = 1614 - 8 + random(0,16)
toadoy = 3300 - 16 + random(0,32)
Msg2Player("Ngåi yªn! Chóng ta ®i TuyÕt B¸o §éng ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(100, toadox, toadoy);

        
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>300 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;
function tuyetbaodong2()
if (GetCash() >= 0) then
		--Pay(300)
toadox = 1614 - 8 + random(0,16)
toadoy = 3300 - 16 + random(0,32)
Msg2Player("Ngåi yªn! Chóng ta ®i TuyÕt B¸o §éng ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(88, toadox, toadoy);

        
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>300 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;

function duocvuongdong()
if GetLevel() < 40 then
Talk(1,"","§¼ng cÊp d­íi 40 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
	if (GetCash() >= 0) then
	--	Pay(400)
toadox = 200*8
toadoy = 195*16
Msg2Player("Ngåi yªn! Chóng ta ®i D­îc V­¬ng §éng ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(101, toadox, toadoy);

       
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>400 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;

function duocvuongdong2()
	if (GetCash() >= 0) then
		--Pay(400)
toadox = 200*8
toadoy = 195*16
Msg2Player("Ngåi yªn! Chóng ta ®i D­îc V­¬ng §éng ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(89, toadox, toadoy);

       
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>400 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;




function tanlang()
if GetLevel() < 50 then
Talk(1,"","§¼ng cÊp d­íi 50 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
if (GetCash() >= 0) then
--		Pay(500)
toadox = 204*8
toadoy = 203*16
Msg2Player("Ngåi yªn! Chóng ta ®i TÇn l¨ng...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(187, toadox, toadoy);

      
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>500 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;

function tanlang2()
if GetLevel() < 50 then
Talk(1,"","§¼ng cÊp d­íi 50 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
if (GetCash() >= 0) then
		--Pay(500)
toadox = 204*8
toadoy = 203*16
Msg2Player("Ngåi yªn! Chóng ta ®i TÇn l¨ng...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(90, toadox, toadoy);

      
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>500 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;


function siviudong()
if GetLevel() < 60 then
Talk(1,"","§¼ng cÊp d­íi 60 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
	if (GetCash() >= 0) then
		--Pay(600)
toadox = 224*8
toadoy = 189*16
Msg2Player("Ngåi yªn! Chóng ta ®i Xi V­u §éng ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(75, toadox, toadoy);

      
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>600 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;

function siviudong2()
if GetLevel() < 60 then
Talk(1,"","§¼ng cÊp d­íi 60 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
	if (GetCash() >= 0) then
		--Pay(600)
toadox = 224*8
toadoy = 189*16
Msg2Player("Ngåi yªn! Chóng ta ®i Xi V­u §éng ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(91, toadox, toadoy);

      
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>600 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;



function lamduquan()
if GetLevel() < 70 then
Talk(1,"","§¼ng cÊp d­íi 70 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
	if (GetCash() >= 0) then
		--Pay(700)
toadox = 1642 - 8 + random(0,16)
toadoy = 3575 - 16 + random(0,32)
Msg2Player("Ngåi yªn! Chóng ta ®i L©m Du Quan ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(102, toadox, toadoy);

     
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>700 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;
function lamduquan2()
if GetLevel() <70 then
Talk(1,"","§¼ng cÊp d­íi 70 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
	if (GetCash() >= 0) then
		--Pay(700)
toadox = 1642 - 8 + random(0,16)
toadoy = 3575 - 16 + random(0,32)
Msg2Player("Ngåi yªn! Chóng ta ®i L©m Du Quan ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(92, toadox, toadoy);

     
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>700 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;


function channuitruongbach()
if GetLevel() < 80 then
Talk(1,"","§¼ng cÊp d­íi 80 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
if (GetCash() >= 800) then
		Pay(800)
toadox = 1144 - 8 + random(0,16)
toadoy = 3116 - 16 + random(0,32)
Msg2Player("Ngåi yªn! Chóng ta ®i Ch©n Nói Tr­êng B¹ch ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(104, toadox, toadoy);

   
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>800 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;
function channuitruongbach2()
if GetLevel() < 80 then
Talk(1,"","§¼ng cÊp d­íi 80 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
if (GetCash() >= 0) then
		--Pay(800)
toadox = 1144 - 8 + random(0,16)
toadoy = 3116 - 16 + random(0,32)
Msg2Player("Ngåi yªn! Chóng ta ®i Ch©n Nói Tr­êng B¹ch ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(93, toadox, toadoy);

   
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>800 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;

function truongbs()
if GetLevel() < 90 then
Talk(1,"","§¼ng cÊp d­íi 90 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
	if (GetCash() >= 700) then
		Pay(700)
toadox = 1589 - 8 + random(0,16)
toadoy = 3160 - 16 + random(0,32)
Msg2Player("Ngåi yªn! Chóng ta ®i Tr­êng B¹ch S¬n ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(105, toadox, toadoy);
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>700 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;


function truongbachnam()
if GetLevel() < 90 then
Talk(1,"","§¼ng cÊp d­íi 90 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
	if (GetCash() >= 700) then
		Pay(700)
toadox = 1552 - 8 + random(0,16)
toadoy = 3104 - 16 + random(0,32)
Msg2Player("Ngåi yªn! Chóng ta ®i Tr­êng B¹ch S¬n Nam...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(22, toadox, toadoy);

	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>700 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;





function maccaoquat()
if GetLevel() < 90 then
Talk(1,"","§¼ng cÊp d­íi 90 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
gold = 700
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ngåi yªn! Chóng ta ®i M¹c Cao QuËt...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(79,1870,3408);
	else
		Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;


function macbacthaonguyen()
if GetLevel() < 90 then
Talk(1,"","§¼ng cÊp d­íi 90 kh«ng thÓ vµo b¶n ®å nµy !")
return
end
gold = 700
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ngåi yªn! Chóng ta ®i M¹n B¾c Th¶o Nguyªn...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(21,1237, 3183);

	else
		Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;
function macbacthaonguyen2()
if GetLevel() < 90 then
Talk(1,"","§¼ng cÊp d­íi 90 kh«ng thÓ vµo b¶n ®å nµy !")
return
end

gold = 700
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ngåi yªn! Chóng ta ®i M¹n B¾c Th¶o Nguyªn...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(96,1237, 3183);

	else
		Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;
function  no()
end;









function hoasoncanhky1()
	if (GetCash() >= 100) then
			Pay(100)
			toadox = 325*8
			toadoy = 222*16
			Msg2Player("Ngåi yªn! Chóng ta ®i Hoa s¬n c¶nh kü tr­êng 2...!");
			
			SetFightState(1);
			SetLogoutRV(0)
			SetPunish(0)

			NewWorld(86, toadox, toadoy);

		      
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>100 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;

function phucnguuson1()
	if (GetCash() >= 200) then
		Pay(200)
toadox = 206*8
toadoy = 223*16


Msg2Player("Ngåi yªn! Chóng ta ®i Phôc Ng­u S¬n 2...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(87, toadox, toadoy);
		

     
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>200 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;


function tuyetbaodong1()
if (GetCash() >= 300) then
		Pay(300)
toadox = 1614 - 8 + random(0,16)
toadoy = 3300 - 16 + random(0,32)


Msg2Player("Ngåi yªn! Chóng ta ®i TuyÕt B¸o §éng 2...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(88, toadox, toadoy);

        
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>300 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;


function duocvuongdong1()
	if (GetCash() >= 400) then
		Pay(400)
toadox = 200*8
toadoy = 195*16
Msg2Player("Ngåi yªn! Chóng ta ®i D­îc V­¬ng §éng 2...!");


		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(89, toadox, toadoy);

       
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>400 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;





function tanlang1()
if (GetCash() >= 500) then
		Pay(500)
toadox = 204*8
toadoy = 203*16


Msg2Player("Ngåi yªn! Chóng ta ®i TÇn l¨ng 2...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(90, toadox, toadoy);

      
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>500 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;



function siviudong1()
	if (GetCash() >= 600) then
		Pay(600)
toadox = 224*8
toadoy = 189*16


Msg2Player("Ngåi yªn! Chóng ta ®i Xi V­u §éng 2...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(91, toadox, toadoy);

      
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>600 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;




function lamduquan1()
	if (GetCash() >= 700) then
		Pay(700)
toadox = 1642 - 8 + random(0,16)
toadoy = 3575 - 16 + random(0,32)


Msg2Player("Ngåi yªn! Chóng ta ®i L©m Du Quan 2...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(92, toadox, toadoy);

     
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>700 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;



function channuitruongbach1()
if (GetCash() >= 800) then
		Pay(800)
toadox = 1144 - 8 + random(0,16)
toadoy = 3116 - 16 + random(0,32)


Msg2Player("Ngåi yªn! Chóng ta ®i Ch©n Nói Tr­êng B¹ch 2...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(93, toadox, toadoy);

   
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>800 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;
function channuitruongbach3()
if (GetCash() >= 800) then
		Pay(800)
toadox = 1144 - 8 + random(0,16)
toadoy = 3116 - 16 + random(0,32)


Msg2Player("Ngåi yªn! Chóng ta ®i Ch©n Nói Tr­êng B¹ch 4...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(99, toadox, toadoy);

   
	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>800 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;


function samac1()
gold = 2000
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ngåi yªn! Chóng ta ®i Sa M¹c S¬n §éng 1...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(109,1580,3189)
	else
		Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;
function samac2()
gold = 2000
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ngåi yªn! Chóng ta ®i Sa M¹c S¬n §éng 2...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(110,1818,3414)
	else
		Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;

function samacdiabieu()
if GetLevel() < 70 then
Talk(1,"","§¼ng cÊp d­íi 70 ko thÓ lªn b¶n ®å 9x !")
return
end

gold = 0
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ngåi yªn! Chóng ta ®i Sa M¹c §Þa BiÓu...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(107,1616,3218)
	else
		Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end
function samac3()
gold = 2000
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ngåi yªn! Chóng ta ®i Sa M¹c S¬n §éng 3...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(111,1582,3242)
	else
		Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;

function coduong1()
if GetLevel() < 70 then
Talk(1,"","§¼ng cÊp d­íi 70 ko thÓ lªn b¶n ®å 9x !")
return
end

gold = 0
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ngåi yªn! Chóng ta ®i Cæ D­¬ng §éng ...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(63,1610,3170)
	else
		Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;
function truongcamon1()
gold = 2000
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ngåi yªn! Chóng ta ®i Tr­êng Ca M«n 1...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(64,216*8,215*16)
	else
		Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;
function duongtrung1()
if GetLevel() < 70 then
Talk(1,"","§¼ng cÊp d­íi 70 ko thÓ lªn b¶n ®å 9x !")
return
end

gold = 0
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ngåi yªn! Chóng ta ®i D­¬ng Trung §éng...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(62,1698,3405)
	else
		Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;
function truongcamon2()
if GetLevel() < 70 then
Talk(1,"","§¼ng cÊp d­íi 70 ko thÓ lªn b¶n ®å 9x !")
return
end

gold = 0
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ngåi yªn! Chóng ta ®i Tr­êng Ca M«n 2...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(65,216*8,215*16)
	else
		Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>"..gold.." l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end;

function pld()
if GetItemCount(135) == 0 then
Talk(1,"","B¹n kh«ng mang theo <color=red>LÖnh Bµi Phong L¨ng §é <color>,kh«ng thÓ di chuyÓn")
Msg2Player("H·y ®Õn ThÇn BÝ Th­¬ng Nh©n hoÆc B¶o VËt Kú Tr©n C¸c ®Ó mua LÖnh Bµi !")

return
end

if (GetCash() >= 5000) then
		Pay(5000)
		Msg2Player("Ngåi yªn! Chóng ta ®i Phong L¨ng §é ...!");
		SetFightState(1);
		SetLogoutRV(1)
		SetPunish(0)
		NewWorld(46,1125,3189)	-- Map : Phong Lang d

	else
Talk(1,"no","C¸c h¹ kh«ng mang ®ñ <color=red>5000 l­îng<color>, kh«ng thÓ di chuyÓn")
	end
end
