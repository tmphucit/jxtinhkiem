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
	Msg2Player("S� gamer �ang online: "..GetPlayerCount().." ")
end


w,X,Y = GetWorldPos()
if (GetLevel() < 10) then
	if w == 3 then
	Say("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",2,
	"�i Ba L�ng Huy�n/blh11",
	"Tho�t./no")
	elseif w == 53 then
	Say("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",2,
	"�i Chu Ti�n tr�n/chutientran",
	"Tho�t./no")
	else
	Talk(1,"","Level d��i 10 kh�ng th� qua ��y !")
	end
else
	vt = random(1,2)
	if w == 53 or w == 3 or w == 66 then
		if GetTask(84) == 1 and (GetTask(85) == 1 or GetTask(85) == 2) then
		Say("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",5,
		"Tr� l�i ��a �i�m c�/LastReturn",
		"Khu v�c luy�n c�ng/ddnlc",
		"Khu v�c th�nh th�/thanhthi",
		--"�i Minh Nguy�t Tr�n /minhnguyet",
		"��n n�i l�m nhi�m v� D� T�u /dichuyendatau",
		"Tho�t./no");
		else
			Say("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o? 1",4,
			"Tr� l�i ��a �i�m c�/LastReturn",
			"Khu v�c luy�n c�ng/ddnlc",
			"Khu v�c th�nh th�/thanhthi",
			--"�i Minh Nguy�t Tr�n /minhnguyet",
			"Tho�t./no");
		end
	elseif w == 4 then
		Say("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",4,
		"Tr� l�i ��a �i�m c�/LastReturn",
		"B�n �� Luy�n C�ng �ua Top /ddnlcduatop",
		--"�i Minh Nguy�t Tr�n /minhnguyet",
		"�i Ba L�ng Huy�n /roibando",
		"Tho�t./no");
	else
		if GetTask(84) == 1 and (GetTask(85) == 1 or GetTask(85) == 2) then
			Say("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",7,
			"Tr� l�i ��a �i�m c�/LastReturn",
			"Khu v�c luy�n c�ng/ddnlc",
			--"Khu v�c luy�n c�ng h� tr� /bando9x",
			"Khu v�c th�nh th�/thanhthi",
			"�i Phong L�ng �� /pld",
			"��n n�i l�m nhi�m v� D� T�u /dichuyendatau",
			"��o t�y tu�/dtt",
			"Tho�t./no");
		else
			Say("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",6,
			"Tr� l�i ��a �i�m c�/LastReturn",
			"Khu v�c luy�n c�ng/ddnlc",
			--"Khu v�c luy�n c�ng h� tr� /bando9x",
			"Khu v�c th�nh th�/thanhthi",
			"�i Phong L�ng �� /pld",
			"��o t�y tu�/dtt",
			"Tho�t./no");
		end
	end
end
end;


function roibando()
if GetFaction() == "" then
Talk(1,"","B�n ch�a gia nh�p ph�i, kh�ng th� r�i kh�i b�n �� !")
return
end
	if GetTask(131) == 10000 then
		SetTask(115,10000)
	end
	Msg2Player("B�n �� r�i kh�i Long Tuy�n Th�n v� tham gia b�n �� Ba L�ng Huy�n ")
	SetRevPos(53,19)
	NewWorld(53,200*8,200*16)
end

function vsdao()
Say("<color=green>Xa Phu<color> B�n s� m�t 20 M�t �� Th�n B�, b�n c� ch�c ch�n mu�n v�o kh�ng ?",2,
"Ta mu�n v�o Vi S�n ��o/vsdao1",
"�� ta suy ngh� l�i /no")
end
function vsdaoxxx()
Say("<color=green>Xa Phu<color> Vui l�ng ch�n C�ng c�n v�o. L� ph� di chuy�n: 20 M�t �� Th�n B� ",3,
"Tr�ng th�i b�o h� [kh�ng team] /vsdao11",
"Tr�ng th�i chi�n ��u /vsdao22",
"Tho�t/no")
end
function vsdao22xxx()
Say("<color=green>Xa Phu<color> Vui l�ng ch�n C�ng c�n v�o. L� ph� di chuy�n: 20 M�t �� Th�n B� ",4,
"Vi S�n ��o 1 /vsdao1",
"Vi S�n ��o 2/vsdao1",
"Vi S�n ��o 3/vsdao1",
"Tho�t./no")
end

