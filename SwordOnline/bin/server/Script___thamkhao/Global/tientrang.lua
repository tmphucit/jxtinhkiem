

function main()


vang = GetTask(99)
SayNew("<color=green>Ch� Ti�n Trang<color>:  Hi�n t�i ta �ang gi�  <color=yellow>"..vang.." Ti�n ��ng<color> c�a nh� ng��i. Ng��i g�p ta c� vi�c g� kh�ng?.",4,
--"R�t "..knb.." Kim Nguy�n B�o /rutknb",
--"R�t "..vang.." V�ng/ruttoanbovang",
"G�i Ti�n ��ng/new_guitiendong",
"R�t Ti�n ��ng/new_ruttiendong",
"Nh�n khuy�n m�i n�p th� /new_khuyenmai",

--"R�t ��i Kim Nguy�n B�o/new_rutknb1",
--"Gia h�n gi� ch�i /giahangiochoi",
--"V�o b�n �� t�m giam/vaotamgiam",
--"Nh�n ph�n th��ng Khuy�n M�i/ptquockhanh",
--"Nh�n th��ng Tu Luy�n �an/nhantuluyendan",
--"S� ki�n Gi�i Ph�ng Mi�n Nam 30-04/giaiphong_main",
--"��i V�ng Quay May M�n /nhanphanthuong83",
--"Ki�m Tra Top N�p Th� /quockhanhnhanphanthuong_duatop",
--"��i Kin Nguy�n B�o th�nh Ng�n L��ng/new_doiknb",
"Tho�t./no")
end

function new_khuyenmai()
if GetTask(995) == 111 then
	SetTask(995, 0)
	AddEventItem(913)
	Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng Khuy�n M�i N�p Th�: <color=yellow>T�y T�y L�nh")
	inlog_khuyenmai("[500] ["..GetAccount().."] ["..GetName().."]")
elseif 	GetTask(995) == 222 then
	SetTask(995, 0)
	AddEventItem(914)
	Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng Khuy�n M�i N�p Th�: <color=yellow>T�y T�y Mi�n Ph� ")
	inlog_khuyenmai("[1000] ["..GetAccount().."] ["..GetName().."]")
elseif 	GetTask(995) == 333 then
	SetTask(995, 0)
	AddEventItem(687)
	Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng Khuy�n M�i N�p Th�: <color=yellow>M� B�i 8x")
	inlog_khuyenmai("[2000] ["..GetAccount().."] ["..GetName().."]")
elseif 	GetTask(995) == 444 then
	SetTask(995, 0)
	AddItem(0,10,5,2,0,0,0)
	Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng Khuy�n M�i N�p Th�: <color=yellow>X�ch Th� ")
	inlog_khuyenmai("[3000] ["..GetAccount().."] ["..GetName().."]")
elseif 	GetTask(995) == 555 then
	SetTask(995, 0)
	AddItem(0,10,5,5,0,0,0)
	Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng Khuy�n M�i N�p Th�: <color=yellow>Chi�u D� Ng�c S� T� ")
	inlog_khuyenmai("[5000] ["..GetAccount().."] ["..GetName().."]")

else
	Talk(1,"","B�n kh�ng c� khuy�n m�i n�p th�, vui l�ng ki�m tra l�i !")
end
end
function new_guitiendong()
OpenStringBox(2,"Nh�p S� L��ng","new_guitiendong_1")
end
function new_guitiendong_1(num2)
if num2 == "" then
num2 = 0
end
num = tonumber(num2)

if num <= 0 then
return
end
sl = GetItemCount(697)
if GetItemCount(697) < num then
Talk(1,"","S� l��ng Ti�n ��ng trong h�nh trang kh�ng ��, vui l�ng ki�m tra l�i !")
return
end

for i=1,num do
		DelItem(697)
end

if GetItemCount(697) == sl - num then
SetTask(99, GetTask(99) + num)
SetTask(101, GetTask(101) + num)
Talk(1,"","�� g�i th�nh c�ng <color=yellow>"..num.." Ti�n ��ng<color> v�o Ti�n Trang.\nHi�n t�i b�n �ang g�i <color=green>"..GetTask(99).." Ti�n ��ng")
inlog("[G�i] "..GetAccount().." - "..GetName().." th�nh c�ng. Hanh Trang: "..GetItemCount(697).."  - Ti�n trang: "..GetTask(99).." ")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end


function new_ruttiendong()
OpenStringBox(2,"Nh�p S� L��ng","new_ruttiendong_1")
end

function new_ruttiendong_1(num2)
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

if num2 == "" then
num2 = 0
end
num = tonumber(num2)

if num <= 0 then
return
end

if num > 3000 then
num = 3000
end

sl = GetTask(99)
if GetTask(99) < num then
Talk(1,"","S� l��ng Ti�n ��ng trong Ti�n Trang kh�ng ��, vui l�ng ki�m tra l�i !")
return
end

SetTask(99, GetTask(99) - num)
SetTask(101, GetTask(101) - num)

if GetTask(99) == sl - num then
	for i=1,num do AddEventItem(697) end
Talk(1,"","�� r�t th�nh c�ng <color=yellow>"..num.." Ti�n ��ng<color>\nHi�n t�i ti�n trang c�n <color=green>"..GetTask(99).." Ti�n ��ng")
inlog("[R�t] "..GetAccount().." - "..GetName().." th�nh c�ng. Hanh Trang: "..GetItemCount(697).."  - Ti�n trang: "..GetTask(99).." ")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end






function ptquockhanh()

if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","H�nh trang kh�ng �� 2 x 3 � ch� tr�ng, xin ki�m tra l�i !")
return
end

if GetTask(459) == 0 then
	if GetTask(461) >= 6 then
		SetTask(459, 1)
		SetTask(100, GetTask(100) + 240)
		Msg2Player("B�n nh�n ���c 240 danh v�ng")
	else
		Talk(1,"","Ng��i ch�a ��t �� m�c T�ch L�y N�p Th�: <color=yellow>"..GetTask(461).." / 6 Kim Nguy�n B�o<color>, kh�ng  th� nh�n ph�n th��ng")
	end
