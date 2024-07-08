

function main(idx)
n = GetItemCount(679)

if GetItemCount(679) >= 1 then

DelItemIdx(idx);
if GetItemCount(679) == (n-1) then

			sx2 = random(1,200)
			if sx2 < 50 then
				idxitem = AddEventItem(677)
				Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")		
			elseif sx2 < 100 then
				idxitem = AddEventItem(678)
				Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")		
			elseif sx2 < 150 then
				idxitem = AddEventItem(680)
				Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")		
			elseif sx2 < 200 then
				idxitem = AddEventItem(681)
				Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")		
			else
				idxitem = AddEventItem(684)
				Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")		
			end
		Talk(0,"")
else
	Talk(1,"","Hack Ha Em")
end
end

end
