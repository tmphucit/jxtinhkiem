Include("\\script\\lib\\thuvien.lua")

samngoclinh = 677
namlinhchi = 678
kynam = 680
dongtrunghathao = 681

ancungnguuhoan = 684

khaihoandan = 682
truongsinhdan = 683

function main()
SayNew("<color=green>ThÇn Y Hoa §µ<color>: VÞ thiÕu hiÖp nµy mÆt mµy tr«ng kh«ng ®­îc tèt l¾m, cã cÇn ta b¾t m¹ch cho kh«ng?",7,
"ChÕ t¹o Kh¶i Hoµn §an/chetao1",
"ChÕ t¹o Tr­êng Sinh §an/chetao1",
"Mua An Cung Ng­u Hoµn/muaxxx",
"Gia h¹n sù kiÖn/giahan",
"Ta muèn phÇn th­ëng Mèc Sù KiÖn /ptmoc",
"§Õn Bµn T¬ §éng /movebantodong",
"Xin lçi, ta sÏ quay l¹i sau./no")
end

function muaxxx()
SayNew("C¸c h¹ cÇn th¶o d­îc An Cung Ng­u Hoµn ®Ó ch÷a bÖnh sao?",5,
"Mua 40 c¸i = 10 vµng /muaxxx1_1",
"Mua 80 c¸i = 20 vµng /muaxxx1_2",
"Mua 10 c¸i = 25 v¹n /muaxxx2_1",
"Mua 100 c¸i = 250 v¹n /muaxxx2_2",
"Tho¸t./no")
end


function muaxxx1_1()
sl = GetTask(99)
if GetTask(99) < 10 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 10 vµng, kh«ng thÓ mua !")
return
end

SetTask(99, GetTask(99) - 10)
SetTask(101, GetTask(101) - 10)

if GetTask(99) == sl - 10 then
	for k=1,40 do AddEventItem(684) end
	Msg2Player("B¹n nhËn ®­îc 40 An Cung Ng­u Hoµn")
	inlog4("[10] "..GetAccount().." - "..GetName().."")
	Talk(0,"")
else
	Talk(1,"","Hack ha em")
end
end
function muaxxx1_2()
sl = GetTask(99)
if GetTask(99) < 20 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 20 vµng, kh«ng thÓ mua !")
return
end

SetTask(99, GetTask(99) - 20)
SetTask(101, GetTask(101) - 20)

if GetTask(99) == sl - 20 then
	for k=1,80 do AddEventItem(684) end
	Msg2Player("B¹n nhËn ®­îc 80 An Cung Ng­u Hoµn")
	inlog4("[20] "..GetAccount().." - "..GetName().."")
	Talk(0,"")
else
	Talk(1,"","Hack ha em")
end
end


function muaxxx2_1()
sl = GetCash()
if sl < 250000 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 25 v¹n, kh«ng thÓ mua !")
return
end
Pay(250000)

if GetCash() == sl - 250000 then
	for k=1,10 do AddEventItem(684) end
	Msg2Player("B¹n nhËn ®­îc 10 An Cung Ng­u Hoµn")
	inlog3("[25] "..GetAccount().." - "..GetName().."")
	Talk(0,"")
else
	Talk(1,"","Hack ha em")
end
end
function muaxxx2_2()
sl = GetCash()
if sl < 2500000 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 250 v¹n, kh«ng thÓ mua !")
return
end
Pay(2500000)

if GetCash() == sl - 2500000 then
	for k=1,100 do AddEventItem(684) end
	Msg2Player("B¹n nhËn ®­îc 100 An Cung Ng­u Hoµn")
	inlog3("[250] "..GetAccount().." - "..GetName().."")
	Talk(0,"")
else
	Talk(1,"","Hack ha em")
end
end

function ptmoc()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ nhËn phÇn th­ëng!")
	return
end



