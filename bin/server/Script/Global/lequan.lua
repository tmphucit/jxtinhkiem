Include("\\script\\lib\\thuvien.lua")
Include("\\script\\admin\\point.lua")
Include("\\script\\admin\\trangbihkmp.lua")
Include("\\script\\monphai.lua") 

 
function main()
Say("<color=green>L� Quan <color>:Ch�o m�ng b�n �� ��n th� nghi�m c�ng <color=yellow>V� L�m C�ng Th�nh Chi�n <color> s� ki�n th� nghi�m s� ���c k�t th�c v�o 24 gi� ng�y ???? ." ,6,
"Nh�n H� tr� Test/hotro",  
"Nh�n V�t ph�m �p HKMP/vphkmp",
"Nh�n trang b� xanh/nhantbxanh1",
"Nh�n Trang b� HKMP/hoangkim",
"Trang k�/trangke",
"K�t th�c ��i tho�i/no")
end

function trangke()
Say("<color=green>L� Quan <color>:Ch�o m�ng b�n �� ��n th� nghi�m c�ng <color=yellow>V� L�m C�ng Th�nh Chi�n <color> s� ki�n th� nghi�m s� ���c k�t th�c v�o 24 gi� ng�y ???? ." ,5,
"��i m�u luy�n c�ng/doimau",
"Nh�n to�n b� k� n�ng/skillxxx",
"Nh�n h� tr� l�p bang/bangs",
"Nh�n trang b� ho�n kim v� ng�a/trangbihkcui",
"K�t th�c ��i tho�i/no")
end


function vphkmp()
	for i = 1, 12 do
	AddEventItem(254)
	AddEventItem(255)
	end

end



function tienvan()
Earn(100000000)  
end

function diempk()
SetPK(0)
Msg2Player("B�n �� gi�m ���c to�n b� PK . �i�m PK hi�n t�i c�a b�n l� : <color=yellow>"..GetPK().." !");   
end

function trangbihkcui()
SetTask(101,10000)
SetTask(99,10000) 
AddItem(0,8,3,1,0,0,0)
AddItem(0,5,5,1,0,0,0)
AddItem(0,6,3,1,0,0,0)
AddItem(0,2,30,1,0,0,0)
AddItem(0,7,15,1,0,0,0)
AddItem(0,10,7,3,0,0,0)
AddItem(0,4,3,1,0,0,0)
AddItem(0,3,3,1,0,0,0)
AddItem(0,3,4,1,0,0,0)
AddItem(0,9,3,1,0,0,0)
end

function ttvthbt()
AddEventItem(28)
AddEventItem(29)
AddEventItem(30)
AddEventItem(31)
AddEventItem(31)
AddEventItem(31)
AddEventItem(31)
AddEventItem(31)
AddEventItem(31)
end


function bangs()
AddEventItem(164)
AddRepute(2000)
end

function dangkydoiten()
if ten ~= GetName() then
taikhoan = ""
nhanvat = ""
ten = GetName()
end
Say("<color=green>L� Quan <color> T�i kho�n m�i: <color=yellow>"..taikhoan.."<color>, Nh�n v�t m�i: <color=yellow>"..nhanvat.." ",5,
"�i�n t�i kho�n m�i/dientk",
"�i�n t�n nh�n v�t m�i/dientennv",
"X�c nh�n ��ng k� ��i t�n nh�n v�t /xacnhandk",
"H��ng d�n ��i t�n �� tr�nh sai l�m /hddoiten",
"K�t th�c ��i tho�i/no")
end

function hddoiten()
Talk(2,"","B��c 1: B�n h�y t�o 1 t�i kho�n m�i, s� �i�n tho�i ��ng k� tr�ng v�i t�i kho�n hi�n t�i. Sau �� t�o 1 nh�n v�t m�i �� ��m b�o kh�ng b� tr�ng","B��c 2: B�n �i�n th�ng tin t�i kho�n, t�n nh�n v�t v�a t�o v�o , c�n 200 v�ng �� x�c nh�n")
end
function dientk()
OpenStringBox(1,"Nh�p t�i kho�n","xnnhaptk")
end

