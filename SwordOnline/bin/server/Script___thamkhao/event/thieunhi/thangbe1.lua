

function main()
SayNew("C¶ c¸i thµnh nµy kh«ng ai lµm ®­îc b¸nh kem ngoµi æng hÕt, nªn khái kiÕm chi cho mÊt c«ng.",3,
"Ta muèn phÇn th­ëng Mèc Sù KiÖn /ptmoc",
"Ta muèn gia h¹n sù kiÖn /giahan",
"Kh«ng cã g× /no")
end

function no()
end



function giahan()

if GetItemCount(17) < 5 then
Talk(1,"","Ng­¬i kh«ng mang theo 5 Kim Nguyªn B¶o, kh«ng thÓ gia h¹n")
return
end

if GetTask(921) >= 2 then
Talk(1,"","B¹n ®· ®¹t gia h¹n tèi ®a, kh«ng thÓ gia h¹n thªm")
return
end

for i=1,5 do DelItem(17) end

SetTask(921, GetTask(921) + 1)
Msg2Player("Chóc mõng b¹n ®· th¨ng cÊp Sù KiÖn Quèc TÕ ThiÕu Nhi 1-6 lªn: <color=pink>Gia H¹n "..GetTask(921).."")
inlog5("Gia han "..GetTask(921).." - "..GetAccount().." - "..GetName().."")

end


function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logGiaHan.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end


function ptmoc()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ nhËn phÇn th­ëng!")
	return
end

if GetTask(906) < 10 then
	if GetTask(920) >= 500000 then
		SetTask(906, 10)
		sx = random(1,100)
		if sx < 50 then
				idxitem = AddEventItem(0)
				SetBindItem(idxitem ,1)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Free 500] "..GetNameItemBox(idxitem).."")
		else
				idxitem = AddEventItem(1)
				SetBindItem(idxitem ,1)
				Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Free 500] "..GetNameItemBox(idxitem).."")
		end
	else
			Msg2Player("§iÒu kiÖn nhËn th­ëng kh«ng ®ñ: "..GetTask(920).."000 / 500.000.000")
	end
elseif GetTask(906) == 10 then
	if GetTask(920) >= 1000000 then
		SetTask(906, 20)
		sx = random(1,100)
		if sx < 20 then
			idxitem = AddItem(0,10,5,random(1,4),0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1000 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
		elseif sx < 40 then
			idxitem = AddItem(0,4,random(4,5),1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1000 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
		elseif sx < 60 then
			idxitem = AddItem(0,9,5,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1000 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
		elseif sx < 80 then	
			idxitem = AddItem(0,3,random(5,6),1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1000 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
		else
			idxitem = AddItem(0,2,31,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1000 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")	
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")			
		end						
	else
			Msg2Player("§iÒu kiÖn nhËn th­ëng kh«ng ®ñ: "..GetTask(920).."000 / 1.000.000.000")
	end

elseif GetTask(906) == 20 then
	if GetTask(920) >= 1500000 then
		SetTask(906, 30)
		
		
		
		if GetGlbMissionV(37) == 111 then
							SetGlbMissionV(37, 0)
							item = RandomNew(1,9)
							if item == 1 then	
								idxitem = AddItem(0,4,19,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 2 then
								idxitem = AddItem(0,2,79,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 3 then
								idxitem = AddItem(0,5,24,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 4 then
								idxitem = AddItem(0,8,22,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 5 then
								idxitem = AddItem(0,7,41,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 6 then
								idxitem = AddItem(0,6,26,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 7 then
								idxitem = AddItem(0,9,19,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 8 then
								idxitem = AddItem(0,3,35,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 9 then
								idxitem = AddItem(0,3,36,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
							end			
							return
					elseif GetGlbMissionV(37) == 222 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,9,4,1,0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
							return
					elseif GetGlbMissionV(37) == 333 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,2,32,2,0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")	
							return	
					elseif GetGlbMissionV(37) == 444 then
							SetGlbMissionV(37, 0)
							item = RandomNew(1,3)
							if item == 1 then
								idxitem = AddItem(0,9,3,random(1,10),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")	
							elseif item == 2 then
								idxitem = AddItem(0,3,3,random(1,10),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")	
							elseif item == 3 then
								idxitem = AddItem(0,3,4,random(1,10),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")	
							end
							return	
					elseif GetGlbMissionV(37) == 555 then
							SetGlbMissionV(37, 0)
							item = RandomNew(1,5)
							if item == 1 then
								idxitem = AddItem(0,2,30,random(1,10),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")	
							elseif item == 2 then
								idxitem = AddItem(0,6,3,random(1,10),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")	
							elseif item == 3 then
								idxitem = AddItem(0,5,5,random(1,10),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")	
							elseif item == 4 then
								idxitem = AddItem(0,7,15,random(1,10),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")	
							elseif item == 5 then
								idxitem = AddItem(0,8,3,random(1,10),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")	
							end
							return			
					end
		
		sx = random(1,100)
		if sx < 20 then
			idxitem = AddItem(0,10,5,random(1,4),0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
		elseif sx < 40 then
			idxitem = AddItem(0,4,random(4,5),1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
		elseif sx < 60 then
			idxitem = AddItem(0,9,5,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
		elseif sx < 80 then	
			idxitem = AddItem(0,3,random(5,6),1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
		else
			idxitem = AddItem(0,2,31,1,0,0,0)
			Msg2SubWorld("Chóc mõng "..GetName().." nhËn mèc 1500 Sù KiÖn Quèc TÕ ThiÕu Nhi ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")	
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")			
		end						
	else
			Msg2Player("§iÒu kiÖn nhËn th­ëng kh«ng ®ñ: "..GetTask(920).."000 / 1.500.000.000")
	end	
	
	
else
	Msg2Player("B¹n ®· nhËn ®ñ toµn bé phÇn th­ëng mèc Sù KiÖn Quèc TÕ ThiÕu Nhi")
end

end

function inlogMocEvent(text)
thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/MocSuKienThieuNhi.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..text.." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
end
