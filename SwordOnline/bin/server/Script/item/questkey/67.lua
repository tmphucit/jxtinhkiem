function main(idx)
sl = GetItemCount(67)

DelItemIdx(idx);

if GetItemCount(67) == sl -1 then
		sx = random(1,239)
		if sx < 60 then
			AddEventItem(178)
			Msg2Player("B�n nh�n ���c <color=yellow>Gi�y Tr�ng")
		elseif sx >= 60 and sx < 120 then
			AddEventItem(179)
			Msg2Player("B�n nh�n ���c <color=yellow>C�y Vi�t")
		elseif sx >= 120 and sx < 180 then
			AddEventItem(180)
			Msg2Player("B�n nh�n ���c <color=yellow>C�c T�y")
		elseif sx >= 180 and sx < 220 then
			AddEventItem(181)
			Msg2Player("B�n nh�n ���c <color=pink>H�p M�c M�u �en")
		elseif sx >= 220 and sx < 240 then
			AddEventItem(182)
			Msg2Player("B�n nh�n ���c <color=pink>H�p M�c M�u Xanh")
		end
		Talk(0,"")
else
Talk(1,"","hack ha em")
end
end