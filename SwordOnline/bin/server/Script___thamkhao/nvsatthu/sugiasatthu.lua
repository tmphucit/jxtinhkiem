Include("\\script\\pass\\boss.lua")


function main()
if (GetTask(27) == 0) then
SayNew("<color=green>S� Gi� S�t Th�: <color> Ng��i ��n ��y mu�n l�m g� ch�ng??",3,
"Nh�n nhi�m v� Boss S�t th�/nhannv1",
"Gh�p l�nh b�i, s�t th� gi�n./ghks",
"Tho�t/no")
else
SayNew("<color=green>S� Gi� S�t Th�: <color> Ng��i ��n ��y mu�n l�m g� ch�ng?",6,
"Tr� nhi�m v� Boss S�t Th�/tnvst",
"Di chuy�n ��n Boss S�t Th� /dichuyen",
"Xem nhi�m v� �ang l�m /xemnv",
"Hu� nhi�m v�/bnvst",
"Gh�p l�nh b�i, s�t th� gi�n/ghks",
"Tho�t/no")
end
end

function tnvst()
if GetTask(27) == 99 then
	SetTask(27,0)
	AddRepute(2)
	Msg2Player("B�n �� ho�n th�nh nhi�m v� v� nh�n ���c 2 �i�m danh v�ng")
	
	
	
	if GetLevel() < 90 then
		exp = GetLevelExp()
		AddOwnExp(exp)
		Msg2Player("B�n nh�n ���c "..exp.." kinh nghi�m")
	else
		AddOwnExp(2000000)
		Msg2Player("B�n nh�n ���c 2.000.000 kinh nghi�m")
	end
else
Talk(1,"","<color=green>S� Gi� S�t Th� <color>: H�y ho�n th�nh nhi�m v� r�i quay l�i g�p ta. ")
end
end

function bnvst()
SayNew("B�n c� ch�c ch�n mu�n h�y nhi�m v� kh�ng? ",2,
"Ta mu�n h�y nhi�m v�/xacnhanhuynv",
"Tho�t./no")
end
function xacnhanhuynv()
nl = GetCash()
if GetCash() >= 20000 then
	Pay(20000)
	if GetCash() == (nl-20000) then
		SetTask(27,0)
		Talk(1,"","<color=green>S� Gi� S�t Th� <color>: B�n �� h�y nhi�m v� th�nh c�ng !")
	else
	Talk(1,"","hack ha em")
	end
else
Talk(1,"","<color=green>S� Gi� S�t Th� <color>: Ng��i kh�ng mang �� <color=yellow>20000<color> l��ng")
end
end
function manglevel()
if GetLevel() >= 20 and GetLevel() < 30 then
	return random(1,6)
elseif GetLevel() >= 30 and GetLevel() < 40 then
	return random(7,12)
elseif GetLevel() >= 40 and GetLevel() < 50 then
	return random(13,18)
elseif GetLevel() >= 50 and GetLevel() < 60 then
	return random(19,24)
elseif GetLevel() >= 60 and GetLevel() < 70 then
	return random(25,33)
elseif GetLevel() >= 70 and GetLevel() < 80 then
	return random(34,42)
elseif GetLevel() >= 80 and GetLevel() < 90 then
	return random(43,51)
elseif GetLevel() >= 90 then
	return random(52,getn(ToaDoSatThu))
end
return 0
end

function phi()
if GetLevel() < 30 then
return 1000
elseif GetLevel() >= 30 and GetLevel() < 40 then
return 2000
elseif GetLevel() >= 40 and GetLevel() < 50 then
return 3000
elseif GetLevel() >= 50 and GetLevel() < 60 then
return 4000
elseif GetLevel() >= 60 and GetLevel() < 70 then
return 5000
elseif GetLevel() >= 70 and GetLevel() < 80 then
return 6500
elseif GetLevel() >= 80 and GetLevel() < 90 then
return 8000
elseif GetLevel() >= 90 then
return 10000
end
end
function nhannv1()
SayNew("<color=green>S� Gi� S�t Th�: <color> �� nh�n nhi�m v� <color=fire>Boss S�t th� <color> c�n c� <color=fire>"..phi().." <color> l��ng",2,
"Nh�n nhi�m v�/nhannv",
"Tho�t/no")
end;

function nhannv()
ngay = tonumber(date("%d"))
if GetLevel() < 20 then
Talk(1,"","��ng c�p d��i 20, kh�ng th� nh�n nhi�m v� ")
return
end
if GetCash() < phi() then
Talk(1,"","Ng��i kh�ng mang �� "..phi().." l��ng, kh�ng th� nh�n nhi�m v�")
return
end

