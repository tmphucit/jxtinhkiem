

function main(idx)
idxitem = 316
n = GetItemCount(idxitem)
if GetLevel() >= 155 then
Talk(1,"","§¼ng cÊp 155 trë lªn kh«ng thÓ sö dông")
return
end
if GetItemCount(idxitem) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(idxitem) == (n-1) then
				
				AddOwnExp(400000)
			
			else
			Talk(1,"","Hack Ha Em")
			end
end
end
