Include("\\script\\thuvien\\hamchuot.lua");
Include("\\script\\Global\\doimaump.lua")
Include("\\DataScript\\tongkim\\tongkim.lua")
Include("\\script\\lib\\thuvien.lua")


function main()
-- dofile("script\\hoatdong\\tongkim\\quanluong.lua")
	SayNew("<color=green>T�ng Qu�n Nhu: <color> B�n �ang c�: \n+ <color=yellow>"..GetTask(15).."<color> �i�m t�ch lu� T�ng Kim.",4,
	-- "C�a H�ng T�ch L�y T�ng Kim /muadaocu",
	--"C�a H�ng Ng�n L��ng/shoptk",
	--"C�a H�ng V�ng /shoptk",
--	"Mua ��o C� T�ng Kim/muadaocu",
	--"Mua Ch�a Kho� B�c [5 v�n] /muachiakhoabac",
	--"Mua Ch�a Kho� V�ng [10 v�n]/muachiakhoavang",
	"��i �i�m T�ch L�y T�ng Kim/doidiemtichluynew",
	-- "T�ch lu� ��i R��ng/dlrv",
	"��i Nh�c V��ng Ki�m [50 NVHT]/dnvhtnvk",
	--"Danh Hi�u VIP /vip_main", 
	"Tho�t/no")
end

function fixtk1()
SetTask(12,1)
end
function fixtk()
SetTask(12,2)
end

function shoptk(nsel)
i = nsel+1
if i == 1 then
Sale(34,2)
elseif i == 2 then
Sale(33)
elseif i == 3 then
Sale(32,1)
end
end
function doidiemtichluynew()
SayNew("<color=green>T�ng Qu�n Nhu: <color> B�n �ang c�: \n+ <color=yellow>"..GetTask(15).."<color> �i�m t�ch lu� T�ng Kim.",6,
"Ph�c Duy�n ��i [500 �i�m]/doidiemtichluynew2",  
"X� l�i kim ��n [2000 �i�m] /doidiemtichluynew2",
"M�nh Ng�a X�ch Th� [5000 �i�m] /doidiemtichluynew2",
-- "M�nh Ng�a Chi�u D� /doidiemtichluynew2",
-- "M�nh ��nh Qu�c /doidiemtichluynew2",
-- "M�nh An Bang /doidiemtichluynew2",
"1 tri�u kinh nghi�m /doitichluykinhnghiem",
"10 �i�m S� Ki�n [2500 �i�m] /doitichluysukien1",
"Tho�t./no")
end

function doidiemtichluynew2(nsel)
i = nsel + 1

tieuhao = 0
iditem = 0
if i == 1 then
	iditem = 175
	tieuhao = 500
elseif i == 2 then
	iditem = 59
	tieuhao = 2000
elseif i == 3 then
	iditem = 655
	tieuhao = 5000
end

if tieuhao == 0 then
Talk(1,"","V�t ph�m ch�a c�p nh�t !")
return
end
if GetTask(15) < tieuhao then
Talk(1,"","Ng��i kh�ng �� "..tieuhao.." t�ch l�y, kh�ng th� ��i")
return
end

SetTask(15, GetTask(15) - tieuhao)
idxitem = AddEventItem(iditem)
Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")

end
function doitichluysukien1()
ngay = tonumber(date("%d"))

-- if floor(GetTask(504) / 100) ~= ngay then
-- Msg2Player("Reset ng�y m�i: "..floor(GetTask(504) / 100).." !")
-- SetTask(504, ngay * 100)
-- end

-- if mod (GetTask(504) , 100) >= 10 then
-- Talk(1,"","H�m nay �� nh�n �� 10 tri�u kinh nghi�m, kh�ng th� nh�n th�m")
-- return
-- end

tl = GetTask(15)
if (tl >= 2500) then
SetTask(15,tl-2500)
if (GetTask(15) == (tl-2500)) then
SetTask(612, GetTask(612) + 10)
Msg2Player("B�n �� ��i 2500 �i�m t�ng kim l�y 10 �i�m S� Ki�n th�nh c�ng.")

Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Ng��i kh�ng �� <color=red> 2500 t�ch lu� <color>, bao gi� �� h�y ��n ��y.")
end
end;


