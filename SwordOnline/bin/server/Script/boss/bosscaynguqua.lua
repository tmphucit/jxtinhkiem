
function OnDeath()
end

function OnDrop()
numteam = GetTeamSize()
team = GetTeam()
name = GetName()
w1,x1,y1 = GetWorldPos()
if GetTeam() == nill then
	if GetTask(172) > 18 then
	for k=1,12000 do AddOwnExp(1000) end
	Msg2Player("B�n ch� s�n boss 1 m�nh, nh�n ���c 12.000.000 kinh nghi�m")
	else
	for k=1,10000 do AddOwnExp(1000) end
	Msg2Player("B�n ch� s�n boss 1 m�nh, nh�n ���c 10.000.000 kinh nghi�m")
	end

	Earn(100000)
	Msg2Player("B�n nh�n ���c 10 v�n l��ng !")
	
	SetTask(172,GetTask(172)+10*60*18)
	AddSkillEffect(460,1,GetTask(172))
	Msg2Player("Th�i gian nh�n ��i kinh nghi�m c�a b�n t�ng l�n: "..floor(GetTask(172)/60/18).." ph�t !")
	SetTask(141,1)

	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if GetName() ~= name then
				if w == w1 and (x > x1 - 40 and x < x1 + 40) and (y > y1 - 80 and y < y1 + 80) then
					if GetTask(172) > 18 then
					for k=1,1200 do AddOwnExp(1000) end
					Msg2Player("B�n � trong khu v�c C�y Ng� Qu�, nh�n ���c 1.200.000 kinh nghi�m")
					else
					for k=1,1000 do AddOwnExp(1000) end
					Msg2Player("B�n � trong khu v�c C�y Ng� Qu�, nh�n ���c 1.000.000 kinh nghi�m")
					end
					SetTask(172,GetTask(172)+10*60*18)
					AddSkillEffect(460,1,GetTask(172))
					Msg2Player("Th�i gian nh�n ��i kinh nghi�m c�a b�n t�ng l�n: "..floor(GetTask(172)/60/18).." ph�t !")
					SetTask(141,1)
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
				if GetName() == name then
					if GetTask(172) > 8 then
					for k=1,12000 do AddOwnExp(1000) end
					Msg2Player("B�n �� ti�u di�t C�y Ng� Qu� nh�n ���c 12.000.000 kinh nghi�m")
					else
					for k=1,10000 do AddOwnExp(1000) end
					Msg2Player("B�n �� ti�u di�t C�y Ng� Qu� nh�n ���c 10.000.000 kinh nghi�m")
					end
					Earn(100000)
					Msg2Player("B�n nh�n ���c 10 v�n l��ng !")
				else
					if GetTask(172) > 18 then
					
					for k=1,6000 do AddOwnExp(1000) end
					Msg2Player(""..name.." �� ti�u di�t C�y Ng� Qu� mang v� cho b�n 6.000.000 kinh nghi�m")
					else
					for k=1,5000 do AddOwnExp(1000) end
					Msg2Player(""..name.." �� ti�u di�t C�y Ng� Qu� mang v� cho b�n 5.000.000 kinh nghi�m")
					end
					Earn(50000)
					Msg2Player("B�n nh�n ���c 5 v�n l��ng !")
				end
				SetTask(172,GetTask(172)+10*60*18)
				AddSkillEffect(460,1,GetTask(172))
				Msg2Player("Th�i gian nh�n ��i kinh nghi�m c�a b�n t�ng l�n: "..floor(GetTask(172)/60/18).." ph�t !")
				SetTask(141,1)
			elseif w == w1 and (x > x1 - 40 and x < x1 + 40) and (y > y1 - 80 and y < y1 + 80) then
				if GetTask(172) > 18 then
					for k=1,1200 do AddOwnExp(1000) end
					Msg2Player("B�n � trong khu v�c C�y Ng� Qu�, nh�n ���c 1.200.000 kinh nghi�m")
					else
					for k=1,1000 do AddOwnExp(1000) end
					Msg2Player("B�n � trong khu v�c C�y Ng� Qu�, nh�n ���c 1.000.000 kinh nghi�m")
					end
				SetTask(172,GetTask(172)+10*60*18)
				AddSkillEffect(460,1,GetTask(172))
				Msg2Player("Th�i gian nh�n ��i kinh nghi�m c�a b�n t�ng l�n: "..floor(GetTask(172)/60/18).." ph�t !")
				SetTask(141,1)
			end	
		end
	end
end
end


npcboss = {
{9,1591,3248},
{9,1584,3254},
{9,1574,3265},
{9,1565,3255},
{9,1557,3245},
{9,1566,3233},
{9,1574,3226},
{9,1582,3233},
{9,1571,3239},
{9,1576,3245}
}