function vsdao1(nsel)

gio = tonumber(date("%H"))
numtb = 20
if gio == 21 then
numtb = 10
Msg2Player("Th�i gian Boss v� v�o Vi S�n ��o gi�m 50% s� l��ng y�u c�u !")
end

if GetItemCount(253) < numtb then
Talk(1,"","B�n kh�ng mang theo "..numtb.." t�m m�t �� th�n b�, kh�ng th� l�n ��o !")
return
end
for i=1,numtb do DelItem(253) end
SetPKState(1)
BlockPKState(1)
SetTempRevPos(24,1395*32,2783*32)
Msg2Player("�� di chuy�n ��n b�n �� Vi S�n ��o !")
Msg2SubWorld("��i hi�p [<color=green>"..GetName().."<color>] �� v�o Vi S�n ��o !")
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
Say("<color=green>Xa Phu<color> Vui l�ng ch�n C�ng c�n v�o. L� ph� di chuy�n: 20 M�t �� Th�n B� ",4,
"Vi S�n ��o 1 /vsdao2",
"Vi S�n ��o 2/vsdao2",
"Vi S�n ��o 3/vsdao2",
"Tho�t./no")
end

function vsdao2(nsel)
if GetItemCount(253) < 20 then
Talk(1,"","B�n kh�ng mang theo 20 t�m m�t �� th�n b�, kh�ng th� l�n ��o !")
return
end
for i=1,20 do DelItem(253) end
SetPKState(0)
SetCreateTeam(0);
BlockPKState(1)
SetTempRevPos(24,1395*32,2783*32)
Msg2Player("�� di chuy�n ��n b�n �� Vi S�n ��o !")
Msg2SubWorld("��i hi�p [<color=green>"..GetName().."<color>] �� v�o Vi S�n ��o !")
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
	Msg2Player("�ang di chuy�n sang b�n �� Minh Nguy�t Tr�n ")
	NewWorld(13,1597,3277)
else
	Talk(1,"","Ch� c� nh�n v�t d��i 130 ho�c nh�n v�t c� bi�u t��ng T�n Th� m�i ���c v�o !")
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
Talk(1,"","�� v�o b�n �� n�y c�c b�n qua <color=yellow>Chu Ti�n Tr�n<color> �� di chuy�n")
end

function ddnlcduatop() 
end


function bando9x() 
end

