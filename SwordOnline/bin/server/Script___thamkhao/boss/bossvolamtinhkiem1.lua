function OnDeath()
ngay = tonumber(date("%d"))
Msg2World("<color=yellow>"..GetName().." �� ti�u di�t Boss V� L�m H�i �c ")
team = GetTeam()
tong = GetTongName()
	idxitem = AddItem(0,10,5,2,0,0,0)
	Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." ti�u di�t Boss V� L�m H�i �c nh�n ���c "..GetNameItemBox(idxitem).."")


idx = PlayerIndex
if GetTongName() ~= "" then
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetTongName() == tong then
				AddOwnExp(1000000)
				Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m")
		end
	end
elseif GetTeam() ~= nill then
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetTeam() == team then
				AddOwnExp(1000000)
				Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m")
		end
	end
else
				AddOwnExp(1000000)
				Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m")
end
PlayerIndex = idx

end

function OnDrop(NpcIdx)

end

