

function main(idx)
n = GetItemCount(610)
			
			if GetItemCount(610) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(610) == (n-1) then
					sx = random(611,614)
						AddEventItem(sx)
						Msg2Player("B�n nh�n ���c M�nh C� "..(sx-610).."")
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end
