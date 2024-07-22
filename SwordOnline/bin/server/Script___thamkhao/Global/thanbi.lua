Include("\\datascript\\thanbi\\logvodanh.lua")
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\monphai.lua")



function main()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>: Ng��i �ang c� "..GetTask(162).." �i�m Ph�c Duy�n",6,
"��i v�t ph�m /doivatpham",
"��i Ph�c Duy�n /doiph",
--"Ta mu�n b�n Qu� Huy Ho�ng /banquahh",
--"Shop V�ng Kh�a  /shopvangkhoa",
"��i B� K�p 120 /doibk120",
--"Mua L�nh B�i V��t �i /lenhbai",
--"Mua L�nh B�i Phong L�ng �� /mualenhbai",
--"L�nh B�i Phong L�ng �� /lenhbaipld",
--"L�nh B�i ��i M�u Bang [50 v�n]/lenhbaidoimau",
"Mua M�t �� Th�n B� /muamatdo",
"Mua L�nh B�i Map 100 [10 v�n] /mualbmap100",
--"Danh V�ng �an [20 �i�m danh v�ng]/doidv",
--"500 �i�m Ph�c Duy�n [1 Kim Nguy�n B�o]/doipd",
--"T�ng 5% may m�n trong 30 ph�t [100 �i�m] /doithienson",
--"T�ng 10% may m�n trong 30 ph�t [250 �i�m] /doiquehoa",
--"Thi�n S�n B�o L� Nh�m [250 �i�m]/doithienson1", 
--"Qu� Hoa T�u Nh�m [600 �i�m] /doiquehoa2",

"Tho�t./no")
end


function doivatpham()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>: Ng��i mu�n ��i v�t ph�m n�o? ",9,
"Lam Thu� Tinh [500 �i�m]/muaitem1",
"T� Thu� Tinh [500 �i�m]/muaitem1",
"L�c Thu� Tinh [500 �i�m]/muaitem1",
"Tinh H�ng B�o Th�ch [250 �i�m]/muaitem1",
"X� L�i Kim ��n [100 �i�m]/muaitem1",
"Thi�n S�n B�o L� [500 �i�m]/muaitem1",
"Qu� Hoa T�u [1000 �i�m]/muaitem1",
"L�nh B�i  Phong L�ng �� [100 �i�m]/muaitem1",
"Thoat./no")
end

function muaitem1(nsel)
i = nsel + 1
iditem = -1
cost = 0
if i == 1 then
	iditem = 28
	cost = 500
elseif  i  == 2 then
	iditem = 29
	cost = 500
elseif  i  == 3 then
	iditem = 30
	cost = 500
elseif  i  == 4 then
	iditem = 31
	cost = 250
elseif  i  == 5 then
	iditem = 59
	cost = 100
elseif  i  == 6 then
	iditem = 919
	cost = 500
elseif  i  == 7 then
	iditem = 920
	cost = 1000
elseif  i  == 8 then
	iditem = 135
	cost = 100
end
	
if iditem == -1 or cost == 0 then
Talk(1,"","V�t ph�m ch�a ���c b�y b�n !!!")
return
end

diem = GetTask(162)
if diem < cost then
Talk(1,"","�i�m ph�c duy�n kh�ng �� "..cost.." �i�m, kh�ng th� ��i v�t ph�m")
return
end
	
SetTask(162, GetTask(162) - cost)
if GetTask(162) == diem - cost then	
	idxitem = AddEventItem(iditem)
	Msg2Player("B�n nh�n ���c 1 "..GetNameItemBox(idxitem).."")
	
	inlogdoivp("["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." - PD c�n l�i: "..GetTask(162).."")
else
	Talk(1,"","Hack ha em")
end	
end



function doibk120()

if GetLevel() < 120 then
Talk(1,"","��ng c�p d��i 120 kh�ng th� ��i B� Kip ")
return
end

if GetTask(918) ~= 0 then
Talk(1,"","Ng��i �� ��i Bi Kip 120, kh�ng th� ��i l�n th� 2 !")
return
end
if GetItemCount(28) < 1 or GetItemCount(29) < 1 or GetItemCount(30) < 1 then
Talk(1,"","Ng��i kh�ng mang �� 1 b� Th�y Tinh, kh�ng th� ��i !")
return
end

if GetItemCount(31) < 6 then
Talk(1,"","Ng��i kh�ng mang �� 1 b� Tinh H�ng B�o Th�ch, kh�ng th� ��i !")
return
end
if GetItemCount(252) < 1 then
Talk(1,"","Ng��i kh�ng mang �� 1 cu�n B�t Nh� T�m Kinh, kh�ng th� ��i !")
return
end

if GetItemCount(0) < 1 then
Talk(1,"","Ng��i kh�ng mang �� 1 cu�n V� L�m M�t T�ch, kh�ng th� ��i !")
return
end
if GetItemCount(1) < 1 then
Talk(1,"","Ng��i kh�ng mang �� 1 cu�n T�y T�y Kinh, kh�ng th� ��i !")
return
end


vt = mp()

if checkbk(vt) == 1 then
Talk(1,"","Ng��i kh�ng mang �� 1 b� B� Kip 90 m�n ph�i, kh�ng th� ��i !")
return
end

if GetCash() < 10000000 then
Talk(1,"","Ng��i kh�ng mang �� 1000 v�n l��ng, kh�ng th� ��i !")
return
end