elseif GetTask(459) == 1 then
	if GetTask(461) >= 12 then
		SetTask(459, 2)
		idxitem = AddEventItem(120)
		SetBindItem(idxitem , 1)
		Msg2Player("B�n nh�n ���c 1 Ti�n Th�o L� 6 Gi� [Kh�a]")
		idxitem = AddEventItem(116)
		SetBindItem(idxitem , 1)
		Msg2Player("B�n nh�n ���c 1 N� Nhi H�ng 6 Gi� [Kh�a]")
	else
		Talk(1,"","Ng��i ch�a ��t �� m�c T�ch L�y N�p Th�: <color=yellow>"..GetTask(461).." / 12 Kim Nguy�n B�o<color>, kh�ng  th� nh�n ph�n th��ng")
	end

elseif GetTask(459) == 2 then
	if GetTask(461) >= 30 then
		SetTask(459, 3)
		TayKyNang()
		TayTiemNang()
		KickOutSelf()
	else
		Talk(1,"","Ng��i ch�a ��t �� m�c T�ch L�y N�p Th�: <color=yellow>"..GetTask(461).." / 30 Kim Nguy�n B�o<color>, kh�ng  th� nh�n ph�n th��ng")
	end
elseif GetTask(459) == 3 then
	if GetTask(461) >= 60 then
		SetTask(459, 4)
		for p=1,5 do AddEventItem(650) end
		Msg2Player("B�n nh�n ���c 5 May M�n Nh�m")
	else
		Talk(1,"","Ng��i ch�a ��t �� m�c T�ch L�y N�p Th�: <color=yellow>"..GetTask(461).." / 60 Kim Nguy�n B�o<color>, kh�ng  th� nh�n ph�n th��ng")
	end
elseif GetTask(459) == 4 then
	if GetTask(461) >= 300 then
		SetTask(459, 5)
		for p=1,5 do AddEventItem(631) end
		Msg2Player("B�n nh�n ���c 5 ��i Kim Nguy�n B�o")
	else
		Talk(1,"","Ng��i ch�a ��t �� m�c T�ch L�y N�p Th�: <color=yellow>"..GetTask(461).." / 300 Kim Nguy�n B�o<color>, kh�ng  th� nh�n ph�n th��ng")
	end
end
end


mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function vaotamgiam()
w,x,y = GetWorldPos()
if w == 15 or w == 17 or w == 9 then
	SetTask(481,0)
	NewWorld(27,1569, 3217)
	Msg2Player("B�n �� ���c ��a v�o b�n �� t�m giam ")
else
	Talk(1,"","Ch� ���c v�o b�n �� t�m giam t�i Th�nh Th� !")
end
end


function giahangiochoi()
if GetItemCount(17) < 1 then
Talk(1,"","B�n kh�ng mang theo <color=yellow>Kim Nguy�n B�o<color>, kh�ng th� gia h�n gi� ch�i !")
return
end
slknb = GetItemCount(17)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
DelItem(17)
if GetItemCount(17) == slknb - 1 then		
	thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/logGiaHanKNB.txt", "a");
			if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." -"..GetLevel().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			
tinhtime = nam * 1000000 + thang * 10000 + ngay * 100 + gio
tinhtime1 = GetTask(492) * 1000000 + GetTask(491) * 10000 + GetTask(490) * 100 + GetTask(489)


if (tinhtime >= tinhtime1) then
	SetTask(489, gio)
	SetTask(490, ngay)
	SetTask(491, thang)
	SetTask(492, nam)
end
		SetTask(490, GetTask(490)  + 7)
		if GetTask(491) == 13 then
			SetTask(491,1)
			SetTask(492, GetTask(492) + 1)
		end
		if GetTask(490) > mangthang[GetTask(491)] then
			SetTask(490, GetTask(490) - mangthang[GetTask(491)])
			SetTask(491, GetTask(491) + 1 )
		end
if (tinhtime >= tinhtime1)	 then	
	SetTask(489, gio)
end
		Msg2Player("B�n �� gia h�n th�nh c�ng:<color=yellow> "..GetTask(489).." gi�, ng�y "..GetTask(490).." th�ng "..GetTask(491).." n�m "..GetTask(492).."")
else
	Talk(1,"","hack ha em")
end
end

function giaiphong_main()
SayNew("<color=green>Ch� Ti�n Trang<color>:  Hi�n t�i b�n c� <color=yellow>"..GetTask(438).." �i�m T�ch L�y N�p Th� <color> v� <color=green>"..GetTask(437).." v�ng S� Ki�n<color> trong t�i kho�n.",5,
"��i 40 �i�m = 1 V�ng Quay /giaiphong1",
"��i 50 �i�m = 10 V�ng /giaiphong2",
"Nh�n ph�n th��ng G�i Khuy�n M�i /giaiphong3",
"Quay S� Tr�ng Th��ng /giaiphong4",
"Tho�t./no")
end


function giaiphong3()
if GetTask(482) < 1000 then
	if GetTask(437) >= 100 then
			SetTask(482, 1000)

			AddEventItem(161)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c G�i N�p Th�: <color=yellow>1 Thi�n S�n Tuy�t Li�n")
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/GoiNapThe.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(437).." - "..GetTask(482).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			Talk(0,"")
	else
		Talk(1,"","Ng��i kh�ng ��t y�u c�u G�i N�p Th�: "..GetTask(437).." / 100")
	end
elseif GetTask(482) < 2000 then
	if GetTask(437) >= 300 then
			SetTask(482, 2000)

			idxitem = AddItem(0,10,8,1,0,0,0)
			SetTimeItem(idxitem,550324);
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c G�i N�p Th�: <color=yellow>1 Phi V�n")
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/GoiNapThe.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(437).." - "..GetTask(482).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			Talk(0,"")
	else
		Talk(1,"","Ng��i kh�ng ��t y�u c�u G�i N�p Th�: "..GetTask(437).." / 300")
	end
elseif GetTask(482) < 3000 then
	if GetTask(437) >= 1500 then
			SetTask(482, 3000)

			idxitem = AddItem(0,10,6,1,0,0,0)
			SetTimeItem(idxitem,550324);
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c G�i N�p Th�: <color=yellow>1 B�n Ti�u")
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/GoiNapThe.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(437).." - "..GetTask(482).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			Talk(0,"")
	else
		Talk(1,"","Ng��i kh�ng ��t y�u c�u G�i N�p Th�: "..GetTask(437).." / 1500")
	end	
