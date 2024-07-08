function main(idx)
sl = GetItemCount(67)

DelItemIdx(idx);

if GetItemCount(67) == sl -1 then
		sx = random(1,239)
		if sx < 60 then
			AddEventItem(178)
			Msg2Player("B¹n nhËn ®­îc <color=yellow>GiÊy Tr¾ng")
		elseif sx >= 60 and sx < 120 then
			AddEventItem(179)
			Msg2Player("B¹n nhËn ®­îc <color=yellow>C©y ViÕt")
		elseif sx >= 120 and sx < 180 then
			AddEventItem(180)
			Msg2Player("B¹n nhËn ®­îc <color=yellow>Côc TÈy")
		elseif sx >= 180 and sx < 220 then
			AddEventItem(181)
			Msg2Player("B¹n nhËn ®­îc <color=pink>Hép Mùc Mµu §en")
		elseif sx >= 220 and sx < 240 then
			AddEventItem(182)
			Msg2Player("B¹n nhËn ®­îc <color=pink>Hép Mùc Mµu Xanh")
		end
		Talk(0,"")
else
Talk(1,"","hack ha em")
end
end