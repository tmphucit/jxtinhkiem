
function OnDrop(NpcIdx)
if GetTask(27) ~= 2 then
	Talk(1,"","Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
return
end
DropEvent(NpcIdx)
team = GetTeam()
if GetTeam() == nil then
	
if (GetTask(27) == 2) then
AddEventItem(131)
AddSkillEffect(491,1,54)
rotbk = random(1,30)
if rotbk == 4 then
bk = random(81,84)
AddEventItem(bk)
end
SetTask(27,99)
Msg2Player("B¹n ®· tiªu diÖt §­êng M«n S¸t Thñ - CÊp 71. Hoµn thµnh nhiÖm vô!");
elseif GetTask(27) == 99 then
Talk(1,"","Mau vÒ gÆp NhiÕp Thİ TrÇn ®Ó phôc mÖnh !")
else
Talk(1,"","H×nh nh­ ta ®©u cã thï o¸n g× víi nha ng­¬i!")
end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
if (GetTask(27) == 2) then
AddEventItem(131)
AddSkillEffect(491,1,54)
rotbk = random(1,30)
if rotbk == 4 then
bk = random(81,84)
AddEventItem(bk)
end
SetTask(27,99)
Msg2Player("B¹n ®· tiªu diÖt §­êng M«n S¸t Thñ - CÊp 71. Hoµn thµnh nhiÖm vô!");
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