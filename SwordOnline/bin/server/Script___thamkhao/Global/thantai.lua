function main()
SayNew("<color=green>��i Th�n T�i<color>: S� ki�n M�ng Xu�n M�u Tu�t 2018 t� 17h00 ng�y 08/02/2018 - 17h00 ng�y 20/02/2018",8,
"Gh�p M�m Ng� Qu� /tet_ghepnguqua",
"��i Tr�i C�y /tet_doitraicayx",
"Gia h�n s� ki�n T�t M�u Tu�t 2018/tet_giahan",
"Nh�n L� X� N�m M�i /tet_nhanlixi",
"Nh�n ph�n th��ng M�c S� Ki�n /tet_nhanthuongmocpt",
"��i �i�m T�ch L�y S� Ki�n /tet_doidiem",
"��i Ph�c L�c Th� /tet_doiphucloctho",
"Tho�t./no")
end

function tet_doiphucloctho()
sl1 = GetItemCount(318)
sl2 = GetItemCount(319)
sl3 = GetItemCount(320)

if GetItemCount(318) >= 1 and GetItemCount(319) >= 1 and GetItemCount(320) >= 1  then
	for p=318,320 do DelItem(p) end
	if GetItemCount(318) == sl1 - 1 and GetItemCount(319) == sl2 - 1 and GetItemCount(320) == sl3 - 1 then
		sx = random(1,100)
		if sx < 40 then
			soluong = random(1,5) 
			for p=1,soluong do AddEventItem(321) end
			Msg2Player("B�n nh�n ���c "..soluong.." M�m B�c")
		elseif sx >= 40 and sx < 80 then
			soluong = random(1,5) 
			for p=1,soluong do AddOwnExp(1000000) end
			Msg2Player("B�n nh�n ���c "..soluong..".000.000 kinh nghi�m")	
		elseif sx >= 80 and sx < 97 then
			AddEventItem(59)
			Msg2Player("B�n nh�n ���c 1 X� L�i Kim ��n")	
		else
			AddEventItem(333)
			Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Ph�c L�c Th� may m�n nh�n ���c <color=yellow>Ng� S�c B�ng Tinh")				
		end
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� b� ch� Ph�c - L�c - Th�, kh�ng th� ��i ph�n th��ng")
end
end
function tet_nhanthuongmocpt()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
if GetTask(457) == 0 then
	if GetTask(459) >= 5000 then
			SetTask(457, GetTask(457) + 1)
			if GetTask(457) == 1 then
				for p=1,200 do AddOwnExp(1000000) end
				Msg2Player("B�n nh�n ���c 200.000.000 kinh nghi�m")
				for p=1,2 do
					idxitem = AddEventItem(120)
					SetBindItem(idxitem , 1)
				end
				Msg2Player("B�n nh�n ���c 2 Ti�n Th�o L� 6 Gi� ")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","S� l��ng M�m Ng� Qu� �� s� d�ng ch�a ��t: <color=red>"..GetTask(459).." / 5000")
	end
elseif GetTask(457) == 1 then
	if GetTask(459) >= 10000 then
			SetTask(457, GetTask(457) + 1)
			if GetTask(457) == 2 then
				for p=1,300 do AddOwnExp(1000000) end
				Msg2Player("B�n nh�n ���c 300.000.000 kinh nghi�m")
				for p=1,2 do
					idxitem = AddEventItem(410)
					SetBindItem(idxitem , 1)
				end
				Msg2Player("B�n nh�n ���c 2 Tu Luy�n �an ")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","S� l��ng M�m Ng� Qu� �� s� d�ng ch�a ��t: <color=red>"..GetTask(459).." / 10000")
	end
