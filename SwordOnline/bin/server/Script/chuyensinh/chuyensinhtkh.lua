function main()
if GetAccount() == "hinodl01" or GetAccount() == "" or GetAccount() == "" then
	if GetLevel() < 200 then
		Talk(1,"","Dang cap khong du 200, khong the chuyen sinh !")
		return
	end
end

if GetTask(139) == 0 then
SayNew("<color=green>Chuy�n Sinh L�o Nh�n<color>: Ng��i mu�n ta gi�p g� ?\nL�u �: <color=yellow>Kh�ng c�n th�o ng�a v�n chuy�n sinh ���c tr�nh vi�c kh�ng �� ��ng c�p s� d�ng sau chuy�n sinh<color>",3,
"Ta mu�n chuy�n sinh 1 /chuyensinhfree1",
"Ta mu�n chuy�n sinh 1 + ��i Ph�i /chuyensinhdoiphai",
"Tho�t./no")
else
SayNew("<color=green>Chuy�n Sinh L�o Nh�n<color>: Ng��i mu�n ta gi�p g� ?",3,
"Ta mu�n chuy�n sinh 1 /chuyensinhfree1",
"Ta mu�n ��i Ph�i /doiphai",
"Ta mu�n ph�c h�i K� N�ng 120 /phuchoikynang",
"Tho�t./no")
end
end

function chuyensinhfree1()
SayNew("<color=green>Chuy�n Sinh L�o Nh�n<color>: Ng��i c� ch�c ch�n <color=red>chuy�n sinh kh�ng ��i ph�i<color> kh�ng? Sau n�y kh�ng th� ��i m�n ph�i 1 l�n n�o n�a",2,
"Ta ��ng � chuy�n sinh kh�ng ��i ph�i /chuyensinhfree",
"Tho�t./no")
end
Include("\\script\\monphai.lua")

function phuchoikynang()
if GetLevel() < 90 then
Talk(1,"","��ng c�p kh�ng �� 90, kh�ng th� ph�c h�i k� n�ng")
return
end

if kiemtra() >= GetTask(138) then
Talk(1,"","B�n �� ph�c h�i r�i, kh�ng th� nh�n th�m")
return
end
diemskill = GetTask(138)
if diemskill < 10 then
	diemskill = 10
elseif diemskill > 20 then
	diemskill = 20
end
				if mp() == 1 then
					AddMagic(412,diemskill)
				elseif mp() == 2 then
				AddMagic(414,diemskill)
				elseif mp() == 3 then
				AddMagic(416,diemskill)
				elseif mp() == 4 then
				AddMagic(418,diemskill)
				elseif mp() == 5 then
				AddMagic(420,diemskill)
				elseif mp() == 6 then
				AddMagic(422,diemskill)
				elseif mp() == 7 then
				AddMagic(424,diemskill)
				elseif mp() == 8 then
				AddMagic(426,diemskill)
				elseif mp() == 9 then
				AddMagic(428,diemskill)
				elseif mp() == 10 then
				AddMagic(430,diemskill)
				end
Msg2Player("�� ph�c h�i k� n�ng 120")
end

function doiphai()
SayNew("Vui l�ng ch�n m�n ph�i c�n chuy�n:\nL�u �: <color=yellow>Chuy�n qua H� Kim t� ��ng ��i gi�i t�nh Nam, chuy�n qua H� Th�y t� ��ng chuy�n gi�i t�nh n� <color> ",10,
"Thi�u L�m /doiphai1",
"Thi�n V��ng /doiphai1",
"���ng M�n /doiphai1",
"Ng� ��c /doiphai1",
"Nga My /doiphai1",
"Th�y Y�n /doiphai1",
"C�i Bang /doiphai1",
"Thi�n Nh�n /doiphai1",
"V� �ang /doiphai1",
"C�n L�n /doiphai1")
end

function doiphai1(nsel)
i = nsel + 1
if GetItemCount(566) == 0 then
Talk(1,"","Ng��i kh�ng mang theo L�nh B�i ��i Ph�i, kh�ng th� s� d�ng ch�c n�ng n�y")
return
end

