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


function main(sel)

if GetAccount() == "" then
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
	if w == 53 or w == 3 then
		if GetTask(84) == 1 and (GetTask(85) == 1 or GetTask(85) == 2) then
		Say("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",6,
		"Tr� l�i ��a �i�m c�/LastReturn",
		"Khu v�c luy�n c�ng/ddnlc",
		"Khu v�c luy�n c�ng t�m th�i/ddnlc1",
		"Khu v�c th�nh th�/thanhthi",
		"��n n�i l�m nhi�m v� D� T�u /dichuyendatau",
		"Tho�t./no");
		else
		Say("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",5,
		"Tr� l�i ��a �i�m c�/LastReturn",
		"Khu v�c luy�n c�ng/ddnlc",
			"Khu v�c luy�n c�ng t�m th�i/ddnlc1",
		"Khu v�c th�nh th�/thanhthi",
		"Tho�t./no");
		end
	else
		if GetTask(84) == 1 and (GetTask(85) == 1 or GetTask(85) == 2) then
			Say("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",7,
			"Tr� l�i ��a �i�m c�/LastReturn",
			"Khu v�c luy�n c�ng/ddnlc",
			"Khu v�c luy�n c�ng t�m th�i/ddnlc1",
			"Khu v�c th�nh th�/thanhthi",
			"��n n�i l�m nhi�m v� D� T�u /dichuyendatau",
			"��o t�y tu�/dtt",
			"Tho�t./no");
		else
			Say("<color=blue>Xa Phu:<color> C�c h� mu�n di chuy�n ��n n�i n�o?",6,
			"Tr� l�i ��a �i�m c�/LastReturn",
			"Khu v�c luy�n c�ng/ddnlc",
			"Khu v�c luy�n c�ng t�m th�i/ddnlc1",
			"Khu v�c th�nh th�/thanhthi",
			"��o t�y tu�/dtt",
			"Tho�t./no");
		end
	end
end
end;

function minhnguyet()
	NewWorld(13,200*8,206*16)
	SetFightState(0)
	Msg2Player("�ang di chuy�n sang b�n �� Minh Nguy�t Tr�n ")
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