elseif GetTask(457) == 2 then
	if GetTask(459) >= 15000 then
			SetTask(457, GetTask(457) + 1)
			if GetTask(457) == 3 then
				for p=1,500 do AddOwnExp(1000000) end
				Msg2Player("B�n nh�n ���c 500.000.000 kinh nghi�m")
				for p=1,4 do
					idxitem = AddEventItem(410)
					SetBindItem(idxitem , 1)
				end
				Msg2Player("B�n nh�n ���c 4 Tu Luy�n �an ")
				for p=1,6 do
					idxitem = AddEventItem(120)
					SetBindItem(idxitem , 1)
				end
				Msg2Player("B�n nh�n ���c 6 Ti�n Th�o L� 6 Gi� ")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","S� l��ng M�m Ng� Qu� �� s� d�ng ch�a ��t: <color=red>"..GetTask(459).." / 15000")
	end
else
	Talk(1,"","Ng��i �� nh�n to�n b� ph�n th��ng M�c S� Ki�n T�t Nguy�n ��n 2018")
end
end
function no()
end
function tet_doidiem()
SayNew("Hi�n t�i ng��i �ang c� <color=red>"..GetTask(458).." �i�m<color> T�ch L�y S� Ki�n. Ng��i mu�n ��i g� ? ",4,
"Trang b� An Bang /tet_doidiem1",
"Trang b� ��nh Qu�c /tet_doidiem1",
"��i V�t Ph�m kh�c /tet_doidiem1",
"Tho�t./no")
end


function tet_doidiem1(nsel)
i = nsel + 1
if i == 1 then
SayNew("Hi�n t�i ng��i �ang c� <color=red>"..GetTask(458).." �i�m<color> T�ch L�y S� Ki�n. Ng��i mu�n ��i g� ? ",5,
"An Bang C�c Hoa Th�ch Ch� Ho�n [400 �i�m]/tet_doidiem2",
"An Bang K� Huy�t Th�ch Gi�i Ch� [400 �i�m]/tet_doidiem2",
"An Bang �i�n Ho�ng Th�ch Ng�c B�i [400 �i�m]/tet_doidiem2",
"An Bang B�ng Tinh Th�ch H�ng Li�n [500 �i�m]/tet_doidiem2",
"Tho�t./no")
elseif i == 2 then
SayNew("Hi�n t�i ng��i �ang c� <color=red>"..GetTask(458).." �i�m<color> T�ch L�y S� Ki�n. Ng��i mu�n ��i g� ? ",6,
"��nh Qu�c � Sa Ph�t Qu�n [300 �i�m]/tet_doidiem3",
"��nh Qu�c Thanh Sa Tr��ng Sam [300 �i�m]/tet_doidiem3",
"��nh Qu�c Ng�n T�m Y�u ��i [200 �i�m]/tet_doidiem3",
"��nh Qu�c X�ch Quy�n Nhuy�n Ngoa [200 �i�m]/tet_doidiem3",
"��nh Qu�c � ��ng H� Uy�n [200 �i�m]/tet_doidiem3",
"Tho�t./no")
else
SayNew("Hi�n t�i ng��i �ang c� <color=red>"..GetTask(458).." �i�m<color> T�ch L�y S� Ki�n. Ng��i mu�n ��i g� ? ",3,
"M�nh Phi�n V� [200 �i�m] /tet_doidiem4",
"Ng�c C��ng H�a [15 �i�m] /tet_doidiem4",
"Tho�t./no")

end
end

function tet_doidiem4(nsel)
i = nsel + 1
loai = 0
if i == 1 then
loai = 339
diem = 200
elseif i == 2 then
loai = 414
diem = 15
end

