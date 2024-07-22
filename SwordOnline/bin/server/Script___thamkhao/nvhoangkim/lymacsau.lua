function OnDeath()
end
function OnDrop()
if GetTask(157) ~= 5 then
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
return
end
team = GetTeam()
if GetTeam() == nil then
if GetTask(157) == 5 then
	AddOwnExp(2500)
	Msg2Player("B¹n nhËn ®­îc 2.500 kinh nghiÖm")	
	SetTask(157,6)
	Msg2Player("NhiÖm Vô: Quay vÒ GÆp M¹c SÇu ")
	Talk(2,"","Ta thËt sù khuÊt phôc, sau nµy kh«ng t¸i ph¹m n÷a ..",
	"NhiÖm vô hoµn thµnh ! Quay vÒ gÆp M¹c SÇu trong thµnh ®i !")	
	else
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
	end
else

for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
	if GetTask(157) == 5 then
	AddOwnExp(2500)
	Msg2Player("B¹n nhËn ®­îc 2500 kinh nghiÖm")	
	SetTask(157,6)
	Msg2Player("NhiÖm Vô: Quay vÒ GÆp M¹c SÇu ")
	Talk(2,"","Ta thËt sù khuÊt phôc, sau nµy kh«ng t¸i ph¹m n÷a ..",
	"NhiÖm vô hoµn thµnh ! Quay vÒ gÆp M¹c SÇu trong thµnh ®i !")	
	else
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
	end
end
end
end
end