elseif GetTask(482) < 4000 then
	if GetTask(437) >= 3000 then
			SetTask(482, 4000)

			idxitem = AddItem(0,4,17,6,0,0,0)
			SetTimeItem(idxitem,550324);
			idxitem = AddItem(0,9,17,6,0,0,0)
			SetTimeItem(idxitem,550324);
			idxitem = AddItem(0,3,29,6,0,0,0)
			SetTimeItem(idxitem,550324);
			idxitem = AddItem(0,3,30,6,0,0,0)
			SetTimeItem(idxitem,550324);
			
			Msg2Player("<color=green>N�u b�n mu�n ��i ��nh Qu�c C�c Ph�m vui l�ng li�n h� H� Tr� Tr�c Tuy�n trong h�m nay �� ��i. Ng�y mai kh�ng gi�i quy�t !")
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c G�i N�p Th�: <color=yellow>1 Set An Bang Ho�n M� C�p 6")
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/GoiNapThe.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(437).." - "..GetTask(482).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			Talk(0,"")
	else
		Talk(1,"","Ng��i kh�ng ��t y�u c�u G�i N�p Th�: "..GetTask(437).." / 3000")
	end	
elseif GetTask(482) < 5000 then
	if GetTask(437) >= 7500 then
			SetTask(482, 5000)

			for p=1,100 do AddEventItem(339) end
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c G�i N�p Th�: <color=yellow>100 M�nh Phi�n V� ")
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/GoiNapThe.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(437).." - "..GetTask(482).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			Talk(0,"")
	else
		Talk(1,"","Ng��i kh�ng ��t y�u c�u G�i N�p Th�: "..GetTask(437).." / 7500")
	end	
elseif GetTask(482) < 6000 then
	if GetTask(437) >= 15000 then
			SetTask(482, 6000)

			for p=1,100 do AddEventItem(27) end
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c G�i N�p Th�: <color=yellow>100 Ng�c B� �n ")
			
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/GoiNapThe.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(437).." - "..GetTask(482).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			Talk(0,"")
	else
		Talk(1,"","Ng��i kh�ng ��t y�u c�u G�i N�p Th�: "..GetTask(437).." / 15000")
	end		
else
Talk(1,"","Ng��i �� nh�n �� t�t c� G�i N�p Th�, kh�ng th� nh�n th�m !")
end

end

function giaiphong4()
Talk(1,"","�ang c�p nh�t ! Hi�n t�i ng��i c� "..GetTask(436).." V�ng Quay May M�n")
end
function giaiphong2()
diem = GetTask(438)

if diem >= 50 then
	SetTask(438, diem - 50)
	if GetTask(438) == diem - 50 then
		SetTask(99, GetTask(99) + 10)
		SetTask(101, GetTask(101) + 10)
		Msg2Player("B�n nh�n ���c 10 v�ng")
		
		thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/DoiVongQuay.txt", "a");
if LoginLog then
write(LoginLog,"[VANG: "..GetTask(99).." - "..GetTask(438).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
end
closefile(LoginLog)
		
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� 50 �i�m T�ch L�y N�p Th�, kh�ng th� ��i V�ng")
end
end

function giaiphong1()
diem = GetTask(438)

if diem >= 40 then
	SetTask(438, diem - 40)
	if GetTask(438) == diem - 40 then
		SetTask(436, GetTask(436) + 1)
		Msg2Player("S� l��t V�ng Quay May M�n c�a b�n l�: <color=yellow>"..GetTask(436).." l�n")
		
		thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/DoiVongQuay.txt", "a");
if LoginLog then
write(LoginLog,"[QUAY: "..GetTask(436).." - "..GetTask(438).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
end
closefile(LoginLog)
		
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� 40 �i�m T�ch L�y N�p Th�, kh�ng th� ��i V�ng Quay ")
end
end


function nhanphanthuong83()
solan = floor(GetTask(448) / 50)
SayNew("Hi�n t�i ng��i �ang c� <color=yellow>"..GetTask(448).." v�ng t�ch l�y<color>, ng��i c� th� ��i l�y <color=red>"..solan.." V�ng Quay May M�n<color>. Ng��i c� mu�n ��i kh�ng?",2,
"C�, ta mu�n ��i V�ng Quay May M�n /nhanthuong83_2",
"Tho�t./no")
end
function nhanthuong83_2()
solan = floor(GetTask(448) / 50)
SetTask(448 , GetTask(448) - solan*50)
SetTask(445, GetTask(445) + solan)
Msg2Player("<color=pink>B�n nh�n ���c "..solan.." V�ng Quay May M�n, vui l�ng ��n NPC L� Quan �� quay")
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/DoiVongQuay.txt", "a");
if LoginLog then
write(LoginLog,"["..GetTask(445).."] "..GetAccount().." - "..GetName().."  - Time: "..thoigian.."\n");
end
closefile(LoginLog)


end

function nhantuluyendan()
SayNew("Hi�n t�i b�n �ang c� <color=red>"..GetTask(473).." t�ch l�y n�p th� <color>. B�n c� mu�n d�ng 50 �i�m �� ��i Tu Luy�n �an hay kh�ng?",2,
"��i Tu Luy�n �an /nhantld",
"Tho�t./no")
end


function nhantld()
task = GetTask(473)
if GetTask(473) >= 50 then
	SetTask(473, GetTask(473) - 50)
	if GetTask(473) == task - 50 then
		AddEventItem(410)
		Msg2Player("B�n nh�n ���c 1 Tu Luy�n �an")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/logTuLuyenDan.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(473).."] - ["..GetItemCount(410).."] - "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng �� 50 �i�m t�ch l�y n�p th�, kh�ng th� ��i Tu Luy�n �an")
end
end


function nhanphanthuong()

if GetTask(467) == 9999 then
Talk(1,"","B�n �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m")
return
end

if GetTask(332) == 0 then
SayNew("Ng��i hi�n t�i �ang c� <color=red>"..GetTask(467).." /20 V�ng T�ch L�y N�p Th� <color>",2,
"Nh�n th��ng G�i 1 /nhanphanthuong2",
"�� ta t�ch l�y th�m./no")
elseif GetTask(332) == 1 then
SayNew("Ng��i hi�n t�i �ang c� <color=red>"..GetTask(467).." /80 V�ng T�ch L�y N�p Th� <color>",2,
"Nh�n th��ng G�i 2 /nhanphanthuong2",
"�� ta t�ch l�y th�m./no")
elseif GetTask(332) == 2 then
SayNew("Ng��i hi�n t�i �ang c� <color=red>"..GetTask(467).." / 200 V�ng T�ch L�y N�p Th� <color>",2,
"Nh�n th��ng G�i 3 /nhanphanthuong2",
"�� ta t�ch l�y th�m./no")
elseif GetTask(332) == 3 then
SayNew("Ng��i hi�n t�i �ang c� <color=red>"..GetTask(467).." / 400 V�ng T�ch L�y N�p Th� <color>",2,
"Nh�n th��ng G�i 4 /nhanphanthuong2",
"�� ta t�ch l�y th�m./no")
elseif GetTask(332) == 4 then
SayNew("Ng��i hi�n t�i �ang c� <color=red>"..GetTask(467).." / 800 V�ng T�ch L�y N�p Th� <color>",2,
"Nh�n th��ng G�i 5 /nhanphanthuong2",
"�� ta t�ch l�y th�m./no")
elseif GetTask(332) == 5 then
SayNew("Ng��i hi�n t�i �ang c� <color=red>"..GetTask(467).." / 1500 V�ng T�ch L�y N�p Th� <color>",2,
"Nh�n th��ng G�i 6 /nhanphanthuong2",
"�� ta t�ch l�y th�m./no")
else
Talk(1,"","Ng��i �� nh�n �� 6 G�i, kh�ng th� nh�n th�m")
end
end


function nhanphanthuong2()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n ! "..CheckFreeBoxItem(4,364,1,1).."")
	return
end

if GetTask(332) == 6 then
Talk(1,"","Ng��i �� nh�n �� 6 G�i, kh�ng th� nh�n th�m")
return
end 
solan = GetTask(332)
if GetTask(332) == 0 then
	if GetTask(467) >= 20 then
		SetTask(332, GetTask(332) + 1)
			if GetTask(332) == solan + 1 then
					for p=1,5 do 
						idxitem = AddEventItem(117) 
						SetBindItem(idxitem , 1)
					end
					Msg2Player("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c G�i Qu� T�ng 1")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 1] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","�i�m t�ch l�y n�p th� hi�n t�i: <color=yellow>"..GetTask(467).." / 20 v�ng")
	end
elseif GetTask(332) == 1 then
	if GetTask(467) >= 80 then
		SetTask(332, GetTask(332) + 1)
			if GetTask(332) == solan + 1 then
					for p=1,10 do 
						idxitem = AddEventItem(118) 
						SetBindItem(idxitem , 1)
					end
					Msg2Player("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c G�i Qu� T�ng 2")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 2] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","�i�m t�ch l�y n�p th� hi�n t�i: <color=yellow>"..GetTask(467).." / 80 v�ng")
	end