for i=28,30 do DelItem(i) end
for i=1,6 do DelItem(31) end
DelItem(252)
DelItem(0)
DelItem(1)
Pay(10000000)
for i = 1, getn(bkmp[vt]) do DelItem(bkmp[vt][i]) end
SetTask(918,1) -- Xac nhan doi BK 120 
AddEventItem(19)
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().." <color=red>��i ���c <color=yellow>B� Kip 120<color=red> t�i Th�n B� Th��ng Nh�n")


thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/DoiBiKip12x.txt", "a");
if LoginLog then
write(LoginLog,"["..GetAccount().."] ["..GetName().."] ["..GetLevel().."]- Time: "..thoigian.."\n");
end
closefile(LoginLog)

end


function checkbk(vt)
for i = 1, getn(bkmp[vt]) do
	if GetItemCount(bkmp[vt][i]) < 1 then
			return 1
	end
end
return 0
end
bkmp = {
{75,76,77},
{78,79,80},
{81,82,83,84},
{85,86,87},
{88,89,90},
{91,92},
{93,94},
{95,96,97},
{98.99},
{100,101,102},
}

function doiph()
SayNew("<color=green>Th�n B� Th��ng Nh�n  <color>: Ch�o ��i hi�p <color=red>"..GetName().."<color>. B�n ch�n lo�i n�o ?",4,
"Ph�c duy�n ti�u [12 di�m]/doiph2",
"Ph�c duy�n trung [24 di�m]/doiph2",
"Ph�c duy�n ��i [60 di�m]/doiph2",
"Tho�t./no")
end

function doiph2(nsel)
i = nsel+1
sl = GetTask(162)
if i == 1 then
	if GetTask(162) >= 12 then
		SetTask(162,GetTask(162)-12)
		if GetTask(162) == (sl-12) then
			AddEventItem(173)
			Msg2Player("B�n nh�n ���c 1 b�nh Ph�c Duy�n ti�u")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","<color=green>H� Tr� T�n Th�  <color>: B�n kh�ng �� 12 �i�m ph�c duy�n !")
	end
elseif i == 2 then
	if GetTask(162) >= 24 then
		SetTask(162,GetTask(162)-24)
		if GetTask(162) == (sl-24) then
			AddEventItem(174)
			Msg2Player("B�n nh�n ���c 1 b�nh Ph�c Duy�n trung")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","<color=green>H� Tr� T�n Th�  <color>: B�n kh�ng �� 24 �i�m ph�c duy�n !")
	end
elseif i == 3 then
	if GetTask(162) >= 60 then
		SetTask(162,GetTask(162)-60)
		if GetTask(162) == (sl-60) then
			AddEventItem(175)
			Msg2Player("B�n nh�n ���c 1 b�nh Ph�c Duy�n ��i")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","<color=green>H� Tr� T�n Th�  <color>: B�n kh�ng �� 60 �i�m ph�c duy�n !")
	end
end
end
function doiquehoa2()

if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end

pd = GetTask(162)
if GetTask(162) < 600 then
Talk(1,"","Ng��i kh�ng �� 600 ph�c duy�n, kh�ng th� ��i ");
return
end
SetTask(162, GetTask(162) - 600)
if GetTask(162) == pd - 600 then
	AddEventItem(649)
	Talk(1,"","B�n nh�n ���c 1 Qu� Hoa T�u Nh�m")
else
	Talk(1,"","Hack ha em")
end
end

function doithienson1()

if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end

pd = GetTask(162)
if GetTask(162) < 250 then
Talk(1,"","Ng��i kh�ng �� 250 ph�c duy�n, kh�ng th� ��i ");
return
end
SetTask(162, GetTask(162) - 250)
if GetTask(162) == pd - 250 then
	AddEventItem(648)
	Talk(1,"","B�n nh�n ���c 1 Thi�n S�n B�o L� Nh�m")
else
	Talk(1,"","Hack ha em")
end
end

function test()
Talk(1,"","V�t ph�m �ang ���c ki�m tra l�i, s� c�p nh�t trong t�i nay !")
end

function doithienson()
if GetTask(483) > 0 then
Talk(1,"","B�n �ang trong th�i gian s� d�ng T�ng May M�n, kh�ng th� s� d�ng th�m !")
return
end
if GetTask(162) < 100 then
Talk(1,"","Ng��i kh�ng �� 100 ph�c duy�n, kh�ng th� ��i ");
return
end
SetTask(162, GetTask(162) - 100)
SetTask(483,  30* 60 * 18)
SetTask(488,5)
Talk(1,"","�� nh�n th�nh c�ng <color=green>5% May M�n<color> trong 30 ph�t !")
end

function doiquehoa()
if GetTask(483) > 0 then
Talk(1,"","B�n �ang trong th�i gian s� d�ng T�ng May M�n, kh�ng th� s� d�ng th�m !")
return
end
if GetTask(162) < 250 then
Talk(1,"","Ng��i kh�ng �� 250 ph�c duy�n, kh�ng th� ��i ");
return
end
SetTask(162, GetTask(162) - 250)
SetTask(483,  30* 60 * 18)
SetTask(488,10)
Talk(1,"","�� nh�n th�nh c�ng <color=yellow>10% May M�n<color> trong 30 ph�t !")
end

function doipd()
knb = GetItemCount(17) 
if GetItemCount(17) >= 1 then
	DelItem(17)
	if GetItemCount(17) == knb - 1 then
		SetTask(162, GetTask(162) + 500)
		Msg2Player("B�n nh�n ���c 500 �i�m Ph�c Duy�n")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
Talk(1,"","Ng��i kh�ng c� 1 Kim Nguy�n B�o, t�m ta l�m g�?")
end
end
function lenhbaidoimau()
if GetTongName() == "" then
Talk(1,"","Ng��i kh�ng c� bang h�i, kh�ng th� mua v�t ph�m")
return
end