function ddnlc()
w,X,Y = GetWorldPos()
if w == 53 or w == 3 then
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
		"Xi v�u ��ng (c�p 60)/siviudong",
		"L�m du quan (C�p 70)/lamduquan",
		"Ch�n n�i tr��ng b�ch (C�p 80)/channuitruongbach",
		"M�c Cao Qu�t (C�p 90)/maccaoquat",
		"Tho�t./no")
	elseif w == 18 then
		Say("<color=green>Xa Phu<color> Ch�n khu v�c luy�n c�ng:",5,
		"Xi v�u ��ng (c�p 60)/siviudong",
		"L�m du quan (C�p 70)/lamduquan",
		"Ch�n n�i tr��ng b�ch (C�p 80)/channuitruongbach",
		"M�n B�c Th�o NGuy�n (C�p 90)/macbacthaonguyen",
		"Tho�t./no")
		
	elseif w == 17 then
		Say("<color=green>Xa Phu<color> Ch�n khu v�c luy�n c�ng:",5,
		"Xi v�u ��ng (c�p 60)/siviudong",
		"L�m du quan (C�p 70)/lamduquan",
		"Ch�n n�i tr��ng b�ch (C�p 80)/channuitruongbach",
		"Tr��ng b�ch s�n B�c(C�p 90)/truongbs",
		"Tho�t./no")

	elseif w == 15 then
		Say("<color=green>Xa Phu<color> Ch�n khu v�c luy�n c�ng:",5,
		"Xi v�u ��ng (c�p 60)/siviudong",
		"L�m du quan (C�p 70)/lamduquan",
		"Ch�n n�i tr��ng b�ch (C�p 80)/channuitruongbach",
		"Tr��ng b�ch s�n nam (C�p 90)/truongbachnam",
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
		Say("<color=green>Xa Phu<color> Ch�n khu v�c luy�n c�ng:",5,
		"Xi v�u ��ng 2 (c�p 60)/siviudong1",
		"L�m du quan 2(C�p 70)/lamduquan1",
		"L�m du quan 3(C�p 70)/lamduquan2",
		"Ch�n n�i tr��ng b�ch 2(C�p 80)/channuitruongbach1",
		"Tho�t./no")
end
end

function LastReturn()
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
Say("Ch�n Th�nh Th� mu�n ��n : ",6,
"T��ng D��ng./tuongduong",
"Th�nh ��/thanhdo",
"Ph��ng T��ng/phuongtuong",
"Bi�n Kinh/bienkinh",
"Chu Ti�n Tr�n/chutientran",
"Tho�t./no")
elseif w == 18 then
Say("Ch�n Th�nh Th� mu�n ��n : ",6,
"T��ng D��ng./tuongduong",
"Ph��ng T��ng/phuongtuong",
"Bi�n Kinh/bienkinh",
"Chu Ti�n Tr�n/chutientran",
"Ba L�ng Huy�n./blh11",
"Tho�t./no")
elseif w == 15 then
Say("Ch�n Th�nh Th� mu�n ��n : ",6,
"Ph��ng T��ng/phuongtuong",
"Bi�n Kinh/bienkinh",
"Th�nh ��/thanhdo",
"Ba L�ng Huy�n./blh11",
"Chu Ti�n Tr�n/chutientran",
"Tho�t./no")
elseif w == 17 then
Say("Ch�n Th�nh Th� mu�n ��n : ",6,
"T��ng D��ng./tuongduong",
"Bi�n Kinh/bienkinh",
"Th�nh ��/thanhdo",
"Ba L�ng Huy�n./blh11",
"Chu Ti�n Tr�n/chutientran",
"Tho�t./no")
elseif w == 9 then
Say("Ch�n Th�nh Th� mu�n ��n : ",6,
"T��ng D��ng./tuongduong",
"Ph��ng T��ng/phuongtuong",
"Th�nh ��/thanhdo",
"Ba L�ng Huy�n./blh11",
"Chu Ti�n Tr�n/chutientran",
"Tho�t./no")
elseif w == 3 then
Say("Ch�n Th�nh Th� mu�n ��n : ",6,
"Bi�n Kinh/bienkinh",
"Th�nh ��/thanhdo",
"T��ng D��ng./tuongduong",
"Ph��ng T��ng/phuongtuong",
"Ba L�ng Huy�n./blh11",
"Tho�t./no")
else
Say("Ch�n Th�nh Th� mu�n ��n : ",2,
"Ba L�ng Huy�n./blh11",
"Tho�t./no")
end
end;

function blh11()

NewWorld(53,197*8,202*16);
SetFightState(0)

end


function chutientran()
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
SetFightState(0)

end
function tuongduong()
if GetCash() < 0 then
Talk(1,"","B�n kh�ng �� 200 l��ng kh�ng th� di chuy�n T��ng D��ng!")
return
end
Pay(200)

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
SetFightState(0)

end

function phuongtuong()
if GetCash() < 0 then
Talk(1,"","B�n kh�ng �� 200 l��ng kh�ng th� di chuy�n Ph��ng T��ng!")
return
end
Pay(200)

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
SetFightState(0)

end
function bienkinh()
if GetCash() < 0 then
Talk(1,"","B�n kh�ng �� 200 l��ng kh�ng th� di chuy�n Bi�n Kinh !")
return
end
Pay(200)
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
SetFightState(0)

end



function thanhdo()
if GetCash() < 0 then
Talk(1,"","B�n kh�ng �� 200 l��ng kh�ng th� di chuy�n Th�nh �� !")
return
end
Pay(200)
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
SetFightState(0)

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
NewWorld(4, toadox, toadoy);
SetFightState(0);
SetRevPos(0);
SetLogoutRV(0)
else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>3 Thu� tinh kh�c nhau v� 6 T�nh h�ng B�o th�ch<color>, kh�ng th� di chuy�n")
end 
end;

function hoasoncanhky()
	if (GetCash() >= 100) then
			Pay(100)
			toadox = 325*8
			toadoy = 222*16
			Msg2Player("Ng�i y�n! Ch�ng ta �i Hoa s�n c�nh k� tr��ng..........");
			NewWorld(2, toadox, toadoy);
			SetFightState(1);
			SetLogoutRV(0)
		SetPunish(0)

		      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>100 luong<color>, kh�ng th� di chuy�n")
	end
end;

function phucnguuson()
	if (GetCash() >= 200) then
		Pay(200)
toadox = 206*8
toadoy = 223*16
Msg2Player("Ng�i y�n! Ch�ng ta �i Ph�c Ng�u S�n..........");
		NewWorld(8, toadox, toadoy);
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		

     
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>200 luong<color>, kh�ng th� di chuy�n")
	end
end;


function tuyetbaodong()
if (GetCash() >= 300) then
		Pay(300)
toadox = 1614 - 8 + random(0,16)
toadoy = 3300 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i Tuy�t B�o ��ng ..........");
		NewWorld(100, toadox, toadoy);
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)

        
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>300 luong<color>, kh�ng th� di chuy�n")
	end
