function main(idx)
sl = GetItemCount(157)

DelItemIdx(idx);

if GetItemCount(157) == sl -1 then
		sx = RandomNew(1,300)
		if sx < 60 then
			AddEventItem(372)
			Msg2Player("B¹n nhËn ®­îc <color=yellow>Hoa TuyÕt")
		elseif sx >= 60 and sx < 120 then
			AddEventItem(373)
			Msg2Player("B¹n nhËn ®­îc <color=yellow>Cµ Rèt")
		elseif sx >= 120 and sx < 180 then
			AddEventItem(374)
			Msg2Player("B¹n nhËn ®­îc <color=yellow>Cµnh Th«ng")
		elseif sx >= 180 and sx < 240 then
			AddEventItem(375)
			Msg2Player("B¹n nhËn ®­îc <color=yellow>Nãn Gi¸ng Sinh")
		elseif sx >= 240 and sx < 280 then
			AddEventItem(376)
			Msg2Player("B¹n nhËn ®­îc <color=green>Kh¨n Choµng Xanh")
		elseif sx >= 280 and sx < 300 then
			AddEventItem(377)
			Msg2Player("B¹n nhËn ®­îc <color=red>Kh¨n Choµng §á ")
		elseif sx == 300 then
			AddEventItem(378)
			Msg2Player("B¹n nhËn ®­îc <color=blue>C©y Th«ng")
		end
		Talk(0,"")
else
Talk(1,"","hack ha em")
end
end