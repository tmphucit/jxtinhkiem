Include("\\script\\lib\\thuvien.lua")

non = 617
giay = 618
vong = 620
balo = 621
quantrang = 619
cuonlen = 660

ruong1 = 658
ruong2 = 659

function main()
SayNew("Ch�o ��ng ch�, chi�n d�ch gi�i ph�ng ��t n��c �ang trong �� chi�n th�ng. Hi�n t�i qu�n trang �ang thi�u, ��ng ch� c� mu�n ��ng g�p m�t tay kh�ng?",4,
"Ta c� v�i b� mu�n ��ng g�p/ghep1",
"M� c�a ��ng ch� g�i it Qu�n Trang ��ng g�p/ghep2",
"Ta mu�n gia h�n s� ki�n /giahan",
"Xin l�i, ta s� quay l�i sau./no")
end

function ghep1()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end
SayNew("Ch�n s� l��ng qu�n trang mu�n ��ng g�p: ",5,
"S� l��ng 1 b�/ghep1_1",
"S� l��ng 10 b�/ghep1_1",
"S� l��ng 20 b�/ghep1_1",
"S� l��ng 50 b�/ghep1_1",
"Xin l�i, ta �ang b�n/no")
end
function ghep1_1(nsel)
n1 = GetItemCount(non)
n2 = GetItemCount(vong)
n3 = GetItemCount(balo)
n4 = GetItemCount(giay)
n5 = GetItemCount(quantrang)
cash = GetCash()
soluong = 1
if nsel == 1 then
soluong = 10
elseif nsel == 2 then
soluong = 20
elseif nsel == 3 then
soluong = 50
end
tienvan = soluong * 5000

if n1 >= soluong and n2  >= soluong and n3  >= soluong and n4  >= soluong and n5  >= soluong and cash > tienvan then
	for i=1,soluong do 
		DelItem(non)
		DelItem(vong)
		DelItem(balo)
		DelItem(giay)
		DelItem(quantrang)
	end
	Pay(tienvan)
	if GetItemCount(non) == n1 - soluong and GetItemCount(vong) == n2 - soluong and GetItemCount(balo) == n3 - soluong and GetItemCount(giay) == n4 - soluong and GetItemCount(quantrang) == n5 - soluong and GetCash() == cash - tienvan then
		for k=1,soluong do AddEventItem(ruong1) end
		Msg2Player("B�n nh�n ���c <color=yellow>"..soluong.."  Thi�p Ng��i L�nh")
	else
		Talk(1,"","hack ha em")
	end
	
else
Talk(1,"","Ng��i ki�m tra l�i h�nh trang, h�nh nh� kh�ng �� s� l��ng mu�n g�p")
end	
	
end


function ghep2()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end
SayNew("Ch�n s� l��ng qu�n trang mu�n ��ng g�p: ",5,
"S� l��ng 1 b�/ghep2_1",
"S� l��ng 10 b�/ghep2_1",
"S� l��ng 20 b�/ghep2_1",
"S� l��ng 50 b�/ghep2_1",
"Xin l�i, ta �ang b�n/no")
end

function ghep2_1(nsel)
n1 = GetItemCount(non)
n2 = GetItemCount(vong)
n3 = GetItemCount(balo)
n4 = GetItemCount(giay)
n5 = GetItemCount(cuonlen)
cash = GetCash()
soluong = 1
if nsel == 1 then
soluong = 10
elseif nsel == 2 then
soluong = 20
elseif nsel == 3 then
soluong = 50
end
tienvan = soluong * 2000

if n1 >= soluong and n2  >= soluong and n3  >= soluong and n4  >= soluong and n5  >= soluong and cash > tienvan then
	for i=1,soluong do 
		DelItem(non)
		DelItem(vong)
		DelItem(balo)
		DelItem(giay)
		DelItem(cuonlen)
	end
	Pay(tienvan)
	if GetItemCount(non) == n1 - soluong and GetItemCount(vong) == n2 - soluong and GetItemCount(balo) == n3 - soluong and GetItemCount(giay) == n4 - soluong and GetItemCount(cuonlen) == n5 - soluong and GetCash() == cash - tienvan then
		for k=1,soluong do AddEventItem(ruong2) end
			Msg2Player("B�n nh�n ���c <color=yellow>"..soluong.."  Thi�p G�i M� Hi�n")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng��i ki�m tra l�i h�nh trang, h�nh nh� kh�ng �� s� l��ng mu�n g�p")
end	
	
end



function giahan()

if GetItemCount(17) < 5 then
Talk(1,"","Ng��i kh�ng mang theo 5 Kim Nguy�n B�o, kh�ng th� gia h�n")
return
end

if GetTask(903) >= 1 then
Talk(1,"","B�n �� ��t gia h�n t�i �a, kh�ng th� gia h�n th�m")
return
end

for i=1,5 do DelItem(17) end

SetTask(903, GetTask(903) + 1)
Msg2Player("Ch�c m�ng b�n �� th�ng c�p S� Ki�n Gi�i Ph�ng Mi�n Nam 30-4 l�n: <color=pink>Gia H�n "..GetTask(903).."")
inlog5("Gia han "..GetTask(903).." - "..GetAccount().." - "..GetName().."")

end


function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logGiaHan.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function no()

end
