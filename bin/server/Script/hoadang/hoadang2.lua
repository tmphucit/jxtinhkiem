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
		Say("<color=green>Hoa ��ng: <color> B�n �� tr� l�i c�u h�i th�: <color=red>"..GetTask(121).."<color> / 100 c�u.\nB�n c� mu�n ti�p t�c kh�ng ?",2,
		"Ti�p t�c /tieptuccauhoi",
		"Tho�t /no")
		else
			SetTask(119,1)
			SetFightState(1)
		Talk(1,"","<color=green>Hoa ��ng<color> Gi�i H�n Hoa ��ng <color=yellow>100<color> C�u")
		end
	else
	SetTask(119,1)
	SetFightState(1)
	Talk(1,"","<color=green>Hoa ��ng<color> Th�i gian �o�n Hoa ��ng �� h�t !!!")
	end
else
	SetTask(119,1)
	SetFightState(1)
Talk(2,"","<color=green>Hoa ��ng<color> Th�i gian �o�n Hoa ��ng 9 gi�, 12 gi�, 15 gi�, 18 gi�, 21 gi� ",
"Th�i gian m�i l�n �o�n hoa ��ng l� 5 ph�t. T�i �a 100 c�u 1 ng�y !")
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
			Talk(1,"","<color=green>Hoa ��ng<color> B�n kh�ng mang �� <color=yellow>"..tientru().."<color> l��ng")
			end	
		else
		Talk(1,"","<color=green>Hoa ��ng<color> Gi�i h�n Hoa ��ng <color=yellow>100<color> c�u")
		end
	else
	Talk(1,"","<color=green>Hoa ��ng<color> Th�i gian �o�n Hoa ��ng �� h�t !!!")
	end
else
Talk(2,"","<color=green>Hoa ��ng<color> Th�i gian �o�n Hoa ��ng 9 gi�, 12 gi�, 15 gi�, 18 gi�, 21 gi� ",
"Th�i gian m�i l�n �o�n hoa ��ng l� 5 ph�t. T�i �a 100 c�u 1 ng�y !")
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
Say("<color=green>Hoa ��ng<color>: <color=red>"..checkmau(CAUHOI[i][6]).."<color> "..CAUHOI[i][1].."",4,
"A. "..CAUHOI[i][2].."/dung",
"B. "..CAUHOI[i][3].."/sai",
"C. "..CAUHOI[i][4].."/sai",
"D. "..CAUHOI[i][5].."/sai")
elseif a == 2 then
Say("<color=green>Hoa ��ng<color>: <color=red>"..checkmau(CAUHOI[i][6]).."<color> "..CAUHOI[i][1].."",4,
"A. "..CAUHOI[i][5].."/sai",
"B. "..CAUHOI[i][2].."/dung",
"C. "..CAUHOI[i][3].."/sai",
"D. "..CAUHOI[i][4].."/sai")
elseif a == 3 then
Say("<color=green>Hoa ��ng<color>:<color=red> "..checkmau(CAUHOI[i][6]).."<color> "..CAUHOI[i][1].."",4,
"A. "..CAUHOI[i][4].."/sai",
"B. "..CAUHOI[i][5].."/sai",
"C. "..CAUHOI[i][2].."/dung",
"D. "..CAUHOI[i][3].."/sai")
elseif a == 4 then
Say("<color=green>Hoa ��ng<color>: <color=red>"..checkmau(CAUHOI[i][6]).." <color>"..CAUHOI[i][1].."",4,
"A. "..CAUHOI[i][3].."/sai",
"B. "..CAUHOI[i][4].."/sai",
"C. "..CAUHOI[i][5].."/sai",
"D. "..CAUHOI[i][2].."/dung")
end 
end


function checkmau(i)
if i == 1 then
return "[C�u h�i D�]"
elseif i == 2 then
return "[C�u h�i B�nh Th��ng]"
elseif i == 3 then
return "[C�u h�i Kh�]"
elseif i == 4 then
return "[C�u h�i ��c Bi�t]"
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
	Msg2Player("C�u h�i th� "..GetTask(121)..": Ch�c m�ng. B�n �� tr� l�i ch�nh x�c !!")
	Msg2Player("B�n nh�n ���c 1 B�nh Ng� Hoa Ng�c L� Ho�n")
elseif s >= 500 and s < 950 then
	tiennhandc = tinhtien()
	for xc=1,CAUHOI[i][6] do Earn(tiennhandc) end
	tienthem =  (CAUHOI[i][6]-1)*tiennhandc
	Msg2Player("C�u h�i th� "..GetTask(121)..": Ch�c m�ng. B�n �� tr� l�i ch�nh x�c !!")
	Msg2Player("B�n nh�n ���c "..tiennhandc.." l��ng")
	Msg2Player(""..checkmau(CAUHOI[i][6]).." Ng�n l��ng nh�n th�m "..tienthem.." l��ng")
elseif s >= 950 and s < 980 then
	if GetLevel() < 120 then
	AddEventItem(173)
	Msg2Player("C�u h�i th� "..GetTask(121)..": Ch�c m�ng. B�n �� tr� l�i ch�nh x�c !!")
	Msg2Player("B�n nh�n ���c 1 binh Ph�c duy�n [Ti�u] ")
	else
	u = random(1,4)
	if u <= 3 then
	AddEventItem(173)
	Msg2Player("C�u h�i th� "..GetTask(121)..": Ch�c m�ng. B�n �� tr� l�i ch�nh x�c !!")
	Msg2Player("B�n nh�n ���c 1 binh Ph�c Duy�n [Ti�u] ")
	else
	AddEventItem(174)
	Msg2Player("Hoa ��ng Ch�c m�ng. B�n �� tr� l�i ch�nh x�c !!")
	Msg2Player("B�n nh�n ���c 1 binh Phuc Duyen [Trung] ")
	end
	end
elseif s >= 980 and s < 995 then
	AddEventItem(44)
	Msg2Player("C�u h�i th� "..GetTask(121)..": Ch�c m�ng. B�n �� tr� l�i ch�nh x�c !!")
	Msg2Player("B�n nh�n ���c 1 vi�n Huy�n Tinh")
elseif s == 998 then
	AddEventItem(2)
	Msg2Player("C�u h�i th� "..GetTask(121)..": Ch�c m�ng. B�n �� tr� l�i ch�nh x�c !!")
	Msg2Player("B�n nh�n ���c 1 Thi�t La H�n")
else
	AddItem(1,2,0,5,0,0,0)
	Msg2Player("C�u h�i th� "..GetTask(121)..": Ch�c m�ng. B�n �� tr� l�i ch�nh x�c !!")
	Msg2Player("B�n nh�n ���c 1 B�nh Ng� Hoa Ng�c L� Ho�n")
end
else
s = random(1,1000)
if s < 500 then
	expnhandc = floor(tinhexp()*GetLevelExp()/1000)
	for xc=1,CAUHOI[i][6] do AddOwnExp(expnhandc) end
	expthem = (CAUHOI[i][6]-1)*expnhandc
	Msg2Player("C�u h�i th� "..GetTask(121)..": Ch�c m�ng. B�n �� tr� l�i ch�nh x�c !!")
	Msg2Player("B�n nh�n ���c "..(floor(tinhexp()*GetLevelExp()/1000)).." kinh nghi�m")
	Msg2Player(""..checkmau(CAUHOI[i][6]).." Kinh nghi�m t�ng th�m "..expthem.." �i�m")
elseif s >= 500 and s < 950 then
	tiennhandc = tinhtien()
	for xc=1,CAUHOI[i][6] do Earn(tiennhandc) end
	tienthem =  (CAUHOI[i][6]-1)*tiennhandc
	Msg2Player("C�u h�i th� "..GetTask(121)..": Ch�c m�ng. B�n �� tr� l�i ch�nh x�c !!")
	Msg2Player("B�n nh�n ���c "..tiennhandc.." l��ng")
	Msg2Player(""..checkmau(CAUHOI[i][6]).." Ng�n l��ng nh�n th�m "..tienthem.." l��ng")
elseif s >= 950 and s < 980 then
	if GetLevel() < 120 then
	AddEventItem(173)
	Msg2Player("C�u h�i th� "..GetTask(121)..": Ch�c m�ng. B�n �� tr� l�i ch�nh x�c !!")
	Msg2Player("B�n nh�n ���c 1 binh Ph�c duy�n [Ti�u] ")
	else
	u = random(1,4)
	if u <= 3 then
	AddEventItem(173)
	Msg2Player("C�u h�i th� "..GetTask(121)..": Ch�c m�ng. B�n �� tr� l�i ch�nh x�c !!")
	Msg2Player("B�n nh�n ���c 1 binh Ph�c Duy�n [Ti�u] ")
	else
	AddEventItem(174)
	Msg2Player("Hoa ��ng Ch�c m�ng. B�n �� tr� l�i ch�nh x�c !!")
	Msg2Player("B�n nh�n ���c 1 binh Phuc Duyen [Trung] ")
	end
	end
elseif s >= 980 and s < 995 then
	AddEventItem(44)
	Msg2Player("C�u h�i th� "..GetTask(121)..": Ch�c m�ng. B�n �� tr� l�i ch�nh x�c !!")
	Msg2Player("B�n nh�n ���c 1 vi�n Huy�n Tinh")
elseif s == 998 then
	AddEventItem(2)
	Msg2Player("C�u h�i th� "..GetTask(121)..": Ch�c m�ng. B�n �� tr� l�i ch�nh x�c !!")
	Msg2Player("B�n nh�n ���c 1 Thi�t La H�n")
else
	AddOwnExp(floor(tinhexp()*GetLevelExp()/100))
	Msg2Player("C�u h�i th� "..GetTask(121)..": Ch�c m�ng. B�n �� tr� l�i ch�nh x�c !!")
	Msg2Player("B�n nh�n ���c "..(floor(tinhexp()*GetLevelExp()/100)).." kinh nghi�m")
end
end
tieptuc()
end



function sai()
if CAUHOI[i][6] == 3 then
Pay(5000)
Msg2Player("C�u h�i th� "..GetTask(121)..": B�n b� m�t 5000 l��ng do tr� l�i sai c�u h�i kh�")
elseif CAUHOI[i][6] == 4 then
Pay(10000)
Msg2Player("C�u h�i th� "..GetTask(121)..": B�n b� m�t 1 v�n l��ng do tr� l�i sai c�u h�i ��c bi�t")
else
Msg2Player("C�u h�i th� "..GetTask(121)..": Tr� l�i kh�ng ch�nh x�c")
end 
tieptuc()
end

