Include("\\script\\loidai\\loidai_head.lua");

function OnDeath(Launcher)
	camp = GetCamp();
	SetCurCamp(GetCamp());
	SetFightState(0);
	SetLogoutRV(0);
	SetPunish(0)
	SetPKState(0)
	BlockPKState(0)
	SetCreateTeam(1);
	SetRevPos(15,10)
	SetDeathScript("");
	--NewWorld(GetTask(BW_SIGNPOSWORLD), GetTask(BW_SIGNPOSX), GetTask(BW_SIGNPOSY));
end
function OnDrop()
end