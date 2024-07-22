Include("\\script\\lib\\thuvien.lua")

function main()
SayNew("<color=green>Chó Cuéi<color>: C¶ ®êi ta l­¬ng thiÖn, ®­îc thÇn tiªn chiÕu cè, chØ v× chót sai lÇm cña vî ta mµ ta ph¶i tr¶ gi¸ ®Õn b©y giê ...\n<color=yellow>Quý b»ng h÷u ®Õn ®©y cÇn ta gióp g×?",3,
"GhÐp Lång §Ìn /gheplongden",
"Mua GiÊy KiÕng /muagiaykieng",
"Tho¸t./no")
end
function no()
end

function gheplongden()
SayNew("<color=green>Chó Cuéi<color>: Chän lo¹i lång ®Ìn muèn ghÐp",5,
"Lång §Ìn Ng«i Sao /gheplongden1",
"Lång §Ìn B­¬m B­ím /gheplongden1",
"Lång §Ìn Trßn/gheplongden1",
"Lång §Ìn KÐo Qu©n /gheplongden1",
"Tho¸t./no")
end



function gheplongden1(nsel)
SetTaskTemp(1,nsel+1)
OpenStringBox(2,"NhËp sè l­îng","gheplongden2")
end

function gheplongden2(num2)
if num2 == "" then
return
end
num = tonumber(num2)
if num == 0 then
return
end
if num > 100 then
Talk(1,"","Tèi ®a 100 Lång §Ìn / 1 lÇn ghÐp")
return
end
if CheckFreeBoxItem(4,725,1,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
	return
end
if GetTaskTemp(1) == 0 or GetTaskTemp(1) > 4 then
	Talk(1,"","Lçi vÞ trÝ "..GetTaskTemp(1)..", liªn hÖ Admin gÊp")
	return
end
loai = GetTaskTemp(1)

nl = 0
vang = 0
if loai == 1 then
	nl = 125
	vang = 2000
	ItemIdx = 140
	ItemName = "Lång §Ìn Ng«i Sao"
elseif loai == 2 then
	nl = 123
	vang = 5000
	ItemIdx = 139
	ItemName = "Lång §Ìn B­¬m B­ím"
elseif loai == 3 then
	nl = 126
	vang = 5000
	ItemIdx = 142
	ItemName = "Lång §Ìn Trßn"
elseif loai == 4 then
	nl = 127
	vang = 5000
	ItemIdx = 725
	ItemName = "Lång §Ìn KÐo Qu©n"
end
if vang == 0 then
return
end


if GetItemCount(136) < num or GetItemCount(137) < num or GetItemCount(138) < num or GetItemCount(nl) < num or GetCash() < vang*num then
Talk(1,"","Nguyªn liÖu kh«ng ®ñ "..num.." bé, vui lßng kiÓm tra l¹i")
return
end

soluong = 0
for i=1,num do
	DelItem(136)
	DelItem(137)
	DelItem(138)
	DelItem(nl)
	Pay(vang)
	AddEventItem(ItemIdx)
	soluong = soluong + 1
end

if soluong > 0 then
	Msg2Player("B¹n nhËn ®­îc "..soluong.." "..ItemName.."")
end
end



function muagiaykieng()
SayNew("<color=green>Chó Cuéi<color>: Ng­¬i muèn mua lo¹i nµo?",5,
"50 GiÊy KiÕng Cam = 10 TiÒn §ång /muagiaykieng1",
"100 GiÊy KiÕng Cam = 20 TiÒn §ång /muagiaykieng1",
"50 GiÊy KiÕng §á = 10 v¹n l­îng/muagiaykieng2",
"100 GiÊy KiÕng §á = 20 v¹n l­îng/muagiaykieng2",
"Tho¸t./no")
end

function muagiaykieng1(nsel)
if CheckFreeBoxItem(4,725,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
return
end
i = nsel + 1
soluong = 0
vang = 0
if i == 1 then
soluong = 50
vang = 10
elseif i == 2 then
soluong = 100
vang = 20
end
if soluong == 0 then
return
end

if GetItemCount(697) >= vang then
	for k=1,vang do DelItem(697) end
	for k=1,soluong do AddEventItem(127) end
	Msg2Player("B¹n nhËn ®­îc "..soluong.." GiÊy KiÕng Cam")
	inlog("["..vang.."] "..GetAccount().." - ["..GetName().."]")
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ "..vang.." TiÒn §ång, kh«ng thÓ mua")
end
end
function muagiaykieng2(nsel)
if CheckFreeBoxItem(4,725,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
return
end
i = nsel + 1
soluong = 0
vang = 0
if i == 3 then
soluong = 50
vang = 100000
elseif i == 4 then
soluong = 100
vang = 200000
end
if soluong == 0 then
return
end

if GetCash() >= vang then
	Pay(vang)
	for k=1,soluong do AddEventItem(126) end
	Msg2Player("B¹n nhËn ®­îc "..soluong.." GiÊy KiÕng §á ")
	inlog2("["..vang.."] "..GetAccount().." - ["..GetName().."]")
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ "..vang.." l­îng, kh«ng thÓ mua")
end
end



function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/MuaGiayCam.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlog2(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/MuaGiayDo.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end