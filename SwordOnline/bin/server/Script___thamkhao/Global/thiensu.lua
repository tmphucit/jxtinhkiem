function OnDeath()
end

function OnDrop()
team = GetTeam()
name = GetName()
if GetTeam() ~= nill then
	for i =1,2000 do
		PlayerIndex = i
		if GetTeam() == team then
			for i = 1,20 do AddOwnExp(1000000) end
			Msg2Player("B�n nh�n ���c 20.000.000 kinh nghi�m ")
			Talk(1,"","Ch�c m�ng nh�m c�a ["..name.."] �� ti�u di�t Boss Tuy�t T�m Thi�n S� ")
			Msg2SubWorld("Ch�c m�ng ["..GetName().."] ti�u di�t Boss Tuy�t T�m Thi�n S� nh�n ���c 20.000.000 kinh nghi�m !!")
		end
	end
else
	for i = 1,20 do AddOwnExp(1000000) end
	Msg2Player("B�n nh�n ���c 20.000.000 kinh nghi�m ")
	Msg2SubWorld("Ch�c m�ng ["..GetName().."] ti�u di�t Boss Tuy�t T�m Thi�n S� nh�n ���c 20.000.000 kinh nghi�m !!")
end
end