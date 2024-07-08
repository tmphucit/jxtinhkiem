
function OnDrop(NpcIdx)
if GetTask(27) ~= 4 then
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
return
end
DropEvent(NpcIdx)
team = GetTeam()
if GetTeam() == nil then
if (GetTask(27) == 4) then
AddEventItem(133)
AddSkillEffect(491,1,54)
SetTask(27,99)
Msg2Player("B¹n ®· tiªu diÖt C¸i Bang S¸t Thñ - CÊp 91. Hoµn thµnh nhiÖm vô !");
elseif GetTask(27) == 99 then
Talk(1,"","Mau vÒ gÆp NhiÕp Thİ TrÇn ®Ó phôc mÖnh !")
else
Talk(1,"","H×nh nh­ ta ®©u cã thï o¸n g× víi nha ng­¬i!")
end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		if (GetTask(27) == 4) then
AddEventItem(133)
AddSkillEffect(491,1,54)
SetTask(27,99)
Msg2Player("B¹n ®· tiªu diÖt C¸i Bang S¸t Thñ - CÊp 91. Hoµn thµnh nhiÖm vô !");
elseif GetTask(27) == 99 then
Talk(1,"","Mau vÒ gÆp NhiÕp Thİ TrÇn ®Ó phôc mÖnh !")
else
Talk(1,"","H×nh nh­ ta ®©u cã thï o¸n g× víi nha ng­¬i!")
end
	end
	end
end




end;
function OnDeath()
end