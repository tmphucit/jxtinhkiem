

function main()
SayNew("K� n�ng l�m b�nh c�a ph� th�n ta th� 2 th� kh�ng ai th� nh�t v� �� d�.",3,
"Ta mu�n mua B� /mua1",
"Ta mu�n mua Socola/mua1",
"Kh�ng c� g� /no")
end


function mua1(nsel)
i = nsel + 1
if i == 1 then
SayNew("Ng��i mu�n mua nh� th� n�o? ",3,
"25 B� = 10 v�ng/mua1_1",
"50 B� = 20 v�ng/mua1_1",
"Tho�t./no")
elseif i == 2 then
SayNew("Ng��i mu�n mua nh� th� n�o? ",3,
"100 Socola = 10 v�ng/mua1_2",
"100 Socola = 50 v�n l��ng/mua1_3",
"Tho�t./no")
end
end

function mua1_1(nsel)
i = nsel + 1
soluong = 0
gia = 0

if i == 1 then
soluong = 25
gia = 10
elseif i == 2 then
soluong = 50
gia = 20
end
if soluong == 0 or gia == 0 then
return
end


if GetTask(99) >= gia then
	SetTask(99, GetTask(99) - gia)
	SetTask(101, GetTask(101) - gia)
	
	for i=1,soluong do AddEventItem(663) end
	Msg2Player("B�n nh�n ���c "..soluong.." B� !")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/ThieuNhi_Vang.txt", "a");
	if LoginLog then
	write(LoginLog,"["..gia.."][Bo] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
else
	Talk(1,"","Ng��i kh�ng �� "..gia.." v�ng �� mua v�t ph�m !")
end
end


function mua1_2()
soluong = 100
gia = 10


if GetTask(99) >= gia then
	SetTask(99, GetTask(99) - gia)
	SetTask(101, GetTask(101) - gia)
	
	for i=1,soluong do AddEventItem(664) end
	Msg2Player("B�n nh�n ���c "..soluong.." Socola !")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/ThieuNhi_Vang.txt", "a");
	if LoginLog then
	write(LoginLog,"["..gia.."][Socola] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
else
	Talk(1,"","Ng��i kh�ng �� "..gia.." v�ng �� mua v�t ph�m !")
end
end


function mua1_3()
soluong = 100
gia = 500000

if GetCash() >= gia then
	Pay(gia)
	
	for i=1,soluong do AddEventItem(664) end
	Msg2Player("B�n nh�n ���c "..soluong.." Socola !")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/ThieuNhi_Van.txt", "a");
	if LoginLog then
	write(LoginLog,"["..gia.."][Socola] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
else
	Talk(1,"","Ng��i kh�ng �� "..gia.." l��ng �� mua v�t ph�m !")
end
end


function no()

end



