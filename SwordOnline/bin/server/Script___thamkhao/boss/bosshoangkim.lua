
function OnDeath(idxnpc)


end

function OnDrop(idxnpc)
team = GetTeam()
bang = GetTongName()
name = GetName()
w,x,y = GetWorldPos()
idx = PlayerIndex
if bang ~= "" then
Msg2SubWorld("Boss <color=green>"..GetNpcName(idxnpc).." <color=red>®· bÞ <color=yellow>"..name.." - <color=red>thuéc bang <color=yellow>"..bang.." <color=red>tiªu diÖt !")
Earn(2000000)
Msg2SubWorld("<color=yellow>- "..GetName().." nhËn ®­îc 200 v¹n l­îng")	
		idxplayer = PlayerIndex	
		for i=1,GetCountPlayerMax() do
			PlayerIndex = i
			w1,x1,y1 = GetWorldPos()
			if GetTongName() == bang and w == w1 and (x1 >= x-40 and x1 <= x+40) and (y1 >= y-80 and y1 <= y+80) then

				AddOwnExp(30000000)
				Msg2Player("B¹n nhËn ®­îc 30.000.000 kinh nghiÖm")
				sxmanh = RandomNew(1,100)
				
				if sxmanh < 30 then
						idxitem = AddEventItem(random(895,903))
						Msg2SubWorld("+ "..GetName().." nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
				end
				if sxmanh < 3 then
						idxitem = AddEventItem(random(270,271))
						Msg2SubWorld("+ "..GetName().." nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
				end
				if sxmanh == 50 then
						idxitem = AddEventItem(random(919,920))
						Msg2SubWorld("+ "..GetName().." nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
				end
			else
				Msg2Player("B¹n kh«ng thuéc b¶n ®å Boss ChÕt hoÆc c¸ch xa boss qu¸ 5 täa ®é, kh«ng nhËn ®­îc phÇn th­ëng kinh nghiÖm")
		
			end
			
		end

else
		Msg2SubWorld("Boss <color=green>"..GetNpcName(idxnpc).." <color=red>®· bÞ <color=yellow>"..name.." <color=red>tiªu diÖt !")
		Earn(2000000)
		Msg2SubWorld("<color=yellow>- "..GetName().." nhËn ®­îc 200 v¹n l­îng")		

end

		idxplayer = PlayerIndex	
end
