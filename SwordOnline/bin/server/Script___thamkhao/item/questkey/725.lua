task = 954
itemidx = 725
function main(idx)
n = GetItemCount(itemidx)
gh = gioihan()

if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ sö dông lång ®Ìn!")
	return
end

if GetTask(task) >= gh then
Talk(1,"","HiÖn t¹i ®· ®¹t giíi h¹n sö dông Lång §Ìn Trung Thu, kh«ng thÓ sö dông thªm") 
return
end
	
			if GetItemCount(itemidx) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(itemidx) == (n-1) then
						SetTask(task, GetTask(task) + 1000)
						AddOwnExp(1000000)
						Msg2Player("Giíi h¹n: "..GetTask(task).."000 / "..gh.."000")
						banhtrungthu = RandomNew(1,100)
						if banhtrungthu < 10 then
								ngay = tonumber(date("%d"))
								thang = tonumber(date("%m"))
								gio = tonumber(date("%H"))
								ngay1 = ngay + 1
								thang1 = thang
								if ngay1 > mangthang[thang] then
									ngay1 = ngay1 - mangthang[thang]
									thang1 = thang + 1
								end		
								item = AddEventItem(121)
								SetHSD(item, 2021 , thang1, ngay1, gio )
								Msg2Player("B¹n nhËn ®­îc 1 <color=green>"..GetNameItemBox(item).."")
						end
						
						
						if GetGlbMissionV(37) == 111 then
							SetGlbMissionV(37, 0)
							idxitem = AddEventItem(691)
							AddGlobalCountNews("Chóc mõng "..GetName().." sö dông Lång §Ìn KÐo Qu©n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."",1)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Lång §Ìn KÐo Qu©n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
						elseif GetGlbMissionV(37) == 222 then
							SetGlbMissionV(37, 0)
							idxitem = AddEventItem(692)
							AddGlobalCountNews("Chóc mõng "..GetName().." sö dông Lång §Ìn KÐo Qu©n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."",1)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Lång §Ìn KÐo Qu©n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")			
						elseif GetGlbMissionV(37) == 333 then
							SetGlbMissionV(37, 0)
							idxitem = AddEventItem(694)
							AddGlobalCountNews("Chóc mõng "..GetName().." sö dông Lång §Ìn KÐo Qu©n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."",1)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông Lång §Ìn KÐo Qu©n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")			
						else	
							XacSuatVatPham()
						end
						
					Talk(0,"")				
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end


function XacSuatVatPham()
sx = RandomNew(1,40)
if sx == 20 then
			sx2 = RandomNew(1,200)
			if sx2 < 50 then
					idxitem = AddEventItem(random(173,174))
					Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			elseif sx2 < 80 then
					idxitem = AddEventItem(114)
					Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")		
			elseif sx2 < 120 then
					idxitem = AddEventItem(113)
					Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			elseif sx2 < 130 then
					idxitem = AddEventItem(118)
					Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			elseif sx2 < 170 then		
					sx3 = RandomNew(1,9)
					if sx3 == 1 then
						idxitem = AddItem(0,5,4,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 2 then		
						idxitem = AddItem(0,4,2,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 3 then
						idxitem = AddItem(0,7,14,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 4 then
						idxitem = AddItem(0,9,2,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 5 then
						idxitem = AddItem(0,2,29,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 6 then
						idxitem = AddItem(0,3,2,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 7 then
						idxitem = AddItem(0,6,2,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 8 then
						idxitem = AddItem(0,8,2,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					elseif sx3 == 9 then
						idxitem = AddItem(0,3,1,2,0,0,0)
						Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
					end				
			elseif sx2 < 180 then
					idxitem = AddEventItem(117)
					Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 < 190 then
					idxitem = AddEventItem(115)
					Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 < 198 then
					idxitem = AddEventItem(116)
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Lång §Ìn KÐo Qu©n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 < 192 then
					idxitem = AddEventItem(random(28,31))
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Lång §Ìn KÐo Qu©n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 == 197 then
					idxitem = AddEventItem(687)
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Lång §Ìn KÐo Qu©n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 == 198 then
					idxitem = AddEventItem(120)
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Lång §Ìn KÐo Qu©n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")				
			elseif sx2 == 199 then
					idxitem = AddEventItem(random(0,1))
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Lång §Ìn KÐo Qu©n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif sx2 == 200 then
					idxitem = AddEventItem(random(698,699))
					Msg2SubWorld("Chóc mõng "..GetName().." sö dông Lång §Ìn KÐo Qu©n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
			end
end
end


function gioihan()
if GetTask(955) == 0 then
return 500000
elseif GetTask(955) == 1 then
return 1000000
elseif GetTask(955) == 2 then
return 1500000
else
return 0
end
end
mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}