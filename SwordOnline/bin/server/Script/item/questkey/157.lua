function main(idx)
sl = GetItemCount(157)

DelItemIdx(idx);

if GetItemCount(157) == sl -1 then
		sx = RandomNew(1,300)
		if sx < 60 then
			AddEventItem(372)
			Msg2Player("B�n nh�n ���c <color=yellow>Hoa Tuy�t")
		elseif sx >= 60 and sx < 120 then
			AddEventItem(373)
			Msg2Player("B�n nh�n ���c <color=yellow>C� R�t")
		elseif sx >= 120 and sx < 180 then
			AddEventItem(374)
			Msg2Player("B�n nh�n ���c <color=yellow>C�nh Th�ng")
		elseif sx >= 180 and sx < 240 then
			AddEventItem(375)
			Msg2Player("B�n nh�n ���c <color=yellow>N�n Gi�ng Sinh")
		elseif sx >= 240 and sx < 280 then
			AddEventItem(376)
			Msg2Player("B�n nh�n ���c <color=green>Kh�n Cho�ng Xanh")
		elseif sx >= 280 and sx < 300 then
			AddEventItem(377)
			Msg2Player("B�n nh�n ���c <color=red>Kh�n Cho�ng �� ")
		elseif sx == 300 then
			AddEventItem(378)
			Msg2Player("B�n nh�n ���c <color=blue>C�y Th�ng")
		end
		Talk(0,"")
else
Talk(1,"","hack ha em")
end
end