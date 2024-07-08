function main()
	if GetTask(496) == 5 then
		
		SetTask(496,6)
		Talk(1,"","H·y ®Õn ThÊt S¸t §éng tiªu diÖt D· Tr­ mang 10 M·nh ThŞt vÒ cho ta !")
		Msg2Player("<color=green>[NhiÖm Vô T©n Thñ] <color=red>Qua ThÊt S¸t §éng 188/199 tiªu diÖt D· Tr­ nhÆt 10 M·nh ThŞt")
	elseif GetTask(496) == 6 then
		if GetItemCount(633) >= 10 then
			for p=1,GetItemCount2(633) do DelAllItem(633) end 
			SetTask(496,7)
			Msg2Player("C¸m ¬n ng­¬i ®· mang ®ñ sè thŞt ta cÇn, vÒ gÆp L­u Quİ ®Ó phôc mÖnh")
		else
			Talk(1,"","Ng­¬i kh«ng mang ®ñ 10 m·nh thŞt, kh«ng thÓ hoµn thµnh nhiÖm vô !")
		end
	else
	Talk(1,"","Nhµ ta ®ang ®·i tiÖc, ng­¬i ®Õn gãp vui nhĞ !")
end	
end