if GetTongFigure() ~= 3 then
Talk(1,"","Ch� c� Bang Ch� m�i c� th� mua v�t ph�m n�y")
return
end

vang = GetCash()
if vang >= 500000 then
	Pay(500000)
	if GetCash() == vang - 500000 then
		AddEventItem(402)
		Msg2Player("B�n nh�n ���c 1 L�nh B�i ��i M�u Bang. H�y ph�t cho Tr��ng L�o �� s� d�ng nh� ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� 50 v�n l��ng, kh�ng th� mua ")
end

end


function doidv()
if GetTask(100) >= 20 then
	SetTask(100, GetTask(100) - 20)
	AddEventItem(363)
	Msg2Player("B�n nh�n ���c 1 Danh V�ng �an")
	Talk(0,"")
else
Talk(1,"","Ng��i kh�ng �� 20 �i�m danh v�ng")
end
end


function shopvangkhoa()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end
SayNew("Hi�n t�i ng��i �ang c� <color=yellow>"..GetTask(463).." V�ng Kh�a<color>, ng��i mu�n mua g� n�o? ",8,
"TTL 6 Gi� - Kh�a [10 v�ng]/muaban1x",
"1000 v�n [100 v�ng]/muaban4x",
"20 MDTB [2 v�ng]/muaban",
"L�nh B�i PLD [2 V�ng]/muaban2",
"L�nh B�i ��i M�u Bang [5 V�ng]/muaban3",
"T�i M�u VIP 3 Ng�y [8 V�ng] /muaban8",
"T�i M�u Ng� Hoa [1 V�ng = 5 T�i] /muaban9",
"Tho�t./no")
end
mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function test()
Talk(1,"","S� c�p nh�t v�o 6h ng�y 27/08/2017")
end

function muaban4x()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetTask(463) >= 100 then
	SetTask(463, GetTask(463) - 100)
		Earn(10000000)
		Msg2Player("B�n nh�n ���c 1000 v�n l��ng")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." -  1000 Van")
else
	Talk(1,"","Ng��i kh�ng �� 100 V�ng, kh�ng th� mua ")
end
end
function muaban1x()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetTask(463) >= 10 then
	SetTask(463, GetTask(463) - 10)
		idxitem = AddEventItem(120)
		SetBindItem(idxitem , 1)
		Msg2Player("B�n nh�n ���c 1 Ti�n Th�o L� 6 Gi� Kh�a")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Tien Thao Lo")
else
	Talk(1,"","Ng��i kh�ng �� 10 V�ng, kh�ng th� mua ")
end
end

function muaban9()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetTask(463) >= 1 then
	SetTask(463, GetTask(463) - 1)
	

		itemidx = AddEventItem(103)
		itemidx = AddEventItem(103)
		itemidx = AddEventItem(103)
		itemidx = AddEventItem(103)
		itemidx = AddEventItem(103)
		Msg2Player("B�n nh�n ���c 5 Ng� Hoa Ng�c L� Ho�n L� Bao")
	
	
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Tui Mau Ngu Hoa")
else
	Talk(1,"","Ng��i kh�ng �� 1 V�ng, kh�ng th� mua ")
end
end

function muaban8()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetTask(463) >= 8 then
	SetTask(463, GetTask(463) - 8)
	
		ngay = ngay + 3
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
			thang = thang + 1
		end
		itemidx = AddEventItem(264)
		SetHSD(itemidx, 2018 , thang, ngay, gio )
		Msg2Player("B�n nh�n ���c 1 [VIP] Th�a Ti�n M�t L� Bao")
	
	
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Tui Mau Vip")
else
	Talk(1,"","Ng��i kh�ng �� 8 V�ng, kh�ng th� mua ")
end
end

function muaban7()
if GetTask(463) >= 150 then
	SetTask(463, GetTask(463) - 150)
	idxitem = AddEventItem(19)
	SetBindItem(idxitem,1)
	Msg2Player("B�n nh�n ���c 1 Bi Kip 120")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Bi Kip 120")
else
	Talk(1,"","Ng��i kh�ng �� 150 V�ng, kh�ng th� mua ")
end
end
function muaban6()
if GetTask(463) >= 100 then
	SetTask(463, GetTask(463) - 100)
	idxitem = AddItem(0,10,5,3,0,0,0)
	SetTimeItem(idxitem,550324);
	Msg2Player("B�n nh�n ���c 1 Tuy�t �nh")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Ngua 80")
else
	Talk(1,"","Ng��i kh�ng �� 100 V�ng, kh�ng th� mua ")
end
end
function muaban5()
if GetTask(463) >= 20 then
	SetTask(463, GetTask(463) - 20)
	idxitem = AddEventItem(1)
	SetBindItem(idxitem , 1)
	Msg2Player("B�n nh�n ���c 1 T�y T�y Kinh ")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Tay Tuy Kinh")
else
	Talk(1,"","Ng��i kh�ng �� 20 V�ng, kh�ng th� mua ")
end
end
function muaban4()
if GetTask(463) >= 20 then
	SetTask(463, GetTask(463) - 20)
	idxitem = AddEventItem(0)
	SetBindItem(idxitem , 1)
	Msg2Player("B�n nh�n ���c 1  V� L�m M�t T�ch ")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Vo Lam Mat Tich")
else
	Talk(1,"","Ng��i kh�ng �� 20 V�ng, kh�ng th� mua ")
end
end

