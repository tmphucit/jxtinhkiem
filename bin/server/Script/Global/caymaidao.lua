function main()
Say("C©y mai, c©y ®µo t­îng tr­ng cho ngµy tÕt cæ truyÒn cña d©n téc. H·y dïng nh÷ng ch÷ kiÕm ®­îc treo lªn c©y ®Ó nhËn nhiÒu may m¾n.\n<color=green>!!!!!! Happy New Year !!!!!! ",2,
"Treo Phóc Léc Thä /treochu",
"Bá qua/no")
end

function no()
end

function treochu()
task = GetTask(102)
n1 = GetItemCount(219)
n2 = GetItemCount(220)
n3 = GetItemCount(221)

if GetTask(102) < 600 then
	if GetItemCount(219) >= 1 and GetItemCount(220) >= 1 and GetItemCount(221) >= 1 then
		DelItem(219)
		DelItem(220)
		DelItem(221)		
		SetTask(102,GetTask(102)+1)
		if GetItemCount(219) == n1 - 1 and GetItemCount(220) == n2 - 1 and GetItemCount(221) == n3-1 and GetTask(102) == task + 1 then
			for i=1,500 do AddOwnExp(1000) end
			Msg2Player("B¹n nhËn ®­îc 500.000 kinh nghiÖm !")
			Msg2Player("Giíi h¹n sù kiÖn treo ch÷ : "..GetTask(102).." / 600 bé !")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","B¹n kh«ng mang ®ñ bé ch÷ Phóc - Léc - Thä ")
	end
else
	Talk(1,"","Giíi h¹n treo ch÷ cña b¹n ®· ®¹t tèi ®a 600 c¸i !")
end
end