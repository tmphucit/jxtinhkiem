Include("\\script\\lib\\thuvien.lua")

samngoclinh = 677
namlinhchi = 678
kynam = 680
dongtrunghathao = 681

ancungnguuhoan = 684

khaihoandan = 682
truongsinhdan = 683

function main()
SayNew("<color=green>Th�n Y Hoa ��<color>: V� thi�u hi�p n�y m�t m�y tr�ng kh�ng ���c t�t l�m, c� c�n ta b�t m�ch cho kh�ng?",7,
"Ch� t�o Kh�i Ho�n �an/chetao1",
"Ch� t�o Tr��ng Sinh �an/chetao1",
"Mua An Cung Ng�u Ho�n/muaxxx",
"Gia h�n s� ki�n/giahan",
"Ta mu�n ph�n th��ng M�c S� Ki�n /ptmoc",
"��n B�n T� ��ng /movebantodong",
"Xin l�i, ta s� quay l�i sau./no")
end

function muaxxx()
SayNew("C�c h� c�n th�o d��c An Cung Ng�u Ho�n �� ch�a b�nh sao?",5,
"Mua 40 c�i = 10 v�ng /muaxxx1_1",
"Mua 80 c�i = 20 v�ng /muaxxx1_2",
"Mua 10 c�i = 25 v�n /muaxxx2_1",
"Mua 100 c�i = 250 v�n /muaxxx2_2",
"Tho�t./no")
end


function muaxxx1_1()
sl = GetTask(99)
if GetTask(99) < 10 then
Talk(1,"","Ng��i kh�ng mang �� 10 v�ng, kh�ng th� mua !")
return
end

SetTask(99, GetTask(99) - 10)
SetTask(101, GetTask(101) - 10)

if GetTask(99) == sl - 10 then
	for k=1,40 do AddEventItem(684) end
	Msg2Player("B�n nh�n ���c 40 An Cung Ng�u Ho�n")
	inlog4("[10] "..GetAccount().." - "..GetName().."")
	Talk(0,"")
else
	Talk(1,"","Hack ha em")
end
end
function muaxxx1_2()
sl = GetTask(99)
if GetTask(99) < 20 then
Talk(1,"","Ng��i kh�ng mang �� 20 v�ng, kh�ng th� mua !")
return
end

SetTask(99, GetTask(99) - 20)
SetTask(101, GetTask(101) - 20)

if GetTask(99) == sl - 20 then
	for k=1,80 do AddEventItem(684) end
	Msg2Player("B�n nh�n ���c 80 An Cung Ng�u Ho�n")
	inlog4("[20] "..GetAccount().." - "..GetName().."")
	Talk(0,"")
else
	Talk(1,"","Hack ha em")
end
end


function muaxxx2_1()
sl = GetCash()
if sl < 250000 then
Talk(1,"","Ng��i kh�ng mang �� 25 v�n, kh�ng th� mua !")
return
end
Pay(250000)

if GetCash() == sl - 250000 then
	for k=1,10 do AddEventItem(684) end
	Msg2Player("B�n nh�n ���c 10 An Cung Ng�u Ho�n")
	inlog3("[25] "..GetAccount().." - "..GetName().."")
	Talk(0,"")
else
	Talk(1,"","Hack ha em")
end
end
function muaxxx2_2()
sl = GetCash()
if sl < 2500000 then
Talk(1,"","Ng��i kh�ng mang �� 250 v�n, kh�ng th� mua !")
return
end
Pay(2500000)

if GetCash() == sl - 2500000 then
	for k=1,100 do AddEventItem(684) end
	Msg2Player("B�n nh�n ���c 100 An Cung Ng�u Ho�n")
	inlog3("[250] "..GetAccount().." - "..GetName().."")
	Talk(0,"")
else
	Talk(1,"","Hack ha em")
end
end

function ptmoc()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� nh�n ph�n th��ng!")
	return
end



