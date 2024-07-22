Include("\\script\\missions\\chanllege\\头文件.lua");

function OnDeath(Launcher)

PlayerIndex1 = NpcIdx2PIdx(Launcher);	--擂主方
OrgPlayer  = PlayerIndex;	--挑战方
DeathName = GetName();	--挑战方
--擂主方处理
if (PlayerIndex1 > 0) then
	PlayerIndex = PlayerIndex1;
	LaunName = GetName();
	widx=PlayerIndex
	SetGlbMissionV(WIDX,widx)
	RestoreMana();
	RestoreLife();
	RestoreStamina();
	SetFightState(0);

	Msg2Player("恭喜!你打赢了这场擂台!要加油啊!好多人都在看着呢!")
	GamePause()
	PlayerIndex = OrgPlayer;
end;
--挑战方处理
SetGlbMissionV(DEATH,1)
SetTask(BWIF,0)	
SetDeathScript("");
Msg2Player("你输了!回去好好练练再来吧!")

--消息处理
str  = "擂主<color=Green>"..LaunName.."<color>战胜了挑战方!!!";
SetGlbMissionV(WIN,1)
AddGlobalCountNews(str,1);
GamePause()
end;	