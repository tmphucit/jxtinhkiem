

function main(idx)
idxitem = 317
n = GetItemCount(idxitem)
if GetLevel() >= 155 then
Talk(1,"","��ng c�p 155 tr� l�n kh�ng th� s� d�ng")
return
end
if GetItemCount(idxitem) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(idxitem) == (n-1) then
				
				AddOwnExp(500000)
			
			else
			Talk(1,"","Hack Ha Em")
			end
end
end
