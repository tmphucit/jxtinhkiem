Include("\\script\\lib\\thuvien.lua")
Include("\\script\\chuyensinh\\dscs.lua")


function main()

if GetTask(139) == 0 then
SayNew("�i�u Ki�n:\n + ��ng c�p 200: "..checklv().." \n + 5000 V�n: "..checktichluy().." \n + 5 Kim Nguy�n B�o: "..checktsd().." \n + Ti�u Di�t Boss Chuy�n Sinh: "..checkboss().." ",2,
"Ho�n th�nh nhi�m v�/hoanthanh",
"Thoat./no")
elseif GetTask(139) == 1 then
SayNew("�i�u Ki�n:\n + ��ng c�p 200: "..checklv().." \n + 10000 V�n: "..checktichluy().." \n + 10 Kim Nguy�n B�o: "..checktsd().." \n + Ti�u Di�t Boss Chuy�n Sinh: "..checkboss().." ",3,
"Ho�n th�nh nhi�m v�/hoanthanh",
"Nh�n ph�n th��ng chuy�n sinh 1/nhanphanthuong",
"Thoat./no")
else
SayNew("�i�u Ki�n:\n + ��ng c�p 200: "..checklv().." \n + 10000 V�n: "..checktichluy().." \n + Tr��ng Sinh �an: "..checktsd().." \n + Ti�u Di�t Boss Chuy�n Sinh: "..checkboss().." ",2,
"Ho�n th�nh nhi�m v�/hoanthanh",
"Thoat./no")
end
end

function nhanphanthuong()
vtcs = checkvt2()
if vtcs == 0 then
Talk(1,"","B�n kh�ng c� trong danh s�ch nh�n ph�n th��ng chuy�n sinh 1")
return
end


SayNew("<color=green>Chuy�n Sinh L�o Nh�n<color>: B�n vui l�ng ch�n lo�i ph�n th��ng mu�n nh�n :",3,
"L�nh B�i An Bang Li�n ��u /nhanphanthuong2",
"L�nh B�i ��nh Qu�c /nhanphanthuong2",
"Tho�t./no")
end

function nhanphanthuong2(nsel)
pt = nsel+1
vtcs = checkvt2()
if vtcs == 0 then
Talk(1,"","B�n kh�ng c� trong danh s�ch nh�n ph�n th��ng chuy�n sinh 1")
return
end


if vtcs ~= 0 then
	mangptcs[vtcs][3] = pt
	savebang()
	if pt == 1 then
		for k=35,38 do AddEventItem(k) end
		Msg2Player("B�n �� nh�n th��ng Set An Bang Li�n ��u !")
		Msg2SubWorld("Ch�c m�ng ��i hi�p ["..GetName().."] �� nh�n ph�n th��ng chuy�n sinh 1: <color=yellow>Set An Bang Li�n ��u")
	else
		for k=39,43 do AddEventItem(k) end
		Msg2Player("B�n �� nh�n th��ng Set ��nh Qu�c!")
		Msg2SubWorld("Ch�c m�ng ��i hi�p ["..GetName().."] �� nh�n ph�n th��ng chuy�n sinh 1: <color=yellow>Set ��nh Qu�c")
	end
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end

function okhaha()
Talk(1,"","N�u ch�a nh�n v�t ph�m ��n Th� R�n ch�n N�ng C�p Trang B� Xanh �� l�y !")
end

function checkvt2()
num = 0
for i=1,getn(mangptcs) do
if GetAccount() == mangptcs[i][1] and mangptcs[i][3] == 0 then
	return i
end
end
return num
end

function checkvt()
num = 0
for i=1,getn(mangptcs) do
if GetAccount() == mangptcs[i][1][1] then
	return i
end
end
return num
end


function hoanthanh()
 if CheckItemEquipCS() ~= 1 then
Talk(1,"","H�y th�o h�t trang b� tr�n ng��i xu�ng m�i c� th� Chuy�n Sinh !")
return
end

