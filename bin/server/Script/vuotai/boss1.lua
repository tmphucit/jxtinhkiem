function OnDeath()
SetGlbMissionV(39,0)
SetGlbMissionV(40,GetGlbMissionV(40)+1)
Msg2World(""..GetName().." ®· tiªu diÖt Boss !!!")
sx2 = random(2,4)
		sx3 = random(1,30)
		if sx2 == 2 then
			AddEventItem(random(113,114))
			Msg2Player("B¹n nhËn ®­îc 1 vËt phÈm quý ")
		elseif sx2 == 3 then
			AddEventItem(random(75,102))
			Msg2Player("B¹n nhËn ®­îc 1 viªn Thñy tinh")
		elseif sx2 == 4 then 
		AddEventItem(random(28,31))
		end	
		if sx3 == 5 then 
			AddEventItem(255)
			Msg2SubWorld("§¹i hiÖp "..GetName().." Võa nhËn ®­îc 1 M·nh Vò KhÝ Hoµng Kim")
			elseif sx3 > 1 and sx3 < 5 then
			AddEventItem(254)
			Msg2SubWorld("§¹i hiÖp "..GetName().." Võa nhËn ®­îc 1 M·nh Trang BÞ Hoµng Kim")
			else 
		end
end
function OnDrop(NpcIdx)
DropEvent(NpcIdx)
end