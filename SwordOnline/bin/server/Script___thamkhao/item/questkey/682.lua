Include("\\script\\lib\\thuvien.lua")
Include("\\script\\event\\covid\\dskhaihoandan.lua")
task = 932
ThongBaoXepHang = 0

function main(idx)
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if ThongBaoXepHang ~= gio then
	Msg2SubWorld("<color=yellow>TOP 1 - Kh¶i Hoµn §an hiÖn t¹i lµ "..KHAI_HOAN[2].." víi "..KHAI_HOAN[3].." c¸i")
	ThongBaoXepHang = gio
	savebang()
end

n = GetItemCount(682)
gh = gioihan()

if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end


if GetTask(933) == 0 and GetTask(task) >= gh then
Talk(1,"","HiÖn t¹i ®· ®¹t giíi h¹n sö dông Sù KiÖn Covid-19") 
return
end

	
			if GetItemCount(682) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(682) == (n-1) then
				
						if GetTask(task) < gh then
								SetTask(task, GetTask(task) + 500)
								AddOwnExp(500000)
								Msg2Player("Giíi h¹n: "..GetTask(task).."000 / "..gh.."000")
						end		
						SetTask(935, GetTask(935) + 1)
						Msg2Player("Kh¶i Hoµn §an sö dông: <color=yellow>"..GetTask(935).." lÇn")
						if GetTask(935) > KHAI_HOAN[3] then
								KHAI_HOAN[1] = GetAccount()
								KHAI_HOAN[2] = GetName()
								KHAI_HOAN[3] = GetTask(935)
						end
						
						if GetTask(904) ~= phut then
							SetTask(904, phut)
							Msg2Player("Top 1 Kh¶i Hoµn §an hiÖn t¹i ®· sö dông: <color=yellow>"..KHAI_HOAN[3].." c¸i")
						end
						
						
						
						sx = RandomNew(1,80)
						if sx == 40 then
							vp = RandomNew(1,200)
							if vp < 85 then
								idxitem = AddEventItem(random(173,175))
								Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
							elseif vp < 169 then
								idxitem = AddEventItem(random(115,119))
								Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
							elseif vp < 175 then
								idxitem = AddEventItem(random(28,31))
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Kh¶i Hoµn §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
								
								
								
								
							elseif vp < 185 then
								idxitem = AddEventItem(2)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Kh¶i Hoµn §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif vp < 186 then	
								ngay = tonumber(date("%d"))
								thang = tonumber(date("%m"))
								gio = tonumber(date("%H"))
								ngay = ngay + 7
								if ngay > mangthang[thang] then
									ngay = ngay - mangthang[thang]
									thang = thang + 1
								end
								idxitem = AddItem(0,11,0,random(108,120),0,0,0)
								SetHSD(idxitem, 2021 , thang, ngay, gio )		
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Kh¶i Hoµn §an nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
							elseif vp < 196 then
								idxitem = AddEventItem(random(75,102))
								Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
							elseif vp < 197 then
								vp2 = random(1,4)
								if vp2 == 1 then
								idxitem = AddItem(0,4,random(4,5),1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Kh¶i Hoµn §an nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
								elseif vp2 == 2 then
								idxitem = AddItem(0,9,5,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Kh¶i Hoµn §an nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
								elseif vp2 == 3 then
								idxitem = AddItem(0,3,random(5,6),1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Kh¶i Hoµn §an nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
								elseif vp2 == 4 then
								idxitem = AddItem(0,2,31,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Kh¶i Hoµn §an nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")							
								end							
							elseif vp < 198 then
								idxitem = AddEventItem(random(0,1))
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Kh¶i Hoµn §an nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
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
										Msg2SubWorld("Chóc mõng "..GetName().." sö dông Kh¶i Hoµn §an nhËn ®­îc <color=pink>"..GetNameItemBox(idx).."")
								end
							end
						end
						
						Msg2Player("Giíi h¹n: "..GetTask(task).."000 / "..gh.."000")
					
					Talk(0,"")				
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}

function savebang()
BANG = TaoBang(KHAI_HOAN,"KHAI_HOAN")		
LuuBang("script/event/covid/dskhaihoandan.lua",BANG)
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