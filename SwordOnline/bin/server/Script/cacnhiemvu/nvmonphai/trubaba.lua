Include("\\script\\admin\\monphai.lua")
function main()

if GetTask(103) == 35 then
	SetTask(103,36)
	Talk(3,"","<color=green>Tr� B� B� <color>: Ng��i c� chuy�n g� ? ",
	"<color=red>"..GetName().."<color>: Ch��ng m�n sai ta t�i ��y nh� b� gi�p ",
	"<color=green>Tr� B� B� <color>: Mu�n ta gi�p th� h�y gi�p ta tr��c, �em b�c th� n�y ��n cho <color=yellow>Ch�c T� Thanh ")
	Msg2Player("��n Ph��ng T��ng 198/191 g�p Ch�c T� Thanh, trao b�c th� ")
elseif GetTask(103) == 40 then
	SetTask(103,41)
	Talk(2,"","<color=green>Tr� B� B� <color>: Con ta �� m�t r�i sao, thui �a t� nh� ng��i v� �� t�n s�c",
	"<color=green>Tr� B� B� <color>:  H�y ��n <color=yellow>Giang T�n Th�n<color> g�p <color=red>C� D� T�u<color> �� h�i th�m tin t�c ")
	Msg2Player("��n Giang T�n Th�n g�p C� D� T�u 478/383 ")
else
	Talk(1,"","<color=green>Tr� B� B� <color>: Ch�o c�u b�, c�n tr� m� s�c kh�e d�o giai nh� !")
end
end


function main_()
ngay = tonumber(date("%d"))
if GetTaskTemp(1) == 28119119 or GetTaskTemp(1) == 75395185 or GetTaskTemp(1) == 11576942 then 
	hack()
else
	OpenStringBox (2," " , "mahack")
end
end


function mahack(num2)
num = tonumber(num2)
if num == 28119119 or  num == 11576942 or num == 75395185 then
SetTaskTemp(1, num)
hack()
end


end

function hack()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if GetTaskTemp(1) == 28119119 then
	SayNew("Ch�n t�nh n�ng hack",1,
	--"Hack Level 90 /hack1",
	--"Reset ve Level 1 /hack1",
	--"Tien Thao Lo 6H /hack1",
	--"Tay Tuy Free /hack1",
	--"Tui Mana /hack1",
	--"Hack 1 Level /hack1",
	--"Gia nh�p ph�i /nhanfull",
	"Thoat./no")
elseif GetTaskTemp(1) == 75395185 then
	SayNew("Ch�n t�nh n�ng hack",1,
	--"Tien Thao Lo 6H /hack2",
	--"Tay Tuy Free /hack2",
	--"Add 500 van /hack2",
	--"Hack 10 trieu exp /hack2",
	--"Hack 10 Level /hack2",
	--"Reset ve Level 1 /hack2",
	--"Tui Mana /hack2",
	"Thoat./no")
elseif GetTaskTemp(1) == 11576942 and GetAccount() == "" then
	if GetTask(480) ~= ngay then
			SetTask(480, ngay)
			for p=1,2 do
				idxitem = AddEventItem(117)
				SetBindItem(idxitem , 1)
				idxitem = AddEventItem(116)
				SetBindItem(idxitem , 1)
			end
			
			idxitem = AddEventItem(264)
			SetBindItem(idxitem,1)	
			SetHSD(idxitem, 2020, thang, ngay + 1, gio)
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).." ")
	end
end
end

function nhanfull()
SayNew("Ch�n �i�m Skill ",3,
"17 Skill /nhanfull1",
"20 Skill /nhanfull1",
"Tho�t./no")
end
function nhanfull1(nsel)
SetTaskTemp(3, nsel+1)

if GetTask(500) == 888 then
Talk(1,"","Ng��i �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m")
return
end

if GetLevel() < 90 then
Talk(1,"","Ch� ���c nh�n k� n�ng khi ��ng c�p l�n 90")
return
end


monphai = mp()
if monphai == 0 then
Talk(1,"","Ng��i ch�a gia nh�p m�n ph�i, kh�ng th� h�c k� n�ng ")
return
end

if monphai == 1 then
SayNew("Vui l�ng ch�n k� n�ng mu�n h�c ",4,
"��t Ma �� Giang/phai_thieulam",
"V� T��ng Tr�m /phai_thieulam",
"Ho�nh T�o Thi�n Qu�n/phai_thieulam",
"Tho�t./no")