if loai ~= 0 then
	if GetTask(458) >= diem then
		SetTask(458, GetTask(458) - diem)
		idxitem = AddEventItem(loai)
		Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
		Talk(0,"")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/DoiDiemTichLuy.txt", "a");
		if LoginLog then
		write(LoginLog,"[Vat Pham "..i.."] "..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(458).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","�i�m t�ch l�y s� ki�n kh�ng �� "..diem.." �i�m, kh�ng th� ��i ph�n th��ng")
	end
else
Talk(1,"","Hack ha em")
end
end
function tet_doidiem3(nsel)
i = nsel + 1
loai = 0
cap = 0
diem = 0
if i == 1 then
loai = 7
cap = 15
diem = 300
elseif i == 2 then
loai = 2
cap = 30
diem = 300
elseif i == 3 then
loai = 6
cap = 3
diem = 200
elseif i == 4 then
loai = 5
cap = 5
diem = 200
elseif i == 5 then
loai = 8
cap = 3
diem = 200
end

if loai ~= 0 and cap ~= 0 then
	if GetTask(458) >= diem then
		SetTask(458, GetTask(458) - diem)
		idxitem = AddItem(0,loai,cap,random(5,10),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
		Talk(0,"")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/DoiDiemTichLuy.txt", "a");
		if LoginLog then
		write(LoginLog,"[��nh Qu�c "..i.."] "..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(458).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","�i�m t�ch l�y s� ki�n kh�ng �� "..diem.." �i�m, kh�ng th� ��i ph�n th��ng")
	end
else
Talk(1,"","Hack ha em")
end
end
function tet_doidiem2(nsel)
i = nsel + 1
loai = 0
cap = 0
diem = 0
if i == 1 then
loai = 3
cap = 3
diem = 400
elseif i == 2 then
loai = 3
cap = 4
diem = 400
elseif i == 3 then
loai = 9
cap = 3
diem = 400
elseif i == 4 then
loai = 4
cap = 3
diem = 500
end

if loai ~= 0 and cap ~= 0 then
	if GetTask(458) >= diem then
		SetTask(458, GetTask(458) - diem)
		idxitem = AddItem(0,loai,cap,random(4,9),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
		Talk(0,"")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/DoiDiemTichLuy.txt", "a");
		if LoginLog then
		write(LoginLog,"[An Bang "..i.."] "..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(458).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","�i�m t�ch l�y s� ki�n kh�ng �� "..diem.." �i�m, kh�ng th� ��i ph�n th��ng")
	end
else
Talk(1,"","Hack ha em")
end
end


function tet_nhanlixi()
Talk(1,"","Ta ch� t�ng phong bao l� x� v�o c�c ng�y ��u n�m 16, 17, 18/02/2018. Ng��i h�y quay l�i sau nh� ")
end

function tet_giahan()
	if GetTask(460) >= 2 then
		Talk(1,"","Gi�i h�n s� ki�n c�a b�n �� ��t m�c t�i �a <color=yellow>2 l�n<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 3 then
		for k=1,3 do DelItem(17) end
		if GetItemCount(17) == knb - 3 then
			SetTask(460, GetTask(460) + 1)
			Msg2Player("B�n �� gia h�n s� ki�n T�t M�u Tu�t 2018 l�n <color=yellow>"..GetTask(460).." l�n")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(460).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng��i kh�ng �� 3 Kim Nguy�n b�o �� gia h�n s� ki�n")
	end
end


function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logGiaHan.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function tet_doitraicayx()
SayNew("<color=green>��i Th�n T�i<color>: Ch�n lo�i tr�i c�y c�n ��i ",5,
"��i D�a /tet_doitraicay1",
"��i �u �� /tet_doitraicay1",
"��i Xo�i /tet_doitraicay1",
"��i Sung /tet_doitraicay1",
"Tho�t./no")
end

function tet_doitraicay1(nsel)
SetTaskTemp(1,nsel)
OpenStringBox(2,"Nh�p S� L��ng","tet_doitraicay2")
end

function tet_doitraicay2(num2)
num = tonumber(num2)
if num < 0 or num > 15 then
Talk(1,"","Ch� ���c nh�p t� 1 - 15, vui l�ng nh�p l�i")
return
end
default = 313 + GetTaskTemp(1)

for i=1,num do
	soluong = 0
	if GetItemCount(default) >= 3 then
		for p=1,3 do DelItem(default) end
		AddEventItem(default+1)
		Talk(0,"")
	else
		Msg2Player("B�n kh�ng �� nguy�n li�u, vui l�ng ki�m tra l�i")
		break
	end	
end

end

function tet_ghepnguqua()
SayNew("<color=green>��i Th�n T�i<color>: Ch�n lo�i c�n ch� t�o ",7,
"1 M�m B�c Ng� Qu� /tet_chetao1",
"1 M�m V�ng Ng� Qu� /tet_chetao1",
"10 M�m B�c Ng� Qu� /tet_chetao1",
"10 M�m V�ng Ng� Qu� /tet_chetao1",
"50 M�m B�c Ng� Qu� /tet_chetao1",
"50 M�m V�ng Ng� Qu� /tet_chetao1",
"Tho�t./no")
end

function tet_chetao1(nsel)
i = nsel + 1
if i == 1 then
	tet_chetao2(321,323,"M�m B�c",1)
elseif i == 2 then	
	tet_chetao2(322,324,"M�m V�ng",1)
elseif i == 3 then	
	tet_chetao2(321,323,"M�m B�c",10)
elseif i == 4 then	
	tet_chetao2(322,324,"M�m V�ng",10)
elseif i == 5 then	
	tet_chetao2(321,323,"M�m B�c",50)
elseif i == 6 then	
	tet_chetao2(322,324,"M�m V�ng",50)
end
end

function tet_chetao2(nguyenlieu, itemnew, nlname, soluong)
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end
sl1 = GetItemCount(313)
sl2 = GetItemCount(314)
sl3 = GetItemCount(315)
sl4 = GetItemCount(316)
sl5 = GetItemCount(317)
sl6 = GetItemCount(nguyenlieu)
if GetItemCount(313) >= soluong and GetItemCount(314) >= soluong and GetItemCount(315) >= soluong and GetItemCount(316) >= soluong and GetItemCount(317) >= soluong and GetItemCount(nguyenlieu) >= soluong then
	for i=1,soluong do
		DelItem(313)
		DelItem(314)
		DelItem(315)
		DelItem(316)
		DelItem(317)
		DelItem(nguyenlieu)
	end
	if GetItemCount(313) == sl1 - soluong and GetItemCount(314) == sl2 - soluong and GetItemCount(315) == sl3 - soluong and GetItemCount(316) == sl4 - soluong and GetItemCount(317) == sl5 - soluong and GetItemCount(nguyenlieu) == sl6 - soluong then
		for p=1,soluong do AddEventItem(itemnew) end
		Msg2Player("B�n nh�n ���c "..soluong.." "..nlname.." Ng� Qu� ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(2,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i",""..nlname.." Ng� Qu� = M�ng C�u + D�a + �u �� + Xo�i + Sung + "..nlname.."")
end
end

function main1()
if (1) then
Talk(1,"","Ch�c n�ng ch�a m�, vui l�ng theo d�i trang ch� �� bi�t th�m chi ti�t ")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
	SayNew("<color=green>Th�n T�i<color>: Ch�c nh� ng��i 1 n�m m�i ph�t t�i, h�y nh�n bao L� X� ��u N�m m� ta ban t�ng",2,
	"��i Ph�c L�c Th� /doiphucloctho",
	"Tho�t./no")
end

function denbu50trieu()
if GetTask(340) ~= 0 then
Talk(1,"","B�n �� nh�n ph�n th��ng ��n b� b�o tr�, kh�ng th� nh�n th�m")
return
end
if GetLevel() >= 80 then
	if GetTask(340) == 0 then
		SetTask(340 , GetTask(340) + 1)
		if GetTask(340) == 1 then
			for k=1,50 do AddOwnExp(1000000) end
			Msg2Player("B�n nh�n ���c 50 tri�u kinh nghi�m")			
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","��ng c�p d��i 80 kh�ng th� nh�n ��n b� ")
end
end
function doiphucloctho()
sl1 = GetItemCount(318)
sl2 = GetItemCount(319)
sl3 = GetItemCount(320)

if CheckFreeBoxItem(0,3,3,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end

if sl1 >= 1 and sl2 >= 1 and sl3 >= 1 then
	for i=318,320 do DelItem(i) end
	if GetItemCount(318) == sl1 - 1 and GetItemCount(319) == sl2 - 1 and GetItemCount(320) == sl3 - 1 then
		 sx = RandomNew(1,100)
		 if sx < 80 then
			
			ngold = 5000
				Earn(ngold)
				Msg2Player("B�n nh�n ���c "..ngold.." l��ng")
				
		elseif sx >= 80 and sx < 85 then
			-- Kinh Nghiem
			nexp = random(1000000,10000000)
			AddOwnExp(nexp)
			Msg2Player("B�n nh�n ���c "..nexp.." kinh nghi�m")
		elseif sx >= 85 and sx < 90 then
			sx2 = random(1,100)
			if sx2 < 50 then
				idxitem = AddEventItem(random(113,114))
				Msg2Player("B�n nh�n ���c 1 "..GetNameItemBox(idxitem).."")
			elseif sx2 >= 50 and sx2 < 80 then
				idxitem = AddEventItem(random(117,118))
				Msg2Player("B�n nh�n ���c 1 "..GetNameItemBox(idxitem).."")
			elseif sx2 >= 80 and sx < 90 then
				idxitem = AddEventItem(119)
				Msg2Player("B�n nh�n ���c 1 "..GetNameItemBox(idxitem).."")
			else
				idxitem = AddEventItem(115)
				Msg2Player("B�n nh�n ���c 1 "..GetNameItemBox(idxitem).."")
			end
		elseif sx >= 90 and sx < 98 then
				ngold = random(5000,100000)
				Earn(ngold)
				Msg2Player("B�n nh�n ���c "..ngold.." l��ng")
		elseif sx >= 98 and sx < 100 then
			-- VP Quy
			idxitem = AddEventItem(random(28,31))
			Msg2SubWorld("Ch�c m�ng "..GetName().." ���c Th�n T�i ban t�ng 1 <color=green>"..GetNameItemBox(idxitem).." ")
		else
			-- VIP
			idxitem = AddEventItem(random(283,312))
			Msg2SubWorld("Ch�c m�ng "..GetName().." ���c Th�n T�i ban t�ng 1 <color=green>"..GetNameItemBox(idxitem).." ")
		end
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� b� ch� Ph�c - L�c - Th� , vui l�ng ki�m tra l�i ")
end
end

function mualixi()
gio = tonumber(date("%H"))
ngay = tonumber(date("%d"))
if gio < 6 or gio >= 18 then
Talk(1,"","Ta ch� ph�t Bao L� X� t� 6:00 - 18:00 trong 3 ng�y ��u n�m th�i")
return
end

if GetLevel() < 100 then
Talk(1,"","��ng c�p tr�n 100 m�i c� th� nh�n Bao L� X� ")
return
end

if floor(GetTask(339)/1000) == ngay then
Talk(1,"","Ng��i �� nh�n Bao L� X� h�m nay r�i, mai h�y quay l�i nh� ")
return
end

SetTask(339, ngay*1000)
idxitem = AddEventItem(325)
SetBindItem(idxitem , 1)
Msg2SubWorld("Ch�c m�ng "..GetName().." �� nh�n ���c Bao L� X� c�a Th�n T�i")
end

function nangcap()
knb = GetItemCount(17)

if GetItemCount(17) >= 1 then
	if GetItemCount(325) >= 1 then
			DelItem(17)
			DelItem(325)
			idxitem = AddEventItem(326)
			SetBindItem(idxitem , 1)
			Msg2Player("Ta �� ��i cho nh� ng��i 1 Bao L� X� [L�n]")
			inlog2("Acc:["..GetAccount().."]\tName: ["..GetName().."]\tLv: "..GetLevel().."")
	else
		Talk(1,"","Ng��i kh�ng c� Bao L� X� [Nh�], kh�ng th� ��i ")
	end
else
	Talk(1,"","Ng��i kh�ng mang theo 1 Kim Nguy�n B�o, kh�ng th� ��i")
end
end


function inlog2(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/NangCapBaoLiXi.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlog3(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/SuDungPhucLocTho.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
