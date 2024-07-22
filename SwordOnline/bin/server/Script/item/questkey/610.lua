

function main(idx)
n = GetItemCount(610)
			if GetItemCount(610) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(610) == (n-1) then
						sx = random(1,100)
						if sx < 25 then
							AddEventItem(611)
						elseif sx < 50 then
							AddEventItem(612)
						elseif sx < 75 then
							AddEventItem(613)						
						else
							AddEventItem(614)
						end
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end
