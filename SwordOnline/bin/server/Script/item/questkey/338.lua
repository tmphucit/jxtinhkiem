Include("\\script\\global\\sourcejx49.lua")
idxitem = TUIQUA

function main(idx)
n = GetItemCount(idxitem)
if GetItemCount(idxitem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(idxitem) == (n-1) then
		sx = random(1,100)
		if sx <= 25 then
				AddEventItem(BOT)
				Msg2Player("B¹n nhËn ®­îc 1 GiÊy gãi hoa")
		elseif sx > 26 and sx <= 50 then
				AddEventItem(TRUNG)
				Msg2Player("B¹n nhËn ®­îc 1 N¬ ®á")
		elseif sx > 50 and sx <= 75 then
				AddEventItem(SUA)
				Msg2Player("B¹n nhËn ®­îc 1 Hoa cóc tr¾ng")
		elseif sx > 75 and sx <= 94 then
				AddEventItem(DAUXANH)
				Msg2Player("B¹n nhËn ®­îc 1 <color=blue>Hoa Cóc Vµng")
		else
				AddEventItem(THITHEO)
				Msg2Player("B¹n nhËn ®­îc 1 <color=pink>Hoa Hång §á")
		end
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end

end
