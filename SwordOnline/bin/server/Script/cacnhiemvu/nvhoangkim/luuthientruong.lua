function OnDeath()

end

function OnDrop()
if GetTask(157) ~= 12 then
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
return
end
team = GetTeam()
if GetTeam() == nil then
	if GetTask(157) == 12 and GetTask(156) == 0 then
	SetTask(156,1)
	AddOwnExp(12500)
	Msg2Player("NhiÖm Vô: Quay vÒ GÆp LiÔu Nam V©n ")	
	Msg2Player("B¹n nhËn ®­îc 25000 kinh nghiÖm")
	Talk(1,"","NhiÖm vô hoµn thµnh! Quay vÒ gÆp LiÔu Nam V©n ")
	else
	Talk(1,"","Ta ®©u cã thï o¸n g× víi nhµ ng­¬i .......")
	end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		if GetTask(157) == 12 and GetTask(156) == 0 then
		SetTask(156,1)
		AddOwnExp(12500)
		Msg2Player("NhiÖm Vô: Quay vÒ GÆp LiÔu Nam V©n ")	
		Msg2Player("B¹n nhËn ®­îc 25000 kinh nghiÖm")
		Talk(1,"","NhiÖm vô hoµn thµnh! Quay vÒ gÆp LiÔu Nam V©n ")
		else
		Talk(1,"","Ta ®©u cã thï o¸n g× víi nhµ ng­¬i .......")
		end
	end
	end
end
end