if GetItemCount(17) < 5 then
Talk(1,"","Ng��i kh�ng mang theo 5 Kim Nguy�n B�o, kh�ng th� s� d�ng ch�c n�ng n�y")
return
end

 if CheckItemEquipCS() ~= 1 then
Talk(1,"","H�y th�o h�t trang b� tr�n ng��i xu�ng m�i c� th� ��i Ph�i !")
return
end

thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/DoiMonPhai.txt", "a");
if LoginLog then
write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - Phai: "..GetFaction().." Sang Phai: "..i.."\n");
end
closefile(LoginLog)



KyNang120 = kiemtra()
for p=1,500 do
	DelMagic(p) -- Xoa toan bo skill cu
end
SetTask(138, KyNang120)
DelItem(566)
for p=1,5 do DelItem(17) end

if i == 1 then
	SetSeries(0)
	SetSex(0)
	SetFaction("Thieu Lam Phai")
elseif i == 2 then
	SetSeries(0)
	SetSex(0)
	SetFaction("Thien Vuong Bang")
elseif i == 3 then
	SetSeries(1)
	SetFaction("Duong Mon")
elseif i == 4 then
	SetSeries(1)
	SetFaction("Ngu Doc Giao")
elseif i == 5 then
	SetSeries(2)
	SetSex(1)
	SetFaction("Nga My Phai")
elseif i == 6 then
	SetSeries(2)
	SetSex(1)
	SetFaction("Thuy Yen Mon")
elseif i == 7 then
	SetSeries(3)
	SetFaction("Cai Bang")
elseif i == 8 then
	SetSeries(3)
	SetFaction("Thien Nhan Giao")
elseif i == 9 then
	SetSeries(4)
	SetFaction("Vo Dang Phai")
elseif i == 10 then
	SetSeries(4)
	SetFaction("Con Lon Phai")
end	

	TayTiemNang()
	TayKyNang()
	Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." �� chuy�n ph�i "..GetFaction().." th�nh c�ng !")
	
	
	
	KickOutSelf()
end
function chuyensinhdoiphai()
SayNew("Vui l�ng ch�n m�n ph�i c�n chuy�n:\nL�u �: <color=yellow>Chuy�n qua H� Kim t� ��ng ��i gi�i t�nh Nam, chuy�n qua H� Th�y t� ��ng chuy�n gi�i t�nh n� <color> ",10,
"Thi�u L�m /chuyensinh1",
"Thi�n V��ng /chuyensinh1",
"���ng M�n /chuyensinh1",
"Ng� ��c /chuyensinh1",
"Nga My /chuyensinh1",
"Th�y Y�n /chuyensinh1",
"C�i Bang /chuyensinh1",
"Thi�n Nh�n /chuyensinh1",
"V� �ang /chuyensinh1",
"C�n L�n /chuyensinh1")
end

function no()
end
function chuyensinh1(nsel)
i = nsel + 1
if GetItemCount(566) == 0 then
Talk(1,"","Ng��i kh�ng mang theo L�nh B�i ��i Ph�i, kh�ng th� s� d�ng ch�c n�ng n�y")
return
end

 if CheckItemEquipCS() ~= 1 then
Talk(1,"","H�y th�o h�t trang b� tr�n ng��i xu�ng m�i c� th� Chuy�n Sinh !")
return
end

num = 0
for t=1,getn(MangLevel) do
	if GetLevel() >= MangLevel[t][1] and GetLevel() <= MangLevel[t][2] then
		num = MangLevel[t][3]
		break
	end
end

if num == 0 then
Talk(1,"","C� ph�t sinh l�i level, vui l�ng li�n h� admin �� gi�i quy�t")
return
end

KyNang120 = kiemtra()
for p=1,500 do
	DelMagic(p) -- Xoa toan bo skill cu
end
SetTask(138, KyNang120)
DelItem(566)
if i == 1 then
	SetSeries(0)
	SetSex(0)
	SetFaction("Thieu Lam Phai")
elseif i == 2 then
	SetSeries(0)
	SetSex(0)
	SetFaction("Thien Vuong Bang")