elseif GetTask(332) == 2 then
	if GetTask(467) >= 200 then
		SetTask(332, GetTask(332) + 1)
			if GetTask(332) == solan + 1 then
					SetTask(196,0)
					Msg2Player("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c G�i Qu� T�ng 3")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 3] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","�i�m t�ch l�y n�p th� hi�n t�i: <color=yellow>"..GetTask(467).." / 200 v�ng")
	end	
elseif GetTask(332) == 3 then
	if GetTask(467) >= 400 then
		SetTask(332, GetTask(332) + 1)
			if GetTask(332) == solan + 1 then
					for p=1,5 do AddEventItem(0) end
					Msg2Player("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c G�i Qu� T�ng 4")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 4] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","�i�m t�ch l�y n�p th� hi�n t�i: <color=yellow>"..GetTask(467).." / 400 v�ng")
	end		
elseif GetTask(332) == 4 then
	if GetTask(467) >= 800 then
		SetTask(332, GetTask(332) + 1)
			if GetTask(332) == solan + 1 then
					AddEventItem(19)
					Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c G�i Qu� T�ng 5")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 5] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","�i�m t�ch l�y n�p th� hi�n t�i: <color=yellow>"..GetTask(467).." / 800 v�ng")
	end			
elseif GetTask(332) == 5 then
	if GetTask(467) >= 1500 then
		SetTask(332, GetTask(332) + 1)
			if GetTask(332) == solan + 1 then
					AddItem(0,10,5,5,0,0,0)
					Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c G�i Qu� T�ng 6")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 6] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","�i�m t�ch l�y n�p th� hi�n t�i: <color=yellow>"..GetTask(467).." / 1500 v�ng")
	end		
	
end
						

end

Include("\\script\\topnapthe.lua")
Include("\\script\\lib\\thuvien.lua")
function quockhanh_duatop()
Msg2Player("�i�m t�ch l�y N�p Th� c�a b�n l�: <color=yellow>"..GetTask(498).."")
Msg2Player("Top N�p Th� l�: "..NAP_THE[2]..". �i�m t�ch l�y: "..floor(NAP_THE[4],1000).."xxx V�ng")
if GetTask(498) > NAP_THE[4] then
	NAP_THE[1] = GetAccount()
	NAP_THE[2] = GetName()
	NAP_THE[3] = GetLevel()
	NAP_THE[4] = GetTask(498)
	Msg2Player("B�n �� c�p nh�t danh s�ch Top N�p Th� ")
	Msg2SubWorld("Ng��i ��ng ��u Top N�p Th� hi�n t�i l�: <color=yellow>"..NAP_THE[2].." <color=red>H�y ��n g�p <color=green>NPC Ti�n Trang<color=red> �� ki�m tra T�ch L�y N�p Th� ")
	Msg2SubWorld("Ph�n th��ng <color=yellow>Chi�u D� Ng�c S� T� <color=red>cho ai d�n ��u ��n 24h00 ng�y 30/08/2017")
	
	BANG = TaoBang(NAP_THE,"NAP_THE")
	LuuBang("script/topnapthe.lua",BANG)
else
	if NAP_THE[4] - GetTask(498) < 200 then
		Msg2Player("�i�m t�ch l�y n�p th� c�a ng��i �t h�n Top N�p Th� kho�ng 200 v�ng")
	elseif 	NAP_THE[4] - GetTask(498) < 500 then
		Msg2Player("�i�m t�ch l�y n�p th� c�a ng��i �t h�n Top N�p Th� kho�ng 500 v�ng")
	elseif 	NAP_THE[4] - GetTask(498) < 1000 then
		Msg2Player("�i�m t�ch l�y n�p th� c�a ng��i �t h�n Top N�p Th� kho�ng 1000 v�ng")
	elseif 	NAP_THE[4] - GetTask(498) < 2000 then
		Msg2Player("�i�m t�ch l�y n�p th� c�a ng��i �t h�n Top N�p Th� kho�ng 2000 v�ng")
	end	
