function OnDeath()

ngay = tonumber(date("%d"))
w,x,y = GetWorldPos()
if w == 2 then
SetGlbMissionV(43 , GetGlbMissionV(43) - 1)
Msg2World("<color=yellow>"..GetName().." ®· tiªu diÖt Boss Kú L©n Vµng ")
Msg2World("Sè l­îng Boss Kú L©n Vµng cßn l¹i: <color=pink>"..GetGlbMissionV(43).." con")
elseif w == 24 then
SetGlbMissionV(44 , GetGlbMissionV(44) - 1)
Msg2World("<color=yellow>"..GetName().." ®· tiªu diÖt Boss Kú L©n Vµng ")
Msg2World("Sè l­îng Boss Kú L©n Vµng cßn l¹i: <color=pink>"..GetGlbMissionV(44).." con")
end

team = GetTeam()

if GetTeamSize() < 3 then
Talk(1,"","Tæ ®éi d­íi 3 ng­êi, kh«ng nhËn ®­îc phÇn th­ëng")
return
end


if GetItemCount(206) > 0 then
DelItem(206)
AddEventItem(129)
Msg2Player("B¹n nhËn ®­îc 1 <color=pink>Hoµng Kim S¸t")
end
AddEventItem(327)
Msg2Player("B¹n nhËn ®­îc 1 <color=pink>Ph¸o Hoa N¨m Míi")
idx = PlayerIndex
if GetTeam() ~= nill then
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		w1,x1,y1 = GetWorldPos()
		if GetTeam() == team then
			if w == w1 then
				if floor(GetTask(330) / 1000) ~= ngay then
					SetTask(330 , ngay * 1000)
				end
				if mod ( GetTask(330) , ngay*1000) < 10 then
					AddOwnExp(20000000)
					Msg2Player("B¹n nhËn ®­îc 20.000.000 kinh nghiÖm")
					SetTask(330 , GetTask(330) + 1)
					Msg2Player("Sè l­îng Boss tiªu diÖt trong ngµy: "..mod ( GetTask(330) , ngay*1000).." / 10 con")
					SetTask(484, GetTask(484) + 5)
					Msg2Player("B¹n nhËn ®­îc <color=green>5 ®iÓm TÝch Lòy VIP")
				else
					Talk(1,"","B¹n ®· tiªu diÖt tèi ®a 10 Boss Kú L©n Vµng trong ngµy h«m nay !")
				end
			else
				Msg2Player("B¹n kh«ng cïng b¶n ®å Boss nªn kh«ng ®­îc nhËn phÇn th­ëng")
			end
		end
	end
end
PlayerIndex = idx

end

function OnDrop(NpcIdx)

end

