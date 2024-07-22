
function OnDeath()
end

function OnDrop()
ngay = tonumber(date("%d"))
idx = PlayerIndex
Msg2SubWorld("Chóc mõng ®¹i hiÖp ["..GetName().."] ®· tiªu diÖt Boss Vâ L©m Håi øc vµ ®em l¹i cho toµn server rÊt nhiÒu kinh nghiÖm. ")
numteam = GetTeamSize()
team = GetTeam()
name = GetName()

if GetTeam() == nill then
	for i=1,10 do AddOwnExp(1000000) end
	Msg2Player("B¹n chØ s¨n boss 1 m×nh, nhËn ®­îc 10.000.000 kinh nghiÖm")
	Msg2SubWorld("§¹i hiÖp ["..GetName().."] ®· ®¬n th©n tiªu diÖt boss, nhËn ®­îc 10.000.000 kinh nghiÖm ")
	
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if GetName() ~= name then
				if w == 9 and (x > 191*8 and x < 201*8) and (y > 197*16 and y < 207*16) then
					for i=1,5 do AddOwnExp(1000000) end
					Msg2Player("B¹n ë trong khu vùc s¨n boss, nhËn ®­îc 5.000.000 kinh nghiÖm")
				else
					for i=1,10 do AddOwnExp(100000) end
					Msg2Player("Boss Vâ L©m Håi øc ®· bŞ tiªu diÖt, mang l¹i cho b¹n 1.000.000 kinh nghiÖm ")
				end
			end
			SetTask(172,GetTask(172)+2*60*60*18)
			AddSkillEffect(460,1,GetTask(172))
			Msg2Player("Thêi gian nh©n ®«i kinh nghiÖm cña b¹n t¨ng lªn: "..floor(GetTask(172)/60/18).." phót !")
			SetTask(141,1)	
		end
	end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if GetTeam() == team then
				for i=1,10 do AddOwnExp(1000000) end
				Msg2Player("B¹n thuéc nhãm tiªu diÖt Boss, nhËn ®­îc 10.000.000 kinh nghiÖm")
				Msg2SubWorld("§¹i hiÖp ["..GetName().."] thuéc nhãm tiªu diÖt boss, nhËn ®­îc 10.000.000 kinh nghiÖm ")
			elseif w == 9 and (x > 191*8 and x < 201*8) and (y > 197*16 and y < 207*16) then
				for i=1,5 do AddOwnExp(1000000) end
				Msg2Player("B¹n ë trong khu vùc s¨n boss, nhËn ®­îc 5.000.000 kinh nghiÖm")
			else
				for i=1,10 do AddOwnExp(100000) end
				Msg2Player("Boss Vâ L©m Håi øc ®· bŞ tiªu diÖt, mang l¹i cho b¹n 1.000.000 kinh nghiÖm ")
			end
			SetTask(172,GetTask(172)+2*60*60*18)
			AddSkillEffect(460,1,GetTask(172))
			Msg2Player("Thêi gian nh©n ®«i kinh nghiÖm cña b¹n t¨ng lªn: "..floor(GetTask(172)/60/18).." phót !")
			SetTask(141,1)	
		end
	end
end

PlayerIndex = idx
end