end;


function duocvuongdong()
	if (GetCash() >= 400) then
		Pay(400)
toadox = 200*8
toadoy = 195*16
Msg2Player("Ng�i y�n! Ch�ng ta �i D��c V��ng ��ng ..........");
		NewWorld(101, toadox, toadoy);
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)

       
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>400 luong<color>, kh�ng th� di chuy�n")
	end
end;





function tanlang()
if (GetCash() >= 500) then
		Pay(500)
toadox = 204*8
toadoy = 203*16
Msg2Player("Ng�i y�n! Ch�ng ta �i T�n l�ng..........");
		NewWorld(187, toadox, toadoy);
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)

      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>500 luong<color>, kh�ng th� di chuy�n")
	end
end;



function siviudong()
	if (GetCash() >= 600) then
		Pay(600)
toadox = 224*8
toadoy = 189*16
Msg2Player("Ng�i y�n! Ch�ng ta �i Xi V�u ��ng ..........");
		NewWorld(75, toadox, toadoy);
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)

      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>600 luong<color>, kh�ng th� di chuy�n")
	end
end;




function lamduquan()
	if (GetCash() >= 700) then
		Pay(700)
toadox = 1642 - 8 + random(0,16)
toadoy = 3575 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i L�m Du Quan ..........");
		NewWorld(102, toadox, toadoy);
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)

     
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>700 luong<color>, kh�ng th� di chuy�n")
	end
end;



function channuitruongbach()
if (GetCash() >= 800) then
		Pay(800)
toadox = 1144 - 8 + random(0,16)
toadoy = 3116 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i Ch�n N�i Tr��ng B�ch ..........");
		NewWorld(104, toadox, toadoy);
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)

   
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>800 luong<color>, kh�ng th� di chuy�n")
	end
end;


function truongbs()
	if (GetCash() >= 900) then
		Pay(900)
toadox = 1589 - 8 + random(0,16)
toadoy = 3160 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i Tr��ng B�ch S�n ..........");
		NewWorld(105, toadox, toadoy);
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>900 luong<color>, kh�ng th� di chuy�n")
	end
end;


function truongbachnam()
	if (GetCash() >= 900) then
		Pay(900)
toadox = 1552 - 8 + random(0,16)
toadoy = 3104 - 16 + random(0,32)
Msg2Player("Ng�i y�n! Ch�ng ta �i Tr��ng B�ch S�n Nam..........");
		NewWorld(22, toadox, toadoy);
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)

	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>900 luong<color>, kh�ng th� di chuy�n")
	end
end;