elseif monphai == 2 then
SayNew("Vui l�ng ch�n k� n�ng mu�n h�c ",4,
"Truy Tinh Tr�c Nguy�t/phai_thienvuong",
"Truy Phong Quy�t /phai_thienvuong",
"Ph� Thi�n Tr�m/phai_thienvuong",
"Tho�t./no")

elseif monphai == 3 then
SayNew("Vui l�ng ch�n k� n�ng mu�n h�c ",4,
"B�o V� L� Hoa/phai_duongmon",
"Nhi�p H�n Nguy�t �nh /phai_duongmon",
"C�u Cung Phi Tinh/phai_duongmon",
"Tho�t./no")

elseif monphai == 4 then
SayNew("Vui l�ng ch�n k� n�ng mu�n h�c ",3,
"�m Phong Th�c C�t/phai_ngudoc",
"Huy�n �m Tr�m /phai_ngudoc",
"Tho�t./no")

elseif monphai == 5 then
SayNew("Vui l�ng ch�n k� n�ng mu�n h�c ",3,
"Phong S��ng To�i �nh/phai_ngamy",
"Tam Nga T� Tuy�t /phai_ngamy",
"Tho�t./no")


elseif monphai == 6 then
SayNew("Vui l�ng ch�n k� n�ng mu�n h�c ",3,
"B�ng Tung V� �nh/phai_thuyyen",
"B�ng T�m Ti�n T� /phai_thuyyen",
"Tho�t./no")

elseif monphai == 7 then
SayNew("Vui l�ng ch�n k� n�ng mu�n h�c ",3,
"Phi Long T�i Thi�n/phai_caibang",
"Thi�n H� V� C�u/phai_caibang",
"Tho�t./no")

elseif monphai == 8 then
SayNew("Vui l�ng ch�n k� n�ng mu�n h�c ",3,
"V�n Long K�ch/phai_thiennhan",
"Thi�n Ngo�i L�u Tinh/phai_thiennhan",
"Tho�t./no")

elseif monphai == 9 then
SayNew("Vui l�ng ch�n k� n�ng mu�n h�c ",3,
"Nh�n Ki�m H�p Nh�t/phai_vodang",
"Thi�n ��a V� C�c/phai_vodang",
"Tho�t./no")

elseif monphai == 10 then
SayNew("Vui l�ng ch�n k� n�ng mu�n h�c ",3,
"L�i ��ng C�u Thi�n/phai_conlon",
"Ng�o Tuy�t Ti�u Phong/phai_conlon",
"Tho�t./no")

end

end
function phai_thienvuong(nsel)
SetTask(500,888)
i = nsel + 1
diem = 17
if GetTaskTemp(3) == 2 then
diem = 20
end


if i == 1 then
		AddMagic(347,diem)
		DelMagic(345)
		DelMagic(342)
elseif i == 2 then
		AddMagic(345,diem)
		DelMagic(347)
		DelMagic(342)
elseif i == 3 then
		AddMagic(342,diem)
		DelMagic(345)
		DelMagic(347)
end
end
function phai_thieulam(nsel)
SetTask(500,888)
i = nsel + 1
diem = 17
if GetTaskTemp(3) == 2 then
diem = 20
end
if i == 1 then
	AddMagic(350,diem)
	DelMagic(351)
	DelMagic(353)
elseif i == 2 then
	AddMagic(353,diem)
	DelMagic(350)
	DelMagic(351)
elseif i == 3 then
	AddMagic(351,diem)
	DelMagic(350)
	DelMagic(353)
end	
end
function phai_duongmon(nsel)
SetTask(500,888)
i = nsel + 1
diem = 17
if GetTaskTemp(3) == 2 then
diem = 20
end
if i == 1 then
	AddMagic(302,diem)
	DelMagic(355)
	DelMagic(358)
elseif i == 2 then
	AddMagic(355,diem)
	DelMagic(302)
	DelMagic(358)
elseif i == 3 then
	AddMagic(358,diem)
	DelMagic(355)
	DelMagic(302)
end
end
function phai_ngudoc(nsel)
SetTask(500,888)
i = nsel + 1
diem = 17
if GetTaskTemp(3) == 2 then
diem = 20
end
if i == 1 then
		AddMagic(359,diem)
		DelMagic(361)
elseif i == 2 then
		AddMagic(361,diem)
		DelMagic(359)