function ddnlc()
w,X,Y = GetWorldPos()
if w == 53 then
Say("<color=green>Xa Phu<color> Ch�n khu v�c luy�n c�ng:",6,
"Hoa s�n (C�p 10)/hoasoncanhky",
"Ph�c ng�u s�n (C�p 20)/phucnguuson",
"Tuy�t b�o ��ng (C�p 30)/tuyetbaodong",
"D��c v��ng ��ng (C�p 40)/duocvuongdong",
"T�n l�ng (C�p 50)/tanlang",
"Tho�t./no")
elseif w == 3 then
Say("<color=green>Xa Phu<color> Ch�n khu v�c luy�n c�ng:",6,
"Hoa s�n (C�p 10)/hoasoncanhky",
"Ph�c ng�u s�n (C�p 20)/phucnguuson",
"Tuy�t b�o ��ng (C�p 30)/tuyetbaodong",
"D��c v��ng ��ng (C�p 40)/duocvuongdong",
"T�n l�ng (C�p 50)/tanlang",
"Tho�t./no")
else
	if w == 9 then
		Say("<color=green>Xa Phu<color> Ch�n khu v�c luy�n c�ng:",5,
		"Xi v�u ��ng 2(c�p 60)/siviudong",
		"L�m du quan 2(C�p 70)/lamduquan",
		"Ch�n n�i tr��ng b�ch 2(C�p 80)/channuitruongbach",
		"M�c Cao Qu�t (C�p 90)/maccaoquat",
		--"Sa M�c S�n ��ng 1 (C�p 90)/samac1",
		"Tho�t./no")
	elseif w == 18 then
		Say("<color=green>Xa Phu<color> Ch�n khu v�c luy�n c�ng:",5,
		"Xi v�u ��ng (c�p 60)/siviudong",
		"L�m du quan (C�p 70)/lamduquan",
		"Ch�n n�i tr��ng b�ch (C�p 80)/channuitruongbach",
		"M�n B�c Th�o Nguy�n (C�p 90)/macbacthaonguyen",
		--"Sa M�c S�n ��ng 1 (C�p 90)/samac1",
		"Tho�t./no")
		
	elseif w == 17 then
		Say("<color=green>Xa Phu<color> Ch�n khu v�c luy�n c�ng:",5,
		"Xi v�u ��ng (c�p 60)/siviudong",
		"L�m du quan (C�p 70)/lamduquan",
		"Ch�n n�i tr��ng b�ch (C�p 80)/channuitruongbach",
		"Tr��ng b�ch s�n B�c(C�p 90)/truongbs",
		--"Sa M�c S�n ��ng 2 (C�p 90)/samac2",
		"Tho�t./no")

	elseif w == 15 then
		Say("<color=green>Xa Phu<color> Ch�n khu v�c luy�n c�ng:",5,
		"Xi v�u ��ng (c�p 60)/siviudong",
		"L�m du quan (C�p 70)/lamduquan",
		"Ch�n n�i tr��ng b�ch (C�p 80)/channuitruongbach",
		"Tr��ng b�ch s�n nam (C�p 90)/truongbachnam",
		--"Sa M�c S�n ��ng 3 (C�p 90)/samac3",
		"Tho�t./no")

	end
end
end

function ddnlc1()
w,X,Y = GetWorldPos()
if w == 53 or w == 3 then
Say("<color=green>Xa Phu<color> Ch�n khu v�c luy�n c�ng:",2,
"Tuy�t b�o ��ng 2 (C�p 30)/tuyetbaodong1",
"Tho�t./no")
else
		Say("<color=green>Xa Phu<color> Ch�n khu v�c luy�n c�ng:",2,
		"Ch�n n�i tr��ng b�ch 2(C�p 80)/channuitruongbach1",
		"Tho�t./no")
end
end

function LastReturn()
--if GetCash() < 500 then
--Talk(1,"","Kh�ng �� 500 l��ng, ko th� tr� l�i ��a �i�m c� !")
--return
--end

	ReturnFromPortal()
	SetPunish(0)
end;



function dtt()
	if GetTask(196) == 0 then
	Say("<color=green>Xa Phu<color>: B�n c� ch�c ch�n mu�n l�n ��o T�y tu� kh�ng ?: ",2,
	"Ta mu�n t�y tu� mi�n ph�/ditt",
	"Tho�t./no")
	elseif GetTask(196) >= 1 then
		SayEx({"<color=green>Xa Phu<color> : Ng��i mu�n �� ��o t�y tu� l�m g� ?",
"Ta ��n �� T�y �i�m K� n�ng./comeTT",
"Ta ��n �� T�y �i�m Ti�m n�ng/comeTT",
"T�y �i�m Ti�m n�ng v� K� N�ng./comeTT",
"Quay l�i./main","Tho�t./Exit"})
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
		Msg2Player("Ng�i y�n! �ang �i ��n ��o T�y tu�...")
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
		Talk(1,"","<color=green>Xa Phu<color> : Mu�n �� ���c ��o t�y tu� c�n c� : 1 <color=pink>T� thu� tinh<color>,1 <color=green>L�c thu� tinh<color>,1 <color=blue>Lam thu� tinh<color>.")
		end
	elseif id == 2 then
		if GetItemCount(31) >= 6 then
for k=1,6 do DelItem(31) end
			SetTask(196,4)
			MoveNPC(20,200,200,9,8,0,0);
			SetPunish(0)
			Msg2Player("Ng�i y�n! �ang �i ��n ��o T�y tu�...")
		SetRevPos(14);
		else
		Talk(1,"","<color=green>Xa Phu<color> : Mu�n �� ��o t�y tu� c�n c� : 6 <color=green>T�nh h�ng B�o th�ch<color>.")
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
			Msg2Player("Ng�i y�n! �ang �i ��n ��o T�y tu�...")