function muaban3()
if GetTask(463) >= 5 then
	SetTask(463, GetTask(463) - 5)
	AddEventItem(402)
	Msg2Player("B�n nh�n ���c 1 L�nh B�i ��i M�u Bang")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Tay Tuy")
else
	Talk(1,"","Ng��i kh�ng �� 5 V�ng, kh�ng th� mua ")
end
end
function muaban2()
if GetTask(463) >= 2 then
	SetTask(463, GetTask(463) - 2)
	idxitem = AddEventItem(135)
	
	Msg2Player("B�n nh�n ���c 1 L�nh B�i Phong L�ng �� ")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Nu Nhi Hong 6 Gio")
else
	Talk(1,"","Ng��i kh�ng �� 2 V�ng, kh�ng th� mua ")
end
end

function muaban()
if GetTask(463) >= 2 then
	SetTask(463, GetTask(463) - 2)
	for i=1,20 do
	idxitem = AddEventItem(253)
	end
	Msg2Player("B�n nh�n ���c 20 M�t �� Th�n B� ")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - Tien Thao Lo 6 Gio")
else
	Talk(1,"","Ng��i kh�ng �� 2 V�ng, kh�ng th� mua ")
end
end

function muaban_event()
SayNew("Gi� 20 Ng�i Sao May M�n l� 40 V�ng Kh�a, ng��i ch�n mua bao nhi�u",4,
"20 Ng�i Sao/muaban1",
"100 Ng�i Sao/muaban1",
"500 Ng�i Sao/muaban1",
"Tho�t./no")
end
function muaban1(nsel)
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� mua v�t ph�m !")
	return
end
if GetItemCount(73) > 0 then
Talk(1,"","Vui l�ng b� to�n b� Ng�i Sao May M�n v�o R��ng Ch�a �� ho�c S� D�ng h�t m�i c� th� mua ti�p")
return
end
i = nsel + 1
soluong = 0
vang = 0
if i == 1 then
	soluong = 20
	vang = 40
elseif i == 2 then
	soluong = 100
	vang = 200
elseif i == 3 then
	soluong = 500
	vang = 1000
end

if GetTask(492) + soluong > 600 then
Talk(1,"","S� l��ng Ng�i Sao May M�n �� mua:<color=yellow> "..GetTask(492).." / 600<color>\nN�u mua th�m "..soluong.." s� v��t qu� s� l��ng quy ��nh")
return
end

if GetTask(463) >= vang then
	SetTask(463, GetTask(463) - vang)
	SetTask(492, GetTask(492) + soluong)
	Msg2Player("B�n �� mua ���c "..GetTask(492).." / 600 c�i")
	for i=1,soluong do
		idxitem = AddEventItem(73)
		SetBindItem(idxitem , 1)
	end
	Msg2Player("B�n nh�n ���c "..soluong.." Ng�i Sao May M�n")
	inlogvangkhoa("["..GetTask(463).."] "..GetAccount().." - "..GetName().." - "..soluong.." Ngoi Sao May Man")
else
	Talk(1,"","Ng��i kh�ng �� "..vang.." V�ng, kh�ng th� mua ")
end
end

function main1()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>: Ta chuy�n mua b�n v�t ph�m gi� tr� cao b�ng ng�n l��ng",7,
"Mua Th�y Tinh /muatt",
"20 M�t �� Th�n B� /new_muamatdo",
"Mua Qu� Huy Ho�ng /muahh",
"L�nh B�i V��t �i /lenhbai",
"L�nh B�i Phong L�ng �� /lenhbaipld",
"T�y S�ch �i�m PK /taypk",
"Tho�t./no")
end

function new_muamatdo()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>:  Ta b�n 20 <color=red>M�t �� Th�n B� <color>v�i gi� <color=yellow>100 v�n l��ng<color>, ng��i c� ��ng � kh�ng?",2,
"Ta ��ng � mua /new_muamatdo1",
"Tho�t./no")
end

function new_muamatdo1()
cash = GetCash()
if GetCash() >= 1000000 then
	Pay(1000000)
	if GetCash() == cash - 1000000 then
		for k=1,20 do AddEventItem(253) end
		Msg2Player("B�n nh�n ���c 20 M�t �� Th�n B� ");
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 100 v�n l��ng, kh�ng th� mua !")
end
end



function muahh()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>:  Ta b�n 1 <color=red>Qu� Huy Ho�ng <color>v�i gi� <color=yellow>300 v�n l��ng<color>, ng��i c� ��ng � kh�ng?",2,
"Ta ��ng � mua /muahh1",
"Tho�t./no")
end

function muahh1()
cash = GetCash()
if GetCash() >= 3000000 then
	Pay(3000000)
	if GetCash() == cash - 3000000 then
		AddEventItem(22)
		Msg2Player("B�n nh�n ���c 1 Qu� Huy Ho�ng");
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 300 v�n l��ng, kh�ng th� mua !")
end
end

function muatt()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>:  Ta b�n 1 <color=red>Th�y Tinh <color>v�i gi� <color=yellow>500 v�n l��ng<color>, ng��i c� ��ng � kh�ng?",3,
"Lam Th�y Tinh /muatt1",
"L�c Th�y Tinh /muatt1",
"Tho�t./no")
end
function muatt1(nsel)
cash = GetCash()
if GetCash() >= 5000000 then
	Pay(5000000)
	if GetCash() == cash - 5000000 then
		if nsel == 0 then
		AddEventItem(28)
		else
		AddEventItem(30)
		end
		Msg2Player("B�n nh�n ���c 1 Th�y Tinh");
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 500 v�n l��ng, kh�ng th� mua !")
end
end

