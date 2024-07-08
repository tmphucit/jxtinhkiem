function OnDrop()
end
function OnDeath()
if GetTask(103) ~= 10 then
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
return
end
team = GetTeam()
if GetTeam() == nil then
if GetTask(103) == 10 then	
	SetTask(103,11)
	NewWorld(53,200*8,200*16)
	Msg2Player("NhiÖm vô m«n ph¸i: quay vÒ gÆp Ch­ëng M«n ®Ó phôc mÖnh ")
	Talk(2,"","<color=green>Tr­¬ng §Çu B­u<color>: Ta thËt sù khuÊt phôc, sau nµy kh«ng d¸m t¸i ph¹m n÷a ..",
	"<color=green>Tr­¬ng §Çu B­u<color>: NhiÖm vô hoµn thµnh ! Quay vÒ gÆp <color=yellow>Ch­ëng M«n<color=yellow> ®Ó phôc mÖnh !")	
	else
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
	end
else

for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
	if GetTask(103) == 10 then	
	SetTask(103,11)
	NewWorld(53,200*8,200*16)
	Msg2Player("NhiÖm vô m«n ph¸i: quay vÒ gÆp Ch­ëng M«n ®Ó phôc mÖnh ")
	Talk(2,"","<color=green>Tr­¬ng §Çu B­u<color>: Ta thËt sù khuÊt phôc, sau nµy kh«ng d¸m t¸i ph¹m n÷a ..",
	"<color=green>Tr­¬ng §Çu B­u<color>: NhiÖm vô hoµn thµnh ! Quay vÒ gÆp <color=yellow>Ch­ëng M«n<color=yellow> ®Ó phôc mÖnh !")	
	else
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
	end
end
end
end
end