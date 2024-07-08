
function OnDeath()
end

function OnDrop()
ngay = tonumber(date("%d"))
idx = PlayerIndex
Msg2SubWorld("Chóc mõng ®¹i hiÖp ["..GetName().."] ®· tiªu diÖt Boss Vâ L©m Håi øc vµ ®em l¹i cho toµn server rÊt nhiÒu kinh nghiÖm. ")
numteam = GetTeamSize()
team = GetTeam()
name = GetName()

idxitem = AddItem(0,3,6,1,0,0,0)
Msg2SubWorld("- "..GetName().." nhËn ®­îc 1 <color=pink>"..GetNameItemBox(idxitem).."")
idxitem =  AddEventItem(652)
Msg2SubWorld("- "..GetName().." nhËn ®­îc 1 <color=pink>"..GetNameItemBox(idxitem).."")
idxitem = AddEventItem(0)
Msg2SubWorld("- "..GetName().." nhËn ®­îc 1 <color=pink>"..GetNameItemBox(idxitem).."")
idxitem = AddEventItem(1)
Msg2SubWorld("- "..GetName().." nhËn ®­îc 1 <color=pink>"..GetNameItemBox(idxitem).."")

if GetTeam() == nill then
	AddOwnExp(50000000)
	Msg2Player("B¹n chØ s¨n boss 1 m×nh, nhËn ®­îc 50.000.000 kinh nghiÖm")
	Msg2SubWorld("§¹i hiÖp ["..GetName().."] ®· ®¬n th©n tiªu diÖt boss, nhËn ®­îc 50.000.000 kinh nghiÖm ")
	
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if GetName() ~= name then
				if w == 9 and (x > 191*8 and x < 201*8) and (y > 197*16 and y < 207*16) then
					AddOwnExp(40000000)
					Msg2Player("B¹n ë trong khu vùc s¨n boss, nhËn ®­îc 40.000.000 kinh nghiÖm")
				else
					AddOwnExp(20000000)
					Msg2Player("Boss Vâ L©m Håi øc ®· bÞ tiªu diÖt, mang l¹i cho b¹n 20.000.000 kinh nghiÖm ")
				end
			end
		end
	end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if GetTeam() == team then
				AddOwnExp(50000000)
				Msg2Player("B¹n chØ s¨n boss 1 m×nh, nhËn ®­îc 50.000.000 kinh nghiÖm")
				Msg2SubWorld("§¹i hiÖp ["..GetName().."] thuéc nhãm tiªu diÖt boss, nhËn ®­îc 50.000.000 kinh nghiÖm ")
			elseif w == 9 and (x > 191*8 and x < 201*8) and (y > 197*16 and y < 207*16) then
				AddOwnExp(40000000)
				Msg2Player("B¹n ë trong khu vùc s¨n boss, nhËn ®­îc 40.000.000 kinh nghiÖm")
			else
				AddOwnExp(20000000)
				Msg2Player("Boss Vâ L©m Håi øc ®· bÞ tiªu diÖt, mang l¹i cho b¹n 20.000.000 kinh nghiÖm ")
			end
		end
	end
end

PlayerIndex = idx
end



