
function OnDeath()
end

function OnDrop()
ngay = tonumber(date("%d"))
idx = PlayerIndex
Msg2SubWorld("Ch�c m�ng ��i hi�p ["..GetName().."] �� ti�u di�t Boss V� L�m H�i �c v� �em l�i cho to�n server r�t nhi�u kinh nghi�m. ")
numteam = GetTeamSize()
team = GetTeam()
name = GetName()

idxitem = AddItem(0,3,6,1,0,0,0)
Msg2SubWorld("- "..GetName().." nh�n ���c 1 <color=pink>"..GetNameItemBox(idxitem).."")
idxitem =  AddEventItem(652)
Msg2SubWorld("- "..GetName().." nh�n ���c 1 <color=pink>"..GetNameItemBox(idxitem).."")
idxitem = AddEventItem(0)
Msg2SubWorld("- "..GetName().." nh�n ���c 1 <color=pink>"..GetNameItemBox(idxitem).."")
idxitem = AddEventItem(1)
Msg2SubWorld("- "..GetName().." nh�n ���c 1 <color=pink>"..GetNameItemBox(idxitem).."")

if GetTeam() == nill then
	AddOwnExp(50000000)
	Msg2Player("B�n ch� s�n boss 1 m�nh, nh�n ���c 50.000.000 kinh nghi�m")
	Msg2SubWorld("��i hi�p ["..GetName().."] �� ��n th�n ti�u di�t boss, nh�n ���c 50.000.000 kinh nghi�m ")
	
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if GetName() ~= name then
				if w == 9 and (x > 191*8 and x < 201*8) and (y > 197*16 and y < 207*16) then
					AddOwnExp(40000000)
					Msg2Player("B�n � trong khu v�c s�n boss, nh�n ���c 40.000.000 kinh nghi�m")
				else
					AddOwnExp(20000000)
					Msg2Player("Boss V� L�m H�i �c �� b� ti�u di�t, mang l�i cho b�n 20.000.000 kinh nghi�m ")
				end
			end
		end
	end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if GetTeam() == team then
				AddOwnExp(50000000)
				Msg2Player("B�n ch� s�n boss 1 m�nh, nh�n ���c 50.000.000 kinh nghi�m")
				Msg2SubWorld("��i hi�p ["..GetName().."] thu�c nh�m ti�u di�t boss, nh�n ���c 50.000.000 kinh nghi�m ")
			elseif w == 9 and (x > 191*8 and x < 201*8) and (y > 197*16 and y < 207*16) then
				AddOwnExp(40000000)
				Msg2Player("B�n � trong khu v�c s�n boss, nh�n ���c 40.000.000 kinh nghi�m")
			else
				AddOwnExp(20000000)
				Msg2Player("Boss V� L�m H�i �c �� b� ti�u di�t, mang l�i cho b�n 20.000.000 kinh nghi�m ")
			end
		end
	end
end

PlayerIndex = idx
end



