function OnDeath(Launcher)
ngay = tonumber(date("%d"))
	PlayerIndex1 = NpcIdx2PIdx(Launcher);
	OrgPlayer = PlayerIndex;
	
	if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	end
	giet = GetName()
	RestoreLife()
	RestoreMana()
	RestoreStamina()
	
PlayerIndex = OrgPlayer;
	
	Msg2SubWorld("Chóc mõng <color=yellow>["..giet.."] <color=red>®· ®¸nh b¹i <color=green>["..GetName().."] <color=red>trong vßng thi ®Êu Vâ L©m Minh Chñ !")
	Msg2Player("<color=green>B¹n ®· bÞ träng th­¬ng, håi sinh t¹i chç ®Ó chê l­ît thi ®Êu kÕ tiÕp !")
	SetPKState(0)
	BlockPKState(0)
	StopTimer()
	KickOutSelf()

end

function OnDrop()
end