function xnnhaptk(name)
taikhoan = name
Talk(1,"","T�i kho�n m�i �� �i�n: <color=yellow>"..taikhoan.."")
end

function dientennv()
OpenStringBox(1,"T�n Nh�n v�t","xnnhapnv")
end
function xnnhapnv(name2)
nhanvat = name2
Talk(1,"","T�n nh�n v�t m�i �� �i�n: <color=yellow>"..nhanvat.."")
end

function xacnhandk()
Say("B�n c� ch�c ch�n mu�n ��i t�n nh�n v�t th�nh <color=yellow>"..nhanvat.."<color> thu�c t�i kho�n <color=yellow>"..taikhoan.."<color> kh�ng ?",2,
"Ta ch�c ch�n/xndk",
"Ta xin nh�p l�i th�ng tin/no")
end

function xndk()
if taikhoan == "" or nhanvat == "" then
Talk(1,"","T�i kho�n ho�c t�n nh�n v�t kh�ng ���c �� tr�ng !")
return
end
if GetTask(99) < 200 then
Talk(1,"","B�n kh�ng �� 200 v�ng, kh�ng th� th�c hi�n d�ng k� !")
return
end
vang = GetTask(99)
vang1 = GetTask(101)
if GetTask(99) >= 200 and GetTask(101) >= 200 then
SetTask(99,GetTask(99) - 200)
SetTask(101,GetTask(101) - 200)
if GetTask(99) == vang-200 and GetTask(101) == vang1-200 then
inlogini("["..GetAccount().."] - ["..GetName().."] doi thanh ["..taikhoan.."] - ["..nhanvat.."] - "..GetLevel().." - "..GetFaction().." ")
Talk(1,"","B�n �� ��ng k� ��i t�n nh�n v�t th�nh c�ng, ch�ng t�i s� ki�m tra v� gi�i quy�t theo th� t� ��ng k� ")
Msg2Player("B�n �� ��ng k� ��i t�n nh�n v�t th�nh c�ng ")
Msg2Player("T�i kho�n c�: ["..GetAccount().."] --> T�i kho�n m�i: <color=yellow>["..taikhoan.."] ")
Msg2Player("T�n nh�n v�t c�: ["..GetName().."] --> T�n nh�n v�t m�i: <color=yellow>["..nhanvat.."] ")
Msg2Player("Khi t�i kho�n c� b� kh�a, b�n vui l�ng ��ng nh�p b�ng t�i kho�n m�i, kh�ng th� s� d�ng n�a !")
Msg2SubWorld("<color=pink>��ng k� ��i t�n th�nh c�ng: ["..GetName().."]  - ��ng c�p: "..GetLevel().." - M�n Ph�i: "..GetFaction().." ")
else
inlogini("Error: "..GetAccount().." - "..GetName().." reset "..GetTask(99).." vang")
SetTask(99,0)
SetTask(101,0)
Talk(1,"","Check hack KNB: Ban lien he GM de duoc giai quyet ")
end
else
Talk(1,"","B�n kh�ng �� 200 v�ng, kh�ng th� th�c hi�n d�ng k� !")
end
end

