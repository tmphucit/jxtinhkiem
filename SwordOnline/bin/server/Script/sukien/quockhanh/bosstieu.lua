
function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))
SetGlbMissionV(44, GetGlbMissionV(44) - 1)
Msg2World("Boss Gi�c Ngo�i X�m �� b� nh�m c�a <color=yellow>"..GetName().."<color=red> ti�u di�t. S� l��ng c�n l�i: <color=green>"..GetGlbMissionV(44).."")
DropEvent(NpcIdx)
team = GetTeam()
if team == nil then
		if floor(GetTask(935) / 1000) ~= ngay then
				SetTask(935, ngay * 1000)
		end
		
		if mod(GetTask(935),1000) >= 5 then
			Msg2Player("B�n �� nh�n �� kinh nghi�m trong ng�y t� Boss Gi�c Ngo�i X�m")
		else
			SetTask(935, GetTask(935) + 1)
			Msg2Player("B�n �� ti�u di�t "..mod(GetTask(935),1000).." / 5 con trong ng�y")
			AddOwnExp(1000000)
			Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m")
			AddRepute(2)
			AddEventItem(716)
			AddEventItem(716)
			Msg2Player("B�n nh�n ���c 2 Danh V�ng, 2 Thanh Tre")
		end
else
idxp = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if team == GetTeam() then
			if floor(GetTask(935) / 1000) ~= ngay then
				SetTask(935, ngay * 1000)
		end
		
		if mod(GetTask(935),1000) >= 5 then
			Msg2Player("B�n �� nh�n �� kinh nghi�m trong ng�y t� Boss Gi�c Ngo�i X�m")
		else
			SetTask(935, GetTask(935) + 1)
			Msg2Player("B�n �� ti�u di�t "..mod(GetTask(935),1000).." / 5 con trong ng�y")
			AddOwnExp(1000000)
			Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m")
			AddRepute(2)
			AddEventItem(716)
			AddEventItem(716)
			Msg2Player("B�n nh�n ���c 2 Danh V�ng, 2 Thanh Tre")
		end
	end
end
PlayerIndex = idxp
end
end