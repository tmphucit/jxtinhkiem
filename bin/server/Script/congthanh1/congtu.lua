function OnDeath(Launcher)
PlayerIndex1 = NpcIdx2PIdx(Launcher);
	OrgPlayer = PlayerIndex;
	bigiet = GetName()
 SetDeathScript("");
	if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	giet = GetName()
	if GetTask(80) == 2 then
		SetTask(81,GetTask(81) + 1)
		Msg2Player("B�n �� ti�u di�t 1 binh s� qu�n ��ch, nh�n ���c 1 �i�m c�ng hi�n")
		Msg2World("C�ng th�nh chi�n: Th� th�nh - ["..giet.."] �� ti�u di�t C�ng Th�nh - ["..bigiet.."] ")
	end
	PlayerIndex = OrgPlayer;
	Msg2Player("B�n �� b� ["..giet.."] l�m b� tr�ng th��ng ")
	end
end