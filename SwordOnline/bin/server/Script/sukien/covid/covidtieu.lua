
function OnDeath()
team = GetTeam()

if team == nil then
	Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." �� ti�u di�t Boss Covid Ti�u")
	for k=1,5 do AddEventItem(684) end
	AddOwnExp(2000000)
	Msg2Player("B�n nh�n ���c 2.000.000 kinh nghi�m")
	Msg2Player("B�n nh�n ���c 5 An Cung Ng�u Ho�n")
else
Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." c�ng nh�m �� ti�u di�t Boss Covid Ti�u")
idxp = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		for k=1,5 do AddEventItem(684) end
		AddOwnExp(2000000)
		Msg2Player("B�n nh�n ���c 2.000.000 kinh nghi�m")
		Msg2Player("B�n nh�n ���c 5 An Cung Ng�u Ho�n")
	end
end
PlayerIndex = idxp

end

end

function OnDrop()

end