--Author: thaihoa91
Include("\\script\\Global\\passwords.lua");
Include("\\script\\ket_hon\\nguyet_lao.lua");
function main()
SetFightState(0)
w,X,Y = GetWorldPos()
if GetTask(157) == 2 then
	if w == 9 then
		SayNew("<color=green>D��c �i�m<color>: Ta ch� bi�t ch�a b�nh v� c�u gi�p ng��i v� t�i.",3,
		"Mua ng� hoa t�n /muanguhoa",
		"Giao d�ch/giaodich",
		"Kh�ng giao d�ch/kogiaodich")	
	else
	Talk(1,"","<color=green>D��c �i�m <color>: B�n �ang l�m nhi�m v� Ho�ng Kim. H�y ��n Bi�n Kinh �i !!!")
	end
elseif GetTask(103) == 4 then
	SayNew("<color=green>D��c �i�m<color>: Ta ch� bi�t ch�a b�nh v� c�u gi�p ng��i v� t�i.",3,
	"Giao d�ch/giaodich",
	"Giao t�n th� ch��ng m�n/giaotinthu",
	"Kh�ng giao d�ch/kogiaodich")
else
	SayNew("<color=green>D��c �i�m<color>: Ta ch� bi�t ch�a b�nh v� c�u gi�p ng��i v� t�i.",5,
	"Giao d�ch/giaodich",
	"Mua L� Bao nhanh/muanhanh",
	"T�ng �i�m ti�m n�ng nhanh /tangtiemnang",
	"Mua C�u Nguy�n Th�ch/muacuunguyenthach1",
	"Kh�ng giao d�ch/kogiaodich")
end
end;

function tangtiemnang()
SayNew("Hi�n t�i ng��i �ang c� <color=yellow>"..GetProp().." �i�m ti�m n�ng<color>. Ng��i mu�n ph�n ph�i n� v�o ��u?",5,
"T�ng S�c M�nh /tangtn1",
"T�ng Th�n Ph�p /tangtn1",
"T�ng Sinh Kh� /tangtn1",
"T�ng N�i C�ng /tangtn1",
"Tho�t./no")
end
function tangtn1(nsel)
SetTaskTemp(1, nsel + 1)
OpenStringBox(2,"Nh�p s� �i�m","oktangtn")
Msg2Player("<color=yellow>L�u �: N�u kh�ng nh�p s� v�o ���c vui l�ng tho�t ra v�o l�i. H� th�ng t� ��ng reconnect khi t�ng �i�m th�nh c�ng")
end

function oktangtn(num2)
num = tonumber(num2)
if num < 1 or num > GetProp() then
Talk(1,"","�i�m ti�m n�ng kh�ng h�p l� vui l�ng nh�p l�i !")
return
end

i = GetTaskTemp(1)
tiemnang = GetProp()
AddProp(-num)
if GetProp() == tiemnang - num then
	if i == 1 then
		RestAP(GetStrg(1) + num, GetDex(1), GetVit(1), GetEng(1))
	elseif i == 2 then
		RestAP(GetStrg(1), GetDex(1) + num, GetVit(1), GetEng(1))
	elseif i == 3 then
		RestAP(GetStrg(1), GetDex(1), GetVit(1)  + num, GetEng(1))
	elseif i == 4 then
		RestAP(GetStrg(1), GetDex(1) , GetVit(1), GetEng(1)  + num)
	end
	KickOutSelf()
else
	Talk(1,"","Hack ha em")
end
end

function lbbattu()
if GetCash() < 30000 then
Talk(1,"","Ng��i kh�ng mang �� 3 v�n l��ng, kh�ng th� mua")
return
end

Pay(30000)
AddEventItem(160)
Msg2Player("B�n nh�n ���c 1 <color=yellow>Ng��i Tuy�t Vui V� ")
Msg2Player("<color=green>Ch� �: Mang theo v�t ph�m di chuy�n ra ngo�i s� kh�ng b� ch�t trong v�ng 10 gi�y!")

end

function muacuunguyenthach1()
SayNew("<color=green>D��c �i�m<color>: <enter>V�t ph�m: <color=yellow>C�u Nguy�n Th�ch<color>. Ch�n th�i h�n mu�n mua?",4,
"Ta mu�n mua 1 ng�y = 5 Ti�n ��ng/yesmuattm",
"Ta mu�n mua 3 ng�y = 10 Ti�n ��ng/yesmuattm",
"Ta mu�n mua 7 ng�y = 20 Ti�n ��ng/yesmuattm",
"Tho�t./no")
end

function yesmuattm(nsel)
i = nsel + 1
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
w,x,y = GetWorldPos()
buy_item = -1
if i == 1 then
	buy_ngay = 1
	buy_vang = 5
	buy_item = 910
elseif i == 2 then
	buy_ngay = 3
	buy_vang = 10
	buy_item = 911
elseif i == 3 then
	buy_ngay = 7
	buy_vang = 20
	buy_item = 912
end

if CheckFreeBoxItem(0,3,3,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end
if buy_item == -1 then
Talk(1,"","L�i buy item -1, li�n h� ad �� fix ")
return
end
 
vang = GetItemCount(697)
if GetItemCount(697) >= buy_vang then
	for k=1,buy_vang do DelItem(697) end
	if GetItemCount(697) == vang - buy_vang then
		
		itemidx = AddEventItem(buy_item)		
		Msg2Player("B�n nh�n ���c 1 "..GetNameItemBox(itemidx).."")
		inloghks("Log "..buy_ngay.." ngay: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>"..buy_vang.."<color> Ti�n ��ng, kh�ng th� giao d�ch!")
end
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}

