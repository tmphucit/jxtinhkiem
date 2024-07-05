function OnDeath()
end
function OnDrop()
if GetTask(157) ~= 21 then
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
return
end
team = GetTeam()
if GetTeam() == nil then
	if GetTask(157) == 21 and GetTask(156) == 0 then
	SetTask(156,1)
	AddOwnExp(5000)
	Msg2Player("B¹n nhËn ®­îc 5.000 kinh nghiÖm")
	Talk(1,"","NhiÖm vô hoµn thµnh ! Quay vÒ gÆp Ng¹o V©n T«ng ")
	else
	Talk(1,"","Ta ®©u cã thï o¸n g× víi nhµ ng­¬i ...")
	end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		if GetTask(157) == 21 and GetTask(156) == 0 then
		SetTask(156,1)
		AddOwnExp(2500)
		Msg2Player("B¹n nhËn ®­îc 2.500 kinh nghiÖm")
		Talk(1,"","NhiÖm vô hoµn thµnh ! Quay vÒ gÆp Ng¹o V©n T«ng ")
	
		else
		Talk(1,"","Ta ®©u cã thï o¸n g× víi nhµ ng­¬i ...")
		end
	end
	end
end
end