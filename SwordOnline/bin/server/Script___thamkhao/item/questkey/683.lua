Include("\\script\\lib\\thuvien.lua")
Include("\\script\\event\\covid\\dstruongsinhdan.lua")
Include("\\script\\event\\covid\\dsduatopngay.lua")


task = 932
ThongBaoXepHang = 0


function KetThucDuaTopNgay()
LoginLog = openfile("Data/DanhSachDuaTopNgay.txt", "a");
if LoginLog then
write(LoginLog,"Ngay "..DUA_TOP[3][1].." ["..DUA_TOP[1][1].." - "..DUA_TOP[1][2].." - "..DUA_TOP[1][3].."] ["..DUA_TOP[2][1].." - "..DUA_TOP[2][2].." - "..DUA_TOP[2][3].."] ,\n");
end
closefile(LoginLog)
Msg2Player("§· cËp nhËt xÕp h¹ng")
end


function CapNhatDuaTopNgay()
if GetName() == DUA_TOP[1][2] then
		DUA_TOP[1][3] = GetTask(938)
		return
end
if GetName() == DUA_TOP[2][2] then
		DUA_TOP[2][3] = GetTask(938)
		return
end

if GetTask(938) > DUA_TOP[1][3] or GetTask(938) > DUA_TOP[2][3] then
	if DUA_TOP[1][3] > DUA_TOP[2][3] then
			DUA_TOP[2][1] = GetAccount() 
			DUA_TOP[2][2] = GetName() 
			DUA_TOP[2][3] = GetTask(938)		
	else
			DUA_TOP[1][1] = GetAccount() 
			DUA_TOP[1][2] = GetName() 
			DUA_TOP[1][3] = GetTask(938)	
	end
end
end

function xephang()
if DUA_TOP[1][3] > DUA_TOP[2][3] then
return 2
else
return 1
end
end

function main(idx)
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if ThongBaoXepHang ~= gio then
	Msg2SubWorld("<color=yellow>TOP 1 - Tr­êng Sinh §an hiÖn t¹i lµ "..TRUONG_SINH[2].." víi "..TRUONG_SINH[3].." c¸i")
	
	if ngay >= 18 then
		xh = xephang()
		if xh == 2 then
			Msg2SubWorld("<color=yellow>TOP 1 - Tr­êng Sinh §an theo ngµy hiÖn t¹i lµ "..DUA_TOP[1][2].." víi "..DUA_TOP[1][3].." c¸i")
			Msg2SubWorld("<color=yellow>TOP 2 - Tr­êng Sinh §an theo ngµy hiÖn t¹i lµ "..DUA_TOP[2][2].." víi "..DUA_TOP[2][3].." c¸i")
		else
			Msg2SubWorld("<color=yellow>TOP 1 - Tr­êng Sinh §an theo ngµy hiÖn t¹i lµ "..DUA_TOP[2][2].." víi "..DUA_TOP[2][3].." c¸i")
			Msg2SubWorld("<color=yellow>TOP 2 - Tr­êng Sinh §an theo ngµy hiÖn t¹i lµ "..DUA_TOP[1][2].." víi "..DUA_TOP[1][3].." c¸i")
		end
	end
	
	ThongBaoXepHang = gio
	savebang()
end


n = GetItemCount(683)
gh = gioihan()

if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end