function doitichluykinhnghiem()
ngay = tonumber(date("%d"))

if floor(GetTask(504) / 100) ~= ngay then
Msg2Player("Reset ng�y m�i: "..floor(GetTask(504) / 100).." !")
SetTask(504, ngay * 100)
end

if mod (GetTask(504) , 100) >= 10 then
Talk(1,"","H�m nay �� nh�n �� 10 tri�u kinh nghi�m, kh�ng th� nh�n th�m")
return
end

tl = GetTask(15)
if (tl >= 1000) then
SetTask(15,tl-1000)
if (GetTask(15) == (tl-1000)) then

AddOwnExp(1000000)
Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m")
SetTask(504, GetTask(504) + 1)
Msg2Player("Gi�i h�n:<color=yellow> "..mod(GetTask(504),100).." tri�u / 10 tri�u kinh nghi�m")

Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Ng��i kh�ng �� <color=red> 1000 t�ch lu� <color>, bao gi� �� h�y ��n ��y.")
end
end;

function vip_main()
SayNew("Hi�n �ang ng��i �ang c� <color=green>"..GetTask(484).." �i�m T�ch L�y VIP<color>. Ng��i mu�n ta gi�p g� ?",4,
"Th�ng c�p Danh Hi�u VIP /vip_thangcap",
"Quay S� H�ng Ng�y /vip_nhanruong",
"Mua 30 �i�m t�ch l�y [5 v�ng] /vip_muadiem",
"Tho�t./no")
end

function vip_muadiem()
ngay = tonumber(date("%d"))
vang = GetTask(99)

if ngay ~= GetTask(476) then
	if GetTask(99) >= 5 then
		SetTask(99, GetTask(99) - 5)
		SetTask(101 , GetTask(99))
		if GetTask(99) == vang - 5 then
			SetTask(484, GetTask(484) + 30)
			SetTask(476, ngay)
			Msg2Player("�i�m t�ch l�y VIP c�a b�n hi�n t�i l�: <color=green>"..GetTask(484).." �i�m")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","Ng��i kh�ng �� 5 v�ng, kh�ng th� mua")
	end
else
	Talk(1,"","Ng�y h�m nay ng��i �� mua �i�m T�ch L�y VIP r�i")
end
end
function vip_nhanruong()
Talk(1,"","Hi�n t�i ng��i c�n "..GetTask(478).." s� l��t quay")
end

function vip_thangcap()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

if GetTask(485) == 0 then
	diem = 500
	if GetTask(484) >= diem then
			if GetItemCount(17) >= 1 then
				DelItem(17)
				SetTask(485 , 1)
				for i=1,5 do 
					idxitem = AddEventItem(120)
					SetBindItem(idxitem , 1)
				end
				AddOwnExp(10000000)
				Msg2Player("B�n nh�n ���c 5 Ti�n Th�o L� 6 Gi� [Kh�a] + 10.000.000 kinh nghi�m")
				Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." �� th�ng c�p l�n VIP  "..GetTask(485).."")
				inlogvip("Thang Cap VIP "..GetTask(485).." - "..GetAccount().." - "..GetName().."")
			else
				Talk(1,"","Ng��i kh�ng mang theo 1 Kim Nguy�n B�o, kh�ng th� th�ng c�p")
			end	
	else
		Talk(1,"","Ng��i kh�ng �� <color=green>"..diem.." �i�m<color>, kh�ng �� �i�u ki�n l�n <color=yellow>VIP "..(GetTask(485) +1).."")
	end
