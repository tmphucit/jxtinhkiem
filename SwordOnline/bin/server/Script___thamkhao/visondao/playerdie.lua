function OnDeath(Launcher)
	ngay = tonumber(date("%d"))
	PlayerIndex1 = NpcIdx2PIdx(Launcher);
	OrgPlayer = PlayerIndex;
	tennguoigiet = GetName()
	taskhk = GetTaskTemp(1)
	
	if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	end
		
	giet = GetName()
	team = GetTeam()
	name = GetName()
	w,x,y = GetWorldPos()	
	if tennguoigiet ~= GetName() then
		if taskhk == 32154678 then
			AddOwnExp(10000000)
			Msg2Player("B�n nh�n ���c <color=yellow>10.000.000 kinh nghi�m")
			Msg2World("<color=yellow>[Vi S�n ��o] <color=red>"..GetName().." �� ��nh b�i "..tennguoigiet.." v� nh�n ���c 10.000.000 kinh nghi�m !")
		else
			if floor(GetTask(487)/1000) ~= ngay then
				SetTask(487, ngay * 1000)
			end
			if mod(GetTask(487),1000) < 10 then
				AddOwnExp(1000000)
				Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m v� ti�u di�t ng��i ch�i kh�c ")
				SetTask(487, GetTask(487) +1)
				Msg2Player("S� l��ng ti�u di�t ng��i ch�i nh�n kinh nghi�m trong ng�y: <color=green>"..mod(GetTask(487),1000).." / 10")
			else
				Msg2Player("B�n �� ��t t�i �a s� l��ng gi�t ng��i trong ng�y")
			end
		end
	end
	
	PlayerIndex = OrgPlayer;
	
	SetFightState(0);
	SetDeathScript("");
	if giet == GetName() then
		Msg2World(" ["..GetName().."] �� b� qu�i v�t ��nh tr�ng th��ng. ")
		--SetTempRevPos(24,1395*32,2783*32)
		--SetDeathScript("\\script\\visondao\\playerdie.lua");
		if GetTaskTemp(1) == 32154678 then
			SetTaskTemp(1, 0 )
			Msg2World("<color=yellow>[Vi S�n ��o] <color=red>"..GetName().." �� di chuy�n v� th�nh, nhi�m v� Qu� Ho�ng Kim b� h�y !")
		end
	else
		Msg2World("[<color=green>"..GetName().."<color=red>] �� b� [<color=yellow>"..giet.."<color=red>] ��nh tr�ng th��ng, t� ��ng ��a v� Ba L�ng Huy�n")	
		SetRevPos(19)
		KickOutSelf()
	end

end
function OnDrop()
end