if GetTask(933) == 0 and GetTask(task) >= gh then
Talk(1,"","HiÖn t¹i ®· ®¹t giíi h¹n sö dông Sù KiÖn Covid-19") 
return
end

	
			if GetItemCount(683) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(683) == (n-1) then
				
						if GetTask(task) < gh then
								SetTask(task, GetTask(task) + 1000)
								AddOwnExp(1000000)
								Msg2Player("Giíi h¹n: "..GetTask(task).."000 / "..gh.."000")
						end		
						SetTask(934, GetTask(934) + 1)
						Msg2Player("Tr­êng Sinh §an sö dông: <color=yellow>"..GetTask(934).." c¸i")
							if GetTask(934) > TRUONG_SINH[3] then
								TRUONG_SINH[1] = GetAccount()
								TRUONG_SINH[2] = GetName()
								TRUONG_SINH[3] = GetTask(934)
						end
						
						if ngay >= 18 then	
							if GetTask(939) ~= ngay then
									SetTask(939, ngay)
									SetTask(938, 0)
							end			
							SetTask(938, GetTask(938) + 1)
							Msg2Player("Sè l­îng sö dông trong ngµy: <color=green>"..GetTask(938).." c¸i")
									
							if DUA_TOP[3][1] ~= ngay then
								KetThucDuaTopNgay()
								DUA_TOP = {{"","",0},{"","",0},	{ngay}}			
							end
							CapNhatDuaTopNgay()	
						end
					
					if GetTask(904) ~= phut then
						SetTask(904, phut)
						Msg2Player("Top 1 Tr­êng Sinh §an hiÖn t¹i ®· sö dông: <color=yellow>"..TRUONG_SINH[3].." c¸i")
						
										
						if ngay >= 18 then	
						Msg2Player("<color=green>§ua Top ngµy:")						
							xh = xephang()
							if xh == 2 then
									Msg2Player("H¹ng 1:"..DUA_TOP[1][3].." c¸i")	
									Msg2Player("H¹ng 2:"..DUA_TOP[2][3].." c¸i")
							else
									Msg2Player("H¹ng 1:"..DUA_TOP[2][3].." c¸i")	
									Msg2Player("H¹ng 2:"..DUA_TOP[1][3].." c¸i")
							end	
						end
					end
						
						
						
						
						
						if GetGlbMissionV(37) == 111 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,9,4,1,0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 222 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,2,32,2,0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 333 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,4,3,random(2,9),0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 444 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,3,3,random(2,9),0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 555 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,3,4,random(2,9),0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 666 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,9,3,random(2,9),0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 777 then
							SetGlbMissionV(37, 0)
							dq = random(1,5)
							if dq == 1 then
								idxitem = AddItem(0,7,15,random(2,9),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif dq == 2 then
								idxitem = AddItem(0,2,30,random(2,9),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif dq == 3 then
								idxitem = AddItem(0,5,5,random(2,9),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif dq == 4 then
								idxitem = AddItem(0,6,3,random(2,9),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif dq == 5 then
								idxitem = AddItem(0,8,3,random(2,9),0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							end
							return
						elseif GetGlbMissionV(37) == 888 then
							SetGlbMissionV(37, 0)
							ngay = tonumber(date("%d"))
								thang = tonumber(date("%m"))
								gio = tonumber(date("%H"))
								ngay = ngay + 7
								if ngay > mangthang[thang] then
									ngay = ngay - mangthang[thang]
									thang = thang + 1
								end				
							idxitem = AddItem(0,11,0,131,0,0,0)
							SetHSD(idxitem, 2021 , thang, ngay, gio )	
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							return
						elseif GetGlbMissionV(37) == 999 then
							SetGlbMissionV(37, 0)
							
							ngay = tonumber(date("%d"))
								thang = tonumber(date("%m"))
								gio = tonumber(date("%H"))
								ngay = ngay + 7
								if ngay > mangthang[thang] then
									ngay = ngay - mangthang[thang]
									thang = thang + 1
								end				
							idxitem = AddItem(0,11,0,133,0,0,0)
							SetHSD(idxitem, 2021 , thang, ngay, gio )	
							
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							return	
						elseif GetGlbMissionV(37) == 123456 then
							SetGlbMissionV(37, 0)
							item = RandomNew(1,9)
							if item == 1 then	
								idxitem = AddItem(0,4,19,1,0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 2 then
								idxitem = AddItem(0,2,79,1,0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 3 then
								idxitem = AddItem(0,5,24,1,0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 4 then
								idxitem = AddItem(0,8,22,1,0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 5 then
								idxitem = AddItem(0,7,41,1,0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 6 then
								idxitem = AddItem(0,6,26,1,0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 7 then
								idxitem = AddItem(0,9,19,1,0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 8 then
								idxitem = AddItem(0,3,35,1,0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif item == 9 then
								idxitem = AddItem(0,3,36,1,0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							end
							return					
						end
						
						
						
						
						sx = RandomNew(1,50)
						if sx == 40 then
							vp = RandomNew(1,200)
							if vp < 85 then
								idxitem = AddEventItem(random(173,175))
								Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
							elseif vp < 168 then
								idxitem = AddEventItem(random(115,119))
								Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
							elseif vp < 173 then
								idxitem = AddEventItem(random(28,31))
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif vp < 183 then
								idxitem = AddEventItem(2)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
							elseif vp < 192 then	
								ngay = tonumber(date("%d"))
								thang = tonumber(date("%m"))
								gio = tonumber(date("%H"))
								ngay = ngay + 7
								if ngay > mangthang[thang] then
									ngay = ngay - mangthang[thang]
									thang = thang + 1
								end						
								mask = random(1,100)
								if mask < 80 then
									idxitem = AddItem(0,11,0,random(108,120),0,0,0)
									SetHSD(idxitem, 2021 , thang, ngay, gio )								
									Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
								elseif mask < 82 then
									idxitem = AddItem(0,11,0,132,0,0,0)
									SetHSD(idxitem, 2021 , thang, ngay, gio )								
									Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")			
								else
									idxitem = AddItem(0,11,0,random(121,130),0,0,0)
									SetHSD(idxitem, 2021 , thang, ngay, gio )								
									Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")									
								end
							elseif vp < 193 then
								idxitem = AddEventItem(random(75,102))
								Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
							elseif vp < 194 then
								vp2 = random(1,4)
								if vp2 == 1 then
								idxitem = AddItem(0,4,random(4,5),1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
								elseif vp2 == 2 then
								idxitem = AddItem(0,9,5,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
								elseif vp2 == 3 then
								idxitem = AddItem(0,3,random(5,6),1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
								elseif vp2 == 4 then
								idxitem = AddItem(0,2,31,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")							
								end							
							elseif vp < 195 then
								idxitem = AddEventItem(random(0,1))
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
							else								
								vp2 = random(1,9)
								idx = -1
								if vp2 == 1 then
									idx = AddItem(0,3,41,1,0,0,0)
								elseif vp2 == 2 then
									idx = AddItem(0,3,40,1,0,0,0)
								elseif vp2 == 3 then
									idx = AddItem(0,9,21,1,0,0,0)
								elseif vp2 == 4 then
								idx = AddItem(0,7,42,1,0,0,0)	
								elseif vp2 == 5 then
									idx = AddItem(0,8,23,1,0,0,0)
								elseif vp2 == 6 then
									idx = AddItem(0,5,25,1,0,0,0)
								elseif vp2 == 7 then
									idx = AddItem(0,6,27,1,0,0,0)
								elseif vp2 == 8 then
										idx = AddItem(0,2,80,1,0,0,0)
								elseif vp2 == 9 then
										idx = AddItem(0,4,21,1,0,0,0)
								end
								
								if idx ~= -1 then
										Msg2SubWorld("Chóc mõng "..GetName().." sö dông Tr­êng Sinh §an nhËn ®­îc <color=pink>"..GetNameItemBox(idx).."")
								end
							end
						end
						
					
					Talk(0,"")				
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end


mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}


function savebang()
BANG = TaoBang(DUA_TOP,"DUA_TOP")		
LuuBang("script/event/covid/dsduatopngay.lua",BANG)
BANG = TaoBang(TRUONG_SINH,"TRUONG_SINH")		
LuuBang("script/event/covid/dstruongsinhdan.lua",BANG)
end


function gioihan()
if GetTask(933) == 0 then
return 2000000
elseif GetTask(933) == 1 then
return 4000000
else
return 0
end
end