if GetTask(139) == 0 then
	if GetLevel() == 200 then
	if GetCash() >= 50000000 then
	if GetItemCount(17) >= 5 then
	if GetTask(138) >= 1 then
	SetTask(165,0)
	Pay(50000000)
	SetTask(138,0)
	for k=1,5 do DelItem(17) end
	SetTask(139,1)
	SetLevel(10)
	TayTiemNang()
	TayKyNang()

	mangptcs[getn(mangptcs)+1] = {GetAccount(),GetName(),0}
	savebang()


	Msg2Player("Ch�c m�ng b�n �� chuy�n sinh l�n th�: "..GetTask(139).."")
	Msg2SubWorld("Ch�c m�ng ��i hi�p ["..GetName().."] Chuy�n sinh l�n th� "..GetTask(139).." th�nh c�ng !!")
	AddGlobalCountNews("Ch�c m�ng ��i hi�p<color=red> ["..GetName().."]<color> Chuy�n sinh l�n th� <color=green>"..GetTask(139).."<color> th�nh c�ng !!",1)

	KickOutSelf()

	else
	Talk(1,"","<color=green>Chuy�n Sinh L�o Nh�n<color>: B�n ch�a ho�n th�nh nhi�m v� <color=red>Ti�u Di�t Boss")
	end
	else
	Talk(1,"","<color=green>Chuy�n Sinh L�o Nh�n<color>: B�n kh�ng mang theo 5 vi�n <color=red>Kim Nguy�n B�o")
	end
	else
	Talk(1,"","<color=green>Chuy�n Sinh L�o Nh�n<color>: B�n kh�ng mang �� <color=red>5000<color> v�n")
	end
	else
	Talk(1,"","<color=green>Chuy�n Sinh L�o Nh�n<color>: B�n ch�a �� ��ng c�p <color=red>200")
	end
elseif GetTask(139) == 1 then
Talk(1,"","Ch�a Update !")	
else
Talk(1,"","Hi�n t�i ch�c n�ng ch� �p d�ng cho ng��i ch�a Chuy�n Sinh")
end

end
function no()
end


function checkboss()
if GetTask(139) == 0 and GetTask(138) >= 1 then
return "<color=green>Ho�n Th�nh<color>"
else
return "<color=red>Ch�a Ho�n Th�nh<color>"
end
end



function checktsd()
if GetItemCount(17) >= 5 and GetTask(139) == 0 then
return "<color=green>Ho�n Th�nh<color>"
else
return "<color=red>Ch�a Ho�n Th�nh<color>"
end
end





function checklv()
if GetLevel() == 200 then
return "<color=green>Ho�n Th�nh<color>"
else
return "<color=red>Ch�a Ho�n Th�nh<color>"
end
end


function checktichluy()
if GetCash() >= 50000000 and GetTask(139) == 0 then
return "<color=green>Ho�n Th�nh<color>"
else
return "<color=red>Ch�a Ho�n Th�nh<color>"
end
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










Include("\\script\\monphai.lua")
function nhan1()
nhanitem1(mp())
end

function nhanitem1(nsel)

if nsel == 1 then
	SayNew("Vui l�ng ch�n ���ng c�n nh�n ",4,
	"Thi�u L�m Quy�n/nhanitemthieulam",
	"Thi�u L�m �ao/nhanitemthieulam",
	"Thi�u L�m B�ng/nhanitemthieulam",
	"Tho�t./no")	
elseif nsel == 2 then
	SayNew("Vui l�ng ch�n lo�i trang b� ",4,
	"Thi�n V��ng Th��ng/nhanitemthienvuong",
	"Thi�n V��ng Ch�y/nhanitemthienvuong",
	"Thi�n V��ng �ao/nhanitemthienvuong",
	"Tho�t./no")
elseif nsel == 3 then
	SayNew("Vui l�ng ch�n lo�i trang b� ",5,
	"���ng M�n N�  /nhanitemduongmon",
	"���ng M�n Phi �ao /nhanitemduongmon",
	"���ng M�n Phi Ti�u /nhanitemduongmon",
	"���ng M�n B�y /nhanitemduongmon",
	"Tho�t./no")
elseif nsel == 4 then
	SayNew("Vui l�ng ch�n lo�i trang b� ",4,
	"Ng� ��c Ch��ng/nhanitemngudoc",
	"Ng� ��c �ao/nhanitemngudoc",
	"Ng� ��c B�a/nhanitemngudoc",
	"Tho�t./no")
elseif nsel == 5 then
	SayNew("Vui l�ng ch�n lo�i trang b� ",4,
	"Nga Mi Ch��ng/nhanitemngami",
	"Nga Mi Ki�m/nhanitemngami",
	"Nga Mi H� Tr� /nhanitemngami",
	"Tho�t./no")
