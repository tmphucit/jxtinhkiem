Include("\\script\\missions\\chanllege\\头文件.lua");

function OnDeath(Launcher)

PlayerIndex1 = NpcIdx2PIdx(Launcher);	--胜利方
OrgPlayer  = PlayerIndex;	--失败方
DeathName = GetName();	--失败方
--胜利方处理
if (PlayerIndex1 > 0) then
	PlayerIndex = PlayerIndex1;
	LaunName = GetName();
	widx=PlayerIndex
	SetGlbMissionV(WIDX,widx)
	SetCurCamp(1)
	SetDeathScript("\\script\\missions\\chanllege\\death.lua");
	Msg2Player("恭喜!你打赢了这场擂台!要加油啊!好多人都在看着呢!")
	PlayerIndex = OrgPlayer;
end;
--失败方处理
SetTask(BWIF,0)
RestoreCamp()	
SetDeathScript("");
Msg2Player("你被打败了!回去好好练练再来吧!")

--消息处理
if (PlayerIndex==GetGlbMissionV(HN)) then
str  = "攻擂方<color=Green>"..LaunName.."<color>战胜了擂主!!!";
SetGlbMissionV(WIN,2)
else
str  = "擂主<color=Green>"..LaunName.."<color>战胜了攻擂方!!!";
SetGlbMissionV(WIN,1)
end
AddGlobalNews(str,1);
GamePause()
end;	
