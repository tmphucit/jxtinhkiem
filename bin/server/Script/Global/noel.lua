function OnDeath()
end

function OnDrop()
team = GetTeam()
name = GetName()
Msg2SubWorld("Chóc mõng nhãm cña ["..name.."] ®· tiªu diÖt Boss ¤ng Giµ Noel vµ mang vÒ cho m×nh nhiÒu vËt phÈm gi¸ trŞ !")
if GetTeam() ~= nill then
	for i =1,2000 do
		PlayerIndex = i
		if GetTeam() == team then
			if GetTask(135) == 0 then
				for i = 1,40 do AddOwnExp(1000000) end
				Msg2Player("B¹n nhËn ®­îc 40.000.000 kinh nghiÖm ")
				SetTask(135,9999)
				Msg2Player("B¹n nhËn ®­îc nh©n ®«i x¸c suÊt rít hép quµ ®Õn khi kÕt thóc event  ")
				Msg2SubWorld("Chóc mõng ["..GetName().."] tiªu diÖt Boss ¤ng Giµ Noel nhËn ®­îc nh©n ®«i tèc ®é rít Hép Quµ Gi¸ng Sinh vµ 40.000.000 kinh nghiÖm ")
				
			else
				for i = 1,40 do AddOwnExp(1000000) end
				Msg2Player("B¹n nhËn ®­îc 40.000.000 kinh nghiÖm ")
				Msg2SubWorld("Chóc mõng ["..GetName().."] tiªu diÖt Boss ¤ng Giµ Noel nhËn ®­îc 40.000.000 kinh nghiÖm !")
			end
		end
	end
else
	if GetTask(135) == 0 then
		for i = 1,40 do AddOwnExp(1000000) end
		Msg2Player("B¹n nhËn ®­îc 40.000.000 kinh nghiÖm ")
		SetTask(135,9999)
		Msg2Player("B¹n nhËn ®­îc nh©n ®«i x¸c suÊt rít hép quµ ®Õn khi kÕt thóc event  ")	
		Msg2SubWorld("Chóc mõng ["..GetName().."] tiªu diÖt Boss ¤ng Giµ Noel nhËn ®­îc nh©n ®«i tèc ®é rít Hép Quµ Gi¸ng Sinh vµ 40.000.000 kinh nghiÖm ")
	else
		for i = 1,40 do AddOwnExp(1000000) end
		Msg2Player("B¹n nhËn ®­îc 40.000.000 kinh nghiÖm ")
		Msg2SubWorld("Chóc mõng ["..GetName().."] tiªu diÖt Boss ¤ng Giµ Noel nhËn ®­îc 40.000.000 kinh nghiÖm !")	
	end
end
end