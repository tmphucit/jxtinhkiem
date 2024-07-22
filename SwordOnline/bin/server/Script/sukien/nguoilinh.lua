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
SayNew("Chµo ®ång chÝ, chiÕn dÞch gi¶i phãng ®Êt n­íc ®ang trong ®µ chiÕn th¾ng. HiÖn t¹i qu©n trang ®ang thiÕu, ®ång chÝ cã muèn ®ãng gãp mét tay kh«ng?",4,
"Ta cã vµi bé muèn ®ãng gãp/ghep1",
"MÑ cña ®ång chÝ göi it Qu©n Trang ®ãng gãp/ghep2",
"Ta muèn gia h¹n sù kiÖn /giahan",
"Xin lçi, ta sÏ quay l¹i sau./no")
end

function ghep1()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end
SayNew("Chän sè l­îng qu©n trang muèn ®ãng gãp: ",5,
"Sè l­îng 1 bé/ghep1_1",
"Sè l­îng 10 bé/ghep1_1",
"Sè l­îng 20 bé/ghep1_1",
"Sè l­îng 50 bé/ghep1_1",
"Xin lçi, ta ®ang bËn/no")
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
		Msg2Player("B¹n nhËn ®­îc <color=yellow>"..soluong.."  ThiÖp Ng­êi LÝnh")
	else
		Talk(1,"","hack ha em")
	end
	
else
Talk(1,"","Ng­¬i kiÓm tra l¹i hµnh trang, h×nh nh­ kh«ng ®ñ sè l­îng muèn gãp")
end	
	
end


function ghep2()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end
SayNew("Chän sè l­îng qu©n trang muèn ®ãng gãp: ",5,
"Sè l­îng 1 bé/ghep2_1",
"Sè l­îng 10 bé/ghep2_1",
"Sè l­îng 20 bé/ghep2_1",
"Sè l­îng 50 bé/ghep2_1",
"Xin lçi, ta ®ang bËn/no")
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
			Msg2Player("B¹n nhËn ®­îc <color=yellow>"..soluong.."  ThiÖp Göi MÑ HiÒn")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng­¬i kiÓm tra l¹i hµnh trang, h×nh nh­ kh«ng ®ñ sè l­îng muèn gãp")
end	
	
end



function giahan()

if GetItemCount(17) < 5 then
Talk(1,"","Ng­¬i kh«ng mang theo 5 Kim Nguyªn B¶o, kh«ng thÓ gia h¹n")
return
end

if GetTask(903) >= 1 then
Talk(1,"","B¹n ®· ®¹t gia h¹n tèi ®a, kh«ng thÓ gia h¹n thªm")
return
end

for i=1,5 do DelItem(17) end

SetTask(903, GetTask(903) + 1)
Msg2Player("Chóc mõng b¹n ®· th¨ng cÊp Sù KiÖn Gi¶i Phãng MiÒn Nam 30-4 lªn: <color=pink>Gia H¹n "..GetTask(903).."")
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