SetRevPos(14);
		else
		Talk(1,"","<color=green>Xa Phu<color> : Mu�n ��n ��o T�y tu� c�n c� : 1 <color=pink>T� thu� tinh<color>,1 <color=green>L�c thu� tinh<color>,1 <color=blue>Lam thu� tinh<color>, 6 <color=green>T�nh h�ng B�o th�ch<color>")
		end
	end
end;






function thanhthi()
w,X,Y = GetWorldPos()
if w == 53 then
Say("Ch�n Th�nh Th� mu�n ��n : ",7,
"T��ng D��ng./tuongduong",
"Th�nh ��/thanhdo",
"Ph��ng T��ng/phuongtuong",
"Bi�n Kinh/bienkinh",
"Chu Ti�n Tr�n/chutientran",
"Giang T�n Th�n/giangtan",
--"Long Tuy�n Th�n/longtuyen",
"Tho�t./no")
elseif w == 18 then
Say("Ch�n Th�nh Th� mu�n ��n : ",7,
"T��ng D��ng./tuongduong",
"Ph��ng T��ng/phuongtuong",
"Bi�n Kinh/bienkinh",
"Chu Ti�n Tr�n/chutientran",
"Ba L�ng Huy�n./blh11",
"Giang T�n Th�n/giangtan",
--"Long Tuy�n Th�n/longtuyen",
"Tho�t./no")
elseif w == 15 then
Say("Ch�n Th�nh Th� mu�n ��n : ",7,
"Ph��ng T��ng/phuongtuong",
"Bi�n Kinh/bienkinh",
"Th�nh ��/thanhdo",
"Ba L�ng Huy�n./blh11",
"Chu Ti�n Tr�n/chutientran",
"Giang T�n Th�n/giangtan",
--"Long Tuy�n Th�n/longtuyen",
"Tho�t./no")
elseif w == 17 then
Say("Ch�n Th�nh Th� mu�n ��n : ",7,
"T��ng D��ng./tuongduong",
"Bi�n Kinh/bienkinh",
"Th�nh ��/thanhdo",
"Ba L�ng Huy�n./blh11",
"Chu Ti�n Tr�n/chutientran",
--"Long Tuy�n Th�n/longtuyen",
"Tho�t./no")
elseif w == 9 then
Say("Ch�n Th�nh Th� mu�n ��n : ",7,
"T��ng D��ng./tuongduong",
"Ph��ng T��ng/phuongtuong",
"Th�nh ��/thanhdo",
"Ba L�ng Huy�n./blh11",
"Chu Ti�n Tr�n/chutientran",
"Giang T�n Th�n/giangtan",
--"Long Tuy�n Th�n/longtuyen",
"Tho�t./no")
elseif w == 3 then
Say("Ch�n Th�nh Th� mu�n ��n : ",7,
"Bi�n Kinh/bienkinh",
"Th�nh ��/thanhdo",
"T��ng D��ng./tuongduong",
"Ph��ng T��ng/phuongtuong",
"Ba L�ng Huy�n./blh11",
"Giang T�n Th�n/giangtan",
--"Long Tuy�n Th�n/longtuyen",
"Tho�t./no")
else
Say("Ch�n Th�nh Th� mu�n ��n : ",2,
"Ba L�ng Huy�n./blh11",
"Tho�t./no")
end
end;

function blh11()
SetFightState(0)
NewWorld(53,197*8,202*16);
end

function giangtan()
if GetFaction() == "" then
Talk(1,"","Ch�a c� m�n ph�i kh�ng ���c v�o Giang T�n Th�n !")
return
end


SetFightState(0)
NewWorld(66,432 * 8, 382*16)
end