function mualenhbai()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>:  Ta b�n 1 <color=red>L�nh B�i Phong L�ng �� <color>v�i gi� <color=yellow>30 v�n l��ng<color>, ng��i c� ��ng � kh�ng?",2,
"Ta ��ng � mua 30 v�n/lenhbaipld1",
"Tho�t./no")
end

function lenhbaipld1()
cash = GetCash()
if GetCash() >= 300000 then
	Pay(300000)
	if GetCash() == cash - 300000 then
		AddEventItem(135)
		Msg2Player("B�n nh�n ���c 1 L�nh B�i Phong L�ng ��");
		inlogpld(""..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 30 v�n l��ng, kh�ng th� mua !")
end
end
function lenhbaipld2()
cash = GetTask(99)
if GetTask(99) >= 2 then
	SetTask(99, GetTask(99) - 2)
	SetTask(101, GetTask(101) - 2)
	if GetTask(99) == cash - 2 then
		AddEventItem(135)
		Msg2Player("B�n nh�n ���c 1 L�nh B�i Phong L�ng ��");
		inlogpld(""..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 2 v�ng, kh�ng th� mua !")
end
end


function lenhbai()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>:  Ta b�n 1 <color=red>L�nh B�i V��t �i<color> v�i gi� <color=yellow>30 v�n l��ng<color>, ng��i c� ��ng � kh�ng?",2,
"Ta ��ng � mua 30 v�n/lenhbai1",
--"Ta ��ng � mua 2 v�ng/lenhbai2",
"Tho�t./no")
end

function lenhbai1()
cash = GetCash()
if GetCash() >= 300000 then
	Pay(300000)
	if GetCash() == cash - 300000 then
		AddEventItem(156)
		Msg2Player("B�n nh�n ���c 1 L�nh B�i Li�n Ho�n Ai");
		inloglbva(""..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 30 v�n l��ng, kh�ng th� mua !")
end
end
function lenhbai2()
cash = GetTask(99)
if GetTask(99) >= 2 then
	SetTask(99, GetTask(99) - 2)
	SetTask(101, GetTask(101) - 2)
	if GetTask(99) == cash - 2 then
		AddEventItem(156)
		Msg2Player("B�n nh�n ���c 1 L�nh B�i Li�n Ho�n Ai");
		inloglbva(""..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 2 v�ng, kh�ng th� mua !")
end
end


function taypk()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>:  Ta s� gi�p ng��i T�y S�ch <color=red>"..GetPK().." �i�m PK<color> v�i ph� <color=yellow>1 Kim Nguy�n B�o<color>, ng��i c� ��ng � kh�ng?",2,
"Ta ��ng � /taypk1",
"Tho�t./no")
end
function taypk1()
if GetItemCount(17) >= 1 then
		DelItem(17)
		SetPK(0)
		Msg2Player("B�n �� t�y s�ch �i�m PK")
		inlogruapk(""..GetAccount().." - "..GetName().." - "..GetLevel().." ")
else
	Talk(1,"","Ng��i kh�ng mang theo 1 Kim Nguy�n B�o, kh�ng th� t�y PK")
end
end

function lendao()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>:  Ta s� gi�p ng��i c� quy�n l�n ��o T�y T�y 1 l�n v�i ph� <color=yellow>2 Kim Nguy�n B�o<color>, ng��i c� ��ng � kh�ng?",2,
"Ta ��ng � /lendao1",
"Tho�t./no")
end
function lendao1()
if GetItemCount(17) >= 2 then
		DelItem(17)
		DelItem(17)
		SetTask(196,0)
		Msg2Player("Ng��i ta c� quy�n l�n ��o T�y T�y, h�y ��n Xa Phu Th�nh Th� �� di chuy�n")
		inlogtaytuy(""..GetAccount().." - "..GetName().." - "..GetLevel().." ")
else
	Talk(1,"","Ng��i kh�ng mang theo 2 im Nguy�n B�o, kh�ng th� mua ch�c n�ng n�y")
end
end

function banquahh()
if GetItemCount(22) > 0 then
		cash = GetCash()
		sl = GetItemCount(22)
		DelItem(22)
		if GetItemCount(22) == sl - 1 then
			m = 20000
			sxitem = RandomNew(1,10)
			if sxitem == 5 then
			m = random(50000,100000)
			else
			m = random(20000,50000)
			end
			Earn(m)
			if m > 90000 then
				Msg2SubWorld("Ch�c m�ng "..GetName().." b�n Qu� Huy Ho�ng nh�n ���c s� ti�n l�n <color=yellow>"..m.." l��ng !")
			else
				Msg2Player("B�n nh�n ���c <color=yellow>"..m.." l��ng ")
			end
		end
else
Talk(1,"","Ng��i kh�ng mang theo Qu� Huy Ho�ng !")
end
end


function mualongden()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>: B�n c� ch�c ch�n mu�n mua <color=red>1 L�ng ��n K�o Qu�n<color>v�i gi� <color=yellow>50 v�n l��ng<color> kh�ng?",2,
"Ta ch�c ch�n mua/mualongden1",
"Tho�t./no")
end

function mualongden1()
sl = GetItemCount(253)
a = GetCash()
if GetCash()  >= 500000 then
	Pay(500000)
	if GetCash() == (a-500000) then
		AddEventItem(144)
		Msg2Player("B�n nh�n ���c L�ng ��n K�o Qu�n!")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 50 v�n l��ng !")
end


end