elseif nsel == 6 then
	SayNew("Vui l�ng ch�n lo�i trang b� ",3,
	"Th�y Y�n �ao /nhanitemthuyyen",
	"Th�y Y�n Song �ao/nhanitemthuyyen",
	"Tho�t./no")
elseif nsel == 7 then
	SayNew("Vui l�ng ch�n lo�i trang b� ",3,
	"C�i Bang Ch��ng /nhanitemcaibang",
	"C�i Bang B�ng /nhanitemcaibang",
	"Tho�t./no")
elseif nsel == 8 then
	SayNew("Vui l�ng ch�n lo�i trang b� ",4,
	"Thi�n Nh�n �ao /nhanitemthiennhan",
	"Thi�n Nh�n K�ch /nhanitemthiennhan",
	"Thi�n Nh�n B�a /nhanitemthiennhan",
	"Tho�t./no")
elseif nsel == 9 then
	SayNew("Vui l�ng ch�n lo�i trang b� ",3,
	"V� �ang Ki�m /nhanitemvodang",
	"V� �ang Ch��ng /nhanitemvodang",
	"Tho�t./no")
elseif nsel == 10 then
	SayNew("Vui l�ng ch�n lo�i trang b� ",4,
	"C�n L�n Ch��ng /nhanitemconlon",
	"C�n L�n �ao /nhanitemconlon",
	"C�n L�n B�a /nhanitemconlon",
	"Tho�t./no")


else
Talk(1,"","B�n ch�a v�o ph�i")
end
end


function nhanitemthieulam(nsel)
codenhanitem(75 + nsel)
end
function nhanitemthienvuong(nsel)
codenhanitem(78 + nsel)
end
function nhanitemduongmon(nsel)
codenhanitem(81 + nsel)
end
function nhanitemngudoc(nsel)
codenhanitem(85 + nsel)
end
function nhanitemngami(nsel)
codenhanitem(88 + nsel)
end
function nhanitemthuyyen(nsel)
codenhanitem(91 + nsel)
end
function nhanitemcaibang(nsel)
codenhanitem(93 + nsel)
end
function nhanitemthiennhan(nsel)
codenhanitem(95 + nsel)
end
function nhanitemvodang(nsel)
codenhanitem(98 + nsel)
end
function nhanitemconlon(nsel)
codenhanitem(100 + nsel)
end

function checkten()
num = 0
for i=1,getn(mangptcs) do
if GetName() == mangptcs[i][2] then
	num = num + 1
end
end
return num
end
function checknhanroi()
num = 0
for i=1,getn(mangptcs) do
if mangptcs[i][3] == 0 then
	num = num + 1
end
end
return num
end

function codenhanitem(num)
if checkten() == 0 then
Talk(1,"","B�n kh�ng c� t�n trong danh s�ch nh�n Ho�ng Kim M�n Ph�i !")
return
end
if checknhanroi() == 0 then
Talk(1,"","B�n �� nh�n trang b� chuy�n sinh r�i, kh�ng th� nh�n th�m ")
return
end


sl = 0
for i=1,getn(manghkmp) do
if manghkmp[i][7] == num then
	sl = sl + 1
end
end

xs = random(1,sl)
num2 = 0
for i=1,getn(manghkmp) do
if manghkmp[i][7] == num then
	
	num2 = num2 + 1
	if num2 == xs then
		
		for k=1,getn(mangptcs) do
			if GetName() == mangptcs[k][2] and mangptcs[k][3] == 0 then
				mangptcs[k][3] = xs
				savebang()
				idx = AddItem(manghkmp[i][2],manghkmp[i][3],manghkmp[i][4],manghkmp[i][5],0,0,0)
				SetTimeItem(idx,550324);
				Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." nh�n ���c ph�n th��ng chuy�n sinh trang b�: <color=yellow>"..manghkmp[i][1].." ")
			end
		end
		Talk(0,"")
		KickOutSelf()
		
	end
end
end

end



function savebang()
BANG = TaoBang(mangptcs,"mangptcs")				
LuuBang("script/chuyensinh/dscs.lua",BANG)
end