function longtuyen()
if GetFaction() == "" then
Talk(1,"","Ch�a c� m�n ph�i kh�ng ���c v�o Giang T�n Th�n !")
return
end
if GetTask(115) ~= 10000 then
Talk(1,"","Ch� c� nh�n v�t �ua Top m�i ���c v�o !")
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
Talk(1,"","B�n kh�ng �� 200 l��ng kh�ng th� di chuy�n T��ng D��ng!")
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
Talk(1,"","B�n kh�ng �� 200 l��ng kh�ng th� di chuy�n Ph��ng T��ng!")
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
Talk(1,"","B�n kh�ng �� 200 l��ng kh�ng th� di chuy�n Bi�n Kinh !")
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
Talk(1,"","B�n kh�ng �� 200 l��ng kh�ng th� di chuy�n Th�nh �� !")
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
Msg2Player("B�n �� ��n ��o Hoa Nguy�n !");
SetFightState(0);
SetRevPos(0);
SetLogoutRV(0)
NewWorld(4, toadox, toadoy);
else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>3 Thu� tinh kh�c nhau v� 6 T�nh h�ng B�o th�ch<color>, kh�ng th� di chuy�n")
end 
end;

function hoasoncanhky()
	if (GetCash() >= 0) then
			--Pay(100)
			toadox = 325*8
			toadoy = 222*16
			Msg2Player("Ng�i y�n! Ch�ng ta �i Hoa s�n c�nh k� tr��ng...!");
			SetFightState(1);
			SetLogoutRV(0)
			SetPunish(0)
			NewWorld(2, toadox, toadoy);

		      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>100 l��ng<color>, kh�ng th� di chuy�n")
	end
end;
function hoasoncanhky2()
	if (GetCash() >= 0) then
			toadox = 325*8
			toadoy = 222*16
			Msg2Player("Ng�i y�n! Ch�ng ta �i Hoa s�n c�nh k� tr��ng...!");
			SetFightState(1);
			SetLogoutRV(0)
			SetPunish(0)
			NewWorld(86, toadox, toadoy);

		      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>100 l��ng<color>, kh�ng th� di chuy�n")
	end
end;


function phucnguuson()
if GetLevel() < 20 then
Talk(1,"","��ng c�p d��i 20 kh�ng th� v�o b�n �� n�y !")
return
end
	if (GetCash() >= 0) then
		--Pay(200)
