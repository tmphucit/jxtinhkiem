function OnDrop()
end
function OnDeath()
if GetTask(103) ~= 30 then
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
return
end

xs = random(1,100)

team = GetTeam()
if GetTeam() == nil then
if GetTask(103) == 30 then	
	if xs <= 80 then
	SetTask(103,31)
	NewWorld(53,200*8,200*16)
		Talk(2,"","<color=green>LiÔu Tè Tè <color>: Th«i ta xin thua, <color=yellow>Ngò S¾c Ngäc Béi<color> ®©y, cÇm lÊy råi ®i ®i ",
		"NhiÖm vô hoµn thµnh ! ®em Ngò S¾c Ngäc Béi giao cho <color=yellow>Thµnh §¹i Qu©n<color> ®Ó phôc mÖnh !")	
		Msg2Player("NhiÖm vô m«n ph¸i: quay vÒ gÆp Thµnh §¹i Qu©n ®Ó phôc mÖnh ")
	else
	Talk(1,"","<color=green>LiÔu Tè Tè <color>:Ta kh«ng cã lÊy, ta kh«ng cã trém g× cña ai hÕt, ng­êi ®õng cã vu oan cho ta!")
	Msg2Player("LiÔu Tè  Tè vÉn kh«ng chŞu giao ra Ngò S¾c Ngäc Béi, ng­êi h·y cè g¾ng ®iÒu tra l¹i nhĞ. !")
	end
else
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
end
else

for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
	if GetTask(103) == 30 then	
	if xs <= 80 then
	SetTask(103,31)
	NewWorld(53,200*8,200*16)
		Talk(2,"","<color=green>LiÔu Tè Tè <color>: Th«i ta xin thua, <color=yellow>Ngò S¾c Ngäc Béi<color> ®©y, cÇm lÊy råi ®i ®i ",
		"NhiÖm vô hoµn thµnh ! ®em Ngò S¾c Ngäc Béi giao cho <color=yellow>Thµnh §¹i Qu©n<color> ®Ó phôc mÖnh !")	
		Msg2Player("NhiÖm vô m«n ph¸i: quay vÒ gÆp Tõ Chung §¹i S­ ®Ó phôc mÖnh ")
	else
	Talk(1,"","<color=green>LiÔu Tè Tè <color>:Ta kh«ng cã lÊy, ta kh«ng cã trém g× cña ai hÕt, ng­êi ®õng cã vu oan cho ta!")
	Msg2Player("LiÔu Tè  Tè vÉn kh«ng chŞu giao ra Ngò S¾c Ngäc Béi, ng­êi h·y cè g¾ng ®iÒu tra l¹i nhĞ. !")
	end
else
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
end
end
end
end
end