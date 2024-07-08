Include("\\script\\lib\\thuvien.lua")

function main()
SayNew("<color=green>Ch� Cu�i<color>: C� ��i ta l��ng thi�n, ���c th�n ti�n chi�u c�, ch� v� ch�t sai l�m c�a v� ta m� ta ph�i tr� gi� ��n b�y gi� ...\n<color=yellow>Qu� b�ng h�u ��n ��y c�n ta gi�p g�?",3,
"Gh�p L�ng ��n /gheplongden",
"Mua Gi�y Ki�ng /muagiaykieng",
"Tho�t./no")
end
function no()
end

function gheplongden()
SayNew("<color=green>Ch� Cu�i<color>: Ch�n lo�i l�ng ��n mu�n gh�p",5,
"L�ng ��n Ng�i Sao /gheplongden1",
"L�ng ��n B��m B��m /gheplongden1",
"L�ng ��n Tr�n/gheplongden1",
"L�ng ��n K�o Qu�n /gheplongden1",
"Tho�t./no")
end



function gheplongden1(nsel)
SetTaskTemp(1,nsel+1)
OpenStringBox(2,"Nh�p s� l��ng","gheplongden2")
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
Talk(1,"","T�i �a 100 L�ng ��n / 1 l�n gh�p")
return
end
if CheckFreeBoxItem(4,725,1,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
	return
end
if GetTaskTemp(1) == 0 or GetTaskTemp(1) > 4 then
	Talk(1,"","L�i v� tr� "..GetTaskTemp(1)..", li�n h� Admin g�p")
	return
end
loai = GetTaskTemp(1)

nl = 0
vang = 0
if loai == 1 then
	nl = 125
	vang = 2000
	ItemIdx = 140
	ItemName = "L�ng ��n Ng�i Sao"
elseif loai == 2 then
	nl = 123
	vang = 5000
	ItemIdx = 139
	ItemName = "L�ng ��n B��m B��m"
elseif loai == 3 then
	nl = 126
	vang = 5000
	ItemIdx = 142
	ItemName = "L�ng ��n Tr�n"
elseif loai == 4 then
	nl = 127
	vang = 5000
	ItemIdx = 725
	ItemName = "L�ng ��n K�o Qu�n"
end
if vang == 0 then
return
end


if GetItemCount(136) < num or GetItemCount(137) < num or GetItemCount(138) < num or GetItemCount(nl) < num or GetCash() < vang*num then
Talk(1,"","Nguy�n li�u kh�ng �� "..num.." b�, vui l�ng ki�m tra l�i")
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
	Msg2Player("B�n nh�n ���c "..soluong.." "..ItemName.."")
end
end



function muagiaykieng()
SayNew("<color=green>Ch� Cu�i<color>: Ng��i mu�n mua lo�i n�o?",5,
"50 Gi�y Ki�ng Cam = 10 Ti�n ��ng /muagiaykieng1",
"100 Gi�y Ki�ng Cam = 20 Ti�n ��ng /muagiaykieng1",
"50 Gi�y Ki�ng �� = 10 v�n l��ng/muagiaykieng2",
"100 Gi�y Ki�ng �� = 20 v�n l��ng/muagiaykieng2",
"Tho�t./no")
end

function muagiaykieng1(nsel)
if CheckFreeBoxItem(4,725,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
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
	Msg2Player("B�n nh�n ���c "..soluong.." Gi�y Ki�ng Cam")
	inlog("["..vang.."] "..GetAccount().." - ["..GetName().."]")
else
	Talk(1,"","Ng��i kh�ng mang �� "..vang.." Ti�n ��ng, kh�ng th� mua")
end
end
function muagiaykieng2(nsel)
if CheckFreeBoxItem(4,725,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
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
	Msg2Player("B�n nh�n ���c "..soluong.." Gi�y Ki�ng �� ")
	inlog2("["..vang.."] "..GetAccount().." - ["..GetName().."]")
else
	Talk(1,"","Ng��i kh�ng mang �� "..vang.." l��ng, kh�ng th� mua")
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