function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))
team = GetTeam()
Msg2World("C©y Th«ng Gi¸ng Sinh ®· bÞ "..GetName().." tiªu diÖt !")

if GetTeam() ~= nill then
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetTeam() == team and GetLevel() < 100 and GetCamp() ~= 0 then
			if floor(GetTask(330) / 1000) ~= ngay then
				SetTask(330 , ngay * 1000)
			end
		
			if mod ( GetTask(330) , ngay*1000) < 10 then
				AddOwnExp(2000000)
				Msg2Player("B¹n nhËn ®­îc 2000000 kinh nghiÖm")
				AddEventItem(378)
				Msg2Player("B¹n nhËn ®­îc 1 C©y Th«ng")
				SetTask(330 , GetTask(330) + 1)
				Msg2Player("Sè l­îng Boss tiªu diÖt trong ngµy: "..mod ( GetTask(330) , ngay*1000).." / 10 con")
			else
				Talk(1,"","B¹n ®· tiªu diÖt tèi ®a 10 C©y Th«ng Gi¸ng Sinh trong ngµy h«m nay !")
			end
		end
	end
else
				
		if floor(GetTask(330) / 1000) ~= ngay then
			SetTask(330 , ngay * 1000)
		end
		if mod ( GetTask(330) , ngay*1000) < 10 then
				AddOwnExp(2000000)
				Msg2Player("B¹n nhËn ®­îc 2000000 kinh nghiÖm")
				AddEventItem(378)
				Msg2Player("B¹n nhËn ®­îc 1 C©y Th«ng")
				SetTask(330 , GetTask(330) + 1)
				Msg2Player("Sè l­îng Boss tiªu diÖt trong ngµy: "..mod ( GetTask(330) , ngay*1000).." / 10 con")
			else
				Talk(1,"","B¹n ®· tiªu diÖt tèi ®a 10 C©y Th«ng Gi¸ng Sinh trong ngµy h«m nay !")
			end
end
end

