

function main(idx)

n = GetItemCount(361)

if GetItemCount(361) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(361) == (n-1) then
				sx = random(1,99)
				if sx < 33 then
					AddEventItem(356)
					Msg2Player("B�n nh�n ���c <color=blue>Chi�c M� Chi�n S� ")
				elseif sx >= 33 and sx < 66 then
					AddEventItem(360)
					Msg2Player("B�n nh�n ���c <color=blue>Ba L� Con C�c")
				else
					AddEventItem(357)
					Msg2Player("B�n nh�n ���c <color=blue>��i Gi�y B� ��i")				
				end
			else
			Talk(1,"","Hack Ha Em")
			end
end
		
end

