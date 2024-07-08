Include("\\script\\lib\\thuvien.lua")

botmy = 666
duong = 667
trung = 668
sua = 669

traicay = 665
socola = 664
bo = 663

banhtraicay = 670
banhsocola = 671
banhdacbiet = 672

function main()
SayNew("Ta c� kinh nghi�m l�m b�nh kem l�u n�m, n�i ti�ng kh�p th�nh n�y. Qu� b�ng h�u mu�n l�m b�nh g�? C� mang �� nguy�n li�u kh�ng ��y?",4,
"Ta mu�n l�m B�nh Kem Tr�i C�y/lambanhkem",
"Ta mu�n l�m B�nh Kem Socola/lambanhkem",
"Ta mu�n l�m B�nh Kem ��c Bi�t/lambanhkem",
--
"Xin l�i, ta s� quay l�i sau./no")
end



function lambanhkem(nsel)
i = nsel+1
if i == 1 then
		SayNew("Ch�n s� l��ng B�nh Kem mu�n l�m: ",5,
		"S� l��ng 1 B�nh Kem Tr�i C�y/ghep1_1",
		"S� l��ng 10 B�nh Kem Tr�i C�y/ghep1_1",
		"S� l��ng 20 B�nh Kem Tr�i C�y/ghep1_1",
		"S� l��ng 50 B�nh Kem Tr�i C�y/ghep1_1",
		"Xin l�i, ta �ang b�n/no")
elseif i == 2 then
		SayNew("Ch�n s� l��ng B�nh Kem mu�n l�m: ",5,
		"S� l��ng 1 B�nh Kem Socola/ghep1_2",
		"S� l��ng 10 B�nh Kem Socola/ghep1_2",
		"S� l��ng 20 B�nh Kem Socola/ghep1_2",
		"S� l��ng 50 B�nh Kem Socola/ghep1_2",
		"Xin l�i, ta �ang b�n/no")
elseif i == 3 then
		SayNew("Ch�n s� l��ng B�nh Kem mu�n l�m: ",5,
		"S� l��ng 1 B�nh Kem ��c Bi�t/ghep1_3",
		"S� l��ng 10 B�nh Kem ��c Bi�t/ghep1_3",
		"S� l��ng 20 B�nh Kem ��c Bi�t/ghep1_3",
		"S� l��ng 50 B�nh Kem ��c Bi�t/ghep1_3",
		"Xin l�i, ta �ang b�n/no")
end
end

function ghep1_1(nsel)
n1 = GetItemCount(botmy)
n2 = GetItemCount(duong)
n3 = GetItemCount(trung)
n4 = GetItemCount(sua)
n5 = GetItemCount(traicay)
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
		DelItem(botmy)
		DelItem(duong)
		DelItem(trung)
		DelItem(sua)
		DelItem(traicay)
	end
	Pay(tienvan)
	if GetItemCount(botmy) == n1 - soluong and GetItemCount(duong) == n2 - soluong and GetItemCount(trung) == n3 - soluong and GetItemCount(sua) == n4 - soluong and GetItemCount(traicay) == n5 - soluong and GetCash() == cash - tienvan then
		for k=1,soluong do AddEventItem(banhtraicay) end
		Msg2Player("B�n nh�n ���c <color=yellow>"..soluong.."  B�nh Kem Tr�i C�y")
	else
		Talk(1,"","hack ha em")
	end
	
else
Talk(1,"","Ng��i ki�m tra l�i h�nh trang, h�nh nh� kh�ng �� s� l��ng nguy�n li�u l�m b�nh.")
end	
end



function ghep1_2(nsel)
n1 = GetItemCount(botmy)
n2 = GetItemCount(duong)
n3 = GetItemCount(trung)
n4 = GetItemCount(sua)
n5 = GetItemCount(socola)
cash = GetCash()
soluong = 1
if nsel == 1 then
soluong = 10
elseif nsel == 2 then
soluong = 20
elseif nsel == 3 then
soluong = 50
end
tienvan = soluong * 10000

if n1 >= soluong and n2  >= soluong and n3  >= soluong and n4  >= soluong and n5  >= soluong and cash > tienvan then
	for i=1,soluong do 
		DelItem(botmy)
		DelItem(duong)
		DelItem(trung)
		DelItem(sua)
		DelItem(socola)
	end
	Pay(tienvan)
	if GetItemCount(botmy) == n1 - soluong and GetItemCount(duong) == n2 - soluong and GetItemCount(trung) == n3 - soluong and GetItemCount(sua) == n4 - soluong and GetItemCount(socola) == n5 - soluong and GetCash() == cash - tienvan then
		for k=1,soluong do AddEventItem(banhsocola) end
		Msg2Player("B�n nh�n ���c <color=yellow>"..soluong.."  B�nh Kem Chocolate")
	else
		Talk(1,"","hack ha em")
	end
	
else
Talk(1,"","Ng��i ki�m tra l�i h�nh trang, h�nh nh� kh�ng �� s� l��ng nguy�n li�u l�m b�nh.")
end	
end


function ghep1_3(nsel)
n1 = GetItemCount(botmy)
n2 = GetItemCount(duong)
n3 = GetItemCount(trung)
n4 = GetItemCount(sua)
n5 = GetItemCount(traicay)
n6 = GetItemCount(bo)

soluong = 1
if nsel == 1 then
soluong = 10
elseif nsel == 2 then
soluong = 20
elseif nsel == 3 then
soluong = 50
end

if n1 >= soluong and n2  >= soluong and n3  >= soluong and n4  >= soluong and n5  >= soluong and n6 >= soluong then
	for i=1,soluong do 
		DelItem(botmy)
		DelItem(duong)
		DelItem(trung)
		DelItem(sua)
		DelItem(traicay)
		DelItem(bo)
	end
	if GetItemCount(botmy) == n1 - soluong and GetItemCount(duong) == n2 - soluong and GetItemCount(trung) == n3 - soluong and GetItemCount(sua) == n4 - soluong and GetItemCount(traicay) == n5 - soluong and GetItemCount(bo) == n6 - soluong then
		for k=1,soluong do AddEventItem(banhdacbiet) end
		Msg2Player("B�n nh�n ���c <color=yellow>"..soluong.."  B�nh Kem ��c Bi�t")
	else
		Talk(1,"","hack ha em")
	end
	
else
Talk(1,"","Ng��i ki�m tra l�i h�nh trang, h�nh nh� kh�ng �� s� l��ng nguy�n li�u l�m b�nh.")
end	
end



function no()

end
