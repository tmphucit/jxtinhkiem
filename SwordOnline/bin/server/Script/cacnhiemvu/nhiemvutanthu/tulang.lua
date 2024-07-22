function main()
if GetTask(493) == 7 then
	if GetItemCount(638) >= 1 then
		SetTask(493,8)
		DelItem(638)
		Talk(1,"","C¸m ¬n ®¹i hiÖp ®· mang c¬m ®Õn cho ta, ng­¬i cã thÓ quay vÒ ®­îc råi")
		Msg2Player("<color=green>[NhiÖm Vô T©n Thñ]<color=red> Quay vÒ gÆp Con G¸i Vâ S­ ")
	else
		Talk(1,"","C¬m cña ta ®©u, ch¼ng lÎ ng­¬i ¨n hÕt råi sao?")
	end
else
	Talk(1,"","Tİnh ra b©y giê ta còng chØ lµ mét g· tiÓu phu ")
end
end