elseif GetTask(485) == 1 then
	diem = 1200
	if GetTask(484) >= diem then
			if GetItemCount(17) >= 1 then
				DelItem(17)
				SetTask(485 , 2)
				for i=1,3 do 
					idxitem = AddEventItem(RandomNew(28,30))
				end
				AddOwnExp(10000000)
				Msg2Player("B�n nh�n ���c 3 Th�y  Tinh + 10.000.000 kinh nghi�m")
				Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." �� th�ng c�p l�n VIP "..GetTask(485).."")
				inlogvip("Thang Cap VIP "..GetTask(485).." - "..GetAccount().." - "..GetName().."")
			else
				Talk(1,"","Ng��i kh�ng mang theo 1 Kim Nguy�n B�o, kh�ng th� th�ng c�p")
			end	
	else
		Talk(1,"","Ng��i kh�ng �� <color=green>"..diem.." �i�m<color>, kh�ng �� �i�u ki�n l�n <color=yellow>VIP "..(GetTask(485) +1).."")
	end	
elseif GetTask(485) == 2 then
	diem = 2500
	if GetTask(484) >= diem then
			if GetItemCount(17) >= 1 then
				DelItem(17)
				SetTask(485 , 3)
				SetTask(196,0)
				AddOwnExp(10000000)
				Msg2Player("B�n nh�n ���c 1 L�n T�y T�y Mi�n Ph� + 10.000.000 kinh nghi�m")
				Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." �� th�ng c�p l�n VIP "..GetTask(485).."")
				inlogvip("Thang Cap VIP "..GetTask(485).." - "..GetAccount().." - "..GetName().."")
			else
				Talk(1,"","Ng��i kh�ng mang theo 1 Kim Nguy�n B�o, kh�ng th� th�ng c�p")
			end	
	else
		Talk(1,"","Ng��i kh�ng �� <color=green>"..diem.." �i�m<color>, kh�ng �� �i�u ki�n l�n <color=yellow>VIP "..(GetTask(485) +1).."")
	end	
elseif GetTask(485) == 3 then
	diem = 3500
	if GetTask(484) >= diem then
			if GetItemCount(17) >= 1 then
				DelItem(17)
				SetTask(485 , 4)
				for p=1,5 do AddEventItem(407) end
				AddOwnExp(10000000)
				Msg2Player("B�n nh�n ���c 5 B� Kip Th�ng C�p An Bang C�p 2 + 10.000.000 kinh nghi�m")
				Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." �� th�ng c�p l�n VIP "..GetTask(485).."")
				inlogvip("Thang Cap VIP "..GetTask(485).." - "..GetAccount().." - "..GetName().."")
			else
				Talk(1,"","Ng��i kh�ng mang theo 1 Kim Nguy�n B�o, kh�ng th� th�ng c�p")
			end	
	else
		Talk(1,"","Ng��i kh�ng �� <color=green>"..diem.." �i�m<color>, kh�ng �� �i�u ki�n l�n <color=yellow>VIP "..(GetTask(485) +1).."")
	end	
elseif GetTask(485) == 4 then
	diem = 5000
	if GetTask(484) >= diem then
			if GetItemCount(17) >= 1 then
				DelItem(17)
				SetTask(485 ,5)
				AddOwnExp(10000000)
				Msg2Player("B�n nh�n ���c V�ng S�ng VIP 5 + 10.000.000 kinh nghi�m")
				Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." �� th�ng c�p l�n VIP "..GetTask(485).."")
				inlogvip("Thang Cap VIP "..GetTask(485).." - "..GetAccount().." - "..GetName().."")
			else
				Talk(1,"","Ng��i kh�ng mang theo 1 Kim Nguy�n B�o, kh�ng th� th�ng c�p")
			end	
	else
		Talk(1,"","Ng��i kh�ng �� <color=green>"..diem.." �i�m<color>, kh�ng �� �i�u ki�n l�n <color=yellow>VIP "..(GetTask(485) +1).."")
	end	
else
		Talk(1,"","Ch�a c�p nh�t VIP 6")
end
end

