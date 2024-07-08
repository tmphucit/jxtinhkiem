task = 904

function main(idx)
n = GetItemCount(658)
gh = gioihan()

if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end


if GetTask(task) >= gh then
Talk(1,"","HiÖn t¹i ®· ®¹t giíi h¹n sö dông ThiÖp Tri ¢n Ng­êi LÝnh") 
return
end

	
			if GetItemCount(658) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(658) == (n-1) then
						SetTask(task, GetTask(task) + 1)
						AddOwnExp(100000)
						
						sx = random(1,100)
						if sx == 50 then
							vp = RandomNew(1,100)
							if vp < 40 then
								idxitem = AddEventItem(random(173,175))
								Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
							elseif vp < 70 then
								idxitem = AddEventItem(random(117,118))
								Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
							elseif vp < 90 then
								idxitem = AddEventItem(random(28,31))
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông ThiÖp Tri ¢n Ng­êi LÝnh nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif vp < 92 then
								idxitem = AddEventItem(2)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông ThiÖp Tri ¢n Ng­êi LÝnh nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
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