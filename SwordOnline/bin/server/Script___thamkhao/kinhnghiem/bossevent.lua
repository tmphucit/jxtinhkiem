function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))

team = GetTeam()
w,x,y = GetWorldPos()
map = w
if GetTeamSize() < 3 then
Talk(1,"","Kh«ng ®ñ 3 thµnh viªn nhãm, ko nhËn ®­îc vËt phÈm !")
return
end



DropEvent(NpcIdx)
if GetTeam() ~= nill then	
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
	if GetTeam() == team and w == map then	
		if floor(GetTask(135)/1000) ~= ngay then
		SetTask(135,ngay*1000)
		end
		if mod(GetTask(135),1000) < 20 then
		AddOwnExp(20000000)
		Msg2Player("B¹n nhËn ®­îc 20.000.000 kinh nghiÖm!")
		SetTask(135,GetTask(135) + 1)
		Msg2Player("Giíi h¹n boss: "..mod(GetTask(135),1000).." / 20")
		else
			Talk(1,"","B¹n ®· ®ñ 20 con boss trong ngµy !")
		end
	end
	end
end
end