function maccaoquat()
gold = 900
	if (GetCash() >= gold) then
		Pay(gold)
		NewWorld(79,1870,3408);
		Msg2Player("Ng�i y�n! Ch�ng ta �i M�c Cao Qu�t..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
	else
		Talk(1,"no","C�c h� kh�ng mang �� <color=red>"..gold.." l��ng<color>, kh�ng th� di chuy�n")
	end
end;


function macbacthaonguyen()
gold = 900
	if (GetCash() >= gold) then
		Pay(gold)
		NewWorld(21,1237, 3183);
		Msg2Player("Ng�i y�n! Ch�ng ta �i M�n B�c Th�o Nguy�n..........");
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
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
			Msg2Player("Ng�i y�n! Ch�ng ta �i Hoa s�n c�nh k� tr��ng 2..........");
			

			NewWorld(86, toadox, toadoy);
			SetFightState(1);
			SetLogoutRV(0)
		SetPunish(0)

		      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>100 luong<color>, kh�ng th� di chuy�n")
	end
end;

function phucnguuson1()
	if (GetCash() >= 200) then
		Pay(200)
toadox = 206*8
toadoy = 223*16


Msg2Player("Ng�i y�n! Ch�ng ta �i Ph�c Ng�u S�n 2..........");
		NewWorld(87, toadox, toadoy);
		SetFightState(1);
		SetPunish(0)
		SetLogoutRV(0)
		

     
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>200 luong<color>, kh�ng th� di chuy�n")
	end
end;


function tuyetbaodong1()
if (GetCash() >= 300) then
		Pay(300)
toadox = 1614 - 8 + random(0,16)
toadoy = 3300 - 16 + random(0,32)


Msg2Player("Ng�i y�n! Ch�ng ta �i Tuy�t B�o ��ng 2..........");
		NewWorld(88, toadox, toadoy);
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)

        
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>300 luong<color>, kh�ng th� di chuy�n")
	end
end;


function duocvuongdong1()
	if (GetCash() >= 400) then
		Pay(400)
toadox = 200*8
toadoy = 195*16
Msg2Player("Ng�i y�n! Ch�ng ta �i D��c V��ng ��ng 2..........");


		NewWorld(89, toadox, toadoy);
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)

       
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>400 luong<color>, kh�ng th� di chuy�n")
	end
end;





function tanlang1()
if (GetCash() >= 500) then
		Pay(500)
toadox = 204*8
toadoy = 203*16


Msg2Player("Ng�i y�n! Ch�ng ta �i T�n l�ng 2..........");
		NewWorld(90, toadox, toadoy);
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)

      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>500 luong<color>, kh�ng th� di chuy�n")
	end
end;



function siviudong1()
	if (GetCash() >= 600) then
		Pay(600)
toadox = 224*8
toadoy = 189*16


Msg2Player("Ng�i y�n! Ch�ng ta �i Xi V�u ��ng 2..........");
		NewWorld(91, toadox, toadoy);
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)

      
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>600 luong<color>, kh�ng th� di chuy�n")
	end
end;




function lamduquan1()
	if (GetCash() >= 700) then
		Pay(700)
toadox = 1642 - 8 + random(0,16)
toadoy = 3575 - 16 + random(0,32)


Msg2Player("Ng�i y�n! Ch�ng ta �i L�m Du Quan 2..........");
		NewWorld(92, toadox, toadoy);
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)

     
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>700 luong<color>, kh�ng th� di chuy�n")
	end
end;

function lamduquan2()
	if (GetCash() >= 700) then
		Pay(700)
toadox = 1642 - 8 + random(0,16)
toadoy = 3575 - 16 + random(0,32)


Msg2Player("Ng�i y�n! Ch�ng ta �i L�m Du Quan 3..........");
		NewWorld(98, toadox, toadoy);
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)

     
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>700 luong<color>, kh�ng th� di chuy�n")
	end
end;


function channuitruongbach1()
if (GetCash() >= 800) then
		Pay(800)
toadox = 1144 - 8 + random(0,16)
toadoy = 3116 - 16 + random(0,32)


Msg2Player("Ng�i y�n! Ch�ng ta �i Ch�n N�i Tr��ng B�ch 2..........");
		NewWorld(93, toadox, toadoy);
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)

   
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>800 luong<color>, kh�ng th� di chuy�n")
	end
end;
function channuitruongbach3()
if (GetCash() >= 800) then
		Pay(800)
toadox = 1144 - 8 + random(0,16)
toadoy = 3116 - 16 + random(0,32)


Msg2Player("Ng�i y�n! Ch�ng ta �i Ch�n N�i Tr��ng B�ch 4..........");
		NewWorld(99, toadox, toadoy);
		SetFightState(1);
		SetLogoutRV(0)
		SetPunish(0)

   
	else
Talk(1,"no","C�c h� kh�ng mang �� <color=red>800 luong<color>, kh�ng th� di chuy�n")
	end
end;



