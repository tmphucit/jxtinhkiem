function main()
w,x,y = GetWorldPos()
team = GetTeam()
level = GetLevel()
if GetTeam() == nil then
	if GetTask(84) == 1 and GetTask(85) == 1 and GetTask(88) > 0 then -- Dang nhan nhiem vu do chi
		if w == DoChi_Map[GetTask(88)] then
			SetTask(87,GetTask(87)+1)
			Msg2Player("B�n nh�n ���c 1 t�m Th�n B� �� Ch�. S� l��ng  thu th�p hi�n t�i l� "..GetTask(87).." / "..GetTask(86).." t�m. ")
			if GetTask(87) > GetTask(86) then
				SetTask(89,GetTask(89)+1)
				Msg2Player("B�n nh�n ���c 1 m�nh b�n �� SHXT, s� l��ng hi�n t�i l�: "..floor(GetTask(89)/10).." t�m "..mod(GetTask(89),10).." m�nh")
			end
		else
			SetTask(89,GetTask(89)+1)
			Msg2Player("B�n nh�n ���c 1 m�nh b�n �� SHXT, s� l��ng hi�n t�i l�: "..floor(GetTask(89)/10).." t�m "..mod(GetTask(89),10).." m�nh")
		end
	else 
		SetTask(89,GetTask(89)+1)
		Msg2Player("B�n nh�n ���c 1 m�nh b�n �� SHXT, s� l��ng hi�n t�i l�: "..floor(GetTask(89)/10).." t�m "..mod(GetTask(89),10).." m�nh")
	end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		if GetTask(84) == 1 and GetTask(85) == 1 and GetTask(88) > 0 then -- Dang nhan nhiem vu do chi
			if w == DoChi_Map[GetTask(88)] then
				if GetFightState() == 1 then
					if (level < 30) or (level >= 30 and level < 50 and GetLevel() >= 10) or (level >= 50 and level < 70 and GetLevel() >= 30) or (level >= 70 and level < 90 and GetLevel() >= 50) or (level >= 90 and level < 120 and GetLevel() >= 70) or (level >= 120 and GetLevel() >= 90) then
						SetTask(87,GetTask(87)+1)
						Msg2Player("B�n nh�n ���c 1 t�m Th�n B� �� Ch�. S� l��ng  thu th�p hi�n t�i l� "..GetTask(87).." / "..GetTask(86).." t�m. ")
						if GetTask(87) > GetTask(86) then
						SetTask(89,GetTask(89)+1)
						Msg2Player("B�n nh�n ���c 1 m�nh b�n �� SHXT, s� l��ng hi�n t�i l�: "..floor(GetTask(89)/10).." t�m "..mod(GetTask(89),10).." m�nh")
						end
					else
						Talk(1,"","Ch�nh l�ch level v�i ng��i nh�t ���c v�t ph�m qu� cao !")
					end
				else
					Talk(1,"","Tr�ng th�i luy�n c�ng kh�ng th� nh�n ���c Th�n B� �� Ch� c�a ��ng ��i !")
				end
			else
				SetTask(89,GetTask(89)+1)
		Msg2Player("B�n nh�n ���c 1 m�nh b�n �� SHXT, s� l��ng hi�n t�i l�: "..floor(GetTask(89)/10).." t�m "..mod(GetTask(89),10).." m�nh")
			end
		else 
			SetTask(89,GetTask(89)+1)
		Msg2Player("B�n nh�n ���c 1 m�nh b�n �� SHXT, s� l��ng hi�n t�i l�: "..floor(GetTask(89)/10).." t�m "..mod(GetTask(89),10).." m�nh")
		end
	end
	end
end
end




DoChi_Map = {53,2,8,100,101,187,75,102,104,22,105,79,21}