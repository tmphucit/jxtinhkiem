iditem = 378

function main(idx)
n = GetItemCount(iditem)
		
if GetItemCount(iditem) >= 1 then
			DelItemIdx(idx);
			if (GetItemCount(iditem) == n-1) then
					SetTask(15, GetTask(15) + 1000)
					Msg2Player("Bπn nhÀn Æ≠Óc 1000 Æi”m T›ch LÚy TËng Kim")
					Msg2Player("SË Æi”m t›ch lÚy hi÷n tπi lµ: <color=yellow>"..GetTask(15).." Æi”m")			
			else
			Talk(1,"","Hack Ha Em")
			end
end
	
	
end
