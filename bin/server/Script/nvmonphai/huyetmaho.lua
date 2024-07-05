function OnDrop()
end
function OnDeath()
if GetTask(103) ~= 14 then
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
return
end
team = GetTeam()
if GetTeam() == nil then
if GetTask(103) == 14 then	
	SetTask(103,15)
	NewWorld(53,200*8,200*16)
	Msg2Player("NhiÖm vô m«n ph¸i: quay vÒ gÆp Tèng ViÔn Thanh ®Ó phôc mÖnh ")
	Talk(2,"","HuyÕt Ma Hæ ®· bŞ khuÊt phôc, nã rèng lªn mét tiÕng kinh hoµng rung chuyÓn trêi ®Êt",
	"NhiÖm vô hoµn thµnh ! Quay vÒ gÆp Tèng ViÔn Thanh ®Ó phôc mÖnh !")	
	else
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
	end
else

for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
	if GetTask(103) == 14 then	
	SetTask(103,15)
	NewWorld(53,200*8,200*16)
	Msg2Player("NhiÖm vô m«n ph¸i: quay vÒ gÆp Tèng ViÔn Thanh ®Ó phôc mÖnh ")
	Talk(2,"","HuyÕt Ma Hæ ®· bŞ khuÊt phôc, nã rèng lªn mét tiÕng kinh hoµng rung chuyÓn trêi ®Êt",
	"NhiÖm vô hoµn thµnh ! Quay vÒ gÆp Tèng ViÔn Thanh ®Ó phôc mÖnh !")	
	else
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
	end
end
end
end
end