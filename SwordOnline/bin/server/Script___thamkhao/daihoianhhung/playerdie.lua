function OnDeath(Launcher)
	ngay = tonumber(date("%d"))
	PlayerIndex1 = NpcIdx2PIdx(Launcher);
	OrgPlayer = PlayerIndex;

	if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	end
	tennguoigiet = GetName()

	PlayerIndex = OrgPlayer;
	Msg2SubWorld("<color=yellow>"..GetName().."<color=red> Æ∑ bﬁ [<color=green>"..tennguoigiet.."<color=red>] Æ∏nh bπi")
	--SetRevPos(18)
	NewWorld(66,3460,6199)
	SetCreateTeam(1);
	BlockPKState(0)
	SetFightState(0)
	SetPKState(0)
	SetDeathScript("");
	KickOutSelf()
end
function OnDrop()
end