

function main(idx)
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end
	n = GetItemCount(334)
if GetItemCount(334) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(334) == (n-1) then
				for k=1,150 do AddEventItem(335) end
				Msg2Player("B¹n nhËn ®­îc 150 Hoa Hång §á ")
				Msg2Player("<color=yellow>L­u ý: §Çy r­¬ng mÊt kh«ng ®Òn bï ")
				
			else
			Talk(1,"","Hack Ha Em")
			end
end
		
end
