
function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))
Msg2World("Boss Con Ngh� �� b� nh�m c�a <color=yellow>"..GetName().."<color=red> ti�u di�t.")

AddEventItem(16)
Msg2World("- "..GetName().." nh�n ���c 1 Th�n B� ��i H�ng Bao")

team = GetTeam()
if team == nil then
			AddOwnExp(3000000)
			Msg2Player("B�n nh�n ���c 3.000.000 kinh nghi�m")
			AddRepute(10)	
			Msg2Player("B�n nh�n ���c 10 �i�m danh v�ng")
			for k=1,20 do AddEventItem(126) end
			Msg2Player("B�n nh�n ���c 20 Gi�y Ki�ng �� ")
			AddEventItem(723)
			Msg2Player("B�n nh�n ���c 1 H�p Qu� Trung Thu")
else
	idxp = PlayerIndex
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		w,x,y = GetWorldPos()
		if team == GetTeam() then
			AddOwnExp(3000000)
			Msg2Player("B�n nh�n ���c 3.000.000 kinh nghi�m")
			AddRepute(10)	
			Msg2Player("B�n nh�n ���c 10 �i�m danh v�ng")
			for k=1,20 do AddEventItem(126) end
			Msg2Player("B�n nh�n ���c 20 Gi�y Ki�ng �� ")
			AddEventItem(723)
			Msg2Player("B�n nh�n ���c 1 H�p Qu� Trung Thu")
		elseif w == 2 then
			AddOwnExp(1000000)
			Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m")
			AddRepute(5)	
			Msg2Player("B�n nh�n ���c 5 �i�m danh v�ng")	
		end
	end
	PlayerIndex = idxp
end
end