function inloghks(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/TuiMauVIP.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function nhanmaumienphi()
if GetLevel() < 130 then
for i=1,20 do
			idx = AddItem(1,2,0,3,0,0,0)
			SetItemLock(idx)
		end
Msg2Player("B�n nh�n ���c 20 B�nh D��c Ph�m Mi�n Ph� !")
else
Talk(1,"","T�i Thu�c ch� h� tr� cho t�n th� ��ng c�p d��i 130 !")
end
end

function muanhanh()
SayNew("B�n mu�n mua thu�c n�o: ?",10,
"Kim S�ng D��c L� Bao (Trung) /muanhanh2",
"Kim S�ng D��c L� Bao (��i)/muanhanh2",
"C�u Chuy�n Ho�n H�n �an L� Bao/muanhanh2",
"Ng�ng Th�n �an L� Bao (Trung)/muanhanh2",
"Ng�ng Th�n �an L� Bao (��i)/muanhanh2",
"Th� � Ho�n Th�n �an L� Bao/muanhanh2",
"Th�a Ti�n M�t L� Bao (trung)/muanhanh2",
"Th�a Ti�n M�t L� Bao (��i)/muanhanh2",
"Ng� Hoa Ng�c L� Ho�n L� Bao/muanhanh2",
"Tho�t./no")
end

function muanhanh2(nsel)
SetTaskTemp(1, nsel+1)
SayNew("B�n c� ch�c ch�n mua <color=green>"..DuocPham[nsel+1][2].."<color> v�i gi� <color=yellow>"..DuocPham[nsel+1][3].." l��ng",2,
"Ta ch�c ch�n mu�n mua v�t ph�m n�y /muanhanh3",
"Tho�t./no")
end
function muanhanh3()
OpenStringBox(2,"Nh�p s� l��ng","muanhanh4")
end

function muanhanh4(num2)
num = tonumber(num2)
if num == 0 then
return
end

vt = GetTaskTemp(1)
if vt < 1 and vt > getn(DuocPham) then
return
end
if CheckFreeBoxItem(0,3,3,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end
cash = GetCash()
if GetCash() < num*DuocPham[vt][3] then
Talk(1,"","Ng��i kh�ng mang �� "..(num*DuocPham[vt][3]).." l��ng, kh�ng th� mua v�t ph�m n�y")
return
end

Pay(num*DuocPham[vt][3])
if GetCash() == cash - num*DuocPham[vt][3] then
	for p=1,num do AddEventItem(DuocPham[vt][1]) end
	Msg2Player("B�n nh�n ���c "..num.." "..DuocPham[vt][2].."")
else
	Talk(1,"","Hack ha em")
end
end

DuocPham = {
{108, "Kim S�ng D��c Trung",2000},
{110, "Kim S�ng D��c ��i",5000},
{104, "C�u Chuy�n Ho�n H�n �an L� Bao",40000},
{112, "Ng�ng Th�n �an Trung",2000},
{111, "Ng�ng Th�n �an ��i",5000},
{105, "Th� � Ho�n Th�n �an L� Bao",40000},
{107, "Th�a Ti�n M�t Trung",3000},
{109, "Th�a Ti�n M�t ��i",7500},
{103, "Ng� Hoa Ng�c L� Ho�n L� Ba",60000},
}
function muannh()
if CheckFreeBoxItem(4,114,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end


sl = GetItemCount(114) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 1 and GetTask(101) >= 1 then
	SetTask(99,GetTask(99) - 1)
	SetTask(101,GetTask(101) - 1)
	if GetTask(99) == vang-1 and GetTask(101) == vang2 - 1 and GetTask(99) == GetTask(101) then
		AddEventItem(118)
		Msg2Player("B�n �� mua 1 b�nh N� Nhi H�ng gi� 1 v�ng ")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>1<color> v�ng !")
end
end

function lagmau()
sl = GetCash()
if GetCash() >= 5000 then
Pay(5000)
if GetCash() == sl - 5000 then
AddEventItem(111)
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B�n kh�ng �� 5000 l��ng !")
end
end


function lagmau2()
sl = GetCash()
if GetCash() >= 40000 then
Pay(40000)
if GetCash() == sl - 40000 then
AddEventItem(105)
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B�n kh�ng �� 40000 l��ng !")
end
end
function thuatien()
sl = GetCash()
if GetCash() >= 7500 then
Pay(7500)
if GetCash() == sl - 7500 then
AddEventItem(109)
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B�n kh�ng �� 5000 l��ng !")
end
end

function kimsang()
sl = GetCash()
if GetCash() >= 5000 then
Pay(5000)
if GetCash() == sl - 5000 then
AddEventItem(110)
Talk(0,"")
else
Talk(1,"","hack ha em")

end
else
Talk(1,"","B�n kh�ng �� 5000 l��ng !")
end
end

function giaotinthu()
	if GetTask(103) == 4 then
		SetTask(103,5)
		Talk(1,"","<color=green>D��c �i�m <color>: Ta �� nh�n ���c t�n th�, h�y n�i v�i Ch��ng M�n ng��i l� ta s� c� g�ng h�t s�c �� gi�p �� t� c�a ng��i !")
	end
end

function muanguhoa()
tv = GetCash()
		if GetCash() >= 5000 then
		Pay(5000)
			if GetCash() == (tv-5000) then
			AddEventItem(18)
			Msg2Player("B�n nh�n ���c 1 Ng� Hoa T�n.")
			Talk(0,"")
			else
			Talk(1,"","Hack ha em")
			end
		else
		Talk(1,"","<color=green>D��c �i�m <color>: B�n kh�ng �� 5000 l��ng kh�n th� mua Ng� Hoa T�n")
		end
end

function giaodich()
w,X,Y = GetWorldPos()
if w == 66 or w == 3 then
Sale(22);
else
	Sale(7);
end
end;

function kogiaodich()
end;