elseif i == 3 then
	SetSeries(1)
	SetFaction("Duong Mon")
elseif i == 4 then
	SetSeries(1)
	SetFaction("Ngu Doc Giao")
elseif i == 5 then
	SetSeries(2)
	SetSex(1)
	SetFaction("Nga My Phai")
elseif i == 6 then
	SetSeries(2)
	SetSex(1)
	SetFaction("Thuy Yen Mon")
elseif i == 7 then
	SetSeries(3)
	SetFaction("Cai Bang")
elseif i == 8 then
	SetSeries(3)
	SetFaction("Thien Nhan Giao")
elseif i == 9 then
	SetSeries(4)
	SetFaction("Vo Dang Phai")
elseif i == 10 then
	SetSeries(4)
	SetFaction("Con Lon Phai")
end	


num = 0
for t=1,getn(MangLevel) do
	if GetLevel() >= MangLevel[t][1] and GetLevel() <= MangLevel[t][2] then
		num = MangLevel[t][3]
		break
	end
end

if num == 0 then
Talk(1,"","C� ph�t sinh l�i level, vui l�ng li�n h� admin �� gi�i quy�t")
return
end

if GetTask(139) == 0 then
	SetTask(139,1)
	SetTask(196,0)
	SetLevel(num)
	TayTiemNang()
	TayKyNang()
	Msg2Player("Ch�c m�ng b�n �� chuy�n sinh 1 th�nh c�ng")
	KickOutSelf()
else
	Talk(1,"","Ng��i �� chuy�n sinh r�i, kh�ng th� chuy�n sinh th�m l�n n�a")
end

end

function kiemtra()
for i=412,430 do
if HaveMagic(i) > 0 then
return HaveMagic(i)
end
end
return 0
end


function chuyensinhfree()

 if CheckItemEquipCS() ~= 1 then
Talk(1,"","H�y th�o h�t trang b� tr�n ng��i xu�ng m�i c� th� Chuy�n Sinh !")
return
end

num = 0
for t=1,getn(MangLevel) do
	if GetLevel() >= MangLevel[t][1] and GetLevel() <= MangLevel[t][2] then
		num = MangLevel[t][3]
		break
	end
end

if num == 0 then
Talk(1,"","C� ph�t sinh l�i level, vui l�ng li�n h� admin �� gi�i quy�t")
return
end

if GetTask(139) == 0 then
	
KyNang120 = kiemtra()
	for p=412,430 do
		DelMagic(p) -- Xoa toan bo skill cu
	end
	SetTask(138, KyNang120)
	SetTask(139,1)
	SetTask(196,0)
	SetLevel(num)
	TayTiemNang()
	TayKyNang()
	Msg2Player("Ch�c m�ng b�n �� chuy�n sinh 1 th�nh c�ng")
	KickOutSelf()
else
	Talk(1,"","Ng��i �� chuy�n sinh r�i, kh�ng th� chuy�n sinh th�m l�n n�a")
end
end

MangLevel = {
{1,155,90},
{156,157,91},
{158,159,92},
{160,161,93},
{162,163,94},
{164,165,95},
{166,167,96},
{168,169,97},
{170,171,98},
{172,173,99},
{174,175,100},
{176,176,101},
{177,177,102},
{178,178,103},
{179,179,104},
{180,180,105},
{181,181,106},
{182,182,107},
{183,183,108},
{184,184,109},
{185,185,110},
{186,186,111},
{187,187,112},
{188,188,113},
{189,189,114},
{190,190,115},
{191,191,116},
{192,192,117},
{193,193,118},
{194,194,119},
{195,195,120},
{196,196,121},
{197,197,122},
{198,198,123},
{199,199,124},
{200,200,125},
}



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
end


function TayKyNang()
diemkn = GetMagicPoint()
AddMagicPoint(-diemkn)
diemkn2 = (GetLevel()-1)+GetTask(199) + getKyNang()
AddMagicPoint(diemkn2)
RollbackSkill()
UpdateSkill()
end

function getTiemNang()
if GetTask(139) == 1 then
return 200
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
return 40
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







