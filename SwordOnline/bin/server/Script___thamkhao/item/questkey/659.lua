task = 905

function main(idx)
n = GetItemCount(659)
gh = gioihan()

if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end

if GetTask(task) >= gh then
Talk(1,"","HiÖn t¹i ®· ®¹t giíi h¹n sö dông ThiÖp Tri ¢n Ng­êi LÝnh") 
return
end

	
			if GetItemCount(659) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(659) == (n-1) then
						SetTask(task, GetTask(task) + 1)
						AddOwnExp(200000)
						
						if GetGlbMissionV(37) == 852 then
								SetGlbMissionV(37, 0)
								idxitem = AddItem(0,9,4,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông ThiÖp Tri ¢n MÑ HiÒn nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
								return
						elseif GetGlbMissionV(37) == 741 then
								SetGlbMissionV(37, 0)
								idxitem = AddItem(0,10,5,5,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông ThiÖp Tri ¢n MÑ HiÒn nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
							
								return
						end
						sx = RandomNew(1,60)
						if sx == 20 then
							vp = RandomNew(1,200)
							if vp < 80 then
								idxitem = AddEventItem(random(173,175))
								Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
							elseif vp < 150 then
								idxitem = AddEventItem(random(115,119))
								Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
							elseif vp < 175 then
								idxitem = AddEventItem(random(28,31))
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông ThiÖp Tri ¢n MÑ HiÒn nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif vp < 190 then
								idxitem = AddEventItem(2)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông ThiÖp Tri ¢n MÑ HiÒn nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif vp == 190 then
								idxitem = AddEventItem(random(0,1))
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông ThiÖp Tri ¢n MÑ HiÒn nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
							elseif vp == 191 then
								vp2 = random(1,4)
								if vp2 == 1 then
								idxitem = AddItem(0,4,random(4,5),1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông ThiÖp Tri ¢n MÑ HiÒn nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
								elseif vp2 == 2 then
								idxitem = AddItem(0,9,5,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông ThiÖp Tri ¢n MÑ HiÒn nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
								elseif vp2 == 3 then
								idxitem = AddItem(0,3,random(5,6),1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông ThiÖp Tri ¢n MÑ HiÒn nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
								elseif vp2 == 4 then
								idxitem = AddItem(0,2,31,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông ThiÖp Tri ¢n MÑ HiÒn nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")							
								end						
							elseif vp == 192 then
								idxitem = AddEventItem(random(651,654))
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông ThiÖp Tri ¢n MÑ HiÒn nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
							else
								idxitem = AddEventItem(random(75,102))
								Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
							end
						end
						
						Msg2Player("Giíi h¹n: "..GetTask(task).." / "..gh.."")
					
					Talk(0,"")				
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end

function gioihan()
if GetTask(903) == 0 then
return 500
elseif GetTask(903) == 1 then
return 1000
else
return 0
end
end