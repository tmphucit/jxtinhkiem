function OnTimer()

if GetTask(931) > 7 * 60 then
	SetTask(931, GetTask(931) - 1)
	if (mod(GetTask(931), 5) == 0) then
		Msg2Player("Thêi gian thi ®Êu b¾t ®Çu sau: "..mod(GetTask(931),60).." gi©y n÷a !")
	end
elseif GetTask(931) == 7*60 then
	Msg2Player("<color=yellow>Thi ®Êu b¾t ®Çu ........")
	SetPKState(2)
	SetFightState(1)
	SetTaskTemp(50, 0)
	SetTask(931,7*60 - 1)
	SetDeathScript("\\script\\volamminhchu\\playerdie.lua");	
elseif GetTask(931) == 1 then


	if GetCurCamp() ~= 0 then
		Msg2World("<color=yellow>TrËn thi ®Êu kÕt thóc: ")
		Msg2World("§¹i hiÖp: "..GetName().." - Tæng s¸t th­¬ng: <color=green>"..GetTaskTemp(50).."")
	end
	SetFightState(0)
	SetTask(931,0)
	StopTimer()
else
	SetTask(931, GetTask(931) - 1)
	if mod(GetTask(931), 30) == 0 then
		Msg2Player("Thêi gian thi ®Êu cßn l¹i: <color=yellow>"..floor(GetTask(931)/60).." phót "..mod(GetTask(931),60).." gi©y !")
		if GetCurCamp() ~= 0 then
			Msg2World("§¹i hiÖp: "..GetName().." - Tæng s¸t th­¬ng: <color=green>"..GetTaskTemp(50).."")
		end
	end
end
end