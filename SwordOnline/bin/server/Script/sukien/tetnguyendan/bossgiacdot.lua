
function OnDeath()
end

function OnDrop(NpcIdx)
w1,x1,y1 = GetWorldPos()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
Msg2SubWorld("Boss Gi�c D�t �� b� nh�m c�a <color=yellow>"..GetName().."<color=red> ti�u di�t.")
AddGlobalCountNews("Boss Gi�c D�t �� b� nh�m c�a <color=yellow>"..GetName().."<color=red> ti�u di�t.",1)

sx = RandomNew(1,100)
if sx < 20 then
	idxitem = AddEventItem(random(698,699))
	Msg2SubWorld("- "..GetName().." nh�n ���c 1 "..GetNameItemBox(idxitem).."")
end


		if thang == 11 or (ngay == 1 and thang == 12) then
			for k=1,5 do AddEventItem(908) end
			Msg2Player("B�n nh�n ���c <color=yellow>5 Th� G�i Th�y �� ")
		end	
		
		

team = GetTeam()
if team == nil then

	name = GetName()
	AddOwnExp(100000000)
	Msg2Player("B�n nh�n ���c 100.000.000 kinh nghi�m")

	
	idxp = PlayerIndex
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == w1 and GetName() ~= name then
			AddOwnExp(50000000)
			Msg2Player("B�n nh�n ���c 50.000.000 kinh nghi�m")
		end
	end
	PlayerIndex = idxp		
else
	idxp = PlayerIndex
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		w,x,y = GetWorldPos()
		if team == GetTeam() then
			AddOwnExp(100000000)
			Msg2Player("B�n nh�n ���c 100.000.000 kinh nghi�m")
		elseif w == w1 then
			AddOwnExp(50000000)
			Msg2Player("B�n nh�n ���c 50.000.000 kinh nghi�m")
		end
	end
	PlayerIndex = idxp
end
end