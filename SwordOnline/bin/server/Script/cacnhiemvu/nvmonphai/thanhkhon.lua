function OnDrop()
end
function OnDeath()
if GetTask(103) ~= 24 then
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
return
end

xs = random(1,100)

team = GetTeam()
if GetTeam() == nil then
if GetTask(103) == 24 then	
	if xs <= 80 then
	SetTask(103,25)
	NewWorld(53,200*8,200*16)
		
		Talk(2,"","<color=green>Thµnh Kh«n<color>: Kh¸ l¾m nhãc con, lÇn sau sÏ gÆp l¹i ng­¬i.",
		"NhiÖm vô hoµn thµnh ! ®­a Trô Tr× vÒ gÆp <color=red>Tõ Chung §¹i S­ <color>®Ó phôc mÖnh !")	
		Msg2Player("NhiÖm vô m«n ph¸i: quay vÒ gÆp Tõ Chung §¹i S­ ®Ó phôc mÖnh ")
	else
	Talk(1,"","Hahaha, ng­¬i chØ cã vµi mãn nghÒ rÎ tiÒn mµ muèn lµm g× ta !")
	Msg2Player("NhiÖm vô thÊt b¹i: Tªn cøng ®Çu vÉn kh«ng nãi tung tİch cña §¹i S­ Trô Tr× h·y thö l¹i lÇn n÷a. !")
	end
else
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
end
else

for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
	if GetTask(103) == 24 then	
	if xs <= 80 then
	SetTask(103,25)
	NewWorld(53,200*8,200*16)
		
		Talk(2,"","<color=green>Thµnh Kh«n<color>: Kh¸ l¾m nhãc con, lÇn sau sÏ gÆp l¹i ng­¬i.",
		"NhiÖm vô hoµn thµnh ! ®­a Trô Tr× vÒ gÆp <color=red>Tõ Chung §¹i S­ <color>®Ó phôc mÖnh !")	
		Msg2Player("NhiÖm vô m«n ph¸i: quay vÒ gÆp Tõ Chung §¹i S­ ®Ó phôc mÖnh ")
	else
	Talk(1,"","Hahaha, ng­¬i chØ cã vµi mãn nghÒ rÎ tiÒn mµ muèn lµm g× ta !")
	Msg2Player("NhiÖm vô thÊt b¹i: Tªn cøng ®Çu vÉn kh«ng nãi tung tİch cña §¹i S­ Trô Tr× h·y thö l¹i lÇn n÷a. !")
	end
else
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
end
end
end
end
end