end
end

function new_doiknb()
SayNew("<color=green>Chu� Tie�n Trang<color>: <color=yellow>1 Kim Nguye�n Ba�o = 800 va�n l���ng<color>. Ng��i co� muo�n �o�i kho�ng?\nTa luo�n mua v��i gia� tha�p h�n th� tr���ng �e� ca�n ba�ng th� tr���ng ",2,
"Ta muo�n �o�i Kim Nguye�n Ba�o/new_doiknb2",
"Thoa�t./no")
end
function new_doiknb2()
Talk(1,"","Trong th��i gian s�� kie�n, kho�ng cho �o�i Kim Nguye�n Ba�o")
end

Include("\\script\\monphai.lua")
function tet_tichluynapthe()
SayNew("<color=green>Ch� Ti�n Trang<color>: Hi�n t�i ng��i �� <color=green>T�ch l�y "..GetTask(336).." V�ng<color>,\n<color=red>L�u �: M�t do ��y r��ng ch�ng t�i s� kh�ng ph�c h�i.",6,
"G�i ��ng [20 V�ng]/tet_goi20",
"G�i B�c [100 V�ng]/tet_goi100",
"G�i V�ng [200 V�ng]/tet_goi200",
"G�i B�ch Kim [500 V�ng]/tet_goi500",
"G�i VIP [1000 V�ng]/tet_goi1000",
"Tho�t./no")
end

function tet_goi20()
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","��y r��ng, vui l�ng ki�m tra l�i !")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if GetTask(336) < 20 then
Talk(1,"","Ng��i ch� m�i ��t <color=yellow>"..GetTask(336).." / 20 V�ng<color>, kh�ng �� �i�u ki�n nh�n th��ng")
return
end
if GetTask(337) == 0 then
	SetTask(337, GetTask(337) + 1)
	if GetTask(337) == 1 then
		for i=1,3 do 
				idx = AddEventItem(117)
				SetBindItem(idx , 1)
		end
		Msg2Player("B�n nh�n ���c 3 Ti�n Th�o L� 1 Gi� ")
		for i=1,3 do 
				idx = AddEventItem(118)
				SetBindItem(idx , 1)
		end
		Msg2Player("B�n nh�n ���c 3 N� Nhi H�ng 1 Gi� ")	
		itemidx = AddItem(0,11,0,random(1,25),0,0,0)
		if thang == 1 then
			if ngay == 27 then
			SetHSD(itemidx,2017,2,3,gio)
			elseif ngay == 28 then
			SetHSD(itemidx,2017,2,4,gio)
			elseif ngay == 29 then
			SetHSD(itemidx,2017,2,5,gio)
			elseif ngay == 30 then
			SetHSD(itemidx,2017,2,6,gio)
			elseif ngay == 31 then
			SetHSD(itemidx,2017,2,7,gio)
			end
		else
			SetHSD(itemidx,2017,thang,ngay + 7,gio)
		end
		Msg2Player("B�n nh�n ���c 1 M�t N� 7 ng�y !")
			Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." �� m� G�i ��ng t� s� ki�n T�ch L�y N�p Th� ")
		
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng��i �� nh�n ph�n th��ng g�i n�y r�i, kh�ng th� nh�n th�m")
end
end


function tet_goi100()
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","��y r��ng, vui l�ng ki�m tra l�i !")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if GetTask(336) < 100 then
Talk(1,"","Ng��i ch� m�i ��t <color=yellow>"..GetTask(336).." / 100 V�ng<color>, kh�ng �� �i�u ki�n nh�n th��ng")
return
end
if GetTask(337) == 1 then
	SetTask(337, GetTask(337) + 1)
	if GetTask(337) == 2 then
		for i=1,2 do 
				idx = AddEventItem(119)
				SetBindItem(idx , 1)
		end
		Msg2Player("B�n nh�n ���c 2 Ti�n Th�o L� 1 Gi� ")
		for i=1,2 do 
				idx = AddEventItem(115)
				SetBindItem(idx , 1)
		end
		Msg2Player("B�n nh�n ���c 2 N� Nhi H�ng 1 Gi� ")	
		sx = random(1,2)
		if sx == 1 then
			for i=28,30 do
				idx= AddEventItem(i) 
				SetBindItem(idx , 1)
			end
			Msg2Player("B�n nh�n ���c 1 B� th�y Tinh")
		else
			for i=1,6 do 
				idx = AddEventItem(31) 
				SetBindItem(idx , 1)	
			end
			Msg2Player("B�n nh�n ���c 6 vi�n Tinh H�ng B�o Th�ch")
			Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." �� m� G�i B�c t� s� ki�n T�ch L�y N�p Th� ")
		end
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
elseif GetTask(337) < 1 then
	Talk(1,"","Ng��i ph�i nh�n t�t c� ph�n th��ng G�i th�p h�n m�i c� th� nh�n g�i n�y")
else
	Talk(1,"","Ng��i �� nh�n ph�n th��ng g�i n�y r�i, kh�ng th� nh�n th�m")
end
end


function tet_goi200()
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","��y r��ng, vui l�ng ki�m tra l�i !")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if GetTask(336) < 200 then
Talk(1,"","Ng��i ch� m�i ��t <color=yellow>"..GetTask(336).." / 200 V�ng<color>, kh�ng �� �i�u ki�n nh�n th��ng")
return
end
if GetTask(337) == 2 then
	SetTask(337, GetTask(337) + 1)
	if GetTask(337) == 3 then
		
		idx = AddEventItem(0)
		SetBindItem(idx , 1)
		Msg2Player("B�n nh�n ���c 1 V� L�m M�t T�ch")
		idx = AddEventItem(1)
		SetBindItem(idx , 1)
		Msg2Player("B�n nh�n ���c 1 T�y T�y Kinh")
		idx = AddEventItem(251)
		SetBindItem(idx , 1)
		Msg2Player("B�n nh�n ���c 1 Phi Phong")
		idx = AddItem(0,10,5,5,0,0,0)
		SetTimeItem(idx,550324);
		Msg2Player("B�n nh�n ���c 1 Chi�u D� Ng�c S� T� ")
			Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." �� m� G�i V�ng t� s� ki�n T�ch L�y N�p Th� ")
		
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
elseif GetTask(337) < 2 then
	Talk(1,"","Ng��i ph�i nh�n t�t c� ph�n th��ng G�i th�p h�n m�i c� th� nh�n g�i n�y")
