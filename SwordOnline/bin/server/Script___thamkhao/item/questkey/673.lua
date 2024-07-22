
botmy = 666
duong = 667
trung = 668
sua = 669

traicay = 665
socola = 664
bo = 663

banhtraicay = 670
banhsocola = 671
banhdacbiet = 672

function main(idx)
n = GetItemCount(673)	
			if GetItemCount(673) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(673) == (n-1) then
					sx = random(1,200)
					if sx < 40 then
						idxitem = AddEventItem(botmy)
						Msg2Player("B¹n nhËn ®­îc: "..GetNameItemBox(idxitem).."")
					elseif sx  < 80 then
						idxitem = AddEventItem(duong)
						Msg2Player("B¹n nhËn ®­îc: "..GetNameItemBox(idxitem).."")				
					elseif sx < 120 then
						idxitem = AddEventItem(trung)
						Msg2Player("B¹n nhËn ®­îc: "..GetNameItemBox(idxitem).."")			
					elseif sx < 160 then
						idxitem = AddEventItem(sua)
						Msg2Player("B¹n nhËn ®­îc: "..GetNameItemBox(idxitem).."")		
					elseif sx < 185 then
						idxitem = AddEventItem(traicay)
						Msg2Player("B¹n nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")			
					elseif sx < 200 then
						idxitem = AddEventItem(socola)
						Msg2Player("B¹n nhËn ®­îc: <color=yellow>"..GetNameItemBox(idxitem).."")					
					else
						idxitem = AddEventItem(bo)
						Msg2Player("B¹n nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem).."")							
					end
					Talk(0,"")				
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end