function inlogvip(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/DanhHieuVIP.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function testmuachiakhoavang()
Talk(1,"","Ch�c n�ng s� c�p nh�t v�o ng�y mai")
end

function test()
SayNew("<color=green>Kim Qu�n Nhu: <color> B�n �ang c�: \n+ <color=yellow>"..GetTask(15).."<color> �i�m t�ch lu� T�ng Kim.\nNg��i mu�n ��i ph�n th��ng g�?",3,
--"��i Tu Luy�n Ch�u [4000 �i�m]/doitongkim1",
"��i Ti�n Th�o L� 3 Gi� [10000 �i�m]/doitongkim1",
"��i N� Nhi H�ng 3 Gi� [10000 �i�m]/doitongkim1",
--"��i 1 tri�u kinh nghi�m [1000 �i�m]/doidiemkinhnghiem",
"Tho�t./no")
end

function doidiemkinhnghiem()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

task = GetTask(15)
cost = 1000
if floor(GetTask(347)/1000) ~= ngay then
	SetTask(347 , ngay * 1000)
end

if mod(GetTask(347),1000) >= 20 then
Talk(1,"","B�n �� nh�n �� 20.000.000 kinh nghi�m h�m nay")
return
end

if GetTask(15) >= cost then
		SetTask(15 , GetTask(15) - cost)
		if GetTask(15) == task - cost then
			SetTask(347, GetTask(347) + 1)
			AddOwnExp(1000000)
			Msg2Player("Gi�i h�n s� d�ng T�ch L�y: "..mod(GetTask(347),1000).." / 20 l�n")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","B�n kh�ng �� "..cost.." �i�m t�ch l�y t�ng kim, kh�ng th� ��i")
	end

end
function doitongkim1(nsel)
i = nsel + 1
task = GetTask(15)
ngay = tonumber(date("%d"))
if i == 1 and GetTask(334) ~= ngay then
	cost = 10000
	idquestkey = 119
	if GetTask(15) >= cost then
		SetTask(15 , GetTask(15) - cost)
		if GetTask(15) == task - cost then
			idxitem = AddEventItem(idquestkey)
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			SetTask(334,ngay)
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","B�n kh�ng �� "..cost.." �i�m t�ch l�y t�ng kim, kh�ng th� ��i")
	end
elseif i == 2 and GetTask(335) ~= ngay then
	cost = 10000
idquestkey = 115
	if GetTask(15) >= cost then
		SetTask(15 , GetTask(15) - cost)
		if GetTask(15) == task - cost then
			idxitem = AddEventItem(idquestkey)
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			SetTask(335,ngay)
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","B�n kh�ng �� "..cost.." �i�m t�ch l�y t�ng kim, kh�ng th� ��i")
	end
else
	Talk(1,"","B�n �� mua v�t ph�m n�y trong ng�y h�m nay r�i, kh�ng th� mua th�m")
end

if cost ~= 0 then

end
end

function muachiakhoavang()
cash = GetCash()
if GetCash() >= 100000 then
	Pay(100000)
	if GetCash() == cash - 100000 then
		AddEventItem(271)
		Msg2Player("B�n nh�n ���c 1 <color=yellow>Ch�a Kh�a V�ng")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng��i kh�ng �� 10 v�n l��ng, kh�ng th� mua v�t ph�m n�y !")
end
end
function muachiakhoabac()
cash = GetCash()
if GetCash() >= 50000 then
	Pay(50000)
	if GetCash() == cash - 50000 then
		AddEventItem(270)
		Msg2Player("B�n nh�n ���c 1 <color=yellow>Ch�a Kh�a B�c")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng��i kh�ng �� 5 v�n l��ng, kh�ng th� mua v�t ph�m n�y !")
end
end
function muadaocu()
Sale(25,2)
Msg2Player("B�n hi�n �ang c� "..GetTask(15).." �i�m t�ch l�y !")
end

function ddtldnvht()
SayNew("<color=green>T�ng Qu�n Nhu: <color> Hi�n gi� ng��i �ang c� <color=fire>"..GetTask(122).."<color> �i�m t�ch lu� chi�n tr�n, �� ��i nh�c v��ng h�n th�ch c�n <color=wood>10<color> �i�m t�ch lu� chi�n tr�n, ng��i ��i ch� ?",2,"Ta mu�n ��i Nh�c V��ng H�n th�ch/ddtldnvhtok","Tho�t/no")
end;
function giaodich()
Sale(23)
end
function dnvhtnvk()

sl = GetItemCount(165)

if sl >= 50 then

for i=1,50 do
DelItem(165)
end

if GetItemCount(165) == sl-50 then
AddEventItem(164)
Msg2Player("B�n �� nh�n ���c 1 Nh�c V��ng Ki�m")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end

else
Talk(1,"","Ng��i kh�ng �� <color=red> 50 Nh�c V��ng H�n Th�ch<color>, kh�ng th� luy�n th�nh Nh�c V��ng Ki�m !")
end

end;
function doihc()
SayNew("<color=green>Kim Qu�n Nhu <color>: Vui l�ng ch�n m�c t�ch l�y b�n mu�n ��i  ",4,
"��i 500 t�ch l�y/doiexp1",
"��i 1000 t�ch l�y/doiexp1",
"��i 2000 t�ch l�y/doiexp1",
"Tho�t./no")
end

kinhnghiem={{10,187},{50,262},{60,337},{70,412},{80,600},{90,750},{100,975},{999,0}}
soluongquai =  {{80,500,1200},{90,700,1500},{100,800,1800},{120,900,1800},{150,1000,1800},{200,1200,1800}}

function doiexp1(nsel)
i = nsel+1
if i == 1 then
doiexp2(500)
elseif i == 2 then
doiexp2(1000)
elseif i == 3 then
doiexp2(2000)
end
end

function doiexp2(num)
tl = GetTask(15)
if GetLevel() < 80 then
Talk(1,"","��ng c�p c�a b�n kh�ng �� 80, kh�ng th� ��i kinh nghi�m !")
return
end
if (tl >= num) then
	vt = 1
	for i=1,getn(soluongquai) do
	if (GetLevel() >= soluongquai[i][1]) and (GetLevel() < soluongquai[i+1][1]) then
	vt = i
	end
	end
	exp = soluongquai[vt][2] * soluongquai[vt][3] * 3 
	exp2 = exp / 10000 * num / 2
SetTask(15,tl-num)
if (GetTask(15) == (tl-num)) then
	AddOwnExp(exp2)
	Msg2Player("B�n nh�n ���c "..exp2.." �i�m kinh nghi�m")
	Msg2Player("B�n �� d�ng "..num.." �i�m t�ch lu� ��i kinh nghi�m")
	Talk(0,"")
else
Msg2Player("Hack a cung yeu !")
end
else
Talk(1,"","Ng��i kh�ng �� <color=red> "..num.." t�ch lu� <color>, bao gi� �� h�y ��n ��y.")
end
end


function doiexp1xx()
tl = GetTask(15)
if (tl >= 4000) then
SetTask(15,tl-4000)
vt = 1
for i=1,getn(kinhnghiem) do
if (GetLevel() >= kinhnghiem[i][1]) and (GetLevel() < kinhnghiem[i+1][1]) then
vt = i
end
end
kn = 1000 * kinhnghiem[vt][2]
if (GetTask(15) == (tl-4000)) then
AddOwnExp(kn/2)
Msg2Player("B�n nh�n ���c "..(kn/2).." �i�m kinh nghi�m")
Msg2Player("B�n �� d�ng 4000 �i�m t�ch lu� ��i kinh nghi�m")
else
Msg2Player("Hack a cung yeu !")
end
else
Talk(1,"","Ng��i kh�ng �� <color=red> 4000 t�ch lu� <color>, bao gi� �� h�y ��n ��y.")
end
end;


function ddtldnvhtok()
tl = GetTask(122)
if (tl >= 10) then
SetTask(122,tl-10)
if (GetTask(122) == (tl-10)) then
AddEventItem(165)
Msg2Player("B�n nh�n ���c 1 Nh�c V��ng H�n Th�ch")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Ng��i kh�ng �� <color=red> 10 �i�m t�ch l�y chi�n tr�n <color>, bao gi� �� h�y ��n ��y.")
end
end;




function dlrv()
SayNew("<color=green>T�ng Qu�n Nhu: <color> Hi�n t�i ng��i �ang c� <color=fire>"..GetTask(15).."<color> �i�m t�ch lu�, tu� ng��i s� d�ng",2,
--"��i R��ng B�c (10000 �i�m)/lanhrb",
"��i R��ng B�ch Kim (3000 �i�m)/lanhckb",
"Tho�t/no")
end;

function lanhrb()

tl = GetTask(15)
if (tl >= 10000) then
SetTask(15,tl-10000)
if (GetTask(15) == (tl-10000)) then
AddEventItem(267)
Msg2Player("B�n �� nh�n ���c 1 R��ng B�c")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Ng��i kh�ng �� <color=red> 10000 t�ch lu� <color>, bao gi� �� h�y ��n ��y.")
end
end;

function lanhrv()

tl = GetTask(15)
if (tl >= 8000) then
SetTask(15,tl-8000)
if (GetTask(15) == (tl-8000)) then
AddEventItem(143)
Msg2Player("B�n �� nh�n ���c 1 R��ng V�ng")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Ng��i kh�ng �� <color=red> 8000 t�ch l�y <color>, bao gio du hay den day.")
end
end;


function lanhckb()
tl = GetTask(15)
if (tl >= 3000) then
SetTask(15,tl-3000)
if (GetTask(15) == (tl-3000)) then
AddEventItem(269)
Msg2Player("B�n �� nh�n ���c 1 R��ng B�ch Kim")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Ng��ng kh�ng �� <color=red> 3000 t�ch lu� <color>, bao gi� �� h�y ��n ��y.")
end
end;


function lanhckv()
tl = GetTask(15)
if (tl >= 200) then
SetTask(15,tl-200)
if (GetTask(15) == (tl-200)) then
AddEventItem(145)
Msg2Player("Ban da nhan duoc 1 Chia Khoa Vang")
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"","Nguoi khong du <color=red> 200 tich l�y <color>, bao gio du hay den day.")
end
end;