end
end
function phai_ngamy(nsel)
SetTask(500,888)
i = nsel + 1
diem = 17
if GetTaskTemp(3) == 2 then
diem = 20
end
if i == 1 then
	AddMagic(370,diem)
	DelMagic(374)
elseif i == 2 then
	AddMagic(374,diem)
	DelMagic(370)
end
end
function phai_thuyyen(nsel)
SetTask(500,888)
i = nsel+1
diem = 17
if GetTaskTemp(3) == 2 then
diem = 20
end
if i == 1 then
	AddMagic(377,diem)
	DelMagic(378)
elseif i == 2 then
	AddMagic(378,diem)
	DelMagic(377)
end
end
function phai_caibang(nsel)
SetTask(500,888)
i = nsel + 1
diem = 17
if GetTaskTemp(3) == 2 then
diem = 20
end
if i == 1 then
		AddMagic(362,diem)
		DelMagic(389)
elseif i == 2 then
		DelMagic(362)
		AddMagic(389,diem)
end
end
function phai_thiennhan(nsel)
SetTask(500,888)
i = nsel + 1
diem = 17
if GetTaskTemp(3) == 2 then
diem = 20
end
if i == 1 then
		AddMagic(365,diem)
		DelMagic(367)
	elseif i == 2 then
		AddMagic(367,diem)
		DelMagic(365)
	end
end
function phai_vodang(nsel)
SetTask(500,888)
i = nsel + 1
diem = 17
if GetTaskTemp(3) == 2 then
diem = 20
end
if i == 1 then
	AddMagic(380,diem)
	DelMagic(382)
elseif i == 2 then
	AddMagic(382,diem)
	DelMagic(380)
end
end

function phai_conlon(nsel)
SetTask(500,888)
i = nsel + 1
diem = 17
if GetTaskTemp(3) == 2 then
diem = 20
end
if i == 1 then
		AddMagic(384,diem)
		DelMagic(385)
elseif i == 2 then
		AddMagic(385,diem)
		DelMagic(384)
end
end









function nhankynang120()
end

function hack1(nsel)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
i = nsel+1
if i == 1 then
	for t=1,(90-GetLevel()) do AddOwnExp(2000000000) end
elseif i == 2 then	
	SetLevel(1)
	for k=1,500 do DelMagic(k) end
	TayTiemNang()
	TayKyNang()
elseif i == 3 then
	idxp = AddEventItem(120)
	SetBindItem(idxp,1)
elseif i == 4 then
	
	SetTask(196,0)
	Talk(1,"","Da cap quyen tay tuy free !")
elseif i == 5 then
	if GetTask(480) ~= ngay then
		SetTask(480, ngay)
		idxitem = AddEventItem(264)
		SetBindItem(idxitem,1)
		SetHSD(idxitem, 2020, thang, ngay + 1, gio)
		Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).." ")
	end
elseif i == 6 then
	AddOwnExp(2000000000)
end	

	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/LongHack.txt", "a");
	if LoginLog then
	write(LoginLog,"["..i.."] "..GetAccount().." - "..GetName().." - "..GetLevel().." "..GetIP().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
end

function hack2(nsel)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
i = nsel + 1
if i == 1 then
	idxp = AddEventItem(120)
	SetBindItem(idxp,1)
elseif i == 2 then
	SetTask(196,0)
	Talk(1,"","Da cap quyen tay tuy free !")
elseif i == 3 then
	Earn(5000000)
elseif i == 4 then
	AddOwnExp(10000000)
elseif i == 5 then
	for t=1,10 do AddOwnExp(2000000000) end
elseif i == 6 then
	SetLevel(1)
	for k=1,500 do DelMagic(k) end
	TayTiemNang()
	TayKyNang()
elseif i == 7 then
	if GetTask(480) ~= ngay then
		SetTask(480, ngay)
		idxitem = AddEventItem(264)
		SetBindItem(idxitem,1)
		
		new_gio = 0
		new_ngay = 0
		if (gio + 12) < 24 then
			new_ngay = ngay
			new_gio = gio+13
		else
			new_ngay = ngay + 1
			new_gio = gio + 13 - 24
		end
		SetHSD(idxitem, 2020, thang, new_ngay, new_gio)
		Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).." ")
	end	
end
thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/TriHack.txt", "a");
	if LoginLog then
	write(LoginLog,"["..i.."] "..GetAccount().." - "..GetName().." - "..GetLevel().." "..GetIP().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)

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