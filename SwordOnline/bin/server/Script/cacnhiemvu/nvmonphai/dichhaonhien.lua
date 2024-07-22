function OnDrop()
end
function OnDeath()
if GetTask(103) ~= 38 then
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
return
end

xs = random(1,100)

team = GetTeam()
if GetTeam() == nil then
if GetTask(103) == 38 then	
	if xs <= 80 then
	SetTask(103,39)
	NewWorld(53,200*8,200*16)
		Talk(2,"","<color=green>§Þch H¹o Nhiªn<color>: Hµ Mé TuyÕt, nhµ ng­¬i còng ë ®©y sao",
		"Ta cã thõa nhËn lµ ®· b¾t cãc cha cña Chóc Tó Thanh, nh­ng «ng ta ®· qua ®êi v× b¹o bÖnh c¸ch ®©y 2 h«m",
		"BiÕt ®­îc tin d÷, b¹n tõ gi· Hµ Mé TuyÕt, tøc tèc vÒ b¸o tin cho Chóc Tö Thanh !")	
		Msg2Player("NhiÖm vô m«n ph¸i: quay vÒ gÆp Chóc Tó Thanh ®Ó b¸o tin ")
	else
	Talk(1,"","<color=green>§Þch H¹o Nhiªn<color>: Víi vâ c«ng nh­ ng­êi mµ ®ßi thu phôc ta sao !")
	Msg2Player("§Þch H¹o Nhiªn vÉn kh«ng thõa nhËn r»ng m×nh ®· b¾t cãc cha cña Chóc Tõ Thanh!")
	end
else
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
end
else

for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
if GetTask(103) == 38 then	
	if xs <= 80 then
	SetTask(103,39)
	NewWorld(53,200*8,200*16)
		Talk(2,"","<color=green>§Þch H¹o Nhiªn<color>: Hµ Mé TuyÕt, nhµ ng­¬i còng ë ®©y sao",
		"Ta cã thõa nhËn lµ ®· b¾t cãc cha cña Chóc Tó Thanh, nh­ng «ng ta ®· qua ®êi v× b¹o bÖnh c¸ch ®©y 2 h«m",
		"BiÕt ®­îc tin d÷, b¹n tõ gi· Hµ Mé TuyÕt, tøc tèc vÒ b¸o tin cho Chóc Tö Thanh !")	
		Msg2Player("NhiÖm vô m«n ph¸i: quay vÒ gÆp Chóc Tó Thanh ®Ó b¸o tin ")
	else
	Talk(1,"","<color=green>§Þch H¹o Nhiªn<color>: Víi vâ c«ng nh­ ng­êi mµ ®ßi thu phôc ta sao !")
	Msg2Player("§Þch H¹o Nhiªn vÉn kh«ng thõa nhËn r»ng m×nh ®· b¾t cãc cha cña Chóc Tõ Thanh!")
	end
else
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
end
end
end
end
end