
function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))
bang = GetTongName()
if bang == "" then
Msg2World("Boss Con Ngh� �� b� <color=yellow>"..GetName().."<color=red> ti�u di�t.")
else
Msg2World("Boss Con Ngh� �� b� <color=yellow>"..GetName().." - Bang "..bang.."<color=red> ti�u di�t.")
end

AddEventItem(16)
Msg2World("- "..GetName().." nh�n ���c 1 Th�n B� ��i H�ng Bao")

if bang == "" then
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
		if GetTongName() == bang and w == 226 then
			AddOwnExp(3000000)
			Msg2Player("B�n nh�n ���c 3.000.000 kinh nghi�m")
			AddRepute(10)	
			Msg2Player("B�n nh�n ���c 10 �i�m danh v�ng")
			for k=1,20 do AddEventItem(126) end
			Msg2Player("B�n nh�n ���c 20 Gi�y Ki�ng �� ")
			AddEventItem(723)
			Msg2Player("B�n nh�n ���c 1 H�p Qu� Trung Thu")
		end
	end
	PlayerIndex = idxp
end
end