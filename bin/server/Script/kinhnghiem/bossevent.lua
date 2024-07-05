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
		
		ngay = tonumber(date("%d"))
		if floor(GetTask(131)/1000) ~= ngay then
		SetTask(131,ngay*1000)
		Msg2Player("Reset giíi h¹n Boss KÎ Ham Ch¬i qua ngµy míi !")
		end
		
		if mod(GetTask(131),1000) >= 20 then
		Talk(1,"","B¹n ®· nhËn ®ñ 20 lÇn phÇn th­ëng boss trong ngµy h«m nay !")
		return
		end

		SetTask(131,GetTask(131) + 1)
		for k=1,5 do AddOwnExp(1000000) end
		Msg2Player("B¹n nhËn ®­îc 5.000.000 kinh nghiÖm !")
		Msg2Player("Giíi h¹n boss: "..mod(GetTask(131),1000).." / 20 con !")
	end
	end
end
end