if GetTask(136) == ngay then
	if GetTask(137) < 8 then
	
		SetTask(137,GetTask(137)+1)
		SetTask(27,manglevel())
		Msg2Player("Nhi�m v� th�: "..GetTask(137).."/8")
		Pay(phi())
		xemnv()
	else
		Talk(1,"","<color=green>S� Gi� S�t Th� <color>: H�m nay b�n �� ti�u di�t �� <color=red>8<color> Boss S�t Th�")
	end
else

	SetTask(136,ngay)
	SetTask(137,0)
	SetTask(82,0)
	SetTask(9,0)
	SetTask(2,0)
	SetTask(3,0)
	SetTask(908, 0) -- Reset Task Su Kien
	SetTask(945, 0) -- Reset Task Su Kien
	
	nhannv()
end

end

function dichuyen()
SayNew("<color=green>Nhi�p Th� Tr�n<color>: Ta s� gi�p ng��i ��n v� tr� <color=green>Boss S�t Th� <color>c�n ti�u di�t. Ng��i c� ��ng � tr� cho ta <color=yellow>1 v�n l��ng <color>�� di chuy�n kh�ng?",2, 
"��a ta ��n v� tr� Boss S�t Th� /dichuyen1",
"Th�i, �� ta t� �i ��n �� /no")
end
function dichuyen1()

if GetTask(27) == 0 or GetTask(27) > getn(ToaDoSatThu) then
Msg2Player("Kh�ng th� s� d�ng ch�c n�ng n�y !")
return
end
if GetCash() < 10000 then
Talk(1,"","Ng��i kh�ng mang �� 1 v�n l��ng, ta kh�ng th� gi�p nh� ng��i !")
return
end

Pay(10000)
NewWorld(ToaDoSatThu[GetTask(27)][1],ToaDoSatThu[GetTask(27)][2],ToaDoSatThu[GetTask(27)][3])
SetFightState(1)
Msg2Player("�� di chuy�n ��n v� tr� Boss S�t Th� ")
Msg2Player("Debug: Id map: "..ToaDoSatThu[GetTask(27)][1].." "..ToaDoSatThu[GetTask(27)][2].." "..ToaDoSatThu[GetTask(27)][3].."")
end
function xemnv()
if GetTask(27) == 99 then
Talk(1,"","B�n �� ho�n th�nh nhi�m v� !")
else
Talk(1,"","Nhi�m v� ti�u di�t: <color=red>"..ToaDoSatThu[GetTask(27)][5].."<color>  � <color=yellow>"..CheckDiaDiem(GetTask(27)).."<color> "..floor(ToaDoSatThu[GetTask(27)][2]/8).."/"..floor(ToaDoSatThu[GetTask(27)][3]/16).."")
end
end
function nhannv2()
NewWorld(ToaDoSatThu[GetTask(27)][1],ToaDoSatThu[GetTask(27)][2],ToaDoSatThu[GetTask(27)][3])
SetFightState(1)
Msg2Player("H�y ti�u di�t: "..ToaDoSatThu[GetTask(27)][5]..". H�n ta �ang � <color=yellow>"..CheckDiaDiem(GetTask(27)).." "..floor(ToaDoSatThu[GetTask(27)][2]/8).."/"..floor(ToaDoSatThu[GetTask(27)][3]/16).."")
end

function tinhngay()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
tinhngay1 = 0
for k=1,getn(mang) do
	if thang > mang[k][1] then
	tinhngay1 = tinhngay1 + mang[k][2]
	end
end
tinhngay1 = tinhngay1 + ngay
return tinhngay1
end

mang = {
{1,31},
{2,28},
{3,31},
{4,30},
{5,31},
{6,30},
{7,31},
{8,31},
{9,30},
{10,31},
{11,30},
{12,31},
}

function ghks()
SayNew("<color=green>S� Gi� S�t Th�: <color> �� gh�p <color=fire>L�nh B�i V��t �i<color> c�n c� <color=fire>5 S�t Th� Gi�n v� 5000 l��ng",3,
"Gh�p S�t Th� Gi�n/glbst",
"Gh�p L�nh B�i V��t �i/glbva",
--"Gh�p Ho�ng Kim S�t (Ti�u)/ghkst",
"Tho�t/no")
end;

function ghkstxx()
Talk(1,"","Ch�c n�ng s� c�p nh�t v�o 24h00 ng�y 14/01/2017")
end
function ghksd1()
Talk(1,"","<color=green>Nhi�p Th� Tr�n <color>: Ch�c n�ng s� m� l�i khi c� Trang B� Ho�ng Kim")

