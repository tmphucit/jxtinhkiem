
function OnDeath()
end

function OnDrop()
ngay = tonumber(date("%d"))
idx = PlayerIndex
Msg2SubWorld("Ch�c m�ng ��i hi�p ["..GetName().."] �� ti�u di�t Boss V� L�m H�i �c v� �em l�i cho to�n server r�t nhi�u kinh nghi�m. ")
numteam = GetTeamSize()
team = GetTeam()
name = GetName()

if GetTeam() == nill then
	for i=1,10 do AddOwnExp(1000000) end
	Msg2Player("B�n ch� s�n boss 1 m�nh, nh�n ���c 10.000.000 kinh nghi�m")
	Msg2SubWorld("��i hi�p ["..GetName().."] �� ��n th�n ti�u di�t boss, nh�n ���c 10.000.000 kinh nghi�m ")
	
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if GetName() ~= name then
				if w == 9 and (x > 191*8 and x < 201*8) and (y > 197*16 and y < 207*16) then
					for i=1,5 do AddOwnExp(1000000) end
					Msg2Player("B�n � trong khu v�c s�n boss, nh�n ���c 5.000.000 kinh nghi�m")
				else
					for i=1,10 do AddOwnExp(100000) end
					Msg2Player("Boss V� L�m H�i �c �� b� ti�u di�t, mang l�i cho b�n 1.000.000 kinh nghi�m ")
				end
			end
			SetTask(172,GetTask(172)+2*60*60*18)
			AddSkillEffect(460,1,GetTask(172))
			Msg2Player("Th�i gian nh�n ��i kinh nghi�m c�a b�n t�ng l�n: "..floor(GetTask(172)/60/18).." ph�t !")
			SetTask(141,1)	
		end
	end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetName() ~= "" or GetName() ~= nil then
			w,x,y = GetWorldPos()
			if GetTeam() == team then
				for i=1,10 do AddOwnExp(1000000) end
				Msg2Player("B�n thu�c nh�m ti�u di�t Boss, nh�n ���c 10.000.000 kinh nghi�m")
				Msg2SubWorld("��i hi�p ["..GetName().."] thu�c nh�m ti�u di�t boss, nh�n ���c 10.000.000 kinh nghi�m ")
			elseif w == 9 and (x > 191*8 and x < 201*8) and (y > 197*16 and y < 207*16) then
				for i=1,5 do AddOwnExp(1000000) end
				Msg2Player("B�n � trong khu v�c s�n boss, nh�n ���c 5.000.000 kinh nghi�m")
			else
				for i=1,10 do AddOwnExp(100000) end
				Msg2Player("Boss V� L�m H�i �c �� b� ti�u di�t, mang l�i cho b�n 1.000.000 kinh nghi�m ")
			end
			SetTask(172,GetTask(172)+2*60*60*18)
			AddSkillEffect(460,1,GetTask(172))
			Msg2Player("Th�i gian nh�n ��i kinh nghi�m c�a b�n t�ng l�n: "..floor(GetTask(172)/60/18).." ph�t !")
			SetTask(141,1)	
		end
	end
end

PlayerIndex = idx
end