function inlogini(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/logDangKyDoiTen.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function skillxxx()
nhanpt2()
nhankynang12()
end
function nhanpt2()
if GetFaction() == "" then
Talk(1,"","B�n ch�a gia nh�p ph�i, kh�ng th� nh�n ph�n th��ng")
return
end

if GetLevel() < 80 then
Talk(1,"","B�n kh�ng �� ��ng c�p 80, kh�ng th� nh�n ph�n th��ng !")
return
end


		if GetLevel() >= 80 then
			if mp() == 1 then
				AddMagic(350,20)
				AddMagic(351,20)
				AddMagic(353,20)
			elseif mp() == 2 then
				AddMagic(342,20)
				AddMagic(347,20)
				AddMagic(345,20)
			elseif mp() == 3 then
				AddMagic(355,20)
				AddMagic(358,20)
				AddMagic(302,20)
				AddMagic(399,0)
			elseif mp() == 4 then
				AddMagic(359,20)
				AddMagic(361,20)
				AddMagic(327)
			elseif mp() == 5 then
				AddMagic(374,20)
				AddMagic(370,20)
				AddMagic(291)
			elseif mp() == 6 then
				AddMagic(377,20)
				AddMagic(378,20)
			elseif mp() == 7 then
				AddMagic(362,20)
				AddMagic(389,20)
			elseif mp() == 8 then
				AddMagic(365,20)
				AddMagic(367,20)
				AddMagic(328)
			elseif mp() == 9 then
				AddMagic(380,20)
				AddMagic(382,20)
			elseif mp() == 10 then
				AddMagic(385,20)
				AddMagic(384,20)
				AddMagic(329)
			else
				Talk(1,"","Ban chua gia nhap phai")
			end
			Msg2Player("B�n nh�n ���c Full K� N�ng 90 c�a ph�i !")
		else
			Talk(1,"","B�n kh�ng �� ��ng c�p 90 !")
		end
			Talk(0,"")
end

function nhankynang12()
if GetLevel() >= 120 then
	if mp() == 1 then
		AddMagic(412,20)
		elseif mp() == 2 then
		AddMagic(414,20)
		elseif mp() == 3 then
		AddMagic(416,20)
		elseif mp() == 4 then
		AddMagic(418,20)
		elseif mp() == 5 then
		AddMagic(420,20)
		elseif mp() == 6 then
		AddMagic(422,20)
		elseif mp() == 7 then
		AddMagic(424,20)
		elseif mp() == 8 then
		AddMagic(426,20)
		elseif mp() == 9 then
		AddMagic(428,20)
		elseif mp() == 10 then
		AddMagic(430,20)
		else
		Msg2Player("B�n ch�a gia nh�p m�n ph�i n�o !")
		
		end		
else
Msg2Player("��ng c�p y�u c�u: 120")
end
end




function doiph()
Say("<color=green>L� Quan  <color>: Ch�o ��i hi�p <color=red>"..GetName().."<color>. B�n ch�n lo�i n�o ?",4,
"Ph�c duy�n ti�u/doiph2",
"Ph�c duy�n trung/doiph2",
"Ph�c duy�n ��i/doiph2",
"K�t th�c ��i tho�i/no")
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
Talk(1,"","<color=green>L� Quan  <color>: B�n kh�ng �� 12 �i�m ph�c duy�n !")
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
Talk(1,"","<color=green>L� Quan  <color>: B�n kh�ng �� 24 �i�m ph�c duy�n !")
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
Talk(1,"","<color=green>L� Quan  <color>: B�n kh�ng �� 60 �i�m ph�c duy�n !")
end
end
end

function CheckTonTai(ten)
for i=1,getn(DS120) do
	if DS120[i][2] == GetName() then
		return 1
	end
end
return 0
end
function CheckTonTai2(ten)
for i=1,getn(DS135) do
	if DS135[i][2] == GetName() then
		return 1
	end
end
return 0
end

function nhanpt3()
if getn(DS120) > 0 then
	if CheckTonTai(GetName()) == 1 then
		Talk(1,"","B�n �� nh�n ph�n th��ng n�y r�i !")
		return
	end
end

if GetTask(115) ~= 10000 then
Talk(1,"","B�n kh�ng thu�c nh�ng nh�n v�t �ua Top, kh�ng th� nh�n th��ng !")
return
end
if GetLevel() < 120 then
Talk(1,"","B�n kh�ng �� ��ng c�p 120, kh�ng th� nh�n th��ng ")
return
end

if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end

if getn(DS120) < 100 then
	DS120[getn(DS120)+1] = {GetAccount(),GetName(),GetLevel()}
	BANG = TaoBang(DS120,"DS120")
				
	LuuBang("script/danhsach120.lua",BANG)

	AddItem(0,10,5,random(1,4),0,0,0)

	Msg2SubWorld("Ch�c m�ng ��i hi�p ["..GetName().."] �� <color=yellow>1 Th� C��i 8x<color=red> t� ph�n th��ng m�c 120")
	Msg2SubWorld("S� l��ng gi�i h�n: <color=pink>"..getn(DS120).." / 100 con !")

else
Talk(1,"","Hi�n t�i �� �� 100 ng��i ��t Level 120 ��u ti�n !")
end
end



function nhanpt4()
if getn(DS135) > 0 then
	if CheckTonTai2(GetName()) == 1 then
		Talk(1,"","B�n �� nh�n ph�n th��ng n�y r�i !")
		return
	end
end

if GetTask(115) ~= 10000 then
Talk(1,"","B�n kh�ng thu�c nh�ng nh�n v�t �ua Top, kh�ng th� nh�n th��ng !")
return
end
if GetLevel() < 135 then
Talk(1,"","B�n kh�ng �� ��ng c�p 135, kh�ng th� nh�n th��ng ")
return
end

if getn(DS135) < 20 then
	DS135[getn(DS135)+1] = {GetAccount(),GetName(),GetLevel()}
	BANG = TaoBang(DS135,"DS135")
				
	LuuBang("script/danhsach135.lua",BANG)

	AddEventItem(19)

	Msg2SubWorld("Ch�c m�ng ��i hi�p ["..GetName().."] �� <color=yellow>B� K�p 120<color=red> t� ph�n th��ng m�c 135")
	Msg2SubWorld("S� l��ng gi�i h�n: <color=pink>"..getn(DS135).." / 20 con !")

else
Talk(1,"","Hi�n t�i �� �� 20 ng��i ��t Level 135 ��u ti�n !")
end
end

function aaa()
Talk(1,"","�ang Update !")
end

function nhanhotrotanthu()


if GetLevel() == 1 then
	for k=1,9 do AddOwnExp(200000000) end
	
	a= AddItem(0,6,2,1,0,0,0)
	SetTimeItem(a,550324);
	b= AddItem(0,5,4,1,0,0,0)
	SetTimeItem(b,550324);
	c= AddItem(0,9,2,1,0,0,0)
	SetTimeItem(c,550324);
	d= AddItem(0,7,14,1,0,0,0)
	SetTimeItem(d,550324);
	e= AddItem(0,2,29,1,0,0,0)
	SetTimeItem(e,550324);
	f= AddItem(0,8,2,1,0,0,0)
	SetTimeItem(f,550324);
	g= AddItem(0,4,2,1,0,0,0)
	SetTimeItem(g,550324);
	h= AddItem(0,3,1,1,0,0,0)
	SetTimeItem(h,550324);
	j = AddItem(0,3,2,1,0,0,0)
	SetTimeItem(j,550324);
	ngua = AddItem(0,10,2,10,0,0,0)
	SetTimeItem(ngua,550324);

	--Msg2SubWorld("V� L�m T�nh Ki�m ch�o m�ng t�n th� m�i : <color=pink>"..GetName().." ")
	KickOutSelf()
else
	Talk(1,"","Nh�n v�t Level 1 m�i nh�n h� tr� ���c !")
end

end

function main1()
w,x,y = GetWorldPos()
if w == 4 then
Say("<color=green>L� Quan <color>: Trong th�i gian �ua Top s� kh�ng h� tr� b�t k� tr��ng h�p n�o? :" ,7,
"��i m�u luy�n c�ng/doimau",
"Nh�n Ph�n Th��ng M�c 60 /nhanpt1", 
"Nh�n Ph�n Th��ng M�c 110 /nhanpt2", 
"Nh�n Ph�n Th��ng M�c 120 /nhanpt3", 
"Nh�n Ph�n Th��ng M�c 135 /nhanpt4", 
"T�y T�y Mi�n Ph� /taytuy",
"Thoat./no")
else
Say("<color=green>L� Quan <color>: Trong th�i gian �ua Top s� kh�ng h� tr� b�t k� tr��ng h�p n�o? :" ,2,
"��i m�u luy�n c�ng/doimau",
"Thoat./no")

end
end

function taytuy()
Say("<color=green>L� Quan <color>: B�n s� ���c T�y K� N�ng v� T�y Ti�m N�ng, tuy nhi�n sau n�y s� kh�ng ���c l�n ��o t�y t�y mi�n ph� n�a. B�n c� ch�c ch�n kh�ng ?",2,
"Ta mu�n t�y t�y /taytuy2",
"Thoat./no")
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



function taytuy2()
if GetTask(196) == 0 then
	SetTask(196,2)
	TayTiemNang()
	TayKyNang()
else
	Talk(1,"","B�n �� s� d�ng t�y t�y r�i !")
end
end


function nhanpt1()
if GetLevel() >= 60 then
	if GetTask(132) == 0 then
		SetTask(132,1)
AddItem(0,6,2,1,0,0,0)
AddItem(0,5,4,1,0,0,0)
AddItem(0,9,2,1,0,0,0)
AddItem(0,7,14,1,0,0,0)
AddItem(0,2,29,1,0,0,0)
AddItem(0,8,2,1,0,0,0)
AddItem(0,4,2,1,0,0,0)
AddItem(0,3,1,1,0,0,0)
AddItem(0,3,2,1,0,0,0)
		
		Msg2Player("B�n nh�n ���c 1 Set Kim Phong !")
	else
		Talk(1,"","B�n �� nh�n ph�n th��ng n�y r�i !")
	end
else
	Talk(1,"","B�n ch�a �� ��ng c�p 60, kh�ng th� nh�n ph�n th��ng !")
end
end
 
function doimau()
if GetTeamSize() > 0 then
LeaveTeam();
end

if GetFaction() == "" and GetCurCamp() > 0 then
SetCurCamp(0)
SetCamp(0)
return
end

if GetCurCamp() == 0 and GetFaction() == "" then
Talk(1,"","B�n ch�a gia nh�p ph�i")
return
end

if GetTongNameID() == 0 then
Say("<color=green>L� Quan <color>:Ch�o m�ng b�n �� ��n th� nghi�m c�ng <color=yellow>V� L�m C�ng Th�nh Chi�n <color> s� ki�n th� nghi�m s� ���c k�t th�c v�o 24 gi� ng�y 19/10/2016 .",5,
"Ch�nh Ph�i/doimau11",
"T� Ph�i/doimau11",
"Trung L�p /doimau11",
"S�t Th�/doimau11",
"K�t th�c ��i tho�i/no")
else
Talk(1,"","V� bang kh�ng ��i m�u ���c !")
end
end

function doimau11(nsel)
if GetCash() >= 2000 then
Pay(2000)
SetCamp(nsel+1)
SetCurCamp(nsel+1)
else
Talk(1,"","<color=green>L� Quan : <color>Kh�ng �� 2000 l��ng")
end
end
function nhantt()
for i=28,30 do AddEventItem(i) end
for k=1,6 do AddEventItem(31) end
end

function nhantbxanh()
Talk(1,"","Vui l�ng nh�n v�o s�ch t�n th� �� nh�n trang b� !")
end

function shop()
Sale(1)
end

function full()
AddItem(0,10,5,random(1,5),0,0,0)
end
function nhantien()
Pay(GetCash())
Earn(10000000)
Talk(1,"","B�n nh�n ���c <color=yellow>1.000 v�n .")
end
function nhantbxanh1()
Say("<color=green>L� Quan <color>:Ch�o m�ng b�n �� ��n th� nghi�m c�ng <color=yellow>V� L�m C�ng Th�nh Chi�n <color> s� ki�n th� nghi�m s� ���c k�t th�c v�o 24 gi� ng�y 19/10/2016 .",10,
"V� kh�/tbxanh1", 
"Ao /tbxanh1",
"Nh�n /tbxanh1",
"D�y Chuy�n /tbxanh1",
"Gi�y /tbxanh1",
"Th�t l�ng /tbxanh1",
"N�n /tbxanh1",
"Bao Tay/tbxanh1",
"Ng�c B�i/tbxanh1",
"Tho�t/no")
end


function tbxanh1(nsel)
SetTaskTemp(1,nsel)
Say("<color=green>L� Quan <color>:Ch�o m�ng b�n �� ��n th� nghi�m c�ng <color=yellow>V� L�m C�ng Th�nh Chi�n <color> s� ki�n th� nghi�m s� ���c k�t th�c v�o 24 gi� ng�y 19/10/2016 .",6,
"Kim/tbxanh2",
"M�c /tbxanh2",
"Th�y/tbxanh2",
"H�a /tbxanh2",
"Th� /tbxanh2",
"Thoat./no")
end
 
function tbxanh2(nsel)
id = 0
sex=1
if GetSex()==1 then
sex=0
end
i = GetTaskTemp(1)
i=i+1
if i == 0 then
id = random(0,5)
elseif i == 1 then
vukhi(nsel)
return
elseif i == 2 then
id = random(0,28)
elseif i == 3 then
id = 0
elseif i == 4 then
id = sex
elseif i == 5 then
if sex==1 then
id = 1
else
id=2
end
elseif i == 6 then
id = sex
elseif i == 7 then
if sex==1 then
id = 2
else
id= 9
end
elseif i == 8 then
id = sex
elseif i == 9 then
id = sex
end
for k=1,5 do
AddItem(0,i,id,level(),nsel,0,10)
end
end

function vukhi(nsel)
	local TAB_DOXANH = {
		"L�y Ki�m/laydoxanh",
		"L�y �ao/laydoxanh",
		"L�y B�ng/laydoxanh",
		"L�y Th��ng/laydoxanh",
		"L�y Ch�y/laydoxanh",
		"L�y Song �ao/laydoxanh",
		"L�y Phi Ti�u/laydoxanh",
		"L�y Phi �ao/laydoxanh",
		"L�y T� Ti�n/laydoxanh",
		"K�t th�c ��i tho�i/no",}
SetTask(211,nsel)
	Say("<color=green>L� Quan <color>:Ch�o m�ng b�n �� ��n th� nghi�m c�ng <color=yellow>V� L�m C�ng Th�nh Chi�n <color> s� ki�n th� nghi�m s� ���c k�t th�c v�o 24 gi� ng�y 19/10/2016 .",11,TAB_DOXANH[1],TAB_DOXANH[2],TAB_DOXANH[3],TAB_DOXANH[4],TAB_DOXANH[5],TAB_DOXANH[6],TAB_DOXANH[7],TAB_DOXANH[8],TAB_DOXANH[9],TAB_DOXANH[10])
end
function laydoxanh(sel)
	local aHeo = sel
	local aHeo1 = sel - 6
	local eHeo = GetTask(211)
	if (aHeo < 6) then
	for i=1,30 do AddItem(0,0,aHeo,10,eHeo,100,10) end
	else
	for i=1,30 do AddItem(0,1,aHeo1,10,eHeo,100,10) end
	end
end
function level()
if GetLevel() < 10 then
return 1
elseif GetLevel() >= 10 and GetLevel() < 19 then
return 2
elseif GetLevel() >= 20 and GetLevel() < 29 then
return 3
elseif GetLevel() >= 30 and GetLevel() < 39 then
return 4
elseif GetLevel() >= 40 and GetLevel() < 49 then
return 5
elseif GetLevel() >= 50 and GetLevel() < 59 then
return 6
elseif GetLevel() >= 60 and GetLevel() < 69 then
return 7
elseif GetLevel() >= 70 and GetLevel() < 79 then
return 8
elseif GetLevel() >= 80 and GetLevel() < 89 then
return 9
else
return 10
end
end



function nhanlv10()
if GetLevel()<201 then
for i=1,10 do
AddOwnExp(200000000)
Talk(1,"","B�n nh�n ���c <color=yellow>10 c�p �� .")
end
else
Msg2Player("<color=yellow>Ch� ���c nh�n t�i �a c�p 200 .")
end
end
function nhanlv()
AddOwnExp(2000000000)
Msg2Player("B�n v�a ���c t�ng 1 Level !")
end

function no()
end
 