end
function glbva()
nl = GetCash()
sl1 = GetItemCount(151)
sl2 = GetItemCount(152)
sl3 = GetItemCount(153)
sl4 = GetItemCount(154)
sl5 = GetItemCount(155)
if (sl1 >= 1) and (sl2 >= 1) and (sl3 >= 1) and (sl4 >= 1) and (sl5 >= 1) and (nl >= 5000) then
Pay(5000)
DelItem(151)
DelItem(152)
DelItem(153)
DelItem(154)
DelItem(155)
if (GetItemCount(151) == (sl1-1)) and (GetItemCount(152) == (sl2-1)) and (GetItemCount(153) == (sl3-1)) and (GetItemCount(154) == (sl4-1)) and (GetItemCount(155) == (sl5-1)) and (GetCash() == (nl-5000)) then
AddEventItem(156)
Msg2Player("B�n nh�n ���c 1 L�nh B�i Li�n Ho�n Ai");
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"no","Ng��i kh�ng �� <color=red>5 chi�c S�t th� gi�n ng� h�nh v� 5000 l��ng <color> ,kh�ng th� gh�p")
end
end;

function glbst()
nl = GetCash()
sl1 = GetItemCount(130)
sl2 = GetItemCount(131)
sl3 = GetItemCount(132)
sl4 = GetItemCount(133)
sl5 = GetItemCount(134)
if (sl1 >= 1) and (sl2 >= 1) and (sl3 >= 1) and (sl4 >= 1) and (sl5 >= 1) and (nl >= 2000) then
Pay(2000)
DelItem(130)
DelItem(131)
DelItem(132)
DelItem(133)
DelItem(134)
if (GetItemCount(130) == (sl1-1)) and (GetItemCount(131) == (sl2-1)) and (GetItemCount(132) == (sl3-1)) and (GetItemCount(133) == (sl4-1)) and (GetItemCount(134) == (sl5-1)) and (GetCash() == (nl-2000)) then
AddEventItem(random(151,155))
Msg2Player("B�n nh�n ���c 1 S�t Th� Gi�n");
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"no","Ng��i kh�ng �� <color=red>5 chi�c S�t th� l�nh 5 ng� h�nh v� 2000 l��ng <color> ,kh�ng th� gh�p")
end
end;

function ghkst()
nl = GetCash()
sl1 = GetItemCount(156)
if (sl1 >= 5) and (nl >= 100000) then
Pay(100000)
for k=1,5 do
DelItem(156)
end
if (GetItemCount(156) == (sl1-5) and GetCash() == (nl-100000)) then
AddEventItem(128)
Msg2Player("B�n nh�m ���c 1 Ho�ng kim s�t (ti�u)");
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"no","Ng��i kh�ng �� <color=red>5 L�nh B�i V��t �i + 10 v�n l��ng <color> ,kh�ng th� gh�p")
end

end;

function ghksd()
nl = GetCash()
sl = GetItemCount(151)
if (sl >= 20) and (nl >= 500000) then
Pay(50000)
for i=1,20 do
DelItem(151)
end
if (GetItemCount(151) == (sl-20)) and (GetCash() == (nl-500000)) then
AddEventItem(129)
Msg2Player("B�n nh�n ���c 1 Ho�ng kim s�t (��i)");
Talk(0,"")
else
Msg2Player("Hack a cung yeu !");
end
else
Talk(1,"no","Ng��i kh�ng l�� <color=red>20 S�t th� gi�n va 50 v�n l��ng <color> , kh�ng th� gh�p")
end
end;


function no()

end;


Include("\\script\\lib\\thuvien.lua")
Include("\\script\\Global\\sourcejx49.lua")

function OnDeath()
Talk(1,"","�� ch�t !")
end

function thamgiavaboss()
SayNew("<color=green>Nhi�p Th� tr�n<color> �� tham gia V��t �i Boss ng��i c�n mang theo L�nh B�i V��t �i",4,
"Ta mu�n tham gia/thamgiava",
"Nguy�n t�c V��t �i Boss/quytacva",
"Nh�n ph�n th��ng V��t �i Boss/nhanptva",
"Tho�t./no")
end

TASKVA = 115

function thamgiava1()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

SetTask(TASKVA,ngay * 100000 + gio * 1000 + phut)


NewWorld(112, 1605, 3232)
SetFightState(1)

end

function kiemtra()

ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
tinhtime = ngay* 100000 + gio * 1000 + phut

idx = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == 112 then
		if (tinhtime - GetTask(TASKVA) >= 5) then
			NewWorld(53,200*8,200*16)
			Msg2SubWorld("B�n �� b� kick kh�i V��t �i v� qu� th�i gian quy ��nh 5 ph�t / �i!")
		end
	end
end
PlayerIndex = idx
end
function thamgiava()
Talk(1,"","�ang update !")
end
function quytacva()
Talk(1,"","�ang update !")
end
function nhanptva()
Talk(1,"","�ang update !")
end
