task = 956
itemidx = 148
function main(idx)
n = GetItemCount(itemidx)


if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� s� d�ng l�ng ��n!")
	return
end

			if GetItemCount(itemidx) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(itemidx) == (n-1) then					
						if GetTask(task) < 100 then
							SetTask(task, GetTask(task) + 1)
							AddOwnExp(500000)					
						end
						Msg2Player("Gi�i h�n: "..GetTask(task).." / 100")
					
						
					Talk(0,"")				
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end