CAUHOI = {
{"Skill 9x n�i c�ng C�i Bang t�n g� ? ","Phi Long T�i Thi�n ","�� C�u Tr�n ","Thi�n H� V� C�u ","Ti�u Di�u C�ng ",1},
{"Skill 9x ngo�i c�ng C�i Bang t�n g�  ? ","Thi�n H� V� C�u ","Phi Long T�i Thi�n ","Ho�t B�t L�u Th� ","Kh�ng Long H�u H�i ",1},
{"Skill tr�n ph�i C�i Bang t�n g� ? ","T�y �i�p Cu�ng V� ","Phi Long Tai Thien ","Hoa Diem Vi Di ","Hoat Bat Luu Thu ",1},
{"Skill 9x n�i c�ng Nga My t�n g� ? ","Phong S��ng To�i �nh ","M�ng �i�p ","B�t Tuy�t B�t Di�t ","Ph�t T�m T� H�u ",1},
{"Skill 9x ngo�i c�ng Nga My t�n g� ? ","Tam Nga T� Tuy�t ","Th�i Song V�ng Nguy�t ","B�t Tuy�t B�t Di�t ","L�u Th�y ",1},
{"Skill tr�n ph�i Nga My t�n g� ? ","Ph�t Ph�p V� Bi�n ","L�u Th�y ","Ph� �� Ch�ng Sinh ","Th�i Song V�ng Nguy�n ",1},
{"Skill 9x ngo�i c�ng Th�y Y�n t�n g� ? ","Bang Tung V� �nh ","Tuy�t �nh ","B�ng C�t Tuy�t T�m ","B�ng T�m Tr�i �nh ",1},
{"Skill tr�n ph�i Th�y Y�n t�n g� ? ","B�ng C�t Tuy�t T�m ","Tuy�t �nh ","Bang Tung V� �nh ","Bang T�m Tr�i �nh ",1},
{"Skill buff b�a 9x C�n L�n t�n g� ? ","T�y Ti�n T� C�t ","Thi�n Thanh ��a Tr�c ","Thi�n T� T�n L�i ","K� B�n Ph� ",1},
{"Skill t�ng kh�ng t�t c� Thi�n V��ng t�n g� ? ","Kim Chung Tr�o ","Thi�n V��ng Chi�n Y ","Huy�t Chi�n B�t Ph��ng ","Th�a Long Quy�t ",1},
{"Skill 9x Th��ng c�a Thi�n v��ng t�n g� ? ","Truy Tinh Tr�c Nguy�t ","Huy�t Chi�n B�t Ph��ng ","Kim Chung Tr�o ","Th�a Long Quy�t ",1},
{"Skill buff 100% tr�ng ��c Ng� ��c t�n g� ? ","Xuy�n T�m ��c Th�ch ","Ng� ��cc K� Kinh ","B�ng Lam Huy�n Tinh ","Xuy�n Y Ph� Gi�p ",1},
{"Skill n�o h� tr� skill 9x V� �ang Kh� ? ","V� Ng� V� Ki�m ","Tam Ho�n Th�o Nguy�t ","Ki�m Phi kinh Thi�n ","Nh�n Ki�m H�p Nh�t ",1},
{"Skill 6x �ao c�a Thi�u L�m t�n g� ? ","Ma Ha V� L��ng ","Long Tr�o H� Tr�o ","Ho�nh T�o L�c H�p ","S� T� H�ng ",1},
{"Skill kh�ng t�t ca Thi�u l�m t�n g� ? ","D�ch C�n Kinh ","Nh� Lai Thi�n �i�p ","La H�n Tr�n ","B�t ��ng Minh V��ng ",1},
{"Skill tr�n phai Thi�n Nh�n t�n g� ? ","Thi�n Ma Gi�i Th� ","Phi H�ng V� T�ch ","B� T� Thanh Phong ","Ma Di�m Th�t S�t ",1},
{"Bao  nhi�u S�t Th� Gian m�i ��i ���c L�nh B�i S�t Th� Ti�u ? ","10 c�i ","5 c�i ","15 c�i ","3 c�i ",3},
{"C�p trang b� n�o h� tr� nhau �� k�ch thu�c t�nh ? ","Th�t l�ng - Nh�n d��i ","Th�t L�ng - Nh�n tr�n ","Th�t l�ng - D�y Chuy�n ","Th�t L�ng - Ng�c B�i ",3},
{"C�p trang b� n�o h� tr� nhau �� k�ch thu�c t�nh ? ","Trang ph�c - D�y chuy�n ","Trang ph�c - Ng�c b�i ","Trang ph�c - Nh�n tr�n ","Trang ph�c - Nh�n d��ii ",3},
{"C�p trang b� n�o h� tr� nhau �� k�ch thu�c t�nh ? ","Gi�y - Nh�n tr�n ","Gi�y - Nh�n d��i ","Gi�y - Ng�c b�i ","Gi�y - D�y chuy�n ",3},
{"C�p trang b� n�o h� tr� nhau �� k�ch thu�c t�nh ? ","Bao tay - Ng�c b�i ","Bao tay - Nh�n tr�n ","Bao tay - Nh�n d��i ","Bao tay - D�y Chuy�n ",3},
{"C�p trang b� n�o h� tr� nhau �� k�ch thu�c t�nh ? "," N�n- V� Kh� ","N�n - Bao tay ","N�n - �o ","N�n - Th�t l�ng ",3},
{"Ph�m t�t n�o b�t nhanh Giao D�ch ? ","Ph�m O ","Ph�m P ","Ph�m K ","Ph�m L ",1},
{"Phim tat nao bat nhanh To Doi ? ","Ph�m P ","Ph�m T ","Ph�m K ","Ph�m L ",1},
{"Bao nhi�u S�t Th� Gian m�i ��i ���c L�nh B�i V��t �i ? ","5 c�i ","10 c�i ","8 c�i ","15 c�i ",2},
{"B�n �� Ba L�ng Huy�n c� th� �i ��n ��u ? ","Mi�u L�nh ","Ph��ng T��ng ","L�m An ","Chu Ti�n Tr�n ",2},
{"NPC b�n thu�c trong T�ng Kim t�n g� ? ","Kim Qu�n Nhu ","Kim Qu�n Qu�n ","Kim Qu�n ","Kim Nhu ",2},
{"V� Kh� k�ch d��c thu�c t�nh �n cho trang b� n�o ? ","Gi�y ","N�n ","�o ","Th�t L�ng ",2},
{"D�y chuy�n k�ch ���c thu�c t�nh �n cho trang bi n�o ? ","V� kh� ","�o ","Th�t L�ng ","Gi�y ",2},
{"V� L�m c� bao nhi�u m�n ph�i ? ","10 ph�i ","11 ph�i ","12 ph�i ","8 ph�i ",2},
{"K� Tr�n C�c kh�ng b�n v�t ph�m n�o ? ","Th� ��a Ph� ","Chi�u d� ","Th�y Tinh ","Thi�t La Han ",2},
{"�i�m ti�m n�ng s�c m�nh kh�ng t�ng g� ? ","N�i l�c ","Sinh kh� ","L�c tay ","Damage ",2},
{"Ph�m t�t n�o b�t H� Tr� Game ? ","Ph�m F1 ","Ph�m F2 ","Ph�m F3 ","Ph�m F4 ",1},
{"Ph�m t�t n�o b�t H�nh Trang ? ","Ph�m F4 ","Ph�m F3 ","Ph�m F5 ","Ph�m F2 ",1},
{"Phim t�t n�o b�t H�o H�u ? ","Ph�m F6 ","Ph�m F3 ","Ph�m F4 ","Ph�m F5 ",1},
{"Phim t�t n�o b�t B�ng Skill ? ","Ph�m F5 ","Ph�m F3 ","Ph�m F4 ","Ph�m F6 ",1},
{"NPC nh�n nhi�m v� s�t th� t�n g� ? ","Nhi�p Th� Tr�n ","H� Tr� T�n Th� ","���ngng B�t Nhi�m ","Xa phu ",1},
{"V��t �i m�t ng�y nh�n v�t �i ���c m�y l�n ? ","1 l�n ","2 l�n ","3 l�n ","4 l�n ",1},

{"Ng�a n�o ch�y nhanh nh�t trong c�c l�ai sau: ","Chi�u D� ","� V�n ��p Tuy�t ","��ch L� ","Tuy�t �nh ",2},
{"Ng�a n�o trong d�y c� m�u n�u: ","��ch L� ","Chi�u D� ","� V�n ��p Tuy�t ","Tuy�t �nh ",2},


{"Bao nhu Nhac Vuong Hon Thach doi duoc Nhac Vuong Kiem ? ","50 vien ","30 vien ","20 vien ","40 vien ",3},
{"Bao nhi�u �i�m t�ch l�y m�i l�n ���c Hi�u �y ? ","1500 ","1000 ","200 ","500 ",3},
{"Bao nhi�u �i�m t�ch l�y m�i l�n ���c Th�ng L�nh ? ","3000 ","1000 ","1500 ","2500 ",3},

{"Tham gia T�ng Kim t�i NPC n�o ? ","T�ng Kim M� Binh ","T�ng Kim Chi�u Binh ","T�ng Kim Tuy�n Binh ","T�ng Kim Ch�n Binh ",3},
{"T�n NPC gia nh�p m�n ph�i Thi�u L�m ? ","Thi�u L�m La H�n ","Thi�u L�m ��t Ma ","Thi�u L�m Chi�u Sinh ","Thi�u L�m Tu Tr� ",1},
{"T�n NPC gia nh�p m�n ph�i Thi�n V��ng ? ","Thi�n V��ng T��ng L�nh ","Thi�n V��ng Chi�u Sinh ","Thi�n V��ng T��ng Qu�n ","���ng Thi�t T�m ",1},
{"T�n NPC gia nh�p m�n ph�i V� �ang ? ","V� �ang ��o Nh�n ","Tr��ng Tam Phong ","Tr��ng Thi�t Tam ","V� �ang Chi�u Sinh ",1},
{"T�n NPC gia nh�p m�n ph�i Nga My ? ","Nga My C�m Y Ni ","Nga My Chi�u Sinh ","Nga My Y Ni ","Nga My Ni C� ",1},
{"T�n NPC gia nh�p m�n ph�i Th�y Y�n ? ","Th�y Y�n Hoa S� ","Th�y Y�n Hoa N� ","Th�y Y�n Hoa Lan ","Th�y Y�n Chi�u Sinh ",1},
{"T�n NPC gia nh�p m�n ph�i C�n L�n ? ","C�n L�n H� Ph�p ","C�n L�n La H�n ","C�n L�n Chi�u Sinh ","C�n L�n ��o S� ",1},
{"T�n NPC gia nh�p m�n ph�i C�i Bang ? ","�� T� C�i Bang ","C�i Bang Chi�u Sinh ","K� �n M�y  ","C�i Bang Tr��ng L�o ",1},

{"Ng� h�nh c� bao nhi�u h�? ","5 ","6 ","4 ","7 ",1},

{"�� ��i m�u c�n ch�n NPC n�o? ","H� tr� T�n Th� ","Nhi�p Th� Tr�n ","K� Tr�n C�c ","Xa Phu ",1},


{"B�ng ch� c�i c�a Vi�t Nam c� bao nhi�u ch� c�i? ","29 ","26 ","32 ","45 ",3},
{"T�ch c�a ba s� t� nhi�n ��u ti�n l� bao nhi�u? ","0 ","6 ","9 ","12 ",1},
{" Vi�t Nam � m�i gi� th� m�y ","7 ","6 ","8 ","10 ",2},
{"M�t n�m c� nhi�u nh�t bao nhi�u ng�y Ch� Nh�t ","53 ","52 ","51 ","54 ",3},
{"M�t ng�y c� bao nhi�u gi�? ","24 ","12 ","26 ","29 ",1},
{"Khu V�c ��ng Nam � c� bao nhi�u qu�c gia ","11 ","10 ","15 ","12 ",3},
{"Khi V��t �i Nh�m ���c Pt �t nh�t bao nhi�u ng��i? ","6 ng��i ","7 ng��i ","8 ng��i ","5 ng��i ",2},
{"V��t �i c� bao nhi�u �i ","18 ","15 ","16 ","17 ",2},
{"B� K�p 9x c�c ph�i c� t�t c� bao nhi�u cu�n? ","28 cu�n ","30 cu�n ","20 cu�n ","25 cu�n ",3},
{"Ph�m n�o t�t m� giao d�ch ? ","Ph�m O ","Ph�m P ","Ph�m R ","Ph�m V ",2},
{"Chu k� World Cup Bao nhi�u n�m? ","4 n�m ","5 n�m ","3 n�m ","6 n�m ",2},
{"Qu�c kh�nh Vi�t Nam l� ng�y n�o? ","2 th�ng 9 ","19 th�ng 5 ","15 th�ng 9 ","9 th�ng 2 ",2},
{"Qu�c t� thi�u nhi l� ng�y n�o? ","1 th�ng 6 ","1 th�ng 5 ","9 th�ng 1 ","12 th�ng 12 ",2},
{"M�t n�m c� bao nhi�u ng�y? ","365 ","366 ","367 ","360 ",2},
{"Idol Vi�t Nam N�m 2011 l� ai? ","Uy�n Linh ","Mai H��ng ","��ng Khoa ","Ph��ng Vy ",2},
{"�� nh�n nhi�m v� s�t th� b�n c�n c� bao nhi�u ti�n? ","5000 l��ng ","50000 l��ng ","1000 l��ng  ","100 l��ng ",2},
{"Trung h�c g�m bao nhi�u l�p? ","7 l�p ","4 l�p ","3 l�p ","5 l�p ",2},
{"C�p Ti�u h�c g�m bao nhi�u l�p? ","5 l�p ","4 l�p ","3 l�p ","7 l�p ",2},
{"B�n �ang tham gia event g�? ","Hoa ��ng ","T�ng Kim ","V��t �i ","Tr�ng C�y ",1},
{"Ng�y 8 th�ng 3 l� ng�y g�? ","Qu�c T� Ph� N� ","Qu�c T� Thi�u Nhi ","Qu�c T� Lao ��ng ","Ph� N� Vi�t Nam ",1},
{"M�u luy�n c�ng l� m�u g� ","Tr�ng ","Cam ","Xanh ","�� ",1},
{"Nga My h�? ","Th�y ","Th� ","Kim ","M�c ",1},
{"M�t m�t kh�i b�ng bao nhi�u l�t? ","1000 l�t ","100 l�t ","10 l�t ","10000 l�t ",1},
{"��p �n n�o kh�c ho�n to�n v�i c�c ��p �n c�n l�i? ","Hoa h�ng ","Con ch� ","Con h� ","Con m�o ",3},
{"World Cup 2014 ���c t� ch�c � ��u? ","Brazil ","Ph�p ","H�n Qu�c ","M� ",3},
{"N�i Ba �en thu�c t�nh n�o? ","T�y Ninh ","��ng Nai ", "L�m ��ng ","Cao B�ng ",3},
{"Ai l� ng��i t�m ra ch�u M�?  ","Columbo ","Napoleon ","Henry Co Dai ","Nicoladesi ",2},
{"T�nh n�o c� �i�n t�ch l�n nh�t Vi�t Nam? ","Ngh� An ","H� T�nh ","Ninh B�nh ","TP HCM  ",2},
{"Con v�t n�o to nh�t th� gi�i? ","C� voi xanh ","Voi B�n ��n ","C� m�p tr�ng ","G�u B�c C�c ",2},
{"Lo�i th� duy nh�t �� tr�ng? ","Th� m� v�t ","C� Voi xanh ","Chim k�nh k�nh ","Khi ��u ch� ",2},
{"B�ng tu�n ho�n h�a h�c c� bao nhi�u nguy�n t�? ","109 ","123 ","190 ","132 ",2},
{"H� N�i c� bao nhi�u ph� ph��ng ","36 ","42 ","37 ","63 ",2},
{"T�ng 3 g�c trong 1 Tam Gi�c bao nhi�u ��? ","180 ","120 ","270 ","90 ",2},
{"V� vua ph�t h�nh ti�n gi�y ��u ti�n c�a Vi�t Nam ","H� Qu� Ly ","L� C�ng U�n ","L� ��i H�nh ","Mai Th�c Loan ",3},
{"Th�y Ki�u Trong Truy�n Ki�u c�a Nguy�n Du mang h� g� ","V��ng ","Tr�n ","Nguy�n ","Mai ",3},
{"Qu�c k� c�a c�c n��c ��ng Nam � c� m�u g� chung  ","�� ","V�ng ","Cam ","Tr�ng ",2},
{"Fe l� k� hi�u c�a nguy�n t� h�a h�c n�o? ","S�t ","��ng ","Nh�m ","V�ng ",2},
{"Lo�i chim n�o c� th� bay l�i v� ph�a sau? ","Chim Ru�i ","Chim S� ","Chim C�nh c�t ","Chim B� C�u ",2},
{"Vi�t Nam c� m�y di s�n V�n H�a Th� Gi�i? ","7 ","8 ","6 ","5 ",3},
{"Qu�c gi�o c�a Irac l� t�n gi�o n�o ","H�i gi�o ","Ph�t Gi�o ","Thi�n Ch�a Gi�o ","Tin l�nh ",3},
{"Ng�y truy�n th�ng c�a h�c sinh sinh vi�n l� ng�y n�o? ","9 th�ng 1 ","1 th�ng 6 ","16 th�ng 1 ","1 th�ng 9 ",2},
{"V�n L� Tr��ng Th�nh l� di s�n V�n H�a c�a qu�c gia n�o? ","Trung Qu�c ","Nga ","Vi�t Nam ","H�ng K�ng ",3},
{"Vi�t Nam c� bao nhi�u t�nh th�nh? ","64 ","54 ","45 ","65 ",2},
{"Bi�u t��ng seagames 22 l� g�? ","Tr�u V�ng ","Nh�n S� ","Th�p ��i ","M�t Tr�i ",3},
{"T� vi�t t�c c�a ch� s� th�ng minh l� g�? ","IQ ","EQ ","GDP ","HP ",2},
{"Qu�c K� c�a M� c� bao nhi�u ng�i sao? ","50 sao ","45 sao ","30 sao ","54 sao ",2},
{"N� ho�ng �� duy nh�t c�a Trung Qu�c l� ai? ","V� T�c Thi�n ","D��ng Qu� Phi ","T� Nghi Th�i H�u ","L� Chi�u Qu�n  ",2},
{"Th�nh ph� �� L�t thu�c t�nh th�nh n�o? ","L�m ��ng ","�� N�ng ","An Giang ","Kom Tum ",2},
{"Th�nh ph� ���c m�nh danh l� th�nh ph� hoa ph��ng ��? ","H�i Ph�ng ","H�i D��ng ","H�n Y�n ","H� Giang ",2},
{"VIP l� t� vi�t t�c c�a t� n�o? ","Very Important Person ","Very Improve People ","Value In Public ","m�t t� kh�c ",4},
{"B�i h�t PHA L� T�M do ca s� n�o th� hi�n? ","Cao Th�i S�n ","Nam C��ng ","V�n Quang Long ","Nguy�n V� ",2},
{"B�c H� qu� � ��u? ","Ngh� An ","Thanh H�a ","Quang Ng�i ","H�i An ",2},
{"Th�ng B�m �� ��i Qu�t Mo l�y c�i g�? ","N�m X�i ","3 b� 9 tr�u ","B� g� lim ","Chim ��i m�i ",2},

{"�� t�y �i�m ti�m n�ng c�n c� g�? ","6 vi�n Tinh H�ng Bao Th�ch ","6 vi�n huy�n tinh 1 ","3 th�y tinh kh�c m�u ","3 cu�n t�y t�y kinh ",2},
{"Item g� �� x2 luy�n skill? ","N� nhi h�ng ","Ti�n th�o l� ","Lam th�y tinh ","Th� ��a ph� ",2},
{"B� An Bang g�m bao nhi�u m�n? ","4 ","5 ","6 ","7 ",2},
{"Item nh�n ��i kinh nghi�m t�n g�? ","Ti�n th�o l� ","Huy�n tinh c�p 10 ","N� nhi h�ng ","Th�y tinh ",2},
{"Lo�i ng�a c� kh�ng t�t c� 10 t�n g�? ","Phi�n V� ","Chi�u D� ","B�n Ti�u ","Phi V�n ",2},
{"B� k�p 12x c�a D��ng M�n t�n g�? ","M� �nh Tung ","Xu�t � B�t Nhi�m ","B� Nguy�t Ph�t Tr�n ","��o H� Thi�n ",2},
{"B� k�p 12x c�a Nga My t�n g�? ","B� Nguy�t Ph�t Tr�n ","M� �nh Tung ","Xu�t � B�t Nhi�m ","��o H� Thi�n ",2},
{"B� k�p 12x c�a V� �ang t�n g�? ","Xu�t � B�t Nhi�m ","M� �nh Tung ","B� Nguy�t Ph�t Tr�n ","��o H�  Thi�n ",2},
{"B� k�p 12x c�a Thi�n V��ng t�n g� ","��o H� Thi�n ","Xu�t � B�t Nhi�m ","M� �nh Tung ","B� Nguy�t Ph�t Tr�n ",2},
{"B� k�p 12x c�a Thi�u L�m t�n g�? ","��i Th�a Nh� Lai Ch� ","��o H� Thi�n ","Xu�t � B�t Nhi�m ","M� �nh Tung ",2},
{"B� k�p 12x c�a Ng� ��c t�n g�? ","H�p Tinh Y�m ","Xu�t � B�t Nhi�m ","Ng� Tuy�t �n ","M� H�n �nh ",2},
{"B� k�p 12x c�a Th�y Y�n t�n g�? ","Ng� Tuy�t �n ","��i Th�a Nh� Lai Ch� ","��o H� Thi�n ","Xu�t � B�t Nhi�m ",2},
{"B� k�p 12x c�a C�i Bang t�n g�? ","H�n Thi�n kh� C�ng ","��i Th�a Nh� Lai Ch� ","��o H� Thi�n ","H�p Tinh Y�m ",2},
{"B� k�p 12x c�a Thi�n Nh�n  t�n g�? ","Ma �m Ph� Ph�ch ","H�n Thi�n kh� C�ng ","��i Th�a Nh� Lai Ch� ","��o H� Thi�n ",2},
{"B� k�p 12x c�a C�n L�n  t�n g�? ","L��ng Nghi Ch�n Kh�  ","H�n Thi�n kh� C�ng ","��i Th�a Nh� Lai Ch�  ","��o H� Thi�n ",2},

{"T�ng Gi�m ��c C�ng ty Vinagame l� Ai? - T�nh ��n 2011 ","L� H�ng Minh ","L� Ho�ng Minh ","L� Ng�c Minh ","L� Quang Minh ",4},
{"Trang b� Nhu T�nh C�n Qu�c Ngh� Th��ng c� Kh�ng ��c kho�ng bao nhi�u? - Theo TKH ","15 - 25 ","15 - 20 ","20 - 25 ","20 - 30 ",4},
{"Ch� vi�t t�t B Trong Ng�n ng� l�p tr�nh l� g� ?  ","Basic ","Visual C++ ","Boland C ","Booleen ",4},
{"�i�m �� l�n ���c ��i T��ng trong T�ng Kim l� bao nhi�u?  ","10000 �i�m ","5000 �i�m ","3000 �i�m ","8000 �i�m ",2},
{"�� chuy�n sinh b�n c�n c� v�t ph�m g� ","Tr��ng sinh �an ","Chuy�n sinh �an ","Ph�c duy�n ��i ","Tinh h�ng b�o th�ch ",2},
{"M�t ng�y c� th� s�n ���c bao nhi�u con boss s�t th�? ","8 ","9 ","18 ","16 ",2},

{"B� Th�y tinh g�m c� bao nhi�u vi�n? ","3 vi�n ","4 vi�n ","5 vi�n ","6 vi�n ",3},
{"B� Tinh h�ng b�o th�ch c� bao nhi�u vi�n? ","6 vi�n ","5 vi�n ","4 vi�n ","3 vi�n ",1},

{"Lo�i �� ���c h�nh th�nh t� x�c ��ng v�t? ","�� v�i ","�� tr�m t�ch ","�� Magma ","�� Catket ",2},
{"T�n H� th�ng d�y n�i l�n nh�t th� gi�i? ","Himalaya ","Andes ","Tr��ng S�n ","Apls ",3},
{"Con s�ng d�i th� 3 th� gi�i? ","Mississippi ","Ho�ng H� ","Tr��ng Giang ","Nil ",2},
{"Th�nh ph� ��ng d�n nh�t ��ng Nam �? ","Jakarta ","H� Ch� Minh ","Bangkok ","Phn�m P�nh ",1},
{"��ng ti�n chung Euro ch�nh th�c l�u h�nh v�o n�m n�o? ","2002 ","1998 ","2000 ","1980 ",3},
{"Thu�t ng� T�n Gi�o c� ngu�n g�c t� ��u? ","Ph��ng T�y ","Vi�t Nam ","Trung Qu�c ","T�t c� ��u sai ",2},
{"Th� �� n�o l�u ��i nh�t ��ng Nam �? ","H� N�i ","Bangkok ","Vi�ng Ch�n ","Phn�m P�nh ",2},
{"N��c n�o c� n�n kinh t� l�n nh�t Ch�u �u? ","��c ","Anh ","Ph�p ","Th�y S� ",1},
{"Th�y �i�n n�i ti�ng v� th� lo�i nh�c n�o? ","Nh�c Pop ","Nh�c Dance ","Nh�c Jazz ","C� �i�n ",3},
{"N��c ti�u th� m� �n li�n nhi�u nh�t th� gi�i? ","Trung Qu�c ","Nh�t B�n ","H�n Qu�c ","Vi�t Nam ",1},
{"N��c �� ph�t minh ra m�n m� �n li�n? ","Nh�t B�n ","Trung Qu�c ","��i Loan ","Hy L�p ",2},
{"Ti�ng Vi�t l� ng�n ng� ph� bi�n th� m�y t�i M�? ","7 ","8 ","9 ","6 ",3},
{"V� vua Trung Hoa n�o c� tu�i th� cao nh�t? ","C�n Long ","Khang Hy ","T�n Th�y Ho�ng ","V� T�c Thi�n ",2},
{"��n B�u c�a Vi�t Nam xu�t hi�n v�o th�i gian n�o? ","Th� k� th� 7 ","Th� k� th� 5 ","Th� k� th� 8 ","Th� k� th� 6 ",2},
{"Nho gi�o c�n ���c g�i l� g�? ","Kh�ng gi�o ","Ph�t gi�o ","Minh gi�o ","��o gi�o ",2},
{"�i�m thi ��u Sea Games ph�i treo bao nhi�u l� c�? ","14 ","11 ","10 ","8 ",2},
{"Sea Games ��u ti�n ���c t� ch�c v�o n�m n�o? ","1959 ","1955 ","1963 ","1967 ",3},
{"Sea Games 22 ���c t� ch�c t�i Vi�t Nam c� bao nhi�u m�n thi ��u? ","32 ","28 ","25 ","35 ",2},
{"Truy�n thuy�n n�o thu�c th�i k� �u L�c? ","An D��ng V��ng ","Th�nh Gi�ng ","S�n Tinh Th�y Tinh ","L�c Long Qu�n v� �u C� ",1},
{"T�c ph�m Ch� Ph�o c�a Nam Cao ���c ��i t�n m�y l�n? ","3 ","2 ","4 ","5 ",1},
{"Ng��i ���c m�nh danh l� B� Ch�a Th� N�m? ","H� Xu�n H��ng ","�o�n Th� �i�m ","Xu�n Qu�nh ","Nguy�n Th� Minh Khai ",2},
{"C� s� v�t ch�t ch� y�u c�a s� s�ng? ","Pr�t�in v� Axit Nucl�ic ","Pr�t�in ","Carbon Hydrat ","Axit Nucl�ic ",3},
{"Lo�i V��n ng��i n�o c� quan h� g�n g�i v�i con ng��i nh�t? ","Tinh Tinh ","V��n ","���i ��i ","Kh� G�rila ",2},
{"X��ng n�o nh� nh�t trong c� th� ng��i ","X��ng tai trong ","X��ng c�t ","X��ng s�ng m�i ","X��ng v�nh tai ",3}, 
{"Gi�i ph�ng mi�n Nam l� ng��i n�o? ","30 th�ng 4 ","19 th�ng 5 ","2 th�ng 9 ","5 th�ng 7 ",1},
{"C�t ��n giao th�ng c� m�y m�u? ","3 ","4 ","5 ","2 ",1},
{"T�n d�n gian c�a sao Kim l� g�? ","Sao Mai v� Sao H�m ","Sao Ch�c N� ", "Sao B�c ��u ","Sao Khu� ",1},
{"Hi�n t��ng ���c t�o ra do s� t�n s�c �nh s�ng c�a m�t tr�i qua nh�ng gi�t m�a l� g�? ","C�u V�ng ","Kh�c x� ","H�p th� �nh s�ng ","Ph�t quang ",3},
{"Qu� ��o di chuy�n c�a c�c h�nh tinh quanh m�t tr�i h�nh g�? ","Elip ","Tr�n ","Th�ng ","Parapol ",3},
{"Da g�m m�y l�p? ","3 l�p ","2 l�p ","4 l�p ","5 l�p ",3},
{"Khi b� b�ng b�n s� l�m g� ��u ti�n? ","Ng�m n��c l�nh ","B�i m� Tr�n ","B�i kem ��nh r�ng ","Ng�m d�m ",2},
{"Tr�ng nguy�n cu�i c�ng trong l�ch s� n��c Vi�t Nam l� ai? ","Tr�nh Tu� ","Tr�ng Qu�nh ","Nguy�n ��ng T�o ","Tr�n T�t V�n ",2},
{"Ph�t Gi�o du nh�p v�o VI�t Nam v�o th�i gian n�o? ","Th� k� th� 2 ","��u c�ng nguy�n ","Th� k� th� 2 TCN ","Th� k� th� 3 ",2},
{"C� bao nhi�u v� th�n tr�n ��nh Olympus? ","12 ","10 ","11 ","8 ",2},
{"Tri�u ��i nh� Nguy�n b�t ��u t� n�m n�o? ","1802 ","1790 ","1845 ","1900 ",2},
{"N��c n�o l� qu� h��ng c�a �ng gi� tuy�t? ","Ph�n Lan ","Ba Lan ","Anh ","��c ",2},
{"Ph� xu�t hi�n ��u ti�n � ��u? ","Nam ��nh ","H� N�i ","S�i G�n ","Trung Qu�c ",2},
{"� H�nh tinh n�o ko c� m�t tr�ng ","Kim tinh ","M�c tinh ","H�a tinh ","Th� tinh ",3},
{"H�nh tinh n�o ko c� b�u kh� quy�n? ","Th�y tinh ","H�a tinh ","Kim tinh ","M�c tinh ",3},
{"Ch�u l�c n�o m� c� c�c n��c h�u nh� tr�ng l�a? ","Ch�u Phi ","Ch�u �  ","Ch�u M�  ","Ch�u �u ",2},
{"Hi�n t��ng n��c t� tr�i r�i xu�ng g�i l� g�? ","M�a ","Gi� ","B�c h�i ","Tri�u C��ng ",1},
{"Skill tr�n ph�i c�a C�n L�n l�   ","S��ng Ng�o C�n L�n  ","Cu�ng Phong S�u �i�n  ","T�y Ti�n T� C�t  ","B�c minh ��a h�i ",2},




{"Skill 9x �ao c�a C�n L�n t�n g�   ","Ng�o tuy�t ti�u phong  ","L�i ��ng c�u thi�n  ","S��ng ng�o c�n l�n  ","Cu�ng phong s�u �i�n ",3},
{"Skill 9x c�a n�i c�ng c�a c�n l�n   ","L�i ��ng c�u thi�n  ","L��ng nghi ch�n kh�  ","S��ng ng�o c�n l�n  ","Nh�t kh� tam thanh ",3},
{"Skill t�ng t�c �� ch�y c�a Nga Mi c� t�n l� g�  ","L�u th�y  ","M�ng di�p  ","Ph�t t�m t� h�  ","Ph�t quang ph� chi�u ",2},
{"Skill t�ng t�c �� ch�y c�a C�n L�n c� t�n l� g�  ","Thanh phong ph�  ","K� b�n ph�  ","B�c Minh ��o H�i  ","Kh� h�n ng�o tuy�t ",3},
{"Skill t�ng t�c �� ch�y c�a V� �ang c� t�n l� g�  ","Th� v�n tung  ","Th�t tinh tr�n  ","T�a v�ng v� ng�  ","Th�i c�c th�n c�ng ",2},
{"Skill tr�n ph�i c�a thi�n v��ng t�n l� g�  ","Thi�n v��ng chi�n �  ","Kim chung tr�o  ","Truy phong quy�t  ","Truy tinh tr�c huy�t ",3},
{"Skill tr�n ph�i c�a thi�u l�m t�n l� g�  ","Nh� lai thi�n �i�p  ","d�ch ch�n kinh�o  ","Ph� thi�n tr�m  ","Truy tinh tr�c huy�t ",2},
{"Skill 9x thi�u l�m �ao ph�p  ","V� t��ng tr�m  ","Ph� thi�n tr�m  ","��t Ma h� giang  ","Ho�nh t�o thi�n qu�n ",3},
{"Skill h� tr� c�a thi�u l�m quy�n  ","H�n long b�t v�  ","Kim cang ph�c ma  ","Ma ha v� l��ng  ","��t ma h� giang ",2},
{"Skill tr�n ph�i c�a ���ng m�n t�n l� g�  ","T�m nh�n  ","�m kh� ���ng m�n  ","Thi�n la ��a v�ng  ","Truy t�m ti�n ",3},
{"Skill n�o sau ��y kh�ng h� tr� cho ���ng m�n b�y  ","�m kh� ���ng m�n  ","��a di�m h�a  ","Xuy�n t�m th�ch  ","H�n b�ng th�ch ",3},
{"Skill tr�n ph�i c�a thi�u l�m t�n l� g�  ","Nh� lai thi�n �i�p  ","d�ch ch�n kinh�o  ","Ph� thi�n tr�m  ","Truy tinh tr�c huy�t ",2},
{"Skill 9x c�a ���ng m�n phi �ao  ","Nhi�p h�n nguy�t �nh  ","T�n hoa ti�u  ","B�o v� l� hoa  ","Truy t�m ti�n ",2},
{"Skill tr�n ph�i c�a Ng� ��c t�n l� g�  ","Ng� ��c k� kinh  ","Xuy�n t�m ��c th�ch  ","V� h�nh ��c  ","�o�n c�n h� c�t ",4},
{"Skill 9x c�a ng� ��c ch��ng  ","�m phong th�c c�t  ","�o�n c�n h� c�t  ","Ng� ��c ch��ng ph�p  ","B�ch ��c xuy�n t�m ",3},
{"Skill 6x h� tr� ng� ��c �ao  ","Chu c�p thanh minh  ","Ng� ��c �ao ph�p  ","Huy�t �ao ��c s�t  ","B�ch ��c xuy�n t�m ",3},
{"Skill 6x h� tr� Nga mi ch��ng  ","Ph�t quang ph� chi�u  ","B�t di�t b�t tuy�t  ","Th�i song v�ng nguy�t  ","Nga mi ch��ng ph�p ",3},
{"Skill t�ng kh�ng t�t c� c�a Nga Mi  ","Ph� �� ch�ng sinh  ","L�u th�y  ","M�ng �i�p  ","T� h�ng ph� �� ",3},
{"T�ng 2 c�a skill 9x Nga mi ki�m t�n l� g�  ","Ng�c tuy�t t�y tr�n  ","Tam nga t� tuy�t  ","Phong s��ng t�i �nh  ","Ph� �� ch�ng sinh ",3},
{"Skill 9x b�a c�a thi�n nh�n  ","Nhi�p h�n lo�n t�m  ","V�n long k�ch  ","Thi�n ma gi�i th�  ","Ma �m ph� ph�ch ",2},
{"Skill n�o sau d�y kh�ng ph�i l� b�a ch� c�a Thi�n nh�n  ","Ma di�m th�t s�t  ","�o �nh phi h�  ","Phi h�ng v� t�ch  ","Nhi�p h�n lo�n t�m ",4},
{"Skill 6x n�o h� tr� v� ki�m  ","Tam ho�nh thao nguy�t  ","V� ng� v� ki�m  ","N� l�i ch�  ","V� �ang quy�n ph�p ",3},
{"Skill n�o t�ng �� ch�nh x�c c�a v� �ang  ","Th�t tinh tr�n  ","Th� v�n tung  ","T�a v�ng v� ng�  ","Th�i c�c th�n c�ng ",2},
{"Skill b�a t�ng kh�ng c�a c�n l�n  ","thi�n thanh ��a tr�c  ","S��ng ng�o c�n l�n  ","T�y ti�n t� c�tt  ","Thanh phong ph� ",2},
{"Skill kh�ng ph�n ��n c�a c�n l�n c� t�n l�  ","Huy�n thi�n v� c�c  ","Thi�n thanh ��a tr�c  ","Thanh phong ph�  ","M� tung �o �nh ",3},
{"T�ng th� 2 c�a skill Nga Mi ch��ng t�n l�  ","Kim ��nh ph�t quang  ","Phong s��ng t�i �nh  ","Tam nga t� tuy�t  ","Ng�c tuy�t t�y tr�n ",3},
{"Skill b�a n�o c�a c�n l�n l�m gi�m t�c �� di chuy�n  ","K� b�n ph�  ","Thanh phong ph�  ","S��ng ng�o c�n l�n  ","M� tung �o �nh ",3},
{"Skill 6x h� tr� Nga mi ch��ng  ","Ph�t quang ph� chi�u  ","B�t di�t b�t tuy�t  ","Th�i song v�ng nguy�t  ","Nga mi ch��ng ph�p ",3},
{"Skill g�y cho�ng cho ��i ph��ng c�a c�n l�n l�  ","Kh� tam ph�  ","S��ng ng�o c�n l�n  ","K� b�n ph�  ","Thanh phong ph� ",3},
{"H� th�y m�c trang b� h� g� s� t� k�ch ���c �n 1 c�a trang b�  ","M�c  ","H�a  ","Th�  ","Th�y ",4},
{"Ph�ng th� v�y l� ch� c� tr�n trang b� h� g�  ","H�a  ","th�y  ","Th�  ","M�c ",3},
{"Th�i gian l�m ch�m l� hi�u �ng c� tr�n trang b� h�  ","H�a  ","M�c  ","Th�y  ","Th� ",3},
{"Th�i gian cho�ng c� tr�n trang b� h�  ","Th�y  ","H�a  ","Th�  ","M�c ",3},
{"Th�i gian tr�ng ��c l� hi�u �ng c� tr�n trang b� h�  ","Th�  ","M�c  ","H�a  ","Th�y ",2},

{"May m� ch� c� tr�n trang b� n�o  ","D�y chuy�n  ","�o  ","Th�t l�ng  ","Gi�y ",3},
{"May m�n l� thu�c t�nh ch� c� tr�n trang b� h�  ","M�c  ","Th�y  ","H�a  ","Th� ",1},
{"B� ��nh Qu�c g�m bao nhi�u m�n  ","5  ","6  ","4  ","3 ",2},
{"Hi�u �ng th�i gian ph�c h�i t�i �a trang b� ��nh Qu�c l�  ","50  ","49  ","47  ","40 ",2},
{"C� t�t c� bao nhi�u trang b� c� hi�u �ng may m�c  ","4  ","5  ","3  ","2 ",2},
{"Gi� tr� may m�n t�i �a c�a 1 trang b� l�  ","10%  ","40%  ","9%  ","30% ",1},
{"M�t ng�y c� th� l�m ���c t�i �a bao nhi�u nhi�m v� d� t�u  ","40  ","50  ","30  ","20 ",3},
{"Trang b� th��ng n�o kh�ng ph�n bi�t nam v� n�  ","Th�t l�ng  ","�o  ","N�n  ","Bao tay ",3},
{"H� n�o ch� c� nh�n v�t l� n�  ","Th�y  ","H�a  ","Th�  ","M�c ",3},
{"H� n�o ch� c� nh�n v�t nam  ","Kim  ","Th�y  ","H�a  ","Th� ",3},



{"M�t trang b� h� th�y kh�ng th� c�  ","kh�ng l�iu  ","kh�ng h�a  ","th�i gian cho�ng  ","cho�ng h�a s�t th��ng th�nh n�i l�c ",1},

{"M�t ng�y c� bao nhi�m th�i �i�m c� th� ��ng k� v��t �i  ","8  ","7  ","6  ","12 ",2},
{"M�i tr�n t�ng kim k�o d�i bao nhi�u ph�t  ","60  ","45  ","30  ","15 ",1},


{"Tr� nhi�m v� boss s�t th� s� d��c bao nhi�u �i�m danh v�ng  ","2  ","1  ","3  ","4 ",2},
{"Th�i gian xu�t hi�n boss ��i ho�ng kim  ","21h00  ","9h00  ","20h30  ","20h00 ",3},

{"Gi�y c� th� k�ch ���c thu�c t�nh �n c�a  ","Ng�c b�i  ","Nh�n tr�n  ","Th�t l�ng  ","�o ",4},
{"Th�t l�ng k�ch ���c thu�c t�nh c�a   ","�o  ","V� kh�  ","Gi�y  ","Ng�c b�i ",3},

{"World cup l�n ��u ti�n ���c t� ch�c � ��u  ","Uruguay  ","Brazil  ","Anh  ","��c ",3},
{"Ban nh�c ABBA g�m bao nhi�u th�nh vi�n  ","4 ","3  ","2 ","5 ",2},
{"C�u th� u�t s�c nh�t th� gi�i n�m 2004  ","Ronaldinho ","Ronaldo ","Beckkham ","Messi ",4},
{"��i tuy�n Brazil �� bao nhi�u l�n v�o chung k�t World cup ","7  ","6 ","5  ","8 ",3},
{"��i tuy�n n�o v� ��ch World cup nhi�u nh�t  ","Brazil ","T�y Ban Nha ","Ph�p ","� ",2},
{"��t n��c c� b�ng ch� c�i g�m 76 ch� c�i l�  ","Campuchia  ","L�o  ","Th�i Lan  ","Myanma ",2},
{"T�nh c�c b�c c�a n��c ta l�  ","H� Giang  ","B�c Giang  ","L�ng S�n  ","L�o Cai ",4},


{"M�t d�m ( mile) b�ng bao nhi�u km  ","1,6 ","1 ","2 ","1,3 ",2},
{"M�t inch b�ng bao nhi�u cm  ","2,54 ","2 ","3 ","1 ",1},
{"Vitamin n�o tan ���c trong d�u m�  ","A ","C ","B1 ","B6 ",3},
{"Trong 1 n�m d��ng l�ch c� bao nhi�u th�ng c� 30 ng�y  ","4  ","5  ","6  ","7 ",2},


{"Hi�n t��ng M�t Tr�ng n�m gi�a M�t Tr�i v� Tr�i ��t g�i l�  ","Nh�t th�c  ","Nguy�t th�c  ","X�m th�c  ","T�t c� ��u sai ",3},



{"��i La l� t�n c� c�a  ","H� N�i  ","Ninh B�nh  ","Ph� Th�  ","T�t c� ��u sai ",3},

{"Ph� c� H�i An ���c x�y d�ng t� th� k�  ","16  ","17  ","14  ","15 ",4},
{"V� Tuy�t 17 ch�y qua ��a ph�n t�nh n�o  ","Qu�ng Tr� ","Qu�ng B�nh ","Qu�ng Nam ","Qu�ng Ng�i ",3},

{"N��c n�o nh� nh�t th� gi�i  ","Vantican  ","Somalia  ","Monaco  ","T�t c� ��u sai ",4},
{"Vua n�o ban chi�u d�i �� t� Hoa L� v� Th�ng Long  ","L� C�ng U�n  ","H� Qu� Ly  ","L� L�i  ","Nguy�n Hu� ",4},


{"Li�n Hi�p Qu�c ���c th�nh l�p v�o n�m n�o  ","1945  ","1955  ","1950  ","1960 ",2},
{"T�ng s�n ph�m qu�c n�i ���c k� hi�u l�  ","GDP  ","GNP  ","BTO  ","ODA ",2},
{"Chi�n tranh th� gi�i l�n th� 2 k�t th�c v�o n�m n�o  ","1945  ","1944  ","1946  ","1947 ",3},
{"H�nh tinh n�o g�n v�i M�t Tr�i nh�t  ","Th�y tinh  ","Kim Tinh  ","M�c Tinh  ","H�a Tinh ",2},



{"Hoa hoonhf l� qu�c hoa c�a n��c n�o  ","Bungari  ","Hungary  ","Ph�n Lan  ","T�t c� ��u sai ",3},

{"N�m n�o kh�ng ph�i l� n�m nhu�n  ","1994  ","2000  ","1980  ","2012 ",2},
{"C� bao nhi�u qu�c gia � ��ng Nam � hi�n nay c�n vua tr� v�  ","3  ","4  ","2  ","1 ",3},
{"Qu�c hi�u n��c ta d��i th�i An D��ng V��ng l�  ","�u L�c  ","L�c Vi�t  ","��i Vi�t  ","T�t c� ��u sai ",3},
{"Th�nh ph� ���c g�i l� kinh �o c�a �nh s�ng  ","Paris  ","Milan  ","London  ","Berlin ",2},

{"N�i h�p nh�t n��c ta thu�c t�nh n�o  ","Qu�ng B�nh  ","Qu�ng Tr�  ","Ngh� An  ","Qu�ng Nam ",3},
{"� C�p l� t�n g�i c�a th�nh ph� n�o th�i ph�p  ","V�ng T�u  ","M� Tho  ","C�n Th�  ","Bi�n H�a ",3},
{"T�ng b� th� ��u ti�n c�a ��ng c�ng s�n Vi�t Nam  ","Tr�n Ph�  ","Nguy�n V�n C�  ","H� Ch� Minh  ","T�t c� ��u sai ",2},
{"��n nguy�t g�m c� m�y d�y  ","2  ","3  ","1  ","5 ",3},
{"M�n b�ng r� xu�t x� t� n��c n�o  ","M�  ","Anh  ","Brazil  ","T�t c� ��u sai ",4},

{"� Ph��ng T�y ng��i ta ki�n k� s� n�o nh�t  ","13  ","3  ","7  ","9 ",2},

{"Trong b�u kh� quy�n c�a Tr�i ��t kh� g� chi�m t� l� nhi�u nh�t  ","Nito  ","Oxi  ","CO2  ","T�t c� ��u sai ",2},
{"H�y n�i theo c�ch c�a b�n l� kh�u hi�u c�a  ","Viettel  ","Mobi  ","Vian  ","G-mobile ",1},
{"��nh n�i cao nh�t Mi�n Nam n��c ta l�  ","B� �en  ","Phan-xi-bang  ","Lang-Bi-Ang  ","T�t c� ��u sai ",2},
{"T�nh n�o c�a n��c ta c� bi�n gi�i v�i L�o v� Campuchia  ","Kontum  ","L�o Cai  ","Long An  ","An Giang ",3},
{"Ch�u l�c n�o ���c ph�t hi�n mu�n nh�t  ","Ch�u Nam C�c  ","Ch�u M�  ","Ch�y �c  ","T�t c� ��u sai ",3},
{"Hi�n nay h� M�t Tr�i c� bao nhi�u h�nh tinh  ","8  ","9  ","10  ","7 ",2},
{"V��n Qu�c Gia C�t Ti�n n�m tr�n ��a b�n m�y t�nh  ","4  ","3  ","2  ","1 ",3},
{"V��n qu�c gia C�t B� thu�c t�nh n�a   ","H�i Ph�ng  ","��ng Nai  ","H� T�nh  ","T�t c� ��u sai ",3},
{"Ng� ba ��ng L�c thu�c t�nh n�o  ","H� T�nh  ","��ng Nai  ","Qu�ng Tr�  ","Th�a-Thi�n Hu� ",3},
{"Vi�t Nam tham d� Olympic ��u ti�n v�o n�m n�o  ","1980  ","1977  ","1985  ","1990 ",4},
{"V� ch�a Tr�nh cu�i c�ng c�a n��c ta  ","Tr�nh B�ng  ","Tr�nh Tu�  ","Tr�nh Ki�m  ","T�t c� ��u sai ",3},
{"��a danh R�ch G�m-Xo�i M�t thu�c t�nh n�o  ","Ti�n Giang  ","Long An  ","B�n Tre  ","An Giang ",4},
{"Nh� m�y l�c d�u ��u ti�n Dung Qu�t thu�c t�nh n�o  ","Qu�ng Nam  ","Qu�ng Tr�  ","Qu�ng B�nh  ","T�t c� ��u sai ",3},
{"Kim lo�i ��u ti�n m� con ng��i m� luy�n ���c  ","��ng  ","S�t  ","Ch�  ","K�m ",3},
{"H�nh ch�p t� gi�c c� bao nhi�u c�nh  ","8  ","4  ","7  ","10i ",3},
{"Karaoke c� ngu�n g�c t� n��c n�o  ","Nh�t B�n  ","Anh  ","Th�y �i�n  ","T�t c� ��u sai ",4},
{"T�nh nh� nh�t c�a n��c ta l�  ","B�c Ninh  ","Ngh� An  ","H� T�nh  ","��ng Nai ",3},
{"L�ng ch� t�ch H� Ch� Minh ���c x�y d�ng v�o n�m n�o  ","1973  ","1975  ","1972  ","T�t c� ��u sai ",2},
{"Vi� Nam l� th�nh vi�n th� bao nhi�u c�a WTO  ","150  ","140  ","160  ","155 ",3},
{"N��c ta hi�n nay c� bao nhi�u th�nh ph� tr�c thu�c Trung ��ng  ","5  ","4  ","6  ","7 ",3},
{"S�ng M� C�ng ch�y v�o n��c ta ��u ti�n qua t�nh n�o  ","Ti�n Giang  ","Long An  ","B�n Tre  ","H�u Giang ",2},
{"C�c ��ng c�a n��c ta thu�c t�nh n�o  ","Kh�nh H�a  ","L�o Cai  ","H� Giang  ","C� Mau ",3},
{"N��c ta c� bao nhi�u b�n tuy�n ng�n ��c l�p  ","3  ","2  ","1  ","4 ",2},
{"T�n khai sinh thu� nh� c�a B�c H�  ","Nguy�n Sinh Cung  ","Nguy�n �i Qu�c  ","H� Ch� Minh  ","T�t c� ��u sai ",3},
{"Kim lo�i duy nh�t thu�c th� l�ng  ","Th�y Ng�n  ","B�c  ","Ch�  ","V�ng ",1},
{"Casino l� �� ch� n�i n�o  ","S�ng b�c  ","kh�ch s�n  ","khu ngh� d��ng  ","T�t c� ��u sai ",1},
{"Con ���ng t� l�a b�t ngu�n t� Trung Qu�c v� k�t th�c �  ","�  ","�n ��  ","th� Nh� K�  ","Ai C�p ",3},
{"Gi� nobel to�n h�c n�m 2010 thu�c v� qu�c gia n�o  ","Kh�ng c� n��c n�o c�  ","M�  ","Vi�t Nam  ","Ph�p ",4},
{"M�n h�c n�o kh�ng c� thi trong k� thi T�t nghi�p n�m 2013  ","V�t L�  ","��a l�  ","H�a h�c  ","To�n ",3},
{"Ngh� l� gi� t� H�ng V��ng 10 th�ng 3 �p d�ng t� n�m n�o  ","2007  ","2010  ","2009  ","2008 ",4},
{"C�u th� ��t qu� b�ng v�ng th� gi�i n�m 2008  ","C.Ronaldo  ","Messi  ","Ronaldinho  ","T�t c� ��u sai ",4},
{"V�n Mi�u ���c x�y d�ng v�o th�i n�o  ","Nh� L�  ","Nh� Tr�n  ","Nh� L�  ","Nh� H�u L� ",3},
{"C�c nguy�n t� c�ng ��ng v� g�i l�  ","��ng v�  ","c�ng kh�i l��ng  ","C�ng c�u h�nh electron  ","T�t c� ��u sai ",2},
{"Vi�t Nam c� t�t c� bao nhi�u d�n t�c  ","54  ","55  ","64  ","65 ",2},
{"C�c T�y thu�c t�nh n�o c�a n��c ta hi�n nay  ","�i�n Bi�n  ","L�o Cai  ","H� Giang  ","Kh�nh H�a ",3},
{"��t n��c ���c m�nh danh l� ��t n��c V�n ch�a  ","Myanma  ","Campuchia  ","L�o  ","Th�i Lan ",3},
{"Tr� s� c�a Li�n Hi�p Qu�c ��t � ��u  ","New York  ","London  ","Washinton  ","Paris ",3},
{"M�t th�ng d�u t��ng ���ng bao nhi�u l�t  ","159  ","100  ","150  ","200 ",4},
{"Tr��c khi d�i �� v� Th�ng Long th� kinh �� c� c�a n��c ta � ��u  ","Hoa L�  ","Ninh B�nh  ","Ph� Th�  ","T�t c� ��u sai ",3},
{"Sapa thu�c t�nh n�o n��c ta hi�n nay  ","L�o Cai  ","L�ng S�n  ","H�Giang  ","B�c Giang ",3},
{"Gi�i th��ng Nobel ���c trao t�ng � n��c n�o  ","Th�y �i�n  ","Th�y S�  ","M�  ","Ph�n Lan ",2},
{"S� c�p nhi�m s�t th� c�a con ng��i  ","23  ","21  ","20�  ","22 ",2},
{"M�t nhi�m k� qu�c h�i n��c ta k�o d�i m�y n�m  ","5  ","4  ","6  ","10 ",3},
{"�i�u nh�y n�i ti�ng xu�t x� t� Achentina  ","Tango  ","Samba  ","Chachacha  ","T�t c� ��u sai ",3},
{"Th�c d�n Ph�p t�n c�ng n��c ta ��u ti�n v�o n�m n�o  ","1858  ","1856  ","1900  ","1902 ",3},
{"Trong c� th� con ng��i,x��ng n�o d�i nh�t  ","X��ng ��i  ","X��ng tay  ","X��ng s��n  ","T�t c� ��u sai ",4},
{"Ngh� thu�t x�p gi�y truy�n th�ng c�a Nh�t B�n  ","Origami  ","Bonsai  ","Tanka  ","Ikebana ",1},

{"Th�nh ph� ��ng d�n nh�t n��c ta hi�n nay  ","H� Ch� Minh  ","H� N�i  ","Dong Nai  ","V�ng T�u ",1},
{"t�nh n�o sau ��y kh�ng gi�p v�i th�nh ph� H� Ch� Minh  ","L�m ��ng  ","Ti�n Giang  ","Long An  ","��ng Nai ",1},
{"Tuy�t ���ng n�o d�i nh�t n��c ta  ","Qu�c l� 1A  ","���ng H� Ch� Minh  ","Qu�c l� 50  ","Qu�c l� 51 ",1},
{"L�c  ��a gi� l� �� �m ch� ch�u l�c n�o  ","Ch�u �u  ","Ch�u �  ","Ch�u M�  ","Ch�u Phi ",1},
{"Khu du l�ch ��i Nam thu�c t�nh n�o  ","B�nh D��ng  ","H� Ch� Minh  ","V�ng T�u  ","Ikebana ",1},
{"v�nh H� Long thu�c t�nh n�o ","Qu�ng Ninh ","H�i Ph�ng ","Qu�ng Nam ","L�ng S�n ",1},
{"H�nh tinh g�n Tr�i ��t nh�t?  ","Sao Kim ","Sao th�y ","Sao h�a ","Sao th�  ",2},

{"Tranh ��ng H� l� s�n ph�m thu�c t�nh n�o ","B�c Ninh ","Qu�ng Ninh ","H� N�i ","Qu�ng B�nh ",1},
{"Th�nh ��a M� sown thu�c t�nh n�o ","Qu�ng Nam ","Qu�ng B�nh ","Qu�ng Tr� ","Qu�ng Ng�a ",2},
{"Qu�n th� di t�ch Hu� ���c c�ng nh�n l� di s�n v�n h�a th� gi�i v�o n�m n�o ","1993 ","1994 ","1995t ","1996 ",3},
{"T�n Con S�ng d�i nh�t Ch�u � ","D��ng T� ","S�ng M� C�ng ","S�ng H�ng ","S�ng ��ng Nai ",2},
{"V�n t�c �nh s�ng trong kh�ng kh� l� ","300000kms ","300000kmh ","300000ms ","30000kms ",1},
{"Trang t� �i�n b�ch khoa m� l�n nh�t tr�n m�ng l� ","wikipedia ","google ","yahoo ","facebook ",2},
{"C�a kh�u t�nh Bi�n thu�c t�nh n�o c�a Vi�t Nam  ","An Giang ","T�y Ninh ","Ki�n Giang ","Ti�n Giang ",2},
{"Nh� m�y th�y �i�n ��u ti�n c�a n��c ta ���c x�y d�ng � ��u  ","�� L�t ","��ng Nai ","L�o Cai ","B�cGiang ",4},
{"Nh� m�y th�y �i�n l�n nh�t n��c ta hi�n nay ","S�n La ","H�a B�nh ","��ng Nai ","Th�c B� ",2},
{"Thu�c n� ���c ph�t minh b�i ","Nobel ","Anh-xtanh ","Edison ","T�t c� ��u sai ",3},
{"Th� t��ng Nguy�n T�n D�ng qu� � ��u ","C� Mau ","Ki�n Giang ","B�c Li�u ","H�u Giang ",2},
{"Ch�c n�ng ch�nh c�a trang google.com l� g� ","t�m ki�m ","nghe nh�c ","ch�i game ","xem phim ",1},
{"��i d��ng n�o gi�p ch�u �,M�,Ch�u ��i D��ng ","Th�i Binhd D��ng ","��i T�y D��ng ","B�c B�ng D��ng ","T�t c� ��u sai ",1},
{"S� pi d�ng t�nh chu vi h�nh g� ","H�nh tr�n ","H�nh ch� nh�t ","H�nh vu�ng ","H�nh thang ",1},
{"Game show The Voice l� ch��ng tr�nh v� ","Ca h�t ","�o thu�t ","Khi�u v� ","T�t c� ��u ��ng ",1},
{"Game show n�o kh�ng ph�i l� ch� y�u l� ca h�t ","Viet Nam got talen ","The voice ","Vi�t Nam Idol ","B�i h�t Vi�t ",1},
{"TRuy�n h�nh c�p n�o hi�n nay ��c quy�n ph�t s�ng gi�i Ngo�i h�ng anh ","K+ ","VTVC ","HTVC ","VTV ",1},
{"��i v� ��ch Champion league g�n ��y nh�t l� ","Bayer Munich ","Real Madrid ","Asenal ","M.U ",4},


{"Bitexco l� t�a nh� cao th� m�y th� gi�i ","110 ","100 ","80 ","900 ",1},
{"T�a nh� cao nh�t th� gi�i hi�n nay � ","Dubai ","M� ","Trung Qu�c ","Nh�t b�n ",3},
{"S� pi d�ng t�nh chu vi h�nh g� ","H�nh tr�n ","H�nh ch� nh�t ","H�nh vu�ng ","H�nh thang ",1},
{"T�a nh� cao nh�t ��ng Nam � thu�c qu�c gia ","Malaysia ","singapore ","Th�i Lan ","Vi�t Nam ",2},
{"H�m th� thi�m b�t qua s�ng n�o ","S�ng S�i G�n ","S�ng ��ng Nai ","S�ng Th� Ngh� ","T�t c� ��u sai ",1},
{"B� tr��ng B� Gi�o d�c c�a n��c ta hi�n nay ","Ph�m V� Lu�n ","Nguy�n Thi�n Nh�n ","Nguy�n Sinh H�ng ","B�i V�n Ga ",2},
{"Hi�n nay lu�t quy ��nh m�t ng�y ch�i game kh�ng qu� ","3h ","6h ","4h ","Ch�i bao l�u c�ng ���c ",2},
{"Vi�t Nam idol l�n ��u ti�n t� ch�c v�o n�m n�o ","2007 ","2008 ","2006 ","2009 ",3},
{"Qu�n qu�n Vi� Nam got talen 2012 tr�nh b�y ngh� thu�t g� ","Khi�u v� ","Ca h�t ","�o thu�t ","T�t c� ��u sai ",2},

{"N��c n�o sau ��y kh�ng c� b� bi�n ","L�o ","Campuchia ","Th�i Lan ","Vi�t Nam ",2},
{"N��c ta c� m�y ng��i ���ch c�ng nh�n l� danh nh�n v�n h�a th� gi�i ","3 ","2 ","4 ","1 ",2},
{"Ranh gi�i t� nhi�n gi�a Ch�u �u v� Ch�u � ","D�y n�i Uran ","D�y Himalaya ","D�y Alps ","T�t c� ��u sai ",3},
{"N��c n�o c� di�n t�ch l�n nh�t th� gi�i ","Nga ","M� ","Trung Qu�c ","�n �� ",1},
{"N��c n�o l� n�n kinh t� l�n th� 2 th� gi�i ","Trung Qu�c ","Nh�t B�n ","M� ","��c ",1},
{"N��c ta l�y t�n n��c nh� hi�n nay v�o n�m n�o ","1976 ","1975 ","1946 ","1945 ",3},
{"1 byte g�m bao nhi�u bit ","8 ","10 ","12 ","1024 ",2},
{"Theo d��ng l�ch 1 n�m c� bao nhi�u th�ng c� 28 ng�y ","12 th�ng ","1 ","2 ","T�t cae ��u sai ",4},
{"Lo�i h�nh s�n kh�u c�i l��ng c� ngu�n g�c t� ","Nam b� ","B�c B� ","Trung b� ","T�y nguy�n ",1},
{"N�m ph�t minh ra �i�n tho�i di ��ng ","1973 ","1972 ","175 ","1974 ",3},
{"N��c n�m tr�n c� Ch�u � v� Ch�u �u ","Th� Nh� K� ","Ph�p ","��c ","T�t c� ��u sai ",2},
{"��n ghita th��ng c� m�y d�y ","6 ","5 ","4 ","2 ",1},
{"C�u M� thu�n b�t qua s�ng g� ","S�ng Ti�n ","S�ng H�u ","S�ng v�m c� ","S�ng S�i G�n ",2},
{"Ai ���c m�nh danh l� nh� th� m�i nh�t trong c�c nh� th� m�i ","Xu�n Di�u ","H� Xu�n H��ng ","Ch� Lan Vi�n ","T�t c� ��u sai ",3},
{"S�ng M� C�ng b�t ngu�n t� ��u ","Cao Nguy�n T�y T�ng ","Th�i Lan ","L�o ","Campuchia ",2},
{"��n ghita c� ngu�n g�c t� qu�c gia n�o ","T�y Ban Nha ","Anh ","��c ","Ph�p ",2},
{"��i tuy�n Anh �� bao nhi�u l�n v� ��ch World cup ","1 ","2 ","3 ","0 ",1},
{"C�n Long v� Khang Hi c� quan h� nh� th� n�o ","C�n Long l� ch�u n�i KHang hi ","C�n Long l� cha KHang Hi ","Khang Hi l� ch�u n�i C�n Long ","Kh�ng c� quan h� g� c� ",2},
{"Tr�i ��t quay theo chi�u n�o ","C�ng chi�u kim ��ng h� ","Ng��c chi�u kim ��ng h� ","T�y v�o c�c m�a trong n�m ","T�t c� ��u sai ",2},

{"S�ng ��ng Nai b�t ngu�n t� ��u ","Cao Nguy�n L�m Vi�n ","��ng Nai ","T�y nguy�n ","T�t cae ��u sai ",3},
{"S�ng M� C�ng b�t ngu�n t� ��u ","Cao Nguy�n T�y T�ng ","Th�i Lan ","L�o ","Campuchia ",2},
{"Tr�ng c�a lo�i chim n�o l� to nh�t ","�� ��u ","��i B�ng ","C�nh c�t ","Chim ru�i ",2},
{"��nh n�i cao nh�t n��c ta thu�c t�nh n�o ","L�o Cai ","L�m ��ng ","L�ng S�n ","B�c Giang ",3},

{"B�c H� �� �i t�ng c�ng bao nhi�u qu�c gia t�m ���ng c�u n��c ","48 ","24 ","50 ","12 ",4},
{"C�u l�c b� ���c b�nh ch�n l� CLB v� ��i nh�t th� k� 20 ","Real Madrid ","M.U ","Bayer Munich ","Liverpool ",4},
{"H�nh tinh n�ng nh�t h� M�t Tr�i ","Sao Kim ","Sao H�a ","Sao M�c ","Sao Th�y ",3},


{"N��c ph�t minh ra k� thu�t l�m gi�y ","Trung Qu�c ","Nh�t B�n ","M� ","�n �� ",2},
{"T�n g�i Vi�t Nam c� t� n�m n�o ","1804 ","1802 ","1800 ","1806 ",3},
{"columbo �� kh�m ph� ra ch�u M� v�o n�m ","1492 ","1942 ","1495 ","1496 ",2},
{"S�ng M� C�ng b�t ngu�n t� ��u ","Cao Nguy�n T�y T�ng ","Th�i Lan ","L�o ","Campuchia ",2},
{"Tr� s� c�a Asean ��t � ��u ","Indonesia ","Th�i Lan ","L�o ","Campuchia ",2},

{"Qu�c gia c� nhi�u ng��i theo ��o H�i nh�t ","Indonesia ","I ran ","I r�c ","T�t c� ��u sai ",2},
{"Chi�c c�i xay gi� ��u ti�n xu�t hi�n � ","I Ran ","H� Lan ","Ph�n Lan ","T�t c� ��u sai ",2},
{"��t n��c ��ng th� 3 v� xu�t kh�u l�a g�o ","Indonesia ","Th�i Lan ","Vi�t Nam ","�n �� ",2},

{"��ng C�ng s�n Vi�t Nam ra ��i v�o n�m n�o ","1930 ","1932 ","1931 ","T�t c� ��u sai ",2},

{"��n v� th�ng tin nh� nh�t l� ","bit ","byte ","MB ","KB ",2},
{"�� hi�n 1 c� t�n g�i l� g� ","Huy�n thi�t nguy�n kho�ng ","Chu sa nguy�n th�ch ","Chu sa nguy�n kho�ng ","Kh�ng bi�t ",1},
{"H�n ch� v� kh� skill 9x ngo�i c�ng V� �ang l� g� ","Tr��ng ki�m ","T� ti�n ","�ao ","Song �ao ",2},
{"H�n ch� v� kh� skill 9x ngo�i c�ng Nga Mi l� g� ","Tr��ng ki�m ","Phi ti�u ","Tay kh�ng ","Tr��ng th��ng ",2},
{"N� l�i ch� l� chi�u th�c c�a m�n ph�i n�o? ","V� �ang ","Ng� ��c ","Nga Mi ","���ng M�n ",1},
{"Chi�u th�c chuy�n h�a s�t th��ng th�nh n�i l�c c�a V� �ang l� g�? ","T�a V�ng V� Ng� ","Huy�n �m Tr�m ","H�p Tinh ��i Ph�p ","Ti�u Di�u C�ng ",2},
{"T�c �� di chuy�n c�a ng�a X�ch Th� l� bao nhiu ","80% ","90% ","100% ","50% ",3},
{"H� n�o ch� c� th� t�o nh�n v�t l� N�? ","H� Th�y ","H� H�a ","H� KIm ","H� M�c ",2},
{"H� n�o ch� c� th� t�o nh�n v�t l� Nam ","H� Kim ","H� M�c ","H� M�t Tr�i ","H� Th�y ",1},
{"Skill t�ng �� ch�nh x�c v� n� tr�nh c�a V� �ang l�: ","Th�t Tinh Tr�n ","La H�n Tr�n ","Thi�n M�n Tr�n ","B�t Qu�i Tr�n ",2},
{"Trang b� ��nh Qu�c c� t�ng c�ng bao nhiu m�n? ","5 ","4 ","3 ","1 ",2},
{"�o ��nh Qu�c ���c cho l� max options khi c�: ","Th�i gian ph�c h�i 50 ","Th�i gian ph�c h�i 40 ","Th�i gian ph�c h�i 60 ","Th�i gian ph�c h�i 100 ",4},
{"Th�i gian m� kh�a b�o hi�m c�a trang b� v� v� kh� l�: ","48 gi� ","24 gi� ","12 gi� ","168 gi� ",2},


{"Skill Th� V�n Tung c�a V� �ang t�ng: ","T�c �� di chuy�n ","T�c �� xu�t chi�u ","N� Tr�nh ","�� ch�nh x�c ",1},

{"Mu�n �i Phong L�ng �� b� Nam c�n ph�i c�: ","5000 l��ng ","4000 l��ng ","2000 l��ng ","500 l��ng ",4},

{"Thi�t Th�p M� Cung n�m � th�nh th� n�o ","Bi�n Kinh ","T��ng D��ng ","Ph��ng T��ng ","Th�nh �� ",1},
{"M�i th�nh th� c� bao nhiu NPC B�n Ng�a ","1 ","2 ","0 ","3 ",3},
{"Ph�c duy�n ��i ���c b�n � NPC: ","Kh�ng c� NPC n�o ","Th� r�n ","Hi�u thu�c ","Ti�m t�p h�a ",1},
{"Ch�c v� cao nh�t trong bang h�i l�: ","Bang ch� ","���ng ch� ","Tr��ng l�o ","M�n �� ",2},

{"M� g�i l� lo�i th�c ph�m ���c ti�u th� nhi�u nh�t � Vi�t Nam b�i ��i t��ng n�o? ","Sinh vi�n ","Ca s� ","B�c s� ","Ng��i m�u ",2},
{"Th�nh ph� ��ng d�n nh�t th� gi�i hi�n nay l�:� ","Tokyo ","Mexico city ","New York ","H� N�i ",2},

{"��t n��c Argentina n�i ti�ng v�i �i�u nh�y n�o? ","Tango ","Dance ","Cha cha cha ","Rumba ",2},
{"T�n b� phim �� ��t 11 gi�i Oscar ","Titanic ","Lords of the Ring ","�i�p vi�n 007 ","Ng��i v�n chuy�n ",4},
{"��i tuy�n n�o v� ��ch World Cup 4 l�n? ","Italia ","T�y Ban Nha ","Brazil ","��c ",2},

{"Qu�c gia ��ng d�n nh�t ch�u Phi? ","Nigeria ","Somali ","Lebanon ","Nam Phi ",3},
{"Ti�n ��o Robin van Persie l� c�u th� c�a Qu�c gia n�o? ","H� Lan ","��c ","Trung Qu�c ","Ph�p ",1},
{"��i b�ng v� ��ch Premier League m�a gi�i 2012-2013 l�: ","MU ","MC ","Chelsea ","Arsenal ",1},
{"��i b�ng n�o v� d�ch Euro nhi�u nh�t? ","��c ","Anh ","Ph�p ","M� ",3},
{"Tim ng��i c� m�y ng�n? ","4 ","6 ","8 ","2 ",2},
{"Con m�o c� m�y ch�n ","4 ","5 ","2 ","1 ",4},
{"R��i G� �en l� ��c s�n c�a t�nh n�o sau ��y: ","Long An ","Ti�n Giang ","B�n Tre ","Tr� Vinh ",1},



{"Bi�n s� xe 79 l� c�a t�nh n�o sau ��y: ","Kh�nh H�a ","Ph� Y�n ","B�nh ��nh ","B�nh Thu�n ",2},

{"R�p h�t H�a B�nh Tp.HCM n�m tr�n ���ng n�o ","3-2 ","C�ch m�ng th�ng t�m ","L� T� Tr�ng ","Nam K� Kh�i Ngh�a ",2},{"Th�i gian ��u gi� khi�u chi�n l�nh h�ng ng�y l� ","18h-19h ","6h-7h ","20h-22h ","8h-10h ",2},



{"Th�nh vi�n trong bang ph�i tham gia �t nh�t bao nhi�u ng�y m�i ���c tham gia c�ng-th� th�nh ","7 ng�y ","6 ng�y ","14 ng�y ","Kh�ng c� �i�u ki�n ",2},

{"Map n�o sau ��y ��nh qu�i kh�ng r�i khi�u chi�n l�nh ","Hoa S�n ","Ch�n n�i tr��ng b�ch ","M�c b�c th�o nguy�n ","Tr��ng ca m�n ",2},


{"�� t�y �i�m k� n�ng c�n ","3 vi�n th�y tinh kh�c nhau ","6 tinh h�ng b�o th�ch ","3 vi�n th�y tinh gi�ng nhau ","T�t c� ��u sai ",2},


{"M�t ng�y c� th� n�p t�i �a bao nhi�u khi�u chi�n l�nh ","100 ","200 ","50 ","Bao nhi�u c�ng ���c ",1},




{"Kinh tuy�n g�c �i qua n��c n�o ","Anh ","M� ","Ph�p ","��c ",2},

{"��i d��ng n�o l� n�i x�y ra nhi�u b�o nh�t ","Th�i B�nh D��ng ","��i T�y D��ng ","B�c B�ng D��ng ","�n �� D��ng ",2},
{"K�n K�n Tr�ng l� bi�t danh c�a ��i b�ng n�a ","Real Madrid ","M.U ","Asenal ","Barcalona ",1},

{"Ng�y th�nh l�p �o�n l� ","26-3-1931 ","26-3-1930 ","26-6-1931 ","27-6-1930 ",2},
{"Hoa K� c� bao nhi�u bang ","50 ","16 ","52 ","56 ",2},
{"V�t th� bay kh�ng x�c ��nh vi�t t�t l� g� ","UFO ","WWF ","WWW ","ESCAP ",2},

{"N��c ta gia nh�p Asean v�o n�m n�o ","1995 ","1997 ","1977 ","1975 ",3},

{"Qu� h��ng c�a h�ng Nokia ","Ph�n Lan ","H�n Qu�c ","Nh�t B�n ","Trung Qu�c ",2},
{"Ng�y qu�c t� lao ��ng l� ng�y n�o ","1-5 ","10-3 ","30-4 ","14-2 ",2},
{"Th�ng Long tr� th�nh kinh �� c�a n��c ta t� n�m n�o ","1010 ","1000 ","990 ","900 ",3},

{"Li�n �o�n b�ng �� th� gi�i vi�t t�t l� ","FIFA ","VFF ","FA ","AFC ",2},
{"N��c c� di�n t�ch l�n th� 3 th� gi�i ","Trung Qu�c ","Nga ","M� ","Canada ",3},
{"097 hi�n l� ��u s� c�a nh� m�ng n�o ","Viettel ","Mobi ","Vina ","G-tel ",1},

{"H�nh tinh l�n nh�t trong h� T�c Tr�i ","Sao M�c ","Sao th�y ","Sao th� ","Sao H�a ",2},

{"Con s�ng d�i nh�t Ch�u �u ","Vonga ","Nile ","Missisippi ","T�t c� ��u sai ",4},
{"V� kh� h�t nh�n ���c s� d�ng v�o n�m n�o ","1945 ","1946 ","1900 ","1950 ",3},
{"T�a nh� cao nh�t Vi�t Nam hi�n nay n�m � ��u ","H� N�i ","Th�nh ph� H� Ch� Minh ","�� N�ng ","B�nh D��ng ",2},
{"H�nh tinh quay nhanh nh�t trong h� M� Tr�i ","Sao M�c ","Sao H�a ","Sao Th�y ","Sao Kim ",4},

{"M�n Yoga c� ngu�n g�c t� n��c n�o ","�n �� ","Ai C�p ","Trung Qu�c ","Nh�t B�n ",4},

{"World cup 2010 ���c t� ch�c � ","Nam Phi ","Brazil ","Nh�t B�n-H�n Qu�c ","T�t c� ��u sai ",4},
{"Ti�n polymer c� m�nh gi� th�p nh�t hi�n nay ","10000 ","5000 ","500 ","20000 ",1},
{"Hi�n nay Vi�t Nam c� m�y nahf m�y �i�n h�t nh�n ","0 ","1 ","2 ","3 ",4},
{"B�c H� sinh n�m m�y ","1890 ","1980 ","1900 ","1898 ",2}
}

