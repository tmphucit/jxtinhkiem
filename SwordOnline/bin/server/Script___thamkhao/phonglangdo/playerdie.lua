function OnDeath(Launcher)
ngay = tonumber(date("%d"))
	PlayerIndex1 = NpcIdx2PIdx(Launcher);
	OrgPlayer = PlayerIndex;
	
	if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	end
	giet = GetName()
	w,x,y = GetWorldPos()
	if w == 47 or w == 48 or w == 49 then
			if floor(GetTask(487)/1000) ~= ngay then
				SetTask(487, ngay * 1000)
			end
			if mod(GetTask(487),1000) < 5 then
				AddOwnExp(4000000)
				Msg2Player("B�n nh�n ���c 4.000.000 kinh nghi�m v� ti�u di�t ng��i ch�i kh�c ")
				SetTask(487, GetTask(487) +1)
				Msg2Player("S� l��ng ti�u di�t ng��i ch�i nh�n kinh nghi�m trong ng�y: <color=green>"..mod(GetTask(487),1000).." / 5")
			else
				Msg2Player("B�n �� ��t t�i �a s� l��ng gi�t ng��i trong ng�y")
			end
	end
PlayerIndex = OrgPlayer;

		Msg2World("[<color=green>"..GetName().."<color=red>] �� b� [<color=yellow>"..giet.."<color=red>] ��nh tr�ng th��ng, t� ��ng ��a v� Chu Ti�n Tr�n")
		SetFightState(0);
		LeaveTeam()
		SetDeathScript("");
		SetPunish(0)
		KickOutSelf()
end

function OnDrop()
end

