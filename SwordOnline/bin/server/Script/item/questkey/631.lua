

function main(idx)
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� s� d�ng v�t ph�m n�y")
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

