--Author: thaihoa91

function main()
if GetTask(103) == 5 then
SayNew("<color=green>Ch� ti�m T�p ho� <color>: Ta chuy�n v� �n m�c, b�n c�c th� linh tinh nh�ng r�t c�n thi�t",3,
"Mua - B�n/giaodich",
"Giao t�n th� ch��ng m�n/giaotinthu",
"Kh�ng c�n ��u/kocan")
else
SayNew("<color=green>Ch� ti�m T�p ho� <color>: Ta chuy�n v� �n m�c, b�n c�c th� linh tinh nh�ng r�t c�n thi�t",5,
"Mua - B�n/giaodich",
"T�ng Kim Chi�u Th� [2000 l��ng]/muatdp",
"Mua Th�n H�nh Ph� /muathanthanhphu",
"S� ki�n Event 30-4 /tetnguyendan_muamam",
"Kh�ng c�n ��u/kocan")
end
end;



function tetnguyendan_muamam()
		if CheckFreeBoxItem(0,10,2,2) == 0 then
			Msg2Player("H�nh trang kh�ng �� 2 x 3 ch� tr�ng, kh�ng th� s� d�ng")
			return
		end
		
SayNew("<color=green>Ch� ti�m T�p ho� <color>: Ng��i mu�n mua nguy�n li�u Event 30/4? ",5,
"10 M� Tai B�o = 5 v�n l��ng/tetnguyendan_muamambac",
"100 M� Tai B�o = 50 v�n l��ng/tetnguyendan_muamambac",
"2 Chi�c �o l�nh b� r�ch = 1 Ti�n ��ng/tetnguyendan_muamamvang",
"20 Chi�c �o l�nh b� r�ch = 10 Ti�n ��ng/tetnguyendan_muamamvang",
"Tho�t./no")
end

function tetnguyendan_muamambac(nsel)
i = nsel + 1

SoLuong = 0
Vang = 0
if i == 1 then
	SoLuong = 10
	Vang = 50000
elseif i == 2 then
	SoLuong = 100
	Vang = 500000
end
if SoLuong == 0 then
return
end