if GetTask(936) < 10 then
	if GetTask(932) >= 2000000 then
		SetTask(936, 10)
		
		
			
		
		
		sxitem = random(1,100)
		if sxitem < 50 then
				idxitem = AddEventItem(random(0,1))
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 1 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Free 500] "..GetNameItemBox(idxitem).."")
		else
				sx = random(1,100)
				if sx < 30 then
					idxitem = AddItem(0,4,random(4,5),1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 1 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
				elseif sx < 60 then
					idxitem = AddItem(0,9,5,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 1 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
				elseif sx < 80 then	
					idxitem = AddItem(0,3,random(5,6),1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 1 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
				else
					idxitem = AddItem(0,2,31,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 1 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).."")	
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")			
				end		
		end
	else
			Msg2Player("�i�u ki�n nh�n th��ng kh�ng ��: "..GetTask(932).."000 / 2.000.000.000")
	end
elseif GetTask(936) < 20 then
if GetTask(932) >= 4000000 then
		SetTask(936, 20)
				AddEventItem(685)
				

				if GetGlbMissionV(37) == 1111 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,9,4,1,0,0,0)
							Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 2 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).." + V� Tham D� Tuy�t Th� Anh h�ng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 2222 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,2,32,2,0,0,0)
							Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 2 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).." + V� Tham D� Tuy�t Th� Anh h�ng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 3333 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,4,3,random(2,9),0,0,0)
							Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 2 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).." + V� Tham D� Tuy�t Th� Anh h�ng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 4444 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,3,3,random(2,9),0,0,0)
							Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 2 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).." + V� Tham D� Tuy�t Th� Anh h�ng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 5555 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,3,4,random(2,9),0,0,0)
							Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 2 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).." + V� Tham D� Tuy�t Th� Anh h�ng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 6666 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,9,3,random(2,9),0,0,0)
							Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 2 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).." + V� Tham D� Tuy�t Th� Anh h�ng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 7777 then
							SetGlbMissionV(37, 0)
							dq = random(1,5)
							if dq == 1 then
								idxitem = AddItem(0,7,15,random(2,9),0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 2 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).." + V� Tham D� Tuy�t Th� Anh h�ng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							elseif dq == 2 then
								idxitem = AddItem(0,2,30,random(2,9),0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 2 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).." + V� Tham D� Tuy�t Th� Anh h�ng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							elseif dq == 3 then
								idxitem = AddItem(0,5,5,random(2,9),0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 2 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).." + V� Tham D� Tuy�t Th� Anh h�ng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							elseif dq == 4 then
								idxitem = AddItem(0,6,3,random(2,9),0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 2 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).." + V� Tham D� Tuy�t Th� Anh h�ng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							elseif dq == 5 then
								idxitem = AddItem(0,8,3,random(2,9),0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 2 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).." + V� Tham D� Tuy�t Th� Anh h�ng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
							end
							return
					end
				

				sx = random(1,100)
				if sx < 30 then
					idxitem = AddItem(0,4,random(4,5),1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 2 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).." + V� Tham D� Tuy�t Th� Anh h�ng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
				elseif sx < 60 then
					idxitem = AddItem(0,9,5,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 2 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).." + V� Tham D� Tuy�t Th� Anh h�ng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
				elseif sx < 80 then	
					idxitem = AddItem(0,3,random(5,6),1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 2 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).." + V� Tham D� Tuy�t Th� Anh h�ng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
				else
					idxitem = AddItem(0,2,31,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n M�c 2 - S� Ki�n Covid-19 ���c: <color=yellow>"..GetNameItemBox(idxitem).." + V� Tham D� Tuy�t Th� Anh h�ng")
					inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")			
				end		
				
	else
			Msg2Player("�i�u ki�n nh�n th��ng kh�ng ��: "..GetTask(932).."000 / 4.000.000.000")
	end	
else	
		Msg2Player("B�n �� nh�n �� to�n b� ph�n th��ng m�c S� Ki�n Covid-19")
end
end
function giahan()
SayNew("Ng��i ch�c ch�n mu�n d�ng <color=yellow>5 Kim Nguy�n B�o<color> �� gia h�n s� ki�n?",2,
"Ta ch�c ch�n mu�n gia h�n /giahan2",
"Tho�t./no")
end
function giahan2()

if GetItemCount(17) < 5 then
Talk(1,"","Ng��i kh�ng mang theo 5 Kim Nguy�n B�o, kh�ng th� gia h�n")
return
end

if GetTask(933) >= 1 then
Talk(1,"","B�n �� ��t gia h�n t�i �a, kh�ng th� gia h�n th�m")
return
end

for i=1,5 do DelItem(17) end

SetTask(933, GetTask(933) + 1)
Msg2Player("Ch�c m�ng b�n �� th�ng c�p S� Ki�n Covid-19 l�n: <color=pink>Gia H�n "..GetTask(933).."")
inlog5("Gia han "..GetTask(933).." - "..GetAccount().." - "..GetName().."")

end


function movebantodong()
SayNew("B�n T� ��ng l� n�i nguy hi�m c� r�t nhi�u d� nh�n d�ng ��c gi�t ng��i kh�ng g�m tay, ng��i c� ch�c ch�n mu�n ��n ch�?",5,
"C�ng 1 /movebantodong1",
"C�ng 2 /movebantodong1",
"C�ng 3 /movebantodong1",
"C�ng 4 /movebantodong1",
"Tho�t./no")
end

function movebantodong1(nsel)
if GetItemCount(686) == 0 then
Talk(1,"","Ta th�y ng��i ch�a �� m�nh, h�y mang Covid S�t B�i ��n g�p ta.")
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
		OpenStringBox(2,"Nh�p s� l��ng","chetao2_1")
elseif i == 2 then
		OpenStringBox(2,"Nh�p s� l��ng","chetao2_2")
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
		Msg2Player("B�n nh�n ���c <color=yellow>"..soluong.."  Kh�i Ho�n �an")
	else
		Talk(1,"","hack ha em")
	end
	
else
Talk(1,"","Ng��i ki�m tra l�i h�nh trang, h�nh nh� kh�ng �� s� l��ng nguy�n li�u l�m thu�c.")
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
		Msg2Player("B�n nh�n ���c <color=yellow>"..soluong.." Tr��ng Sinh �an")
	else
		Talk(1,"","hack ha em")
	end
	
else
Talk(1,"","Ng��i ki�m tra l�i h�nh trang, h�nh nh� kh�ng �� s� l��ng nguy�n li�u l�m thu�c.")
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
