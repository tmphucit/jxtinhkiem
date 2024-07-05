function main()
Say("<color=green>Thá Tr¾ng<color>: Ng­¬i cã mang thøc ¨n ®Õn cho ta kh«ng ?",2,
"Cho Thá ¡n/chothoan",
"Ta kh«ng mang theo thøc ¨n/no")
end

function no()
end
function chothoan()
if GetTask(135) >= 100 then
Talk(1,"","Ng­¬i ®· cho ta ¨n ®ñ 100 lÇn råi, ta kh«ng thÓ ¨n thªm ®­îc n÷a!")
return
end
nl = GetItemCount(191)
	if GetItemCount(191) >= 1 then
		DelItem(191)
		if GetItemCount(191) == nl -1 then
			SetTask(135,GetTask(135)+1)
			AddOwnExp(500000)
			Msg2Player("B¹n nhËn ®­îc 500.000 kinh nghiÖm !")
			Msg2Player("Sè lÇn cho ¨n "..GetTask(135).."/100")
		end
	else
		Talk(1,"","Ng­¬i kh«ng mang theo thøc ¨n")
	end
end