
function OnDeath()
end

function OnDrop()
ngay = tonumber(date("%d"))
idx = PlayerIndex
Msg2SubWorld("Chóc mõng ®¹i hiÖp ["..GetName().."] ®· tiªu diÖt Boss Vâ L©m Håi øc vµ ®em l¹i cho toµn server rÊt nhiÒu kinh nghiÖm. ")
numteam = GetTeamSize()
team = GetTeam()
name = GetName()
if ngay == 29 then

idxitem = AddItem(0,10,6,1,0,0,0)
SetTimeItem(idxitem,550324)
Msg2SubWorld("<color=yellow>Wow...thËt lµ may m¾n! "..GetName().." ®· nhËn ®­îc 1 ThÇn Thó B«n Tiªu !")

else

AddEventItem(19)
Msg2Player("B¹n nhËn ®­îc cuèn BÝ KÝp 120 ")

end

if GetTeam() == nill then
	for k=1,200000 do AddOwnExp(1000) end
	Msg2Player("B¹n chØ s¨n boss 1 m×nh, nhËn ®­îc 200.000.000 kinh nghiÖm")
	Msg2SubWorld("§¹i hiÖp ["..GetName().."] ®· ®¬n th©n tiªu diÖt boss, nhËn ®­îc 200.000.000 kinh nghiÖm ")
	
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if GetName() ~= name then
				if w == 9 and (x > 191*8 and x < 201*8) and (y > 197*16 and y < 207*16) then
					for k=1,50000 do AddOwnExp(1000) end
					Msg2Player("B¹n ë trong khu vùc s¨n boss, nhËn ®­îc 50.000.000 kinh nghiÖm")
				else
					for k=1,10000 do AddOwnExp(1000) end
					Msg2Player("Boss Vâ L©m Håi øc ®· bÞ tiªu diÖt, mang l¹i cho b¹n 10.000.000 kinh nghiÖm ")
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
				for k=1,200000 do AddOwnExp(1000) end
				Msg2Player("B¹n thuéc nhãm tiªu diÖt Boss, nhËn ®­îc 200.000.000 kinh nghiÖm")
				Msg2SubWorld("§¹i hiÖp ["..GetName().."] thuéc nhãm tiªu diÖt boss, nhËn ®­îc 200.000.000 kinh nghiÖm ")
			elseif w == 9 and (x > 191*8 and x < 201*8) and (y > 197*16 and y < 207*16) then
				for k=1,50000 do AddOwnExp(1000) end
				Msg2Player("B¹n ë trong khu vùc s¨n boss, nhËn ®­îc 50.000.000 kinh nghiÖm")
			else
				for k=1,10000 do AddOwnExp(1000) end
				Msg2Player("Boss Vâ L©m Håi øc ®· bÞ tiªu diÖt, mang l¹i cho b¹n 10.000.000 kinh nghiÖm ")
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



