Include("\\script\\lib\\thuvien.lua")

function main()
Talk(1,"","S� ki�n �� k�t th�c ")
end
function main_()
SayNew("<color=green>Ch� ti�m v�i:<color> Ng��i mu�n ta gi�p g�?",4,
"Gh�p L� C� Vi�t Nam /gheplongden",
"Mua Thanh Tre /muathanhtre",
"Gia h�n s� ki�n /giahan",
"Tho�t./no")
end
function giahan()
SayNew("<color=green>Ch� ti�m v�i:<color> Gia h�n s� ki�n m�t ph� 50 Ti�n ��ng, ng��i th�y sao?",2,
"Ta ch�c ch�n mu�n gia h�n s� ki�n/giahan1",
"Tho�t./no")
end

function giahan1()
if GetTask(933) > 0 then
	Talk(1,"","Gi�i h�n s� ki�n c�a b�n �� ��t m�c t�i �a <color=yellow>1 l�n<color> !")
	return
end

vang = GetItemCount(697)
if vang >= 50 then
	for k=1,50 do DelItem(697) end	
	if GetItemCount(697) == vang - 50 then
		SetTask(933, 1)
		Msg2Player("B�n �� gia h�n s� ki�n Qu�c Kh�nh l�n <color=yellow>"..GetTask(933).." l�n")
		inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().."")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng��i kh�ng �� 50 Ti�n ��ng �� gia h�n s� ki�n")
end
end

function muathanhtre()
SayNew("<color=green>Ch� ti�m v�i:<color> Ng��i c� ch�c ch�n mu�n mua <color=yellow>100 Thanh Tre<color> b�ng <color=yellow>10 Ti�n ��ng<color> kh�ng?",2,
"Ta mu�n mua 100 Thanh Tre /muathanhtre1",
"Ta mu�n mua 200 Thanh Tre /muathanhtre2",
"Tho�t./no")
end

function muathanhtre1()
tiendong = GetItemCount(697)
if tiendong < 10 then
Talk(1,"","Ng��i kh�ng mang �� 10 Ti�n ��ng, kh�ng th� mua")
return
end
if CheckFreeBoxItem(4,717,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
return
end

for k=1,10 do DelItem(697) end
if GetItemCount(697) == tiendong - 10 then
	for i=1,100 do AddEventItem(716) end
	Msg2Player("B�n nh�n ���c 100 Thanh Tre")
	inlog2("[10 Vang] "..GetAccount().." - "..GetName().."")
	Talk(0,"")
else
	Talk(1,"","Hack ha em")
end
end


function muathanhtre2()
tiendong = GetItemCount(697)
if tiendong < 20 then
Talk(1,"","Ng��i kh�ng mang �� 20 Ti�n ��ng, kh�ng th� mua")
return
end
if CheckFreeBoxItem(4,717,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
return
end

for k=1,20 do DelItem(697) end
if GetItemCount(697) == tiendong - 20 then
	for i=1,200 do AddEventItem(716) end
	Msg2Player("B�n nh�n ���c 200 Thanh Tre")
	inlog2("[20 Vang] "..GetAccount().." - "..GetName().."")
	Talk(0,"")
else
	Talk(1,"","Hack ha em")
end
end

function gheplongden()
OpenStringBox(2,"Nh�p s� l��ng","gheplongden1")
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
Talk(1,"","T�i �a 100 L� C� Vi�t Nam / 1 l�n gh�p")
return
end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end


if GetItemCount(711) < num or GetItemCount(712) < num or GetItemCount(713) < num or GetItemCount(714) < num or GetItemCount(715) < num or GetItemCount(716) < num then
Talk(1,"","Nguy�n li�u kh�ng �� "..num.." b�, vui l�ng ki�m tra l�i")
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
	Msg2Player("B�n nh�n ���c "..soluong.." L� C� Vi�t Nam")
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