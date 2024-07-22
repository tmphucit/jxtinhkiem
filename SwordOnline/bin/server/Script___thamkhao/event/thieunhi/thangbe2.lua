

function main()
SayNew("Kü n¨ng lµm b¸nh cña phô th©n ta thø 2 th× kh«ng ai thø nhÊt vÒ ®é dì.",3,
"Ta muèn mua B¬ /mua1",
"Ta muèn mua Socola/mua1",
"Kh«ng cã g× /no")
end


function mua1(nsel)
i = nsel + 1
if i == 1 then
SayNew("Ng­¬i muèn mua nh­ thÕ nµo? ",3,
"25 B¬ = 10 vµng/mua1_1",
"50 B¬ = 20 vµng/mua1_1",
"Tho¸t./no")
elseif i == 2 then
SayNew("Ng­¬i muèn mua nh­ thÕ nµo? ",3,
"100 Socola = 10 vµng/mua1_2",
"100 Socola = 50 v¹n l­îng/mua1_3",
"Tho¸t./no")
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
	Msg2Player("B¹n nhËn ®­îc "..soluong.." B¬ !")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/ThieuNhi_Vang.txt", "a");
	if LoginLog then
	write(LoginLog,"["..gia.."][Bo] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
else
	Talk(1,"","Ng­¬i kh«ng ®ñ "..gia.." vµng ®Ó mua vËt phÈm !")
end
end


function mua1_2()
soluong = 100
gia = 10


if GetTask(99) >= gia then
	SetTask(99, GetTask(99) - gia)
	SetTask(101, GetTask(101) - gia)
	
	for i=1,soluong do AddEventItem(664) end
	Msg2Player("B¹n nhËn ®­îc "..soluong.." Socola !")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/ThieuNhi_Vang.txt", "a");
	if LoginLog then
	write(LoginLog,"["..gia.."][Socola] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
else
	Talk(1,"","Ng­¬i kh«ng ®ñ "..gia.." vµng ®Ó mua vËt phÈm !")
end
end


function mua1_3()
soluong = 100
gia = 500000

if GetCash() >= gia then
	Pay(gia)
	
	for i=1,soluong do AddEventItem(664) end
	Msg2Player("B¹n nhËn ®­îc "..soluong.." Socola !")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/ThieuNhi_Van.txt", "a");
	if LoginLog then
	write(LoginLog,"["..gia.."][Socola] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
else
	Talk(1,"","Ng­¬i kh«ng ®ñ "..gia.." l­îng ®Ó mua vËt phÈm !")
end
end


function no()

end



