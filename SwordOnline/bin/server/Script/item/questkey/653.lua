

function main(idx)

if GetTask(483) > 0 then
Talk(1,"","B¹n ®ang trong thêi gian sö dông May M¾n, kh«ng thÓ sö dông thªm !")
return
end 

if GetTask(488) == 2 then
Talk(1,"","B¹n ®ang trong thêi gian sö dông QuÕ Hoa Töu, kh«ng thÓ sö dông thªm ! ")
return
end

name = GetName()
n = GetItemCount(653)
if GetItemCount(653) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(653) == (n-1) then

							if GetTask(483) == 0 then
		
											SetTask(483,   10*60 * 18)
										SetTask(488, 1)
					end
			else
			Talk(1,"","Hack Ha Em")
			end
end
end

