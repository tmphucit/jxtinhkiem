Include("\\script\\lib\\thuvien.lua")

function main()
Talk(1,"","Sù kiÖn ®· kÕt thóc ")
end
function main_()
SayNew("<color=green>Chñ tiÖm v¶i:<color> Ng­¬i muèn ta gióp g×?",4,
"GhÐp L¸ Cê ViÖt Nam /gheplongden",
"Mua Thanh Tre /muathanhtre",
"Gia h¹n sù kiÖn /giahan",
"Tho¸t./no")
end
function giahan()
SayNew("<color=green>Chñ tiÖm v¶i:<color> Gia h¹n sù kiÖn mÊt phÝ 50 TiÒn §ång, ng­¬i thÊy sao?",2,
"Ta ch¾c ch¾n muèn gia h¹n sù kiÖn/giahan1",
"Tho¸t./no")
end

function giahan1()
if GetTask(933) > 0 then
	Talk(1,"","Giíi h¹n sù kiÖn cña b¹n ®· ®¹t mèc tèi ®a <color=yellow>1 lÇn<color> !")
	return
end

vang = GetItemCount(697)
if vang >= 50 then
	for k=1,50 do DelItem(697) end	
	if GetItemCount(697) == vang - 50 then
		SetTask(933, 1)
		Msg2Player("B¹n ®· gia h¹n sù kiÖn Quèc Kh¸nh lªn <color=yellow>"..GetTask(933).." lÇn")
		inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().."")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng­¬i kh«ng ®ñ 50 TiÒn §ång ®Ó gia h¹n sù kiÖn")
end
end

function muathanhtre()
SayNew("<color=green>Chñ tiÖm v¶i:<color> Ng­¬i cã ch¾c ch¾n muèn mua <color=yellow>100 Thanh Tre<color> b»ng <color=yellow>10 TiÒn §ång<color> kh«ng?",2,
"Ta muèn mua 100 Thanh Tre /muathanhtre1",
"Ta muèn mua 200 Thanh Tre /muathanhtre2",
"Tho¸t./no")
end

function muathanhtre1()
tiendong = GetItemCount(697)
if tiendong < 10 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 10 TiÒn §ång, kh«ng thÓ mua")
return
end
if CheckFreeBoxItem(4,717,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
return
end

for k=1,10 do DelItem(697) end
if GetItemCount(697) == tiendong - 10 then
	for i=1,100 do AddEventItem(716) end
	Msg2Player("B¹n nhËn ®­îc 100 Thanh Tre")
	inlog2("[10 Vang] "..GetAccount().." - "..GetName().."")
	Talk(0,"")
else
	Talk(1,"","Hack ha em")
end
end


function muathanhtre2()
tiendong = GetItemCount(697)
if tiendong < 20 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 20 TiÒn §ång, kh«ng thÓ mua")
return
end
if CheckFreeBoxItem(4,717,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
return
end

for k=1,20 do DelItem(697) end
if GetItemCount(697) == tiendong - 20 then
	for i=1,200 do AddEventItem(716) end
	Msg2Player("B¹n nhËn ®­îc 200 Thanh Tre")
	inlog2("[20 Vang] "..GetAccount().." - "..GetName().."")
	Talk(0,"")
else
	Talk(1,"","Hack ha em")
end
end

function gheplongden()
OpenStringBox(2,"NhËp sè l­îng","gheplongden1")
end

function gheplongden1(num2)
if num2 == "" then
return
end
num = tonumber(num2)
if num == 0 then
return
end
if num > 100 then
Talk(1,"","Tèi ®a 100 L¸ Cê ViÖt Nam / 1 lÇn ghÐp")
return
end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end


if GetItemCount(711) < num or GetItemCount(712) < num or GetItemCount(713) < num or GetItemCount(714) < num or GetItemCount(715) < num or GetItemCount(716) < num then
Talk(1,"","Nguyªn liÖu kh«ng ®ñ "..num.." bé, vui lßng kiÓm tra l¹i")
return
end

soluong = 0
for i=1,num do
	DelItem(711)
	DelItem(712)
	DelItem(713)
	DelItem(714)
	DelItem(715)
	DelItem(716)
	AddEventItem(717)
	soluong = soluong + 1
end

if soluong > 0 then
	Msg2Player("B¹n nhËn ®­îc "..soluong.." L¸ Cê ViÖt Nam")
end
end


function inlog2(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/MuaThanhTre_10Vang.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
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