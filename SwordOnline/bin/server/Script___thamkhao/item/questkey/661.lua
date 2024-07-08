
non = 617
giay = 618
vong = 620
balo = 621

quantrang = 619
cuonlen = 660

function main(idx)
n = GetItemCount(661)	
			if GetItemCount(661) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(661) == (n-1) then
					sx = random(1,200)
					if sx < 45 then
						idxitem = AddEventItem(non)
						Msg2Player("B¹n nhËn ®­îc: "..GetNameItemBox(idxitem).."")
					elseif sx  < 90 then
						idxitem = AddEventItem(giay)
						Msg2Player("B¹n nhËn ®­îc: "..GetNameItemBox(idxitem).."")				
					elseif sx < 135 then
						idxitem = AddEventItem(vong)
						Msg2Player("B¹n nhËn ®­îc: "..GetNameItemBox(idxitem).."")			
					elseif sx < 180 then
						idxitem = AddEventItem(balo)
						Msg2Player("B¹n nhËn ®­îc: "..GetNameItemBox(idxitem).."")		
					elseif sx < 200 then
						idxitem = AddEventItem(quantrang)
						Msg2Player("B¹n nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")				
					else
						idxitem = AddEventItem(cuonlen)
						Msg2Player("B¹n nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem).."")							
					end
					Talk(0,"")				
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end
