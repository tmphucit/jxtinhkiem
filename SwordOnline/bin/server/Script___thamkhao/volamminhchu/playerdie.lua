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
	
	Msg2SubWorld("Ch�c m�ng <color=yellow>["..giet.."] <color=red>�� ��nh b�i <color=green>["..GetName().."] <color=red>trong v�ng thi ��u V� L�m Minh Ch� !")
	Msg2Player("<color=green>B�n �� b� tr�ng th��ng, h�i sinh t�i ch� �� ch� l��t thi ��u k� ti�p !")
	SetPKState(0)
	BlockPKState(0)
	StopTimer()
	KickOutSelf()

end

function OnDrop()
end