toadox = 206*8
toadoy = 223*16
Msg2Player("Ng�i y�n! Ch�ng ta �i Ph�c Ng�u S�n...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(8, toadox, toadoy);
		

     
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>200 l��ng<color>, kh�ng th� di chuy�n")
	end
end;
function phucnguuson2()
	if (GetCash() >= 0) then
		--Pay(200)
toadox = 206*8
toadoy = 223*16
Msg2Player("Ng�i y�n! Ch�ng ta �i Ph�c Ng�u S�n...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(87, toadox, toadoy);
		

     
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>200 l��ng<color>, kh�ng th� di chuy�n")
	end
end;

function tuyetbaodong()
if GetLevel() < 30 then
Talk(1,"","��ng c�p d��i 30 kh�ng th� v�o b�n �� n�y !")
return
end
if (GetCash() >= 0) then
		--Pay(300)
toadox = 1614 - 8 + random(0,16)
toadoy = 3300 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i Tuy�t B�o ��ng ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(100, toadox, toadoy);

        
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>300 l��ng<color>, kh�ng th� di chuy�n")
	end
end;
function tuyetbaodong2()
if (GetCash() >= 0) then
		--Pay(300)
toadox = 1614 - 8 + random(0,16)
toadoy = 3300 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i Tuy�t B�o ��ng ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(88, toadox, toadoy);

        
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>300 l��ng<color>, kh�ng th� di chuy�n")
	end
end;

function duocvuongdong()
if GetLevel() < 40 then
Talk(1,"","��ng c�p d��i 40 kh�ng th� v�o b�n �� n�y !")
return
end
	if (GetCash() >= 0) then
	--	Pay(400)
toadox = 200*8
toadoy = 195*16
Msg2Player("Ng�i y�n! Ch�ng ta �i D��c V��ng ��ng ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(101, toadox, toadoy);

       
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>400 l��ng<color>, kh�ng th� di chuy�n")
	end
end;

function duocvuongdong2()
	if (GetCash() >= 0) then
		--Pay(400)
toadox = 200*8
toadoy = 195*16
Msg2Player("Ng�i y�n! Ch�ng ta �i D��c V��ng ��ng ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(89, toadox, toadoy);

       
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>400 l��ng<color>, kh�ng th� di chuy�n")
	end
end;




function tanlang()
if GetLevel() < 50 then
Talk(1,"","��ng c�p d��i 50 kh�ng th� v�o b�n �� n�y !")
return
end
if (GetCash() >= 0) then
--		Pay(500)
toadox = 204*8
toadoy = 203*16
Msg2Player("Ng�i y�n! Ch�ng ta �i T�n l�ng...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(187, toadox, toadoy);

      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>500 l��ng<color>, kh�ng th� di chuy�n")
	end
end;

function tanlang2()
if GetLevel() < 50 then
Talk(1,"","��ng c�p d��i 50 kh�ng th� v�o b�n �� n�y !")
return
end
if (GetCash() >= 0) then
		--Pay(500)
toadox = 204*8
toadoy = 203*16
Msg2Player("Ng�i y�n! Ch�ng ta �i T�n l�ng...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(90, toadox, toadoy);

      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>500 l��ng<color>, kh�ng th� di chuy�n")
	end
end;


function siviudong()
if GetLevel() < 60 then
Talk(1,"","��ng c�p d��i 60 kh�ng th� v�o b�n �� n�y !")
return
end
	if (GetCash() >= 0) then
		--Pay(600)
toadox = 224*8
toadoy = 189*16
Msg2Player("Ng�i y�n! Ch�ng ta �i Xi V�u ��ng ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(75, toadox, toadoy);

      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>600 l��ng<color>, kh�ng th� di chuy�n")
	end
end;

function siviudong2()
if GetLevel() < 60 then
Talk(1,"","��ng c�p d��i 60 kh�ng th� v�o b�n �� n�y !")
return
end
	if (GetCash() >= 0) then
		--Pay(600)
toadox = 224*8
toadoy = 189*16
Msg2Player("Ng�i y�n! Ch�ng ta �i Xi V�u ��ng ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(91, toadox, toadoy);

      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>600 l��ng<color>, kh�ng th� di chuy�n")
	end
end;



function lamduquan()
if GetLevel() < 70 then
Talk(1,"","��ng c�p d��i 70 kh�ng th� v�o b�n �� n�y !")
return
end
	if (GetCash() >= 0) then
		--Pay(700)
toadox = 1642 - 8 + random(0,16)
toadoy = 3575 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i L�m Du Quan ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(102, toadox, toadoy);

     
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>700 l��ng<color>, kh�ng th� di chuy�n")
	end
end;
function lamduquan2()
if GetLevel() <70 then
Talk(1,"","��ng c�p d��i 70 kh�ng th� v�o b�n �� n�y !")
return
end
	if (GetCash() >= 0) then
		--Pay(700)
toadox = 1642 - 8 + random(0,16)
toadoy = 3575 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i L�m Du Quan ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(92, toadox, toadoy);

     
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>700 l��ng<color>, kh�ng th� di chuy�n")
	end
end;


function channuitruongbach()
if GetLevel() < 80 then
Talk(1,"","��ng c�p d��i 80 kh�ng th� v�o b�n �� n�y !")
return
end
if (GetCash() >= 800) then
		Pay(800)
toadox = 1144 - 8 + random(0,16)
toadoy = 3116 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i Ch�n N�i Tr��ng B�ch ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(104, toadox, toadoy);

   
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>800 l��ng<color>, kh�ng th� di chuy�n")
	end
end;
function channuitruongbach2()
if GetLevel() < 80 then
Talk(1,"","��ng c�p d��i 80 kh�ng th� v�o b�n �� n�y !")
return
end
if (GetCash() >= 0) then
		--Pay(800)
toadox = 1144 - 8 + random(0,16)
toadoy = 3116 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i Ch�n N�i Tr��ng B�ch ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(93, toadox, toadoy);

   
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>800 l��ng<color>, kh�ng th� di chuy�n")
	end
end;

function truongbs()
if GetLevel() < 90 then
Talk(1,"","��ng c�p d��i 90 kh�ng th� v�o b�n �� n�y !")
return
end
	if (GetCash() >= 700) then
		Pay(700)
toadox = 1589 - 8 + random(0,16)
toadoy = 3160 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i Tr��ng B�ch S�n ...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(105, toadox, toadoy);
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>700 l��ng<color>, kh�ng th� di chuy�n")
	end
end;


function truongbachnam()
if GetLevel() < 90 then
Talk(1,"","��ng c�p d��i 90 kh�ng th� v�o b�n �� n�y !")
return
end
	if (GetCash() >= 700) then
		Pay(700)
toadox = 1552 - 8 + random(0,16)
toadoy = 3104 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i Tr��ng B�ch S�n Nam...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(22, toadox, toadoy);

	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>700 l��ng<color>, kh�ng th� di chuy�n")
	end
end;





function maccaoquat()
if GetLevel() < 90 then
Talk(1,"","��ng c�p d��i 90 kh�ng th� v�o b�n �� n�y !")
return
end
gold = 700
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ng�i y�n! Ch�ng ta �i M�c Cao Qu�t...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(79,1870,3408);
	else
		Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end;


function macbacthaonguyen()
if GetLevel() < 90 then
Talk(1,"","��ng c�p d��i 90 kh�ng th� v�o b�n �� n�y !")
return
end
gold = 700
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ng�i y�n! Ch�ng ta �i M�n B�c Th�o Nguy�n...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(21,1237, 3183);

	else
		Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end;
function macbacthaonguyen2()
if GetLevel() < 90 then
Talk(1,"","��ng c�p d��i 90 kh�ng th� v�o b�n �� n�y !")
return
end

gold = 700
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ng�i y�n! Ch�ng ta �i M�n B�c Th�o Nguy�n...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(96,1237, 3183);

	else
		Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end;
function  no()
end;









function hoasoncanhky1()
	if (GetCash() >= 100) then
			Pay(100)
			toadox = 325*8
			toadoy = 222*16
			Msg2Player("Ng�i y�n! Ch�ng ta �i Hoa s�n c�nh k� tr��ng 2...!");
			
			SetFightState(1);
			SetLogoutRV(0)
			SetPunish(0)

			NewWorld(86, toadox, toadoy);

		      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>100 l��ng<color>, kh�ng th� di chuy�n")
	end
end;

function phucnguuson1()
	if (GetCash() >= 200) then
		Pay(200)
toadox = 206*8
toadoy = 223*16


Msg2Player("Ng�i y�n! Ch�ng ta �i Ph�c Ng�u S�n 2...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(87, toadox, toadoy);
		

     
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>200 l��ng<color>, kh�ng th� di chuy�n")
	end
end;


function tuyetbaodong1()
if (GetCash() >= 300) then
		Pay(300)
toadox = 1614 - 8 + random(0,16)
toadoy = 3300 - 16 + random(0,32)


Msg2Player("Ng�i y�n! Ch�ng ta �i Tuy�t B�o ��ng 2...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(88, toadox, toadoy);

        
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>300 l��ng<color>, kh�ng th� di chuy�n")
	end
end;


function duocvuongdong1()
	if (GetCash() >= 400) then
		Pay(400)
toadox = 200*8
toadoy = 195*16
Msg2Player("Ng�i y�n! Ch�ng ta �i D��c V��ng ��ng 2...!");


		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(89, toadox, toadoy);

       
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>400 l��ng<color>, kh�ng th� di chuy�n")
	end
end;





function tanlang1()
if (GetCash() >= 500) then
		Pay(500)
toadox = 204*8
toadoy = 203*16


Msg2Player("Ng�i y�n! Ch�ng ta �i T�n l�ng 2...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(90, toadox, toadoy);

      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>500 l��ng<color>, kh�ng th� di chuy�n")
	end
end;



function siviudong1()
	if (GetCash() >= 600) then
		Pay(600)
toadox = 224*8
toadoy = 189*16


Msg2Player("Ng�i y�n! Ch�ng ta �i Xi V�u ��ng 2...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(91, toadox, toadoy);

      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>600 l��ng<color>, kh�ng th� di chuy�n")
	end
end;




function lamduquan1()
	if (GetCash() >= 700) then
		Pay(700)
toadox = 1642 - 8 + random(0,16)
toadoy = 3575 - 16 + random(0,32)


Msg2Player("Ng�i y�n! Ch�ng ta �i L�m Du Quan 2...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(92, toadox, toadoy);

     
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>700 l��ng<color>, kh�ng th� di chuy�n")
	end
end;



function channuitruongbach1()
if (GetCash() >= 800) then
		Pay(800)
toadox = 1144 - 8 + random(0,16)
toadoy = 3116 - 16 + random(0,32)


Msg2Player("Ng�i y�n! Ch�ng ta �i Ch�n N�i Tr��ng B�ch 2...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(93, toadox, toadoy);

   
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>800 l��ng<color>, kh�ng th� di chuy�n")
	end
end;
function channuitruongbach3()
if (GetCash() >= 800) then
		Pay(800)
toadox = 1144 - 8 + random(0,16)
toadoy = 3116 - 16 + random(0,32)


Msg2Player("Ng�i y�n! Ch�ng ta �i Ch�n N�i Tr��ng B�ch 4...!");
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
		NewWorld(99, toadox, toadoy);

   
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>800 l��ng<color>, kh�ng th� di chuy�n")
	end
end;


function samac1()
gold = 2000
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ng�i y�n! Ch�ng ta �i Sa M�c S�n ��ng 1...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(109,1580,3189)
	else
		Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end;
function samac2()
gold = 2000
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ng�i y�n! Ch�ng ta �i Sa M�c S�n ��ng 2...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(110,1818,3414)
	else
		Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end;

function samacdiabieu()
if GetLevel() < 70 then
Talk(1,"","��ng c�p d��i 70 ko th� l�n b�n �� 9x !")
return
end

gold = 0
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ng�i y�n! Ch�ng ta �i Sa M�c ��a Bi�u...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(107,1616,3218)
	else
		Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end
function samac3()
gold = 2000
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ng�i y�n! Ch�ng ta �i Sa M�c S�n ��ng 3...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(111,1582,3242)
	else
		Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end;

function coduong1()
if GetLevel() < 70 then
Talk(1,"","��ng c�p d��i 70 ko th� l�n b�n �� 9x !")
return
end

gold = 0
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ng�i y�n! Ch�ng ta �i C� D��ng ��ng ...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(63,1610,3170)
	else
		Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end;
function truongcamon1()
gold = 2000
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ng�i y�n! Ch�ng ta �i Tr��ng Ca M�n 1...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(64,216*8,215*16)
	else
		Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end;
function duongtrung1()
if GetLevel() < 70 then
Talk(1,"","��ng c�p d��i 70 ko th� l�n b�n �� 9x !")
return
end

gold = 0
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ng�i y�n! Ch�ng ta �i D��ng Trung ��ng...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(62,1698,3405)
	else
		Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end;
function truongcamon2()
if GetLevel() < 70 then
Talk(1,"","��ng c�p d��i 70 ko th� l�n b�n �� 9x !")
return
end

gold = 0
	if (GetCash() >= gold) then
		Pay(gold)
		Msg2Player("Ng�i y�n! Ch�ng ta �i Tr��ng Ca M�n 2...!");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		NewWorld(65,216*8,215*16)
	else
		Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end;

function pld()
if GetItemCount(135) == 0 then
Talk(1,"","B�n kh�ng mang theo <color=red>L�nh B�i Phong L�ng �� <color>,kh�ng th� di chuy�n")
Msg2Player("H�y ��n Th�n B� Th��ng Nh�n ho�c B�o V�t K� Tr�n C�c �� mua L�nh B�i !")

return
end

if (GetCash() >= 5000) then
		Pay(5000)
		Msg2Player("Ng�i y�n! Ch�ng ta �i Phong L�ng �� ...!");
		SetFightState(1);
		SetLogoutRV(1)
		SetPunish(0)
		NewWorld(46,1125,3189)	-- Map : Phong Lang d

	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>5000 l��ng<color>, kh�ng th� di chuy�n")
	end
end
