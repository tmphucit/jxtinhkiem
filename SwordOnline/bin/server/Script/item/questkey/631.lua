

function main(idx)
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ sö dông vËt phÈm nµy")
	return
end

n = GetItemCount(631)
			if GetItemCount(631) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(631) == (n-1) then
						
					for p=1,10 do AddEventItem(17) end
				
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end