else
	Talk(1,"","Ng��i �� nh�n ph�n th��ng g�i n�y r�i, kh�ng th� nh�n th�m")
end
end
function tet_goi500()
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","��y r��ng, vui l�ng ki�m tra l�i !")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if GetTask(336) < 500 then
Talk(1,"","Ng��i ch� m�i ��t <color=yellow>"..GetTask(336).." / 500 V�ng<color>, kh�ng �� �i�u ki�n nh�n th��ng")
return
end
if GetTask(337) == 3 then
	SetTask(337, GetTask(337) + 1)
	if GetTask(337) == 4 then
		
		idx = AddItem(0,10,6,1,0,0,0)
		SetHSD(idx,2017, thang + 1, ngay , gio);
		Msg2Player("B�n nh�n ���c 1 B�n Ti�u ")
			Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." �� m� G�i B�ch Kim t� s� ki�n T�ch L�y N�p Th� ")
		
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
elseif GetTask(337) < 3 then
	Talk(1,"","Ng��i ph�i nh�n t�t c� ph�n th��ng G�i th�p h�n m�i c� th� nh�n g�i n�y")
else
	Talk(1,"","Ng��i �� nh�n ph�n th��ng g�i n�y r�i, kh�ng th� nh�n th�m")
end
end


function tet_goi1000()
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","��y r��ng, vui l�ng ki�m tra l�i !")
return
end
faction = mp()
if faction == 0 then
Talk(1,"","Ng��i ch�a gia nh�p ph�i, kh�ng th� s� d�ng !")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if GetTask(336) < 1000 then
Talk(1,"","Ng��i ch� m�i ��t <color=yellow>"..GetTask(336).." / 1000 V�ng<color>, kh�ng �� �i�u ki�n nh�n th��ng")
return
end
if GetTask(337) == 4 then
	SetTask(337, GetTask(337) + 1)
	if GetTask(337) == 5 then
		
		
				MangHKMP = ""
				if faction == 1 then
					MangHKMP = HKMP_ThieuLam
				elseif faction == 2 then
					MangHKMP = HKMP_ThienVuong
				elseif faction == 3 then
					MangHKMP = HKMP_DuongMon
				elseif faction == 4 then
					MangHKMP = HKMP_NguDoc
				elseif faction == 5 then
					MangHKMP = HKMP_NgaMy
				elseif faction == 6 then
					MangHKMP = HKMP_ThuyYen
				elseif faction == 7 then
					MangHKMP = HKMP_CaiBang
				elseif faction == 8 then
					MangHKMP = HKMP_ThienNhan
				elseif faction == 9 then
					MangHKMP = HKMP_VoDang
				elseif faction == 10 then
					MangHKMP = HKMP_ConLon
				end
				
				if MangHKMP ~= "" then
						vt = RandomNew(1,getn(MangHKMP))
						idxitemvip = AddItem(0, MangHKMP[vt][1], MangHKMP[vt][2],MangHKMP[vt][3],0,0,0)
						SetHSD(idxitemvip,2017, thang + 1, ngay , gio);
						Msg2SubWorld("Ch�c m�ng ��i hi�p ["..GetName().."] m� G�i VIP ���c <color=yellow>["..GetNameItemBox(idxitemvip).."]")
						
						thoigian = tonumber(date("%H%M%d%m"))
						LoginLog = openfile("Data/SuKien/VIP.txt", "a");
						if LoginLog then
						write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetFaction().." - "..vt.." - "..faction.." - Time: "..thoigian.."\n");
						end
						closefile(LoginLog)
						
				end
			Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." �� m� G�i VIP t� s� ki�n T�ch L�y N�p Th� ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
elseif GetTask(337) < 4 then
	Talk(1,"","Ng��i ph�i nh�n t�t c� ph�n th��ng G�i th�p h�n m�i c� th� nh�n g�i n�y")
else
	Talk(1,"","Ng��i �� nh�n ph�n th��ng g�i n�y r�i, kh�ng th� nh�n th�m")
end
end


HKMP_ThieuLam = {
{2,33,1},
{2,34,1},
{2,35,1},
{6,4,1},
{6,5,1},
{6,6,1},
{5,6,1},
{5,7,1},
{8,4,1},
{7,16,1},
{9,6,1},
{3,7,1},
{3,8,1},
{0,1,61},
{0,2,61}, -- 15 mon
}
HKMP_ThienVuong = {
{4,6,1},
{2,36,1},
{2,37,1},
{6,7,1},
{6,8,1},
{6,9,1},
{5,8,1},
{5,9,1},
{8,5,1},
{8,6,1},
{8,7,1},
{3,9,1},
{0,3,61},
{0,4,61},
{0,1,121}, -- 15 mon
}
HKMP_DuongMon = {
{4,7,1},
{4,8,1},
{2,38,1},
{2,39,1},
{6,10,1},
{6,11,1},
{6,12,1},
{5,10,1},
{5,11,1},
{5,12,1},
{8,8,1},
{8,9,1},
{7,17,1},
{9,7,1},
{9,8,1},
{3,10,1},
{3,11,1},
{1,1,21},
{1,1,21},
{1,0,41},
{1,2,31}, -- 20 mon
}
HKMP_NguDoc = {
{4,9,1},
{2,40,1},
{2,41,1},
{6,13,1},
{5,13,1},
{5,14,1},
{5,15,1},
{8,10,1},
{8,11,1},
{8,12,1},
{7,18,1},
{7,19,1},
{3,12,1},
{3,13,1},
{0,1,171}, -- 15 mon
}
HKMP_NgaMy = {
{4,10,1},
{2,42,1},
{2,43,1},
{6,14,1},
{5,16,1},
{8,13,1},
{7,20,1},
{7,21,1},
{9,9,1},
{9,16,1},
{3,14,1},
{3,15,1},
{3,16,1},
{3,17,1},
{0,0,61}, -- 15 mon
}
HKMP_ThuyYen = {
{4,11,1},
{2,44,1},
{6,15,1},
{6,16,1},
{8,14,1},
{9,10,1},
{3,18,1},
{0,5,61},
{0,1,181},-- 9 mon
}
HKMP_CaiBang = {
{2,45,1},
{2,46,1},
{6,17,1},
{6,18,1},
{8,15,1},
{8,16,1},
{7,22,1},
{3,19,1},
{3,20,1},
{0,2,121}, -- 10 mon
}
HKMP_ThienNhan = {
{4,12,1},
{4,13,1},
{2,47,1},
{6,19,1},
{6,20,1},
{5,17,1},
{5,18,1},
{8,17,1},
{8,18,1},
{7,23,1},
{7,24,1},
{9,11,1},
{3,21,1},
{3,22,1},
{0,3,121}, -- 15 mon
}
HKMP_VoDang = {
{4,14,1},
{2,48,1},
{6,21,1},
{9,12,1},
{9,13,1},
{3,23,1},
{3,24,1},
{3,25,1},
{0,0,121},
{0,0,171}, -- 10 mon
}
HKMP_ConLon = {
{4,15,1},
{4,16,1},
{2,49,1},
{6,22,1},
{6,23,1},
{5,19,1},
{8,19,1},
{7,25,1},
{7,26,1},
{9,14,1},
{9,15,1},
{3,26,1},
{3,27,1},
{3,28,1},
{0,1,151}, -- 15 mon
}