sl = GetCash()
SoLuongCu = GetItemCount(321)
if GetCash() >= Vang then
	Pay(Vang)
	if GetCash() == sl - Vang then
			for k=1,SoLuong do AddEventItem(321) end
			Msg2Player("B�n nh�n ���c "..SoLuong.." M� Tai B�o ")		
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/MamBac.txt", "a");
			if LoginLog then
			write(LoginLog,"["..SoLuongCu.."]["..GetItemCount(321).."]["..GetAccount().."]["..GetName().."] - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			
	else
			Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� "..Vang.." l��ng, kh�ng th� mua !")
end
end

function tetnguyendan_muamamvang(nsel)
i = nsel + 1

SoLuong = 0
Vang = 0
if i == 3 then
	SoLuong = 2
	Vang = 1
elseif i == 4 then
	SoLuong = 20
	Vang = 10
end
if SoLuong == 0 then
return
end

sl = GetItemCount(697)
SoLuongCu = GetItemCount(322)
if GetItemCount(697) >= Vang then
	for k=1,Vang do DelItem(697) end
	if GetItemCount(697) == sl - Vang then
			for k=1,SoLuong do AddEventItem(322) end
			Msg2Player("B�n nh�n ���c "..SoLuong.." Chi�c �o l�nh b� r�ch ")		
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/MamVang.txt", "a");
			if LoginLog then
			write(LoginLog,"["..SoLuongCu.."]["..GetItemCount(322).."]["..GetAccount().."]["..GetName().."] - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			
	else
			Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� "..Vang.." ti�n ��ng, kh�ng th� mua !")
end
end

function muathanthanhphu()
SayNew("<color=green>Ch� ti�m T�p ho� <color>: <enter>V�t ph�m: <color=yellow>Th�n H�nh Ph� <color>. Ch�n th�i h�n mu�n mua?",4,
"Ta mu�n mua 3 ng�y = 10 Ti�n ��ng/yesmuattm",
"Ta mu�n mua 7 ng�y = 20 Ti�n ��ng/yesmuattm",
"Ta mu�n mua 30 ng�y = 50 Ti�n ��ng/yesmuattm",
"Tho�t./no")
end



function yesmuattm(nsel)
i = nsel + 1
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
w,x,y = GetWorldPos()
if i == 1 then
	buy_ngay = 3
	buy_vang = 10
elseif i == 2 then
	buy_ngay = 7
	buy_vang = 20
elseif i == 3 then
	buy_ngay = 30
	buy_vang = 50
end

if CheckFreeBoxItem(0,3,3,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end
 
vang = GetItemCount(697)
if GetItemCount(697) >= buy_vang then
	for k=1,buy_vang do DelItem(697) end
	if GetItemCount(697) == vang - buy_vang then
		ngay = ngay + buy_ngay
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
			
			if (thang == 12) then
				thang = 0
				nam = nam + 1
			end
			thang = thang + 1	
		end	
		
		itemidx = AddEventItem(696)
		SetHSD(itemidx, 2000+nam , thang, ngay, gio )
		Msg2Player("B�n nh�n ���c 1 Th�n H�nh Ph� ")
		inloghks("Log "..buy_ngay.." ng�y: "..GetAccount().." - "..GetName().." - "..GetLevel().." ")
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
LoginLog = openfile("Data/ThanBi/SachThongHanh.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function muatdp30()
SayNew("<color=green>Ch� ti�m T�p ho� <color>: Ng��i ch�c ch�n mu�n mua <color=red>Th� ��a Ph� 30 Ng�y<color> v�i gi� <color=yellow>10 V�ng<color> kh�ng?",2,
"Ta ��ng � mua v�i gi� 10 v�ng /muatdo301",
"Tho�t./no")
end

function muatdo301()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
cash = GetTask(99)
if GetTask(99) >= 10 then
	SetTask(99,GetTask(99) - 10)
	SetTask(101,GetTask(101) - 10)
	if GetTask(99) == cash - 10 then
		itemidx = AddEventItem(272)
	if thang == 12 then
		SetHSD(itemidx,2017,1,ngay,gio)
		SetBindItem(itemidx,1)
	else
		SetHSD(itemidx,2017,thang+1,ngay,gio)
		SetBindItem(itemidx,1)
	end
	Msg2Player("B�n nh�n ���c 1 c�i  <color=yellow>Th� ��a Ph� [30 Ng�y]")
	Msg2Player("<color=yellow>Ch� �: N�u kh�ng th�y xu�t hi�n trong h�nh trang h�y tho�t h�t game v� ch�y c�p nh�t l�i !")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng��i kh�ng �� 10 v�ng, kh�ng th� mua ")
end
end


function muatdp()
if GetCash() < 2000 then
Talk(1,"","Kh�ng �� 2000 l��ng, kh�ng th� mua v�t ph�m n�y ")
return
end
Pay(2000)
a = GetCash()
AddEventItem(24)
Msg2Player("B�n nh�n ���c 1 T�ng Kim Chi�u Th� ")
Talk(0,"")
end
function mokhoafull()
if GetItemCount2(150) > 0 then
Talk(1,"","B�n ph�i s� d�ng h�t L� Bao T�ng Kim m�i c� th� m� kh�a !")
return
end
if GetItemCount2(109) > 0 then
Talk(1,"","B�n ph�i s� d�ng h�t L� Bao Mi�n Ph� m�i c� th� m� kh�a !")
return
end

SetBindAllItem()
Msg2Player("B�n �� m� kh�a th�nh c�ng !")

end

function giaotinthu()
	if GetTask(103) == 5 then
		SetTask(103,6)
		Talk(1,"","<color=green>Ch� ti�m T�p H�a<color>: Ta �� nh�n ���c t�n th�, h�y n�i v�i Ch��ng M�n ng��i l� ta s� c� g�ng h�t s�c �� gi�p �� t� c�a ng��i !")
		Msg2Player("<color=green>Nhi�m v� M�n Ph�i: <color=red>H�y ��n g�p Th� R�n")
	end
end

function muatkchieuthu()
a = GetCash()
if GetCash() >= 5000 then
Pay(5000)
if GetCash() == (a-5000) then
AddEventItem(24)
Msg2Player("B�n nh�n ���c 1 T�ng Kim Chi�u Th�")
Talk(0,"")
end
else
Talk(1,"","<color=green>Ch� ti�m t�m ho� <color>: B�n kh�ng �� <color=red>5000<color> l��ng")
end
end

function sudothiep()
a = GetCash()
if GetCash() >= 5000 then
Pay(5000)
if GetCash() == (a-5000) then
AddEventItem(15)
Msg2Player("B�n nh�n ���c 1 s� �� thi�p")
Talk(0,"")
end
else
Talk(1,"","<color=green>Ch� ti�m t�m ho� <color>: B�n kh�ng �� <color=red>5000<color> l��ng")
end
end
function giaodich()
w,x,y = GetWorldPos()
if w == 17 then
Sale(3)
elseif w == 11 then
Sale(4)
elseif w == 160 then
Sale(5)
elseif w == 161 then
Sale(6)
elseif w == 15 then
Sale(2)
else
Talk(1,"","Hi�n t�i ta kh�ng m� c�a h�ng t�p h�a, ng��i h�y �i th�nh th� kh�c �i nh� ")
end
end;


function shop(nsel)
i = nsel+2
Sale(i)
end
function no()
end
function kocan()
end;