if GetTask(936) < 10 then
	if GetTask(932) >= 2000000 then
		SetTask(936, 10)
		
		
			
		
		
		sxitem = random(1,100)
		if sxitem < 50 then
				idxitem = AddEventItem(random(0,1))
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 1 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Free 500] "..GetNameItemBox(idxitem).."")
		else
				sx = random(1,100)
				if sx < 30 then
					idxitem = AddItem(0,4,random(4,5),1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 1 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
				elseif sx < 60 then
					idxitem = AddItem(0,9,5,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 1 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
				elseif sx < 80 then	
					idxitem = AddItem(0,3,random(5,6),1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 1 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
				else
					idxitem = AddItem(0,2,31,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 1 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")	
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")			
				end		
		end
	else
			Msg2Player("§iÒu kiÖn nhËn th­ëng kh«ng ®ñ: "..GetTask(932).."000 / 2.000.000.000")
	end
elseif GetTask(936) < 20 then
if GetTask(932) >= 4000000 then
		SetTask(936, 20)
				AddEventItem(685)
				

				if GetGlbMissionV(37) == 1111 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,9,4,1,0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 2 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." + VÐ Tham Dù TuyÖt ThÕ Anh hïng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 2222 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,2,32,2,0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 2 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." + VÐ Tham Dù TuyÖt ThÕ Anh hïng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 3333 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,4,3,random(2,9),0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 2 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." + VÐ Tham Dù TuyÖt ThÕ Anh hïng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 4444 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,3,3,random(2,9),0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 2 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." + VÐ Tham Dù TuyÖt ThÕ Anh hïng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 5555 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,3,4,random(2,9),0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 2 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." + VÐ Tham Dù TuyÖt ThÕ Anh hïng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 6666 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,9,3,random(2,9),0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 2 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." + VÐ Tham Dù TuyÖt ThÕ Anh hïng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 7777 then
							SetGlbMissionV(37, 0)
							dq = random(1,5)
							if dq == 1 then
								idxitem = AddItem(0,7,15,random(2,9),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 2 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." + VÐ Tham Dù TuyÖt ThÕ Anh hïng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							elseif dq == 2 then
								idxitem = AddItem(0,2,30,random(2,9),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 2 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." + VÐ Tham Dù TuyÖt ThÕ Anh hïng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							elseif dq == 3 then
								idxitem = AddItem(0,5,5,random(2,9),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 2 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." + VÐ Tham Dù TuyÖt ThÕ Anh hïng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							elseif dq == 4 then
								idxitem = AddItem(0,6,3,random(2,9),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 2 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." + VÐ Tham Dù TuyÖt ThÕ Anh hïng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							elseif dq == 5 then
								idxitem = AddItem(0,8,3,random(2,9),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 2 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." + VÐ Tham Dù TuyÖt ThÕ Anh hïng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							end
							return
					end
				

				sx = random(1,100)
				if sx < 30 then
					idxitem = AddItem(0,4,random(4,5),1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 2 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." + VÐ Tham Dù TuyÖt ThÕ Anh hïng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
				elseif sx < 60 then
					idxitem = AddItem(0,9,5,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 2 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." + VÐ Tham Dù TuyÖt ThÕ Anh hïng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
				elseif sx < 80 then	
					idxitem = AddItem(0,3,random(5,6),1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 2 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." + VÐ Tham Dù TuyÖt ThÕ Anh hïng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
				else
					idxitem = AddItem(0,2,31,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." nhËn Mèc 2 - Sù KiÖn Covid-19 ®­îc: <color=yellow>"..GetNameItemBox(idxitem).." + VÐ Tham Dù TuyÖt ThÕ Anh hïng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")			
				end		
				
	else
			Msg2Player("§iÒu kiÖn nhËn th­ëng kh«ng ®ñ: "..GetTask(932).."000 / 4.000.000.000")
	end	
else	
		Msg2Player("B¹n ®· nhËn ®ñ toµn bé phÇn th­ëng mèc Sù KiÖn Covid-19")
end
end
function giahan()
SayNew("Ng­¬i ch¾c ch¾n muèn dïng <color=yellow>5 Kim Nguyªn B¶o<color> ®Ó gia h¹n sù kiÖn?",2,
"Ta ch¾c ch¾n muèn gia h¹n /giahan2",
"Tho¸t./no")
end
function giahan2()

if GetItemCount(17) < 5 then
Talk(1,"","Ng­¬i kh«ng mang theo 5 Kim Nguyªn B¶o, kh«ng thÓ gia h¹n")
return
end

if GetTask(933) >= 1 then
Talk(1,"","B¹n ®· ®¹t gia h¹n tèi ®a, kh«ng thÓ gia h¹n thªm")
return
end

for i=1,5 do DelItem(17) end

SetTask(933, GetTask(933) + 1)
Msg2Player("Chóc mõng b¹n ®· th¨ng cÊp Sù KiÖn Covid-19 lªn: <color=pink>Gia H¹n "..GetTask(933).."")
inlog5("Gia han "..GetTask(933).." - "..GetAccount().." - "..GetName().."")

end


function movebantodong()
SayNew("Bµn T¬ §éng lµ n¬i nguy hiÓm cã rÊt nhiÒu dÞ nh©n dïng ®éc giÕt ng­êi kh«ng gím tay, ng­¬i cã ch¾c ch¾n muèn ®Õn chø?",5,
"Cæng 1 /movebantodong1",
"Cæng 2 /movebantodong1",
"Cæng 3 /movebantodong1",
"Cæng 4 /movebantodong1",
"Tho¸t./no")
end

function movebantodong1(nsel)
if GetItemCount(686) == 0 then
Talk(1,"","Ta thÊy ng­¬i ch­a ®ñ m¹nh, h·y mang Covid S¸t Bµi ®Õn gÆp ta.")
return
end

sx = nsel + 1
AddSkillEffect(504,1,3*18)
SetFightState(1)
SetLogoutRV(1)
DelItem(686)
if sx == 1 then
NewWorld(77, 1527,3228)
elseif sx == 2 then
NewWorld(77, 1626,3230)
elseif sx == 3 then
NewWorld(77, 1675,3346)
elseif sx == 4 then
NewWorld(77, 1514,3355)
end
end


function chetao1(nsel)
i = nsel+1
if i == 1 then
		OpenStringBox(2,"NhËp sè l­îng","chetao2_1")
elseif i == 2 then
		OpenStringBox(2,"NhËp sè l­îng","chetao2_2")
end
end

function chetao2_1(num2)
soluong = tonumber(num2)
if (soluong == 0) then
 return
end 

n1 = GetItemCount(samngoclinh)
n2 = GetItemCount(namlinhchi)
n3 = GetItemCount(kynam)
n4 = GetItemCount(dongtrunghathao)
cash = GetCash()

tienvan = soluong * 5000

if n1 >= soluong and n2  >= soluong and n3  >= soluong and n4  >= soluong and cash > tienvan then
	for i=1,soluong do 
		DelItem(samngoclinh)
		DelItem(namlinhchi)
		DelItem(kynam)
		DelItem(dongtrunghathao)
	end
	Pay(tienvan)
	if GetItemCount(samngoclinh) == n1 - soluong and GetItemCount(namlinhchi) == n2 - soluong and GetItemCount(kynam) == n3 - soluong and GetItemCount(dongtrunghathao) == n4 - soluong and GetCash() == cash - tienvan then
		for k=1,soluong do AddEventItem(khaihoandan) end
		Msg2Player("B¹n nhËn ®­îc <color=yellow>"..soluong.."  Kh¶i Hoµn §an")
	else
		Talk(1,"","hack ha em")
	end
	
else
Talk(1,"","Ng­¬i kiÓm tra l¹i hµnh trang, h×nh nh­ kh«ng ®ñ sè l­îng nguyªn liÖu lµm thuèc.")
end	
end



function chetao2_2(num2)
soluong = tonumber(num2)
if (soluong == 0) then
return 
end 

n1 = GetItemCount(samngoclinh)
n2 = GetItemCount(namlinhchi)
n3 = GetItemCount(kynam)
n4 = GetItemCount(dongtrunghathao)
n5 = GetItemCount(ancungnguuhoan)
cash = GetCash()

tienvan = soluong * 5000

if n1 >= soluong and n2  >= soluong and n3  >= soluong and n4  >= soluong and n5  >= soluong and cash > tienvan then
	for i=1,soluong do 
		DelItem(samngoclinh)
		DelItem(namlinhchi)
		DelItem(kynam)
		DelItem(dongtrunghathao)
		DelItem(ancungnguuhoan)
	end
	Pay(tienvan)
	if GetItemCount(samngoclinh) == n1 - soluong and GetItemCount(namlinhchi) == n2 - soluong and GetItemCount(kynam) == n3 - soluong and GetItemCount(dongtrunghathao) == n4 - soluong and GetItemCount(ancungnguuhoan) == n5 - soluong and GetCash() == cash - tienvan then
		for k=1,soluong do AddEventItem(truongsinhdan) end
		Msg2Player("B¹n nhËn ®­îc <color=yellow>"..soluong.." Tr­êng Sinh §an")
	else
		Talk(1,"","hack ha em")
	end
	
else
Talk(1,"","Ng­¬i kiÓm tra l¹i hµnh trang, h×nh nh­ kh«ng ®ñ sè l­îng nguyªn liÖu lµm thuèc.")
end	
end



function no()
end

function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logGiaHanCovid.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlog3(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/muaAnCungNguuHoan_VAN.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlog4(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/muaAnCungNguuHoan-VANG.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlogMocEvent(text)
thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/MocSuKienCovid.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..text.." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
end