function topcaothu()
Talk(1,"","Top cao th� T�ng Kim hi�n t�i l�: [<color=red>"..TOP_TUAN[1].."<color>] v�i s� �i�m: <color=yellow>"..TOP_TUAN[2].."<color> �i�m t�ch l�y !")
Msg2Player("Top cao th� T�ng Kim hi�n t�i l�: ["..TOP_TUAN[1].."] v�i s� �i�m: "..TOP_TUAN[2].." �i�m t�ch l�y !")
end

function capnhathang()
	if GetTask(126) > TOP_TUAN[2] then
		TOP_TUAN[1] = GetName()
		TOP_TUAN[2] = GetTask(126)
		TOP_TUAN[6] = GetUUID()
		TOP_TUAN[3] = GetTask(13)
		TOP_TUAN[4] = GetLevel()
		TOP_TUAN[5] = GetTask(139)
		TOP_TUAN[7] = GetAccount()
		Msg2Player("B�n �� v�o danh s�ch Top Cao Th� T�ng Kim tu�n n�y v�i s� �i�m t�ch l�y: "..GetTask(126).." ")
		BANG4 = TaoBang(TOP_TUAN,"TOP_TUAN")				
		LuuBang("Datascript/hoatdong/tongkim/tongkim.lua",BANG4)
	else
		Msg2Player("�i�m c�a b�n kh�ng �� �� v�o Top T�ng Kim !")
		Msg2Player("�i�m t�ch l�y c�a ng��i d�n ��u T�ng Kim Tu�n n�y l�: "..TOP_TUAN[2].." ")
	end
end

function no()
end;




function checksoluong()
SetGlbMissionV(83,0)
SetGlbMissionV(84,0)
for i=1,2000 do
PlayerIndex = i
w,x,y = GetWorldPos()
if GetTask(12) == 1 and w == 33 then
SetGlbMissionV(83,GetGlbMissionV(83)+1)
elseif GetTask(12) == 2 and w == 33 then
SetGlbMissionV(84,GetGlbMissionV(84)+1)
end
end
end