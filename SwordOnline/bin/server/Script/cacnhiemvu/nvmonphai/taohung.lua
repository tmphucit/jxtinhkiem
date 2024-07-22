function OnDrop()
end
function OnDeath()
if GetTask(103) ~= 43 then
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
return
end

xs = random(1,100)

team = GetTeam()

if GetTeam() == nil then
	if GetTask(103) == 43 then
		if xs <= 80 then	
			SetTask(103,44)
	NewWorld(53,200*8,200*16)
			Msg2Player("NhiÖm vô m«n ph¸i: §· lÊy ®­îc thñ cÊp Tµo Hïng, quay vÒ Vâ L©m Minh Chñ phôc mÖnh ")
			Talk(2,"","<color=green>Tµo Hïng<color>: A! A! A!, Ta hËn nh÷ng kÎ cø tá ra m×nh lµ anh hïng",
			"<color=green>Tµo Hïng<color>: NhiÖm vô hoµn thµnh ! Quay vÒ gÆp Vâ L©m Minh Chñ ®Ó phôc mÖnh !")
		else
			Talk(1,"","<color=green>Tµo Hïng<color>: Kh¶ n¨ng cña ng­¬i chØ cã thÕ th«i sao, h·y vÒ luyÖn tËp thªm ®i !")
		Msg2Player("Sau lÇn thö tµi nµy, vÉn kh«ng lµm ®­îc g× Tµo Hïng, h·y thö l¹i !")
		end	
	else
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
	end
else

for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
	if GetTask(103) == 43 then
	if xs <= 80 then	
	SetTask(103,44)
	NewWorld(53,200*8,200*16)
	Msg2Player("NhiÖm vô m«n ph¸i: §· lÊy ®­îc thñ cÊp Tµo Hïng, quay vÒ Vâ L©m Minh Chñ phôc mÖnh ")
	Talk(2,"","<color=green>Tµo Hïng<color>: A! A! A!, Ta hËn nh÷ng kÎ cø tá ra m×nh lµ anh hïng",
	"<color=green>Tµo Hïng<color>: NhiÖm vô hoµn thµnh ! Quay vÒ gÆp Vâ L©m Minh Chñ ®Ó phôc mÖnh !")
	else
	Talk(1,"","<color=green>Tµo Hïng<color>: Kh¶ n¨ng cña ng­¬i chØ cã thÕ th«i sao, h·y vÒ luyÖn tËp thªm ®i !")
	Msg2Player("Sau lÇn thö tµi nµy, vÉn kh«ng lµm ®­îc g× Tµo Hïng, h·y thö l¹i !")
	end	
	else
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
	end
end
end
end
end