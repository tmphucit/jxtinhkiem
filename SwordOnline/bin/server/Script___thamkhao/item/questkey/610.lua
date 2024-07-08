

function main(idx)
n = GetItemCount(610)
			
			if GetItemCount(610) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(610) == (n-1) then
					sx = random(611,614)
						AddEventItem(sx)
						Msg2Player("B¹n nhËn ®­îc M·nh Cê "..(sx-610).."")
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end
