
function OnDrop(NpcIdx)
if GetTask(27) ~= 4 then
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
return
end
DropEvent(NpcIdx)
team = GetTeam()
if GetTeam() == nil then
if (GetTask(27) == 4) then
AddEventItem(133)
AddSkillEffect(491,1,54)
rotbk = random(1,30)
if rotbk == 4 then
bk = random(93,94)
AddEventItem(bk)
elseif rotbk == 5 then
bk = random(95,97)
AddEventItem(bk)
end
SetTask(27,99)
Msg2Player("B�n �� ti�u di�t C�i Bang S�t Th� - C�p 71. Ho�n th�nh nhi�m v� !");
elseif GetTask(27) == 99 then
Talk(1,"","Mau v� g�p Nhi�p Th� Tr�n �� ph�c m�nh !")
else
Talk(1,"","H�nh nh� ta ��u c� th� o�n g� v�i nha ng��i!")
end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		if (GetTask(27) == 4) then
AddEventItem(133)
AddSkillEffect(491,1,54)
rotbk = random(1,30)
if rotbk == 4 then
bk = random(93,94)
AddEventItem(bk)
end
SetTask(27,99)
Msg2Player("B�n �� ti�u di�t C�i Bang S�t Th� - C�p 71. Ho�n th�nh nhi�m v� !");
elseif GetTask(27) == 99 then
Talk(1,"","Mau v� g�p Nhi�p Th� Tr�n �� ph�c m�nh !")
else
Talk(1,"","H�nh nh� ta ��u c� th� o�n g� v�i nha ng��i!")
end
	end
	end
end




end;
function OnDeath()
end