function mualbmap100()
vang = GetCash()
if vang >= 100000 then
	Pay(100000)
	if GetCash() == vang - 100000 then
		AddEventItem(686)
		Msg2Player("B�n nh�n ���c 1 L�nh B�i Map 100. H�y l�i xa phu �� di chuy�n l�n Kh�a L�ng ��ng ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� 10 v�n l��ng, kh�ng th� mua ")
end

end

function muamatdo()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>: B�n mu�n mua <color=red>20 M�t �� Th�n B� <color>v�i gi� <color=yellow>50 v�n l��ng<color> hay <color=yellow>5 Ti�n ��ng<color>",3,
"Mua b�ng 50 V�n L��ng/muamatdo1",
"Mua b�ng 2 Ti�n ��ng/muamatdo2",
"Tho�t./no")
end

function muamatdo1()
sl = GetItemCount(253)
a = GetCash()
if GetCash()  >= 500000 then
	Pay(500000)
	if GetCash() == (a-500000) then
	for k=1,20 do
		AddEventItem(253)
	end
	inlogmatdo("[1] "..GetAccount().." - "..GetName().."")
	Msg2Player("B�n nh�n ���c 20 M�t �� Th�n B� !")
	Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 50 v�n l��ng !")
end
end

function muamatdo2()
sl = GetItemCount(697)
if GetItemCount(697) < 2 then
Talk(1,"","S� l��ng Ti�n ��ng trong h�nh trang kh�ng ��, vui l�ng ki�m tra l�i !")
return
end
for i=1,2 do
		DelItem(697)
end

if GetItemCount(697) == sl - 2 then

for k=1,20 do
		AddEventItem(253)
	end
	inlogmatdo("[2] "..GetAccount().." - "..GetName().."")
	Msg2Player("B�n nh�n ���c 20 M�t �� Th�n B� !")
	Talk(0,"")


else
Talk(1,"","Hack ha em")
end


end
function muamatdo3()
sl = GetItemCount(253)
a = GetTask(463)
if GetTask(463) >= 5 then
	SetTask(463, GetTask(463) - 5)
	if GetTask(463) == (a-5) then
	for k=1,20 do
		AddEventItem(253)
	end
	inlogmatdo("[3] "..GetAccount().." - "..GetName().."")
	Msg2Player("B�n nh�n ���c 20 M�t �� Th�n B� !")
	Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 5 v�ng kh�a !")
end
end

function hoangkimsat_bk()
Talk(1,"","Ho�ng Kim S�t �� chuy�n sang K� Tr�n C�c. H�y m� b�o v�t �� mua")
end

function amuaquahk()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>: X�c nh�n mua <color=yellow>Th�y Tinh<color>",2,
"Ta mua Th�y Tinh v�i gi� 300 v�n/muaquahk",
"Ta ch�n nh�m/no")
end
function amuathanbi()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>: X�c nh�n mua <color=yellow>X� L�i Kim ��n<color>",2,
"Ta mua X� L�i Kim ��n v�i gi� 200 v�n/muathanbi",
"Ta ch�n nh�m/no")
end
function muabk120()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>: B�n c� ch�c ch�n mu�n mua Bi Kip 120 v�i gi� <color=yellow>200<color> v�ng ",2,
"Mua Bi Kip 120/yesbk120",
"Kh�ng mua/no")
end


function yesbk120()

if CheckFreeBoxItem(0,10,8,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end
 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 200 and GetTask(101) >= 200 and CheckFreeBoxItem(0,10,8,1) ~= 0 then
	SetTask(99,GetTask(99) - 200)
	SetTask(101,GetTask(101) - 200)
	if GetTask(99) == vang-200 and GetTask(101) == vang2 - 200 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(0,10,8,1) ~= 0 then
		AddEventItem(19)
		inlogbk("Log: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B�n nh�n ���c 1 Bi Kip 120")
		Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." �� mua th�nh c�ng <color=yellow>Bi Kip 120<color> t�i Shop Th�n B� Th��ng Nh�n")
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>200<color> v�ng, kh�ng th� giao d�ch!")
end
end

function hoangkimsat()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>: B�n c� ch�c ch�n mu�n mua Ho�ng Kim S�t v�i gi� <color=yellow>10<color> v�ng ",2,
"Mua Ho�ng Kim S�t/yeshks",
"Kh�ng mua/no")
end


function yeshks()

if CheckFreeBoxItem(0,10,8,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end
 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 10 and GetTask(101) >= 10 and CheckFreeBoxItem(0,10,8,1) ~= 0 then
	SetTask(99,GetTask(99) - 10)
	SetTask(101,GetTask(101) - 10)
	if GetTask(99) == vang-10 and GetTask(101) == vang2 - 10 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(0,10,8,1) ~= 0 then
		AddEventItem(128)
		inloghks("Log: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B�n nh�n ���c 1 Ho�ng Kim S�t")
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>10<color> v�ng, kh�ng th� giao d�ch!")
end
end


function muaphivan()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>: B�n c� ch�c ch�n mu�n mua Phi V�n Th�n M� v�i gi� <color=yellow>250<color> v�ng ",2,
"Mua Phi V�n/yespv",
"Kh�ng mua/no")
end

function yespv()
if CheckFreeBoxItem(0,10,8,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end
 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 250 and GetTask(101) >= 250 and CheckFreeBoxItem(0,10,8,1) ~= 0 then
	SetTask(99,GetTask(99) - 250)
	SetTask(101,GetTask(101) - 250)
	if GetTask(99) == vang-250 and GetTask(101) == vang2 - 250 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(0,10,8,1) ~= 0 then
		AddItem(0,10,8,1,0,0,0)
		inlogphivan("Log: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B�n nh�n ���c 1 Phi V�n Th�n M� ")
		Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." �� mua th�nh c�ng <color=yellow>Th�n M� Phi V�n<color> t�i Shop Th�n B� Th��ng Nh�n")
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>250<color> v�ng, kh�ng th� giao d�ch!")
end
end