function new_rutknb()
ngay = tonumber(date("%d"))

if CheckFreeBoxItem(4,17,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end


slknb = GetItemCount(17) 
vang = GetTask(99)
if GetTask(99) >= 20 and CheckFreeBoxItem(4,17,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 20)
	SetTask(101,GetTask(101) - 20)
	if GetTask(99) == vang-20 and CheckFreeBoxItem(4,17,1,1) ~= 0 then
		AddEventItem(17)
		if GetItemCount(17) ~= slknb + 1 then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." KNB moi: "..GetItemCount(17).." KNB cu: "..slknb.."vang")
			SetTask(99,0)
			DelItem(17)
			Talk(1,"","Check hack KNB: B�n b� reset s� v�ng hi�n c�, li�n h� GM �� gi�i quy�t !")
		end
		inlog("[Rut] "..GetAccount().." - "..GetName()..". Hanh Trang: "..GetItemCount(17).."  - Ti�n Trang : "..GetTask(99).." ")
		Msg2Player("B�n nh�n ���c 1 Kim Nguy�n B�o ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng c� g�i b�t k� Kim Nguy�n B�o n�o � ch� ta, kh�ng th� r�t")
end
end




function new_rutknb1()
ngay = tonumber(date("%d"))

if CheckFreeBoxItem(4,631,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end

slknb = GetItemCount(631) 
vang = GetTask(99)
if GetTask(99) >= 10 and CheckFreeBoxItem(4,631,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 10)
	SetTask(101,GetTask(101) - 10)
	if GetTask(99) == vang-10 and CheckFreeBoxItem(4,631,1,1) ~= 0 then
		AddEventItem(631)
		if GetItemCount(631) ~= slknb + 1 then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." KNB moi: "..GetItemCount(631).." KNB cu: "..slknb.."vang")
			SetTask(99,0)
			DelItem(631)
			Talk(1,"","Check hack KNB: B�n b� reset s� v�ng hi�n c�, li�n h� GM �� gi�i quy�t !")
		end
		inlog("[Rut] "..GetAccount().." - "..GetName()..". Hanh Trang: "..GetItemCount(631).." x10  - Ti�n Trang : "..GetTask(99).." ")
		Msg2Player("B�n nh�n ���c 1 ��i Kim Nguy�n B�o ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng �� <color=yellow>10 Kim Nguy�n B�o<color> � ch� ta, kh�ng th� r�t ��i Kim Nguy�n B�o.")
end
end
function new_guiknb()
sl = GetItemCount(17) 
sl2 = GetItemCount(631) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetItemCount(17) > 0 then
	DelItem(17)
	if GetItemCount(17) == sl-1 then
		SetTask(99,GetTask(99) + 20)
		SetTask(101,GetTask(101) + 20)
		if GetTask(99) ~= vang + 20 or GetTask(101) ~= vang2 + 20 or GetTask(99) ~= GetTask(101) then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." vang")
			SetTask(99,0)
			SetTask(101,0)
			
			Talk(1,"","Check hack KNB: B�n b� reset s� v�ng hi�n c�, li�n h� GM �� gi�i quy�t !")
		end
		Msg2Player("B�n �� g�i th�nh c�ng 1 Kim Nguy�n B�o !")
		inlog("[Gui] "..GetAccount().." - "..GetName().." th�nh cong. Hanh Trang: "..GetItemCount(17).."  - Tien trang: "..GetTask(99).." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha cung !")
	end
elseif GetItemCount(631) > 0 then
	DelItem(631)
	if GetItemCount(631) == sl2-1 then
		SetTask(99,GetTask(99) + 10)
		SetTask(101,GetTask(101) + 10)
		if GetTask(99) ~= vang + 10 or GetTask(101) ~= vang2 + 10 or GetTask(99) ~= GetTask(101) then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." vang")
			SetTask(99,0)
			SetTask(101,0)
			
			Talk(1,"","Check hack KNB: B�n b� reset s� v�ng hi�n c�, li�n h� GM �� gi�i quy�t !")
		end
		Msg2Player("B�n �� g�i th�nh c�ng 1 ��i Kim Nguy�n B�o !")
		inlog("[Gui] "..GetAccount().." - "..GetName().." th�nh cong. Hanh Trang: "..GetItemCount(631).." x10 - Tien trang: "..GetTask(99).." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha cung !")
	end

else
	Talk(1,"","B�n kh�ng mang theo <color=yellow>Kim Nguy�n B�o<color>")
end
end

function guiknb5()
SayNew("<color=green>Ch� Ti�n Trang<color>: \nNg��i c� ch�c ch�n mu�n ��i <color=yellow>Kim Nguy�n B�o<color>  th�nh <color=yellow>V�ng<color>\n<color=red>Ch� �:<color> Ng��i s� kh�ng th� r�t ra ���c.",2,
"Ta ch�c ch�n mu�n g�i Kim Nguy�n B�o/guiknb",
"�� ta suy ngh� l�i /no")
end