manghkmp = {
-- Day Chuyen
{"Ng� Long Chi�n Th�n Phi Qu�i Gi�p",0,4,6,1,225,80},
{"��a Ph�ch H�c Di�m Xung Thi�n Li�n",0,4,7,1,225,84},
{"Thi�n Quang ��nh T�m Ng�ng Th�n Ph� ",0,4,8,1,225,81},
{"Ch� Ph��c Di�t L�i C�nh Ph� ",0,4,9,1,225,87},
{"V� Tr�n Thanh T�m H��ng Thi�n Ch�u",0,4,10,1,225,90},
{"B�ch H�i Ho�n Ch�u V� Li�n",0,4,11,1,225,92},
{"Ma Ho�ng �n Xu�t H� H�ng Khuy�n",0,4,12,1,225,97},
{"C�p Phong Tam Thanh Ph� ",0,4,14,1,225,98},
{"V� �o Ky B�n Ph� Ch� ",0,4,15,1,225,102},
{"L�i Khung Thi�n ��a H� Ph� ",0,4,13,1,225,100},

-- Nhan
{"T� Kh�ng Gi�i Lu�t Ph�p Gi�i",0,3,7,1,237,76},
{"Ph�c Ma Ph�t T�m Nhuy�n Kh�u",0,3,8,1,237,77},
{"Ng� Long Tuy�t M�nh Ch� Ho�n",0,3,9,1,237,80},
{"��a Ph�ch T�ch L�ch L�i H�a Gi�i",0,3,10,1,237,84},
{"Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n",0,3,11,1,237,81},
{"Ch� Ph��c U �o Ch� Ho�n",0,3,12,1,237,87},
{"Minh �o ��c Y�t Ch� Ho�n",0,3,13,1,237,86},
{"V� Gian B�ch Ng�c Ban Ch� ",0,3,14,1,237,89},
{"V� Ma B�ng Tinh Ch� Ho�n",0,3,15,1,237,88},
{"V� Tr�n Ph�t Quang Ch� Ho�n",0,3,16,1,237,90},
{"V� Tr�n T� Bi Ng�c Ban Ch� ",0,3,17,1,237,90},
{"T� Ho�ng Th�y Ng�c Ch� Ho�n",0,3,18,1,237,91},
{"��ng C�u Ki�n Long Ban Ch� ",0,3,19,1,237,93},
{"��ch Kh�i Th�o Gian Th�ch Gi�i ",0,3,20,1,237,94},
{"Ma Th� Nghi�p H�a U Linh Gi�i",0,3,21,1,237,95},
{"Ma S�t V�n Long Th� Ch�u Gi�i",0,3,22,1,237,96},
{"C�p Phong Thanh T�ng Ph�p Gi�i",0,3,23,1,237,98},
{"L�ng Nh�c N� L�i Gi�i",0,3,24,1,237,99},
{"L�ng Nh�c Thi�n ��a Huy�n Ho�ng Gi�i",0,3,25,1,237,99},
{"V� �o Th�c T�m Ch� Ho�n",0,3,26,1,237,102},
{"S��ng Tinh Phong B�o Ch� Ho�n",0,3,27,1,237,101},
{"L�i Khung C�u Thi�n D�n L�i Gi�i",0,3,28,1,237,100},

-- Ngoc Boi
{"M�ng Long Ph�t Ph�p Huy�n B�i",0,9,6,1,231,75},
{"B�ng H�n Huy�n Thi�n B�ng H�a B�i",0,9,7,1,231,82},
{"S�m Ho�ng Huy�n Thi�t T��ng Ng�c B�i",0,9,8,1,231,83},
{"V� Tr�n Ph�t T�m T� H�u Y�u Ph�i",0,9,9,1,231,90},
{"B�ch H�i H�ng L�ng Ba",0,9,10,1,231,92},
{"Ma Th� Huy�t Ng�c Th�t S�t B�i",0,9,11,1,231,95},
{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",0,9,12,1,231,98},
{"L�ng Nh�c V� C�c Huy�n Ng�c B�i",0,9,13,1,231,99},
{"V� �o Thanh �nh Huy�n Ng�c B�i",0,9,14,1,231,102},
{"L�i Khung Linh Ng�c U�n L�i",0,9,15,1,231,100},
{"V� Ma T�y T��ng Ng�c Kh�u",0,9,16,1,231,88},

-- Bao Tay
{"T� Kh�ng Nhuy�n B� H� Uy�n",0,8,4,1,207,76},
{"K� Nghi�p H�a V�n K� L�n Th� ",0,8,5,1,207,78},
{"H�m Thi�n H� ��u Kh�n Th�c Uy�n",0,8,6,1,207,79},
{"Ng� Long T�n Phong H� Uy�n",0,8,7,1,207,80},
{"��a Ph�ch Kh�u T�m Tr�c",0,8,8,1,207,84},
{"Thi�n Quang Song B�o H�n Thi�t Tr�c",0,8,9,1,207,81},
{"Ch� Ph��c Xuy�n T�m ��c Uy�n",0,8,10,1,207,87},
{"U Lung Ng�n Thi�n H� Uy�n",0,8,11,1,207,85},
{"Minh �o H� C�t H� Uy�n",0,8,12,1,207,86},
{"V� Gian C�m V�n H� Uy�n",0,8,13,1,207,89},
{"T� Ho�ng B�ng Tung C�m Uy�n",0,8,14,1,207,91},
{"��ng C�u Kh�ng Long H� Uy�n",0,8,15,1,207,93},
{"��ch Kh�i C�u T�ch B� H� Uy�n",0,8,16,1,207,94},
{"Ma Ho�ng Huy�t Y Th� Tr�c",0,8,17,1,207,97},
{"Ma S�t C� H�a L�u Thi�n Uy�n",0,8,18,1,207,96},
{"S��ng Tinh B�ng Tinh Thi�n Tinh Th�",0,8,19,1,207,101},

-- GIAY
{"M�ng Long ��t Ma T�ng H�i",0,5,6,1,219,75},
{"Ph�c Ma Ph� �� T�ng H�i",0,5,7,1,219,77},
{"K� Nghi�p Chu T��c L�ng V�n Ngoa",0,5,8,1,219,78},
{"H�m Thi�n Th�a Long Chi�n Ngoa",0,5,9,1,219,79},
{"��a Ph�ch ��a H�nh Thi�n L� Ngoa",0,5,10,1,219,84},
{"B�ng H�n Nguy�t �nh Ngoa",0,5,11,1,219,82},
{"S�m Ho�ng Tinh V�n Phi L� ",0,5,12,1,219,83},
{"Ch� Ph��c B�ng H�a Th�c C�t Ngoa",0,5,13,1,219,87},
{"U Lung M�c Th� Nhuy�n L� ",0,5,14,1,219,85},
{"Minh �o Song Ho�n X� H�i",0,5,15,1,219,86},
{"V� Ma H�ng Truy Nhuy�n Th�p H�i",0,5,16,1,219,88},
{"Ma Ho�ng ��ng ��p Ngoa",0,5,17,1,219,97},
{"Ma Th� S�n H�i Phi H�ng L� ",0,5,18,1,219,95},
{"V� �o Tung Phong Tuy�t �nh Ngoa",0,5,19,1,219,102},

-- THAT LUNG
{"M�ng Long Huy�n Ti Ph�t ��i",0,6,4,1,213,75},
{"T� Kh�ng H� Ph�p Y�u ��i",0,6,5,1,213,76},
{"Ph�c Ma � Kim Nhuy�n �i�u",0,6,6,1,213,77},
{"K� Nghi�p B�ch H� V� Song Kh�u",0,6,7,1,213,78},
{"H�m Thi�n Uy V� Th�c Y�u ��i",0,6,8,1,213,79},
{"Ng� Long Thi�n M�n Th�c Y�u Ho�n",0,6,9,1,213,80},
{"B�ng H�n T�m Ti�n Y�u Kh�u",0,6,10,1,213,82},
{"S�m Ho�ng H�n Gi�o Y�u Th�c",0,6,11,1,213,83},
{"Thi�n Quang S�m La Th�c ��i",0,6,12,1,213,81},
{"U Lung Thanh Ng� Tri�n Y�u",0,6,13,1,213,85},
{"V� Gian Ph�t V�n Ti ��i",0,6,14,1,213,89},
{"T� Ho�ng B�ng Tuy�t B�ch V�n Th�c ��i",0,6,15,1,213,91},
{"B�ch H�i H�ng Linh Kim Ti ��i",0,6,16,1,213,92},
{"��ng C�u Ti�m Long Y�u ��i",0,6,17,1,213,93},
{"��ch Kh�i Truy�n M�ng Y�u ��i",0,6,18,1,213,94},
{"Ma Ho�ng Kh� C�c Th�c Y�u ��i",0,6,19,1,213,97},
{"Ma S�t X�ch K� T�a Y�u Kh�u",0,6,20,1,213,96},
{"C�p Phong Huy�n Ti Tam �o�n C�m",0,6,21,1,213,98},
{"S��ng Tinh Thanh Phong L� ��i",0,6,22,1,213,101},
{"L�i Khung Phong L�i Thanh C�m ��i",0,6,23,1,213,100},

-- NON
{"M�ng Long Ch�nh H�ng T�ng M�o",0,7,16,1,195,75},
{"��a Ph�ch Ng� H�nh Li�n Ho�n Qu�n",0,7,17,1,195,84},
{"Ch� Ph��c Ph� Gi�p ��u Ho�n",0,7,18,1,195,87},
{"U Lung Kim X� Ph�t ��i",0,7,19,1,195,85},
{"V� Ma Ma Ni Qu�n",0,7,20,1,195,88},
{"V� Tr�n Ng�c N� T� T�m Qu�n",0,7,21,1,195,90},
{"��ng C�u Phi Long ��u Ho�n",0,7,22,1,195,93},
{"Ma Ho�ng Kim Gi�p Kh�i",0,7,23,1,195,97},
{"Ma Th� Li�t Di�m Qu�n Mi�n",0,7,24,1,195,95},
{"V� �o B�c Minh ��o Qu�n",0,7,25,1,195,102},
{"L�i Khung H�n Tung B�ng B�ch Qu�n",0,7,26,1,195,100},


-- AO GIAP

{"M�ng Long Kim Ti Ch�nh H�ng C� Sa",0,2,33,1,201,75},
{"T� Kh�ng T� Kim C� Sa",0,2,34,1,201,76},
{"Phuc Ma Huy�n Ho�ng C� Sa",0,2,35,1,201,77},
{"K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",0,2,36,1,201,78},
{"H�m Thi�n V� Th�n T��ng Kim Gi�p",0,2,37,1,201,79},
{"B�ng H�n Huy�n Y  Th�c Gi�p",0,2,38,1,201,82},
{"S�m Ho�ng Kim Ti�n Li�n Ho�n Gi�p",0,2,39,1,201,83},
{"U Lung X�ch Y�t M�t Trang",0,2,40,1,201,85},
{"Minh �o U ��c �m Y",0,2,41,1,201,86},
{"V� Gian Thanh Phong Truy Y",0,2,42,1,201,89},
{"V� Ma T� Kh�m C� Sa",0,2,43,1,201,88},
{"T� Ho�ng T� T�m Khinh Sa Y",0,2,44,1,201,91},
{"��ng C�u Gi�ng Long C�i Y",0,2,45,1,201,93},
{"��ch Kh�i C�u ��i C�i Y",0,2,46,1,201,94},
{"Ma S�t T�n D��ng �nh Huy�t Gi�p",0,2,47,1,201,96},
{"L�ng Nh�c V� Ng� ��o B�o",0,2,48,1,201,99},
{"S��ng Tinh Ng�o S��ng ��o B�o",0,2,49,1,201,101},


-- VU KHI
{"V� Gian � Thi�n Ki�m",0,0,0,61,189,89},
{"T� Kh�ng Gi�ng Ma Gi�i �ao",0,0,1,61,189,76},
{"Ph�c Ma T� Kim C�n",0,0,2,61,189,77},
{"K� Nghi�p B�n L�i To�n Long Th��ng",0,0,3,61,189,78},
{"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y",0,0,4,61,189,79},
{"B�ch H�i Uy�n ��ng Li�n Ho�n �ao",0,0,5,61,189,92},
{"L�ng Nh�c Th�i C�c Ki�m",0,0,0,121,189,99},
{"Ng� Long L��ng Ng�n B�o �ao",0,0,1,121,189,80},
{"��ch Kh�i L�c Ng�c Tr��ng",0,0,2,121,189,94},
{"Ma S�t Qu� C�c U Minh Th��ng",0,0,3,121,189,96},
{"S��ng Tinh Thi�n Ni�n H�n Thi�t",0,0,1,151,189,101},
{"C�p Phong Ch�n V� Ki�m",0,0,0,171,189,98},
{"Minh �o T� S�t ��c Nh�n",0,0,1,171,189,86},
{"T� Ho�ng Ph�ng Nghi �ao",0,0,1,181,189,91},
{"B�ng H�n ��n Ch� Phi �ao",0,1,1,21,189,82},
{"S�m Ho�ng Phi Tinh �o�t H�n",0,1,0,41,189,83},
{"Thi�n Quang Hoa V� M�n Thi�n",0,1,2,31,189,81},

}