function xoanv()
for i=1,getn(VoDanh) do
	if VoDanh[i][3] ~= 9999 then
		Talk(1,"","�� x�a t�i kho�n: "..VoDanh[i][1].." - Nh�n v�t: "..VoDanh[i][2].." ")
		VoDanh[i][3] = 9999
		savebang()
		return
	end
end
end
function kiemtranv()
vt = kiemtranv2()
if vt == 0 then
Talk(1,"","Hi�n kh�ng c� nh�n v�t n�o c�n gi�i quy�t c� !")
return
end
Talk(1,"","T�i Kho�n s�p h�t h�n: [<color=green>"..VoDanh[vt][1].."<color>] - NV: "..VoDanh[vt][2].." - Mua ng�y: "..VoDanh[vt][4].." th�ng "..VoDanh[vt][5].." ")
end
function kiemtranv2()
for i=1,getn(VoDanh) do
	if VoDanh[i][3] ~= 9999 then
		return i
	end
end
return 0
end

function muavodanh()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>: \nC�p Nh�n V� Danh Gi�i Ch� [30 ng�y]. \nGi�: 10 Kim Nguy�n B�o\nNg��i c� ch�c ch�n mu�n mua kh�ng? ",2,
"Ta ��ng � mua v�t ph�m n�y /muavodanh2",
"Xin l�i �� l�m phi�n ng��i/no")
end


function muavodanh2()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

slknb = GetItemCount(17)
if GetItemCount(17) >= 10 then
	for i=1,10 do DelItem(17) end
	if GetItemCount(17) == slknb - 10 then
		item1=AddItem(0,3,31,2,0,0,0)
		SetTimeItem(item1,550324);
		item2=AddItem(0,3,32,2,0,0,0)
		SetTimeItem(item2,550324);
		thoigian = tonumber(date("%H%M%d%m"))
		VoDanh[getn(VoDanh)+1] = {GetAccount(),GetName(),GetLevel(),ngay,thang,time}
		savebang()
		Msg2SubWorld("Ch�c m�ng "..GetName().." �� mua th�nh c�ng trang b� V� Danh Gi�i Ch� [30 ng�y] ")
		Msg2Player("<color=green>H�n s� d�ng: Ng�y "..ngay.." Th�ng "..(thang+1).." N�m 2015")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","�� mua v�t ph�m n�y c�n <color=yellow>10 Kim Nguy�n B�o<color> !")
end


end

function muasudolenh()
if CheckFreeBoxItem(4,14,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end

slknb = GetItemCount(14) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 10 and GetTask(101) >= 10 and CheckFreeBoxItem(4,14,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 10)
	SetTask(101,GetTask(101) - 10)
	if GetTask(99) == vang-10 and GetTask(101) == vang2 - 10 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,14,1,1) ~= 0 then
		AddEventItem(14)
		inlogsudolenh("Vang: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B�n nh�n ���c 1 S� �� L�nh")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>10<color> v�ng, kh�ng th� giao d�ch !")
end
end
function muamattich()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>: Ch�n lo�i M�t T�ch M�n Ph�i mu�n mua. Gi�: <color=yellow>20 v�ng ",10,
"M�t t�ch Thi�u L�m/muamattich1",
"M�t t�ch Thi�n V��ng/muamattich1",
"M�t t�ch ���ng M�n/muamattich1",
"M�t t�ch Ng� ��c/muamattich1",
"M�t t�ch Nga Mi/muamattich1",
"M�t t�ch Th�y Y�n/muamattich1",
"M�t t�ch Thi�n Nh�n/muamattich1",
"M�t t�ch C�i Bang/muamattich1",
"M�t t�ch V� �ang/muamattich1",
"M�t t�ch C�n L�n/muamattich1")
end
function muamattich1(nsel)
if CheckFreeBoxItem(4,161,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end

slknb = GetItemCount(161) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 20 and GetTask(101) >= 20 and CheckFreeBoxItem(4,161,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 20)
	SetTask(101,GetTask(101) - 20)
	if GetTask(99) == vang-20 and GetTask(101) == vang2 - 20 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,161,1,1) ~= 0 then
		AddEventItem(4+nsel)
		inlogtstl("Mat Tich: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B�n nh�n ���c 1 M�t T�ch M�n Ph�i")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>20<color> v�ng, kh�ng th� giao d�ch !")
end
end


function muathienson()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>: Ng��i c� ch�c ch�n mu�n mua <color=yellow>Thi�n S�n Tuy�t Li�n<color> v�i gi� <color=yellow>150 v�ng<color> kh�ng?\nThi�n S�n Tuy�t Li�n gi�p t�ng nhanh ��ng c�p c�a c�c h� l�n <color=red>Level 135",2,
"Ta mu�n mua Thi�n S�n Tuy�t Li�n/muathienson1",
"Tho�t./no")
end
function muathienson1()
if CheckFreeBoxItem(4,161,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end

slknb = GetItemCount(161) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 150 and GetTask(101) >= 150 and CheckFreeBoxItem(4,161,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 150)
	SetTask(101,GetTask(101) - 150)
	if GetTask(99) == vang-150 and GetTask(101) == vang2 - 150 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,161,1,1) ~= 0 then
		AddEventItem(161)
		inlogtstl("Vang: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B�n nh�n ���c 1 Thien Son Tuyet Lien")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>150<color> v�ng, kh�ng th� giao d�ch !")
