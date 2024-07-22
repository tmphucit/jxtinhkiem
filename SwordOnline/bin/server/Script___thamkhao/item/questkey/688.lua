

function main(idx)
n = GetItemCount(688)

if GetItemCount(688) >= 1 then

DelItemIdx(idx);
if GetItemCount(688) == (n-1) then

			sx2 = random(1,100)
			if sx2 < 48 then
				idxitem = AddEventItem(random(28,30))
				Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")		
			elseif sx2 < 99 then
				idxitem = AddEventItem(31)
				Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")		
			elseif sx2 < 100 then
				idxitem = AddEventItem(0)
				Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")		
			else
				idxitem = AddEventItem(1)
				Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")		
			end
		Talk(0,"")
else
	Talk(1,"","Hack Ha Em")
end
end

end
