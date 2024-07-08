task = 956
itemidx = 146
function main(idx)
n = GetItemCount(itemidx)


if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ sö dông lång ®Ìn!")
	return
end

			if GetItemCount(itemidx) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(itemidx) == (n-1) then
						if GetTask(task) < 100 then
						SetTask(task, GetTask(task) + 1)
							AddOwnExp(300000)					
						end
						Msg2Player("Giíi h¹n: "..GetTask(task).." / 100")
					
						
					Talk(0,"")				
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end