end
end

function muatt()
SayNew("<color=green>Th�n B� Th��ng Nh�n<color>: Ta chuy�n mua b�n v�t ph�m gi� tr� cao b�ng ng�n l��ng",3,
"Mua Lam Th�y Tinh/mualtt",
"Mua L�c Th�y Tinh/mualamtt",
"Tho�t./no")
end


function muaquahk()
sl = GetItemCount(22)
a = GetCash()
if GetCash()  >= 3000000 then
	Pay(3000000)
	if GetCash() == (a-3000000) then
		AddEventItem(random(28,30))
		Msg2Player("B�n nh�n ���c 1 Th�y Tinh!")
		inlogquahk("Tien Van: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 300 v�n l��ng !")
end
end


function muaquahk2()
if CheckFreeBoxItem(4,22,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end

slknb = GetItemCount(22) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 4 and GetTask(101) >= 4 and CheckFreeBoxItem(4,22,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 4)
	SetTask(101,GetTask(101) - 4)
	if GetTask(99) == vang-4 and GetTask(101) == vang2 - 4 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,22,1,1) ~= 0 then
		AddEventItem(22)
		inlogquahk("Vang: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B�n nh�n ���c 1 Qu� Ho�ng Kim")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>4<color> v�ng, kh�ng th� giao d�ch !")
end
end

function mualtt()
sl = GetItemCount(28)
a = GetCash()
if GetCash()  >= 2500000 then
	Pay(2500000)
	if GetCash() == (a-2500000) then
		AddEventItem(28)
		Msg2Player("B�n nh�n ���c 1 L�c Th�y Tinh !")
		inlogtb("Luc Thuy Tinh: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 250 v�n l��ng !")
end
end


function mualamtt()
sl = GetItemCount(30)
a = GetCash()
if GetCash()  >= 2500000 then
	Pay(2500000)
	if GetCash() == (a-2500000) then
		AddEventItem(30)
		Msg2Player("B�n nh�n ���c 1 Lam Th�y Tinh !")
		inlogtb("Lam Thuy Tinh: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 250 v�n l��ng !")
end
end

function muamdtb()
SayNew("Ch�n h�nh th�c thanh to�n:" ,3,
"60 v�n l��ng /muamdtb1",
"2 v�ng/muamdtb2",
"Tho�t./no")
end

function muamdtb1()
sl = GetItemCount(253)
a = GetCash()
if GetCash()  >= 600000 then
	Pay(600000)
	if GetCash() == (a-600000) then
		for k=1,20 do AddEventItem(253) end
		Msg2Player("B�n nh�n ���c 20 M�t �� Th�n B� !")
		inlog("Tien Van: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 60 v�n l��ng !")
end
end



function muamdtb2()
if CheckFreeBoxItem(4,253,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end


slknb = GetItemCount(253) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 2 and GetTask(101) >= 2 and CheckFreeBoxItem(4,253,1,1) ~= 0 then
	SetTask(99,GetTask(99) - 2)
	SetTask(101,GetTask(101) - 2)
	if GetTask(99) == vang-2 and GetTask(101) == vang2 - 2 and GetTask(99) == GetTask(101) and CheckFreeBoxItem(4,253,1,1) ~= 0 then
		for i=1,20 do AddEventItem(253) end
		inlog("Vang: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Msg2Player("B�n nh�n ���c 20 M�t �� Th�n B�")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>2<color> v�ng, kh�ng th� giao d�ch !")
end
end

function muathanbi()
sl = GetItemCount(59)
a = GetCash()
if GetCash()  >= 2000000 then
	Pay(2000000)
	if GetCash() == (a-2000000) then
		AddEventItem(59)
		inlogtbxaloi("Xa Loi: "..GetName().." - "..GetAccount().." - "..GetPK().." - "..GetLevel().." ")
		Msg2Player("B�n nh�n ���c 1 X� L�i Kim ��n !")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 200 v�n l��ng !")
end
end

function mualb()
sl = GetItemCount(135)
a = GetCash()
if GetCash()  >= 300000 then
	Pay(300000)
	if GetCash() == (a-300000) then
		AddEventItem(135)
		Msg2Player("B�n nh�n ���c 1 L�nh B�i Phong L�ng �� !")
		Talk(0,"")
	else	
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 30 v�n l��ng !")
end
end

function no()



end

function inlogquahk(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/HatHoangKimVang.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogquahk(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/HatHoangKimTien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlogtbxaloi(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/XaLoiKimDon.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogtstl(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/ThienSonTuyetLien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogtb(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/LenhBaiPLD.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogsudolenh(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/SuDoLenh.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end





function inlogphivan(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/MuaPhiVan.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogbk(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/ThienSonTuyetLien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inloghks(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/HoangKimSat.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogpld(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/LenhBaiPLD_50Van.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inloglbva(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/LenhBaiVuotAi_50Van.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogvangkhoa(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/ShopVangKhoa.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogruapk(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/RuaPK_1KNB.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlogtaytuy(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/TayTuy_2KNB.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlogmatdo(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/MatDoThanBi.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/ViSonDao.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function giaodich()
Sale(30)
end

function trangphuccuoi()
Sale(31)
end

function inlogdoivp(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/DoiVatPHam.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function savebang()
BANG = TaoBang(VoDanh,"VoDanh")				
LuuBang("datascript/thanbi/logvodanh.lua",BANG)
end