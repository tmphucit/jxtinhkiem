iditem = 378

function main(idx)
n = GetItemCount(iditem)
		
if GetItemCount(iditem) >= 1 then
			DelItemIdx(idx);
			if (GetItemCount(iditem) == n-1) then
					SetTask(15, GetTask(15) + 1000)
					Msg2Player("B�n nh�n ���c 1000 �i�m T�ch L�y T�ng Kim")
					Msg2Player("S� �i�m t�ch l�y hi�n t�i l�: <color=yellow>"..GetTask(15).." �i�m")			
			else
			Talk(1,"","Hack Ha Em")
			end
end
	
	
end
