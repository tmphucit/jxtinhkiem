function OnDeath(Launcher)
PlayerIndex1 = NpcIdx2PIdx(Launcher);
OrgPlayer = PlayerIndex;
die_name = GetName()

if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
end
giet = GetName()

Msg2World("��i hi�p <color=yellow>"..giet.." <color=red>�� ��nh b�i <color=yellow>"..die_name.." <color=red>trong khu v�c thi ��u !")

PlayerIndex = OrgPlayer;
SetDeathScript("");
SetCurCamp(GetTaskTemp(40))
SetCamp(GetTaskTemp(40))
SetFightState(0)
SetPKState(0)
BlockPKState(0)
SetLogoutRV(0);

end

function OnDrop()
end