function ruttoanbovang()
tongvang = GetTask(306)
knb = floor(tongvang / 20)
vangchuakichhoat = tongvang - knb * 20

sl = GetTask(306)
vang = GetTask(99)
vang2 = GetTask(101)
if vangchuakichhoat > 0 then
	SetTask(306,GetTask(306) - vangchuakichhoat)
	if GetTask(306) == sl - vangchuakichhoat then
		SetTask(99,GetTask(99) + vangchuakichhoat)
		SetTask(101,GetTask(101) + vangchuakichhoat)
		if GetTask(99) ~= vang + vangchuakichhoat or GetTask(101) ~= vang2 + vangchuakichhoat or GetTask(99) ~= GetTask(101) then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." vang")
			SetTask(99,0)
			SetTask(101,0)
			Talk(1,"","Check hack KNB: B�n b� reset s� v�ng hi�n c�, li�n h� GM �� gi�i quy�t !")
		end
		Msg2Player("B�n nh�n ���c <color=yellow>"..sl.." v�ng !")
		inlog(""..GetAccount().." - "..GetName().." da doi KNB thanh cong. KNB: "..GetItemCount(17).." - Vang: "..GetTask(99).."")
		Talk(0,"")
	else
		Talk(1,"","hack ha cung !")
	end
else
	Talk(1,"","B�n kh�ng c� v�ng ch�a k�ch ho�t")
end
end



function rutknb()
if CheckFreeBoxItem(4,17,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end


slknb = GetItemCount(17) 
vang = GetTask(306)
if GetTask(306) >= 20 and CheckFreeBoxItem(4,17,1,1) ~= 0 then
	SetTask(306,GetTask(306) - 20)
	if GetTask(306) == vang-20 and CheckFreeBoxItem(4,17,1,1) ~= 0 then
		AddEventItem(17)
		if GetItemCount(17) ~= slknb + 1 then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(306).." KNB moi: "..GetItemCount(17).." KNB cu: "..slknb.."vang")
			SetTask(306,0)
			DelItem(17)
			Talk(1,"","Check hack KNB: B�n b� reset s� v�ng hi�n c�, li�n h� GM �� gi�i quy�t !")
		end
		inlog(""..GetAccount().." - "..GetName().." da doi vang thanh cong. KNB: "..GetItemCount(17).." - Vang: "..GetTask(306).."")
		Msg2Player("B�n nh�n ���c 1 Kim Nguy�n B�o ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng c� <color=yellow>Kim Nguy�n B�o<color> ch�a k�ch ho�t")
end
end

function thuhoi()
sl = GetItemCount(161) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetItemCount(161) > 0 then
	DelItem(161)
	if GetItemCount(161) == sl-1 then
		SetTask(99,GetTask(99) + 100)
		SetTask(101,GetTask(101) + 100)
		if GetTask(99) ~= vang + 100 or GetTask(101) ~= vang2 + 100 or GetTask(99) ~= GetTask(101) then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." vang")
			SetTask(99,0)
			SetTask(101,0)
			
			Talk(1,"","Check hack KNB: B�n b� reset s� v�ng hi�n c�, li�n h� GM �� gi�i quy�t !")
		end
		Msg2Player("B�n nh�n ���c 100 v�ng !")
		inlog(""..GetAccount().." - "..GetName().." da doi Thien Son Tuyet Lien - Vang: "..GetTask(99).."")
		Talk(0,"")
	else
		Talk(1,"","hack ha cung !")
	end
else
	Talk(1,"","B�n kh�ng mang theo <color=yellow>Thi�n S�n Tuy�t Li�n<color>")
end
end


function guiknb()
sl = GetItemCount(17) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetItemCount(17) > 0 then
	DelItem(17)
	if GetItemCount(17) == sl-1 then
		SetTask(99,GetTask(99) + 20)
		SetTask(101,GetTask(101) + 20)
		if GetTask(99) ~= vang + 20 or GetTask(101) ~= vang2 + 20 or GetTask(99) ~= GetTask(101) then
			inlog("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." vang")
			SetTask(99,0)
			SetTask(101,0)
			
			Talk(1,"","Check hack KNB: B�n b� reset s� v�ng hi�n c�, li�n h� GM �� gi�i quy�t !")
		end
		Msg2Player("B�n nh�n ���c 20 v�ng !")
		inlog(""..GetAccount().." - "..GetName().." da doi KNB thanh cong. KNB: "..GetItemCount(17).." - Vang: "..GetTask(99).."")
		Talk(0,"")
	else
		Talk(1,"","hack ha cung !")
	end
else
	Talk(1,"","B�n kh�ng mang theo <color=yellow>Kim Nguy�n B�o<color>")
end
end



function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/logKimNguyenBao.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlog_khuyenmai(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/LogNapThe/NhanKhuyenMai.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function no()
end


function TayTiemNang()
a = GetSeries()
if a == 0 then
RestAP(35,25,25,15)
elseif a == 1 then
RestAP(20,35,20,25)
elseif a == 2 then
RestAP(25,25,25,25)
elseif a == 3 then
RestAP(30,20,30,20)
elseif a == 4 then
RestAP(20,15,25,40)
end
diemtn = GetProp()
AddProp(-diemtn)
diem = (GetLevel()-1)*5+GetTask(198)*5 + getTiemNang()
AddProp(diem)
KickOutSelf()
end


function TayKyNang()
diemkn = GetMagicPoint()
AddMagicPoint(-diemkn)
diemkn2 = (GetLevel()-1)+GetTask(199) + getKyNang()
AddMagicPoint(diemkn2)
RollbackSkill()
UpdateSkill()
KickOutSelf()
end
function getTiemNang()
if GetTask(139) == 1 then
return 50
elseif GetTask(139) == 2 then
return 100
elseif GetTask(139) == 3 then
return 200
elseif GetTask(139) == 4 then
return 300
elseif GetTask(139) == 5 then
return 400
else
return 0
end
end
function getKyNang()
if GetTask(139) == 1 then
return 10
elseif GetTask(139) == 2 then
return 20
elseif GetTask(139) == 3 then
return 40
elseif GetTask(139) == 4 then
return 60
elseif GetTask(139) == 5 then
return 80
else
return 0
end
end