
function OnDeath(idx)
team = GetTeam()
name = GetName()
checknhom = 0
pidx = PlayerIndex
if GetName() ~= GetNpcName(idx) then
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if GetNpcName(idx) == GetName() and team == GetTeam() then
			checknhom = 1
			break
		end
	end
else
	checknhom = 1
end

PlayerIndex = pidx
if checknhom == 0 then
if GetTeam() == nil or GetTeamSize() == 1 then
AddEventItem(237)
AddEventItem(237)
AddEventItem(237)
Msg2Player("B�n �� �n tr�m C�y Ho�ng Kim c�a "..GetNpcName(idx).." nh�n ���c 3 Qu� Ho�ng Kim !")
else
Msg2Player("B�n kh�ng nh�n ���c ph�n th��ng v� �ang trong tr�ng th�i nh�m  !")
end
return
end

if GetTeam() == nil then
Talk(1,"","T� ��i �� tan r� kh�ng nh�n ���c ph�n th��ng t� c�y !")
return
end

w,x,y = GetWorldPos()
if w ~= 3 and w ~= 15 and w ~= 17 and w ~= 18 and w ~= 53 and w ~= 9 then
Talk(1,"","L�i hack t�a �� c�y ! !")
return
end

if GetFightState() == 0 then
Talk(1,"","L�i hack tr�ng th�i chi�n ��u !")
return
end

			
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	if GetTeam() == team then
		if GetLevel() >= 80 then
			if IsCaptain() == 1 then
			for i=1,5 do
			AddEventItem(237)
			end
			Msg2Player("B�n nh�n ���c 5 Qu� Ho�ng Kim ")
			else
			for i=1,3 do
			AddEventItem(237)
			end
			Msg2Player("B�n nh�n ���c 3 Qu� Ho�ng Kim ")
			end
		else
			Msg2Player("��ng c�p d��i 80 kh�ng th� nh�n ���c ph�n th��ng t� C�y Ho�ng Kim !")
		end	
	end
end


end


function OnDrop()
end