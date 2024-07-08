function OnDrop()
end
function OnDeath()
if GetTask(103) ~= 18 then
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
return
end

xs = random(1,100)

team = GetTeam()

if GetTeam() == nil then
if GetTask(103) == 18 then
	if xs <= 80 then	
	SetTask(103,19)
	NewWorld(53,200*8,200*16)
	Msg2Player("NhiÖm vô m«n ph¸i: §· lÊy ®­îc mËt hµm, quay vÒ gÆp Ch­ëng M«n ®Ó phôc mÖnh ")
	Talk(2,"","Ta phôc quyÕt t©m cña ng­¬i råi ®ã, th«i h·y ®em mËt hµm nµy ®i ®i",
	"NhiÖm vô hoµn thµnh ! Quay vÒ gÆp Ch­ëng M«n ®Ó phôc mÖnh !")
	else
	Talk(1,"","§õng t­ëng gië vµi trß gian x¶o ra lµ ta sÏ khuÊt phôc ng­¬i !")
	Msg2Player("Sau lÇn ®¸nh b¹i nµy, ThÝch Kh¸ch Kim Quèc vÉn kh«ng chÞu giao ra mËt hµm, h·y thö l¹i !")
	end	
	else
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
	end
else

for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
	if GetTask(103) == 18 then
	if xs <= 80 then	
	SetTask(103,19)
	NewWorld(53,200*8,200*16)
	Msg2Player("NhiÖm vô m«n ph¸i: §· lÊy ®­îc mËt hµm, quay vÒ gÆp Ch­ëng M«n ®Ó phôc mÖnh ")
	Talk(2,"","Ta phôc quyÕt t©m cña ng­¬i råi ®ã, th«i h·y ®em mËt hµm nµy ®i ®i",
	"NhiÖm vô hoµn thµnh ! Quay vÒ gÆp Ch­ëng M«n ®Ó phôc mÖnh !")
	else
	Talk(1,"","§õng t­ëng gië vµi trß gian x¶o ra lµ ta sÏ khuÊt phôc ng­¬i !")
	Msg2Player("Sau lÇn ®¸nh b¹i nµy, ThÝch Kh¸ch Kim Quèc vÉn kh«ng chÞu giao ra mËt hµm, h·y thö l¹i !")
	end	
else
Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
end
end
end
end
end