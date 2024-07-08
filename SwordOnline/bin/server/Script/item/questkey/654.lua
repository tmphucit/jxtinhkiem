

function main(idx)

if GetTask(483) > 0 then
Talk(1,"","B¹n ®ang trong thêi gian sö dông May M¾n, kh«ng thÓ sö dông thªm !")
return
end 

if GetTask(488) == 1 then
Talk(1,"","B¹n ®ang trong thêi gian sö dông Thiªn S¬n B¶o Lé, kh«ng thÓ sö dông thªm ! ")
return
end

name = GetName()
n = GetItemCount(654)
if GetItemCount(654) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(654) == (n-1) then

							if GetTask(483) == 0 then
		
										SetTask(483, 10*60*18)
										SetTask(488, 2)
										
					end
			else
			Talk(1,"","Hack Ha Em")
			end
end
end

