
function OnDeath()
end

function OnDrop()
numteam = GetTeamSize()
team = GetTeam()
name = GetName()
w1,x1,y1 = GetWorldPos()
if GetTeam() == nill then
	if GetTask(172) > 18 then
	for k=1,12000 do AddOwnExp(1000) end
	Msg2Player("B¹n chØ s¨n boss 1 m×nh, nhËn ®­îc 12.000.000 kinh nghiÖm")
	else
	for k=1,10000 do AddOwnExp(1000) end
	Msg2Player("B¹n chØ s¨n boss 1 m×nh, nhËn ®­îc 10.000.000 kinh nghiÖm")
	end

	Earn(100000)
	Msg2Player("B¹n nhËn ®­îc 10 v¹n l­îng !")
	
	SetTask(172,GetTask(172)+10*60*18)
	AddSkillEffect(460,1,GetTask(172))
	Msg2Player("Thêi gian nh©n ®«i kinh nghiÖm cña b¹n t¨ng lªn: "..floor(GetTask(172)/60/18).." phót !")
	SetTask(141,1)

	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if GetName() ~= name then
				if w == w1 and (x > x1 - 40 and x < x1 + 40) and (y > y1 - 80 and y < y1 + 80) then
					if GetTask(172) > 18 then
					for k=1,1200 do AddOwnExp(1000) end
					Msg2Player("B¹n ë trong khu vùc C©y Ngò Qu¶, nhËn ®­îc 1.200.000 kinh nghiÖm")
					else
					for k=1,1000 do AddOwnExp(1000) end
					Msg2Player("B¹n ë trong khu vùc C©y Ngò Qu¶, nhËn ®­îc 1.000.000 kinh nghiÖm")
					end
					SetTask(172,GetTask(172)+10*60*18)
					AddSkillEffect(460,1,GetTask(172))
					Msg2Player("Thêi gian nh©n ®«i kinh nghiÖm cña b¹n t¨ng lªn: "..floor(GetTask(172)/60/18).." phót !")
					SetTask(141,1)
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
				if GetName() == name then
					if GetTask(172) > 8 then
					for k=1,12000 do AddOwnExp(1000) end
					Msg2Player("B¹n ®· tiªu diÖt C©y Ngò Qu¶ nhËn ®­îc 12.000.000 kinh nghiÖm")
					else
					for k=1,10000 do AddOwnExp(1000) end
					Msg2Player("B¹n ®· tiªu diÖt C©y Ngò Qu¶ nhËn ®­îc 10.000.000 kinh nghiÖm")
					end
					Earn(100000)
					Msg2Player("B¹n nhËn ®­îc 10 v¹n l­îng !")
				else
					if GetTask(172) > 18 then
					
					for k=1,6000 do AddOwnExp(1000) end
					Msg2Player(""..name.." ®· tiªu diÖt C©y Ngò Qu¶ mang vÒ cho b¹n 6.000.000 kinh nghiÖm")
					else
					for k=1,5000 do AddOwnExp(1000) end
					Msg2Player(""..name.." ®· tiªu diÖt C©y Ngò Qu¶ mang vÒ cho b¹n 5.000.000 kinh nghiÖm")
					end
					Earn(50000)
					Msg2Player("B¹n nhËn ®­îc 5 v¹n l­îng !")
				end
				SetTask(172,GetTask(172)+10*60*18)
				AddSkillEffect(460,1,GetTask(172))
				Msg2Player("Thêi gian nh©n ®«i kinh nghiÖm cña b¹n t¨ng lªn: "..floor(GetTask(172)/60/18).." phót !")
				SetTask(141,1)
			elseif w == w1 and (x > x1 - 40 and x < x1 + 40) and (y > y1 - 80 and y < y1 + 80) then
				if GetTask(172) > 18 then
					for k=1,1200 do AddOwnExp(1000) end
					Msg2Player("B¹n ë trong khu vùc C©y Ngò Qu¶, nhËn ®­îc 1.200.000 kinh nghiÖm")
					else
					for k=1,1000 do AddOwnExp(1000) end
					Msg2Player("B¹n ë trong khu vùc C©y Ngò Qu¶, nhËn ®­îc 1.000.000 kinh nghiÖm")
					end
				SetTask(172,GetTask(172)+10*60*18)
				AddSkillEffect(460,1,GetTask(172))
				Msg2Player("Thêi gian nh©n ®«i kinh nghiÖm cña b¹n t¨ng lªn: "..floor(GetTask(172)/60/18).." phót !")
				SetTask(141,1)
			end	
		end
	end
end
end


npcboss = {
{9,1591,3248},
{9,1584,3254},
{9,1574,3265},
{9,1565,3255},
{9,1557,3245},
{9,1566,3233},
{9,1574,3226},
{9,1582,3233},
{9,1571,3239},
{9,1576,3245}
}



