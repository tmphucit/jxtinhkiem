function OnDeath()
end

function OnDrop()
if GetLevel() ~= 200 or GetTask(139) ~= 2 then
Talk(1,"","Ta ®©u cã thï o¸n g× víi nhµ ng­¬i !")
return
end

team = GetTeam()
if GetTeam() == nil then

if GetLevel() == 200 and GetTask(139) == 2 then
SetTask(138,GetTask(138)+1)
Talk(2,"","Chóc mõng b¹n ®· <color=red>Tiªu DiÖt Boss ChuyÓn Sinh 3")
	if GetTask(138) >= 1 then
	Talk(1,"","Chóc mõng b¹n hoµn thµnh nhiÖm vô <color=red>Tiªu DiÖt Boss ChuyÓn Sinh")
	end
else
Talk(1,"","Ta ®©u cã thï o¸n g× víi nhµ ng­¬i !")
end

else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		if GetLevel() == 200 and GetTask(139) == 2 then
		SetTask(138,GetTask(138)+1)
		Talk(2,"","Chóc mõng b¹n ®· <color=red>Tiªu DiÖt Boss ChuyÓn Sinh 3")
		if GetTask(138) >= 1 then
		Talk(1,"","Chóc mõng b¹n hoµn thµnh nhiÖm vô <color=red>Tiªu DiÖt Boss ChuyÓn Sinh")
		end
else
Talk(1,"","Ta ®©u cã thï o¸n g× víi nhµ ng­¬i !")
end
	end
	end
end
end