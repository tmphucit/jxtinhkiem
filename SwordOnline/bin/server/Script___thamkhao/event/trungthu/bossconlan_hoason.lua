
function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))
SetGlbMissionV(44, GetGlbMissionV(44) - 1)
Msg2World("Boss Con L�n �� b� nh�m c�a <color=yellow>"..GetName().."<color=red> ti�u di�t. S� l��ng c�n l�i: <color=green>"..GetGlbMissionV(44).."")
--DropEvent(NpcIdx)

hongbao = RandomNew(1,100)
if hongbao < 10 then
	AddEventItem(16)
	Msg2World("- "..GetName().." nh�n ���c 1 Th�n B� ��i H�ng Bao")
end

team = GetTeam()
if team == nil then
		if floor(GetTask(935) / 1000) ~= ngay then
				SetTask(935, ngay * 1000)
		end
		
		if mod(GetTask(935),1000) >= 10 then
			Msg2Player("B�n �� nh�n �� kinh nghi�m trong ng�y t� Boss Con L�n")
		else
			SetTask(935, GetTask(935) + 1)
			Msg2Player("B�n �� ti�u di�t "..mod(GetTask(935),1000).." / 10 con trong ng�y")
			AddOwnExp(300000)
			Msg2Player("B�n nh�n ���c 300.000 kinh nghi�m")
			AddRepute(2)	
			Msg2Player("B�n nh�n ���c 2 �i�m danh v�ng")
			AddEventItem(126)
			Msg2Player("B�n nh�n ���c 1 Gi�y Ki�ng �� ")
		end
else
idxp = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if team == GetTeam() then
			if floor(GetTask(935) / 1000) ~= ngay then
				SetTask(935, ngay * 1000)
		end
		
		if mod(GetTask(935),1000) >= 10 then
			Msg2Player("B�n �� nh�n �� kinh nghi�m trong ng�y t� Boss Con L�n")
		else
			SetTask(935, GetTask(935) + 1)
			Msg2Player("B�n �� ti�u di�t "..mod(GetTask(935),1000).." / 10 con trong ng�y")
			AddOwnExp(300000)
			Msg2Player("B�n nh�n ���c 300.000 kinh nghi�m")
			AddRepute(2)
			Msg2Player("B�n nh�n ���c 2 �i�m danh v�ng")
			AddEventItem(126)
			Msg2Player("B�n nh�n ���c 1 Gi�y Ki�ng �� ")
		end
	end
end
PlayerIndex = idxp
end
end