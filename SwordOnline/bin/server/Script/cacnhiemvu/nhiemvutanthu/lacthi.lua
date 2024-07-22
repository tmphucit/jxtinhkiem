function main()
if GetTask(496) == 3 then
	if GetItemCount(632) >= 5 then
		for p=1,5 do
			DelItem(632)
		end
		Talk(1,"","Ta ®· nhËn ®ñ 5 Lôc §©u, h·y vÒ gÆp L­u Quİ ®Ó phôc mÖnh")
		Msg2Player("<color=green>[NhiÖm Vô T©n Thñ] <color=red>Quay vÒ gÆp L­u Quİ ®Ó phôc mÖnh")
		SetTask(496,4)
	else
		Talk(1,"","Ta cÇn 5 Lôc §Ëu, ng­¬i kh«ng mang ®ñ yªu cÇu cña ta !")
	end
else
	Talk(1,"","N«i th©m s¬n cïng cèc nµy chØ cã m×nh ta ë ®©y")
end
end