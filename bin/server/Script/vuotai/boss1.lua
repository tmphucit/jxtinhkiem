function OnDeath()
SetGlbMissionV(39,0)
SetGlbMissionV(40,GetGlbMissionV(40)+1)
Msg2World(""..GetName().." �� ti�u di�t Boss !!!")
sx2 = random(2,4)
		sx3 = random(1,30)
		if sx2 == 2 then
			AddEventItem(random(113,114))
			Msg2Player("B�n nh�n ���c 1 v�t ph�m qu� ")
		elseif sx2 == 3 then
			AddEventItem(random(75,102))
			Msg2Player("B�n nh�n ���c 1 vi�n Th�y tinh")
		elseif sx2 == 4 then 
		AddEventItem(random(28,31))
		end	
		if sx3 == 5 then 
			AddEventItem(255)
			Msg2SubWorld("��i hi�p "..GetName().." V�a nh�n ���c 1 M�nh V� Kh� Ho�ng Kim")
			elseif sx3 > 1 and sx3 < 5 then
			AddEventItem(254)
			Msg2SubWorld("��i hi�p "..GetName().." V�a nh�n ���c 1 M�nh Trang B� Ho�ng Kim")
			else 
		end
end
function OnDrop(NpcIdx)
DropEvent(NpcIdx)
end