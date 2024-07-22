function OnDeath()

end
function OnDrop()
if GetTask(157) ~= 18 then
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
return
end
team = GetTeam()
if GetTeam() == nil then
	if GetTask(157) == 18 and GetTask(156) == 0 then
	
	AddOwnExp(5000)
	Msg2Player("B¹n nhËn ®­îc 5.000 kinh nghiÖm")
	Msg2Player("B¹n nhËn ®­îc Kim PhËt ")
	SetTask(156,1)
	Talk(1,"","Xin Chóc Mõng ! NhiÖm Vô Hoµn Thµnh. Quay vÒ gÆp Th¸i C«ng C«ng ")
	

else
Talk(1,"","Ta ®©u cã thï o¸n g× víi nha ng­¬i ! ")
end
else
for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
if GetTask(157) == 18 and GetTask(156) == 0 then
	
	AddOwnExp(5000)
	Msg2Player("B¹n nhËn ®­îc 5.000 kinh nghiÖm")
	Msg2Player("B¹n nhËn ®­îc Kim PhËt ")
	SetTask(156,1)
	Talk(1,"","Xin Chóc Mõng ! NhiÖm Vô Hoµn Thµnh. Quay vÒ gÆp Th¸i C«ng C«ng ")
	

else
Talk(1,"","Ta ®©u cã thï o¸n g× víi nha ng­¬i ! ")
end
end
end
end
end